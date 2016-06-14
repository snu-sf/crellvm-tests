; ModuleID = 'insn-extract.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@recog_data = external global %struct.recog_data, align 8
@.str = private unnamed_addr constant [15 x i8] c"insn-extract.c\00", align 1
@__FUNCTION__.insn_extract = private unnamed_addr constant [13 x i8] c"insn_extract\00", align 1

; Function Attrs: nounwind uwtable
define void @insn_extract(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ro = alloca %struct.rtx_def**, align 8
  %ro_loc = alloca %struct.rtx_def***, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i32 0), %struct.rtx_def*** %ro, align 8
  store %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1, i32 0), %struct.rtx_def**** %ro_loc, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %pat, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %3 = bitcast %struct.rtx_def** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 240, i32 8, i1 false)
  %4 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %5 = bitcast %struct.rtx_def*** %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 240, i32 8, i1 false)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %7 = load i32, i32* %rtint, align 4
  switch i32 %7, label %sw.default [
    i32 -1, label %sw.bb
    i32 832, label %sw.bb.3
    i32 829, label %sw.bb.14
    i32 821, label %sw.bb.60
    i32 820, label %sw.bb.104
    i32 819, label %sw.bb.104
    i32 818, label %sw.bb.104
    i32 817, label %sw.bb.162
    i32 808, label %sw.bb.182
    i32 805, label %sw.bb.204
    i32 804, label %sw.bb.268
    i32 828, label %sw.bb.282
    i32 826, label %sw.bb.282
    i32 825, label %sw.bb.282
    i32 823, label %sw.bb.282
    i32 773, label %sw.bb.282
    i32 772, label %sw.bb.308
    i32 771, label %sw.bb.341
    i32 770, label %sw.bb.377
    i32 769, label %sw.bb.405
    i32 768, label %sw.bb.405
    i32 767, label %sw.bb.439
    i32 762, label %sw.bb.474
    i32 761, label %sw.bb.544
    i32 760, label %sw.bb.544
    i32 744, label %sw.bb.584
    i32 741, label %sw.bb.584
    i32 742, label %sw.bb.603
    i32 739, label %sw.bb.603
    i32 800, label %sw.bb.631
    i32 799, label %sw.bb.631
    i32 798, label %sw.bb.631
    i32 797, label %sw.bb.631
    i32 796, label %sw.bb.631
    i32 795, label %sw.bb.631
    i32 794, label %sw.bb.631
    i32 793, label %sw.bb.631
    i32 792, label %sw.bb.631
    i32 734, label %sw.bb.631
    i32 733, label %sw.bb.631
    i32 732, label %sw.bb.659
    i32 731, label %sw.bb.659
    i32 730, label %sw.bb.687
    i32 729, label %sw.bb.741
    i32 728, label %sw.bb.783
    i32 711, label %sw.bb.819
    i32 710, label %sw.bb.819
    i32 723, label %sw.bb.850
    i32 721, label %sw.bb.850
    i32 717, label %sw.bb.850
    i32 715, label %sw.bb.850
    i32 707, label %sw.bb.850
    i32 705, label %sw.bb.850
    i32 722, label %sw.bb.878
    i32 720, label %sw.bb.878
    i32 716, label %sw.bb.878
    i32 714, label %sw.bb.878
    i32 706, label %sw.bb.878
    i32 704, label %sw.bb.878
    i32 701, label %sw.bb.909
    i32 699, label %sw.bb.909
    i32 738, label %sw.bb.936
    i32 736, label %sw.bb.936
    i32 697, label %sw.bb.936
    i32 695, label %sw.bb.936
    i32 693, label %sw.bb.936
    i32 691, label %sw.bb.936
    i32 689, label %sw.bb.970
    i32 814, label %sw.bb.1006
    i32 813, label %sw.bb.1006
    i32 812, label %sw.bb.1006
    i32 811, label %sw.bb.1006
    i32 810, label %sw.bb.1006
    i32 809, label %sw.bb.1006
    i32 807, label %sw.bb.1006
    i32 806, label %sw.bb.1006
    i32 790, label %sw.bb.1006
    i32 789, label %sw.bb.1006
    i32 787, label %sw.bb.1006
    i32 786, label %sw.bb.1006
    i32 785, label %sw.bb.1006
    i32 784, label %sw.bb.1006
    i32 783, label %sw.bb.1006
    i32 782, label %sw.bb.1006
    i32 781, label %sw.bb.1006
    i32 780, label %sw.bb.1006
    i32 779, label %sw.bb.1006
    i32 778, label %sw.bb.1006
    i32 777, label %sw.bb.1006
    i32 776, label %sw.bb.1006
    i32 775, label %sw.bb.1006
    i32 774, label %sw.bb.1006
    i32 759, label %sw.bb.1006
    i32 758, label %sw.bb.1006
    i32 757, label %sw.bb.1006
    i32 756, label %sw.bb.1006
    i32 755, label %sw.bb.1006
    i32 754, label %sw.bb.1006
    i32 753, label %sw.bb.1006
    i32 752, label %sw.bb.1006
    i32 751, label %sw.bb.1006
    i32 750, label %sw.bb.1006
    i32 749, label %sw.bb.1006
    i32 748, label %sw.bb.1006
    i32 747, label %sw.bb.1006
    i32 746, label %sw.bb.1006
    i32 745, label %sw.bb.1006
    i32 737, label %sw.bb.1006
    i32 735, label %sw.bb.1006
    i32 725, label %sw.bb.1006
    i32 724, label %sw.bb.1006
    i32 719, label %sw.bb.1006
    i32 718, label %sw.bb.1006
    i32 709, label %sw.bb.1006
    i32 708, label %sw.bb.1006
    i32 696, label %sw.bb.1006
    i32 694, label %sw.bb.1006
    i32 692, label %sw.bb.1006
    i32 690, label %sw.bb.1006
    i32 687, label %sw.bb.1006
    i32 685, label %sw.bb.1006
    i32 684, label %sw.bb.1006
    i32 683, label %sw.bb.1028
    i32 682, label %sw.bb.1028
    i32 679, label %sw.bb.1053
    i32 678, label %sw.bb.1053
    i32 713, label %sw.bb.1082
    i32 712, label %sw.bb.1082
    i32 703, label %sw.bb.1082
    i32 656, label %sw.bb.1082
    i32 655, label %sw.bb.1082
    i32 654, label %sw.bb.1082
    i32 653, label %sw.bb.1082
    i32 652, label %sw.bb.1107
    i32 651, label %sw.bb.1107
    i32 650, label %sw.bb.1160
    i32 649, label %sw.bb.1160
    i32 648, label %sw.bb.1192
    i32 647, label %sw.bb.1192
    i32 646, label %sw.bb.1192
    i32 645, label %sw.bb.1192
    i32 644, label %sw.bb.1192
    i32 643, label %sw.bb.1192
    i32 642, label %sw.bb.1192
    i32 641, label %sw.bb.1192
    i32 640, label %sw.bb.1244
    i32 638, label %sw.bb.1244
    i32 639, label %sw.bb.1323
    i32 637, label %sw.bb.1323
    i32 634, label %sw.bb.1415
    i32 631, label %sw.bb.1415
    i32 628, label %sw.bb.1415
    i32 625, label %sw.bb.1415
    i32 633, label %sw.bb.1455
    i32 632, label %sw.bb.1455
    i32 630, label %sw.bb.1455
    i32 629, label %sw.bb.1455
    i32 627, label %sw.bb.1455
    i32 626, label %sw.bb.1455
    i32 624, label %sw.bb.1455
    i32 623, label %sw.bb.1455
    i32 622, label %sw.bb.1520
    i32 621, label %sw.bb.1520
    i32 620, label %sw.bb.1520
    i32 619, label %sw.bb.1520
    i32 618, label %sw.bb.1520
    i32 617, label %sw.bb.1520
    i32 616, label %sw.bb.1520
    i32 614, label %sw.bb.1520
    i32 612, label %sw.bb.1550
    i32 611, label %sw.bb.1550
    i32 610, label %sw.bb.1634
    i32 609, label %sw.bb.1634
    i32 608, label %sw.bb.1729
    i32 607, label %sw.bb.1729
    i32 606, label %sw.bb.1812
    i32 605, label %sw.bb.1812
    i32 604, label %sw.bb.1888
    i32 603, label %sw.bb.1888
    i32 602, label %sw.bb.1888
    i32 601, label %sw.bb.1967
    i32 600, label %sw.bb.1967
    i32 599, label %sw.bb.1967
    i32 598, label %sw.bb.1967
    i32 597, label %sw.bb.1967
    i32 596, label %sw.bb.1967
    i32 595, label %sw.bb.1967
    i32 594, label %sw.bb.2012
    i32 593, label %sw.bb.2012
    i32 592, label %sw.bb.2123
    i32 591, label %sw.bb.2123
    i32 590, label %sw.bb.2123
    i32 589, label %sw.bb.2240
    i32 588, label %sw.bb.2240
    i32 587, label %sw.bb.2240
    i32 586, label %sw.bb.2240
    i32 585, label %sw.bb.2240
    i32 584, label %sw.bb.2240
    i32 583, label %sw.bb.2240
    i32 579, label %sw.bb.2309
    i32 574, label %sw.bb.2309
    i32 827, label %sw.bb.2328
    i32 824, label %sw.bb.2328
    i32 700, label %sw.bb.2328
    i32 698, label %sw.bb.2328
    i32 681, label %sw.bb.2328
    i32 680, label %sw.bb.2328
    i32 677, label %sw.bb.2328
    i32 676, label %sw.bb.2328
    i32 675, label %sw.bb.2328
    i32 674, label %sw.bb.2328
    i32 581, label %sw.bb.2328
    i32 580, label %sw.bb.2328
    i32 578, label %sw.bb.2328
    i32 577, label %sw.bb.2328
    i32 576, label %sw.bb.2328
    i32 575, label %sw.bb.2328
    i32 573, label %sw.bb.2328
    i32 572, label %sw.bb.2328
    i32 558, label %sw.bb.2344
    i32 557, label %sw.bb.2344
    i32 554, label %sw.bb.2344
    i32 553, label %sw.bb.2344
    i32 550, label %sw.bb.2344
    i32 549, label %sw.bb.2344
    i32 544, label %sw.bb.2344
    i32 542, label %sw.bb.2344
    i32 537, label %sw.bb.2344
    i32 556, label %sw.bb.2374
    i32 555, label %sw.bb.2374
    i32 552, label %sw.bb.2374
    i32 551, label %sw.bb.2374
    i32 548, label %sw.bb.2374
    i32 547, label %sw.bb.2374
    i32 543, label %sw.bb.2374
    i32 541, label %sw.bb.2374
    i32 536, label %sw.bb.2374
    i32 727, label %sw.bb.2404
    i32 546, label %sw.bb.2404
    i32 545, label %sw.bb.2404
    i32 540, label %sw.bb.2404
    i32 539, label %sw.bb.2404
    i32 538, label %sw.bb.2404
    i32 535, label %sw.bb.2404
    i32 534, label %sw.bb.2404
    i32 533, label %sw.bb.2404
    i32 532, label %sw.bb.2404
    i32 531, label %sw.bb.2404
    i32 530, label %sw.bb.2404
    i32 529, label %sw.bb.2404
    i32 528, label %sw.bb.2404
    i32 527, label %sw.bb.2404
    i32 526, label %sw.bb.2404
    i32 525, label %sw.bb.2404
    i32 524, label %sw.bb.2431
    i32 802, label %sw.bb.2468
    i32 521, label %sw.bb.2468
    i32 520, label %sw.bb.2468
    i32 519, label %sw.bb.2476
    i32 518, label %sw.bb.2495
    i32 516, label %sw.bb.2567
    i32 515, label %sw.bb.2567
    i32 815, label %sw.bb.2578
    i32 801, label %sw.bb.2578
    i32 657, label %sw.bb.2578
    i32 582, label %sw.bb.2578
    i32 523, label %sw.bb.2578
    i32 522, label %sw.bb.2578
    i32 517, label %sw.bb.2578
    i32 514, label %sw.bb.2578
    i32 513, label %sw.bb.2578
    i32 509, label %sw.bb.2579
    i32 508, label %sw.bb.2579
    i32 507, label %sw.bb.2616
    i32 506, label %sw.bb.2680
    i32 505, label %sw.bb.2680
    i32 504, label %sw.bb.2704
    i32 503, label %sw.bb.2704
    i32 502, label %sw.bb.2710
    i32 501, label %sw.bb.2719
    i32 499, label %sw.bb.2719
    i32 500, label %sw.bb.2791
    i32 498, label %sw.bb.2791
    i32 497, label %sw.bb.2863
    i32 496, label %sw.bb.2863
    i32 495, label %sw.bb.2863
    i32 494, label %sw.bb.2925
    i32 493, label %sw.bb.2925
    i32 492, label %sw.bb.2925
    i32 491, label %sw.bb.2987
    i32 490, label %sw.bb.3007
    i32 489, label %sw.bb.3027
    i32 488, label %sw.bb.3027
    i32 425, label %sw.bb.3054
    i32 407, label %sw.bb.3054
    i32 448, label %sw.bb.3128
    i32 423, label %sw.bb.3128
    i32 405, label %sw.bb.3128
    i32 398, label %sw.bb.3175
    i32 350, label %sw.bb.3216
    i32 348, label %sw.bb.3266
    i32 402, label %sw.bb.3296
    i32 400, label %sw.bb.3296
    i32 397, label %sw.bb.3296
    i32 394, label %sw.bb.3296
    i32 354, label %sw.bb.3296
    i32 352, label %sw.bb.3296
    i32 349, label %sw.bb.3296
    i32 346, label %sw.bb.3296
    i32 457, label %sw.bb.3334
    i32 455, label %sw.bb.3334
    i32 333, label %sw.bb.3334
    i32 315, label %sw.bb.3334
    i32 451, label %sw.bb.3402
    i32 330, label %sw.bb.3402
    i32 312, label %sw.bb.3402
    i32 343, label %sw.bb.3442
    i32 342, label %sw.bb.3442
    i32 303, label %sw.bb.3442
    i32 323, label %sw.bb.3516
    i32 301, label %sw.bb.3516
    i32 321, label %sw.bb.3582
    i32 299, label %sw.bb.3582
    i32 289, label %sw.bb.3620
    i32 288, label %sw.bb.3620
    i32 287, label %sw.bb.3654
    i32 286, label %sw.bb.3654
    i32 285, label %sw.bb.3654
    i32 284, label %sw.bb.3683
    i32 278, label %sw.bb.3709
    i32 276, label %sw.bb.3709
    i32 277, label %sw.bb.3786
    i32 275, label %sw.bb.3786
    i32 274, label %sw.bb.3786
    i32 279, label %sw.bb.3855
    i32 273, label %sw.bb.3855
    i32 270, label %sw.bb.3855
    i32 272, label %sw.bb.3934
    i32 271, label %sw.bb.3934
    i32 269, label %sw.bb.3934
    i32 268, label %sw.bb.3934
    i32 265, label %sw.bb.4003
    i32 262, label %sw.bb.4003
    i32 264, label %sw.bb.4074
    i32 263, label %sw.bb.4074
    i32 261, label %sw.bb.4074
    i32 260, label %sw.bb.4074
    i32 259, label %sw.bb.4139
    i32 258, label %sw.bb.4139
    i32 257, label %sw.bb.4139
    i32 256, label %sw.bb.4139
    i32 255, label %sw.bb.4139
    i32 254, label %sw.bb.4139
    i32 242, label %sw.bb.4182
    i32 236, label %sw.bb.4247
    i32 248, label %sw.bb.4293
    i32 245, label %sw.bb.4293
    i32 241, label %sw.bb.4293
    i32 234, label %sw.bb.4293
    i32 235, label %sw.bb.4352
    i32 231, label %sw.bb.4352
    i32 339, label %sw.bb.4392
    i32 306, label %sw.bb.4392
    i32 305, label %sw.bb.4392
    i32 304, label %sw.bb.4392
    i32 229, label %sw.bb.4392
    i32 302, label %sw.bb.4438
    i32 228, label %sw.bb.4438
    i32 227, label %sw.bb.4438
    i32 212, label %sw.bb.4481
    i32 435, label %sw.bb.4549
    i32 433, label %sw.bb.4549
    i32 411, label %sw.bb.4549
    i32 332, label %sw.bb.4549
    i32 314, label %sw.bb.4549
    i32 295, label %sw.bb.4549
    i32 240, label %sw.bb.4549
    i32 210, label %sw.bb.4549
    i32 481, label %sw.bb.4620
    i32 479, label %sw.bb.4620
    i32 471, label %sw.bb.4620
    i32 469, label %sw.bb.4620
    i32 453, label %sw.bb.4620
    i32 431, label %sw.bb.4620
    i32 429, label %sw.bb.4620
    i32 427, label %sw.bb.4620
    i32 409, label %sw.bb.4620
    i32 329, label %sw.bb.4620
    i32 311, label %sw.bb.4620
    i32 293, label %sw.bb.4620
    i32 251, label %sw.bb.4620
    i32 238, label %sw.bb.4620
    i32 208, label %sw.bb.4620
    i32 341, label %sw.bb.4663
    i32 337, label %sw.bb.4663
    i32 334, label %sw.bb.4663
    i32 327, label %sw.bb.4663
    i32 324, label %sw.bb.4663
    i32 319, label %sw.bb.4663
    i32 316, label %sw.bb.4663
    i32 309, label %sw.bb.4663
    i32 226, label %sw.bb.4663
    i32 220, label %sw.bb.4663
    i32 214, label %sw.bb.4663
    i32 206, label %sw.bb.4663
    i32 225, label %sw.bb.4706
    i32 219, label %sw.bb.4706
    i32 213, label %sw.bb.4706
    i32 205, label %sw.bb.4706
    i32 224, label %sw.bb.4743
    i32 218, label %sw.bb.4743
    i32 211, label %sw.bb.4743
    i32 204, label %sw.bb.4743
    i32 465, label %sw.bb.4783
    i32 464, label %sw.bb.4783
    i32 461, label %sw.bb.4783
    i32 460, label %sw.bb.4783
    i32 456, label %sw.bb.4783
    i32 454, label %sw.bb.4783
    i32 447, label %sw.bb.4783
    i32 446, label %sw.bb.4783
    i32 443, label %sw.bb.4783
    i32 442, label %sw.bb.4783
    i32 439, label %sw.bb.4783
    i32 438, label %sw.bb.4783
    i32 434, label %sw.bb.4783
    i32 432, label %sw.bb.4783
    i32 422, label %sw.bb.4783
    i32 421, label %sw.bb.4783
    i32 417, label %sw.bb.4783
    i32 414, label %sw.bb.4783
    i32 410, label %sw.bb.4783
    i32 404, label %sw.bb.4783
    i32 340, label %sw.bb.4783
    i32 336, label %sw.bb.4783
    i32 331, label %sw.bb.4783
    i32 326, label %sw.bb.4783
    i32 322, label %sw.bb.4783
    i32 318, label %sw.bb.4783
    i32 313, label %sw.bb.4783
    i32 308, label %sw.bb.4783
    i32 300, label %sw.bb.4783
    i32 297, label %sw.bb.4783
    i32 294, label %sw.bb.4783
    i32 291, label %sw.bb.4783
    i32 247, label %sw.bb.4783
    i32 244, label %sw.bb.4783
    i32 239, label %sw.bb.4783
    i32 233, label %sw.bb.4783
    i32 223, label %sw.bb.4783
    i32 217, label %sw.bb.4783
    i32 209, label %sw.bb.4783
    i32 203, label %sw.bb.4783
    i32 201, label %sw.bb.4848
    i32 200, label %sw.bb.4913
    i32 199, label %sw.bb.4966
    i32 197, label %sw.bb.4966
    i32 198, label %sw.bb.5011
    i32 196, label %sw.bb.5011
    i32 189, label %sw.bb.5047
    i32 191, label %sw.bb.5093
    i32 190, label %sw.bb.5093
    i32 187, label %sw.bb.5093
    i32 188, label %sw.bb.5156
    i32 186, label %sw.bb.5156
    i32 636, label %sw.bb.5196
    i32 635, label %sw.bb.5196
    i32 485, label %sw.bb.5196
    i32 484, label %sw.bb.5196
    i32 483, label %sw.bb.5196
    i32 482, label %sw.bb.5196
    i32 480, label %sw.bb.5196
    i32 478, label %sw.bb.5196
    i32 477, label %sw.bb.5196
    i32 476, label %sw.bb.5196
    i32 475, label %sw.bb.5196
    i32 474, label %sw.bb.5196
    i32 473, label %sw.bb.5196
    i32 472, label %sw.bb.5196
    i32 470, label %sw.bb.5196
    i32 468, label %sw.bb.5196
    i32 467, label %sw.bb.5196
    i32 466, label %sw.bb.5196
    i32 463, label %sw.bb.5196
    i32 462, label %sw.bb.5196
    i32 459, label %sw.bb.5196
    i32 458, label %sw.bb.5196
    i32 452, label %sw.bb.5196
    i32 450, label %sw.bb.5196
    i32 449, label %sw.bb.5196
    i32 445, label %sw.bb.5196
    i32 444, label %sw.bb.5196
    i32 441, label %sw.bb.5196
    i32 440, label %sw.bb.5196
    i32 437, label %sw.bb.5196
    i32 436, label %sw.bb.5196
    i32 430, label %sw.bb.5196
    i32 428, label %sw.bb.5196
    i32 426, label %sw.bb.5196
    i32 424, label %sw.bb.5196
    i32 420, label %sw.bb.5196
    i32 419, label %sw.bb.5196
    i32 418, label %sw.bb.5196
    i32 416, label %sw.bb.5196
    i32 415, label %sw.bb.5196
    i32 413, label %sw.bb.5196
    i32 412, label %sw.bb.5196
    i32 408, label %sw.bb.5196
    i32 406, label %sw.bb.5196
    i32 403, label %sw.bb.5196
    i32 338, label %sw.bb.5196
    i32 335, label %sw.bb.5196
    i32 328, label %sw.bb.5196
    i32 325, label %sw.bb.5196
    i32 320, label %sw.bb.5196
    i32 317, label %sw.bb.5196
    i32 310, label %sw.bb.5196
    i32 307, label %sw.bb.5196
    i32 298, label %sw.bb.5196
    i32 296, label %sw.bb.5196
    i32 292, label %sw.bb.5196
    i32 290, label %sw.bb.5196
    i32 267, label %sw.bb.5196
    i32 266, label %sw.bb.5196
    i32 253, label %sw.bb.5196
    i32 252, label %sw.bb.5196
    i32 250, label %sw.bb.5196
    i32 249, label %sw.bb.5196
    i32 246, label %sw.bb.5196
    i32 243, label %sw.bb.5196
    i32 237, label %sw.bb.5196
    i32 232, label %sw.bb.5196
    i32 230, label %sw.bb.5196
    i32 222, label %sw.bb.5196
    i32 221, label %sw.bb.5196
    i32 216, label %sw.bb.5196
    i32 215, label %sw.bb.5196
    i32 207, label %sw.bb.5196
    i32 202, label %sw.bb.5196
    i32 185, label %sw.bb.5196
    i32 164, label %sw.bb.5233
    i32 159, label %sw.bb.5233
    i32 163, label %sw.bb.5277
    i32 158, label %sw.bb.5277
    i32 154, label %sw.bb.5277
    i32 153, label %sw.bb.5331
    i32 379, label %sw.bb.5395
    i32 378, label %sw.bb.5395
    i32 375, label %sw.bb.5395
    i32 360, label %sw.bb.5395
    i32 359, label %sw.bb.5395
    i32 356, label %sw.bb.5395
    i32 150, label %sw.bb.5395
    i32 148, label %sw.bb.5395
    i32 146, label %sw.bb.5395
    i32 144, label %sw.bb.5395
    i32 140, label %sw.bb.5395
    i32 139, label %sw.bb.5395
    i32 119, label %sw.bb.5429
    i32 383, label %sw.bb.5463
    i32 382, label %sw.bb.5463
    i32 381, label %sw.bb.5463
    i32 380, label %sw.bb.5463
    i32 377, label %sw.bb.5463
    i32 376, label %sw.bb.5463
    i32 374, label %sw.bb.5463
    i32 364, label %sw.bb.5463
    i32 363, label %sw.bb.5463
    i32 362, label %sw.bb.5463
    i32 361, label %sw.bb.5463
    i32 358, label %sw.bb.5463
    i32 357, label %sw.bb.5463
    i32 355, label %sw.bb.5463
    i32 353, label %sw.bb.5463
    i32 351, label %sw.bb.5463
    i32 347, label %sw.bb.5463
    i32 345, label %sw.bb.5463
    i32 344, label %sw.bb.5463
    i32 115, label %sw.bb.5463
    i32 113, label %sw.bb.5463
    i32 112, label %sw.bb.5463
    i32 110, label %sw.bb.5463
    i32 109, label %sw.bb.5463
    i32 107, label %sw.bb.5463
    i32 75, label %sw.bb.5487
    i32 743, label %sw.bb.5507
    i32 740, label %sw.bb.5507
    i32 571, label %sw.bb.5507
    i32 570, label %sw.bb.5507
    i32 569, label %sw.bb.5507
    i32 568, label %sw.bb.5507
    i32 565, label %sw.bb.5507
    i32 396, label %sw.bb.5507
    i32 392, label %sw.bb.5507
    i32 391, label %sw.bb.5507
    i32 389, label %sw.bb.5507
    i32 388, label %sw.bb.5507
    i32 386, label %sw.bb.5507
    i32 373, label %sw.bb.5507
    i32 372, label %sw.bb.5507
    i32 370, label %sw.bb.5507
    i32 369, label %sw.bb.5507
    i32 367, label %sw.bb.5507
    i32 194, label %sw.bb.5507
    i32 127, label %sw.bb.5507
    i32 124, label %sw.bb.5507
    i32 72, label %sw.bb.5507
    i32 71, label %sw.bb.5507
    i32 63, label %sw.bb.5524
    i32 57, label %sw.bb.5524
    i32 106, label %sw.bb.5548
    i32 105, label %sw.bb.5548
    i32 96, label %sw.bb.5548
    i32 91, label %sw.bb.5548
    i32 87, label %sw.bb.5548
    i32 61, label %sw.bb.5548
    i32 55, label %sw.bb.5548
    i32 54, label %sw.bb.5548
    i32 48, label %sw.bb.5548
    i32 831, label %sw.bb.5585
    i32 830, label %sw.bb.5585
    i32 822, label %sw.bb.5585
    i32 816, label %sw.bb.5585
    i32 702, label %sw.bb.5585
    i32 688, label %sw.bb.5585
    i32 686, label %sw.bb.5585
    i32 567, label %sw.bb.5585
    i32 566, label %sw.bb.5585
    i32 564, label %sw.bb.5585
    i32 563, label %sw.bb.5585
    i32 562, label %sw.bb.5585
    i32 561, label %sw.bb.5585
    i32 560, label %sw.bb.5585
    i32 559, label %sw.bb.5585
    i32 401, label %sw.bb.5585
    i32 399, label %sw.bb.5585
    i32 395, label %sw.bb.5585
    i32 393, label %sw.bb.5585
    i32 390, label %sw.bb.5585
    i32 387, label %sw.bb.5585
    i32 385, label %sw.bb.5585
    i32 384, label %sw.bb.5585
    i32 371, label %sw.bb.5585
    i32 368, label %sw.bb.5585
    i32 366, label %sw.bb.5585
    i32 365, label %sw.bb.5585
    i32 193, label %sw.bb.5585
    i32 184, label %sw.bb.5585
    i32 183, label %sw.bb.5585
    i32 182, label %sw.bb.5585
    i32 181, label %sw.bb.5585
    i32 180, label %sw.bb.5585
    i32 179, label %sw.bb.5585
    i32 178, label %sw.bb.5585
    i32 177, label %sw.bb.5585
    i32 176, label %sw.bb.5585
    i32 175, label %sw.bb.5585
    i32 174, label %sw.bb.5585
    i32 173, label %sw.bb.5585
    i32 172, label %sw.bb.5585
    i32 171, label %sw.bb.5585
    i32 170, label %sw.bb.5585
    i32 169, label %sw.bb.5585
    i32 168, label %sw.bb.5585
    i32 167, label %sw.bb.5585
    i32 162, label %sw.bb.5585
    i32 161, label %sw.bb.5585
    i32 160, label %sw.bb.5585
    i32 157, label %sw.bb.5585
    i32 156, label %sw.bb.5585
    i32 155, label %sw.bb.5585
    i32 152, label %sw.bb.5585
    i32 151, label %sw.bb.5585
    i32 149, label %sw.bb.5585
    i32 147, label %sw.bb.5585
    i32 145, label %sw.bb.5585
    i32 143, label %sw.bb.5585
    i32 142, label %sw.bb.5585
    i32 141, label %sw.bb.5585
    i32 138, label %sw.bb.5585
    i32 137, label %sw.bb.5585
    i32 136, label %sw.bb.5585
    i32 135, label %sw.bb.5585
    i32 134, label %sw.bb.5585
    i32 133, label %sw.bb.5585
    i32 132, label %sw.bb.5585
    i32 131, label %sw.bb.5585
    i32 130, label %sw.bb.5585
    i32 129, label %sw.bb.5585
    i32 128, label %sw.bb.5585
    i32 126, label %sw.bb.5585
    i32 125, label %sw.bb.5585
    i32 123, label %sw.bb.5585
    i32 122, label %sw.bb.5585
    i32 121, label %sw.bb.5585
    i32 120, label %sw.bb.5585
    i32 118, label %sw.bb.5585
    i32 117, label %sw.bb.5585
    i32 116, label %sw.bb.5585
    i32 114, label %sw.bb.5585
    i32 111, label %sw.bb.5585
    i32 108, label %sw.bb.5585
    i32 86, label %sw.bb.5585
    i32 70, label %sw.bb.5585
    i32 69, label %sw.bb.5585
    i32 67, label %sw.bb.5585
    i32 66, label %sw.bb.5585
    i32 65, label %sw.bb.5585
    i32 64, label %sw.bb.5585
    i32 53, label %sw.bb.5585
    i32 47, label %sw.bb.5585
    i32 512, label %sw.bb.5599
    i32 511, label %sw.bb.5599
    i32 510, label %sw.bb.5599
    i32 487, label %sw.bb.5599
    i32 85, label %sw.bb.5599
    i32 74, label %sw.bb.5599
    i32 73, label %sw.bb.5599
    i32 68, label %sw.bb.5599
    i32 62, label %sw.bb.5599
    i32 56, label %sw.bb.5599
    i32 52, label %sw.bb.5599
    i32 46, label %sw.bb.5599
    i32 615, label %sw.bb.5613
    i32 613, label %sw.bb.5613
    i32 80, label %sw.bb.5613
    i32 79, label %sw.bb.5613
    i32 42, label %sw.bb.5613
    i32 41, label %sw.bb.5613
    i32 82, label %sw.bb.5624
    i32 81, label %sw.bb.5624
    i32 78, label %sw.bb.5624
    i32 44, label %sw.bb.5624
    i32 43, label %sw.bb.5624
    i32 40, label %sw.bb.5624
    i32 833, label %sw.bb.5645
    i32 673, label %sw.bb.5645
    i32 672, label %sw.bb.5645
    i32 671, label %sw.bb.5645
    i32 670, label %sw.bb.5645
    i32 669, label %sw.bb.5645
    i32 668, label %sw.bb.5645
    i32 667, label %sw.bb.5645
    i32 666, label %sw.bb.5645
    i32 665, label %sw.bb.5645
    i32 664, label %sw.bb.5645
    i32 663, label %sw.bb.5645
    i32 662, label %sw.bb.5645
    i32 661, label %sw.bb.5645
    i32 660, label %sw.bb.5645
    i32 659, label %sw.bb.5645
    i32 658, label %sw.bb.5645
    i32 486, label %sw.bb.5645
    i32 195, label %sw.bb.5645
    i32 192, label %sw.bb.5645
    i32 104, label %sw.bb.5645
    i32 103, label %sw.bb.5645
    i32 102, label %sw.bb.5645
    i32 101, label %sw.bb.5645
    i32 100, label %sw.bb.5645
    i32 99, label %sw.bb.5645
    i32 98, label %sw.bb.5645
    i32 97, label %sw.bb.5645
    i32 95, label %sw.bb.5645
    i32 94, label %sw.bb.5645
    i32 93, label %sw.bb.5645
    i32 92, label %sw.bb.5645
    i32 90, label %sw.bb.5645
    i32 89, label %sw.bb.5645
    i32 88, label %sw.bb.5645
    i32 84, label %sw.bb.5645
    i32 83, label %sw.bb.5645
    i32 77, label %sw.bb.5645
    i32 76, label %sw.bb.5645
    i32 60, label %sw.bb.5645
    i32 59, label %sw.bb.5645
    i32 58, label %sw.bb.5645
    i32 51, label %sw.bb.5645
    i32 50, label %sw.bb.5645
    i32 49, label %sw.bb.5645
    i32 45, label %sw.bb.5645
    i32 39, label %sw.bb.5645
    i32 38, label %sw.bb.5645
    i32 166, label %sw.bb.5656
    i32 31, label %sw.bb.5656
    i32 803, label %sw.bb.5667
    i32 765, label %sw.bb.5667
    i32 726, label %sw.bb.5667
    i32 165, label %sw.bb.5667
    i32 30, label %sw.bb.5667
    i32 29, label %sw.bb.5673
    i32 791, label %sw.bb.5693
    i32 788, label %sw.bb.5693
    i32 766, label %sw.bb.5693
    i32 764, label %sw.bb.5693
    i32 763, label %sw.bb.5693
    i32 28, label %sw.bb.5693
    i32 26, label %sw.bb.5693
    i32 25, label %sw.bb.5693
    i32 22, label %sw.bb.5693
    i32 20, label %sw.bb.5693
    i32 18, label %sw.bb.5693
    i32 17, label %sw.bb.5725
    i32 16, label %sw.bb.5754
    i32 15, label %sw.bb.5754
    i32 14, label %sw.bb.5754
    i32 13, label %sw.bb.5777
    i32 12, label %sw.bb.5777
    i32 283, label %sw.bb.5800
    i32 282, label %sw.bb.5800
    i32 281, label %sw.bb.5800
    i32 280, label %sw.bb.5800
    i32 11, label %sw.bb.5800
    i32 7, label %sw.bb.5800
    i32 4, label %sw.bb.5800
    i32 1, label %sw.bb.5800
    i32 37, label %sw.bb.5823
    i32 36, label %sw.bb.5823
    i32 35, label %sw.bb.5823
    i32 34, label %sw.bb.5823
    i32 33, label %sw.bb.5823
    i32 32, label %sw.bb.5823
    i32 27, label %sw.bb.5823
    i32 24, label %sw.bb.5823
    i32 23, label %sw.bb.5823
    i32 21, label %sw.bb.5823
    i32 19, label %sw.bb.5823
    i32 10, label %sw.bb.5823
    i32 9, label %sw.bb.5823
    i32 8, label %sw.bb.5823
    i32 6, label %sw.bb.5823
    i32 5, label %sw.bb.5823
    i32 3, label %sw.bb.5823
    i32 2, label %sw.bb.5823
    i32 0, label %sw.bb.5823
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @_fatal_insn_not_found(%struct.rtx_def* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.insn_extract, i32 0, i32 0)) #3
  unreachable

sw.bb.3:                                          ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %10 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx7 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %10, i64 0
  store %struct.rtx_def** %rtx6, %struct.rtx_def*** %arrayidx7, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx8 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %12, i64 0
  store %struct.rtx_def* %11, %struct.rtx_def** %arrayidx8, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 2
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %14 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx12 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %14, i64 1
  store %struct.rtx_def** %rtx11, %struct.rtx_def*** %arrayidx12, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx13 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %16, i64 1
  store %struct.rtx_def* %15, %struct.rtx_def** %arrayidx13, align 8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %17 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %18 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx18 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %18, i64 0
  store %struct.rtx_def** %rtx17, %struct.rtx_def*** %arrayidx18, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %20 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx19 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %20, i64 0
  store %struct.rtx_def* %19, %struct.rtx_def** %arrayidx19, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %27 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx38 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %27, i64 1
  store %struct.rtx_def** %rtx37, %struct.rtx_def*** %arrayidx38, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %29 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx39 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %29, i64 1
  store %struct.rtx_def* %28, %struct.rtx_def** %arrayidx39, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 1
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %36 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx58 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %36, i64 2
  store %struct.rtx_def** %rtx57, %struct.rtx_def*** %arrayidx58, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %38 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx59 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %38, i64 2
  store %struct.rtx_def* %37, %struct.rtx_def** %arrayidx59, align 8
  br label %sw.epilog

sw.bb.60:                                         ; preds = %entry
  %39 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %40 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx64 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %40, i64 0
  store %struct.rtx_def** %rtx63, %struct.rtx_def*** %arrayidx64, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx65 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %42, i64 0
  store %struct.rtx_def* %41, %struct.rtx_def** %arrayidx65, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 1
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 0
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %49 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx84 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %49, i64 1
  store %struct.rtx_def** %rtx83, %struct.rtx_def*** %arrayidx84, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %51 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx85 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %51, i64 1
  store %struct.rtx_def* %50, %struct.rtx_def** %arrayidx85, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 1
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 1
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  store %struct.rtx_def** %rtx103, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.104:                                        ; preds = %entry, %entry, %entry
  %58 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %59 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx108 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %59, i64 0
  store %struct.rtx_def** %rtx107, %struct.rtx_def*** %arrayidx108, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx107, align 8
  %61 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx109 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %61, i64 0
  store %struct.rtx_def* %60, %struct.rtx_def** %arrayidx109, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 1
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 0
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %66 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx122 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %66, i64 1
  store %struct.rtx_def** %rtx121, %struct.rtx_def*** %arrayidx122, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx123 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %68, i64 1
  store %struct.rtx_def* %67, %struct.rtx_def** %arrayidx123, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 1
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 1
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtx132 = bitcast %union.rtunion_def* %arrayidx131 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx132, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %73 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx136 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %73, i64 2
  store %struct.rtx_def** %rtx135, %struct.rtx_def*** %arrayidx136, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  %75 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx137 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %75, i64 2
  store %struct.rtx_def* %74, %struct.rtx_def** %arrayidx137, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 1
  %rtx140 = bitcast %union.rtunion_def* %arrayidx139 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx140, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 0
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 1
  %rtx146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx146, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 0
  %rtx149 = bitcast %union.rtunion_def* %arrayidx148 to %struct.rtx_def**
  store %struct.rtx_def** %rtx149, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %80 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 1
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx152, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 1
  %rtx155 = bitcast %union.rtunion_def* %arrayidx154 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx155, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 1
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 0
  %rtx161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtx_def**
  store %struct.rtx_def** %rtx161, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.162:                                        ; preds = %entry
  %84 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %85 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx166 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %85, i64 0
  store %struct.rtx_def** %rtx165, %struct.rtx_def*** %arrayidx166, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %87 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx167 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %87, i64 0
  store %struct.rtx_def* %86, %struct.rtx_def** %arrayidx167, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 1
  %rtx170 = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx170, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 0
  %rtx173 = bitcast %union.rtunion_def* %arrayidx172 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx173, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 0
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx176, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 0
  %rtx179 = bitcast %union.rtunion_def* %arrayidx178 to %struct.rtx_def**
  %92 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx180 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %92, i64 1
  store %struct.rtx_def** %rtx179, %struct.rtx_def*** %arrayidx180, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx179, align 8
  %94 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx181 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %94, i64 1
  store %struct.rtx_def* %93, %struct.rtx_def** %arrayidx181, align 8
  br label %sw.epilog

sw.bb.182:                                        ; preds = %entry
  %95 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 0
  %rtx185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtx_def**
  %96 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx186 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %96, i64 0
  store %struct.rtx_def** %rtx185, %struct.rtx_def*** %arrayidx186, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx185, align 8
  %98 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx187 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %98, i64 0
  store %struct.rtx_def* %97, %struct.rtx_def** %arrayidx187, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 1
  %rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx190, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 1
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %101 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx194 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %101, i64 1
  store %struct.rtx_def** %rtx193, %struct.rtx_def*** %arrayidx194, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %103 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx195 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %103, i64 1
  store %struct.rtx_def* %102, %struct.rtx_def** %arrayidx195, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 1
  %rtx198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx198, align 8
  %fld199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld199, i32 0, i64 0
  %rtx201 = bitcast %union.rtunion_def* %arrayidx200 to %struct.rtx_def**
  %106 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx202 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %106, i64 2
  store %struct.rtx_def** %rtx201, %struct.rtx_def*** %arrayidx202, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx201, align 8
  %108 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx203 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %108, i64 2
  store %struct.rtx_def* %107, %struct.rtx_def** %arrayidx203, align 8
  br label %sw.epilog

sw.bb.204:                                        ; preds = %entry
  %109 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld205 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld205, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx206 to %struct.rtvec_def**
  %110 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %110, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %111 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx207, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 0
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  %fld211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld211, i32 0, i64 0
  %rtx213 = bitcast %union.rtunion_def* %arrayidx212 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx213, align 8
  %fld214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld214, i32 0, i64 0
  %rtx216 = bitcast %union.rtunion_def* %arrayidx215 to %struct.rtx_def**
  %114 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx217 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %114, i64 0
  store %struct.rtx_def** %rtx216, %struct.rtx_def*** %arrayidx217, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx216, align 8
  %116 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx218 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %116, i64 0
  store %struct.rtx_def* %115, %struct.rtx_def** %arrayidx218, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 0
  %rtvec221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtvec_def**
  %118 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec221, align 8
  %elem222 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %118, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem222, i32 0, i64 1
  %119 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx223, align 8
  %fld224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld224, i32 0, i64 0
  %rtx226 = bitcast %union.rtunion_def* %arrayidx225 to %struct.rtx_def**
  %120 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx227 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %120, i64 1
  store %struct.rtx_def** %rtx226, %struct.rtx_def*** %arrayidx227, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx226, align 8
  %122 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx228 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %122, i64 1
  store %struct.rtx_def* %121, %struct.rtx_def** %arrayidx228, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 0
  %rtvec231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtvec_def**
  %124 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec231, align 8
  %elem232 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %124, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem232, i32 0, i64 2
  %125 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx233, align 8
  %fld234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld234, i32 0, i64 0
  %rtx236 = bitcast %union.rtunion_def* %arrayidx235 to %struct.rtx_def**
  %126 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx237 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %126, i64 2
  store %struct.rtx_def** %rtx236, %struct.rtx_def*** %arrayidx237, align 8
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx236, align 8
  %128 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx238 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %128, i64 2
  store %struct.rtx_def* %127, %struct.rtx_def** %arrayidx238, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld239, i32 0, i64 0
  %rtvec241 = bitcast %union.rtunion_def* %arrayidx240 to %struct.rtvec_def**
  %130 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec241, align 8
  %elem242 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %130, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem242, i32 0, i64 3
  %131 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx243, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 0
  %rtx246 = bitcast %union.rtunion_def* %arrayidx245 to %struct.rtx_def**
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtx246, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 0
  %rtx249 = bitcast %union.rtunion_def* %arrayidx248 to %struct.rtx_def**
  %133 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx250 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %133, i64 3
  store %struct.rtx_def** %rtx249, %struct.rtx_def*** %arrayidx250, align 8
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx249, align 8
  %135 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx251 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %135, i64 3
  store %struct.rtx_def* %134, %struct.rtx_def** %arrayidx251, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld252 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld252, i32 0, i64 0
  %rtvec254 = bitcast %union.rtunion_def* %arrayidx253 to %struct.rtvec_def**
  %137 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec254, align 8
  %elem255 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %137, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem255, i32 0, i64 0
  %138 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx256, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtx259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx259, align 8
  %fld260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i32 0, i64 0
  %rtx262 = bitcast %union.rtunion_def* %arrayidx261 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %rtx262, align 8
  %fld263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld263, i32 0, i64 1
  %rtx265 = bitcast %union.rtunion_def* %arrayidx264 to %struct.rtx_def**
  %141 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx266 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %141, i64 4
  store %struct.rtx_def** %rtx265, %struct.rtx_def*** %arrayidx266, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx265, align 8
  %143 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx267 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %143, i64 4
  store %struct.rtx_def* %142, %struct.rtx_def** %arrayidx267, align 8
  br label %sw.epilog

sw.bb.268:                                        ; preds = %entry
  %144 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld269, i32 0, i64 0
  %rtx271 = bitcast %union.rtunion_def* %arrayidx270 to %struct.rtx_def**
  %145 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx272 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %145, i64 0
  store %struct.rtx_def** %rtx271, %struct.rtx_def*** %arrayidx272, align 8
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx271, align 8
  %147 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx273 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %147, i64 0
  store %struct.rtx_def* %146, %struct.rtx_def** %arrayidx273, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 1
  %rtx276 = bitcast %union.rtunion_def* %arrayidx275 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx276, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 0
  %rtvec279 = bitcast %union.rtunion_def* %arrayidx278 to %struct.rtvec_def**
  %150 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec279, align 8
  %elem280 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %150, i32 0, i32 1
  %arrayidx281 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem280, i32 0, i64 0
  store %struct.rtx_def** %arrayidx281, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.282:                                        ; preds = %entry, %entry, %entry, %entry, %entry
  %151 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 0
  %rtx285 = bitcast %union.rtunion_def* %arrayidx284 to %struct.rtx_def**
  %152 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx286 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %152, i64 0
  store %struct.rtx_def** %rtx285, %struct.rtx_def*** %arrayidx286, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** %rtx285, align 8
  %154 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx287 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %154, i64 0
  store %struct.rtx_def* %153, %struct.rtx_def** %arrayidx287, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld288, i32 0, i64 1
  %rtx290 = bitcast %union.rtunion_def* %arrayidx289 to %struct.rtx_def**
  %156 = load %struct.rtx_def*, %struct.rtx_def** %rtx290, align 8
  %fld291 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx292 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld291, i32 0, i64 0
  %rtvec293 = bitcast %union.rtunion_def* %arrayidx292 to %struct.rtvec_def**
  %157 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec293, align 8
  %elem294 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %157, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem294, i32 0, i64 0
  %158 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx296 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %158, i64 1
  store %struct.rtx_def** %arrayidx295, %struct.rtx_def*** %arrayidx296, align 8
  %159 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx295, align 8
  %160 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx297 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %160, i64 1
  store %struct.rtx_def* %159, %struct.rtx_def** %arrayidx297, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld298 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld298, i32 0, i64 1
  %rtx300 = bitcast %union.rtunion_def* %arrayidx299 to %struct.rtx_def**
  %162 = load %struct.rtx_def*, %struct.rtx_def** %rtx300, align 8
  %fld301 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld301, i32 0, i64 0
  %rtvec303 = bitcast %union.rtunion_def* %arrayidx302 to %struct.rtvec_def**
  %163 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec303, align 8
  %elem304 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %163, i32 0, i32 1
  %arrayidx305 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem304, i32 0, i64 1
  %164 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx306 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %164, i64 2
  store %struct.rtx_def** %arrayidx305, %struct.rtx_def*** %arrayidx306, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx305, align 8
  %166 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx307 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %166, i64 2
  store %struct.rtx_def* %165, %struct.rtx_def** %arrayidx307, align 8
  br label %sw.epilog

sw.bb.308:                                        ; preds = %entry
  %167 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld309, i32 0, i64 0
  %rtx311 = bitcast %union.rtunion_def* %arrayidx310 to %struct.rtx_def**
  %168 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx312 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %168, i64 0
  store %struct.rtx_def** %rtx311, %struct.rtx_def*** %arrayidx312, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %rtx311, align 8
  %170 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx313 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %170, i64 0
  store %struct.rtx_def* %169, %struct.rtx_def** %arrayidx313, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld314 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx315 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld314, i32 0, i64 1
  %rtx316 = bitcast %union.rtunion_def* %arrayidx315 to %struct.rtx_def**
  %172 = load %struct.rtx_def*, %struct.rtx_def** %rtx316, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %172, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 0
  %rtx319 = bitcast %union.rtunion_def* %arrayidx318 to %struct.rtx_def**
  %173 = load %struct.rtx_def*, %struct.rtx_def** %rtx319, align 8
  %fld320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld320, i32 0, i64 0
  %rtx322 = bitcast %union.rtunion_def* %arrayidx321 to %struct.rtx_def**
  %174 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx323 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %174, i64 1
  store %struct.rtx_def** %rtx322, %struct.rtx_def*** %arrayidx323, align 8
  %175 = load %struct.rtx_def*, %struct.rtx_def** %rtx322, align 8
  %176 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx324 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %176, i64 1
  store %struct.rtx_def* %175, %struct.rtx_def** %arrayidx324, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld325 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %arrayidx326 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld325, i32 0, i64 1
  %rtx327 = bitcast %union.rtunion_def* %arrayidx326 to %struct.rtx_def**
  %178 = load %struct.rtx_def*, %struct.rtx_def** %rtx327, align 8
  %fld328 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx329 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld328, i32 0, i64 0
  %rtx330 = bitcast %union.rtunion_def* %arrayidx329 to %struct.rtx_def**
  %179 = load %struct.rtx_def*, %struct.rtx_def** %rtx330, align 8
  %fld331 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx332 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld331, i32 0, i64 1
  %rtx333 = bitcast %union.rtunion_def* %arrayidx332 to %struct.rtx_def**
  %180 = load %struct.rtx_def*, %struct.rtx_def** %rtx333, align 8
  %fld334 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %180, i32 0, i32 1
  %arrayidx335 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld334, i32 0, i64 0
  %rtvec336 = bitcast %union.rtunion_def* %arrayidx335 to %struct.rtvec_def**
  %181 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec336, align 8
  %elem337 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %181, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem337, i32 0, i64 0
  %182 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx339 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %182, i64 2
  store %struct.rtx_def** %arrayidx338, %struct.rtx_def*** %arrayidx339, align 8
  %183 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx338, align 8
  %184 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx340 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %184, i64 2
  store %struct.rtx_def* %183, %struct.rtx_def** %arrayidx340, align 8
  br label %sw.epilog

sw.bb.341:                                        ; preds = %entry
  %185 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %arrayidx343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld342, i32 0, i64 0
  %rtx344 = bitcast %union.rtunion_def* %arrayidx343 to %struct.rtx_def**
  %186 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx345 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %186, i64 0
  store %struct.rtx_def** %rtx344, %struct.rtx_def*** %arrayidx345, align 8
  %187 = load %struct.rtx_def*, %struct.rtx_def** %rtx344, align 8
  %188 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx346 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %188, i64 0
  store %struct.rtx_def* %187, %struct.rtx_def** %arrayidx346, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %189, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld347, i32 0, i64 1
  %rtx349 = bitcast %union.rtunion_def* %arrayidx348 to %struct.rtx_def**
  %190 = load %struct.rtx_def*, %struct.rtx_def** %rtx349, align 8
  %fld350 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld350, i32 0, i64 0
  %rtx352 = bitcast %union.rtunion_def* %arrayidx351 to %struct.rtx_def**
  %191 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx353 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %191, i64 1
  store %struct.rtx_def** %rtx352, %struct.rtx_def*** %arrayidx353, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtx352, align 8
  %193 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx354 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %193, i64 1
  store %struct.rtx_def* %192, %struct.rtx_def** %arrayidx354, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld355 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld355, i32 0, i64 1
  %rtx357 = bitcast %union.rtunion_def* %arrayidx356 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx357, align 8
  %fld358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld358, i32 0, i64 1
  %rtx360 = bitcast %union.rtunion_def* %arrayidx359 to %struct.rtx_def**
  %196 = load %struct.rtx_def*, %struct.rtx_def** %rtx360, align 8
  %fld361 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx362 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld361, i32 0, i64 0
  %rtx363 = bitcast %union.rtunion_def* %arrayidx362 to %struct.rtx_def**
  %197 = load %struct.rtx_def*, %struct.rtx_def** %rtx363, align 8
  %fld364 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx365 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld364, i32 0, i64 0
  %rtx366 = bitcast %union.rtunion_def* %arrayidx365 to %struct.rtx_def**
  %198 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx367 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %198, i64 2
  store %struct.rtx_def** %rtx366, %struct.rtx_def*** %arrayidx367, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %rtx366, align 8
  %200 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx368 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %200, i64 2
  store %struct.rtx_def* %199, %struct.rtx_def** %arrayidx368, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld369, i32 0, i64 1
  %rtx371 = bitcast %union.rtunion_def* %arrayidx370 to %struct.rtx_def**
  %202 = load %struct.rtx_def*, %struct.rtx_def** %rtx371, align 8
  %fld372 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx373 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld372, i32 0, i64 2
  %rtx374 = bitcast %union.rtunion_def* %arrayidx373 to %struct.rtx_def**
  %203 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx375 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %203, i64 3
  store %struct.rtx_def** %rtx374, %struct.rtx_def*** %arrayidx375, align 8
  %204 = load %struct.rtx_def*, %struct.rtx_def** %rtx374, align 8
  %205 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx376 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %205, i64 3
  store %struct.rtx_def* %204, %struct.rtx_def** %arrayidx376, align 8
  br label %sw.epilog

sw.bb.377:                                        ; preds = %entry
  %206 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld378 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx379 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld378, i32 0, i64 0
  %rtx380 = bitcast %union.rtunion_def* %arrayidx379 to %struct.rtx_def**
  %207 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx381 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %207, i64 0
  store %struct.rtx_def** %rtx380, %struct.rtx_def*** %arrayidx381, align 8
  %208 = load %struct.rtx_def*, %struct.rtx_def** %rtx380, align 8
  %209 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx382 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %209, i64 0
  store %struct.rtx_def* %208, %struct.rtx_def** %arrayidx382, align 8
  %210 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld383 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx384 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld383, i32 0, i64 1
  %rtx385 = bitcast %union.rtunion_def* %arrayidx384 to %struct.rtx_def**
  %211 = load %struct.rtx_def*, %struct.rtx_def** %rtx385, align 8
  %fld386 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx387 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld386, i32 0, i64 0
  %rtx388 = bitcast %union.rtunion_def* %arrayidx387 to %struct.rtx_def**
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtx388, align 8
  %fld389 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %212, i32 0, i32 1
  %arrayidx390 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld389, i32 0, i64 0
  %rtx391 = bitcast %union.rtunion_def* %arrayidx390 to %struct.rtx_def**
  %213 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx392 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %213, i64 1
  store %struct.rtx_def** %rtx391, %struct.rtx_def*** %arrayidx392, align 8
  %214 = load %struct.rtx_def*, %struct.rtx_def** %rtx391, align 8
  %215 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx393 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %215, i64 1
  store %struct.rtx_def* %214, %struct.rtx_def** %arrayidx393, align 8
  %216 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld394 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx395 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld394, i32 0, i64 1
  %rtx396 = bitcast %union.rtunion_def* %arrayidx395 to %struct.rtx_def**
  %217 = load %struct.rtx_def*, %struct.rtx_def** %rtx396, align 8
  %fld397 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx398 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld397, i32 0, i64 0
  %rtx399 = bitcast %union.rtunion_def* %arrayidx398 to %struct.rtx_def**
  %218 = load %struct.rtx_def*, %struct.rtx_def** %rtx399, align 8
  %fld400 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx401 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld400, i32 0, i64 1
  %rtx402 = bitcast %union.rtunion_def* %arrayidx401 to %struct.rtx_def**
  %219 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx403 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %219, i64 2
  store %struct.rtx_def** %rtx402, %struct.rtx_def*** %arrayidx403, align 8
  %220 = load %struct.rtx_def*, %struct.rtx_def** %rtx402, align 8
  %221 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx404 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %221, i64 2
  store %struct.rtx_def* %220, %struct.rtx_def** %arrayidx404, align 8
  br label %sw.epilog

sw.bb.405:                                        ; preds = %entry, %entry
  %222 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld406 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %222, i32 0, i32 1
  %arrayidx407 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld406, i32 0, i64 0
  %rtx408 = bitcast %union.rtunion_def* %arrayidx407 to %struct.rtx_def**
  %223 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx409 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %223, i64 0
  store %struct.rtx_def** %rtx408, %struct.rtx_def*** %arrayidx409, align 8
  %224 = load %struct.rtx_def*, %struct.rtx_def** %rtx408, align 8
  %225 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx410 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %225, i64 0
  store %struct.rtx_def* %224, %struct.rtx_def** %arrayidx410, align 8
  %226 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld411 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %arrayidx412 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld411, i32 0, i64 1
  %rtx413 = bitcast %union.rtunion_def* %arrayidx412 to %struct.rtx_def**
  %227 = load %struct.rtx_def*, %struct.rtx_def** %rtx413, align 8
  %fld414 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %227, i32 0, i32 1
  %arrayidx415 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld414, i32 0, i64 0
  %rtx416 = bitcast %union.rtunion_def* %arrayidx415 to %struct.rtx_def**
  %228 = load %struct.rtx_def*, %struct.rtx_def** %rtx416, align 8
  %fld417 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %arrayidx418 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld417, i32 0, i64 0
  %rtx419 = bitcast %union.rtunion_def* %arrayidx418 to %struct.rtx_def**
  %229 = load %struct.rtx_def*, %struct.rtx_def** %rtx419, align 8
  %fld420 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %arrayidx421 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld420, i32 0, i64 0
  %rtx422 = bitcast %union.rtunion_def* %arrayidx421 to %struct.rtx_def**
  %230 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx423 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %230, i64 1
  store %struct.rtx_def** %rtx422, %struct.rtx_def*** %arrayidx423, align 8
  %231 = load %struct.rtx_def*, %struct.rtx_def** %rtx422, align 8
  %232 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx424 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %232, i64 1
  store %struct.rtx_def* %231, %struct.rtx_def** %arrayidx424, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld425 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx426 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld425, i32 0, i64 1
  %rtx427 = bitcast %union.rtunion_def* %arrayidx426 to %struct.rtx_def**
  %234 = load %struct.rtx_def*, %struct.rtx_def** %rtx427, align 8
  %fld428 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %234, i32 0, i32 1
  %arrayidx429 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld428, i32 0, i64 0
  %rtx430 = bitcast %union.rtunion_def* %arrayidx429 to %struct.rtx_def**
  %235 = load %struct.rtx_def*, %struct.rtx_def** %rtx430, align 8
  %fld431 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %235, i32 0, i32 1
  %arrayidx432 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld431, i32 0, i64 0
  %rtx433 = bitcast %union.rtunion_def* %arrayidx432 to %struct.rtx_def**
  %236 = load %struct.rtx_def*, %struct.rtx_def** %rtx433, align 8
  %fld434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld434, i32 0, i64 1
  %rtx436 = bitcast %union.rtunion_def* %arrayidx435 to %struct.rtx_def**
  %237 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx437 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %237, i64 2
  store %struct.rtx_def** %rtx436, %struct.rtx_def*** %arrayidx437, align 8
  %238 = load %struct.rtx_def*, %struct.rtx_def** %rtx436, align 8
  %239 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx438 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %239, i64 2
  store %struct.rtx_def* %238, %struct.rtx_def** %arrayidx438, align 8
  br label %sw.epilog

sw.bb.439:                                        ; preds = %entry
  %240 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld440 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %240, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld440, i32 0, i64 0
  %rtx442 = bitcast %union.rtunion_def* %arrayidx441 to %struct.rtx_def**
  %241 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx443 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %241, i64 0
  store %struct.rtx_def** %rtx442, %struct.rtx_def*** %arrayidx443, align 8
  %242 = load %struct.rtx_def*, %struct.rtx_def** %rtx442, align 8
  %243 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx444 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %243, i64 0
  store %struct.rtx_def* %242, %struct.rtx_def** %arrayidx444, align 8
  %244 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld445 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx446 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld445, i32 0, i64 1
  %rtx447 = bitcast %union.rtunion_def* %arrayidx446 to %struct.rtx_def**
  %245 = load %struct.rtx_def*, %struct.rtx_def** %rtx447, align 8
  %fld448 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %arrayidx449 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld448, i32 0, i64 0
  %rtvec450 = bitcast %union.rtunion_def* %arrayidx449 to %struct.rtvec_def**
  %246 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec450, align 8
  %elem451 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %246, i32 0, i32 1
  %arrayidx452 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem451, i32 0, i64 0
  %247 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx452, align 8
  %fld453 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %247, i32 0, i32 1
  %arrayidx454 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld453, i32 0, i64 0
  %rtx455 = bitcast %union.rtunion_def* %arrayidx454 to %struct.rtx_def**
  %248 = load %struct.rtx_def*, %struct.rtx_def** %rtx455, align 8
  %fld456 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx457 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld456, i32 0, i64 0
  %rtx458 = bitcast %union.rtunion_def* %arrayidx457 to %struct.rtx_def**
  %249 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx459 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %249, i64 1
  store %struct.rtx_def** %rtx458, %struct.rtx_def*** %arrayidx459, align 8
  %250 = load %struct.rtx_def*, %struct.rtx_def** %rtx458, align 8
  %251 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx460 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %251, i64 1
  store %struct.rtx_def* %250, %struct.rtx_def** %arrayidx460, align 8
  %252 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %252, i32 0, i32 1
  %arrayidx462 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld461, i32 0, i64 1
  %rtx463 = bitcast %union.rtunion_def* %arrayidx462 to %struct.rtx_def**
  %253 = load %struct.rtx_def*, %struct.rtx_def** %rtx463, align 8
  %fld464 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %arrayidx465 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld464, i32 0, i64 0
  %rtvec466 = bitcast %union.rtunion_def* %arrayidx465 to %struct.rtvec_def**
  %254 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec466, align 8
  %elem467 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %254, i32 0, i32 1
  %arrayidx468 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem467, i32 0, i64 0
  %255 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx468, align 8
  %fld469 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %arrayidx470 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld469, i32 0, i64 1
  %rtx471 = bitcast %union.rtunion_def* %arrayidx470 to %struct.rtx_def**
  %256 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx472 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %256, i64 2
  store %struct.rtx_def** %rtx471, %struct.rtx_def*** %arrayidx472, align 8
  %257 = load %struct.rtx_def*, %struct.rtx_def** %rtx471, align 8
  %258 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx473 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %258, i64 2
  store %struct.rtx_def* %257, %struct.rtx_def** %arrayidx473, align 8
  br label %sw.epilog

sw.bb.474:                                        ; preds = %entry
  %259 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %259, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 0
  %rtx477 = bitcast %union.rtunion_def* %arrayidx476 to %struct.rtx_def**
  %260 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx478 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %260, i64 0
  store %struct.rtx_def** %rtx477, %struct.rtx_def*** %arrayidx478, align 8
  %261 = load %struct.rtx_def*, %struct.rtx_def** %rtx477, align 8
  %262 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx479 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %262, i64 0
  store %struct.rtx_def* %261, %struct.rtx_def** %arrayidx479, align 8
  %263 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld480 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %263, i32 0, i32 1
  %arrayidx481 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld480, i32 0, i64 1
  %rtx482 = bitcast %union.rtunion_def* %arrayidx481 to %struct.rtx_def**
  %264 = load %struct.rtx_def*, %struct.rtx_def** %rtx482, align 8
  %fld483 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %264, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld483, i32 0, i64 0
  %rtx485 = bitcast %union.rtunion_def* %arrayidx484 to %struct.rtx_def**
  %265 = load %struct.rtx_def*, %struct.rtx_def** %rtx485, align 8
  %fld486 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx487 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld486, i32 0, i64 0
  %rtx488 = bitcast %union.rtunion_def* %arrayidx487 to %struct.rtx_def**
  %266 = load %struct.rtx_def*, %struct.rtx_def** %rtx488, align 8
  %fld489 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %266, i32 0, i32 1
  %arrayidx490 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld489, i32 0, i64 0
  %rtx491 = bitcast %union.rtunion_def* %arrayidx490 to %struct.rtx_def**
  %267 = load %struct.rtx_def*, %struct.rtx_def** %rtx491, align 8
  %fld492 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx493 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld492, i32 0, i64 0
  %rtx494 = bitcast %union.rtunion_def* %arrayidx493 to %struct.rtx_def**
  %268 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx495 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %268, i64 1
  store %struct.rtx_def** %rtx494, %struct.rtx_def*** %arrayidx495, align 8
  %269 = load %struct.rtx_def*, %struct.rtx_def** %rtx494, align 8
  %270 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx496 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %270, i64 1
  store %struct.rtx_def* %269, %struct.rtx_def** %arrayidx496, align 8
  %271 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld497 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %271, i32 0, i32 1
  %arrayidx498 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld497, i32 0, i64 1
  %rtx499 = bitcast %union.rtunion_def* %arrayidx498 to %struct.rtx_def**
  %272 = load %struct.rtx_def*, %struct.rtx_def** %rtx499, align 8
  %fld500 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %272, i32 0, i32 1
  %arrayidx501 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld500, i32 0, i64 0
  %rtx502 = bitcast %union.rtunion_def* %arrayidx501 to %struct.rtx_def**
  %273 = load %struct.rtx_def*, %struct.rtx_def** %rtx502, align 8
  %fld503 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %273, i32 0, i32 1
  %arrayidx504 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld503, i32 0, i64 1
  %rtx505 = bitcast %union.rtunion_def* %arrayidx504 to %struct.rtx_def**
  %274 = load %struct.rtx_def*, %struct.rtx_def** %rtx505, align 8
  %fld506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %274, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld506, i32 0, i64 0
  %rtx508 = bitcast %union.rtunion_def* %arrayidx507 to %struct.rtx_def**
  %275 = load %struct.rtx_def*, %struct.rtx_def** %rtx508, align 8
  %fld509 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx510 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld509, i32 0, i64 0
  %rtx511 = bitcast %union.rtunion_def* %arrayidx510 to %struct.rtx_def**
  %276 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx512 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %276, i64 2
  store %struct.rtx_def** %rtx511, %struct.rtx_def*** %arrayidx512, align 8
  %277 = load %struct.rtx_def*, %struct.rtx_def** %rtx511, align 8
  %278 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx513 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %278, i64 2
  store %struct.rtx_def* %277, %struct.rtx_def** %arrayidx513, align 8
  %279 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld514 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx515 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld514, i32 0, i64 1
  %rtx516 = bitcast %union.rtunion_def* %arrayidx515 to %struct.rtx_def**
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtx516, align 8
  %fld517 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %280, i32 0, i32 1
  %arrayidx518 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld517, i32 0, i64 1
  %rtx519 = bitcast %union.rtunion_def* %arrayidx518 to %struct.rtx_def**
  %281 = load %struct.rtx_def*, %struct.rtx_def** %rtx519, align 8
  %fld520 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %281, i32 0, i32 1
  %arrayidx521 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld520, i32 0, i64 0
  %rtx522 = bitcast %union.rtunion_def* %arrayidx521 to %struct.rtx_def**
  %282 = load %struct.rtx_def*, %struct.rtx_def** %rtx522, align 8
  %fld523 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %282, i32 0, i32 1
  %arrayidx524 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld523, i32 0, i64 0
  %rtx525 = bitcast %union.rtunion_def* %arrayidx524 to %struct.rtx_def**
  %283 = load %struct.rtx_def*, %struct.rtx_def** %rtx525, align 8
  %fld526 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %283, i32 0, i32 1
  %arrayidx527 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld526, i32 0, i64 0
  %rtx528 = bitcast %union.rtunion_def* %arrayidx527 to %struct.rtx_def**
  store %struct.rtx_def** %rtx528, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %284 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld529 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %284, i32 0, i32 1
  %arrayidx530 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld529, i32 0, i64 1
  %rtx531 = bitcast %union.rtunion_def* %arrayidx530 to %struct.rtx_def**
  %285 = load %struct.rtx_def*, %struct.rtx_def** %rtx531, align 8
  %fld532 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %285, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld532, i32 0, i64 1
  %rtx534 = bitcast %union.rtunion_def* %arrayidx533 to %struct.rtx_def**
  %286 = load %struct.rtx_def*, %struct.rtx_def** %rtx534, align 8
  %fld535 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %286, i32 0, i32 1
  %arrayidx536 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld535, i32 0, i64 1
  %rtx537 = bitcast %union.rtunion_def* %arrayidx536 to %struct.rtx_def**
  %287 = load %struct.rtx_def*, %struct.rtx_def** %rtx537, align 8
  %fld538 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %287, i32 0, i32 1
  %arrayidx539 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld538, i32 0, i64 0
  %rtx540 = bitcast %union.rtunion_def* %arrayidx539 to %struct.rtx_def**
  %288 = load %struct.rtx_def*, %struct.rtx_def** %rtx540, align 8
  %fld541 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %288, i32 0, i32 1
  %arrayidx542 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld541, i32 0, i64 0
  %rtx543 = bitcast %union.rtunion_def* %arrayidx542 to %struct.rtx_def**
  store %struct.rtx_def** %rtx543, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.544:                                        ; preds = %entry, %entry
  %289 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld545 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %289, i32 0, i32 1
  %arrayidx546 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld545, i32 0, i64 0
  %rtx547 = bitcast %union.rtunion_def* %arrayidx546 to %struct.rtx_def**
  %290 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx548 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %290, i64 0
  store %struct.rtx_def** %rtx547, %struct.rtx_def*** %arrayidx548, align 8
  %291 = load %struct.rtx_def*, %struct.rtx_def** %rtx547, align 8
  %292 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx549 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %292, i64 0
  store %struct.rtx_def* %291, %struct.rtx_def** %arrayidx549, align 8
  %293 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld550 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %293, i32 0, i32 1
  %arrayidx551 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld550, i32 0, i64 1
  %rtx552 = bitcast %union.rtunion_def* %arrayidx551 to %struct.rtx_def**
  %294 = load %struct.rtx_def*, %struct.rtx_def** %rtx552, align 8
  %fld553 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %294, i32 0, i32 1
  %arrayidx554 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld553, i32 0, i64 0
  %rtx555 = bitcast %union.rtunion_def* %arrayidx554 to %struct.rtx_def**
  %295 = load %struct.rtx_def*, %struct.rtx_def** %rtx555, align 8
  %fld556 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %295, i32 0, i32 1
  %arrayidx557 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld556, i32 0, i64 0
  %rtx558 = bitcast %union.rtunion_def* %arrayidx557 to %struct.rtx_def**
  %296 = load %struct.rtx_def*, %struct.rtx_def** %rtx558, align 8
  %fld559 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %296, i32 0, i32 1
  %arrayidx560 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld559, i32 0, i64 0
  %rtx561 = bitcast %union.rtunion_def* %arrayidx560 to %struct.rtx_def**
  %297 = load %struct.rtx_def*, %struct.rtx_def** %rtx561, align 8
  %fld562 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %297, i32 0, i32 1
  %arrayidx563 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld562, i32 0, i64 0
  %rtx564 = bitcast %union.rtunion_def* %arrayidx563 to %struct.rtx_def**
  %298 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx565 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %298, i64 1
  store %struct.rtx_def** %rtx564, %struct.rtx_def*** %arrayidx565, align 8
  %299 = load %struct.rtx_def*, %struct.rtx_def** %rtx564, align 8
  %300 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx566 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %300, i64 1
  store %struct.rtx_def* %299, %struct.rtx_def** %arrayidx566, align 8
  %301 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld567 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx568 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld567, i32 0, i64 1
  %rtx569 = bitcast %union.rtunion_def* %arrayidx568 to %struct.rtx_def**
  %302 = load %struct.rtx_def*, %struct.rtx_def** %rtx569, align 8
  %fld570 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %302, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld570, i32 0, i64 0
  %rtx572 = bitcast %union.rtunion_def* %arrayidx571 to %struct.rtx_def**
  %303 = load %struct.rtx_def*, %struct.rtx_def** %rtx572, align 8
  %fld573 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %303, i32 0, i32 1
  %arrayidx574 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld573, i32 0, i64 0
  %rtx575 = bitcast %union.rtunion_def* %arrayidx574 to %struct.rtx_def**
  %304 = load %struct.rtx_def*, %struct.rtx_def** %rtx575, align 8
  %fld576 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %304, i32 0, i32 1
  %arrayidx577 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld576, i32 0, i64 1
  %rtx578 = bitcast %union.rtunion_def* %arrayidx577 to %struct.rtx_def**
  %305 = load %struct.rtx_def*, %struct.rtx_def** %rtx578, align 8
  %fld579 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %305, i32 0, i32 1
  %arrayidx580 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld579, i32 0, i64 0
  %rtx581 = bitcast %union.rtunion_def* %arrayidx580 to %struct.rtx_def**
  %306 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx582 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %306, i64 2
  store %struct.rtx_def** %rtx581, %struct.rtx_def*** %arrayidx582, align 8
  %307 = load %struct.rtx_def*, %struct.rtx_def** %rtx581, align 8
  %308 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx583 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %308, i64 2
  store %struct.rtx_def* %307, %struct.rtx_def** %arrayidx583, align 8
  br label %sw.epilog

sw.bb.584:                                        ; preds = %entry, %entry
  %309 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld585 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %309, i32 0, i32 1
  %arrayidx586 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld585, i32 0, i64 0
  %rtx587 = bitcast %union.rtunion_def* %arrayidx586 to %struct.rtx_def**
  %310 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx588 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %310, i64 0
  store %struct.rtx_def** %rtx587, %struct.rtx_def*** %arrayidx588, align 8
  %311 = load %struct.rtx_def*, %struct.rtx_def** %rtx587, align 8
  %312 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx589 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %312, i64 0
  store %struct.rtx_def* %311, %struct.rtx_def** %arrayidx589, align 8
  %313 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld590 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %313, i32 0, i32 1
  %arrayidx591 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld590, i32 0, i64 1
  %rtx592 = bitcast %union.rtunion_def* %arrayidx591 to %struct.rtx_def**
  %314 = load %struct.rtx_def*, %struct.rtx_def** %rtx592, align 8
  %fld593 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %314, i32 0, i32 1
  %arrayidx594 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld593, i32 0, i64 0
  %rtx595 = bitcast %union.rtunion_def* %arrayidx594 to %struct.rtx_def**
  %315 = load %struct.rtx_def*, %struct.rtx_def** %rtx595, align 8
  %fld596 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %arrayidx597 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld596, i32 0, i64 0
  %rtvec598 = bitcast %union.rtunion_def* %arrayidx597 to %struct.rtvec_def**
  %316 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec598, align 8
  %elem599 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %316, i32 0, i32 1
  %arrayidx600 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem599, i32 0, i64 0
  %317 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx601 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %317, i64 1
  store %struct.rtx_def** %arrayidx600, %struct.rtx_def*** %arrayidx601, align 8
  %318 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx600, align 8
  %319 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx602 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %319, i64 1
  store %struct.rtx_def* %318, %struct.rtx_def** %arrayidx602, align 8
  br label %sw.epilog

sw.bb.603:                                        ; preds = %entry, %entry
  %320 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld604 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %320, i32 0, i32 1
  %arrayidx605 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld604, i32 0, i64 0
  %rtx606 = bitcast %union.rtunion_def* %arrayidx605 to %struct.rtx_def**
  %321 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx607 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %321, i64 0
  store %struct.rtx_def** %rtx606, %struct.rtx_def*** %arrayidx607, align 8
  %322 = load %struct.rtx_def*, %struct.rtx_def** %rtx606, align 8
  %323 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx608 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %323, i64 0
  store %struct.rtx_def* %322, %struct.rtx_def** %arrayidx608, align 8
  %324 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld609 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %324, i32 0, i32 1
  %arrayidx610 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld609, i32 0, i64 1
  %rtx611 = bitcast %union.rtunion_def* %arrayidx610 to %struct.rtx_def**
  %325 = load %struct.rtx_def*, %struct.rtx_def** %rtx611, align 8
  %fld612 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %325, i32 0, i32 1
  %arrayidx613 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld612, i32 0, i64 0
  %rtx614 = bitcast %union.rtunion_def* %arrayidx613 to %struct.rtx_def**
  %326 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx615 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %326, i64 1
  store %struct.rtx_def** %rtx614, %struct.rtx_def*** %arrayidx615, align 8
  %327 = load %struct.rtx_def*, %struct.rtx_def** %rtx614, align 8
  %328 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx616 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %328, i64 1
  store %struct.rtx_def* %327, %struct.rtx_def** %arrayidx616, align 8
  %329 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %329, i32 0, i32 1
  %arrayidx618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld617, i32 0, i64 1
  %rtx619 = bitcast %union.rtunion_def* %arrayidx618 to %struct.rtx_def**
  %330 = load %struct.rtx_def*, %struct.rtx_def** %rtx619, align 8
  %fld620 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %330, i32 0, i32 1
  %arrayidx621 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld620, i32 0, i64 1
  %rtx622 = bitcast %union.rtunion_def* %arrayidx621 to %struct.rtx_def**
  %331 = load %struct.rtx_def*, %struct.rtx_def** %rtx622, align 8
  %fld623 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %331, i32 0, i32 1
  %arrayidx624 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld623, i32 0, i64 0
  %rtx625 = bitcast %union.rtunion_def* %arrayidx624 to %struct.rtx_def**
  %332 = load %struct.rtx_def*, %struct.rtx_def** %rtx625, align 8
  %fld626 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %332, i32 0, i32 1
  %arrayidx627 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld626, i32 0, i64 0
  %rtx628 = bitcast %union.rtunion_def* %arrayidx627 to %struct.rtx_def**
  %333 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx629 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %333, i64 2
  store %struct.rtx_def** %rtx628, %struct.rtx_def*** %arrayidx629, align 8
  %334 = load %struct.rtx_def*, %struct.rtx_def** %rtx628, align 8
  %335 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx630 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %335, i64 2
  store %struct.rtx_def* %334, %struct.rtx_def** %arrayidx630, align 8
  br label %sw.epilog

sw.bb.631:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %336 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld632 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %336, i32 0, i32 1
  %arrayidx633 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld632, i32 0, i64 0
  %rtx634 = bitcast %union.rtunion_def* %arrayidx633 to %struct.rtx_def**
  %337 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx635 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %337, i64 0
  store %struct.rtx_def** %rtx634, %struct.rtx_def*** %arrayidx635, align 8
  %338 = load %struct.rtx_def*, %struct.rtx_def** %rtx634, align 8
  %339 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx636 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %339, i64 0
  store %struct.rtx_def* %338, %struct.rtx_def** %arrayidx636, align 8
  %340 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld637 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %340, i32 0, i32 1
  %arrayidx638 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld637, i32 0, i64 1
  %rtx639 = bitcast %union.rtunion_def* %arrayidx638 to %struct.rtx_def**
  %341 = load %struct.rtx_def*, %struct.rtx_def** %rtx639, align 8
  %fld640 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %341, i32 0, i32 1
  %arrayidx641 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld640, i32 0, i64 0
  %rtx642 = bitcast %union.rtunion_def* %arrayidx641 to %struct.rtx_def**
  %342 = load %struct.rtx_def*, %struct.rtx_def** %rtx642, align 8
  %fld643 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %342, i32 0, i32 1
  %arrayidx644 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld643, i32 0, i64 0
  %rtx645 = bitcast %union.rtunion_def* %arrayidx644 to %struct.rtx_def**
  %343 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx646 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %343, i64 1
  store %struct.rtx_def** %rtx645, %struct.rtx_def*** %arrayidx646, align 8
  %344 = load %struct.rtx_def*, %struct.rtx_def** %rtx645, align 8
  %345 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx647 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %345, i64 1
  store %struct.rtx_def* %344, %struct.rtx_def** %arrayidx647, align 8
  %346 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld648 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %346, i32 0, i32 1
  %arrayidx649 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld648, i32 0, i64 1
  %rtx650 = bitcast %union.rtunion_def* %arrayidx649 to %struct.rtx_def**
  %347 = load %struct.rtx_def*, %struct.rtx_def** %rtx650, align 8
  %fld651 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %arrayidx652 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld651, i32 0, i64 1
  %rtx653 = bitcast %union.rtunion_def* %arrayidx652 to %struct.rtx_def**
  %348 = load %struct.rtx_def*, %struct.rtx_def** %rtx653, align 8
  %fld654 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %348, i32 0, i32 1
  %arrayidx655 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld654, i32 0, i64 0
  %rtx656 = bitcast %union.rtunion_def* %arrayidx655 to %struct.rtx_def**
  %349 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx657 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %349, i64 2
  store %struct.rtx_def** %rtx656, %struct.rtx_def*** %arrayidx657, align 8
  %350 = load %struct.rtx_def*, %struct.rtx_def** %rtx656, align 8
  %351 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx658 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %351, i64 2
  store %struct.rtx_def* %350, %struct.rtx_def** %arrayidx658, align 8
  br label %sw.epilog

sw.bb.659:                                        ; preds = %entry, %entry
  %352 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld660 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %352, i32 0, i32 1
  %arrayidx661 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld660, i32 0, i64 1
  %rtx662 = bitcast %union.rtunion_def* %arrayidx661 to %struct.rtx_def**
  %353 = load %struct.rtx_def*, %struct.rtx_def** %rtx662, align 8
  %fld663 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %353, i32 0, i32 1
  %arrayidx664 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld663, i32 0, i64 0
  %rtx665 = bitcast %union.rtunion_def* %arrayidx664 to %struct.rtx_def**
  %354 = load %struct.rtx_def*, %struct.rtx_def** %rtx665, align 8
  %fld666 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %354, i32 0, i32 1
  %arrayidx667 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld666, i32 0, i64 0
  %rtx668 = bitcast %union.rtunion_def* %arrayidx667 to %struct.rtx_def**
  %355 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx669 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %355, i64 0
  store %struct.rtx_def** %rtx668, %struct.rtx_def*** %arrayidx669, align 8
  %356 = load %struct.rtx_def*, %struct.rtx_def** %rtx668, align 8
  %357 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx670 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %357, i64 0
  store %struct.rtx_def* %356, %struct.rtx_def** %arrayidx670, align 8
  %358 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld671 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %358, i32 0, i32 1
  %arrayidx672 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld671, i32 0, i64 1
  %rtx673 = bitcast %union.rtunion_def* %arrayidx672 to %struct.rtx_def**
  %359 = load %struct.rtx_def*, %struct.rtx_def** %rtx673, align 8
  %fld674 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %359, i32 0, i32 1
  %arrayidx675 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld674, i32 0, i64 1
  %rtx676 = bitcast %union.rtunion_def* %arrayidx675 to %struct.rtx_def**
  %360 = load %struct.rtx_def*, %struct.rtx_def** %rtx676, align 8
  %fld677 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %360, i32 0, i32 1
  %arrayidx678 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld677, i32 0, i64 0
  %rtx679 = bitcast %union.rtunion_def* %arrayidx678 to %struct.rtx_def**
  %361 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx680 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %361, i64 1
  store %struct.rtx_def** %rtx679, %struct.rtx_def*** %arrayidx680, align 8
  %362 = load %struct.rtx_def*, %struct.rtx_def** %rtx679, align 8
  %363 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx681 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %363, i64 1
  store %struct.rtx_def* %362, %struct.rtx_def** %arrayidx681, align 8
  %364 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld682 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %364, i32 0, i32 1
  %arrayidx683 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld682, i32 0, i64 1
  %rtx684 = bitcast %union.rtunion_def* %arrayidx683 to %struct.rtx_def**
  %365 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx685 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %365, i64 2
  store %struct.rtx_def** %rtx684, %struct.rtx_def*** %arrayidx685, align 8
  %366 = load %struct.rtx_def*, %struct.rtx_def** %rtx684, align 8
  %367 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx686 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %367, i64 2
  store %struct.rtx_def* %366, %struct.rtx_def** %arrayidx686, align 8
  br label %sw.epilog

sw.bb.687:                                        ; preds = %entry
  %368 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld688 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %368, i32 0, i32 1
  %arrayidx689 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld688, i32 0, i64 0
  %rtx690 = bitcast %union.rtunion_def* %arrayidx689 to %struct.rtx_def**
  %369 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx691 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %369, i64 0
  store %struct.rtx_def** %rtx690, %struct.rtx_def*** %arrayidx691, align 8
  %370 = load %struct.rtx_def*, %struct.rtx_def** %rtx690, align 8
  %371 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx692 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %371, i64 0
  store %struct.rtx_def* %370, %struct.rtx_def** %arrayidx692, align 8
  %372 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld693 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %372, i32 0, i32 1
  %arrayidx694 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld693, i32 0, i64 1
  %rtx695 = bitcast %union.rtunion_def* %arrayidx694 to %struct.rtx_def**
  %373 = load %struct.rtx_def*, %struct.rtx_def** %rtx695, align 8
  %fld696 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %373, i32 0, i32 1
  %arrayidx697 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld696, i32 0, i64 0
  %rtx698 = bitcast %union.rtunion_def* %arrayidx697 to %struct.rtx_def**
  %374 = load %struct.rtx_def*, %struct.rtx_def** %rtx698, align 8
  %fld699 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %374, i32 0, i32 1
  %arrayidx700 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld699, i32 0, i64 0
  %rtx701 = bitcast %union.rtunion_def* %arrayidx700 to %struct.rtx_def**
  %375 = load %struct.rtx_def*, %struct.rtx_def** %rtx701, align 8
  %fld702 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %375, i32 0, i32 1
  %arrayidx703 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld702, i32 0, i64 0
  %rtx704 = bitcast %union.rtunion_def* %arrayidx703 to %struct.rtx_def**
  %376 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx705 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %376, i64 1
  store %struct.rtx_def** %rtx704, %struct.rtx_def*** %arrayidx705, align 8
  %377 = load %struct.rtx_def*, %struct.rtx_def** %rtx704, align 8
  %378 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx706 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %378, i64 1
  store %struct.rtx_def* %377, %struct.rtx_def** %arrayidx706, align 8
  %379 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld707 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %379, i32 0, i32 1
  %arrayidx708 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld707, i32 0, i64 1
  %rtx709 = bitcast %union.rtunion_def* %arrayidx708 to %struct.rtx_def**
  %380 = load %struct.rtx_def*, %struct.rtx_def** %rtx709, align 8
  %fld710 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %380, i32 0, i32 1
  %arrayidx711 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld710, i32 0, i64 0
  %rtx712 = bitcast %union.rtunion_def* %arrayidx711 to %struct.rtx_def**
  %381 = load %struct.rtx_def*, %struct.rtx_def** %rtx712, align 8
  %fld713 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %381, i32 0, i32 1
  %arrayidx714 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld713, i32 0, i64 0
  %rtx715 = bitcast %union.rtunion_def* %arrayidx714 to %struct.rtx_def**
  %382 = load %struct.rtx_def*, %struct.rtx_def** %rtx715, align 8
  %fld716 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %382, i32 0, i32 1
  %arrayidx717 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld716, i32 0, i64 1
  %rtx718 = bitcast %union.rtunion_def* %arrayidx717 to %struct.rtx_def**
  %383 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx719 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %383, i64 2
  store %struct.rtx_def** %rtx718, %struct.rtx_def*** %arrayidx719, align 8
  %384 = load %struct.rtx_def*, %struct.rtx_def** %rtx718, align 8
  %385 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx720 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %385, i64 2
  store %struct.rtx_def* %384, %struct.rtx_def** %arrayidx720, align 8
  %386 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld721 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %386, i32 0, i32 1
  %arrayidx722 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld721, i32 0, i64 1
  %rtx723 = bitcast %union.rtunion_def* %arrayidx722 to %struct.rtx_def**
  %387 = load %struct.rtx_def*, %struct.rtx_def** %rtx723, align 8
  %fld724 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %387, i32 0, i32 1
  %arrayidx725 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld724, i32 0, i64 0
  %rtx726 = bitcast %union.rtunion_def* %arrayidx725 to %struct.rtx_def**
  %388 = load %struct.rtx_def*, %struct.rtx_def** %rtx726, align 8
  %fld727 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %388, i32 0, i32 1
  %arrayidx728 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld727, i32 0, i64 0
  %rtx729 = bitcast %union.rtunion_def* %arrayidx728 to %struct.rtx_def**
  %389 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx730 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %389, i64 3
  store %struct.rtx_def** %rtx729, %struct.rtx_def*** %arrayidx730, align 8
  %390 = load %struct.rtx_def*, %struct.rtx_def** %rtx729, align 8
  %391 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx731 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %391, i64 3
  store %struct.rtx_def* %390, %struct.rtx_def** %arrayidx731, align 8
  %392 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld732 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %392, i32 0, i32 1
  %arrayidx733 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld732, i32 0, i64 1
  %rtx734 = bitcast %union.rtunion_def* %arrayidx733 to %struct.rtx_def**
  %393 = load %struct.rtx_def*, %struct.rtx_def** %rtx734, align 8
  %fld735 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %393, i32 0, i32 1
  %arrayidx736 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld735, i32 0, i64 1
  %rtx737 = bitcast %union.rtunion_def* %arrayidx736 to %struct.rtx_def**
  %394 = load %struct.rtx_def*, %struct.rtx_def** %rtx737, align 8
  %fld738 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %394, i32 0, i32 1
  %arrayidx739 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld738, i32 0, i64 0
  %rtx740 = bitcast %union.rtunion_def* %arrayidx739 to %struct.rtx_def**
  store %struct.rtx_def** %rtx740, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.741:                                        ; preds = %entry
  %395 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld742 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %395, i32 0, i32 1
  %arrayidx743 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld742, i32 0, i64 0
  %rtx744 = bitcast %union.rtunion_def* %arrayidx743 to %struct.rtx_def**
  %396 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx745 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %396, i64 0
  store %struct.rtx_def** %rtx744, %struct.rtx_def*** %arrayidx745, align 8
  %397 = load %struct.rtx_def*, %struct.rtx_def** %rtx744, align 8
  %398 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx746 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %398, i64 0
  store %struct.rtx_def* %397, %struct.rtx_def** %arrayidx746, align 8
  %399 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld747 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %399, i32 0, i32 1
  %arrayidx748 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld747, i32 0, i64 1
  %rtx749 = bitcast %union.rtunion_def* %arrayidx748 to %struct.rtx_def**
  %400 = load %struct.rtx_def*, %struct.rtx_def** %rtx749, align 8
  %fld750 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %400, i32 0, i32 1
  %arrayidx751 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld750, i32 0, i64 0
  %rtx752 = bitcast %union.rtunion_def* %arrayidx751 to %struct.rtx_def**
  %401 = load %struct.rtx_def*, %struct.rtx_def** %rtx752, align 8
  %fld753 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %401, i32 0, i32 1
  %arrayidx754 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld753, i32 0, i64 0
  %rtx755 = bitcast %union.rtunion_def* %arrayidx754 to %struct.rtx_def**
  %402 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx756 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %402, i64 1
  store %struct.rtx_def** %rtx755, %struct.rtx_def*** %arrayidx756, align 8
  %403 = load %struct.rtx_def*, %struct.rtx_def** %rtx755, align 8
  %404 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx757 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %404, i64 1
  store %struct.rtx_def* %403, %struct.rtx_def** %arrayidx757, align 8
  %405 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld758 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %405, i32 0, i32 1
  %arrayidx759 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld758, i32 0, i64 1
  %rtx760 = bitcast %union.rtunion_def* %arrayidx759 to %struct.rtx_def**
  %406 = load %struct.rtx_def*, %struct.rtx_def** %rtx760, align 8
  %fld761 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %406, i32 0, i32 1
  %arrayidx762 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld761, i32 0, i64 0
  %rtx763 = bitcast %union.rtunion_def* %arrayidx762 to %struct.rtx_def**
  %407 = load %struct.rtx_def*, %struct.rtx_def** %rtx763, align 8
  %fld764 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %407, i32 0, i32 1
  %arrayidx765 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld764, i32 0, i64 1
  %rtx766 = bitcast %union.rtunion_def* %arrayidx765 to %struct.rtx_def**
  %408 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx767 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %408, i64 2
  store %struct.rtx_def** %rtx766, %struct.rtx_def*** %arrayidx767, align 8
  %409 = load %struct.rtx_def*, %struct.rtx_def** %rtx766, align 8
  %410 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx768 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %410, i64 2
  store %struct.rtx_def* %409, %struct.rtx_def** %arrayidx768, align 8
  %411 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld769 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %411, i32 0, i32 1
  %arrayidx770 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld769, i32 0, i64 1
  %rtx771 = bitcast %union.rtunion_def* %arrayidx770 to %struct.rtx_def**
  %412 = load %struct.rtx_def*, %struct.rtx_def** %rtx771, align 8
  %fld772 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %412, i32 0, i32 1
  %arrayidx773 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld772, i32 0, i64 0
  %rtx774 = bitcast %union.rtunion_def* %arrayidx773 to %struct.rtx_def**
  %413 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx775 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %413, i64 3
  store %struct.rtx_def** %rtx774, %struct.rtx_def*** %arrayidx775, align 8
  %414 = load %struct.rtx_def*, %struct.rtx_def** %rtx774, align 8
  %415 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx776 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %415, i64 3
  store %struct.rtx_def* %414, %struct.rtx_def** %arrayidx776, align 8
  %416 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld777 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %416, i32 0, i32 1
  %arrayidx778 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld777, i32 0, i64 1
  %rtx779 = bitcast %union.rtunion_def* %arrayidx778 to %struct.rtx_def**
  %417 = load %struct.rtx_def*, %struct.rtx_def** %rtx779, align 8
  %fld780 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %417, i32 0, i32 1
  %arrayidx781 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld780, i32 0, i64 1
  %rtx782 = bitcast %union.rtunion_def* %arrayidx781 to %struct.rtx_def**
  store %struct.rtx_def** %rtx782, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.783:                                        ; preds = %entry
  %418 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld784 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %418, i32 0, i32 1
  %arrayidx785 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld784, i32 0, i64 0
  %rtx786 = bitcast %union.rtunion_def* %arrayidx785 to %struct.rtx_def**
  %419 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx787 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %419, i64 0
  store %struct.rtx_def** %rtx786, %struct.rtx_def*** %arrayidx787, align 8
  %420 = load %struct.rtx_def*, %struct.rtx_def** %rtx786, align 8
  %421 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx788 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %421, i64 0
  store %struct.rtx_def* %420, %struct.rtx_def** %arrayidx788, align 8
  %422 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld789 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %422, i32 0, i32 1
  %arrayidx790 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld789, i32 0, i64 1
  %rtx791 = bitcast %union.rtunion_def* %arrayidx790 to %struct.rtx_def**
  %423 = load %struct.rtx_def*, %struct.rtx_def** %rtx791, align 8
  %fld792 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %423, i32 0, i32 1
  %arrayidx793 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld792, i32 0, i64 0
  %rtx794 = bitcast %union.rtunion_def* %arrayidx793 to %struct.rtx_def**
  %424 = load %struct.rtx_def*, %struct.rtx_def** %rtx794, align 8
  %fld795 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %424, i32 0, i32 1
  %arrayidx796 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld795, i32 0, i64 0
  %rtx797 = bitcast %union.rtunion_def* %arrayidx796 to %struct.rtx_def**
  %425 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx798 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %425, i64 1
  store %struct.rtx_def** %rtx797, %struct.rtx_def*** %arrayidx798, align 8
  %426 = load %struct.rtx_def*, %struct.rtx_def** %rtx797, align 8
  %427 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx799 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %427, i64 1
  store %struct.rtx_def* %426, %struct.rtx_def** %arrayidx799, align 8
  %428 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld800 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %428, i32 0, i32 1
  %arrayidx801 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld800, i32 0, i64 1
  %rtx802 = bitcast %union.rtunion_def* %arrayidx801 to %struct.rtx_def**
  %429 = load %struct.rtx_def*, %struct.rtx_def** %rtx802, align 8
  %fld803 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %429, i32 0, i32 1
  %arrayidx804 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld803, i32 0, i64 0
  %rtx805 = bitcast %union.rtunion_def* %arrayidx804 to %struct.rtx_def**
  %430 = load %struct.rtx_def*, %struct.rtx_def** %rtx805, align 8
  %fld806 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %430, i32 0, i32 1
  %arrayidx807 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld806, i32 0, i64 1
  %rtx808 = bitcast %union.rtunion_def* %arrayidx807 to %struct.rtx_def**
  %431 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx809 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %431, i64 2
  store %struct.rtx_def** %rtx808, %struct.rtx_def*** %arrayidx809, align 8
  %432 = load %struct.rtx_def*, %struct.rtx_def** %rtx808, align 8
  %433 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx810 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %433, i64 2
  store %struct.rtx_def* %432, %struct.rtx_def** %arrayidx810, align 8
  %434 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld811 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %434, i32 0, i32 1
  %arrayidx812 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld811, i32 0, i64 1
  %rtx813 = bitcast %union.rtunion_def* %arrayidx812 to %struct.rtx_def**
  %435 = load %struct.rtx_def*, %struct.rtx_def** %rtx813, align 8
  %fld814 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %435, i32 0, i32 1
  %arrayidx815 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld814, i32 0, i64 0
  %rtx816 = bitcast %union.rtunion_def* %arrayidx815 to %struct.rtx_def**
  %436 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx817 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %436, i64 3
  store %struct.rtx_def** %rtx816, %struct.rtx_def*** %arrayidx817, align 8
  %437 = load %struct.rtx_def*, %struct.rtx_def** %rtx816, align 8
  %438 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx818 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %438, i64 3
  store %struct.rtx_def* %437, %struct.rtx_def** %arrayidx818, align 8
  br label %sw.epilog

sw.bb.819:                                        ; preds = %entry, %entry
  %439 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld820 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %439, i32 0, i32 1
  %arrayidx821 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld820, i32 0, i64 0
  %rtx822 = bitcast %union.rtunion_def* %arrayidx821 to %struct.rtx_def**
  %440 = load %struct.rtx_def*, %struct.rtx_def** %rtx822, align 8
  %fld823 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %440, i32 0, i32 1
  %arrayidx824 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld823, i32 0, i64 0
  %rtx825 = bitcast %union.rtunion_def* %arrayidx824 to %struct.rtx_def**
  %441 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx826 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %441, i64 0
  store %struct.rtx_def** %rtx825, %struct.rtx_def*** %arrayidx826, align 8
  %442 = load %struct.rtx_def*, %struct.rtx_def** %rtx825, align 8
  %443 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx827 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %443, i64 0
  store %struct.rtx_def* %442, %struct.rtx_def** %arrayidx827, align 8
  %444 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld828 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %444, i32 0, i32 1
  %arrayidx829 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld828, i32 0, i64 1
  %rtx830 = bitcast %union.rtunion_def* %arrayidx829 to %struct.rtx_def**
  %445 = load %struct.rtx_def*, %struct.rtx_def** %rtx830, align 8
  %fld831 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %445, i32 0, i32 1
  %arrayidx832 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld831, i32 0, i64 0
  %rtx833 = bitcast %union.rtunion_def* %arrayidx832 to %struct.rtx_def**
  %446 = load %struct.rtx_def*, %struct.rtx_def** %rtx833, align 8
  %fld834 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %446, i32 0, i32 1
  %arrayidx835 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld834, i32 0, i64 0
  %rtx836 = bitcast %union.rtunion_def* %arrayidx835 to %struct.rtx_def**
  %447 = load %struct.rtx_def*, %struct.rtx_def** %rtx836, align 8
  %fld837 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %447, i32 0, i32 1
  %arrayidx838 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld837, i32 0, i64 0
  %rtx839 = bitcast %union.rtunion_def* %arrayidx838 to %struct.rtx_def**
  %448 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx840 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %448, i64 1
  store %struct.rtx_def** %rtx839, %struct.rtx_def*** %arrayidx840, align 8
  %449 = load %struct.rtx_def*, %struct.rtx_def** %rtx839, align 8
  %450 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx841 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %450, i64 1
  store %struct.rtx_def* %449, %struct.rtx_def** %arrayidx841, align 8
  %451 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld842 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %451, i32 0, i32 1
  %arrayidx843 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld842, i32 0, i64 1
  %rtx844 = bitcast %union.rtunion_def* %arrayidx843 to %struct.rtx_def**
  %452 = load %struct.rtx_def*, %struct.rtx_def** %rtx844, align 8
  %fld845 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %452, i32 0, i32 1
  %arrayidx846 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld845, i32 0, i64 1
  %rtx847 = bitcast %union.rtunion_def* %arrayidx846 to %struct.rtx_def**
  %453 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx848 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %453, i64 2
  store %struct.rtx_def** %rtx847, %struct.rtx_def*** %arrayidx848, align 8
  %454 = load %struct.rtx_def*, %struct.rtx_def** %rtx847, align 8
  %455 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx849 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %455, i64 2
  store %struct.rtx_def* %454, %struct.rtx_def** %arrayidx849, align 8
  br label %sw.epilog

sw.bb.850:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %456 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld851 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %456, i32 0, i32 1
  %arrayidx852 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld851, i32 0, i64 0
  %rtx853 = bitcast %union.rtunion_def* %arrayidx852 to %struct.rtx_def**
  %457 = load %struct.rtx_def*, %struct.rtx_def** %rtx853, align 8
  %fld854 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %457, i32 0, i32 1
  %arrayidx855 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld854, i32 0, i64 0
  %rtx856 = bitcast %union.rtunion_def* %arrayidx855 to %struct.rtx_def**
  %458 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx857 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %458, i64 0
  store %struct.rtx_def** %rtx856, %struct.rtx_def*** %arrayidx857, align 8
  %459 = load %struct.rtx_def*, %struct.rtx_def** %rtx856, align 8
  %460 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx858 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %460, i64 0
  store %struct.rtx_def* %459, %struct.rtx_def** %arrayidx858, align 8
  %461 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld859 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %461, i32 0, i32 1
  %arrayidx860 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld859, i32 0, i64 1
  %rtx861 = bitcast %union.rtunion_def* %arrayidx860 to %struct.rtx_def**
  %462 = load %struct.rtx_def*, %struct.rtx_def** %rtx861, align 8
  %fld862 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %462, i32 0, i32 1
  %arrayidx863 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld862, i32 0, i64 0
  %rtx864 = bitcast %union.rtunion_def* %arrayidx863 to %struct.rtx_def**
  %463 = load %struct.rtx_def*, %struct.rtx_def** %rtx864, align 8
  %fld865 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %463, i32 0, i32 1
  %arrayidx866 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld865, i32 0, i64 0
  %rtx867 = bitcast %union.rtunion_def* %arrayidx866 to %struct.rtx_def**
  %464 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx868 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %464, i64 1
  store %struct.rtx_def** %rtx867, %struct.rtx_def*** %arrayidx868, align 8
  %465 = load %struct.rtx_def*, %struct.rtx_def** %rtx867, align 8
  %466 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx869 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %466, i64 1
  store %struct.rtx_def* %465, %struct.rtx_def** %arrayidx869, align 8
  %467 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld870 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %467, i32 0, i32 1
  %arrayidx871 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld870, i32 0, i64 1
  %rtx872 = bitcast %union.rtunion_def* %arrayidx871 to %struct.rtx_def**
  %468 = load %struct.rtx_def*, %struct.rtx_def** %rtx872, align 8
  %fld873 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %468, i32 0, i32 1
  %arrayidx874 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld873, i32 0, i64 1
  %rtx875 = bitcast %union.rtunion_def* %arrayidx874 to %struct.rtx_def**
  %469 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx876 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %469, i64 2
  store %struct.rtx_def** %rtx875, %struct.rtx_def*** %arrayidx876, align 8
  %470 = load %struct.rtx_def*, %struct.rtx_def** %rtx875, align 8
  %471 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx877 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %471, i64 2
  store %struct.rtx_def* %470, %struct.rtx_def** %arrayidx877, align 8
  br label %sw.epilog

sw.bb.878:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %472 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld879 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %472, i32 0, i32 1
  %arrayidx880 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld879, i32 0, i64 0
  %rtx881 = bitcast %union.rtunion_def* %arrayidx880 to %struct.rtx_def**
  %473 = load %struct.rtx_def*, %struct.rtx_def** %rtx881, align 8
  %fld882 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %473, i32 0, i32 1
  %arrayidx883 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld882, i32 0, i64 0
  %rtx884 = bitcast %union.rtunion_def* %arrayidx883 to %struct.rtx_def**
  %474 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx885 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %474, i64 0
  store %struct.rtx_def** %rtx884, %struct.rtx_def*** %arrayidx885, align 8
  %475 = load %struct.rtx_def*, %struct.rtx_def** %rtx884, align 8
  %476 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx886 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %476, i64 0
  store %struct.rtx_def* %475, %struct.rtx_def** %arrayidx886, align 8
  %477 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld887 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %477, i32 0, i32 1
  %arrayidx888 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld887, i32 0, i64 1
  %rtx889 = bitcast %union.rtunion_def* %arrayidx888 to %struct.rtx_def**
  %478 = load %struct.rtx_def*, %struct.rtx_def** %rtx889, align 8
  %fld890 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %478, i32 0, i32 1
  %arrayidx891 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld890, i32 0, i64 0
  %rtx892 = bitcast %union.rtunion_def* %arrayidx891 to %struct.rtx_def**
  %479 = load %struct.rtx_def*, %struct.rtx_def** %rtx892, align 8
  %fld893 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %479, i32 0, i32 1
  %arrayidx894 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld893, i32 0, i64 0
  %rtx895 = bitcast %union.rtunion_def* %arrayidx894 to %struct.rtx_def**
  %480 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx896 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %480, i64 1
  store %struct.rtx_def** %rtx895, %struct.rtx_def*** %arrayidx896, align 8
  %481 = load %struct.rtx_def*, %struct.rtx_def** %rtx895, align 8
  %482 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx897 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %482, i64 1
  store %struct.rtx_def* %481, %struct.rtx_def** %arrayidx897, align 8
  %483 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld898 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %483, i32 0, i32 1
  %arrayidx899 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld898, i32 0, i64 1
  %rtx900 = bitcast %union.rtunion_def* %arrayidx899 to %struct.rtx_def**
  %484 = load %struct.rtx_def*, %struct.rtx_def** %rtx900, align 8
  %fld901 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %484, i32 0, i32 1
  %arrayidx902 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld901, i32 0, i64 1
  %rtx903 = bitcast %union.rtunion_def* %arrayidx902 to %struct.rtx_def**
  %485 = load %struct.rtx_def*, %struct.rtx_def** %rtx903, align 8
  %fld904 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %485, i32 0, i32 1
  %arrayidx905 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld904, i32 0, i64 0
  %rtx906 = bitcast %union.rtunion_def* %arrayidx905 to %struct.rtx_def**
  %486 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx907 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %486, i64 2
  store %struct.rtx_def** %rtx906, %struct.rtx_def*** %arrayidx907, align 8
  %487 = load %struct.rtx_def*, %struct.rtx_def** %rtx906, align 8
  %488 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx908 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %488, i64 2
  store %struct.rtx_def* %487, %struct.rtx_def** %arrayidx908, align 8
  br label %sw.epilog

sw.bb.909:                                        ; preds = %entry, %entry
  %489 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld910 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %489, i32 0, i32 1
  %arrayidx911 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld910, i32 0, i64 0
  %rtx912 = bitcast %union.rtunion_def* %arrayidx911 to %struct.rtx_def**
  %490 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx913 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %490, i64 0
  store %struct.rtx_def** %rtx912, %struct.rtx_def*** %arrayidx913, align 8
  %491 = load %struct.rtx_def*, %struct.rtx_def** %rtx912, align 8
  %492 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx914 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %492, i64 0
  store %struct.rtx_def* %491, %struct.rtx_def** %arrayidx914, align 8
  %493 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld915 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %493, i32 0, i32 1
  %arrayidx916 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld915, i32 0, i64 1
  %rtx917 = bitcast %union.rtunion_def* %arrayidx916 to %struct.rtx_def**
  %494 = load %struct.rtx_def*, %struct.rtx_def** %rtx917, align 8
  %fld918 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %494, i32 0, i32 1
  %arrayidx919 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld918, i32 0, i64 0
  %rtx920 = bitcast %union.rtunion_def* %arrayidx919 to %struct.rtx_def**
  %495 = load %struct.rtx_def*, %struct.rtx_def** %rtx920, align 8
  %fld921 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %495, i32 0, i32 1
  %arrayidx922 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld921, i32 0, i64 0
  %rtvec923 = bitcast %union.rtunion_def* %arrayidx922 to %struct.rtvec_def**
  %496 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec923, align 8
  %elem924 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %496, i32 0, i32 1
  %arrayidx925 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem924, i32 0, i64 0
  %497 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx926 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %497, i64 1
  store %struct.rtx_def** %arrayidx925, %struct.rtx_def*** %arrayidx926, align 8
  %498 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx925, align 8
  %499 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx927 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %499, i64 1
  store %struct.rtx_def* %498, %struct.rtx_def** %arrayidx927, align 8
  %500 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld928 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %500, i32 0, i32 1
  %arrayidx929 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld928, i32 0, i64 1
  %rtx930 = bitcast %union.rtunion_def* %arrayidx929 to %struct.rtx_def**
  %501 = load %struct.rtx_def*, %struct.rtx_def** %rtx930, align 8
  %fld931 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %501, i32 0, i32 1
  %arrayidx932 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld931, i32 0, i64 1
  %rtx933 = bitcast %union.rtunion_def* %arrayidx932 to %struct.rtx_def**
  %502 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx934 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %502, i64 2
  store %struct.rtx_def** %rtx933, %struct.rtx_def*** %arrayidx934, align 8
  %503 = load %struct.rtx_def*, %struct.rtx_def** %rtx933, align 8
  %504 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx935 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %504, i64 2
  store %struct.rtx_def* %503, %struct.rtx_def** %arrayidx935, align 8
  br label %sw.epilog

sw.bb.936:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %505 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld937 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %505, i32 0, i32 1
  %arrayidx938 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld937, i32 0, i64 0
  %rtx939 = bitcast %union.rtunion_def* %arrayidx938 to %struct.rtx_def**
  %506 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx940 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %506, i64 0
  store %struct.rtx_def** %rtx939, %struct.rtx_def*** %arrayidx940, align 8
  %507 = load %struct.rtx_def*, %struct.rtx_def** %rtx939, align 8
  %508 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx941 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %508, i64 0
  store %struct.rtx_def* %507, %struct.rtx_def** %arrayidx941, align 8
  %509 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld942 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %509, i32 0, i32 1
  %arrayidx943 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld942, i32 0, i64 1
  %rtx944 = bitcast %union.rtunion_def* %arrayidx943 to %struct.rtx_def**
  %510 = load %struct.rtx_def*, %struct.rtx_def** %rtx944, align 8
  %fld945 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %510, i32 0, i32 1
  %arrayidx946 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld945, i32 0, i64 0
  %rtx947 = bitcast %union.rtunion_def* %arrayidx946 to %struct.rtx_def**
  %511 = load %struct.rtx_def*, %struct.rtx_def** %rtx947, align 8
  %fld948 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %511, i32 0, i32 1
  %arrayidx949 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld948, i32 0, i64 0
  %rtx950 = bitcast %union.rtunion_def* %arrayidx949 to %struct.rtx_def**
  %512 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx951 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %512, i64 1
  store %struct.rtx_def** %rtx950, %struct.rtx_def*** %arrayidx951, align 8
  %513 = load %struct.rtx_def*, %struct.rtx_def** %rtx950, align 8
  %514 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx952 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %514, i64 1
  store %struct.rtx_def* %513, %struct.rtx_def** %arrayidx952, align 8
  %515 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld953 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %515, i32 0, i32 1
  %arrayidx954 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld953, i32 0, i64 1
  %rtx955 = bitcast %union.rtunion_def* %arrayidx954 to %struct.rtx_def**
  %516 = load %struct.rtx_def*, %struct.rtx_def** %rtx955, align 8
  %fld956 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %516, i32 0, i32 1
  %arrayidx957 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld956, i32 0, i64 0
  %rtx958 = bitcast %union.rtunion_def* %arrayidx957 to %struct.rtx_def**
  %517 = load %struct.rtx_def*, %struct.rtx_def** %rtx958, align 8
  %fld959 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %517, i32 0, i32 1
  %arrayidx960 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld959, i32 0, i64 1
  %rtx961 = bitcast %union.rtunion_def* %arrayidx960 to %struct.rtx_def**
  %518 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx962 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %518, i64 2
  store %struct.rtx_def** %rtx961, %struct.rtx_def*** %arrayidx962, align 8
  %519 = load %struct.rtx_def*, %struct.rtx_def** %rtx961, align 8
  %520 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx963 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %520, i64 2
  store %struct.rtx_def* %519, %struct.rtx_def** %arrayidx963, align 8
  %521 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld964 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %521, i32 0, i32 1
  %arrayidx965 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld964, i32 0, i64 1
  %rtx966 = bitcast %union.rtunion_def* %arrayidx965 to %struct.rtx_def**
  %522 = load %struct.rtx_def*, %struct.rtx_def** %rtx966, align 8
  %fld967 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %522, i32 0, i32 1
  %arrayidx968 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld967, i32 0, i64 1
  %rtx969 = bitcast %union.rtunion_def* %arrayidx968 to %struct.rtx_def**
  store %struct.rtx_def** %rtx969, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.970:                                        ; preds = %entry
  %523 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld971 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %523, i32 0, i32 1
  %arrayidx972 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld971, i32 0, i64 0
  %rtx973 = bitcast %union.rtunion_def* %arrayidx972 to %struct.rtx_def**
  %524 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx974 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %524, i64 0
  store %struct.rtx_def** %rtx973, %struct.rtx_def*** %arrayidx974, align 8
  %525 = load %struct.rtx_def*, %struct.rtx_def** %rtx973, align 8
  %526 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx975 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %526, i64 0
  store %struct.rtx_def* %525, %struct.rtx_def** %arrayidx975, align 8
  %527 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld976 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %527, i32 0, i32 1
  %arrayidx977 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld976, i32 0, i64 1
  %rtx978 = bitcast %union.rtunion_def* %arrayidx977 to %struct.rtx_def**
  %528 = load %struct.rtx_def*, %struct.rtx_def** %rtx978, align 8
  %fld979 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %528, i32 0, i32 1
  %arrayidx980 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld979, i32 0, i64 0
  %rtvec981 = bitcast %union.rtunion_def* %arrayidx980 to %struct.rtvec_def**
  %529 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec981, align 8
  %elem982 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %529, i32 0, i32 1
  %arrayidx983 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem982, i32 0, i64 0
  %530 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx984 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %530, i64 1
  store %struct.rtx_def** %arrayidx983, %struct.rtx_def*** %arrayidx984, align 8
  %531 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx983, align 8
  %532 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx985 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %532, i64 1
  store %struct.rtx_def* %531, %struct.rtx_def** %arrayidx985, align 8
  %533 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld986 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %533, i32 0, i32 1
  %arrayidx987 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld986, i32 0, i64 1
  %rtx988 = bitcast %union.rtunion_def* %arrayidx987 to %struct.rtx_def**
  %534 = load %struct.rtx_def*, %struct.rtx_def** %rtx988, align 8
  %fld989 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %534, i32 0, i32 1
  %arrayidx990 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld989, i32 0, i64 0
  %rtvec991 = bitcast %union.rtunion_def* %arrayidx990 to %struct.rtvec_def**
  %535 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec991, align 8
  %elem992 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %535, i32 0, i32 1
  %arrayidx993 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem992, i32 0, i64 1
  %536 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx994 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %536, i64 2
  store %struct.rtx_def** %arrayidx993, %struct.rtx_def*** %arrayidx994, align 8
  %537 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx993, align 8
  %538 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx995 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %538, i64 2
  store %struct.rtx_def* %537, %struct.rtx_def** %arrayidx995, align 8
  %539 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld996 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %539, i32 0, i32 1
  %arrayidx997 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld996, i32 0, i64 1
  %rtx998 = bitcast %union.rtunion_def* %arrayidx997 to %struct.rtx_def**
  %540 = load %struct.rtx_def*, %struct.rtx_def** %rtx998, align 8
  %fld999 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %540, i32 0, i32 1
  %arrayidx1000 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld999, i32 0, i64 0
  %rtvec1001 = bitcast %union.rtunion_def* %arrayidx1000 to %struct.rtvec_def**
  %541 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1001, align 8
  %elem1002 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %541, i32 0, i32 1
  %arrayidx1003 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1002, i32 0, i64 2
  %542 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1004 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %542, i64 3
  store %struct.rtx_def** %arrayidx1003, %struct.rtx_def*** %arrayidx1004, align 8
  %543 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1003, align 8
  %544 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1005 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %544, i64 3
  store %struct.rtx_def* %543, %struct.rtx_def** %arrayidx1005, align 8
  br label %sw.epilog

sw.bb.1006:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %545 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1007 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %545, i32 0, i32 1
  %arrayidx1008 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1007, i32 0, i64 0
  %rtx1009 = bitcast %union.rtunion_def* %arrayidx1008 to %struct.rtx_def**
  %546 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1010 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %546, i64 0
  store %struct.rtx_def** %rtx1009, %struct.rtx_def*** %arrayidx1010, align 8
  %547 = load %struct.rtx_def*, %struct.rtx_def** %rtx1009, align 8
  %548 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1011 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %548, i64 0
  store %struct.rtx_def* %547, %struct.rtx_def** %arrayidx1011, align 8
  %549 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1012 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %549, i32 0, i32 1
  %arrayidx1013 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1012, i32 0, i64 1
  %rtx1014 = bitcast %union.rtunion_def* %arrayidx1013 to %struct.rtx_def**
  %550 = load %struct.rtx_def*, %struct.rtx_def** %rtx1014, align 8
  %fld1015 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %550, i32 0, i32 1
  %arrayidx1016 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1015, i32 0, i64 0
  %rtx1017 = bitcast %union.rtunion_def* %arrayidx1016 to %struct.rtx_def**
  %551 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1018 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %551, i64 1
  store %struct.rtx_def** %rtx1017, %struct.rtx_def*** %arrayidx1018, align 8
  %552 = load %struct.rtx_def*, %struct.rtx_def** %rtx1017, align 8
  %553 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1019 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %553, i64 1
  store %struct.rtx_def* %552, %struct.rtx_def** %arrayidx1019, align 8
  %554 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1020 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %554, i32 0, i32 1
  %arrayidx1021 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1020, i32 0, i64 1
  %rtx1022 = bitcast %union.rtunion_def* %arrayidx1021 to %struct.rtx_def**
  %555 = load %struct.rtx_def*, %struct.rtx_def** %rtx1022, align 8
  %fld1023 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %555, i32 0, i32 1
  %arrayidx1024 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1023, i32 0, i64 1
  %rtx1025 = bitcast %union.rtunion_def* %arrayidx1024 to %struct.rtx_def**
  %556 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1026 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %556, i64 2
  store %struct.rtx_def** %rtx1025, %struct.rtx_def*** %arrayidx1026, align 8
  %557 = load %struct.rtx_def*, %struct.rtx_def** %rtx1025, align 8
  %558 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1027 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %558, i64 2
  store %struct.rtx_def* %557, %struct.rtx_def** %arrayidx1027, align 8
  br label %sw.epilog

sw.bb.1028:                                       ; preds = %entry, %entry
  %559 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1029 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %559, i32 0, i32 1
  %arrayidx1030 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1029, i32 0, i64 0
  %rtx1031 = bitcast %union.rtunion_def* %arrayidx1030 to %struct.rtx_def**
  %560 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1032 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %560, i64 0
  store %struct.rtx_def** %rtx1031, %struct.rtx_def*** %arrayidx1032, align 8
  %561 = load %struct.rtx_def*, %struct.rtx_def** %rtx1031, align 8
  %562 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1033 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %562, i64 0
  store %struct.rtx_def* %561, %struct.rtx_def** %arrayidx1033, align 8
  %563 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1034 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %563, i32 0, i32 1
  %arrayidx1035 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1034, i32 0, i64 1
  %rtx1036 = bitcast %union.rtunion_def* %arrayidx1035 to %struct.rtx_def**
  %564 = load %struct.rtx_def*, %struct.rtx_def** %rtx1036, align 8
  %fld1037 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %564, i32 0, i32 1
  %arrayidx1038 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1037, i32 0, i64 0
  %rtx1039 = bitcast %union.rtunion_def* %arrayidx1038 to %struct.rtx_def**
  %565 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1040 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %565, i64 1
  store %struct.rtx_def** %rtx1039, %struct.rtx_def*** %arrayidx1040, align 8
  %566 = load %struct.rtx_def*, %struct.rtx_def** %rtx1039, align 8
  %567 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1041 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %567, i64 1
  store %struct.rtx_def* %566, %struct.rtx_def** %arrayidx1041, align 8
  %568 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1042 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %568, i32 0, i32 1
  %arrayidx1043 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1042, i32 0, i64 1
  %rtx1044 = bitcast %union.rtunion_def* %arrayidx1043 to %struct.rtx_def**
  %569 = load %struct.rtx_def*, %struct.rtx_def** %rtx1044, align 8
  %fld1045 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %569, i32 0, i32 1
  %arrayidx1046 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1045, i32 0, i64 1
  %rtx1047 = bitcast %union.rtunion_def* %arrayidx1046 to %struct.rtx_def**
  %570 = load %struct.rtx_def*, %struct.rtx_def** %rtx1047, align 8
  %fld1048 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %570, i32 0, i32 1
  %arrayidx1049 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1048, i32 0, i64 0
  %rtx1050 = bitcast %union.rtunion_def* %arrayidx1049 to %struct.rtx_def**
  %571 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1051 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %571, i64 2
  store %struct.rtx_def** %rtx1050, %struct.rtx_def*** %arrayidx1051, align 8
  %572 = load %struct.rtx_def*, %struct.rtx_def** %rtx1050, align 8
  %573 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1052 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %573, i64 2
  store %struct.rtx_def* %572, %struct.rtx_def** %arrayidx1052, align 8
  br label %sw.epilog

sw.bb.1053:                                       ; preds = %entry, %entry
  %574 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1054 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %574, i32 0, i32 1
  %arrayidx1055 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1054, i32 0, i64 0
  %rtx1056 = bitcast %union.rtunion_def* %arrayidx1055 to %struct.rtx_def**
  %575 = load %struct.rtx_def*, %struct.rtx_def** %rtx1056, align 8
  %fld1057 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %575, i32 0, i32 1
  %arrayidx1058 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1057, i32 0, i64 0
  %rtx1059 = bitcast %union.rtunion_def* %arrayidx1058 to %struct.rtx_def**
  %576 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1060 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %576, i64 0
  store %struct.rtx_def** %rtx1059, %struct.rtx_def*** %arrayidx1060, align 8
  %577 = load %struct.rtx_def*, %struct.rtx_def** %rtx1059, align 8
  %578 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1061 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %578, i64 0
  store %struct.rtx_def* %577, %struct.rtx_def** %arrayidx1061, align 8
  %579 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1062 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %579, i32 0, i32 1
  %arrayidx1063 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1062, i32 0, i64 1
  %rtx1064 = bitcast %union.rtunion_def* %arrayidx1063 to %struct.rtx_def**
  %580 = load %struct.rtx_def*, %struct.rtx_def** %rtx1064, align 8
  %fld1065 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %580, i32 0, i32 1
  %arrayidx1066 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1065, i32 0, i64 0
  %rtvec1067 = bitcast %union.rtunion_def* %arrayidx1066 to %struct.rtvec_def**
  %581 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1067, align 8
  %elem1068 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %581, i32 0, i32 1
  %arrayidx1069 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1068, i32 0, i64 0
  %582 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1070 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %582, i64 1
  store %struct.rtx_def** %arrayidx1069, %struct.rtx_def*** %arrayidx1070, align 8
  %583 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1069, align 8
  %584 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1071 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %584, i64 1
  store %struct.rtx_def* %583, %struct.rtx_def** %arrayidx1071, align 8
  %585 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1072 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %585, i32 0, i32 1
  %arrayidx1073 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1072, i32 0, i64 1
  %rtx1074 = bitcast %union.rtunion_def* %arrayidx1073 to %struct.rtx_def**
  %586 = load %struct.rtx_def*, %struct.rtx_def** %rtx1074, align 8
  %fld1075 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %586, i32 0, i32 1
  %arrayidx1076 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1075, i32 0, i64 0
  %rtvec1077 = bitcast %union.rtunion_def* %arrayidx1076 to %struct.rtvec_def**
  %587 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1077, align 8
  %elem1078 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %587, i32 0, i32 1
  %arrayidx1079 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1078, i32 0, i64 1
  %588 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1080 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %588, i64 2
  store %struct.rtx_def** %arrayidx1079, %struct.rtx_def*** %arrayidx1080, align 8
  %589 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1079, align 8
  %590 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1081 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %590, i64 2
  store %struct.rtx_def* %589, %struct.rtx_def** %arrayidx1081, align 8
  br label %sw.epilog

sw.bb.1082:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %591 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1083 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %591, i32 0, i32 1
  %arrayidx1084 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1083, i32 0, i64 0
  %rtx1085 = bitcast %union.rtunion_def* %arrayidx1084 to %struct.rtx_def**
  %592 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1086 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %592, i64 0
  store %struct.rtx_def** %rtx1085, %struct.rtx_def*** %arrayidx1086, align 8
  %593 = load %struct.rtx_def*, %struct.rtx_def** %rtx1085, align 8
  %594 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1087 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %594, i64 0
  store %struct.rtx_def* %593, %struct.rtx_def** %arrayidx1087, align 8
  %595 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1088 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %595, i32 0, i32 1
  %arrayidx1089 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1088, i32 0, i64 1
  %rtx1090 = bitcast %union.rtunion_def* %arrayidx1089 to %struct.rtx_def**
  %596 = load %struct.rtx_def*, %struct.rtx_def** %rtx1090, align 8
  %fld1091 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %596, i32 0, i32 1
  %arrayidx1092 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1091, i32 0, i64 0
  %rtx1093 = bitcast %union.rtunion_def* %arrayidx1092 to %struct.rtx_def**
  %597 = load %struct.rtx_def*, %struct.rtx_def** %rtx1093, align 8
  %fld1094 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %597, i32 0, i32 1
  %arrayidx1095 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1094, i32 0, i64 0
  %rtx1096 = bitcast %union.rtunion_def* %arrayidx1095 to %struct.rtx_def**
  %598 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1097 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %598, i64 1
  store %struct.rtx_def** %rtx1096, %struct.rtx_def*** %arrayidx1097, align 8
  %599 = load %struct.rtx_def*, %struct.rtx_def** %rtx1096, align 8
  %600 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1098 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %600, i64 1
  store %struct.rtx_def* %599, %struct.rtx_def** %arrayidx1098, align 8
  %601 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1099 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %601, i32 0, i32 1
  %arrayidx1100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1099, i32 0, i64 1
  %rtx1101 = bitcast %union.rtunion_def* %arrayidx1100 to %struct.rtx_def**
  %602 = load %struct.rtx_def*, %struct.rtx_def** %rtx1101, align 8
  %fld1102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %602, i32 0, i32 1
  %arrayidx1103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1102, i32 0, i64 1
  %rtx1104 = bitcast %union.rtunion_def* %arrayidx1103 to %struct.rtx_def**
  %603 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1105 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %603, i64 2
  store %struct.rtx_def** %rtx1104, %struct.rtx_def*** %arrayidx1105, align 8
  %604 = load %struct.rtx_def*, %struct.rtx_def** %rtx1104, align 8
  %605 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1106 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %605, i64 2
  store %struct.rtx_def* %604, %struct.rtx_def** %arrayidx1106, align 8
  br label %sw.epilog

sw.bb.1107:                                       ; preds = %entry, %entry
  %606 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %606, i32 0, i32 1
  %arrayidx1109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1108, i32 0, i64 0
  %rtvec1110 = bitcast %union.rtunion_def* %arrayidx1109 to %struct.rtvec_def**
  %607 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1110, align 8
  %elem1111 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %607, i32 0, i32 1
  %arrayidx1112 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1111, i32 0, i64 0
  %608 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1112, align 8
  %fld1113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %608, i32 0, i32 1
  %arrayidx1114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1113, i32 0, i64 0
  %rtx1115 = bitcast %union.rtunion_def* %arrayidx1114 to %struct.rtx_def**
  %609 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1116 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %609, i64 0
  store %struct.rtx_def** %rtx1115, %struct.rtx_def*** %arrayidx1116, align 8
  %610 = load %struct.rtx_def*, %struct.rtx_def** %rtx1115, align 8
  %611 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1117 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %611, i64 0
  store %struct.rtx_def* %610, %struct.rtx_def** %arrayidx1117, align 8
  %612 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %612, i32 0, i32 1
  %arrayidx1119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1118, i32 0, i64 0
  %rtvec1120 = bitcast %union.rtunion_def* %arrayidx1119 to %struct.rtvec_def**
  %613 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1120, align 8
  %elem1121 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %613, i32 0, i32 1
  %arrayidx1122 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1121, i32 0, i64 0
  %614 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1122, align 8
  %fld1123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %614, i32 0, i32 1
  %arrayidx1124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1123, i32 0, i64 1
  %rtx1125 = bitcast %union.rtunion_def* %arrayidx1124 to %struct.rtx_def**
  %615 = load %struct.rtx_def*, %struct.rtx_def** %rtx1125, align 8
  %fld1126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %615, i32 0, i32 1
  %arrayidx1127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1126, i32 0, i64 0
  %rtx1128 = bitcast %union.rtunion_def* %arrayidx1127 to %struct.rtx_def**
  %616 = load %struct.rtx_def*, %struct.rtx_def** %rtx1128, align 8
  %fld1129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %616, i32 0, i32 1
  %arrayidx1130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1129, i32 0, i64 0
  %rtx1131 = bitcast %union.rtunion_def* %arrayidx1130 to %struct.rtx_def**
  %617 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1132 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %617, i64 1
  store %struct.rtx_def** %rtx1131, %struct.rtx_def*** %arrayidx1132, align 8
  %618 = load %struct.rtx_def*, %struct.rtx_def** %rtx1131, align 8
  %619 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1133 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %619, i64 1
  store %struct.rtx_def* %618, %struct.rtx_def** %arrayidx1133, align 8
  %620 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %620, i32 0, i32 1
  %arrayidx1135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1134, i32 0, i64 0
  %rtvec1136 = bitcast %union.rtunion_def* %arrayidx1135 to %struct.rtvec_def**
  %621 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1136, align 8
  %elem1137 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %621, i32 0, i32 1
  %arrayidx1138 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1137, i32 0, i64 0
  %622 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1138, align 8
  %fld1139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %622, i32 0, i32 1
  %arrayidx1140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1139, i32 0, i64 1
  %rtx1141 = bitcast %union.rtunion_def* %arrayidx1140 to %struct.rtx_def**
  %623 = load %struct.rtx_def*, %struct.rtx_def** %rtx1141, align 8
  %fld1142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %623, i32 0, i32 1
  %arrayidx1143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1142, i32 0, i64 1
  %rtx1144 = bitcast %union.rtunion_def* %arrayidx1143 to %struct.rtx_def**
  %624 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1145 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %624, i64 2
  store %struct.rtx_def** %rtx1144, %struct.rtx_def*** %arrayidx1145, align 8
  %625 = load %struct.rtx_def*, %struct.rtx_def** %rtx1144, align 8
  %626 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1146 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %626, i64 2
  store %struct.rtx_def* %625, %struct.rtx_def** %arrayidx1146, align 8
  %627 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %627, i32 0, i32 1
  %arrayidx1148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1147, i32 0, i64 0
  %rtvec1149 = bitcast %union.rtunion_def* %arrayidx1148 to %struct.rtvec_def**
  %628 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1149, align 8
  %elem1150 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %628, i32 0, i32 1
  %arrayidx1151 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1150, i32 0, i64 1
  %629 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1151, align 8
  %fld1152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %629, i32 0, i32 1
  %arrayidx1153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1152, i32 0, i64 1
  %rtx1154 = bitcast %union.rtunion_def* %arrayidx1153 to %struct.rtx_def**
  %630 = load %struct.rtx_def*, %struct.rtx_def** %rtx1154, align 8
  %fld1155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %630, i32 0, i32 1
  %arrayidx1156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1155, i32 0, i64 1
  %rtx1157 = bitcast %union.rtunion_def* %arrayidx1156 to %struct.rtx_def**
  %631 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1158 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %631, i64 3
  store %struct.rtx_def** %rtx1157, %struct.rtx_def*** %arrayidx1158, align 8
  %632 = load %struct.rtx_def*, %struct.rtx_def** %rtx1157, align 8
  %633 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1159 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %633, i64 3
  store %struct.rtx_def* %632, %struct.rtx_def** %arrayidx1159, align 8
  br label %sw.epilog

sw.bb.1160:                                       ; preds = %entry, %entry
  %634 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %634, i32 0, i32 1
  %arrayidx1162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1161, i32 0, i64 0
  %rtvec1163 = bitcast %union.rtunion_def* %arrayidx1162 to %struct.rtvec_def**
  %635 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1163, align 8
  %elem1164 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %635, i32 0, i32 1
  %arrayidx1165 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1164, i32 0, i64 0
  %636 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1165, align 8
  %fld1166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %636, i32 0, i32 1
  %arrayidx1167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1166, i32 0, i64 0
  %rtvec1168 = bitcast %union.rtunion_def* %arrayidx1167 to %struct.rtvec_def**
  %637 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1168, align 8
  %elem1169 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %637, i32 0, i32 1
  %arrayidx1170 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1169, i32 0, i64 0
  %638 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1171 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %638, i64 0
  store %struct.rtx_def** %arrayidx1170, %struct.rtx_def*** %arrayidx1171, align 8
  %639 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1170, align 8
  %640 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1172 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %640, i64 0
  store %struct.rtx_def* %639, %struct.rtx_def** %arrayidx1172, align 8
  %641 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %641, i32 0, i32 1
  %arrayidx1174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1173, i32 0, i64 0
  %rtvec1175 = bitcast %union.rtunion_def* %arrayidx1174 to %struct.rtvec_def**
  %642 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1175, align 8
  %elem1176 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %642, i32 0, i32 1
  %arrayidx1177 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1176, i32 0, i64 2
  %643 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1177, align 8
  %fld1178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %643, i32 0, i32 1
  %arrayidx1179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1178, i32 0, i64 0
  %rtx1180 = bitcast %union.rtunion_def* %arrayidx1179 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1180, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %644 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %644, i32 0, i32 1
  %arrayidx1182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1181, i32 0, i64 0
  %rtvec1183 = bitcast %union.rtunion_def* %arrayidx1182 to %struct.rtvec_def**
  %645 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1183, align 8
  %elem1184 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %645, i32 0, i32 1
  %arrayidx1185 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1184, i32 0, i64 1
  %646 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1185, align 8
  %fld1186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %646, i32 0, i32 1
  %arrayidx1187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1186, i32 0, i64 1
  %rtx1188 = bitcast %union.rtunion_def* %arrayidx1187 to %struct.rtx_def**
  %647 = load %struct.rtx_def*, %struct.rtx_def** %rtx1188, align 8
  %fld1189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %647, i32 0, i32 1
  %arrayidx1190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1189, i32 0, i64 1
  %rtx1191 = bitcast %union.rtunion_def* %arrayidx1190 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1191, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.1192:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %648 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %648, i32 0, i32 1
  %arrayidx1194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1193, i32 0, i64 0
  %rtx1195 = bitcast %union.rtunion_def* %arrayidx1194 to %struct.rtx_def**
  %649 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1196 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %649, i64 0
  store %struct.rtx_def** %rtx1195, %struct.rtx_def*** %arrayidx1196, align 8
  %650 = load %struct.rtx_def*, %struct.rtx_def** %rtx1195, align 8
  %651 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1197 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %651, i64 0
  store %struct.rtx_def* %650, %struct.rtx_def** %arrayidx1197, align 8
  %652 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %652, i32 0, i32 1
  %arrayidx1199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1198, i32 0, i64 1
  %rtx1200 = bitcast %union.rtunion_def* %arrayidx1199 to %struct.rtx_def**
  %653 = load %struct.rtx_def*, %struct.rtx_def** %rtx1200, align 8
  %fld1201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %653, i32 0, i32 1
  %arrayidx1202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1201, i32 0, i64 0
  %rtx1203 = bitcast %union.rtunion_def* %arrayidx1202 to %struct.rtx_def**
  %654 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1204 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %654, i64 1
  store %struct.rtx_def** %rtx1203, %struct.rtx_def*** %arrayidx1204, align 8
  %655 = load %struct.rtx_def*, %struct.rtx_def** %rtx1203, align 8
  %656 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1205 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %656, i64 1
  store %struct.rtx_def* %655, %struct.rtx_def** %arrayidx1205, align 8
  %657 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %657, i32 0, i32 1
  %arrayidx1207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1206, i32 0, i64 1
  %rtx1208 = bitcast %union.rtunion_def* %arrayidx1207 to %struct.rtx_def**
  %658 = load %struct.rtx_def*, %struct.rtx_def** %rtx1208, align 8
  %fld1209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %658, i32 0, i32 1
  %arrayidx1210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1209, i32 0, i64 1
  %rtx1211 = bitcast %union.rtunion_def* %arrayidx1210 to %struct.rtx_def**
  %659 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1212 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %659, i64 2
  store %struct.rtx_def** %rtx1211, %struct.rtx_def*** %arrayidx1212, align 8
  %660 = load %struct.rtx_def*, %struct.rtx_def** %rtx1211, align 8
  %661 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1213 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %661, i64 2
  store %struct.rtx_def* %660, %struct.rtx_def** %arrayidx1213, align 8
  %662 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %662, i32 0, i32 1
  %arrayidx1215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1214, i32 0, i64 1
  %rtx1216 = bitcast %union.rtunion_def* %arrayidx1215 to %struct.rtx_def**
  %663 = load %struct.rtx_def*, %struct.rtx_def** %rtx1216, align 8
  %fld1217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %663, i32 0, i32 1
  %arrayidx1218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1217, i32 0, i64 2
  %rtx1219 = bitcast %union.rtunion_def* %arrayidx1218 to %struct.rtx_def**
  %664 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1220 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %664, i64 3
  store %struct.rtx_def** %rtx1219, %struct.rtx_def*** %arrayidx1220, align 8
  %665 = load %struct.rtx_def*, %struct.rtx_def** %rtx1219, align 8
  %666 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1221 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %666, i64 3
  store %struct.rtx_def* %665, %struct.rtx_def** %arrayidx1221, align 8
  %667 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %667, i32 0, i32 1
  %arrayidx1223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1222, i32 0, i64 1
  %rtx1224 = bitcast %union.rtunion_def* %arrayidx1223 to %struct.rtx_def**
  %668 = load %struct.rtx_def*, %struct.rtx_def** %rtx1224, align 8
  %fld1225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %668, i32 0, i32 1
  %arrayidx1226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1225, i32 0, i64 0
  %rtx1227 = bitcast %union.rtunion_def* %arrayidx1226 to %struct.rtx_def**
  %669 = load %struct.rtx_def*, %struct.rtx_def** %rtx1227, align 8
  %fld1228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %669, i32 0, i32 1
  %arrayidx1229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1228, i32 0, i64 0
  %rtx1230 = bitcast %union.rtunion_def* %arrayidx1229 to %struct.rtx_def**
  %670 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1231 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %670, i64 4
  store %struct.rtx_def** %rtx1230, %struct.rtx_def*** %arrayidx1231, align 8
  %671 = load %struct.rtx_def*, %struct.rtx_def** %rtx1230, align 8
  %672 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1232 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %672, i64 4
  store %struct.rtx_def* %671, %struct.rtx_def** %arrayidx1232, align 8
  %673 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %673, i32 0, i32 1
  %arrayidx1234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1233, i32 0, i64 1
  %rtx1235 = bitcast %union.rtunion_def* %arrayidx1234 to %struct.rtx_def**
  %674 = load %struct.rtx_def*, %struct.rtx_def** %rtx1235, align 8
  %fld1236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %674, i32 0, i32 1
  %arrayidx1237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1236, i32 0, i64 0
  %rtx1238 = bitcast %union.rtunion_def* %arrayidx1237 to %struct.rtx_def**
  %675 = load %struct.rtx_def*, %struct.rtx_def** %rtx1238, align 8
  %fld1239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %675, i32 0, i32 1
  %arrayidx1240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1239, i32 0, i64 1
  %rtx1241 = bitcast %union.rtunion_def* %arrayidx1240 to %struct.rtx_def**
  %676 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1242 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %676, i64 5
  store %struct.rtx_def** %rtx1241, %struct.rtx_def*** %arrayidx1242, align 8
  %677 = load %struct.rtx_def*, %struct.rtx_def** %rtx1241, align 8
  %678 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1243 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %678, i64 5
  store %struct.rtx_def* %677, %struct.rtx_def** %arrayidx1243, align 8
  br label %sw.epilog

sw.bb.1244:                                       ; preds = %entry, %entry
  %679 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1245 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %679, i32 0, i32 1
  %arrayidx1246 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1245, i32 0, i64 0
  %rtvec1247 = bitcast %union.rtunion_def* %arrayidx1246 to %struct.rtvec_def**
  %680 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1247, align 8
  %elem1248 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %680, i32 0, i32 1
  %arrayidx1249 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1248, i32 0, i64 0
  %681 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1249, align 8
  %fld1250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %681, i32 0, i32 1
  %arrayidx1251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1250, i32 0, i64 0
  %rtx1252 = bitcast %union.rtunion_def* %arrayidx1251 to %struct.rtx_def**
  %682 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1253 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %682, i64 0
  store %struct.rtx_def** %rtx1252, %struct.rtx_def*** %arrayidx1253, align 8
  %683 = load %struct.rtx_def*, %struct.rtx_def** %rtx1252, align 8
  %684 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1254 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %684, i64 0
  store %struct.rtx_def* %683, %struct.rtx_def** %arrayidx1254, align 8
  %685 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %685, i32 0, i32 1
  %arrayidx1256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1255, i32 0, i64 0
  %rtvec1257 = bitcast %union.rtunion_def* %arrayidx1256 to %struct.rtvec_def**
  %686 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1257, align 8
  %elem1258 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %686, i32 0, i32 1
  %arrayidx1259 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1258, i32 0, i64 0
  %687 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1259, align 8
  %fld1260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %687, i32 0, i32 1
  %arrayidx1261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1260, i32 0, i64 1
  %rtx1262 = bitcast %union.rtunion_def* %arrayidx1261 to %struct.rtx_def**
  %688 = load %struct.rtx_def*, %struct.rtx_def** %rtx1262, align 8
  %fld1263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %688, i32 0, i32 1
  %arrayidx1264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1263, i32 0, i64 1
  %rtx1265 = bitcast %union.rtunion_def* %arrayidx1264 to %struct.rtx_def**
  %689 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1266 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %689, i64 1
  store %struct.rtx_def** %rtx1265, %struct.rtx_def*** %arrayidx1266, align 8
  %690 = load %struct.rtx_def*, %struct.rtx_def** %rtx1265, align 8
  %691 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1267 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %691, i64 1
  store %struct.rtx_def* %690, %struct.rtx_def** %arrayidx1267, align 8
  %692 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1268 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %692, i32 0, i32 1
  %arrayidx1269 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1268, i32 0, i64 0
  %rtvec1270 = bitcast %union.rtunion_def* %arrayidx1269 to %struct.rtvec_def**
  %693 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1270, align 8
  %elem1271 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %693, i32 0, i32 1
  %arrayidx1272 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1271, i32 0, i64 0
  %694 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1272, align 8
  %fld1273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %694, i32 0, i32 1
  %arrayidx1274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1273, i32 0, i64 1
  %rtx1275 = bitcast %union.rtunion_def* %arrayidx1274 to %struct.rtx_def**
  %695 = load %struct.rtx_def*, %struct.rtx_def** %rtx1275, align 8
  %fld1276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %695, i32 0, i32 1
  %arrayidx1277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1276, i32 0, i64 2
  %rtx1278 = bitcast %union.rtunion_def* %arrayidx1277 to %struct.rtx_def**
  %696 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1279 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %696, i64 2
  store %struct.rtx_def** %rtx1278, %struct.rtx_def*** %arrayidx1279, align 8
  %697 = load %struct.rtx_def*, %struct.rtx_def** %rtx1278, align 8
  %698 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1280 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %698, i64 2
  store %struct.rtx_def* %697, %struct.rtx_def** %arrayidx1280, align 8
  %699 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %699, i32 0, i32 1
  %arrayidx1282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1281, i32 0, i64 0
  %rtvec1283 = bitcast %union.rtunion_def* %arrayidx1282 to %struct.rtvec_def**
  %700 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1283, align 8
  %elem1284 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %700, i32 0, i32 1
  %arrayidx1285 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1284, i32 0, i64 0
  %701 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1285, align 8
  %fld1286 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %701, i32 0, i32 1
  %arrayidx1287 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1286, i32 0, i64 1
  %rtx1288 = bitcast %union.rtunion_def* %arrayidx1287 to %struct.rtx_def**
  %702 = load %struct.rtx_def*, %struct.rtx_def** %rtx1288, align 8
  %fld1289 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %702, i32 0, i32 1
  %arrayidx1290 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1289, i32 0, i64 0
  %rtx1291 = bitcast %union.rtunion_def* %arrayidx1290 to %struct.rtx_def**
  %703 = load %struct.rtx_def*, %struct.rtx_def** %rtx1291, align 8
  %fld1292 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %703, i32 0, i32 1
  %arrayidx1293 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1292, i32 0, i64 0
  %rtx1294 = bitcast %union.rtunion_def* %arrayidx1293 to %struct.rtx_def**
  %704 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1295 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %704, i64 3
  store %struct.rtx_def** %rtx1294, %struct.rtx_def*** %arrayidx1295, align 8
  %705 = load %struct.rtx_def*, %struct.rtx_def** %rtx1294, align 8
  %706 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1296 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %706, i64 3
  store %struct.rtx_def* %705, %struct.rtx_def** %arrayidx1296, align 8
  %707 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1297 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %707, i32 0, i32 1
  %arrayidx1298 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1297, i32 0, i64 0
  %rtvec1299 = bitcast %union.rtunion_def* %arrayidx1298 to %struct.rtvec_def**
  %708 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1299, align 8
  %elem1300 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %708, i32 0, i32 1
  %arrayidx1301 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1300, i32 0, i64 0
  %709 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1301, align 8
  %fld1302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %709, i32 0, i32 1
  %arrayidx1303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1302, i32 0, i64 1
  %rtx1304 = bitcast %union.rtunion_def* %arrayidx1303 to %struct.rtx_def**
  %710 = load %struct.rtx_def*, %struct.rtx_def** %rtx1304, align 8
  %fld1305 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %710, i32 0, i32 1
  %arrayidx1306 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1305, i32 0, i64 0
  %rtx1307 = bitcast %union.rtunion_def* %arrayidx1306 to %struct.rtx_def**
  %711 = load %struct.rtx_def*, %struct.rtx_def** %rtx1307, align 8
  %fld1308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %711, i32 0, i32 1
  %arrayidx1309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1308, i32 0, i64 1
  %rtx1310 = bitcast %union.rtunion_def* %arrayidx1309 to %struct.rtx_def**
  %712 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1311 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %712, i64 4
  store %struct.rtx_def** %rtx1310, %struct.rtx_def*** %arrayidx1311, align 8
  %713 = load %struct.rtx_def*, %struct.rtx_def** %rtx1310, align 8
  %714 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1312 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %714, i64 4
  store %struct.rtx_def* %713, %struct.rtx_def** %arrayidx1312, align 8
  %715 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %715, i32 0, i32 1
  %arrayidx1314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1313, i32 0, i64 0
  %rtvec1315 = bitcast %union.rtunion_def* %arrayidx1314 to %struct.rtvec_def**
  %716 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1315, align 8
  %elem1316 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %716, i32 0, i32 1
  %arrayidx1317 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1316, i32 0, i64 1
  %717 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1317, align 8
  %fld1318 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %717, i32 0, i32 1
  %arrayidx1319 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1318, i32 0, i64 0
  %rtx1320 = bitcast %union.rtunion_def* %arrayidx1319 to %struct.rtx_def**
  %718 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1321 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %718, i64 5
  store %struct.rtx_def** %rtx1320, %struct.rtx_def*** %arrayidx1321, align 8
  %719 = load %struct.rtx_def*, %struct.rtx_def** %rtx1320, align 8
  %720 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1322 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %720, i64 5
  store %struct.rtx_def* %719, %struct.rtx_def** %arrayidx1322, align 8
  br label %sw.epilog

sw.bb.1323:                                       ; preds = %entry, %entry
  %721 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1324 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %721, i32 0, i32 1
  %arrayidx1325 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1324, i32 0, i64 0
  %rtvec1326 = bitcast %union.rtunion_def* %arrayidx1325 to %struct.rtvec_def**
  %722 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1326, align 8
  %elem1327 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %722, i32 0, i32 1
  %arrayidx1328 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1327, i32 0, i64 0
  %723 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1328, align 8
  %fld1329 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %723, i32 0, i32 1
  %arrayidx1330 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1329, i32 0, i64 0
  %rtx1331 = bitcast %union.rtunion_def* %arrayidx1330 to %struct.rtx_def**
  %724 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1332 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %724, i64 0
  store %struct.rtx_def** %rtx1331, %struct.rtx_def*** %arrayidx1332, align 8
  %725 = load %struct.rtx_def*, %struct.rtx_def** %rtx1331, align 8
  %726 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1333 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %726, i64 0
  store %struct.rtx_def* %725, %struct.rtx_def** %arrayidx1333, align 8
  %727 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1334 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %727, i32 0, i32 1
  %arrayidx1335 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1334, i32 0, i64 0
  %rtvec1336 = bitcast %union.rtunion_def* %arrayidx1335 to %struct.rtvec_def**
  %728 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1336, align 8
  %elem1337 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %728, i32 0, i32 1
  %arrayidx1338 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1337, i32 0, i64 0
  %729 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1338, align 8
  %fld1339 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %729, i32 0, i32 1
  %arrayidx1340 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1339, i32 0, i64 1
  %rtx1341 = bitcast %union.rtunion_def* %arrayidx1340 to %struct.rtx_def**
  %730 = load %struct.rtx_def*, %struct.rtx_def** %rtx1341, align 8
  %fld1342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %730, i32 0, i32 1
  %arrayidx1343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1342, i32 0, i64 0
  %rtx1344 = bitcast %union.rtunion_def* %arrayidx1343 to %struct.rtx_def**
  %731 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1345 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %731, i64 1
  store %struct.rtx_def** %rtx1344, %struct.rtx_def*** %arrayidx1345, align 8
  %732 = load %struct.rtx_def*, %struct.rtx_def** %rtx1344, align 8
  %733 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1346 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %733, i64 1
  store %struct.rtx_def* %732, %struct.rtx_def** %arrayidx1346, align 8
  %734 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %734, i32 0, i32 1
  %arrayidx1348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1347, i32 0, i64 0
  %rtvec1349 = bitcast %union.rtunion_def* %arrayidx1348 to %struct.rtvec_def**
  %735 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1349, align 8
  %elem1350 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %735, i32 0, i32 1
  %arrayidx1351 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1350, i32 0, i64 0
  %736 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1351, align 8
  %fld1352 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %736, i32 0, i32 1
  %arrayidx1353 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1352, i32 0, i64 1
  %rtx1354 = bitcast %union.rtunion_def* %arrayidx1353 to %struct.rtx_def**
  %737 = load %struct.rtx_def*, %struct.rtx_def** %rtx1354, align 8
  %fld1355 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %737, i32 0, i32 1
  %arrayidx1356 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1355, i32 0, i64 1
  %rtx1357 = bitcast %union.rtunion_def* %arrayidx1356 to %struct.rtx_def**
  %738 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1358 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %738, i64 2
  store %struct.rtx_def** %rtx1357, %struct.rtx_def*** %arrayidx1358, align 8
  %739 = load %struct.rtx_def*, %struct.rtx_def** %rtx1357, align 8
  %740 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1359 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %740, i64 2
  store %struct.rtx_def* %739, %struct.rtx_def** %arrayidx1359, align 8
  %741 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %741, i32 0, i32 1
  %arrayidx1361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1360, i32 0, i64 0
  %rtvec1362 = bitcast %union.rtunion_def* %arrayidx1361 to %struct.rtvec_def**
  %742 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1362, align 8
  %elem1363 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %742, i32 0, i32 1
  %arrayidx1364 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1363, i32 0, i64 0
  %743 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1364, align 8
  %fld1365 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %743, i32 0, i32 1
  %arrayidx1366 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1365, i32 0, i64 1
  %rtx1367 = bitcast %union.rtunion_def* %arrayidx1366 to %struct.rtx_def**
  %744 = load %struct.rtx_def*, %struct.rtx_def** %rtx1367, align 8
  %fld1368 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %744, i32 0, i32 1
  %arrayidx1369 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1368, i32 0, i64 2
  %rtx1370 = bitcast %union.rtunion_def* %arrayidx1369 to %struct.rtx_def**
  %745 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1371 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %745, i64 3
  store %struct.rtx_def** %rtx1370, %struct.rtx_def*** %arrayidx1371, align 8
  %746 = load %struct.rtx_def*, %struct.rtx_def** %rtx1370, align 8
  %747 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1372 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %747, i64 3
  store %struct.rtx_def* %746, %struct.rtx_def** %arrayidx1372, align 8
  %748 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %748, i32 0, i32 1
  %arrayidx1374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1373, i32 0, i64 0
  %rtvec1375 = bitcast %union.rtunion_def* %arrayidx1374 to %struct.rtvec_def**
  %749 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1375, align 8
  %elem1376 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %749, i32 0, i32 1
  %arrayidx1377 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1376, i32 0, i64 0
  %750 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1377, align 8
  %fld1378 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %750, i32 0, i32 1
  %arrayidx1379 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1378, i32 0, i64 1
  %rtx1380 = bitcast %union.rtunion_def* %arrayidx1379 to %struct.rtx_def**
  %751 = load %struct.rtx_def*, %struct.rtx_def** %rtx1380, align 8
  %fld1381 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %751, i32 0, i32 1
  %arrayidx1382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1381, i32 0, i64 0
  %rtx1383 = bitcast %union.rtunion_def* %arrayidx1382 to %struct.rtx_def**
  %752 = load %struct.rtx_def*, %struct.rtx_def** %rtx1383, align 8
  %fld1384 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %752, i32 0, i32 1
  %arrayidx1385 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1384, i32 0, i64 0
  %rtx1386 = bitcast %union.rtunion_def* %arrayidx1385 to %struct.rtx_def**
  %753 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1387 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %753, i64 4
  store %struct.rtx_def** %rtx1386, %struct.rtx_def*** %arrayidx1387, align 8
  %754 = load %struct.rtx_def*, %struct.rtx_def** %rtx1386, align 8
  %755 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1388 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %755, i64 4
  store %struct.rtx_def* %754, %struct.rtx_def** %arrayidx1388, align 8
  %756 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1389 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %756, i32 0, i32 1
  %arrayidx1390 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1389, i32 0, i64 0
  %rtvec1391 = bitcast %union.rtunion_def* %arrayidx1390 to %struct.rtvec_def**
  %757 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1391, align 8
  %elem1392 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %757, i32 0, i32 1
  %arrayidx1393 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1392, i32 0, i64 0
  %758 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1393, align 8
  %fld1394 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %758, i32 0, i32 1
  %arrayidx1395 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1394, i32 0, i64 1
  %rtx1396 = bitcast %union.rtunion_def* %arrayidx1395 to %struct.rtx_def**
  %759 = load %struct.rtx_def*, %struct.rtx_def** %rtx1396, align 8
  %fld1397 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %759, i32 0, i32 1
  %arrayidx1398 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1397, i32 0, i64 0
  %rtx1399 = bitcast %union.rtunion_def* %arrayidx1398 to %struct.rtx_def**
  %760 = load %struct.rtx_def*, %struct.rtx_def** %rtx1399, align 8
  %fld1400 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %760, i32 0, i32 1
  %arrayidx1401 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1400, i32 0, i64 1
  %rtx1402 = bitcast %union.rtunion_def* %arrayidx1401 to %struct.rtx_def**
  %761 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1403 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %761, i64 5
  store %struct.rtx_def** %rtx1402, %struct.rtx_def*** %arrayidx1403, align 8
  %762 = load %struct.rtx_def*, %struct.rtx_def** %rtx1402, align 8
  %763 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1404 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %763, i64 5
  store %struct.rtx_def* %762, %struct.rtx_def** %arrayidx1404, align 8
  %764 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1405 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %764, i32 0, i32 1
  %arrayidx1406 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1405, i32 0, i64 0
  %rtvec1407 = bitcast %union.rtunion_def* %arrayidx1406 to %struct.rtvec_def**
  %765 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1407, align 8
  %elem1408 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %765, i32 0, i32 1
  %arrayidx1409 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1408, i32 0, i64 1
  %766 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1409, align 8
  %fld1410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %766, i32 0, i32 1
  %arrayidx1411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1410, i32 0, i64 0
  %rtx1412 = bitcast %union.rtunion_def* %arrayidx1411 to %struct.rtx_def**
  %767 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1413 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %767, i64 6
  store %struct.rtx_def** %rtx1412, %struct.rtx_def*** %arrayidx1413, align 8
  %768 = load %struct.rtx_def*, %struct.rtx_def** %rtx1412, align 8
  %769 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1414 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %769, i64 6
  store %struct.rtx_def* %768, %struct.rtx_def** %arrayidx1414, align 8
  br label %sw.epilog

sw.bb.1415:                                       ; preds = %entry, %entry, %entry, %entry
  %770 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1416 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %770, i32 0, i32 1
  %arrayidx1417 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1416, i32 0, i64 0
  %rtx1418 = bitcast %union.rtunion_def* %arrayidx1417 to %struct.rtx_def**
  %771 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1419 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %771, i64 0
  store %struct.rtx_def** %rtx1418, %struct.rtx_def*** %arrayidx1419, align 8
  %772 = load %struct.rtx_def*, %struct.rtx_def** %rtx1418, align 8
  %773 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1420 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %773, i64 0
  store %struct.rtx_def* %772, %struct.rtx_def** %arrayidx1420, align 8
  %774 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1421 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %774, i32 0, i32 1
  %arrayidx1422 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1421, i32 0, i64 1
  %rtx1423 = bitcast %union.rtunion_def* %arrayidx1422 to %struct.rtx_def**
  %775 = load %struct.rtx_def*, %struct.rtx_def** %rtx1423, align 8
  %fld1424 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %775, i32 0, i32 1
  %arrayidx1425 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1424, i32 0, i64 0
  %rtx1426 = bitcast %union.rtunion_def* %arrayidx1425 to %struct.rtx_def**
  %776 = load %struct.rtx_def*, %struct.rtx_def** %rtx1426, align 8
  %fld1427 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %776, i32 0, i32 1
  %arrayidx1428 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1427, i32 0, i64 0
  %rtx1429 = bitcast %union.rtunion_def* %arrayidx1428 to %struct.rtx_def**
  %777 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1430 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %777, i64 1
  store %struct.rtx_def** %rtx1429, %struct.rtx_def*** %arrayidx1430, align 8
  %778 = load %struct.rtx_def*, %struct.rtx_def** %rtx1429, align 8
  %779 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1431 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %779, i64 1
  store %struct.rtx_def* %778, %struct.rtx_def** %arrayidx1431, align 8
  %780 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1432 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %780, i32 0, i32 1
  %arrayidx1433 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1432, i32 0, i64 1
  %rtx1434 = bitcast %union.rtunion_def* %arrayidx1433 to %struct.rtx_def**
  %781 = load %struct.rtx_def*, %struct.rtx_def** %rtx1434, align 8
  %fld1435 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %781, i32 0, i32 1
  %arrayidx1436 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1435, i32 0, i64 0
  %rtx1437 = bitcast %union.rtunion_def* %arrayidx1436 to %struct.rtx_def**
  %782 = load %struct.rtx_def*, %struct.rtx_def** %rtx1437, align 8
  %fld1438 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %782, i32 0, i32 1
  %arrayidx1439 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1438, i32 0, i64 1
  %rtx1440 = bitcast %union.rtunion_def* %arrayidx1439 to %struct.rtx_def**
  %783 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1441 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %783, i64 2
  store %struct.rtx_def** %rtx1440, %struct.rtx_def*** %arrayidx1441, align 8
  %784 = load %struct.rtx_def*, %struct.rtx_def** %rtx1440, align 8
  %785 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1442 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %785, i64 2
  store %struct.rtx_def* %784, %struct.rtx_def** %arrayidx1442, align 8
  %786 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1443 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %786, i32 0, i32 1
  %arrayidx1444 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1443, i32 0, i64 1
  %rtx1445 = bitcast %union.rtunion_def* %arrayidx1444 to %struct.rtx_def**
  %787 = load %struct.rtx_def*, %struct.rtx_def** %rtx1445, align 8
  %fld1446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %787, i32 0, i32 1
  %arrayidx1447 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1446, i32 0, i64 1
  %rtx1448 = bitcast %union.rtunion_def* %arrayidx1447 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1448, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %788 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %788, i32 0, i32 1
  %arrayidx1450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1449, i32 0, i64 1
  %rtx1451 = bitcast %union.rtunion_def* %arrayidx1450 to %struct.rtx_def**
  %789 = load %struct.rtx_def*, %struct.rtx_def** %rtx1451, align 8
  %fld1452 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %789, i32 0, i32 1
  %arrayidx1453 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1452, i32 0, i64 2
  %rtx1454 = bitcast %union.rtunion_def* %arrayidx1453 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1454, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.1455:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %790 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1456 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %790, i32 0, i32 1
  %arrayidx1457 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1456, i32 0, i64 0
  %rtvec1458 = bitcast %union.rtunion_def* %arrayidx1457 to %struct.rtvec_def**
  %791 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1458, align 8
  %elem1459 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %791, i32 0, i32 1
  %arrayidx1460 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1459, i32 0, i64 0
  %792 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1460, align 8
  %fld1461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %792, i32 0, i32 1
  %arrayidx1462 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1461, i32 0, i64 0
  %rtx1463 = bitcast %union.rtunion_def* %arrayidx1462 to %struct.rtx_def**
  %793 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1464 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %793, i64 0
  store %struct.rtx_def** %rtx1463, %struct.rtx_def*** %arrayidx1464, align 8
  %794 = load %struct.rtx_def*, %struct.rtx_def** %rtx1463, align 8
  %795 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1465 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %795, i64 0
  store %struct.rtx_def* %794, %struct.rtx_def** %arrayidx1465, align 8
  %796 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %796, i32 0, i32 1
  %arrayidx1467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1466, i32 0, i64 0
  %rtvec1468 = bitcast %union.rtunion_def* %arrayidx1467 to %struct.rtvec_def**
  %797 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1468, align 8
  %elem1469 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %797, i32 0, i32 1
  %arrayidx1470 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1469, i32 0, i64 0
  %798 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1470, align 8
  %fld1471 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %798, i32 0, i32 1
  %arrayidx1472 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1471, i32 0, i64 1
  %rtx1473 = bitcast %union.rtunion_def* %arrayidx1472 to %struct.rtx_def**
  %799 = load %struct.rtx_def*, %struct.rtx_def** %rtx1473, align 8
  %fld1474 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %799, i32 0, i32 1
  %arrayidx1475 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1474, i32 0, i64 0
  %rtx1476 = bitcast %union.rtunion_def* %arrayidx1475 to %struct.rtx_def**
  %800 = load %struct.rtx_def*, %struct.rtx_def** %rtx1476, align 8
  %fld1477 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %800, i32 0, i32 1
  %arrayidx1478 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1477, i32 0, i64 0
  %rtx1479 = bitcast %union.rtunion_def* %arrayidx1478 to %struct.rtx_def**
  %801 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1480 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %801, i64 1
  store %struct.rtx_def** %rtx1479, %struct.rtx_def*** %arrayidx1480, align 8
  %802 = load %struct.rtx_def*, %struct.rtx_def** %rtx1479, align 8
  %803 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1481 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %803, i64 1
  store %struct.rtx_def* %802, %struct.rtx_def** %arrayidx1481, align 8
  %804 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1482 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %804, i32 0, i32 1
  %arrayidx1483 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1482, i32 0, i64 0
  %rtvec1484 = bitcast %union.rtunion_def* %arrayidx1483 to %struct.rtvec_def**
  %805 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1484, align 8
  %elem1485 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %805, i32 0, i32 1
  %arrayidx1486 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1485, i32 0, i64 0
  %806 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1486, align 8
  %fld1487 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %806, i32 0, i32 1
  %arrayidx1488 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1487, i32 0, i64 1
  %rtx1489 = bitcast %union.rtunion_def* %arrayidx1488 to %struct.rtx_def**
  %807 = load %struct.rtx_def*, %struct.rtx_def** %rtx1489, align 8
  %fld1490 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %807, i32 0, i32 1
  %arrayidx1491 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1490, i32 0, i64 0
  %rtx1492 = bitcast %union.rtunion_def* %arrayidx1491 to %struct.rtx_def**
  %808 = load %struct.rtx_def*, %struct.rtx_def** %rtx1492, align 8
  %fld1493 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %808, i32 0, i32 1
  %arrayidx1494 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1493, i32 0, i64 1
  %rtx1495 = bitcast %union.rtunion_def* %arrayidx1494 to %struct.rtx_def**
  %809 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1496 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %809, i64 2
  store %struct.rtx_def** %rtx1495, %struct.rtx_def*** %arrayidx1496, align 8
  %810 = load %struct.rtx_def*, %struct.rtx_def** %rtx1495, align 8
  %811 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1497 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %811, i64 2
  store %struct.rtx_def* %810, %struct.rtx_def** %arrayidx1497, align 8
  %812 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %812, i32 0, i32 1
  %arrayidx1499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1498, i32 0, i64 0
  %rtvec1500 = bitcast %union.rtunion_def* %arrayidx1499 to %struct.rtvec_def**
  %813 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1500, align 8
  %elem1501 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %813, i32 0, i32 1
  %arrayidx1502 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1501, i32 0, i64 0
  %814 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1502, align 8
  %fld1503 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %814, i32 0, i32 1
  %arrayidx1504 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1503, i32 0, i64 1
  %rtx1505 = bitcast %union.rtunion_def* %arrayidx1504 to %struct.rtx_def**
  %815 = load %struct.rtx_def*, %struct.rtx_def** %rtx1505, align 8
  %fld1506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %815, i32 0, i32 1
  %arrayidx1507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1506, i32 0, i64 1
  %rtx1508 = bitcast %union.rtunion_def* %arrayidx1507 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1508, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %816 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1509 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %816, i32 0, i32 1
  %arrayidx1510 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1509, i32 0, i64 0
  %rtvec1511 = bitcast %union.rtunion_def* %arrayidx1510 to %struct.rtvec_def**
  %817 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1511, align 8
  %elem1512 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %817, i32 0, i32 1
  %arrayidx1513 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1512, i32 0, i64 0
  %818 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1513, align 8
  %fld1514 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %818, i32 0, i32 1
  %arrayidx1515 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1514, i32 0, i64 1
  %rtx1516 = bitcast %union.rtunion_def* %arrayidx1515 to %struct.rtx_def**
  %819 = load %struct.rtx_def*, %struct.rtx_def** %rtx1516, align 8
  %fld1517 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %819, i32 0, i32 1
  %arrayidx1518 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1517, i32 0, i64 2
  %rtx1519 = bitcast %union.rtunion_def* %arrayidx1518 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1519, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.1520:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %820 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1521 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %820, i32 0, i32 1
  %arrayidx1522 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1521, i32 0, i64 0
  %rtx1523 = bitcast %union.rtunion_def* %arrayidx1522 to %struct.rtx_def**
  %821 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1524 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %821, i64 0
  store %struct.rtx_def** %rtx1523, %struct.rtx_def*** %arrayidx1524, align 8
  %822 = load %struct.rtx_def*, %struct.rtx_def** %rtx1523, align 8
  %823 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1525 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %823, i64 0
  store %struct.rtx_def* %822, %struct.rtx_def** %arrayidx1525, align 8
  %824 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1526 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %824, i32 0, i32 1
  %arrayidx1527 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1526, i32 0, i64 1
  %rtx1528 = bitcast %union.rtunion_def* %arrayidx1527 to %struct.rtx_def**
  %825 = load %struct.rtx_def*, %struct.rtx_def** %rtx1528, align 8
  %fld1529 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %825, i32 0, i32 1
  %arrayidx1530 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1529, i32 0, i64 0
  %rtx1531 = bitcast %union.rtunion_def* %arrayidx1530 to %struct.rtx_def**
  %826 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1532 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %826, i64 1
  store %struct.rtx_def** %rtx1531, %struct.rtx_def*** %arrayidx1532, align 8
  %827 = load %struct.rtx_def*, %struct.rtx_def** %rtx1531, align 8
  %828 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1533 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %828, i64 1
  store %struct.rtx_def* %827, %struct.rtx_def** %arrayidx1533, align 8
  %829 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1534 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %829, i32 0, i32 1
  %arrayidx1535 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1534, i32 0, i64 1
  %rtx1536 = bitcast %union.rtunion_def* %arrayidx1535 to %struct.rtx_def**
  %830 = load %struct.rtx_def*, %struct.rtx_def** %rtx1536, align 8
  %fld1537 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %830, i32 0, i32 1
  %arrayidx1538 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1537, i32 0, i64 1
  %rtx1539 = bitcast %union.rtunion_def* %arrayidx1538 to %struct.rtx_def**
  %831 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1540 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %831, i64 2
  store %struct.rtx_def** %rtx1539, %struct.rtx_def*** %arrayidx1540, align 8
  %832 = load %struct.rtx_def*, %struct.rtx_def** %rtx1539, align 8
  %833 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1541 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %833, i64 2
  store %struct.rtx_def* %832, %struct.rtx_def** %arrayidx1541, align 8
  %834 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1542 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %834, i32 0, i32 1
  %arrayidx1543 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1542, i32 0, i64 1
  %rtx1544 = bitcast %union.rtunion_def* %arrayidx1543 to %struct.rtx_def**
  %835 = load %struct.rtx_def*, %struct.rtx_def** %rtx1544, align 8
  %fld1545 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %835, i32 0, i32 1
  %arrayidx1546 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1545, i32 0, i64 2
  %rtx1547 = bitcast %union.rtunion_def* %arrayidx1546 to %struct.rtx_def**
  %836 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1548 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %836, i64 3
  store %struct.rtx_def** %rtx1547, %struct.rtx_def*** %arrayidx1548, align 8
  %837 = load %struct.rtx_def*, %struct.rtx_def** %rtx1547, align 8
  %838 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1549 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %838, i64 3
  store %struct.rtx_def* %837, %struct.rtx_def** %arrayidx1549, align 8
  br label %sw.epilog

sw.bb.1550:                                       ; preds = %entry, %entry
  %839 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %839, i32 0, i32 1
  %arrayidx1552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1551, i32 0, i64 0
  %rtvec1553 = bitcast %union.rtunion_def* %arrayidx1552 to %struct.rtvec_def**
  %840 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1553, align 8
  %elem1554 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %840, i32 0, i32 1
  %arrayidx1555 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1554, i32 0, i64 0
  %841 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1555, align 8
  %fld1556 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %841, i32 0, i32 1
  %arrayidx1557 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1556, i32 0, i64 0
  %rtx1558 = bitcast %union.rtunion_def* %arrayidx1557 to %struct.rtx_def**
  %842 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1559 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %842, i64 0
  store %struct.rtx_def** %rtx1558, %struct.rtx_def*** %arrayidx1559, align 8
  %843 = load %struct.rtx_def*, %struct.rtx_def** %rtx1558, align 8
  %844 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1560 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %844, i64 0
  store %struct.rtx_def* %843, %struct.rtx_def** %arrayidx1560, align 8
  %845 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1561 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %845, i32 0, i32 1
  %arrayidx1562 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1561, i32 0, i64 0
  %rtvec1563 = bitcast %union.rtunion_def* %arrayidx1562 to %struct.rtvec_def**
  %846 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1563, align 8
  %elem1564 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %846, i32 0, i32 1
  %arrayidx1565 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1564, i32 0, i64 2
  %847 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1565, align 8
  %fld1566 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %847, i32 0, i32 1
  %arrayidx1567 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1566, i32 0, i64 0
  %rtx1568 = bitcast %union.rtunion_def* %arrayidx1567 to %struct.rtx_def**
  %848 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1569 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %848, i64 1
  store %struct.rtx_def** %rtx1568, %struct.rtx_def*** %arrayidx1569, align 8
  %849 = load %struct.rtx_def*, %struct.rtx_def** %rtx1568, align 8
  %850 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1570 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %850, i64 1
  store %struct.rtx_def* %849, %struct.rtx_def** %arrayidx1570, align 8
  %851 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1571 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %851, i32 0, i32 1
  %arrayidx1572 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1571, i32 0, i64 0
  %rtvec1573 = bitcast %union.rtunion_def* %arrayidx1572 to %struct.rtvec_def**
  %852 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1573, align 8
  %elem1574 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %852, i32 0, i32 1
  %arrayidx1575 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1574, i32 0, i64 0
  %853 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1575, align 8
  %fld1576 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %853, i32 0, i32 1
  %arrayidx1577 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1576, i32 0, i64 1
  %rtx1578 = bitcast %union.rtunion_def* %arrayidx1577 to %struct.rtx_def**
  %854 = load %struct.rtx_def*, %struct.rtx_def** %rtx1578, align 8
  %fld1579 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %854, i32 0, i32 1
  %arrayidx1580 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1579, i32 0, i64 0
  %rtvec1581 = bitcast %union.rtunion_def* %arrayidx1580 to %struct.rtvec_def**
  %855 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1581, align 8
  %elem1582 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %855, i32 0, i32 1
  %arrayidx1583 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1582, i32 0, i64 1
  %856 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1584 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %856, i64 2
  store %struct.rtx_def** %arrayidx1583, %struct.rtx_def*** %arrayidx1584, align 8
  %857 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1583, align 8
  %858 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1585 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %858, i64 2
  store %struct.rtx_def* %857, %struct.rtx_def** %arrayidx1585, align 8
  %859 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1586 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %859, i32 0, i32 1
  %arrayidx1587 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1586, i32 0, i64 0
  %rtvec1588 = bitcast %union.rtunion_def* %arrayidx1587 to %struct.rtvec_def**
  %860 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1588, align 8
  %elem1589 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %860, i32 0, i32 1
  %arrayidx1590 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1589, i32 0, i64 0
  %861 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1590, align 8
  %fld1591 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %861, i32 0, i32 1
  %arrayidx1592 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1591, i32 0, i64 1
  %rtx1593 = bitcast %union.rtunion_def* %arrayidx1592 to %struct.rtx_def**
  %862 = load %struct.rtx_def*, %struct.rtx_def** %rtx1593, align 8
  %fld1594 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %862, i32 0, i32 1
  %arrayidx1595 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1594, i32 0, i64 0
  %rtvec1596 = bitcast %union.rtunion_def* %arrayidx1595 to %struct.rtvec_def**
  %863 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1596, align 8
  %elem1597 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %863, i32 0, i32 1
  %arrayidx1598 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1597, i32 0, i64 2
  %864 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1599 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %864, i64 3
  store %struct.rtx_def** %arrayidx1598, %struct.rtx_def*** %arrayidx1599, align 8
  %865 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1598, align 8
  %866 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1600 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %866, i64 3
  store %struct.rtx_def* %865, %struct.rtx_def** %arrayidx1600, align 8
  %867 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1601 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %867, i32 0, i32 1
  %arrayidx1602 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1601, i32 0, i64 0
  %rtvec1603 = bitcast %union.rtunion_def* %arrayidx1602 to %struct.rtvec_def**
  %868 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1603, align 8
  %elem1604 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %868, i32 0, i32 1
  %arrayidx1605 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1604, i32 0, i64 0
  %869 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1605, align 8
  %fld1606 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %869, i32 0, i32 1
  %arrayidx1607 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1606, i32 0, i64 1
  %rtx1608 = bitcast %union.rtunion_def* %arrayidx1607 to %struct.rtx_def**
  %870 = load %struct.rtx_def*, %struct.rtx_def** %rtx1608, align 8
  %fld1609 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %870, i32 0, i32 1
  %arrayidx1610 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1609, i32 0, i64 0
  %rtvec1611 = bitcast %union.rtunion_def* %arrayidx1610 to %struct.rtvec_def**
  %871 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1611, align 8
  %elem1612 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %871, i32 0, i32 1
  %arrayidx1613 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1612, i32 0, i64 3
  %872 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1614 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %872, i64 4
  store %struct.rtx_def** %arrayidx1613, %struct.rtx_def*** %arrayidx1614, align 8
  %873 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1613, align 8
  %874 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1615 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %874, i64 4
  store %struct.rtx_def* %873, %struct.rtx_def** %arrayidx1615, align 8
  %875 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1616 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %875, i32 0, i32 1
  %arrayidx1617 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1616, i32 0, i64 0
  %rtvec1618 = bitcast %union.rtunion_def* %arrayidx1617 to %struct.rtvec_def**
  %876 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1618, align 8
  %elem1619 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %876, i32 0, i32 1
  %arrayidx1620 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1619, i32 0, i64 0
  %877 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1620, align 8
  %fld1621 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %877, i32 0, i32 1
  %arrayidx1622 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1621, i32 0, i64 1
  %rtx1623 = bitcast %union.rtunion_def* %arrayidx1622 to %struct.rtx_def**
  %878 = load %struct.rtx_def*, %struct.rtx_def** %rtx1623, align 8
  %fld1624 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %878, i32 0, i32 1
  %arrayidx1625 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1624, i32 0, i64 0
  %rtvec1626 = bitcast %union.rtunion_def* %arrayidx1625 to %struct.rtvec_def**
  %879 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1626, align 8
  %elem1627 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %879, i32 0, i32 1
  %arrayidx1628 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1627, i32 0, i64 0
  %880 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1628, align 8
  %fld1629 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %880, i32 0, i32 1
  %arrayidx1630 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1629, i32 0, i64 0
  %rtx1631 = bitcast %union.rtunion_def* %arrayidx1630 to %struct.rtx_def**
  %881 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1632 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %881, i64 5
  store %struct.rtx_def** %rtx1631, %struct.rtx_def*** %arrayidx1632, align 8
  %882 = load %struct.rtx_def*, %struct.rtx_def** %rtx1631, align 8
  %883 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1633 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %883, i64 5
  store %struct.rtx_def* %882, %struct.rtx_def** %arrayidx1633, align 8
  br label %sw.epilog

sw.bb.1634:                                       ; preds = %entry, %entry
  %884 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1635 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %884, i32 0, i32 1
  %arrayidx1636 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1635, i32 0, i64 0
  %rtvec1637 = bitcast %union.rtunion_def* %arrayidx1636 to %struct.rtvec_def**
  %885 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1637, align 8
  %elem1638 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %885, i32 0, i32 1
  %arrayidx1639 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1638, i32 0, i64 4
  %886 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1639, align 8
  %fld1640 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %886, i32 0, i32 1
  %arrayidx1641 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1640, i32 0, i64 0
  %rtx1642 = bitcast %union.rtunion_def* %arrayidx1641 to %struct.rtx_def**
  %887 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1643 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %887, i64 0
  store %struct.rtx_def** %rtx1642, %struct.rtx_def*** %arrayidx1643, align 8
  %888 = load %struct.rtx_def*, %struct.rtx_def** %rtx1642, align 8
  %889 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1644 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %889, i64 0
  store %struct.rtx_def* %888, %struct.rtx_def** %arrayidx1644, align 8
  %890 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1645 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %890, i32 0, i32 1
  %arrayidx1646 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1645, i32 0, i64 0
  %rtvec1647 = bitcast %union.rtunion_def* %arrayidx1646 to %struct.rtvec_def**
  %891 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1647, align 8
  %elem1648 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %891, i32 0, i32 1
  %arrayidx1649 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1648, i32 0, i64 5
  %892 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1649, align 8
  %fld1650 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %892, i32 0, i32 1
  %arrayidx1651 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1650, i32 0, i64 0
  %rtx1652 = bitcast %union.rtunion_def* %arrayidx1651 to %struct.rtx_def**
  %893 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1653 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %893, i64 1
  store %struct.rtx_def** %rtx1652, %struct.rtx_def*** %arrayidx1653, align 8
  %894 = load %struct.rtx_def*, %struct.rtx_def** %rtx1652, align 8
  %895 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1654 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %895, i64 1
  store %struct.rtx_def* %894, %struct.rtx_def** %arrayidx1654, align 8
  %896 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1655 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %896, i32 0, i32 1
  %arrayidx1656 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1655, i32 0, i64 0
  %rtvec1657 = bitcast %union.rtunion_def* %arrayidx1656 to %struct.rtvec_def**
  %897 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1657, align 8
  %elem1658 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %897, i32 0, i32 1
  %arrayidx1659 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1658, i32 0, i64 6
  %898 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1659, align 8
  %fld1660 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %898, i32 0, i32 1
  %arrayidx1661 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1660, i32 0, i64 0
  %rtx1662 = bitcast %union.rtunion_def* %arrayidx1661 to %struct.rtx_def**
  %899 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1663 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %899, i64 2
  store %struct.rtx_def** %rtx1662, %struct.rtx_def*** %arrayidx1663, align 8
  %900 = load %struct.rtx_def*, %struct.rtx_def** %rtx1662, align 8
  %901 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1664 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %901, i64 2
  store %struct.rtx_def* %900, %struct.rtx_def** %arrayidx1664, align 8
  %902 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1665 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %902, i32 0, i32 1
  %arrayidx1666 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1665, i32 0, i64 0
  %rtvec1667 = bitcast %union.rtunion_def* %arrayidx1666 to %struct.rtvec_def**
  %903 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1667, align 8
  %elem1668 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %903, i32 0, i32 1
  %arrayidx1669 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1668, i32 0, i64 1
  %904 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1669, align 8
  %fld1670 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %904, i32 0, i32 1
  %arrayidx1671 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1670, i32 0, i64 0
  %rtx1672 = bitcast %union.rtunion_def* %arrayidx1671 to %struct.rtx_def**
  %905 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1673 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %905, i64 3
  store %struct.rtx_def** %rtx1672, %struct.rtx_def*** %arrayidx1673, align 8
  %906 = load %struct.rtx_def*, %struct.rtx_def** %rtx1672, align 8
  %907 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1674 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %907, i64 3
  store %struct.rtx_def* %906, %struct.rtx_def** %arrayidx1674, align 8
  %908 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1675 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %908, i32 0, i32 1
  %arrayidx1676 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1675, i32 0, i64 0
  %rtvec1677 = bitcast %union.rtunion_def* %arrayidx1676 to %struct.rtvec_def**
  %909 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1677, align 8
  %elem1678 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %909, i32 0, i32 1
  %arrayidx1679 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1678, i32 0, i64 0
  %910 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1679, align 8
  %fld1680 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %910, i32 0, i32 1
  %arrayidx1681 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1680, i32 0, i64 1
  %rtx1682 = bitcast %union.rtunion_def* %arrayidx1681 to %struct.rtx_def**
  %911 = load %struct.rtx_def*, %struct.rtx_def** %rtx1682, align 8
  %fld1683 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %911, i32 0, i32 1
  %arrayidx1684 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1683, i32 0, i64 1
  %rtx1685 = bitcast %union.rtunion_def* %arrayidx1684 to %struct.rtx_def**
  %912 = load %struct.rtx_def*, %struct.rtx_def** %rtx1685, align 8
  %fld1686 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %912, i32 0, i32 1
  %arrayidx1687 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1686, i32 0, i64 0
  %rtx1688 = bitcast %union.rtunion_def* %arrayidx1687 to %struct.rtx_def**
  %913 = load %struct.rtx_def*, %struct.rtx_def** %rtx1688, align 8
  %fld1689 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %913, i32 0, i32 1
  %arrayidx1690 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1689, i32 0, i64 0
  %rtx1691 = bitcast %union.rtunion_def* %arrayidx1690 to %struct.rtx_def**
  %914 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1692 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %914, i64 4
  store %struct.rtx_def** %rtx1691, %struct.rtx_def*** %arrayidx1692, align 8
  %915 = load %struct.rtx_def*, %struct.rtx_def** %rtx1691, align 8
  %916 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1693 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %916, i64 4
  store %struct.rtx_def* %915, %struct.rtx_def** %arrayidx1693, align 8
  %917 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1694 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %917, i32 0, i32 1
  %arrayidx1695 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1694, i32 0, i64 0
  %rtvec1696 = bitcast %union.rtunion_def* %arrayidx1695 to %struct.rtvec_def**
  %918 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1696, align 8
  %elem1697 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %918, i32 0, i32 1
  %arrayidx1698 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1697, i32 0, i64 0
  %919 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1698, align 8
  %fld1699 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %919, i32 0, i32 1
  %arrayidx1700 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1699, i32 0, i64 1
  %rtx1701 = bitcast %union.rtunion_def* %arrayidx1700 to %struct.rtx_def**
  %920 = load %struct.rtx_def*, %struct.rtx_def** %rtx1701, align 8
  %fld1702 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %920, i32 0, i32 1
  %arrayidx1703 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1702, i32 0, i64 1
  %rtx1704 = bitcast %union.rtunion_def* %arrayidx1703 to %struct.rtx_def**
  %921 = load %struct.rtx_def*, %struct.rtx_def** %rtx1704, align 8
  %fld1705 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %921, i32 0, i32 1
  %arrayidx1706 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1705, i32 0, i64 1
  %rtx1707 = bitcast %union.rtunion_def* %arrayidx1706 to %struct.rtx_def**
  %922 = load %struct.rtx_def*, %struct.rtx_def** %rtx1707, align 8
  %fld1708 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %922, i32 0, i32 1
  %arrayidx1709 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1708, i32 0, i64 0
  %rtx1710 = bitcast %union.rtunion_def* %arrayidx1709 to %struct.rtx_def**
  %923 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1711 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %923, i64 5
  store %struct.rtx_def** %rtx1710, %struct.rtx_def*** %arrayidx1711, align 8
  %924 = load %struct.rtx_def*, %struct.rtx_def** %rtx1710, align 8
  %925 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1712 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %925, i64 5
  store %struct.rtx_def* %924, %struct.rtx_def** %arrayidx1712, align 8
  %926 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1713 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %926, i32 0, i32 1
  %arrayidx1714 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1713, i32 0, i64 0
  %rtvec1715 = bitcast %union.rtunion_def* %arrayidx1714 to %struct.rtvec_def**
  %927 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1715, align 8
  %elem1716 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %927, i32 0, i32 1
  %arrayidx1717 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1716, i32 0, i64 0
  %928 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1717, align 8
  %fld1718 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %928, i32 0, i32 1
  %arrayidx1719 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1718, i32 0, i64 1
  %rtx1720 = bitcast %union.rtunion_def* %arrayidx1719 to %struct.rtx_def**
  %929 = load %struct.rtx_def*, %struct.rtx_def** %rtx1720, align 8
  %fld1721 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %929, i32 0, i32 1
  %arrayidx1722 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1721, i32 0, i64 0
  %rtx1723 = bitcast %union.rtunion_def* %arrayidx1722 to %struct.rtx_def**
  %930 = load %struct.rtx_def*, %struct.rtx_def** %rtx1723, align 8
  %fld1724 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %930, i32 0, i32 1
  %arrayidx1725 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1724, i32 0, i64 0
  %rtx1726 = bitcast %union.rtunion_def* %arrayidx1725 to %struct.rtx_def**
  %931 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1727 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %931, i64 6
  store %struct.rtx_def** %rtx1726, %struct.rtx_def*** %arrayidx1727, align 8
  %932 = load %struct.rtx_def*, %struct.rtx_def** %rtx1726, align 8
  %933 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1728 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %933, i64 6
  store %struct.rtx_def* %932, %struct.rtx_def** %arrayidx1728, align 8
  br label %sw.epilog

sw.bb.1729:                                       ; preds = %entry, %entry
  %934 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1730 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %934, i32 0, i32 1
  %arrayidx1731 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1730, i32 0, i64 0
  %rtvec1732 = bitcast %union.rtunion_def* %arrayidx1731 to %struct.rtvec_def**
  %935 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1732, align 8
  %elem1733 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %935, i32 0, i32 1
  %arrayidx1734 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1733, i32 0, i64 4
  %936 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1734, align 8
  %fld1735 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %936, i32 0, i32 1
  %arrayidx1736 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1735, i32 0, i64 0
  %rtx1737 = bitcast %union.rtunion_def* %arrayidx1736 to %struct.rtx_def**
  %937 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1738 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %937, i64 0
  store %struct.rtx_def** %rtx1737, %struct.rtx_def*** %arrayidx1738, align 8
  %938 = load %struct.rtx_def*, %struct.rtx_def** %rtx1737, align 8
  %939 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1739 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %939, i64 0
  store %struct.rtx_def* %938, %struct.rtx_def** %arrayidx1739, align 8
  %940 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1740 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %940, i32 0, i32 1
  %arrayidx1741 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1740, i32 0, i64 0
  %rtvec1742 = bitcast %union.rtunion_def* %arrayidx1741 to %struct.rtvec_def**
  %941 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1742, align 8
  %elem1743 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %941, i32 0, i32 1
  %arrayidx1744 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1743, i32 0, i64 5
  %942 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1744, align 8
  %fld1745 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %942, i32 0, i32 1
  %arrayidx1746 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1745, i32 0, i64 0
  %rtx1747 = bitcast %union.rtunion_def* %arrayidx1746 to %struct.rtx_def**
  %943 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1748 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %943, i64 1
  store %struct.rtx_def** %rtx1747, %struct.rtx_def*** %arrayidx1748, align 8
  %944 = load %struct.rtx_def*, %struct.rtx_def** %rtx1747, align 8
  %945 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1749 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %945, i64 1
  store %struct.rtx_def* %944, %struct.rtx_def** %arrayidx1749, align 8
  %946 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1750 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %946, i32 0, i32 1
  %arrayidx1751 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1750, i32 0, i64 0
  %rtvec1752 = bitcast %union.rtunion_def* %arrayidx1751 to %struct.rtvec_def**
  %947 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1752, align 8
  %elem1753 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %947, i32 0, i32 1
  %arrayidx1754 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1753, i32 0, i64 6
  %948 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1754, align 8
  %fld1755 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %948, i32 0, i32 1
  %arrayidx1756 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1755, i32 0, i64 0
  %rtx1757 = bitcast %union.rtunion_def* %arrayidx1756 to %struct.rtx_def**
  %949 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1758 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %949, i64 2
  store %struct.rtx_def** %rtx1757, %struct.rtx_def*** %arrayidx1758, align 8
  %950 = load %struct.rtx_def*, %struct.rtx_def** %rtx1757, align 8
  %951 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1759 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %951, i64 2
  store %struct.rtx_def* %950, %struct.rtx_def** %arrayidx1759, align 8
  %952 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1760 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %952, i32 0, i32 1
  %arrayidx1761 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1760, i32 0, i64 0
  %rtvec1762 = bitcast %union.rtunion_def* %arrayidx1761 to %struct.rtvec_def**
  %953 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1762, align 8
  %elem1763 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %953, i32 0, i32 1
  %arrayidx1764 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1763, i32 0, i64 2
  %954 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1764, align 8
  %fld1765 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %954, i32 0, i32 1
  %arrayidx1766 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1765, i32 0, i64 0
  %rtx1767 = bitcast %union.rtunion_def* %arrayidx1766 to %struct.rtx_def**
  %955 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1768 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %955, i64 3
  store %struct.rtx_def** %rtx1767, %struct.rtx_def*** %arrayidx1768, align 8
  %956 = load %struct.rtx_def*, %struct.rtx_def** %rtx1767, align 8
  %957 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1769 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %957, i64 3
  store %struct.rtx_def* %956, %struct.rtx_def** %arrayidx1769, align 8
  %958 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1770 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %958, i32 0, i32 1
  %arrayidx1771 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1770, i32 0, i64 0
  %rtvec1772 = bitcast %union.rtunion_def* %arrayidx1771 to %struct.rtvec_def**
  %959 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1772, align 8
  %elem1773 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %959, i32 0, i32 1
  %arrayidx1774 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1773, i32 0, i64 0
  %960 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1774, align 8
  %fld1775 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %960, i32 0, i32 1
  %arrayidx1776 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1775, i32 0, i64 1
  %rtx1777 = bitcast %union.rtunion_def* %arrayidx1776 to %struct.rtx_def**
  %961 = load %struct.rtx_def*, %struct.rtx_def** %rtx1777, align 8
  %fld1778 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %961, i32 0, i32 1
  %arrayidx1779 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1778, i32 0, i64 0
  %rtx1780 = bitcast %union.rtunion_def* %arrayidx1779 to %struct.rtx_def**
  %962 = load %struct.rtx_def*, %struct.rtx_def** %rtx1780, align 8
  %fld1781 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %962, i32 0, i32 1
  %arrayidx1782 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1781, i32 0, i64 0
  %rtx1783 = bitcast %union.rtunion_def* %arrayidx1782 to %struct.rtx_def**
  %963 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1784 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %963, i64 4
  store %struct.rtx_def** %rtx1783, %struct.rtx_def*** %arrayidx1784, align 8
  %964 = load %struct.rtx_def*, %struct.rtx_def** %rtx1783, align 8
  %965 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1785 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %965, i64 4
  store %struct.rtx_def* %964, %struct.rtx_def** %arrayidx1785, align 8
  %966 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1786 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %966, i32 0, i32 1
  %arrayidx1787 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1786, i32 0, i64 0
  %rtvec1788 = bitcast %union.rtunion_def* %arrayidx1787 to %struct.rtvec_def**
  %967 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1788, align 8
  %elem1789 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %967, i32 0, i32 1
  %arrayidx1790 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1789, i32 0, i64 0
  %968 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1790, align 8
  %fld1791 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %968, i32 0, i32 1
  %arrayidx1792 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1791, i32 0, i64 1
  %rtx1793 = bitcast %union.rtunion_def* %arrayidx1792 to %struct.rtx_def**
  %969 = load %struct.rtx_def*, %struct.rtx_def** %rtx1793, align 8
  %fld1794 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %969, i32 0, i32 1
  %arrayidx1795 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1794, i32 0, i64 1
  %rtx1796 = bitcast %union.rtunion_def* %arrayidx1795 to %struct.rtx_def**
  %970 = load %struct.rtx_def*, %struct.rtx_def** %rtx1796, align 8
  %fld1797 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %970, i32 0, i32 1
  %arrayidx1798 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1797, i32 0, i64 0
  %rtx1799 = bitcast %union.rtunion_def* %arrayidx1798 to %struct.rtx_def**
  %971 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1800 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %971, i64 5
  store %struct.rtx_def** %rtx1799, %struct.rtx_def*** %arrayidx1800, align 8
  %972 = load %struct.rtx_def*, %struct.rtx_def** %rtx1799, align 8
  %973 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1801 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %973, i64 5
  store %struct.rtx_def* %972, %struct.rtx_def** %arrayidx1801, align 8
  %974 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1802 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %974, i32 0, i32 1
  %arrayidx1803 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1802, i32 0, i64 0
  %rtvec1804 = bitcast %union.rtunion_def* %arrayidx1803 to %struct.rtvec_def**
  %975 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1804, align 8
  %elem1805 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %975, i32 0, i32 1
  %arrayidx1806 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1805, i32 0, i64 1
  %976 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1806, align 8
  %fld1807 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %976, i32 0, i32 1
  %arrayidx1808 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1807, i32 0, i64 0
  %rtx1809 = bitcast %union.rtunion_def* %arrayidx1808 to %struct.rtx_def**
  %977 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1810 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %977, i64 6
  store %struct.rtx_def** %rtx1809, %struct.rtx_def*** %arrayidx1810, align 8
  %978 = load %struct.rtx_def*, %struct.rtx_def** %rtx1809, align 8
  %979 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1811 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %979, i64 6
  store %struct.rtx_def* %978, %struct.rtx_def** %arrayidx1811, align 8
  br label %sw.epilog

sw.bb.1812:                                       ; preds = %entry, %entry
  %980 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1813 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %980, i32 0, i32 1
  %arrayidx1814 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1813, i32 0, i64 0
  %rtvec1815 = bitcast %union.rtunion_def* %arrayidx1814 to %struct.rtvec_def**
  %981 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1815, align 8
  %elem1816 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %981, i32 0, i32 1
  %arrayidx1817 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1816, i32 0, i64 1
  %982 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1817, align 8
  %fld1818 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %982, i32 0, i32 1
  %arrayidx1819 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1818, i32 0, i64 0
  %rtx1820 = bitcast %union.rtunion_def* %arrayidx1819 to %struct.rtx_def**
  %983 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1821 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %983, i64 0
  store %struct.rtx_def** %rtx1820, %struct.rtx_def*** %arrayidx1821, align 8
  %984 = load %struct.rtx_def*, %struct.rtx_def** %rtx1820, align 8
  %985 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1822 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %985, i64 0
  store %struct.rtx_def* %984, %struct.rtx_def** %arrayidx1822, align 8
  %986 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1823 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %986, i32 0, i32 1
  %arrayidx1824 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1823, i32 0, i64 0
  %rtvec1825 = bitcast %union.rtunion_def* %arrayidx1824 to %struct.rtvec_def**
  %987 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1825, align 8
  %elem1826 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %987, i32 0, i32 1
  %arrayidx1827 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1826, i32 0, i64 0
  %988 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1827, align 8
  %fld1828 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %988, i32 0, i32 1
  %arrayidx1829 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1828, i32 0, i64 0
  %rtx1830 = bitcast %union.rtunion_def* %arrayidx1829 to %struct.rtx_def**
  %989 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1831 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %989, i64 1
  store %struct.rtx_def** %rtx1830, %struct.rtx_def*** %arrayidx1831, align 8
  %990 = load %struct.rtx_def*, %struct.rtx_def** %rtx1830, align 8
  %991 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1832 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %991, i64 1
  store %struct.rtx_def* %990, %struct.rtx_def** %arrayidx1832, align 8
  %992 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1833 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %992, i32 0, i32 1
  %arrayidx1834 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1833, i32 0, i64 0
  %rtvec1835 = bitcast %union.rtunion_def* %arrayidx1834 to %struct.rtvec_def**
  %993 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1835, align 8
  %elem1836 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %993, i32 0, i32 1
  %arrayidx1837 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1836, i32 0, i64 3
  %994 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1837, align 8
  %fld1838 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %994, i32 0, i32 1
  %arrayidx1839 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1838, i32 0, i64 0
  %rtx1840 = bitcast %union.rtunion_def* %arrayidx1839 to %struct.rtx_def**
  %995 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1841 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %995, i64 2
  store %struct.rtx_def** %rtx1840, %struct.rtx_def*** %arrayidx1841, align 8
  %996 = load %struct.rtx_def*, %struct.rtx_def** %rtx1840, align 8
  %997 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1842 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %997, i64 2
  store %struct.rtx_def* %996, %struct.rtx_def** %arrayidx1842, align 8
  %998 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1843 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %998, i32 0, i32 1
  %arrayidx1844 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1843, i32 0, i64 0
  %rtvec1845 = bitcast %union.rtunion_def* %arrayidx1844 to %struct.rtvec_def**
  %999 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1845, align 8
  %elem1846 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %999, i32 0, i32 1
  %arrayidx1847 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1846, i32 0, i64 1
  %1000 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1847, align 8
  %fld1848 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1000, i32 0, i32 1
  %arrayidx1849 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1848, i32 0, i64 1
  %rtx1850 = bitcast %union.rtunion_def* %arrayidx1849 to %struct.rtx_def**
  %1001 = load %struct.rtx_def*, %struct.rtx_def** %rtx1850, align 8
  %fld1851 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1001, i32 0, i32 1
  %arrayidx1852 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1851, i32 0, i64 0
  %rtx1853 = bitcast %union.rtunion_def* %arrayidx1852 to %struct.rtx_def**
  %1002 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1854 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1002, i64 3
  store %struct.rtx_def** %rtx1853, %struct.rtx_def*** %arrayidx1854, align 8
  %1003 = load %struct.rtx_def*, %struct.rtx_def** %rtx1853, align 8
  %1004 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1855 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1004, i64 3
  store %struct.rtx_def* %1003, %struct.rtx_def** %arrayidx1855, align 8
  %1005 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1856 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1005, i32 0, i32 1
  %arrayidx1857 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1856, i32 0, i64 0
  %rtvec1858 = bitcast %union.rtunion_def* %arrayidx1857 to %struct.rtvec_def**
  %1006 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1858, align 8
  %elem1859 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1006, i32 0, i32 1
  %arrayidx1860 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1859, i32 0, i64 1
  %1007 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1860, align 8
  %fld1861 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1007, i32 0, i32 1
  %arrayidx1862 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1861, i32 0, i64 1
  %rtx1863 = bitcast %union.rtunion_def* %arrayidx1862 to %struct.rtx_def**
  %1008 = load %struct.rtx_def*, %struct.rtx_def** %rtx1863, align 8
  %fld1864 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1008, i32 0, i32 1
  %arrayidx1865 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1864, i32 0, i64 1
  %rtx1866 = bitcast %union.rtunion_def* %arrayidx1865 to %struct.rtx_def**
  %1009 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1867 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1009, i64 4
  store %struct.rtx_def** %rtx1866, %struct.rtx_def*** %arrayidx1867, align 8
  %1010 = load %struct.rtx_def*, %struct.rtx_def** %rtx1866, align 8
  %1011 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1868 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1011, i64 4
  store %struct.rtx_def* %1010, %struct.rtx_def** %arrayidx1868, align 8
  %1012 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1869 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1012, i32 0, i32 1
  %arrayidx1870 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1869, i32 0, i64 0
  %rtvec1871 = bitcast %union.rtunion_def* %arrayidx1870 to %struct.rtvec_def**
  %1013 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1871, align 8
  %elem1872 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1013, i32 0, i32 1
  %arrayidx1873 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1872, i32 0, i64 4
  %1014 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1873, align 8
  %fld1874 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1014, i32 0, i32 1
  %arrayidx1875 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1874, i32 0, i64 0
  %rtx1876 = bitcast %union.rtunion_def* %arrayidx1875 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1876, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 4, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1015 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1877 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1015, i32 0, i32 1
  %arrayidx1878 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1877, i32 0, i64 0
  %rtvec1879 = bitcast %union.rtunion_def* %arrayidx1878 to %struct.rtvec_def**
  %1016 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1879, align 8
  %elem1880 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1016, i32 0, i32 1
  %arrayidx1881 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1880, i32 0, i64 2
  %1017 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1881, align 8
  %fld1882 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1017, i32 0, i32 1
  %arrayidx1883 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1882, i32 0, i64 0
  %rtx1884 = bitcast %union.rtunion_def* %arrayidx1883 to %struct.rtx_def**
  %1018 = load %struct.rtx_def*, %struct.rtx_def** %rtx1884, align 8
  %fld1885 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1018, i32 0, i32 1
  %arrayidx1886 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1885, i32 0, i64 0
  %rtx1887 = bitcast %union.rtunion_def* %arrayidx1886 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1887, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 3, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.1888:                                       ; preds = %entry, %entry, %entry
  %1019 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1889 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1019, i32 0, i32 1
  %arrayidx1890 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1889, i32 0, i64 0
  %rtvec1891 = bitcast %union.rtunion_def* %arrayidx1890 to %struct.rtvec_def**
  %1020 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1891, align 8
  %elem1892 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1020, i32 0, i32 1
  %arrayidx1893 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1892, i32 0, i64 1
  %1021 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1893, align 8
  %fld1894 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1021, i32 0, i32 1
  %arrayidx1895 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1894, i32 0, i64 0
  %rtx1896 = bitcast %union.rtunion_def* %arrayidx1895 to %struct.rtx_def**
  %1022 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1897 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1022, i64 0
  store %struct.rtx_def** %rtx1896, %struct.rtx_def*** %arrayidx1897, align 8
  %1023 = load %struct.rtx_def*, %struct.rtx_def** %rtx1896, align 8
  %1024 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1898 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1024, i64 0
  store %struct.rtx_def* %1023, %struct.rtx_def** %arrayidx1898, align 8
  %1025 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1899 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1025, i32 0, i32 1
  %arrayidx1900 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1899, i32 0, i64 0
  %rtvec1901 = bitcast %union.rtunion_def* %arrayidx1900 to %struct.rtvec_def**
  %1026 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1901, align 8
  %elem1902 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1026, i32 0, i32 1
  %arrayidx1903 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1902, i32 0, i64 0
  %1027 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1903, align 8
  %fld1904 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1027, i32 0, i32 1
  %arrayidx1905 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1904, i32 0, i64 0
  %rtx1906 = bitcast %union.rtunion_def* %arrayidx1905 to %struct.rtx_def**
  %1028 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1907 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1028, i64 1
  store %struct.rtx_def** %rtx1906, %struct.rtx_def*** %arrayidx1907, align 8
  %1029 = load %struct.rtx_def*, %struct.rtx_def** %rtx1906, align 8
  %1030 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1908 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1030, i64 1
  store %struct.rtx_def* %1029, %struct.rtx_def** %arrayidx1908, align 8
  %1031 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1909 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1031, i32 0, i32 1
  %arrayidx1910 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1909, i32 0, i64 0
  %rtvec1911 = bitcast %union.rtunion_def* %arrayidx1910 to %struct.rtvec_def**
  %1032 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1911, align 8
  %elem1912 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1032, i32 0, i32 1
  %arrayidx1913 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1912, i32 0, i64 3
  %1033 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1913, align 8
  %fld1914 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1033, i32 0, i32 1
  %arrayidx1915 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1914, i32 0, i64 0
  %rtx1916 = bitcast %union.rtunion_def* %arrayidx1915 to %struct.rtx_def**
  %1034 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1917 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1034, i64 2
  store %struct.rtx_def** %rtx1916, %struct.rtx_def*** %arrayidx1917, align 8
  %1035 = load %struct.rtx_def*, %struct.rtx_def** %rtx1916, align 8
  %1036 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1918 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1036, i64 2
  store %struct.rtx_def* %1035, %struct.rtx_def** %arrayidx1918, align 8
  %1037 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1919 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1037, i32 0, i32 1
  %arrayidx1920 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1919, i32 0, i64 0
  %rtvec1921 = bitcast %union.rtunion_def* %arrayidx1920 to %struct.rtvec_def**
  %1038 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1921, align 8
  %elem1922 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1038, i32 0, i32 1
  %arrayidx1923 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1922, i32 0, i64 1
  %1039 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1923, align 8
  %fld1924 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1039, i32 0, i32 1
  %arrayidx1925 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1924, i32 0, i64 1
  %rtx1926 = bitcast %union.rtunion_def* %arrayidx1925 to %struct.rtx_def**
  %1040 = load %struct.rtx_def*, %struct.rtx_def** %rtx1926, align 8
  %fld1927 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1040, i32 0, i32 1
  %arrayidx1928 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1927, i32 0, i64 1
  %rtx1929 = bitcast %union.rtunion_def* %arrayidx1928 to %struct.rtx_def**
  %1041 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1930 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1041, i64 3
  store %struct.rtx_def** %rtx1929, %struct.rtx_def*** %arrayidx1930, align 8
  %1042 = load %struct.rtx_def*, %struct.rtx_def** %rtx1929, align 8
  %1043 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1931 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1043, i64 3
  store %struct.rtx_def* %1042, %struct.rtx_def** %arrayidx1931, align 8
  %1044 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1932 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1044, i32 0, i32 1
  %arrayidx1933 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1932, i32 0, i64 0
  %rtvec1934 = bitcast %union.rtunion_def* %arrayidx1933 to %struct.rtvec_def**
  %1045 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1934, align 8
  %elem1935 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1045, i32 0, i32 1
  %arrayidx1936 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1935, i32 0, i64 1
  %1046 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1936, align 8
  %fld1937 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1046, i32 0, i32 1
  %arrayidx1938 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1937, i32 0, i64 1
  %rtx1939 = bitcast %union.rtunion_def* %arrayidx1938 to %struct.rtx_def**
  %1047 = load %struct.rtx_def*, %struct.rtx_def** %rtx1939, align 8
  %fld1940 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1047, i32 0, i32 1
  %arrayidx1941 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1940, i32 0, i64 0
  %rtx1942 = bitcast %union.rtunion_def* %arrayidx1941 to %struct.rtx_def**
  %1048 = load %struct.rtx_def*, %struct.rtx_def** %rtx1942, align 8
  %fld1943 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1048, i32 0, i32 1
  %arrayidx1944 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1943, i32 0, i64 0
  %rtx1945 = bitcast %union.rtunion_def* %arrayidx1944 to %struct.rtx_def**
  %1049 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1946 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1049, i64 4
  store %struct.rtx_def** %rtx1945, %struct.rtx_def*** %arrayidx1946, align 8
  %1050 = load %struct.rtx_def*, %struct.rtx_def** %rtx1945, align 8
  %1051 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1947 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1051, i64 4
  store %struct.rtx_def* %1050, %struct.rtx_def** %arrayidx1947, align 8
  %1052 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1948 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1052, i32 0, i32 1
  %arrayidx1949 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1948, i32 0, i64 0
  %rtvec1950 = bitcast %union.rtunion_def* %arrayidx1949 to %struct.rtvec_def**
  %1053 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1950, align 8
  %elem1951 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1053, i32 0, i32 1
  %arrayidx1952 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1951, i32 0, i64 4
  %1054 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1952, align 8
  %fld1953 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1054, i32 0, i32 1
  %arrayidx1954 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1953, i32 0, i64 0
  %rtx1955 = bitcast %union.rtunion_def* %arrayidx1954 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1955, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 4, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1055 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1956 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1055, i32 0, i32 1
  %arrayidx1957 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1956, i32 0, i64 0
  %rtvec1958 = bitcast %union.rtunion_def* %arrayidx1957 to %struct.rtvec_def**
  %1056 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1958, align 8
  %elem1959 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1056, i32 0, i32 1
  %arrayidx1960 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1959, i32 0, i64 2
  %1057 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1960, align 8
  %fld1961 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1057, i32 0, i32 1
  %arrayidx1962 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1961, i32 0, i64 0
  %rtx1963 = bitcast %union.rtunion_def* %arrayidx1962 to %struct.rtx_def**
  %1058 = load %struct.rtx_def*, %struct.rtx_def** %rtx1963, align 8
  %fld1964 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1058, i32 0, i32 1
  %arrayidx1965 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1964, i32 0, i64 0
  %rtx1966 = bitcast %union.rtunion_def* %arrayidx1965 to %struct.rtx_def**
  store %struct.rtx_def** %rtx1966, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 3, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.1967:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1059 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1968 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1059, i32 0, i32 1
  %arrayidx1969 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1968, i32 0, i64 0
  %rtvec1970 = bitcast %union.rtunion_def* %arrayidx1969 to %struct.rtvec_def**
  %1060 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1970, align 8
  %elem1971 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1060, i32 0, i32 1
  %arrayidx1972 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1971, i32 0, i64 1
  %1061 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1972, align 8
  %fld1973 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1061, i32 0, i32 1
  %arrayidx1974 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1973, i32 0, i64 0
  %rtx1975 = bitcast %union.rtunion_def* %arrayidx1974 to %struct.rtx_def**
  %1062 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1976 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1062, i64 0
  store %struct.rtx_def** %rtx1975, %struct.rtx_def*** %arrayidx1976, align 8
  %1063 = load %struct.rtx_def*, %struct.rtx_def** %rtx1975, align 8
  %1064 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1977 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1064, i64 0
  store %struct.rtx_def* %1063, %struct.rtx_def** %arrayidx1977, align 8
  %1065 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1978 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1065, i32 0, i32 1
  %arrayidx1979 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1978, i32 0, i64 0
  %rtvec1980 = bitcast %union.rtunion_def* %arrayidx1979 to %struct.rtvec_def**
  %1066 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1980, align 8
  %elem1981 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1066, i32 0, i32 1
  %arrayidx1982 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1981, i32 0, i64 0
  %1067 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1982, align 8
  %fld1983 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1067, i32 0, i32 1
  %arrayidx1984 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1983, i32 0, i64 0
  %rtx1985 = bitcast %union.rtunion_def* %arrayidx1984 to %struct.rtx_def**
  %1068 = load %struct.rtx_def*, %struct.rtx_def** %rtx1985, align 8
  %fld1986 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1068, i32 0, i32 1
  %arrayidx1987 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1986, i32 0, i64 0
  %rtx1988 = bitcast %union.rtunion_def* %arrayidx1987 to %struct.rtx_def**
  %1069 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1989 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1069, i64 1
  store %struct.rtx_def** %rtx1988, %struct.rtx_def*** %arrayidx1989, align 8
  %1070 = load %struct.rtx_def*, %struct.rtx_def** %rtx1988, align 8
  %1071 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx1990 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1071, i64 1
  store %struct.rtx_def* %1070, %struct.rtx_def** %arrayidx1990, align 8
  %1072 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1991 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1072, i32 0, i32 1
  %arrayidx1992 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1991, i32 0, i64 0
  %rtvec1993 = bitcast %union.rtunion_def* %arrayidx1992 to %struct.rtvec_def**
  %1073 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1993, align 8
  %elem1994 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1073, i32 0, i32 1
  %arrayidx1995 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1994, i32 0, i64 0
  %1074 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1995, align 8
  %fld1996 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1074, i32 0, i32 1
  %arrayidx1997 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1996, i32 0, i64 1
  %rtx1998 = bitcast %union.rtunion_def* %arrayidx1997 to %struct.rtx_def**
  %1075 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx1999 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1075, i64 2
  store %struct.rtx_def** %rtx1998, %struct.rtx_def*** %arrayidx1999, align 8
  %1076 = load %struct.rtx_def*, %struct.rtx_def** %rtx1998, align 8
  %1077 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2000 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1077, i64 2
  store %struct.rtx_def* %1076, %struct.rtx_def** %arrayidx2000, align 8
  %1078 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2001 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1078, i32 0, i32 1
  %arrayidx2002 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2001, i32 0, i64 0
  %rtvec2003 = bitcast %union.rtunion_def* %arrayidx2002 to %struct.rtvec_def**
  %1079 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2003, align 8
  %elem2004 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1079, i32 0, i32 1
  %arrayidx2005 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2004, i32 0, i64 1
  %1080 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2005, align 8
  %fld2006 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1080, i32 0, i32 1
  %arrayidx2007 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2006, i32 0, i64 1
  %rtx2008 = bitcast %union.rtunion_def* %arrayidx2007 to %struct.rtx_def**
  %1081 = load %struct.rtx_def*, %struct.rtx_def** %rtx2008, align 8
  %fld2009 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1081, i32 0, i32 1
  %arrayidx2010 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2009, i32 0, i64 0
  %rtx2011 = bitcast %union.rtunion_def* %arrayidx2010 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2011, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.2012:                                       ; preds = %entry, %entry
  %1082 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2013 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1082, i32 0, i32 1
  %arrayidx2014 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2013, i32 0, i64 0
  %rtvec2015 = bitcast %union.rtunion_def* %arrayidx2014 to %struct.rtvec_def**
  %1083 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2015, align 8
  %elem2016 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1083, i32 0, i32 1
  %arrayidx2017 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2016, i32 0, i64 1
  %1084 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2017, align 8
  %fld2018 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1084, i32 0, i32 1
  %arrayidx2019 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2018, i32 0, i64 0
  %rtx2020 = bitcast %union.rtunion_def* %arrayidx2019 to %struct.rtx_def**
  %1085 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2021 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1085, i64 0
  store %struct.rtx_def** %rtx2020, %struct.rtx_def*** %arrayidx2021, align 8
  %1086 = load %struct.rtx_def*, %struct.rtx_def** %rtx2020, align 8
  %1087 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2022 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1087, i64 0
  store %struct.rtx_def* %1086, %struct.rtx_def** %arrayidx2022, align 8
  %1088 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2023 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1088, i32 0, i32 1
  %arrayidx2024 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2023, i32 0, i64 0
  %rtvec2025 = bitcast %union.rtunion_def* %arrayidx2024 to %struct.rtvec_def**
  %1089 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2025, align 8
  %elem2026 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1089, i32 0, i32 1
  %arrayidx2027 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2026, i32 0, i64 2
  %1090 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2027, align 8
  %fld2028 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1090, i32 0, i32 1
  %arrayidx2029 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2028, i32 0, i64 0
  %rtx2030 = bitcast %union.rtunion_def* %arrayidx2029 to %struct.rtx_def**
  %1091 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2031 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1091, i64 1
  store %struct.rtx_def** %rtx2030, %struct.rtx_def*** %arrayidx2031, align 8
  %1092 = load %struct.rtx_def*, %struct.rtx_def** %rtx2030, align 8
  %1093 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2032 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1093, i64 1
  store %struct.rtx_def* %1092, %struct.rtx_def** %arrayidx2032, align 8
  %1094 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2033 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1094, i32 0, i32 1
  %arrayidx2034 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2033, i32 0, i64 0
  %rtvec2035 = bitcast %union.rtunion_def* %arrayidx2034 to %struct.rtvec_def**
  %1095 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2035, align 8
  %elem2036 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1095, i32 0, i32 1
  %arrayidx2037 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2036, i32 0, i64 0
  %1096 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2037, align 8
  %fld2038 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1096, i32 0, i32 1
  %arrayidx2039 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2038, i32 0, i64 0
  %rtx2040 = bitcast %union.rtunion_def* %arrayidx2039 to %struct.rtx_def**
  %1097 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2041 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1097, i64 2
  store %struct.rtx_def** %rtx2040, %struct.rtx_def*** %arrayidx2041, align 8
  %1098 = load %struct.rtx_def*, %struct.rtx_def** %rtx2040, align 8
  %1099 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2042 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1099, i64 2
  store %struct.rtx_def* %1098, %struct.rtx_def** %arrayidx2042, align 8
  %1100 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2043 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1100, i32 0, i32 1
  %arrayidx2044 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2043, i32 0, i64 0
  %rtvec2045 = bitcast %union.rtunion_def* %arrayidx2044 to %struct.rtvec_def**
  %1101 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2045, align 8
  %elem2046 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1101, i32 0, i32 1
  %arrayidx2047 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2046, i32 0, i64 1
  %1102 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2047, align 8
  %fld2048 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1102, i32 0, i32 1
  %arrayidx2049 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2048, i32 0, i64 1
  %rtx2050 = bitcast %union.rtunion_def* %arrayidx2049 to %struct.rtx_def**
  %1103 = load %struct.rtx_def*, %struct.rtx_def** %rtx2050, align 8
  %fld2051 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1103, i32 0, i32 1
  %arrayidx2052 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2051, i32 0, i64 0
  %rtx2053 = bitcast %union.rtunion_def* %arrayidx2052 to %struct.rtx_def**
  %1104 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2054 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1104, i64 3
  store %struct.rtx_def** %rtx2053, %struct.rtx_def*** %arrayidx2054, align 8
  %1105 = load %struct.rtx_def*, %struct.rtx_def** %rtx2053, align 8
  %1106 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2055 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1106, i64 3
  store %struct.rtx_def* %1105, %struct.rtx_def** %arrayidx2055, align 8
  %1107 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2056 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1107, i32 0, i32 1
  %arrayidx2057 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2056, i32 0, i64 0
  %rtvec2058 = bitcast %union.rtunion_def* %arrayidx2057 to %struct.rtvec_def**
  %1108 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2058, align 8
  %elem2059 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1108, i32 0, i32 1
  %arrayidx2060 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2059, i32 0, i64 2
  %1109 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2060, align 8
  %fld2061 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1109, i32 0, i32 1
  %arrayidx2062 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2061, i32 0, i64 1
  %rtx2063 = bitcast %union.rtunion_def* %arrayidx2062 to %struct.rtx_def**
  %1110 = load %struct.rtx_def*, %struct.rtx_def** %rtx2063, align 8
  %fld2064 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1110, i32 0, i32 1
  %arrayidx2065 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2064, i32 0, i64 0
  %rtx2066 = bitcast %union.rtunion_def* %arrayidx2065 to %struct.rtx_def**
  %1111 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2067 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1111, i64 4
  store %struct.rtx_def** %rtx2066, %struct.rtx_def*** %arrayidx2067, align 8
  %1112 = load %struct.rtx_def*, %struct.rtx_def** %rtx2066, align 8
  %1113 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2068 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1113, i64 4
  store %struct.rtx_def* %1112, %struct.rtx_def** %arrayidx2068, align 8
  %1114 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2069 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1114, i32 0, i32 1
  %arrayidx2070 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2069, i32 0, i64 0
  %rtvec2071 = bitcast %union.rtunion_def* %arrayidx2070 to %struct.rtvec_def**
  %1115 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2071, align 8
  %elem2072 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1115, i32 0, i32 1
  %arrayidx2073 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2072, i32 0, i64 1
  %1116 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2073, align 8
  %fld2074 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1116, i32 0, i32 1
  %arrayidx2075 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2074, i32 0, i64 1
  %rtx2076 = bitcast %union.rtunion_def* %arrayidx2075 to %struct.rtx_def**
  %1117 = load %struct.rtx_def*, %struct.rtx_def** %rtx2076, align 8
  %fld2077 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1117, i32 0, i32 1
  %arrayidx2078 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2077, i32 0, i64 1
  %rtx2079 = bitcast %union.rtunion_def* %arrayidx2078 to %struct.rtx_def**
  %1118 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2080 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1118, i64 5
  store %struct.rtx_def** %rtx2079, %struct.rtx_def*** %arrayidx2080, align 8
  %1119 = load %struct.rtx_def*, %struct.rtx_def** %rtx2079, align 8
  %1120 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2081 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1120, i64 5
  store %struct.rtx_def* %1119, %struct.rtx_def** %arrayidx2081, align 8
  %1121 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2082 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1121, i32 0, i32 1
  %arrayidx2083 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2082, i32 0, i64 0
  %rtvec2084 = bitcast %union.rtunion_def* %arrayidx2083 to %struct.rtvec_def**
  %1122 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2084, align 8
  %elem2085 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1122, i32 0, i32 1
  %arrayidx2086 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2085, i32 0, i64 4
  %1123 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2086, align 8
  %fld2087 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1123, i32 0, i32 1
  %arrayidx2088 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2087, i32 0, i64 0
  %rtx2089 = bitcast %union.rtunion_def* %arrayidx2088 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2089, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 5, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1124 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2090 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1124, i32 0, i32 1
  %arrayidx2091 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2090, i32 0, i64 0
  %rtvec2092 = bitcast %union.rtunion_def* %arrayidx2091 to %struct.rtvec_def**
  %1125 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2092, align 8
  %elem2093 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1125, i32 0, i32 1
  %arrayidx2094 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2093, i32 0, i64 3
  %1126 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2094, align 8
  %fld2095 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1126, i32 0, i32 1
  %arrayidx2096 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2095, i32 0, i64 0
  %rtx2097 = bitcast %union.rtunion_def* %arrayidx2096 to %struct.rtx_def**
  %1127 = load %struct.rtx_def*, %struct.rtx_def** %rtx2097, align 8
  %fld2098 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1127, i32 0, i32 1
  %arrayidx2099 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2098, i32 0, i64 0
  %rtx2100 = bitcast %union.rtunion_def* %arrayidx2099 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2100, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 3, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  %1128 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1128, i32 0, i32 1
  %arrayidx2102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2101, i32 0, i64 0
  %rtvec2103 = bitcast %union.rtunion_def* %arrayidx2102 to %struct.rtvec_def**
  %1129 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2103, align 8
  %elem2104 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1129, i32 0, i32 1
  %arrayidx2105 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2104, i32 0, i64 3
  %1130 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2105, align 8
  %fld2106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1130, i32 0, i32 1
  %arrayidx2107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2106, i32 0, i64 1
  %rtx2108 = bitcast %union.rtunion_def* %arrayidx2107 to %struct.rtx_def**
  %1131 = load %struct.rtx_def*, %struct.rtx_def** %rtx2108, align 8
  %fld2109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1131, i32 0, i32 1
  %arrayidx2110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2109, i32 0, i64 0
  %rtx2111 = bitcast %union.rtunion_def* %arrayidx2110 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2111, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 2), align 8
  store i8 4, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 2), align 1
  %1132 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1132, i32 0, i32 1
  %arrayidx2113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2112, i32 0, i64 0
  %rtvec2114 = bitcast %union.rtunion_def* %arrayidx2113 to %struct.rtvec_def**
  %1133 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2114, align 8
  %elem2115 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1133, i32 0, i32 1
  %arrayidx2116 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2115, i32 0, i64 2
  %1134 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2116, align 8
  %fld2117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1134, i32 0, i32 1
  %arrayidx2118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2117, i32 0, i64 1
  %rtx2119 = bitcast %union.rtunion_def* %arrayidx2118 to %struct.rtx_def**
  %1135 = load %struct.rtx_def*, %struct.rtx_def** %rtx2119, align 8
  %fld2120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1135, i32 0, i32 1
  %arrayidx2121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2120, i32 0, i64 1
  %rtx2122 = bitcast %union.rtunion_def* %arrayidx2121 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2122, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 3), align 8
  store i8 5, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 3), align 1
  br label %sw.epilog

sw.bb.2123:                                       ; preds = %entry, %entry, %entry
  %1136 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1136, i32 0, i32 1
  %arrayidx2125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2124, i32 0, i64 0
  %rtvec2126 = bitcast %union.rtunion_def* %arrayidx2125 to %struct.rtvec_def**
  %1137 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2126, align 8
  %elem2127 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1137, i32 0, i32 1
  %arrayidx2128 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2127, i32 0, i64 1
  %1138 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2128, align 8
  %fld2129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1138, i32 0, i32 1
  %arrayidx2130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2129, i32 0, i64 0
  %rtx2131 = bitcast %union.rtunion_def* %arrayidx2130 to %struct.rtx_def**
  %1139 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2132 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1139, i64 0
  store %struct.rtx_def** %rtx2131, %struct.rtx_def*** %arrayidx2132, align 8
  %1140 = load %struct.rtx_def*, %struct.rtx_def** %rtx2131, align 8
  %1141 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2133 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1141, i64 0
  store %struct.rtx_def* %1140, %struct.rtx_def** %arrayidx2133, align 8
  %1142 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1142, i32 0, i32 1
  %arrayidx2135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2134, i32 0, i64 0
  %rtvec2136 = bitcast %union.rtunion_def* %arrayidx2135 to %struct.rtvec_def**
  %1143 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2136, align 8
  %elem2137 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1143, i32 0, i32 1
  %arrayidx2138 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2137, i32 0, i64 2
  %1144 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2138, align 8
  %fld2139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1144, i32 0, i32 1
  %arrayidx2140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2139, i32 0, i64 0
  %rtx2141 = bitcast %union.rtunion_def* %arrayidx2140 to %struct.rtx_def**
  %1145 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2142 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1145, i64 1
  store %struct.rtx_def** %rtx2141, %struct.rtx_def*** %arrayidx2142, align 8
  %1146 = load %struct.rtx_def*, %struct.rtx_def** %rtx2141, align 8
  %1147 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2143 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1147, i64 1
  store %struct.rtx_def* %1146, %struct.rtx_def** %arrayidx2143, align 8
  %1148 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1148, i32 0, i32 1
  %arrayidx2145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2144, i32 0, i64 0
  %rtvec2146 = bitcast %union.rtunion_def* %arrayidx2145 to %struct.rtvec_def**
  %1149 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2146, align 8
  %elem2147 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1149, i32 0, i32 1
  %arrayidx2148 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2147, i32 0, i64 0
  %1150 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2148, align 8
  %fld2149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1150, i32 0, i32 1
  %arrayidx2150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2149, i32 0, i64 0
  %rtx2151 = bitcast %union.rtunion_def* %arrayidx2150 to %struct.rtx_def**
  %1151 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2152 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1151, i64 2
  store %struct.rtx_def** %rtx2151, %struct.rtx_def*** %arrayidx2152, align 8
  %1152 = load %struct.rtx_def*, %struct.rtx_def** %rtx2151, align 8
  %1153 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2153 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1153, i64 2
  store %struct.rtx_def* %1152, %struct.rtx_def** %arrayidx2153, align 8
  %1154 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1154, i32 0, i32 1
  %arrayidx2155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2154, i32 0, i64 0
  %rtvec2156 = bitcast %union.rtunion_def* %arrayidx2155 to %struct.rtvec_def**
  %1155 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2156, align 8
  %elem2157 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1155, i32 0, i32 1
  %arrayidx2158 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2157, i32 0, i64 1
  %1156 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2158, align 8
  %fld2159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1156, i32 0, i32 1
  %arrayidx2160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2159, i32 0, i64 1
  %rtx2161 = bitcast %union.rtunion_def* %arrayidx2160 to %struct.rtx_def**
  %1157 = load %struct.rtx_def*, %struct.rtx_def** %rtx2161, align 8
  %fld2162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1157, i32 0, i32 1
  %arrayidx2163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2162, i32 0, i64 1
  %rtx2164 = bitcast %union.rtunion_def* %arrayidx2163 to %struct.rtx_def**
  %1158 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2165 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1158, i64 3
  store %struct.rtx_def** %rtx2164, %struct.rtx_def*** %arrayidx2165, align 8
  %1159 = load %struct.rtx_def*, %struct.rtx_def** %rtx2164, align 8
  %1160 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2166 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1160, i64 3
  store %struct.rtx_def* %1159, %struct.rtx_def** %arrayidx2166, align 8
  %1161 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1161, i32 0, i32 1
  %arrayidx2168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2167, i32 0, i64 0
  %rtvec2169 = bitcast %union.rtunion_def* %arrayidx2168 to %struct.rtvec_def**
  %1162 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2169, align 8
  %elem2170 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1162, i32 0, i32 1
  %arrayidx2171 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2170, i32 0, i64 2
  %1163 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2171, align 8
  %fld2172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1163, i32 0, i32 1
  %arrayidx2173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2172, i32 0, i64 1
  %rtx2174 = bitcast %union.rtunion_def* %arrayidx2173 to %struct.rtx_def**
  %1164 = load %struct.rtx_def*, %struct.rtx_def** %rtx2174, align 8
  %fld2175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1164, i32 0, i32 1
  %arrayidx2176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2175, i32 0, i64 1
  %rtx2177 = bitcast %union.rtunion_def* %arrayidx2176 to %struct.rtx_def**
  %1165 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2178 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1165, i64 4
  store %struct.rtx_def** %rtx2177, %struct.rtx_def*** %arrayidx2178, align 8
  %1166 = load %struct.rtx_def*, %struct.rtx_def** %rtx2177, align 8
  %1167 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2179 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1167, i64 4
  store %struct.rtx_def* %1166, %struct.rtx_def** %arrayidx2179, align 8
  %1168 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1168, i32 0, i32 1
  %arrayidx2181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2180, i32 0, i64 0
  %rtvec2182 = bitcast %union.rtunion_def* %arrayidx2181 to %struct.rtvec_def**
  %1169 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2182, align 8
  %elem2183 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1169, i32 0, i32 1
  %arrayidx2184 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2183, i32 0, i64 1
  %1170 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2184, align 8
  %fld2185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1170, i32 0, i32 1
  %arrayidx2186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2185, i32 0, i64 1
  %rtx2187 = bitcast %union.rtunion_def* %arrayidx2186 to %struct.rtx_def**
  %1171 = load %struct.rtx_def*, %struct.rtx_def** %rtx2187, align 8
  %fld2188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1171, i32 0, i32 1
  %arrayidx2189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2188, i32 0, i64 0
  %rtx2190 = bitcast %union.rtunion_def* %arrayidx2189 to %struct.rtx_def**
  %1172 = load %struct.rtx_def*, %struct.rtx_def** %rtx2190, align 8
  %fld2191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1172, i32 0, i32 1
  %arrayidx2192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2191, i32 0, i64 0
  %rtx2193 = bitcast %union.rtunion_def* %arrayidx2192 to %struct.rtx_def**
  %1173 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2194 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1173, i64 5
  store %struct.rtx_def** %rtx2193, %struct.rtx_def*** %arrayidx2194, align 8
  %1174 = load %struct.rtx_def*, %struct.rtx_def** %rtx2193, align 8
  %1175 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2195 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1175, i64 5
  store %struct.rtx_def* %1174, %struct.rtx_def** %arrayidx2195, align 8
  %1176 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1176, i32 0, i32 1
  %arrayidx2197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2196, i32 0, i64 0
  %rtvec2198 = bitcast %union.rtunion_def* %arrayidx2197 to %struct.rtvec_def**
  %1177 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2198, align 8
  %elem2199 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1177, i32 0, i32 1
  %arrayidx2200 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2199, i32 0, i64 4
  %1178 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2200, align 8
  %fld2201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1178, i32 0, i32 1
  %arrayidx2202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2201, i32 0, i64 0
  %rtx2203 = bitcast %union.rtunion_def* %arrayidx2202 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2203, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 5, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1179 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1179, i32 0, i32 1
  %arrayidx2205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2204, i32 0, i64 0
  %rtvec2206 = bitcast %union.rtunion_def* %arrayidx2205 to %struct.rtvec_def**
  %1180 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2206, align 8
  %elem2207 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1180, i32 0, i32 1
  %arrayidx2208 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2207, i32 0, i64 3
  %1181 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2208, align 8
  %fld2209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1181, i32 0, i32 1
  %arrayidx2210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2209, i32 0, i64 0
  %rtx2211 = bitcast %union.rtunion_def* %arrayidx2210 to %struct.rtx_def**
  %1182 = load %struct.rtx_def*, %struct.rtx_def** %rtx2211, align 8
  %fld2212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1182, i32 0, i32 1
  %arrayidx2213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2212, i32 0, i64 0
  %rtx2214 = bitcast %union.rtunion_def* %arrayidx2213 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2214, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 3, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  %1183 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1183, i32 0, i32 1
  %arrayidx2216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2215, i32 0, i64 0
  %rtvec2217 = bitcast %union.rtunion_def* %arrayidx2216 to %struct.rtvec_def**
  %1184 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2217, align 8
  %elem2218 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1184, i32 0, i32 1
  %arrayidx2219 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2218, i32 0, i64 3
  %1185 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2219, align 8
  %fld2220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1185, i32 0, i32 1
  %arrayidx2221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2220, i32 0, i64 1
  %rtx2222 = bitcast %union.rtunion_def* %arrayidx2221 to %struct.rtx_def**
  %1186 = load %struct.rtx_def*, %struct.rtx_def** %rtx2222, align 8
  %fld2223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1186, i32 0, i32 1
  %arrayidx2224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2223, i32 0, i64 0
  %rtx2225 = bitcast %union.rtunion_def* %arrayidx2224 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2225, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 2), align 8
  store i8 4, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 2), align 1
  %1187 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1187, i32 0, i32 1
  %arrayidx2227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2226, i32 0, i64 0
  %rtvec2228 = bitcast %union.rtunion_def* %arrayidx2227 to %struct.rtvec_def**
  %1188 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2228, align 8
  %elem2229 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1188, i32 0, i32 1
  %arrayidx2230 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2229, i32 0, i64 2
  %1189 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2230, align 8
  %fld2231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1189, i32 0, i32 1
  %arrayidx2232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2231, i32 0, i64 1
  %rtx2233 = bitcast %union.rtunion_def* %arrayidx2232 to %struct.rtx_def**
  %1190 = load %struct.rtx_def*, %struct.rtx_def** %rtx2233, align 8
  %fld2234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1190, i32 0, i32 1
  %arrayidx2235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2234, i32 0, i64 0
  %rtx2236 = bitcast %union.rtunion_def* %arrayidx2235 to %struct.rtx_def**
  %1191 = load %struct.rtx_def*, %struct.rtx_def** %rtx2236, align 8
  %fld2237 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1191, i32 0, i32 1
  %arrayidx2238 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2237, i32 0, i64 0
  %rtx2239 = bitcast %union.rtunion_def* %arrayidx2238 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2239, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 3), align 8
  store i8 5, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 3), align 1
  br label %sw.epilog

sw.bb.2240:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1192 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1192, i32 0, i32 1
  %arrayidx2242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2241, i32 0, i64 0
  %rtvec2243 = bitcast %union.rtunion_def* %arrayidx2242 to %struct.rtvec_def**
  %1193 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2243, align 8
  %elem2244 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1193, i32 0, i32 1
  %arrayidx2245 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2244, i32 0, i64 1
  %1194 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2245, align 8
  %fld2246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1194, i32 0, i32 1
  %arrayidx2247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2246, i32 0, i64 0
  %rtx2248 = bitcast %union.rtunion_def* %arrayidx2247 to %struct.rtx_def**
  %1195 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2249 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1195, i64 0
  store %struct.rtx_def** %rtx2248, %struct.rtx_def*** %arrayidx2249, align 8
  %1196 = load %struct.rtx_def*, %struct.rtx_def** %rtx2248, align 8
  %1197 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2250 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1197, i64 0
  store %struct.rtx_def* %1196, %struct.rtx_def** %arrayidx2250, align 8
  %1198 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1198, i32 0, i32 1
  %arrayidx2252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2251, i32 0, i64 0
  %rtvec2253 = bitcast %union.rtunion_def* %arrayidx2252 to %struct.rtvec_def**
  %1199 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2253, align 8
  %elem2254 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1199, i32 0, i32 1
  %arrayidx2255 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2254, i32 0, i64 2
  %1200 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2255, align 8
  %fld2256 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1200, i32 0, i32 1
  %arrayidx2257 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2256, i32 0, i64 0
  %rtx2258 = bitcast %union.rtunion_def* %arrayidx2257 to %struct.rtx_def**
  %1201 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2259 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1201, i64 1
  store %struct.rtx_def** %rtx2258, %struct.rtx_def*** %arrayidx2259, align 8
  %1202 = load %struct.rtx_def*, %struct.rtx_def** %rtx2258, align 8
  %1203 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2260 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1203, i64 1
  store %struct.rtx_def* %1202, %struct.rtx_def** %arrayidx2260, align 8
  %1204 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2261 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1204, i32 0, i32 1
  %arrayidx2262 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2261, i32 0, i64 0
  %rtvec2263 = bitcast %union.rtunion_def* %arrayidx2262 to %struct.rtvec_def**
  %1205 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2263, align 8
  %elem2264 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1205, i32 0, i32 1
  %arrayidx2265 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2264, i32 0, i64 0
  %1206 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2265, align 8
  %fld2266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1206, i32 0, i32 1
  %arrayidx2267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2266, i32 0, i64 0
  %rtx2268 = bitcast %union.rtunion_def* %arrayidx2267 to %struct.rtx_def**
  %1207 = load %struct.rtx_def*, %struct.rtx_def** %rtx2268, align 8
  %fld2269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1207, i32 0, i32 1
  %arrayidx2270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2269, i32 0, i64 0
  %rtx2271 = bitcast %union.rtunion_def* %arrayidx2270 to %struct.rtx_def**
  %1208 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2272 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1208, i64 2
  store %struct.rtx_def** %rtx2271, %struct.rtx_def*** %arrayidx2272, align 8
  %1209 = load %struct.rtx_def*, %struct.rtx_def** %rtx2271, align 8
  %1210 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2273 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1210, i64 2
  store %struct.rtx_def* %1209, %struct.rtx_def** %arrayidx2273, align 8
  %1211 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1211, i32 0, i32 1
  %arrayidx2275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2274, i32 0, i64 0
  %rtvec2276 = bitcast %union.rtunion_def* %arrayidx2275 to %struct.rtvec_def**
  %1212 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2276, align 8
  %elem2277 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1212, i32 0, i32 1
  %arrayidx2278 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2277, i32 0, i64 0
  %1213 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2278, align 8
  %fld2279 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1213, i32 0, i32 1
  %arrayidx2280 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2279, i32 0, i64 1
  %rtx2281 = bitcast %union.rtunion_def* %arrayidx2280 to %struct.rtx_def**
  %1214 = load %struct.rtx_def*, %struct.rtx_def** %rtx2281, align 8
  %fld2282 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1214, i32 0, i32 1
  %arrayidx2283 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2282, i32 0, i64 0
  %rtx2284 = bitcast %union.rtunion_def* %arrayidx2283 to %struct.rtx_def**
  %1215 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2285 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1215, i64 3
  store %struct.rtx_def** %rtx2284, %struct.rtx_def*** %arrayidx2285, align 8
  %1216 = load %struct.rtx_def*, %struct.rtx_def** %rtx2284, align 8
  %1217 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2286 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1217, i64 3
  store %struct.rtx_def* %1216, %struct.rtx_def** %arrayidx2286, align 8
  %1218 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1218, i32 0, i32 1
  %arrayidx2288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2287, i32 0, i64 0
  %rtvec2289 = bitcast %union.rtunion_def* %arrayidx2288 to %struct.rtvec_def**
  %1219 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2289, align 8
  %elem2290 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1219, i32 0, i32 1
  %arrayidx2291 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2290, i32 0, i64 2
  %1220 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2291, align 8
  %fld2292 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1220, i32 0, i32 1
  %arrayidx2293 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2292, i32 0, i64 1
  %rtx2294 = bitcast %union.rtunion_def* %arrayidx2293 to %struct.rtx_def**
  %1221 = load %struct.rtx_def*, %struct.rtx_def** %rtx2294, align 8
  %fld2295 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1221, i32 0, i32 1
  %arrayidx2296 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2295, i32 0, i64 0
  %rtx2297 = bitcast %union.rtunion_def* %arrayidx2296 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2297, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 3, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1222 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2298 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1222, i32 0, i32 1
  %arrayidx2299 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2298, i32 0, i64 0
  %rtvec2300 = bitcast %union.rtunion_def* %arrayidx2299 to %struct.rtvec_def**
  %1223 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2300, align 8
  %elem2301 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1223, i32 0, i32 1
  %arrayidx2302 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2301, i32 0, i64 1
  %1224 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2302, align 8
  %fld2303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1224, i32 0, i32 1
  %arrayidx2304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2303, i32 0, i64 1
  %rtx2305 = bitcast %union.rtunion_def* %arrayidx2304 to %struct.rtx_def**
  %1225 = load %struct.rtx_def*, %struct.rtx_def** %rtx2305, align 8
  %fld2306 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1225, i32 0, i32 1
  %arrayidx2307 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2306, i32 0, i64 0
  %rtx2308 = bitcast %union.rtunion_def* %arrayidx2307 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2308, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.2309:                                       ; preds = %entry, %entry
  %1226 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2310 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1226, i32 0, i32 1
  %arrayidx2311 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2310, i32 0, i64 0
  %rtx2312 = bitcast %union.rtunion_def* %arrayidx2311 to %struct.rtx_def**
  %1227 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2313 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1227, i64 0
  store %struct.rtx_def** %rtx2312, %struct.rtx_def*** %arrayidx2313, align 8
  %1228 = load %struct.rtx_def*, %struct.rtx_def** %rtx2312, align 8
  %1229 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2314 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1229, i64 0
  store %struct.rtx_def* %1228, %struct.rtx_def** %arrayidx2314, align 8
  %1230 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2315 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1230, i32 0, i32 1
  %arrayidx2316 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2315, i32 0, i64 1
  %rtx2317 = bitcast %union.rtunion_def* %arrayidx2316 to %struct.rtx_def**
  %1231 = load %struct.rtx_def*, %struct.rtx_def** %rtx2317, align 8
  %fld2318 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1231, i32 0, i32 1
  %arrayidx2319 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2318, i32 0, i64 0
  %rtvec2320 = bitcast %union.rtunion_def* %arrayidx2319 to %struct.rtvec_def**
  %1232 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2320, align 8
  %elem2321 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1232, i32 0, i32 1
  %arrayidx2322 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2321, i32 0, i64 0
  %1233 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2322, align 8
  %fld2323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1233, i32 0, i32 1
  %arrayidx2324 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2323, i32 0, i64 0
  %rtx2325 = bitcast %union.rtunion_def* %arrayidx2324 to %struct.rtx_def**
  %1234 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2326 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1234, i64 1
  store %struct.rtx_def** %rtx2325, %struct.rtx_def*** %arrayidx2326, align 8
  %1235 = load %struct.rtx_def*, %struct.rtx_def** %rtx2325, align 8
  %1236 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2327 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1236, i64 1
  store %struct.rtx_def* %1235, %struct.rtx_def** %arrayidx2327, align 8
  br label %sw.epilog

sw.bb.2328:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1237 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2329 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1237, i32 0, i32 1
  %arrayidx2330 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2329, i32 0, i64 0
  %rtx2331 = bitcast %union.rtunion_def* %arrayidx2330 to %struct.rtx_def**
  %1238 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2332 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1238, i64 0
  store %struct.rtx_def** %rtx2331, %struct.rtx_def*** %arrayidx2332, align 8
  %1239 = load %struct.rtx_def*, %struct.rtx_def** %rtx2331, align 8
  %1240 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2333 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1240, i64 0
  store %struct.rtx_def* %1239, %struct.rtx_def** %arrayidx2333, align 8
  %1241 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2334 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1241, i32 0, i32 1
  %arrayidx2335 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2334, i32 0, i64 1
  %rtx2336 = bitcast %union.rtunion_def* %arrayidx2335 to %struct.rtx_def**
  %1242 = load %struct.rtx_def*, %struct.rtx_def** %rtx2336, align 8
  %fld2337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1242, i32 0, i32 1
  %arrayidx2338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2337, i32 0, i64 0
  %rtvec2339 = bitcast %union.rtunion_def* %arrayidx2338 to %struct.rtvec_def**
  %1243 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2339, align 8
  %elem2340 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1243, i32 0, i32 1
  %arrayidx2341 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2340, i32 0, i64 0
  %1244 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2342 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1244, i64 1
  store %struct.rtx_def** %arrayidx2341, %struct.rtx_def*** %arrayidx2342, align 8
  %1245 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2341, align 8
  %1246 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2343 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1246, i64 1
  store %struct.rtx_def* %1245, %struct.rtx_def** %arrayidx2343, align 8
  br label %sw.epilog

sw.bb.2344:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1247 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2345 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1247, i32 0, i32 1
  %arrayidx2346 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2345, i32 0, i64 0
  %rtx2347 = bitcast %union.rtunion_def* %arrayidx2346 to %struct.rtx_def**
  %1248 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2348 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1248, i64 0
  store %struct.rtx_def** %rtx2347, %struct.rtx_def*** %arrayidx2348, align 8
  %1249 = load %struct.rtx_def*, %struct.rtx_def** %rtx2347, align 8
  %1250 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2349 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1250, i64 0
  store %struct.rtx_def* %1249, %struct.rtx_def** %arrayidx2349, align 8
  %1251 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2350 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1251, i32 0, i32 1
  %arrayidx2351 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2350, i32 0, i64 1
  %rtx2352 = bitcast %union.rtunion_def* %arrayidx2351 to %struct.rtx_def**
  %1252 = load %struct.rtx_def*, %struct.rtx_def** %rtx2352, align 8
  %fld2353 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1252, i32 0, i32 1
  %arrayidx2354 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2353, i32 0, i64 0
  %rtx2355 = bitcast %union.rtunion_def* %arrayidx2354 to %struct.rtx_def**
  %1253 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2356 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1253, i64 1
  store %struct.rtx_def** %rtx2355, %struct.rtx_def*** %arrayidx2356, align 8
  %1254 = load %struct.rtx_def*, %struct.rtx_def** %rtx2355, align 8
  %1255 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2357 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1255, i64 1
  store %struct.rtx_def* %1254, %struct.rtx_def** %arrayidx2357, align 8
  %1256 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1256, i32 0, i32 1
  %arrayidx2359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2358, i32 0, i64 1
  %rtx2360 = bitcast %union.rtunion_def* %arrayidx2359 to %struct.rtx_def**
  %1257 = load %struct.rtx_def*, %struct.rtx_def** %rtx2360, align 8
  %fld2361 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1257, i32 0, i32 1
  %arrayidx2362 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2361, i32 0, i64 1
  %rtx2363 = bitcast %union.rtunion_def* %arrayidx2362 to %struct.rtx_def**
  %1258 = load %struct.rtx_def*, %struct.rtx_def** %rtx2363, align 8
  %fld2364 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1258, i32 0, i32 1
  %arrayidx2365 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2364, i32 0, i64 0
  %rtx2366 = bitcast %union.rtunion_def* %arrayidx2365 to %struct.rtx_def**
  %1259 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2367 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1259, i64 2
  store %struct.rtx_def** %rtx2366, %struct.rtx_def*** %arrayidx2367, align 8
  %1260 = load %struct.rtx_def*, %struct.rtx_def** %rtx2366, align 8
  %1261 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2368 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1261, i64 2
  store %struct.rtx_def* %1260, %struct.rtx_def** %arrayidx2368, align 8
  %1262 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1262, i32 0, i32 1
  %arrayidx2370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2369, i32 0, i64 1
  %rtx2371 = bitcast %union.rtunion_def* %arrayidx2370 to %struct.rtx_def**
  %1263 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2372 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1263, i64 3
  store %struct.rtx_def** %rtx2371, %struct.rtx_def*** %arrayidx2372, align 8
  %1264 = load %struct.rtx_def*, %struct.rtx_def** %rtx2371, align 8
  %1265 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2373 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1265, i64 3
  store %struct.rtx_def* %1264, %struct.rtx_def** %arrayidx2373, align 8
  br label %sw.epilog

sw.bb.2374:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1266 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2375 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1266, i32 0, i32 1
  %arrayidx2376 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2375, i32 0, i64 0
  %rtx2377 = bitcast %union.rtunion_def* %arrayidx2376 to %struct.rtx_def**
  %1267 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2378 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1267, i64 0
  store %struct.rtx_def** %rtx2377, %struct.rtx_def*** %arrayidx2378, align 8
  %1268 = load %struct.rtx_def*, %struct.rtx_def** %rtx2377, align 8
  %1269 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2379 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1269, i64 0
  store %struct.rtx_def* %1268, %struct.rtx_def** %arrayidx2379, align 8
  %1270 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2380 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1270, i32 0, i32 1
  %arrayidx2381 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2380, i32 0, i64 1
  %rtx2382 = bitcast %union.rtunion_def* %arrayidx2381 to %struct.rtx_def**
  %1271 = load %struct.rtx_def*, %struct.rtx_def** %rtx2382, align 8
  %fld2383 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1271, i32 0, i32 1
  %arrayidx2384 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2383, i32 0, i64 0
  %rtx2385 = bitcast %union.rtunion_def* %arrayidx2384 to %struct.rtx_def**
  %1272 = load %struct.rtx_def*, %struct.rtx_def** %rtx2385, align 8
  %fld2386 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1272, i32 0, i32 1
  %arrayidx2387 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2386, i32 0, i64 0
  %rtx2388 = bitcast %union.rtunion_def* %arrayidx2387 to %struct.rtx_def**
  %1273 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2389 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1273, i64 1
  store %struct.rtx_def** %rtx2388, %struct.rtx_def*** %arrayidx2389, align 8
  %1274 = load %struct.rtx_def*, %struct.rtx_def** %rtx2388, align 8
  %1275 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2390 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1275, i64 1
  store %struct.rtx_def* %1274, %struct.rtx_def** %arrayidx2390, align 8
  %1276 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2391 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1276, i32 0, i32 1
  %arrayidx2392 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2391, i32 0, i64 1
  %rtx2393 = bitcast %union.rtunion_def* %arrayidx2392 to %struct.rtx_def**
  %1277 = load %struct.rtx_def*, %struct.rtx_def** %rtx2393, align 8
  %fld2394 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1277, i32 0, i32 1
  %arrayidx2395 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2394, i32 0, i64 1
  %rtx2396 = bitcast %union.rtunion_def* %arrayidx2395 to %struct.rtx_def**
  %1278 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2397 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1278, i64 2
  store %struct.rtx_def** %rtx2396, %struct.rtx_def*** %arrayidx2397, align 8
  %1279 = load %struct.rtx_def*, %struct.rtx_def** %rtx2396, align 8
  %1280 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2398 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1280, i64 2
  store %struct.rtx_def* %1279, %struct.rtx_def** %arrayidx2398, align 8
  %1281 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2399 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1281, i32 0, i32 1
  %arrayidx2400 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2399, i32 0, i64 1
  %rtx2401 = bitcast %union.rtunion_def* %arrayidx2400 to %struct.rtx_def**
  %1282 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2402 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1282, i64 3
  store %struct.rtx_def** %rtx2401, %struct.rtx_def*** %arrayidx2402, align 8
  %1283 = load %struct.rtx_def*, %struct.rtx_def** %rtx2401, align 8
  %1284 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2403 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1284, i64 3
  store %struct.rtx_def* %1283, %struct.rtx_def** %arrayidx2403, align 8
  br label %sw.epilog

sw.bb.2404:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1285 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2405 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1285, i32 0, i32 1
  %arrayidx2406 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2405, i32 0, i64 0
  %rtx2407 = bitcast %union.rtunion_def* %arrayidx2406 to %struct.rtx_def**
  %1286 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2408 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1286, i64 0
  store %struct.rtx_def** %rtx2407, %struct.rtx_def*** %arrayidx2408, align 8
  %1287 = load %struct.rtx_def*, %struct.rtx_def** %rtx2407, align 8
  %1288 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2409 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1288, i64 0
  store %struct.rtx_def* %1287, %struct.rtx_def** %arrayidx2409, align 8
  %1289 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1289, i32 0, i32 1
  %arrayidx2411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2410, i32 0, i64 1
  %rtx2412 = bitcast %union.rtunion_def* %arrayidx2411 to %struct.rtx_def**
  %1290 = load %struct.rtx_def*, %struct.rtx_def** %rtx2412, align 8
  %fld2413 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1290, i32 0, i32 1
  %arrayidx2414 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2413, i32 0, i64 0
  %rtx2415 = bitcast %union.rtunion_def* %arrayidx2414 to %struct.rtx_def**
  %1291 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2416 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1291, i64 1
  store %struct.rtx_def** %rtx2415, %struct.rtx_def*** %arrayidx2416, align 8
  %1292 = load %struct.rtx_def*, %struct.rtx_def** %rtx2415, align 8
  %1293 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2417 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1293, i64 1
  store %struct.rtx_def* %1292, %struct.rtx_def** %arrayidx2417, align 8
  %1294 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1294, i32 0, i32 1
  %arrayidx2419 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2418, i32 0, i64 1
  %rtx2420 = bitcast %union.rtunion_def* %arrayidx2419 to %struct.rtx_def**
  %1295 = load %struct.rtx_def*, %struct.rtx_def** %rtx2420, align 8
  %fld2421 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1295, i32 0, i32 1
  %arrayidx2422 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2421, i32 0, i64 1
  %rtx2423 = bitcast %union.rtunion_def* %arrayidx2422 to %struct.rtx_def**
  %1296 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2424 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1296, i64 2
  store %struct.rtx_def** %rtx2423, %struct.rtx_def*** %arrayidx2424, align 8
  %1297 = load %struct.rtx_def*, %struct.rtx_def** %rtx2423, align 8
  %1298 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2425 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1298, i64 2
  store %struct.rtx_def* %1297, %struct.rtx_def** %arrayidx2425, align 8
  %1299 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2426 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1299, i32 0, i32 1
  %arrayidx2427 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2426, i32 0, i64 1
  %rtx2428 = bitcast %union.rtunion_def* %arrayidx2427 to %struct.rtx_def**
  %1300 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2429 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1300, i64 3
  store %struct.rtx_def** %rtx2428, %struct.rtx_def*** %arrayidx2429, align 8
  %1301 = load %struct.rtx_def*, %struct.rtx_def** %rtx2428, align 8
  %1302 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2430 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1302, i64 3
  store %struct.rtx_def* %1301, %struct.rtx_def** %arrayidx2430, align 8
  br label %sw.epilog

sw.bb.2431:                                       ; preds = %entry
  %1303 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2432 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1303, i32 0, i32 1
  %arrayidx2433 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2432, i32 0, i64 0
  %rtvec2434 = bitcast %union.rtunion_def* %arrayidx2433 to %struct.rtvec_def**
  %1304 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2434, align 8
  %elem2435 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1304, i32 0, i32 1
  %arrayidx2436 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2435, i32 0, i64 1
  %1305 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2436, align 8
  %fld2437 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1305, i32 0, i32 1
  %arrayidx2438 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2437, i32 0, i64 0
  %rtx2439 = bitcast %union.rtunion_def* %arrayidx2438 to %struct.rtx_def**
  %1306 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2440 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1306, i64 0
  store %struct.rtx_def** %rtx2439, %struct.rtx_def*** %arrayidx2440, align 8
  %1307 = load %struct.rtx_def*, %struct.rtx_def** %rtx2439, align 8
  %1308 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2441 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1308, i64 0
  store %struct.rtx_def* %1307, %struct.rtx_def** %arrayidx2441, align 8
  %1309 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2442 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1309, i32 0, i32 1
  %arrayidx2443 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2442, i32 0, i64 0
  %rtvec2444 = bitcast %union.rtunion_def* %arrayidx2443 to %struct.rtvec_def**
  %1310 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2444, align 8
  %elem2445 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1310, i32 0, i32 1
  %arrayidx2446 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2445, i32 0, i64 0
  %1311 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2446, align 8
  %fld2447 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1311, i32 0, i32 1
  %arrayidx2448 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2447, i32 0, i64 1
  %rtx2449 = bitcast %union.rtunion_def* %arrayidx2448 to %struct.rtx_def**
  %1312 = load %struct.rtx_def*, %struct.rtx_def** %rtx2449, align 8
  %fld2450 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1312, i32 0, i32 1
  %arrayidx2451 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2450, i32 0, i64 0
  %rtx2452 = bitcast %union.rtunion_def* %arrayidx2451 to %struct.rtx_def**
  %1313 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2453 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1313, i64 1
  store %struct.rtx_def** %rtx2452, %struct.rtx_def*** %arrayidx2453, align 8
  %1314 = load %struct.rtx_def*, %struct.rtx_def** %rtx2452, align 8
  %1315 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2454 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1315, i64 1
  store %struct.rtx_def* %1314, %struct.rtx_def** %arrayidx2454, align 8
  %1316 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1316, i32 0, i32 1
  %arrayidx2456 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2455, i32 0, i64 0
  %rtvec2457 = bitcast %union.rtunion_def* %arrayidx2456 to %struct.rtvec_def**
  %1317 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2457, align 8
  %elem2458 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1317, i32 0, i32 1
  %arrayidx2459 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2458, i32 0, i64 1
  %1318 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2459, align 8
  %fld2460 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1318, i32 0, i32 1
  %arrayidx2461 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2460, i32 0, i64 1
  %rtx2462 = bitcast %union.rtunion_def* %arrayidx2461 to %struct.rtx_def**
  %1319 = load %struct.rtx_def*, %struct.rtx_def** %rtx2462, align 8
  %fld2463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1319, i32 0, i32 1
  %arrayidx2464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2463, i32 0, i64 0
  %rtvec2465 = bitcast %union.rtunion_def* %arrayidx2464 to %struct.rtvec_def**
  %1320 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2465, align 8
  %elem2466 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1320, i32 0, i32 1
  %arrayidx2467 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2466, i32 0, i64 0
  store %struct.rtx_def** %arrayidx2467, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.2468:                                       ; preds = %entry, %entry, %entry
  %1321 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2469 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1321, i32 0, i32 1
  %arrayidx2470 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2469, i32 0, i64 0
  %rtvec2471 = bitcast %union.rtunion_def* %arrayidx2470 to %struct.rtvec_def**
  %1322 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2471, align 8
  %elem2472 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1322, i32 0, i32 1
  %arrayidx2473 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2472, i32 0, i64 0
  %1323 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2474 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1323, i64 0
  store %struct.rtx_def** %arrayidx2473, %struct.rtx_def*** %arrayidx2474, align 8
  %1324 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2473, align 8
  %1325 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2475 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1325, i64 0
  store %struct.rtx_def* %1324, %struct.rtx_def** %arrayidx2475, align 8
  br label %sw.epilog

sw.bb.2476:                                       ; preds = %entry
  %1326 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2477 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1326, i32 0, i32 1
  %arrayidx2478 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2477, i32 0, i64 0
  %rtx2479 = bitcast %union.rtunion_def* %arrayidx2478 to %struct.rtx_def**
  %1327 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2480 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1327, i64 0
  store %struct.rtx_def** %rtx2479, %struct.rtx_def*** %arrayidx2480, align 8
  %1328 = load %struct.rtx_def*, %struct.rtx_def** %rtx2479, align 8
  %1329 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2481 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1329, i64 0
  store %struct.rtx_def* %1328, %struct.rtx_def** %arrayidx2481, align 8
  %1330 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2482 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1330, i32 0, i32 1
  %arrayidx2483 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2482, i32 0, i64 1
  %rtx2484 = bitcast %union.rtunion_def* %arrayidx2483 to %struct.rtx_def**
  %1331 = load %struct.rtx_def*, %struct.rtx_def** %rtx2484, align 8
  %fld2485 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1331, i32 0, i32 1
  %arrayidx2486 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2485, i32 0, i64 0
  %rtvec2487 = bitcast %union.rtunion_def* %arrayidx2486 to %struct.rtvec_def**
  %1332 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2487, align 8
  %elem2488 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1332, i32 0, i32 1
  %arrayidx2489 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2488, i32 0, i64 0
  %1333 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2489, align 8
  %fld2490 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1333, i32 0, i32 1
  %arrayidx2491 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2490, i32 0, i64 1
  %rtx2492 = bitcast %union.rtunion_def* %arrayidx2491 to %struct.rtx_def**
  %1334 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2493 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1334, i64 1
  store %struct.rtx_def** %rtx2492, %struct.rtx_def*** %arrayidx2493, align 8
  %1335 = load %struct.rtx_def*, %struct.rtx_def** %rtx2492, align 8
  %1336 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2494 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1336, i64 1
  store %struct.rtx_def* %1335, %struct.rtx_def** %arrayidx2494, align 8
  br label %sw.epilog

sw.bb.2495:                                       ; preds = %entry
  %1337 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2496 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1337, i32 0, i32 1
  %arrayidx2497 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2496, i32 0, i64 0
  %rtvec2498 = bitcast %union.rtunion_def* %arrayidx2497 to %struct.rtvec_def**
  %1338 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2498, align 8
  %elem2499 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1338, i32 0, i32 1
  %arrayidx2500 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2499, i32 0, i64 0
  %1339 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2500, align 8
  %fld2501 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1339, i32 0, i32 1
  %arrayidx2502 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2501, i32 0, i64 0
  %rtx2503 = bitcast %union.rtunion_def* %arrayidx2502 to %struct.rtx_def**
  %1340 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2504 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1340, i64 0
  store %struct.rtx_def** %rtx2503, %struct.rtx_def*** %arrayidx2504, align 8
  %1341 = load %struct.rtx_def*, %struct.rtx_def** %rtx2503, align 8
  %1342 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2505 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1342, i64 0
  store %struct.rtx_def* %1341, %struct.rtx_def** %arrayidx2505, align 8
  %1343 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1343, i32 0, i32 1
  %arrayidx2507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2506, i32 0, i64 0
  %rtvec2508 = bitcast %union.rtunion_def* %arrayidx2507 to %struct.rtvec_def**
  %1344 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2508, align 8
  %elem2509 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1344, i32 0, i32 1
  %arrayidx2510 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2509, i32 0, i64 0
  %1345 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2510, align 8
  %fld2511 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1345, i32 0, i32 1
  %arrayidx2512 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2511, i32 0, i64 1
  %rtx2513 = bitcast %union.rtunion_def* %arrayidx2512 to %struct.rtx_def**
  %1346 = load %struct.rtx_def*, %struct.rtx_def** %rtx2513, align 8
  %fld2514 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1346, i32 0, i32 1
  %arrayidx2515 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2514, i32 0, i64 0
  %rtvec2516 = bitcast %union.rtunion_def* %arrayidx2515 to %struct.rtvec_def**
  %1347 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2516, align 8
  %elem2517 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1347, i32 0, i32 1
  %arrayidx2518 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2517, i32 0, i64 0
  %1348 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2518, align 8
  %fld2519 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1348, i32 0, i32 1
  %arrayidx2520 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2519, i32 0, i64 1
  %rtx2521 = bitcast %union.rtunion_def* %arrayidx2520 to %struct.rtx_def**
  %1349 = load %struct.rtx_def*, %struct.rtx_def** %rtx2521, align 8
  %fld2522 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1349, i32 0, i32 1
  %arrayidx2523 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2522, i32 0, i64 0
  %rtx2524 = bitcast %union.rtunion_def* %arrayidx2523 to %struct.rtx_def**
  %1350 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2525 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1350, i64 1
  store %struct.rtx_def** %rtx2524, %struct.rtx_def*** %arrayidx2525, align 8
  %1351 = load %struct.rtx_def*, %struct.rtx_def** %rtx2524, align 8
  %1352 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2526 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1352, i64 1
  store %struct.rtx_def* %1351, %struct.rtx_def** %arrayidx2526, align 8
  %1353 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2527 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1353, i32 0, i32 1
  %arrayidx2528 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2527, i32 0, i64 0
  %rtvec2529 = bitcast %union.rtunion_def* %arrayidx2528 to %struct.rtvec_def**
  %1354 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2529, align 8
  %elem2530 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1354, i32 0, i32 1
  %arrayidx2531 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2530, i32 0, i64 0
  %1355 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2531, align 8
  %fld2532 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1355, i32 0, i32 1
  %arrayidx2533 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2532, i32 0, i64 1
  %rtx2534 = bitcast %union.rtunion_def* %arrayidx2533 to %struct.rtx_def**
  %1356 = load %struct.rtx_def*, %struct.rtx_def** %rtx2534, align 8
  %fld2535 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1356, i32 0, i32 1
  %arrayidx2536 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2535, i32 0, i64 0
  %rtvec2537 = bitcast %union.rtunion_def* %arrayidx2536 to %struct.rtvec_def**
  %1357 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2537, align 8
  %elem2538 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1357, i32 0, i32 1
  %arrayidx2539 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2538, i32 0, i64 0
  %1358 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2539, align 8
  %fld2540 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1358, i32 0, i32 1
  %arrayidx2541 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2540, i32 0, i64 1
  %rtx2542 = bitcast %union.rtunion_def* %arrayidx2541 to %struct.rtx_def**
  %1359 = load %struct.rtx_def*, %struct.rtx_def** %rtx2542, align 8
  %fld2543 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1359, i32 0, i32 1
  %arrayidx2544 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2543, i32 0, i64 1
  %rtx2545 = bitcast %union.rtunion_def* %arrayidx2544 to %struct.rtx_def**
  %1360 = load %struct.rtx_def*, %struct.rtx_def** %rtx2545, align 8
  %fld2546 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1360, i32 0, i32 1
  %arrayidx2547 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2546, i32 0, i64 1
  %rtx2548 = bitcast %union.rtunion_def* %arrayidx2547 to %struct.rtx_def**
  %1361 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2549 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1361, i64 2
  store %struct.rtx_def** %rtx2548, %struct.rtx_def*** %arrayidx2549, align 8
  %1362 = load %struct.rtx_def*, %struct.rtx_def** %rtx2548, align 8
  %1363 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2550 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1363, i64 2
  store %struct.rtx_def* %1362, %struct.rtx_def** %arrayidx2550, align 8
  %1364 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1364, i32 0, i32 1
  %arrayidx2552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2551, i32 0, i64 0
  %rtvec2553 = bitcast %union.rtunion_def* %arrayidx2552 to %struct.rtvec_def**
  %1365 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2553, align 8
  %elem2554 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1365, i32 0, i32 1
  %arrayidx2555 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2554, i32 0, i64 0
  %1366 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2555, align 8
  %fld2556 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1366, i32 0, i32 1
  %arrayidx2557 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2556, i32 0, i64 1
  %rtx2558 = bitcast %union.rtunion_def* %arrayidx2557 to %struct.rtx_def**
  %1367 = load %struct.rtx_def*, %struct.rtx_def** %rtx2558, align 8
  %fld2559 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1367, i32 0, i32 1
  %arrayidx2560 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2559, i32 0, i64 0
  %rtvec2561 = bitcast %union.rtunion_def* %arrayidx2560 to %struct.rtvec_def**
  %1368 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2561, align 8
  %elem2562 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1368, i32 0, i32 1
  %arrayidx2563 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2562, i32 0, i64 0
  %1369 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2563, align 8
  %fld2564 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1369, i32 0, i32 1
  %arrayidx2565 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2564, i32 0, i64 0
  %rtx2566 = bitcast %union.rtunion_def* %arrayidx2565 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2566, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.2567:                                       ; preds = %entry, %entry
  %1370 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2568 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1370, i32 0, i32 1
  %arrayidx2569 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2568, i32 0, i64 0
  %rtvec2570 = bitcast %union.rtunion_def* %arrayidx2569 to %struct.rtvec_def**
  %1371 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2570, align 8
  %elem2571 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1371, i32 0, i32 1
  %arrayidx2572 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2571, i32 0, i64 1
  %1372 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2572, align 8
  %fld2573 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1372, i32 0, i32 1
  %arrayidx2574 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2573, i32 0, i64 0
  %rtx2575 = bitcast %union.rtunion_def* %arrayidx2574 to %struct.rtx_def**
  %1373 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2576 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1373, i64 0
  store %struct.rtx_def** %rtx2575, %struct.rtx_def*** %arrayidx2576, align 8
  %1374 = load %struct.rtx_def*, %struct.rtx_def** %rtx2575, align 8
  %1375 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2577 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1375, i64 0
  store %struct.rtx_def* %1374, %struct.rtx_def** %arrayidx2577, align 8
  br label %sw.epilog

sw.bb.2578:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb.2579:                                       ; preds = %entry, %entry
  %1376 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2580 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1376, i32 0, i32 1
  %arrayidx2581 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2580, i32 0, i64 0
  %rtvec2582 = bitcast %union.rtunion_def* %arrayidx2581 to %struct.rtvec_def**
  %1377 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2582, align 8
  %elem2583 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1377, i32 0, i32 1
  %arrayidx2584 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2583, i32 0, i64 0
  %1378 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2584, align 8
  %fld2585 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1378, i32 0, i32 1
  %arrayidx2586 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2585, i32 0, i64 0
  %rtx2587 = bitcast %union.rtunion_def* %arrayidx2586 to %struct.rtx_def**
  %1379 = load %struct.rtx_def*, %struct.rtx_def** %rtx2587, align 8
  %fld2588 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1379, i32 0, i32 1
  %arrayidx2589 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2588, i32 0, i64 0
  %rtx2590 = bitcast %union.rtunion_def* %arrayidx2589 to %struct.rtx_def**
  %1380 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2591 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1380, i64 0
  store %struct.rtx_def** %rtx2590, %struct.rtx_def*** %arrayidx2591, align 8
  %1381 = load %struct.rtx_def*, %struct.rtx_def** %rtx2590, align 8
  %1382 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2592 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1382, i64 0
  store %struct.rtx_def* %1381, %struct.rtx_def** %arrayidx2592, align 8
  %1383 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2593 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1383, i32 0, i32 1
  %arrayidx2594 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2593, i32 0, i64 0
  %rtvec2595 = bitcast %union.rtunion_def* %arrayidx2594 to %struct.rtvec_def**
  %1384 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2595, align 8
  %elem2596 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1384, i32 0, i32 1
  %arrayidx2597 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2596, i32 0, i64 0
  %1385 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2597, align 8
  %fld2598 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1385, i32 0, i32 1
  %arrayidx2599 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2598, i32 0, i64 1
  %rtx2600 = bitcast %union.rtunion_def* %arrayidx2599 to %struct.rtx_def**
  %1386 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2601 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1386, i64 1
  store %struct.rtx_def** %rtx2600, %struct.rtx_def*** %arrayidx2601, align 8
  %1387 = load %struct.rtx_def*, %struct.rtx_def** %rtx2600, align 8
  %1388 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2602 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1388, i64 1
  store %struct.rtx_def* %1387, %struct.rtx_def** %arrayidx2602, align 8
  %1389 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2603 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1389, i32 0, i32 1
  %arrayidx2604 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2603, i32 0, i64 0
  %rtvec2605 = bitcast %union.rtunion_def* %arrayidx2604 to %struct.rtvec_def**
  %1390 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2605, align 8
  %elem2606 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1390, i32 0, i32 1
  %arrayidx2607 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2606, i32 0, i64 1
  %1391 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2607, align 8
  %fld2608 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1391, i32 0, i32 1
  %arrayidx2609 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2608, i32 0, i64 1
  %rtx2610 = bitcast %union.rtunion_def* %arrayidx2609 to %struct.rtx_def**
  %1392 = load %struct.rtx_def*, %struct.rtx_def** %rtx2610, align 8
  %fld2611 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1392, i32 0, i32 1
  %arrayidx2612 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2611, i32 0, i64 1
  %rtx2613 = bitcast %union.rtunion_def* %arrayidx2612 to %struct.rtx_def**
  %1393 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2614 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1393, i64 2
  store %struct.rtx_def** %rtx2613, %struct.rtx_def*** %arrayidx2614, align 8
  %1394 = load %struct.rtx_def*, %struct.rtx_def** %rtx2613, align 8
  %1395 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2615 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1395, i64 2
  store %struct.rtx_def* %1394, %struct.rtx_def** %arrayidx2615, align 8
  br label %sw.epilog

sw.bb.2616:                                       ; preds = %entry
  %1396 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1396, i32 0, i32 1
  %arrayidx2618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2617, i32 0, i64 0
  %rtvec2619 = bitcast %union.rtunion_def* %arrayidx2618 to %struct.rtvec_def**
  %1397 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2619, align 8
  %elem2620 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1397, i32 0, i32 1
  %arrayidx2621 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2620, i32 0, i64 0
  %1398 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2621, align 8
  %fld2622 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1398, i32 0, i32 1
  %arrayidx2623 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2622, i32 0, i64 1
  %rtx2624 = bitcast %union.rtunion_def* %arrayidx2623 to %struct.rtx_def**
  %1399 = load %struct.rtx_def*, %struct.rtx_def** %rtx2624, align 8
  %fld2625 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1399, i32 0, i32 1
  %arrayidx2626 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2625, i32 0, i64 1
  %rtx2627 = bitcast %union.rtunion_def* %arrayidx2626 to %struct.rtx_def**
  %1400 = load %struct.rtx_def*, %struct.rtx_def** %rtx2627, align 8
  %fld2628 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1400, i32 0, i32 1
  %arrayidx2629 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2628, i32 0, i64 0
  %rtx2630 = bitcast %union.rtunion_def* %arrayidx2629 to %struct.rtx_def**
  %1401 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2631 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1401, i64 0
  store %struct.rtx_def** %rtx2630, %struct.rtx_def*** %arrayidx2631, align 8
  %1402 = load %struct.rtx_def*, %struct.rtx_def** %rtx2630, align 8
  %1403 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2632 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1403, i64 0
  store %struct.rtx_def* %1402, %struct.rtx_def** %arrayidx2632, align 8
  %1404 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2633 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1404, i32 0, i32 1
  %arrayidx2634 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2633, i32 0, i64 0
  %rtvec2635 = bitcast %union.rtunion_def* %arrayidx2634 to %struct.rtvec_def**
  %1405 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2635, align 8
  %elem2636 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1405, i32 0, i32 1
  %arrayidx2637 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2636, i32 0, i64 0
  %1406 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2637, align 8
  %fld2638 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1406, i32 0, i32 1
  %arrayidx2639 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2638, i32 0, i64 1
  %rtx2640 = bitcast %union.rtunion_def* %arrayidx2639 to %struct.rtx_def**
  %1407 = load %struct.rtx_def*, %struct.rtx_def** %rtx2640, align 8
  %fld2641 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1407, i32 0, i32 1
  %arrayidx2642 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2641, i32 0, i64 0
  %rtx2643 = bitcast %union.rtunion_def* %arrayidx2642 to %struct.rtx_def**
  %1408 = load %struct.rtx_def*, %struct.rtx_def** %rtx2643, align 8
  %fld2644 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1408, i32 0, i32 1
  %arrayidx2645 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2644, i32 0, i64 0
  %rtx2646 = bitcast %union.rtunion_def* %arrayidx2645 to %struct.rtx_def**
  %1409 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2647 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1409, i64 1
  store %struct.rtx_def** %rtx2646, %struct.rtx_def*** %arrayidx2647, align 8
  %1410 = load %struct.rtx_def*, %struct.rtx_def** %rtx2646, align 8
  %1411 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2648 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1411, i64 1
  store %struct.rtx_def* %1410, %struct.rtx_def** %arrayidx2648, align 8
  %1412 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2649 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1412, i32 0, i32 1
  %arrayidx2650 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2649, i32 0, i64 0
  %rtvec2651 = bitcast %union.rtunion_def* %arrayidx2650 to %struct.rtvec_def**
  %1413 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2651, align 8
  %elem2652 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1413, i32 0, i32 1
  %arrayidx2653 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2652, i32 0, i64 1
  %1414 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2653, align 8
  %fld2654 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1414, i32 0, i32 1
  %arrayidx2655 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2654, i32 0, i64 0
  %rtx2656 = bitcast %union.rtunion_def* %arrayidx2655 to %struct.rtx_def**
  %1415 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2657 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1415, i64 2
  store %struct.rtx_def** %rtx2656, %struct.rtx_def*** %arrayidx2657, align 8
  %1416 = load %struct.rtx_def*, %struct.rtx_def** %rtx2656, align 8
  %1417 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2658 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1417, i64 2
  store %struct.rtx_def* %1416, %struct.rtx_def** %arrayidx2658, align 8
  %1418 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2659 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1418, i32 0, i32 1
  %arrayidx2660 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2659, i32 0, i64 0
  %rtvec2661 = bitcast %union.rtunion_def* %arrayidx2660 to %struct.rtvec_def**
  %1419 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2661, align 8
  %elem2662 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1419, i32 0, i32 1
  %arrayidx2663 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2662, i32 0, i64 2
  %1420 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2663, align 8
  %fld2664 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1420, i32 0, i32 1
  %arrayidx2665 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2664, i32 0, i64 0
  %rtx2666 = bitcast %union.rtunion_def* %arrayidx2665 to %struct.rtx_def**
  %1421 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2667 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1421, i64 3
  store %struct.rtx_def** %rtx2666, %struct.rtx_def*** %arrayidx2667, align 8
  %1422 = load %struct.rtx_def*, %struct.rtx_def** %rtx2666, align 8
  %1423 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2668 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1423, i64 3
  store %struct.rtx_def* %1422, %struct.rtx_def** %arrayidx2668, align 8
  %1424 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2669 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1424, i32 0, i32 1
  %arrayidx2670 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2669, i32 0, i64 0
  %rtvec2671 = bitcast %union.rtunion_def* %arrayidx2670 to %struct.rtvec_def**
  %1425 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2671, align 8
  %elem2672 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1425, i32 0, i32 1
  %arrayidx2673 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2672, i32 0, i64 1
  %1426 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2673, align 8
  %fld2674 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1426, i32 0, i32 1
  %arrayidx2675 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2674, i32 0, i64 1
  %rtx2676 = bitcast %union.rtunion_def* %arrayidx2675 to %struct.rtx_def**
  %1427 = load %struct.rtx_def*, %struct.rtx_def** %rtx2676, align 8
  %fld2677 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1427, i32 0, i32 1
  %arrayidx2678 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2677, i32 0, i64 0
  %rtx2679 = bitcast %union.rtunion_def* %arrayidx2678 to %struct.rtx_def**
  store %struct.rtx_def** %rtx2679, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.2680:                                       ; preds = %entry, %entry
  %1428 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2681 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1428, i32 0, i32 1
  %arrayidx2682 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2681, i32 0, i64 0
  %rtvec2683 = bitcast %union.rtunion_def* %arrayidx2682 to %struct.rtvec_def**
  %1429 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2683, align 8
  %elem2684 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1429, i32 0, i32 1
  %arrayidx2685 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2684, i32 0, i64 0
  %1430 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2685, align 8
  %fld2686 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1430, i32 0, i32 1
  %arrayidx2687 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2686, i32 0, i64 1
  %rtx2688 = bitcast %union.rtunion_def* %arrayidx2687 to %struct.rtx_def**
  %1431 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2689 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1431, i64 0
  store %struct.rtx_def** %rtx2688, %struct.rtx_def*** %arrayidx2689, align 8
  %1432 = load %struct.rtx_def*, %struct.rtx_def** %rtx2688, align 8
  %1433 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2690 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1433, i64 0
  store %struct.rtx_def* %1432, %struct.rtx_def** %arrayidx2690, align 8
  %1434 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2691 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1434, i32 0, i32 1
  %arrayidx2692 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2691, i32 0, i64 0
  %rtvec2693 = bitcast %union.rtunion_def* %arrayidx2692 to %struct.rtvec_def**
  %1435 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2693, align 8
  %elem2694 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1435, i32 0, i32 1
  %arrayidx2695 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2694, i32 0, i64 1
  %1436 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2695, align 8
  %fld2696 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1436, i32 0, i32 1
  %arrayidx2697 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2696, i32 0, i64 0
  %rtx2698 = bitcast %union.rtunion_def* %arrayidx2697 to %struct.rtx_def**
  %1437 = load %struct.rtx_def*, %struct.rtx_def** %rtx2698, align 8
  %fld2699 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1437, i32 0, i32 1
  %arrayidx2700 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2699, i32 0, i64 0
  %rtx2701 = bitcast %union.rtunion_def* %arrayidx2700 to %struct.rtx_def**
  %1438 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2702 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1438, i64 1
  store %struct.rtx_def** %rtx2701, %struct.rtx_def*** %arrayidx2702, align 8
  %1439 = load %struct.rtx_def*, %struct.rtx_def** %rtx2701, align 8
  %1440 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2703 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1440, i64 1
  store %struct.rtx_def* %1439, %struct.rtx_def** %arrayidx2703, align 8
  br label %sw.epilog

sw.bb.2704:                                       ; preds = %entry, %entry
  %1441 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2705 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1441, i32 0, i32 1
  %arrayidx2706 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2705, i32 0, i64 1
  %rtx2707 = bitcast %union.rtunion_def* %arrayidx2706 to %struct.rtx_def**
  %1442 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2708 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1442, i64 0
  store %struct.rtx_def** %rtx2707, %struct.rtx_def*** %arrayidx2708, align 8
  %1443 = load %struct.rtx_def*, %struct.rtx_def** %rtx2707, align 8
  %1444 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2709 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1444, i64 0
  store %struct.rtx_def* %1443, %struct.rtx_def** %arrayidx2709, align 8
  br label %sw.epilog

sw.bb.2710:                                       ; preds = %entry
  %1445 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2711 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1445, i32 0, i32 1
  %arrayidx2712 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2711, i32 0, i64 1
  %rtx2713 = bitcast %union.rtunion_def* %arrayidx2712 to %struct.rtx_def**
  %1446 = load %struct.rtx_def*, %struct.rtx_def** %rtx2713, align 8
  %fld2714 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1446, i32 0, i32 1
  %arrayidx2715 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2714, i32 0, i64 0
  %rtx2716 = bitcast %union.rtunion_def* %arrayidx2715 to %struct.rtx_def**
  %1447 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2717 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1447, i64 0
  store %struct.rtx_def** %rtx2716, %struct.rtx_def*** %arrayidx2717, align 8
  %1448 = load %struct.rtx_def*, %struct.rtx_def** %rtx2716, align 8
  %1449 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2718 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1449, i64 0
  store %struct.rtx_def* %1448, %struct.rtx_def** %arrayidx2718, align 8
  br label %sw.epilog

sw.bb.2719:                                       ; preds = %entry, %entry
  %1450 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2720 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1450, i32 0, i32 1
  %arrayidx2721 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2720, i32 0, i64 0
  %rtvec2722 = bitcast %union.rtunion_def* %arrayidx2721 to %struct.rtvec_def**
  %1451 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2722, align 8
  %elem2723 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1451, i32 0, i32 1
  %arrayidx2724 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2723, i32 0, i64 0
  %1452 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2724, align 8
  %fld2725 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1452, i32 0, i32 1
  %arrayidx2726 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2725, i32 0, i64 1
  %rtx2727 = bitcast %union.rtunion_def* %arrayidx2726 to %struct.rtx_def**
  %1453 = load %struct.rtx_def*, %struct.rtx_def** %rtx2727, align 8
  %fld2728 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1453, i32 0, i32 1
  %arrayidx2729 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2728, i32 0, i64 0
  %rtx2730 = bitcast %union.rtunion_def* %arrayidx2729 to %struct.rtx_def**
  %1454 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2731 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1454, i64 0
  store %struct.rtx_def** %rtx2730, %struct.rtx_def*** %arrayidx2731, align 8
  %1455 = load %struct.rtx_def*, %struct.rtx_def** %rtx2730, align 8
  %1456 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2732 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1456, i64 0
  store %struct.rtx_def* %1455, %struct.rtx_def** %arrayidx2732, align 8
  %1457 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2733 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1457, i32 0, i32 1
  %arrayidx2734 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2733, i32 0, i64 0
  %rtvec2735 = bitcast %union.rtunion_def* %arrayidx2734 to %struct.rtvec_def**
  %1458 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2735, align 8
  %elem2736 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1458, i32 0, i32 1
  %arrayidx2737 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2736, i32 0, i64 0
  %1459 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2737, align 8
  %fld2738 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1459, i32 0, i32 1
  %arrayidx2739 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2738, i32 0, i64 1
  %rtx2740 = bitcast %union.rtunion_def* %arrayidx2739 to %struct.rtx_def**
  %1460 = load %struct.rtx_def*, %struct.rtx_def** %rtx2740, align 8
  %fld2741 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1460, i32 0, i32 1
  %arrayidx2742 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2741, i32 0, i64 0
  %rtx2743 = bitcast %union.rtunion_def* %arrayidx2742 to %struct.rtx_def**
  %1461 = load %struct.rtx_def*, %struct.rtx_def** %rtx2743, align 8
  %fld2744 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1461, i32 0, i32 1
  %arrayidx2745 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2744, i32 0, i64 0
  %rtx2746 = bitcast %union.rtunion_def* %arrayidx2745 to %struct.rtx_def**
  %1462 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2747 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1462, i64 1
  store %struct.rtx_def** %rtx2746, %struct.rtx_def*** %arrayidx2747, align 8
  %1463 = load %struct.rtx_def*, %struct.rtx_def** %rtx2746, align 8
  %1464 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2748 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1464, i64 1
  store %struct.rtx_def* %1463, %struct.rtx_def** %arrayidx2748, align 8
  %1465 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2749 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1465, i32 0, i32 1
  %arrayidx2750 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2749, i32 0, i64 0
  %rtvec2751 = bitcast %union.rtunion_def* %arrayidx2750 to %struct.rtvec_def**
  %1466 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2751, align 8
  %elem2752 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1466, i32 0, i32 1
  %arrayidx2753 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2752, i32 0, i64 0
  %1467 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2753, align 8
  %fld2754 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1467, i32 0, i32 1
  %arrayidx2755 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2754, i32 0, i64 1
  %rtx2756 = bitcast %union.rtunion_def* %arrayidx2755 to %struct.rtx_def**
  %1468 = load %struct.rtx_def*, %struct.rtx_def** %rtx2756, align 8
  %fld2757 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1468, i32 0, i32 1
  %arrayidx2758 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2757, i32 0, i64 0
  %rtx2759 = bitcast %union.rtunion_def* %arrayidx2758 to %struct.rtx_def**
  %1469 = load %struct.rtx_def*, %struct.rtx_def** %rtx2759, align 8
  %fld2760 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1469, i32 0, i32 1
  %arrayidx2761 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2760, i32 0, i64 1
  %rtx2762 = bitcast %union.rtunion_def* %arrayidx2761 to %struct.rtx_def**
  %1470 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2763 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1470, i64 2
  store %struct.rtx_def** %rtx2762, %struct.rtx_def*** %arrayidx2763, align 8
  %1471 = load %struct.rtx_def*, %struct.rtx_def** %rtx2762, align 8
  %1472 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2764 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1472, i64 2
  store %struct.rtx_def* %1471, %struct.rtx_def** %arrayidx2764, align 8
  %1473 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2765 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1473, i32 0, i32 1
  %arrayidx2766 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2765, i32 0, i64 0
  %rtvec2767 = bitcast %union.rtunion_def* %arrayidx2766 to %struct.rtvec_def**
  %1474 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2767, align 8
  %elem2768 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1474, i32 0, i32 1
  %arrayidx2769 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2768, i32 0, i64 0
  %1475 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2769, align 8
  %fld2770 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1475, i32 0, i32 1
  %arrayidx2771 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2770, i32 0, i64 1
  %rtx2772 = bitcast %union.rtunion_def* %arrayidx2771 to %struct.rtx_def**
  %1476 = load %struct.rtx_def*, %struct.rtx_def** %rtx2772, align 8
  %fld2773 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1476, i32 0, i32 1
  %arrayidx2774 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2773, i32 0, i64 2
  %rtx2775 = bitcast %union.rtunion_def* %arrayidx2774 to %struct.rtx_def**
  %1477 = load %struct.rtx_def*, %struct.rtx_def** %rtx2775, align 8
  %fld2776 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1477, i32 0, i32 1
  %arrayidx2777 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2776, i32 0, i64 0
  %rtx2778 = bitcast %union.rtunion_def* %arrayidx2777 to %struct.rtx_def**
  %1478 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2779 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1478, i64 3
  store %struct.rtx_def** %rtx2778, %struct.rtx_def*** %arrayidx2779, align 8
  %1479 = load %struct.rtx_def*, %struct.rtx_def** %rtx2778, align 8
  %1480 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2780 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1480, i64 3
  store %struct.rtx_def* %1479, %struct.rtx_def** %arrayidx2780, align 8
  %1481 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2781 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1481, i32 0, i32 1
  %arrayidx2782 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2781, i32 0, i64 0
  %rtvec2783 = bitcast %union.rtunion_def* %arrayidx2782 to %struct.rtvec_def**
  %1482 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2783, align 8
  %elem2784 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1482, i32 0, i32 1
  %arrayidx2785 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2784, i32 0, i64 3
  %1483 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2785, align 8
  %fld2786 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1483, i32 0, i32 1
  %arrayidx2787 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2786, i32 0, i64 0
  %rtx2788 = bitcast %union.rtunion_def* %arrayidx2787 to %struct.rtx_def**
  %1484 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2789 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1484, i64 4
  store %struct.rtx_def** %rtx2788, %struct.rtx_def*** %arrayidx2789, align 8
  %1485 = load %struct.rtx_def*, %struct.rtx_def** %rtx2788, align 8
  %1486 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2790 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1486, i64 4
  store %struct.rtx_def* %1485, %struct.rtx_def** %arrayidx2790, align 8
  br label %sw.epilog

sw.bb.2791:                                       ; preds = %entry, %entry
  %1487 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2792 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1487, i32 0, i32 1
  %arrayidx2793 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2792, i32 0, i64 0
  %rtvec2794 = bitcast %union.rtunion_def* %arrayidx2793 to %struct.rtvec_def**
  %1488 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2794, align 8
  %elem2795 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1488, i32 0, i32 1
  %arrayidx2796 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2795, i32 0, i64 0
  %1489 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2796, align 8
  %fld2797 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1489, i32 0, i32 1
  %arrayidx2798 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2797, i32 0, i64 1
  %rtx2799 = bitcast %union.rtunion_def* %arrayidx2798 to %struct.rtx_def**
  %1490 = load %struct.rtx_def*, %struct.rtx_def** %rtx2799, align 8
  %fld2800 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1490, i32 0, i32 1
  %arrayidx2801 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2800, i32 0, i64 0
  %rtx2802 = bitcast %union.rtunion_def* %arrayidx2801 to %struct.rtx_def**
  %1491 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2803 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1491, i64 0
  store %struct.rtx_def** %rtx2802, %struct.rtx_def*** %arrayidx2803, align 8
  %1492 = load %struct.rtx_def*, %struct.rtx_def** %rtx2802, align 8
  %1493 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2804 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1493, i64 0
  store %struct.rtx_def* %1492, %struct.rtx_def** %arrayidx2804, align 8
  %1494 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2805 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1494, i32 0, i32 1
  %arrayidx2806 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2805, i32 0, i64 0
  %rtvec2807 = bitcast %union.rtunion_def* %arrayidx2806 to %struct.rtvec_def**
  %1495 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2807, align 8
  %elem2808 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1495, i32 0, i32 1
  %arrayidx2809 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2808, i32 0, i64 0
  %1496 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2809, align 8
  %fld2810 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1496, i32 0, i32 1
  %arrayidx2811 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2810, i32 0, i64 1
  %rtx2812 = bitcast %union.rtunion_def* %arrayidx2811 to %struct.rtx_def**
  %1497 = load %struct.rtx_def*, %struct.rtx_def** %rtx2812, align 8
  %fld2813 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1497, i32 0, i32 1
  %arrayidx2814 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2813, i32 0, i64 0
  %rtx2815 = bitcast %union.rtunion_def* %arrayidx2814 to %struct.rtx_def**
  %1498 = load %struct.rtx_def*, %struct.rtx_def** %rtx2815, align 8
  %fld2816 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1498, i32 0, i32 1
  %arrayidx2817 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2816, i32 0, i64 0
  %rtx2818 = bitcast %union.rtunion_def* %arrayidx2817 to %struct.rtx_def**
  %1499 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2819 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1499, i64 1
  store %struct.rtx_def** %rtx2818, %struct.rtx_def*** %arrayidx2819, align 8
  %1500 = load %struct.rtx_def*, %struct.rtx_def** %rtx2818, align 8
  %1501 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2820 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1501, i64 1
  store %struct.rtx_def* %1500, %struct.rtx_def** %arrayidx2820, align 8
  %1502 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2821 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1502, i32 0, i32 1
  %arrayidx2822 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2821, i32 0, i64 0
  %rtvec2823 = bitcast %union.rtunion_def* %arrayidx2822 to %struct.rtvec_def**
  %1503 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2823, align 8
  %elem2824 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1503, i32 0, i32 1
  %arrayidx2825 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2824, i32 0, i64 0
  %1504 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2825, align 8
  %fld2826 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1504, i32 0, i32 1
  %arrayidx2827 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2826, i32 0, i64 1
  %rtx2828 = bitcast %union.rtunion_def* %arrayidx2827 to %struct.rtx_def**
  %1505 = load %struct.rtx_def*, %struct.rtx_def** %rtx2828, align 8
  %fld2829 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1505, i32 0, i32 1
  %arrayidx2830 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2829, i32 0, i64 0
  %rtx2831 = bitcast %union.rtunion_def* %arrayidx2830 to %struct.rtx_def**
  %1506 = load %struct.rtx_def*, %struct.rtx_def** %rtx2831, align 8
  %fld2832 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1506, i32 0, i32 1
  %arrayidx2833 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2832, i32 0, i64 1
  %rtx2834 = bitcast %union.rtunion_def* %arrayidx2833 to %struct.rtx_def**
  %1507 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2835 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1507, i64 2
  store %struct.rtx_def** %rtx2834, %struct.rtx_def*** %arrayidx2835, align 8
  %1508 = load %struct.rtx_def*, %struct.rtx_def** %rtx2834, align 8
  %1509 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2836 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1509, i64 2
  store %struct.rtx_def* %1508, %struct.rtx_def** %arrayidx2836, align 8
  %1510 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2837 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1510, i32 0, i32 1
  %arrayidx2838 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2837, i32 0, i64 0
  %rtvec2839 = bitcast %union.rtunion_def* %arrayidx2838 to %struct.rtvec_def**
  %1511 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2839, align 8
  %elem2840 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1511, i32 0, i32 1
  %arrayidx2841 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2840, i32 0, i64 0
  %1512 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2841, align 8
  %fld2842 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1512, i32 0, i32 1
  %arrayidx2843 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2842, i32 0, i64 1
  %rtx2844 = bitcast %union.rtunion_def* %arrayidx2843 to %struct.rtx_def**
  %1513 = load %struct.rtx_def*, %struct.rtx_def** %rtx2844, align 8
  %fld2845 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1513, i32 0, i32 1
  %arrayidx2846 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2845, i32 0, i64 1
  %rtx2847 = bitcast %union.rtunion_def* %arrayidx2846 to %struct.rtx_def**
  %1514 = load %struct.rtx_def*, %struct.rtx_def** %rtx2847, align 8
  %fld2848 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1514, i32 0, i32 1
  %arrayidx2849 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2848, i32 0, i64 0
  %rtx2850 = bitcast %union.rtunion_def* %arrayidx2849 to %struct.rtx_def**
  %1515 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2851 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1515, i64 3
  store %struct.rtx_def** %rtx2850, %struct.rtx_def*** %arrayidx2851, align 8
  %1516 = load %struct.rtx_def*, %struct.rtx_def** %rtx2850, align 8
  %1517 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2852 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1517, i64 3
  store %struct.rtx_def* %1516, %struct.rtx_def** %arrayidx2852, align 8
  %1518 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2853 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1518, i32 0, i32 1
  %arrayidx2854 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2853, i32 0, i64 0
  %rtvec2855 = bitcast %union.rtunion_def* %arrayidx2854 to %struct.rtvec_def**
  %1519 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2855, align 8
  %elem2856 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1519, i32 0, i32 1
  %arrayidx2857 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2856, i32 0, i64 3
  %1520 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2857, align 8
  %fld2858 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1520, i32 0, i32 1
  %arrayidx2859 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2858, i32 0, i64 0
  %rtx2860 = bitcast %union.rtunion_def* %arrayidx2859 to %struct.rtx_def**
  %1521 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2861 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1521, i64 4
  store %struct.rtx_def** %rtx2860, %struct.rtx_def*** %arrayidx2861, align 8
  %1522 = load %struct.rtx_def*, %struct.rtx_def** %rtx2860, align 8
  %1523 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2862 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1523, i64 4
  store %struct.rtx_def* %1522, %struct.rtx_def** %arrayidx2862, align 8
  br label %sw.epilog

sw.bb.2863:                                       ; preds = %entry, %entry, %entry
  %1524 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2864 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1524, i32 0, i32 1
  %arrayidx2865 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2864, i32 0, i64 0
  %rtvec2866 = bitcast %union.rtunion_def* %arrayidx2865 to %struct.rtvec_def**
  %1525 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2866, align 8
  %elem2867 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1525, i32 0, i32 1
  %arrayidx2868 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2867, i32 0, i64 0
  %1526 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2868, align 8
  %fld2869 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1526, i32 0, i32 1
  %arrayidx2870 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2869, i32 0, i64 1
  %rtx2871 = bitcast %union.rtunion_def* %arrayidx2870 to %struct.rtx_def**
  %1527 = load %struct.rtx_def*, %struct.rtx_def** %rtx2871, align 8
  %fld2872 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1527, i32 0, i32 1
  %arrayidx2873 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2872, i32 0, i64 0
  %rtx2874 = bitcast %union.rtunion_def* %arrayidx2873 to %struct.rtx_def**
  %1528 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2875 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1528, i64 0
  store %struct.rtx_def** %rtx2874, %struct.rtx_def*** %arrayidx2875, align 8
  %1529 = load %struct.rtx_def*, %struct.rtx_def** %rtx2874, align 8
  %1530 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2876 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1530, i64 0
  store %struct.rtx_def* %1529, %struct.rtx_def** %arrayidx2876, align 8
  %1531 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2877 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1531, i32 0, i32 1
  %arrayidx2878 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2877, i32 0, i64 0
  %rtvec2879 = bitcast %union.rtunion_def* %arrayidx2878 to %struct.rtvec_def**
  %1532 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2879, align 8
  %elem2880 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1532, i32 0, i32 1
  %arrayidx2881 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2880, i32 0, i64 0
  %1533 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2881, align 8
  %fld2882 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1533, i32 0, i32 1
  %arrayidx2883 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2882, i32 0, i64 1
  %rtx2884 = bitcast %union.rtunion_def* %arrayidx2883 to %struct.rtx_def**
  %1534 = load %struct.rtx_def*, %struct.rtx_def** %rtx2884, align 8
  %fld2885 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1534, i32 0, i32 1
  %arrayidx2886 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2885, i32 0, i64 0
  %rtx2887 = bitcast %union.rtunion_def* %arrayidx2886 to %struct.rtx_def**
  %1535 = load %struct.rtx_def*, %struct.rtx_def** %rtx2887, align 8
  %fld2888 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1535, i32 0, i32 1
  %arrayidx2889 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2888, i32 0, i64 0
  %rtx2890 = bitcast %union.rtunion_def* %arrayidx2889 to %struct.rtx_def**
  %1536 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2891 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1536, i64 1
  store %struct.rtx_def** %rtx2890, %struct.rtx_def*** %arrayidx2891, align 8
  %1537 = load %struct.rtx_def*, %struct.rtx_def** %rtx2890, align 8
  %1538 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2892 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1538, i64 1
  store %struct.rtx_def* %1537, %struct.rtx_def** %arrayidx2892, align 8
  %1539 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2893 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1539, i32 0, i32 1
  %arrayidx2894 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2893, i32 0, i64 0
  %rtvec2895 = bitcast %union.rtunion_def* %arrayidx2894 to %struct.rtvec_def**
  %1540 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2895, align 8
  %elem2896 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1540, i32 0, i32 1
  %arrayidx2897 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2896, i32 0, i64 0
  %1541 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2897, align 8
  %fld2898 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1541, i32 0, i32 1
  %arrayidx2899 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2898, i32 0, i64 1
  %rtx2900 = bitcast %union.rtunion_def* %arrayidx2899 to %struct.rtx_def**
  %1542 = load %struct.rtx_def*, %struct.rtx_def** %rtx2900, align 8
  %fld2901 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1542, i32 0, i32 1
  %arrayidx2902 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2901, i32 0, i64 0
  %rtx2903 = bitcast %union.rtunion_def* %arrayidx2902 to %struct.rtx_def**
  %1543 = load %struct.rtx_def*, %struct.rtx_def** %rtx2903, align 8
  %fld2904 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1543, i32 0, i32 1
  %arrayidx2905 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2904, i32 0, i64 1
  %rtx2906 = bitcast %union.rtunion_def* %arrayidx2905 to %struct.rtx_def**
  %1544 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2907 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1544, i64 2
  store %struct.rtx_def** %rtx2906, %struct.rtx_def*** %arrayidx2907, align 8
  %1545 = load %struct.rtx_def*, %struct.rtx_def** %rtx2906, align 8
  %1546 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2908 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1546, i64 2
  store %struct.rtx_def* %1545, %struct.rtx_def** %arrayidx2908, align 8
  %1547 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2909 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1547, i32 0, i32 1
  %arrayidx2910 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2909, i32 0, i64 0
  %rtvec2911 = bitcast %union.rtunion_def* %arrayidx2910 to %struct.rtvec_def**
  %1548 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2911, align 8
  %elem2912 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1548, i32 0, i32 1
  %arrayidx2913 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2912, i32 0, i64 0
  %1549 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2913, align 8
  %fld2914 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1549, i32 0, i32 1
  %arrayidx2915 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2914, i32 0, i64 1
  %rtx2916 = bitcast %union.rtunion_def* %arrayidx2915 to %struct.rtx_def**
  %1550 = load %struct.rtx_def*, %struct.rtx_def** %rtx2916, align 8
  %fld2917 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1550, i32 0, i32 1
  %arrayidx2918 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2917, i32 0, i64 2
  %rtx2919 = bitcast %union.rtunion_def* %arrayidx2918 to %struct.rtx_def**
  %1551 = load %struct.rtx_def*, %struct.rtx_def** %rtx2919, align 8
  %fld2920 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1551, i32 0, i32 1
  %arrayidx2921 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2920, i32 0, i64 0
  %rtx2922 = bitcast %union.rtunion_def* %arrayidx2921 to %struct.rtx_def**
  %1552 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2923 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1552, i64 3
  store %struct.rtx_def** %rtx2922, %struct.rtx_def*** %arrayidx2923, align 8
  %1553 = load %struct.rtx_def*, %struct.rtx_def** %rtx2922, align 8
  %1554 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2924 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1554, i64 3
  store %struct.rtx_def* %1553, %struct.rtx_def** %arrayidx2924, align 8
  br label %sw.epilog

sw.bb.2925:                                       ; preds = %entry, %entry, %entry
  %1555 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2926 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1555, i32 0, i32 1
  %arrayidx2927 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2926, i32 0, i64 0
  %rtvec2928 = bitcast %union.rtunion_def* %arrayidx2927 to %struct.rtvec_def**
  %1556 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2928, align 8
  %elem2929 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1556, i32 0, i32 1
  %arrayidx2930 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2929, i32 0, i64 0
  %1557 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2930, align 8
  %fld2931 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1557, i32 0, i32 1
  %arrayidx2932 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2931, i32 0, i64 1
  %rtx2933 = bitcast %union.rtunion_def* %arrayidx2932 to %struct.rtx_def**
  %1558 = load %struct.rtx_def*, %struct.rtx_def** %rtx2933, align 8
  %fld2934 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1558, i32 0, i32 1
  %arrayidx2935 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2934, i32 0, i64 0
  %rtx2936 = bitcast %union.rtunion_def* %arrayidx2935 to %struct.rtx_def**
  %1559 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2937 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1559, i64 0
  store %struct.rtx_def** %rtx2936, %struct.rtx_def*** %arrayidx2937, align 8
  %1560 = load %struct.rtx_def*, %struct.rtx_def** %rtx2936, align 8
  %1561 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2938 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1561, i64 0
  store %struct.rtx_def* %1560, %struct.rtx_def** %arrayidx2938, align 8
  %1562 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2939 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1562, i32 0, i32 1
  %arrayidx2940 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2939, i32 0, i64 0
  %rtvec2941 = bitcast %union.rtunion_def* %arrayidx2940 to %struct.rtvec_def**
  %1563 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2941, align 8
  %elem2942 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1563, i32 0, i32 1
  %arrayidx2943 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2942, i32 0, i64 0
  %1564 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2943, align 8
  %fld2944 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1564, i32 0, i32 1
  %arrayidx2945 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2944, i32 0, i64 1
  %rtx2946 = bitcast %union.rtunion_def* %arrayidx2945 to %struct.rtx_def**
  %1565 = load %struct.rtx_def*, %struct.rtx_def** %rtx2946, align 8
  %fld2947 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1565, i32 0, i32 1
  %arrayidx2948 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2947, i32 0, i64 0
  %rtx2949 = bitcast %union.rtunion_def* %arrayidx2948 to %struct.rtx_def**
  %1566 = load %struct.rtx_def*, %struct.rtx_def** %rtx2949, align 8
  %fld2950 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1566, i32 0, i32 1
  %arrayidx2951 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2950, i32 0, i64 0
  %rtx2952 = bitcast %union.rtunion_def* %arrayidx2951 to %struct.rtx_def**
  %1567 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2953 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1567, i64 1
  store %struct.rtx_def** %rtx2952, %struct.rtx_def*** %arrayidx2953, align 8
  %1568 = load %struct.rtx_def*, %struct.rtx_def** %rtx2952, align 8
  %1569 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2954 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1569, i64 1
  store %struct.rtx_def* %1568, %struct.rtx_def** %arrayidx2954, align 8
  %1570 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2955 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1570, i32 0, i32 1
  %arrayidx2956 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2955, i32 0, i64 0
  %rtvec2957 = bitcast %union.rtunion_def* %arrayidx2956 to %struct.rtvec_def**
  %1571 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2957, align 8
  %elem2958 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1571, i32 0, i32 1
  %arrayidx2959 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2958, i32 0, i64 0
  %1572 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2959, align 8
  %fld2960 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1572, i32 0, i32 1
  %arrayidx2961 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2960, i32 0, i64 1
  %rtx2962 = bitcast %union.rtunion_def* %arrayidx2961 to %struct.rtx_def**
  %1573 = load %struct.rtx_def*, %struct.rtx_def** %rtx2962, align 8
  %fld2963 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1573, i32 0, i32 1
  %arrayidx2964 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2963, i32 0, i64 0
  %rtx2965 = bitcast %union.rtunion_def* %arrayidx2964 to %struct.rtx_def**
  %1574 = load %struct.rtx_def*, %struct.rtx_def** %rtx2965, align 8
  %fld2966 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1574, i32 0, i32 1
  %arrayidx2967 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2966, i32 0, i64 1
  %rtx2968 = bitcast %union.rtunion_def* %arrayidx2967 to %struct.rtx_def**
  %1575 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2969 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1575, i64 2
  store %struct.rtx_def** %rtx2968, %struct.rtx_def*** %arrayidx2969, align 8
  %1576 = load %struct.rtx_def*, %struct.rtx_def** %rtx2968, align 8
  %1577 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2970 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1577, i64 2
  store %struct.rtx_def* %1576, %struct.rtx_def** %arrayidx2970, align 8
  %1578 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2971 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1578, i32 0, i32 1
  %arrayidx2972 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2971, i32 0, i64 0
  %rtvec2973 = bitcast %union.rtunion_def* %arrayidx2972 to %struct.rtvec_def**
  %1579 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec2973, align 8
  %elem2974 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1579, i32 0, i32 1
  %arrayidx2975 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem2974, i32 0, i64 0
  %1580 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2975, align 8
  %fld2976 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1580, i32 0, i32 1
  %arrayidx2977 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2976, i32 0, i64 1
  %rtx2978 = bitcast %union.rtunion_def* %arrayidx2977 to %struct.rtx_def**
  %1581 = load %struct.rtx_def*, %struct.rtx_def** %rtx2978, align 8
  %fld2979 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1581, i32 0, i32 1
  %arrayidx2980 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2979, i32 0, i64 1
  %rtx2981 = bitcast %union.rtunion_def* %arrayidx2980 to %struct.rtx_def**
  %1582 = load %struct.rtx_def*, %struct.rtx_def** %rtx2981, align 8
  %fld2982 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1582, i32 0, i32 1
  %arrayidx2983 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2982, i32 0, i64 0
  %rtx2984 = bitcast %union.rtunion_def* %arrayidx2983 to %struct.rtx_def**
  %1583 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2985 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1583, i64 3
  store %struct.rtx_def** %rtx2984, %struct.rtx_def*** %arrayidx2985, align 8
  %1584 = load %struct.rtx_def*, %struct.rtx_def** %rtx2984, align 8
  %1585 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2986 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1585, i64 3
  store %struct.rtx_def* %1584, %struct.rtx_def** %arrayidx2986, align 8
  br label %sw.epilog

sw.bb.2987:                                       ; preds = %entry
  %1586 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2988 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1586, i32 0, i32 1
  %arrayidx2989 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2988, i32 0, i64 1
  %rtx2990 = bitcast %union.rtunion_def* %arrayidx2989 to %struct.rtx_def**
  %1587 = load %struct.rtx_def*, %struct.rtx_def** %rtx2990, align 8
  %fld2991 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1587, i32 0, i32 1
  %arrayidx2992 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2991, i32 0, i64 2
  %rtx2993 = bitcast %union.rtunion_def* %arrayidx2992 to %struct.rtx_def**
  %1588 = load %struct.rtx_def*, %struct.rtx_def** %rtx2993, align 8
  %fld2994 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1588, i32 0, i32 1
  %arrayidx2995 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2994, i32 0, i64 0
  %rtx2996 = bitcast %union.rtunion_def* %arrayidx2995 to %struct.rtx_def**
  %1589 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx2997 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1589, i64 0
  store %struct.rtx_def** %rtx2996, %struct.rtx_def*** %arrayidx2997, align 8
  %1590 = load %struct.rtx_def*, %struct.rtx_def** %rtx2996, align 8
  %1591 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx2998 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1591, i64 0
  store %struct.rtx_def* %1590, %struct.rtx_def** %arrayidx2998, align 8
  %1592 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld2999 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1592, i32 0, i32 1
  %arrayidx3000 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2999, i32 0, i64 1
  %rtx3001 = bitcast %union.rtunion_def* %arrayidx3000 to %struct.rtx_def**
  %1593 = load %struct.rtx_def*, %struct.rtx_def** %rtx3001, align 8
  %fld3002 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1593, i32 0, i32 1
  %arrayidx3003 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3002, i32 0, i64 0
  %rtx3004 = bitcast %union.rtunion_def* %arrayidx3003 to %struct.rtx_def**
  %1594 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3005 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1594, i64 1
  store %struct.rtx_def** %rtx3004, %struct.rtx_def*** %arrayidx3005, align 8
  %1595 = load %struct.rtx_def*, %struct.rtx_def** %rtx3004, align 8
  %1596 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3006 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1596, i64 1
  store %struct.rtx_def* %1595, %struct.rtx_def** %arrayidx3006, align 8
  br label %sw.epilog

sw.bb.3007:                                       ; preds = %entry
  %1597 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3008 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1597, i32 0, i32 1
  %arrayidx3009 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3008, i32 0, i64 1
  %rtx3010 = bitcast %union.rtunion_def* %arrayidx3009 to %struct.rtx_def**
  %1598 = load %struct.rtx_def*, %struct.rtx_def** %rtx3010, align 8
  %fld3011 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1598, i32 0, i32 1
  %arrayidx3012 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3011, i32 0, i64 1
  %rtx3013 = bitcast %union.rtunion_def* %arrayidx3012 to %struct.rtx_def**
  %1599 = load %struct.rtx_def*, %struct.rtx_def** %rtx3013, align 8
  %fld3014 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1599, i32 0, i32 1
  %arrayidx3015 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3014, i32 0, i64 0
  %rtx3016 = bitcast %union.rtunion_def* %arrayidx3015 to %struct.rtx_def**
  %1600 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3017 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1600, i64 0
  store %struct.rtx_def** %rtx3016, %struct.rtx_def*** %arrayidx3017, align 8
  %1601 = load %struct.rtx_def*, %struct.rtx_def** %rtx3016, align 8
  %1602 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3018 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1602, i64 0
  store %struct.rtx_def* %1601, %struct.rtx_def** %arrayidx3018, align 8
  %1603 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3019 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1603, i32 0, i32 1
  %arrayidx3020 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3019, i32 0, i64 1
  %rtx3021 = bitcast %union.rtunion_def* %arrayidx3020 to %struct.rtx_def**
  %1604 = load %struct.rtx_def*, %struct.rtx_def** %rtx3021, align 8
  %fld3022 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1604, i32 0, i32 1
  %arrayidx3023 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3022, i32 0, i64 0
  %rtx3024 = bitcast %union.rtunion_def* %arrayidx3023 to %struct.rtx_def**
  %1605 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3025 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1605, i64 1
  store %struct.rtx_def** %rtx3024, %struct.rtx_def*** %arrayidx3025, align 8
  %1606 = load %struct.rtx_def*, %struct.rtx_def** %rtx3024, align 8
  %1607 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3026 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1607, i64 1
  store %struct.rtx_def* %1606, %struct.rtx_def** %arrayidx3026, align 8
  br label %sw.epilog

sw.bb.3027:                                       ; preds = %entry, %entry
  %1608 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3028 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1608, i32 0, i32 1
  %arrayidx3029 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3028, i32 0, i64 0
  %rtx3030 = bitcast %union.rtunion_def* %arrayidx3029 to %struct.rtx_def**
  %1609 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3031 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1609, i64 0
  store %struct.rtx_def** %rtx3030, %struct.rtx_def*** %arrayidx3031, align 8
  %1610 = load %struct.rtx_def*, %struct.rtx_def** %rtx3030, align 8
  %1611 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3032 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1611, i64 0
  store %struct.rtx_def* %1610, %struct.rtx_def** %arrayidx3032, align 8
  %1612 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3033 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1612, i32 0, i32 1
  %arrayidx3034 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3033, i32 0, i64 1
  %rtx3035 = bitcast %union.rtunion_def* %arrayidx3034 to %struct.rtx_def**
  %1613 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3036 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1613, i64 1
  store %struct.rtx_def** %rtx3035, %struct.rtx_def*** %arrayidx3036, align 8
  %1614 = load %struct.rtx_def*, %struct.rtx_def** %rtx3035, align 8
  %1615 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3037 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1615, i64 1
  store %struct.rtx_def* %1614, %struct.rtx_def** %arrayidx3037, align 8
  %1616 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3038 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1616, i32 0, i32 1
  %arrayidx3039 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3038, i32 0, i64 1
  %rtx3040 = bitcast %union.rtunion_def* %arrayidx3039 to %struct.rtx_def**
  %1617 = load %struct.rtx_def*, %struct.rtx_def** %rtx3040, align 8
  %fld3041 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1617, i32 0, i32 1
  %arrayidx3042 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3041, i32 0, i64 0
  %rtx3043 = bitcast %union.rtunion_def* %arrayidx3042 to %struct.rtx_def**
  %1618 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3044 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1618, i64 2
  store %struct.rtx_def** %rtx3043, %struct.rtx_def*** %arrayidx3044, align 8
  %1619 = load %struct.rtx_def*, %struct.rtx_def** %rtx3043, align 8
  %1620 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3045 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1620, i64 2
  store %struct.rtx_def* %1619, %struct.rtx_def** %arrayidx3045, align 8
  %1621 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3046 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1621, i32 0, i32 1
  %arrayidx3047 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3046, i32 0, i64 1
  %rtx3048 = bitcast %union.rtunion_def* %arrayidx3047 to %struct.rtx_def**
  %1622 = load %struct.rtx_def*, %struct.rtx_def** %rtx3048, align 8
  %fld3049 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1622, i32 0, i32 1
  %arrayidx3050 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3049, i32 0, i64 1
  %rtx3051 = bitcast %union.rtunion_def* %arrayidx3050 to %struct.rtx_def**
  %1623 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3052 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1623, i64 3
  store %struct.rtx_def** %rtx3051, %struct.rtx_def*** %arrayidx3052, align 8
  %1624 = load %struct.rtx_def*, %struct.rtx_def** %rtx3051, align 8
  %1625 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3053 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1625, i64 3
  store %struct.rtx_def* %1624, %struct.rtx_def** %arrayidx3053, align 8
  br label %sw.epilog

sw.bb.3054:                                       ; preds = %entry, %entry
  %1626 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3055 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1626, i32 0, i32 1
  %arrayidx3056 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3055, i32 0, i64 0
  %rtvec3057 = bitcast %union.rtunion_def* %arrayidx3056 to %struct.rtvec_def**
  %1627 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3057, align 8
  %elem3058 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1627, i32 0, i32 1
  %arrayidx3059 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3058, i32 0, i64 0
  %1628 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3059, align 8
  %fld3060 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1628, i32 0, i32 1
  %arrayidx3061 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3060, i32 0, i64 0
  %rtx3062 = bitcast %union.rtunion_def* %arrayidx3061 to %struct.rtx_def**
  %1629 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3063 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1629, i64 0
  store %struct.rtx_def** %rtx3062, %struct.rtx_def*** %arrayidx3063, align 8
  %1630 = load %struct.rtx_def*, %struct.rtx_def** %rtx3062, align 8
  %1631 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3064 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1631, i64 0
  store %struct.rtx_def* %1630, %struct.rtx_def** %arrayidx3064, align 8
  %1632 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3065 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1632, i32 0, i32 1
  %arrayidx3066 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3065, i32 0, i64 0
  %rtvec3067 = bitcast %union.rtunion_def* %arrayidx3066 to %struct.rtvec_def**
  %1633 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3067, align 8
  %elem3068 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1633, i32 0, i32 1
  %arrayidx3069 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3068, i32 0, i64 0
  %1634 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3069, align 8
  %fld3070 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1634, i32 0, i32 1
  %arrayidx3071 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3070, i32 0, i64 1
  %rtx3072 = bitcast %union.rtunion_def* %arrayidx3071 to %struct.rtx_def**
  %1635 = load %struct.rtx_def*, %struct.rtx_def** %rtx3072, align 8
  %fld3073 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1635, i32 0, i32 1
  %arrayidx3074 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3073, i32 0, i64 1
  %rtx3075 = bitcast %union.rtunion_def* %arrayidx3074 to %struct.rtx_def**
  %1636 = load %struct.rtx_def*, %struct.rtx_def** %rtx3075, align 8
  %fld3076 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1636, i32 0, i32 1
  %arrayidx3077 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3076, i32 0, i64 0
  %rtx3078 = bitcast %union.rtunion_def* %arrayidx3077 to %struct.rtx_def**
  %1637 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3079 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1637, i64 1
  store %struct.rtx_def** %rtx3078, %struct.rtx_def*** %arrayidx3079, align 8
  %1638 = load %struct.rtx_def*, %struct.rtx_def** %rtx3078, align 8
  %1639 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3080 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1639, i64 1
  store %struct.rtx_def* %1638, %struct.rtx_def** %arrayidx3080, align 8
  %1640 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3081 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1640, i32 0, i32 1
  %arrayidx3082 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3081, i32 0, i64 0
  %rtvec3083 = bitcast %union.rtunion_def* %arrayidx3082 to %struct.rtvec_def**
  %1641 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3083, align 8
  %elem3084 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1641, i32 0, i32 1
  %arrayidx3085 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3084, i32 0, i64 0
  %1642 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3085, align 8
  %fld3086 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1642, i32 0, i32 1
  %arrayidx3087 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3086, i32 0, i64 1
  %rtx3088 = bitcast %union.rtunion_def* %arrayidx3087 to %struct.rtx_def**
  %1643 = load %struct.rtx_def*, %struct.rtx_def** %rtx3088, align 8
  %fld3089 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1643, i32 0, i32 1
  %arrayidx3090 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3089, i32 0, i64 0
  %rtx3091 = bitcast %union.rtunion_def* %arrayidx3090 to %struct.rtx_def**
  %1644 = load %struct.rtx_def*, %struct.rtx_def** %rtx3091, align 8
  %fld3092 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1644, i32 0, i32 1
  %arrayidx3093 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3092, i32 0, i64 1
  %rtx3094 = bitcast %union.rtunion_def* %arrayidx3093 to %struct.rtx_def**
  %1645 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3095 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1645, i64 2
  store %struct.rtx_def** %rtx3094, %struct.rtx_def*** %arrayidx3095, align 8
  %1646 = load %struct.rtx_def*, %struct.rtx_def** %rtx3094, align 8
  %1647 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3096 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1647, i64 2
  store %struct.rtx_def* %1646, %struct.rtx_def** %arrayidx3096, align 8
  %1648 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3097 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1648, i32 0, i32 1
  %arrayidx3098 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3097, i32 0, i64 0
  %rtvec3099 = bitcast %union.rtunion_def* %arrayidx3098 to %struct.rtvec_def**
  %1649 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3099, align 8
  %elem3100 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1649, i32 0, i32 1
  %arrayidx3101 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3100, i32 0, i64 0
  %1650 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3101, align 8
  %fld3102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1650, i32 0, i32 1
  %arrayidx3103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3102, i32 0, i64 1
  %rtx3104 = bitcast %union.rtunion_def* %arrayidx3103 to %struct.rtx_def**
  %1651 = load %struct.rtx_def*, %struct.rtx_def** %rtx3104, align 8
  %fld3105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1651, i32 0, i32 1
  %arrayidx3106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3105, i32 0, i64 0
  %rtx3107 = bitcast %union.rtunion_def* %arrayidx3106 to %struct.rtx_def**
  %1652 = load %struct.rtx_def*, %struct.rtx_def** %rtx3107, align 8
  %fld3108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1652, i32 0, i32 1
  %arrayidx3109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3108, i32 0, i64 0
  %rtx3110 = bitcast %union.rtunion_def* %arrayidx3109 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3110, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1653 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1653, i32 0, i32 1
  %arrayidx3112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3111, i32 0, i64 0
  %rtvec3113 = bitcast %union.rtunion_def* %arrayidx3112 to %struct.rtvec_def**
  %1654 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3113, align 8
  %elem3114 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1654, i32 0, i32 1
  %arrayidx3115 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3114, i32 0, i64 0
  %1655 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3115, align 8
  %fld3116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1655, i32 0, i32 1
  %arrayidx3117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3116, i32 0, i64 1
  %rtx3118 = bitcast %union.rtunion_def* %arrayidx3117 to %struct.rtx_def**
  %1656 = load %struct.rtx_def*, %struct.rtx_def** %rtx3118, align 8
  %fld3119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1656, i32 0, i32 1
  %arrayidx3120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3119, i32 0, i64 1
  %rtx3121 = bitcast %union.rtunion_def* %arrayidx3120 to %struct.rtx_def**
  %1657 = load %struct.rtx_def*, %struct.rtx_def** %rtx3121, align 8
  %fld3122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1657, i32 0, i32 1
  %arrayidx3123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3122, i32 0, i64 1
  %rtx3124 = bitcast %union.rtunion_def* %arrayidx3123 to %struct.rtx_def**
  %1658 = load %struct.rtx_def*, %struct.rtx_def** %rtx3124, align 8
  %fld3125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1658, i32 0, i32 1
  %arrayidx3126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3125, i32 0, i64 1
  %rtx3127 = bitcast %union.rtunion_def* %arrayidx3126 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3127, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.3128:                                       ; preds = %entry, %entry, %entry
  %1659 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1659, i32 0, i32 1
  %arrayidx3130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3129, i32 0, i64 0
  %rtvec3131 = bitcast %union.rtunion_def* %arrayidx3130 to %struct.rtvec_def**
  %1660 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3131, align 8
  %elem3132 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1660, i32 0, i32 1
  %arrayidx3133 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3132, i32 0, i64 0
  %1661 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3133, align 8
  %fld3134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1661, i32 0, i32 1
  %arrayidx3135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3134, i32 0, i64 0
  %rtx3136 = bitcast %union.rtunion_def* %arrayidx3135 to %struct.rtx_def**
  %1662 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3137 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1662, i64 0
  store %struct.rtx_def** %rtx3136, %struct.rtx_def*** %arrayidx3137, align 8
  %1663 = load %struct.rtx_def*, %struct.rtx_def** %rtx3136, align 8
  %1664 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3138 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1664, i64 0
  store %struct.rtx_def* %1663, %struct.rtx_def** %arrayidx3138, align 8
  %1665 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1665, i32 0, i32 1
  %arrayidx3140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3139, i32 0, i64 0
  %rtvec3141 = bitcast %union.rtunion_def* %arrayidx3140 to %struct.rtvec_def**
  %1666 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3141, align 8
  %elem3142 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1666, i32 0, i32 1
  %arrayidx3143 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3142, i32 0, i64 0
  %1667 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3143, align 8
  %fld3144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1667, i32 0, i32 1
  %arrayidx3145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3144, i32 0, i64 1
  %rtx3146 = bitcast %union.rtunion_def* %arrayidx3145 to %struct.rtx_def**
  %1668 = load %struct.rtx_def*, %struct.rtx_def** %rtx3146, align 8
  %fld3147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1668, i32 0, i32 1
  %arrayidx3148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3147, i32 0, i64 0
  %rtx3149 = bitcast %union.rtunion_def* %arrayidx3148 to %struct.rtx_def**
  %1669 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3150 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1669, i64 1
  store %struct.rtx_def** %rtx3149, %struct.rtx_def*** %arrayidx3150, align 8
  %1670 = load %struct.rtx_def*, %struct.rtx_def** %rtx3149, align 8
  %1671 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3151 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1671, i64 1
  store %struct.rtx_def* %1670, %struct.rtx_def** %arrayidx3151, align 8
  %1672 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1672, i32 0, i32 1
  %arrayidx3153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3152, i32 0, i64 0
  %rtvec3154 = bitcast %union.rtunion_def* %arrayidx3153 to %struct.rtvec_def**
  %1673 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3154, align 8
  %elem3155 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1673, i32 0, i32 1
  %arrayidx3156 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3155, i32 0, i64 0
  %1674 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3156, align 8
  %fld3157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1674, i32 0, i32 1
  %arrayidx3158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3157, i32 0, i64 1
  %rtx3159 = bitcast %union.rtunion_def* %arrayidx3158 to %struct.rtx_def**
  %1675 = load %struct.rtx_def*, %struct.rtx_def** %rtx3159, align 8
  %fld3160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1675, i32 0, i32 1
  %arrayidx3161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3160, i32 0, i64 1
  %rtx3162 = bitcast %union.rtunion_def* %arrayidx3161 to %struct.rtx_def**
  %1676 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3163 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1676, i64 2
  store %struct.rtx_def** %rtx3162, %struct.rtx_def*** %arrayidx3163, align 8
  %1677 = load %struct.rtx_def*, %struct.rtx_def** %rtx3162, align 8
  %1678 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3164 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1678, i64 2
  store %struct.rtx_def* %1677, %struct.rtx_def** %arrayidx3164, align 8
  %1679 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1679, i32 0, i32 1
  %arrayidx3166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3165, i32 0, i64 0
  %rtvec3167 = bitcast %union.rtunion_def* %arrayidx3166 to %struct.rtvec_def**
  %1680 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3167, align 8
  %elem3168 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1680, i32 0, i32 1
  %arrayidx3169 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3168, i32 0, i64 1
  %1681 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3169, align 8
  %fld3170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1681, i32 0, i32 1
  %arrayidx3171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3170, i32 0, i64 0
  %rtx3172 = bitcast %union.rtunion_def* %arrayidx3171 to %struct.rtx_def**
  %1682 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3173 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1682, i64 3
  store %struct.rtx_def** %rtx3172, %struct.rtx_def*** %arrayidx3173, align 8
  %1683 = load %struct.rtx_def*, %struct.rtx_def** %rtx3172, align 8
  %1684 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3174 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1684, i64 3
  store %struct.rtx_def* %1683, %struct.rtx_def** %arrayidx3174, align 8
  br label %sw.epilog

sw.bb.3175:                                       ; preds = %entry
  %1685 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1685, i32 0, i32 1
  %arrayidx3177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3176, i32 0, i64 0
  %rtvec3178 = bitcast %union.rtunion_def* %arrayidx3177 to %struct.rtvec_def**
  %1686 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3178, align 8
  %elem3179 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1686, i32 0, i32 1
  %arrayidx3180 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3179, i32 0, i64 1
  %1687 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3180, align 8
  %fld3181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1687, i32 0, i32 1
  %arrayidx3182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3181, i32 0, i64 0
  %rtx3183 = bitcast %union.rtunion_def* %arrayidx3182 to %struct.rtx_def**
  %1688 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3184 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1688, i64 0
  store %struct.rtx_def** %rtx3183, %struct.rtx_def*** %arrayidx3184, align 8
  %1689 = load %struct.rtx_def*, %struct.rtx_def** %rtx3183, align 8
  %1690 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3185 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1690, i64 0
  store %struct.rtx_def* %1689, %struct.rtx_def** %arrayidx3185, align 8
  %1691 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1691, i32 0, i32 1
  %arrayidx3187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3186, i32 0, i64 0
  %rtvec3188 = bitcast %union.rtunion_def* %arrayidx3187 to %struct.rtvec_def**
  %1692 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3188, align 8
  %elem3189 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1692, i32 0, i32 1
  %arrayidx3190 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3189, i32 0, i64 0
  %1693 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3190, align 8
  %fld3191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1693, i32 0, i32 1
  %arrayidx3192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3191, i32 0, i64 1
  %rtx3193 = bitcast %union.rtunion_def* %arrayidx3192 to %struct.rtx_def**
  %1694 = load %struct.rtx_def*, %struct.rtx_def** %rtx3193, align 8
  %fld3194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1694, i32 0, i32 1
  %arrayidx3195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3194, i32 0, i64 0
  %rtx3196 = bitcast %union.rtunion_def* %arrayidx3195 to %struct.rtx_def**
  %1695 = load %struct.rtx_def*, %struct.rtx_def** %rtx3196, align 8
  %fld3197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1695, i32 0, i32 1
  %arrayidx3198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3197, i32 0, i64 0
  %rtx3199 = bitcast %union.rtunion_def* %arrayidx3198 to %struct.rtx_def**
  %1696 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3200 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1696, i64 1
  store %struct.rtx_def** %rtx3199, %struct.rtx_def*** %arrayidx3200, align 8
  %1697 = load %struct.rtx_def*, %struct.rtx_def** %rtx3199, align 8
  %1698 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3201 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1698, i64 1
  store %struct.rtx_def* %1697, %struct.rtx_def** %arrayidx3201, align 8
  %1699 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1699, i32 0, i32 1
  %arrayidx3203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3202, i32 0, i64 0
  %rtvec3204 = bitcast %union.rtunion_def* %arrayidx3203 to %struct.rtvec_def**
  %1700 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3204, align 8
  %elem3205 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1700, i32 0, i32 1
  %arrayidx3206 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3205, i32 0, i64 1
  %1701 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3206, align 8
  %fld3207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1701, i32 0, i32 1
  %arrayidx3208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3207, i32 0, i64 1
  %rtx3209 = bitcast %union.rtunion_def* %arrayidx3208 to %struct.rtx_def**
  %1702 = load %struct.rtx_def*, %struct.rtx_def** %rtx3209, align 8
  %fld3210 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1702, i32 0, i32 1
  %arrayidx3211 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3210, i32 0, i64 0
  %rtx3212 = bitcast %union.rtunion_def* %arrayidx3211 to %struct.rtx_def**
  %1703 = load %struct.rtx_def*, %struct.rtx_def** %rtx3212, align 8
  %fld3213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1703, i32 0, i32 1
  %arrayidx3214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3213, i32 0, i64 0
  %rtx3215 = bitcast %union.rtunion_def* %arrayidx3214 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3215, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.3216:                                       ; preds = %entry
  %1704 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1704, i32 0, i32 1
  %arrayidx3218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3217, i32 0, i64 0
  %rtvec3219 = bitcast %union.rtunion_def* %arrayidx3218 to %struct.rtvec_def**
  %1705 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3219, align 8
  %elem3220 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1705, i32 0, i32 1
  %arrayidx3221 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3220, i32 0, i64 1
  %1706 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3221, align 8
  %fld3222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1706, i32 0, i32 1
  %arrayidx3223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3222, i32 0, i64 0
  %rtx3224 = bitcast %union.rtunion_def* %arrayidx3223 to %struct.rtx_def**
  %1707 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3225 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1707, i64 0
  store %struct.rtx_def** %rtx3224, %struct.rtx_def*** %arrayidx3225, align 8
  %1708 = load %struct.rtx_def*, %struct.rtx_def** %rtx3224, align 8
  %1709 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3226 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1709, i64 0
  store %struct.rtx_def* %1708, %struct.rtx_def** %arrayidx3226, align 8
  %1710 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1710, i32 0, i32 1
  %arrayidx3228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3227, i32 0, i64 0
  %rtvec3229 = bitcast %union.rtunion_def* %arrayidx3228 to %struct.rtvec_def**
  %1711 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3229, align 8
  %elem3230 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1711, i32 0, i32 1
  %arrayidx3231 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3230, i32 0, i64 0
  %1712 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3231, align 8
  %fld3232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1712, i32 0, i32 1
  %arrayidx3233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3232, i32 0, i64 1
  %rtx3234 = bitcast %union.rtunion_def* %arrayidx3233 to %struct.rtx_def**
  %1713 = load %struct.rtx_def*, %struct.rtx_def** %rtx3234, align 8
  %fld3235 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1713, i32 0, i32 1
  %arrayidx3236 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3235, i32 0, i64 0
  %rtx3237 = bitcast %union.rtunion_def* %arrayidx3236 to %struct.rtx_def**
  %1714 = load %struct.rtx_def*, %struct.rtx_def** %rtx3237, align 8
  %fld3238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1714, i32 0, i32 1
  %arrayidx3239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3238, i32 0, i64 0
  %rtx3240 = bitcast %union.rtunion_def* %arrayidx3239 to %struct.rtx_def**
  %1715 = load %struct.rtx_def*, %struct.rtx_def** %rtx3240, align 8
  %fld3241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1715, i32 0, i32 1
  %arrayidx3242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3241, i32 0, i64 0
  %rtx3243 = bitcast %union.rtunion_def* %arrayidx3242 to %struct.rtx_def**
  %1716 = load %struct.rtx_def*, %struct.rtx_def** %rtx3243, align 8
  %fld3244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1716, i32 0, i32 1
  %arrayidx3245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3244, i32 0, i64 0
  %rtx3246 = bitcast %union.rtunion_def* %arrayidx3245 to %struct.rtx_def**
  %1717 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3247 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1717, i64 1
  store %struct.rtx_def** %rtx3246, %struct.rtx_def*** %arrayidx3247, align 8
  %1718 = load %struct.rtx_def*, %struct.rtx_def** %rtx3246, align 8
  %1719 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3248 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1719, i64 1
  store %struct.rtx_def* %1718, %struct.rtx_def** %arrayidx3248, align 8
  %1720 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3249 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1720, i32 0, i32 1
  %arrayidx3250 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3249, i32 0, i64 0
  %rtvec3251 = bitcast %union.rtunion_def* %arrayidx3250 to %struct.rtvec_def**
  %1721 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3251, align 8
  %elem3252 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1721, i32 0, i32 1
  %arrayidx3253 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3252, i32 0, i64 1
  %1722 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3253, align 8
  %fld3254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1722, i32 0, i32 1
  %arrayidx3255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3254, i32 0, i64 1
  %rtx3256 = bitcast %union.rtunion_def* %arrayidx3255 to %struct.rtx_def**
  %1723 = load %struct.rtx_def*, %struct.rtx_def** %rtx3256, align 8
  %fld3257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1723, i32 0, i32 1
  %arrayidx3258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3257, i32 0, i64 0
  %rtx3259 = bitcast %union.rtunion_def* %arrayidx3258 to %struct.rtx_def**
  %1724 = load %struct.rtx_def*, %struct.rtx_def** %rtx3259, align 8
  %fld3260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1724, i32 0, i32 1
  %arrayidx3261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3260, i32 0, i64 0
  %rtx3262 = bitcast %union.rtunion_def* %arrayidx3261 to %struct.rtx_def**
  %1725 = load %struct.rtx_def*, %struct.rtx_def** %rtx3262, align 8
  %fld3263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1725, i32 0, i32 1
  %arrayidx3264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3263, i32 0, i64 0
  %rtx3265 = bitcast %union.rtunion_def* %arrayidx3264 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3265, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.3266:                                       ; preds = %entry
  %1726 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1726, i32 0, i32 1
  %arrayidx3268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3267, i32 0, i64 0
  %rtvec3269 = bitcast %union.rtunion_def* %arrayidx3268 to %struct.rtvec_def**
  %1727 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3269, align 8
  %elem3270 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1727, i32 0, i32 1
  %arrayidx3271 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3270, i32 0, i64 0
  %1728 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3271, align 8
  %fld3272 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1728, i32 0, i32 1
  %arrayidx3273 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3272, i32 0, i64 0
  %rtx3274 = bitcast %union.rtunion_def* %arrayidx3273 to %struct.rtx_def**
  %1729 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3275 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1729, i64 0
  store %struct.rtx_def** %rtx3274, %struct.rtx_def*** %arrayidx3275, align 8
  %1730 = load %struct.rtx_def*, %struct.rtx_def** %rtx3274, align 8
  %1731 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3276 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1731, i64 0
  store %struct.rtx_def* %1730, %struct.rtx_def** %arrayidx3276, align 8
  %1732 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1732, i32 0, i32 1
  %arrayidx3278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3277, i32 0, i64 0
  %rtvec3279 = bitcast %union.rtunion_def* %arrayidx3278 to %struct.rtvec_def**
  %1733 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3279, align 8
  %elem3280 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1733, i32 0, i32 1
  %arrayidx3281 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3280, i32 0, i64 0
  %1734 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3281, align 8
  %fld3282 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1734, i32 0, i32 1
  %arrayidx3283 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3282, i32 0, i64 1
  %rtx3284 = bitcast %union.rtunion_def* %arrayidx3283 to %struct.rtx_def**
  %1735 = load %struct.rtx_def*, %struct.rtx_def** %rtx3284, align 8
  %fld3285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1735, i32 0, i32 1
  %arrayidx3286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3285, i32 0, i64 0
  %rtx3287 = bitcast %union.rtunion_def* %arrayidx3286 to %struct.rtx_def**
  %1736 = load %struct.rtx_def*, %struct.rtx_def** %rtx3287, align 8
  %fld3288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1736, i32 0, i32 1
  %arrayidx3289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3288, i32 0, i64 0
  %rtx3290 = bitcast %union.rtunion_def* %arrayidx3289 to %struct.rtx_def**
  %1737 = load %struct.rtx_def*, %struct.rtx_def** %rtx3290, align 8
  %fld3291 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1737, i32 0, i32 1
  %arrayidx3292 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3291, i32 0, i64 0
  %rtx3293 = bitcast %union.rtunion_def* %arrayidx3292 to %struct.rtx_def**
  %1738 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3294 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1738, i64 1
  store %struct.rtx_def** %rtx3293, %struct.rtx_def*** %arrayidx3294, align 8
  %1739 = load %struct.rtx_def*, %struct.rtx_def** %rtx3293, align 8
  %1740 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3295 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1740, i64 1
  store %struct.rtx_def* %1739, %struct.rtx_def** %arrayidx3295, align 8
  br label %sw.epilog

sw.bb.3296:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1741 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3297 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1741, i32 0, i32 1
  %arrayidx3298 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3297, i32 0, i64 0
  %rtvec3299 = bitcast %union.rtunion_def* %arrayidx3298 to %struct.rtvec_def**
  %1742 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3299, align 8
  %elem3300 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1742, i32 0, i32 1
  %arrayidx3301 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3300, i32 0, i64 1
  %1743 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3301, align 8
  %fld3302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1743, i32 0, i32 1
  %arrayidx3303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3302, i32 0, i64 0
  %rtx3304 = bitcast %union.rtunion_def* %arrayidx3303 to %struct.rtx_def**
  %1744 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3305 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1744, i64 0
  store %struct.rtx_def** %rtx3304, %struct.rtx_def*** %arrayidx3305, align 8
  %1745 = load %struct.rtx_def*, %struct.rtx_def** %rtx3304, align 8
  %1746 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3306 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1746, i64 0
  store %struct.rtx_def* %1745, %struct.rtx_def** %arrayidx3306, align 8
  %1747 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3307 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1747, i32 0, i32 1
  %arrayidx3308 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3307, i32 0, i64 0
  %rtvec3309 = bitcast %union.rtunion_def* %arrayidx3308 to %struct.rtvec_def**
  %1748 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3309, align 8
  %elem3310 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1748, i32 0, i32 1
  %arrayidx3311 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3310, i32 0, i64 0
  %1749 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3311, align 8
  %fld3312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1749, i32 0, i32 1
  %arrayidx3313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3312, i32 0, i64 1
  %rtx3314 = bitcast %union.rtunion_def* %arrayidx3313 to %struct.rtx_def**
  %1750 = load %struct.rtx_def*, %struct.rtx_def** %rtx3314, align 8
  %fld3315 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1750, i32 0, i32 1
  %arrayidx3316 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3315, i32 0, i64 0
  %rtx3317 = bitcast %union.rtunion_def* %arrayidx3316 to %struct.rtx_def**
  %1751 = load %struct.rtx_def*, %struct.rtx_def** %rtx3317, align 8
  %fld3318 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1751, i32 0, i32 1
  %arrayidx3319 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3318, i32 0, i64 0
  %rtx3320 = bitcast %union.rtunion_def* %arrayidx3319 to %struct.rtx_def**
  %1752 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3321 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1752, i64 1
  store %struct.rtx_def** %rtx3320, %struct.rtx_def*** %arrayidx3321, align 8
  %1753 = load %struct.rtx_def*, %struct.rtx_def** %rtx3320, align 8
  %1754 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3322 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1754, i64 1
  store %struct.rtx_def* %1753, %struct.rtx_def** %arrayidx3322, align 8
  %1755 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1755, i32 0, i32 1
  %arrayidx3324 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3323, i32 0, i64 0
  %rtvec3325 = bitcast %union.rtunion_def* %arrayidx3324 to %struct.rtvec_def**
  %1756 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3325, align 8
  %elem3326 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1756, i32 0, i32 1
  %arrayidx3327 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3326, i32 0, i64 1
  %1757 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3327, align 8
  %fld3328 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1757, i32 0, i32 1
  %arrayidx3329 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3328, i32 0, i64 1
  %rtx3330 = bitcast %union.rtunion_def* %arrayidx3329 to %struct.rtx_def**
  %1758 = load %struct.rtx_def*, %struct.rtx_def** %rtx3330, align 8
  %fld3331 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1758, i32 0, i32 1
  %arrayidx3332 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3331, i32 0, i64 0
  %rtx3333 = bitcast %union.rtunion_def* %arrayidx3332 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3333, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.3334:                                       ; preds = %entry, %entry, %entry, %entry
  %1759 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3335 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1759, i32 0, i32 1
  %arrayidx3336 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3335, i32 0, i64 0
  %rtvec3337 = bitcast %union.rtunion_def* %arrayidx3336 to %struct.rtvec_def**
  %1760 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3337, align 8
  %elem3338 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1760, i32 0, i32 1
  %arrayidx3339 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3338, i32 0, i64 1
  %1761 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3339, align 8
  %fld3340 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1761, i32 0, i32 1
  %arrayidx3341 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3340, i32 0, i64 0
  %rtx3342 = bitcast %union.rtunion_def* %arrayidx3341 to %struct.rtx_def**
  %1762 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3343 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1762, i64 0
  store %struct.rtx_def** %rtx3342, %struct.rtx_def*** %arrayidx3343, align 8
  %1763 = load %struct.rtx_def*, %struct.rtx_def** %rtx3342, align 8
  %1764 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3344 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1764, i64 0
  store %struct.rtx_def* %1763, %struct.rtx_def** %arrayidx3344, align 8
  %1765 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3345 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1765, i32 0, i32 1
  %arrayidx3346 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3345, i32 0, i64 0
  %rtvec3347 = bitcast %union.rtunion_def* %arrayidx3346 to %struct.rtvec_def**
  %1766 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3347, align 8
  %elem3348 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1766, i32 0, i32 1
  %arrayidx3349 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3348, i32 0, i64 0
  %1767 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3349, align 8
  %fld3350 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1767, i32 0, i32 1
  %arrayidx3351 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3350, i32 0, i64 1
  %rtx3352 = bitcast %union.rtunion_def* %arrayidx3351 to %struct.rtx_def**
  %1768 = load %struct.rtx_def*, %struct.rtx_def** %rtx3352, align 8
  %fld3353 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1768, i32 0, i32 1
  %arrayidx3354 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3353, i32 0, i64 0
  %rtx3355 = bitcast %union.rtunion_def* %arrayidx3354 to %struct.rtx_def**
  %1769 = load %struct.rtx_def*, %struct.rtx_def** %rtx3355, align 8
  %fld3356 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1769, i32 0, i32 1
  %arrayidx3357 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3356, i32 0, i64 0
  %rtx3358 = bitcast %union.rtunion_def* %arrayidx3357 to %struct.rtx_def**
  %1770 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3359 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1770, i64 1
  store %struct.rtx_def** %rtx3358, %struct.rtx_def*** %arrayidx3359, align 8
  %1771 = load %struct.rtx_def*, %struct.rtx_def** %rtx3358, align 8
  %1772 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3360 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1772, i64 1
  store %struct.rtx_def* %1771, %struct.rtx_def** %arrayidx3360, align 8
  %1773 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3361 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1773, i32 0, i32 1
  %arrayidx3362 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3361, i32 0, i64 0
  %rtvec3363 = bitcast %union.rtunion_def* %arrayidx3362 to %struct.rtvec_def**
  %1774 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3363, align 8
  %elem3364 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1774, i32 0, i32 1
  %arrayidx3365 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3364, i32 0, i64 0
  %1775 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3365, align 8
  %fld3366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1775, i32 0, i32 1
  %arrayidx3367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3366, i32 0, i64 1
  %rtx3368 = bitcast %union.rtunion_def* %arrayidx3367 to %struct.rtx_def**
  %1776 = load %struct.rtx_def*, %struct.rtx_def** %rtx3368, align 8
  %fld3369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1776, i32 0, i32 1
  %arrayidx3370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3369, i32 0, i64 0
  %rtx3371 = bitcast %union.rtunion_def* %arrayidx3370 to %struct.rtx_def**
  %1777 = load %struct.rtx_def*, %struct.rtx_def** %rtx3371, align 8
  %fld3372 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1777, i32 0, i32 1
  %arrayidx3373 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3372, i32 0, i64 1
  %rtx3374 = bitcast %union.rtunion_def* %arrayidx3373 to %struct.rtx_def**
  %1778 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3375 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1778, i64 2
  store %struct.rtx_def** %rtx3374, %struct.rtx_def*** %arrayidx3375, align 8
  %1779 = load %struct.rtx_def*, %struct.rtx_def** %rtx3374, align 8
  %1780 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3376 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1780, i64 2
  store %struct.rtx_def* %1779, %struct.rtx_def** %arrayidx3376, align 8
  %1781 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3377 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1781, i32 0, i32 1
  %arrayidx3378 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3377, i32 0, i64 0
  %rtvec3379 = bitcast %union.rtunion_def* %arrayidx3378 to %struct.rtvec_def**
  %1782 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3379, align 8
  %elem3380 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1782, i32 0, i32 1
  %arrayidx3381 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3380, i32 0, i64 1
  %1783 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3381, align 8
  %fld3382 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1783, i32 0, i32 1
  %arrayidx3383 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3382, i32 0, i64 1
  %rtx3384 = bitcast %union.rtunion_def* %arrayidx3383 to %struct.rtx_def**
  %1784 = load %struct.rtx_def*, %struct.rtx_def** %rtx3384, align 8
  %fld3385 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1784, i32 0, i32 1
  %arrayidx3386 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3385, i32 0, i64 0
  %rtx3387 = bitcast %union.rtunion_def* %arrayidx3386 to %struct.rtx_def**
  %1785 = load %struct.rtx_def*, %struct.rtx_def** %rtx3387, align 8
  %fld3388 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1785, i32 0, i32 1
  %arrayidx3389 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3388, i32 0, i64 0
  %rtx3390 = bitcast %union.rtunion_def* %arrayidx3389 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3390, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1786 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3391 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1786, i32 0, i32 1
  %arrayidx3392 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3391, i32 0, i64 0
  %rtvec3393 = bitcast %union.rtunion_def* %arrayidx3392 to %struct.rtvec_def**
  %1787 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3393, align 8
  %elem3394 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1787, i32 0, i32 1
  %arrayidx3395 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3394, i32 0, i64 1
  %1788 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3395, align 8
  %fld3396 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1788, i32 0, i32 1
  %arrayidx3397 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3396, i32 0, i64 1
  %rtx3398 = bitcast %union.rtunion_def* %arrayidx3397 to %struct.rtx_def**
  %1789 = load %struct.rtx_def*, %struct.rtx_def** %rtx3398, align 8
  %fld3399 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1789, i32 0, i32 1
  %arrayidx3400 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3399, i32 0, i64 1
  %rtx3401 = bitcast %union.rtunion_def* %arrayidx3400 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3401, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.3402:                                       ; preds = %entry, %entry, %entry
  %1790 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3403 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1790, i32 0, i32 1
  %arrayidx3404 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3403, i32 0, i64 0
  %rtvec3405 = bitcast %union.rtunion_def* %arrayidx3404 to %struct.rtvec_def**
  %1791 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3405, align 8
  %elem3406 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1791, i32 0, i32 1
  %arrayidx3407 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3406, i32 0, i64 0
  %1792 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3407, align 8
  %fld3408 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1792, i32 0, i32 1
  %arrayidx3409 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3408, i32 0, i64 0
  %rtx3410 = bitcast %union.rtunion_def* %arrayidx3409 to %struct.rtx_def**
  %1793 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3411 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1793, i64 0
  store %struct.rtx_def** %rtx3410, %struct.rtx_def*** %arrayidx3411, align 8
  %1794 = load %struct.rtx_def*, %struct.rtx_def** %rtx3410, align 8
  %1795 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3412 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1795, i64 0
  store %struct.rtx_def* %1794, %struct.rtx_def** %arrayidx3412, align 8
  %1796 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3413 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1796, i32 0, i32 1
  %arrayidx3414 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3413, i32 0, i64 0
  %rtvec3415 = bitcast %union.rtunion_def* %arrayidx3414 to %struct.rtvec_def**
  %1797 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3415, align 8
  %elem3416 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1797, i32 0, i32 1
  %arrayidx3417 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3416, i32 0, i64 0
  %1798 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3417, align 8
  %fld3418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1798, i32 0, i32 1
  %arrayidx3419 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3418, i32 0, i64 1
  %rtx3420 = bitcast %union.rtunion_def* %arrayidx3419 to %struct.rtx_def**
  %1799 = load %struct.rtx_def*, %struct.rtx_def** %rtx3420, align 8
  %fld3421 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1799, i32 0, i32 1
  %arrayidx3422 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3421, i32 0, i64 0
  %rtx3423 = bitcast %union.rtunion_def* %arrayidx3422 to %struct.rtx_def**
  %1800 = load %struct.rtx_def*, %struct.rtx_def** %rtx3423, align 8
  %fld3424 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1800, i32 0, i32 1
  %arrayidx3425 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3424, i32 0, i64 0
  %rtx3426 = bitcast %union.rtunion_def* %arrayidx3425 to %struct.rtx_def**
  %1801 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3427 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1801, i64 1
  store %struct.rtx_def** %rtx3426, %struct.rtx_def*** %arrayidx3427, align 8
  %1802 = load %struct.rtx_def*, %struct.rtx_def** %rtx3426, align 8
  %1803 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3428 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1803, i64 1
  store %struct.rtx_def* %1802, %struct.rtx_def** %arrayidx3428, align 8
  %1804 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3429 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1804, i32 0, i32 1
  %arrayidx3430 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3429, i32 0, i64 0
  %rtvec3431 = bitcast %union.rtunion_def* %arrayidx3430 to %struct.rtvec_def**
  %1805 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3431, align 8
  %elem3432 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1805, i32 0, i32 1
  %arrayidx3433 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3432, i32 0, i64 0
  %1806 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3433, align 8
  %fld3434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1806, i32 0, i32 1
  %arrayidx3435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3434, i32 0, i64 1
  %rtx3436 = bitcast %union.rtunion_def* %arrayidx3435 to %struct.rtx_def**
  %1807 = load %struct.rtx_def*, %struct.rtx_def** %rtx3436, align 8
  %fld3437 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1807, i32 0, i32 1
  %arrayidx3438 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3437, i32 0, i64 1
  %rtx3439 = bitcast %union.rtunion_def* %arrayidx3438 to %struct.rtx_def**
  %1808 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3440 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1808, i64 2
  store %struct.rtx_def** %rtx3439, %struct.rtx_def*** %arrayidx3440, align 8
  %1809 = load %struct.rtx_def*, %struct.rtx_def** %rtx3439, align 8
  %1810 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3441 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1810, i64 2
  store %struct.rtx_def* %1809, %struct.rtx_def** %arrayidx3441, align 8
  br label %sw.epilog

sw.bb.3442:                                       ; preds = %entry, %entry, %entry
  %1811 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3443 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1811, i32 0, i32 1
  %arrayidx3444 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3443, i32 0, i64 0
  %rtvec3445 = bitcast %union.rtunion_def* %arrayidx3444 to %struct.rtvec_def**
  %1812 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3445, align 8
  %elem3446 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1812, i32 0, i32 1
  %arrayidx3447 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3446, i32 0, i64 1
  %1813 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3447, align 8
  %fld3448 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1813, i32 0, i32 1
  %arrayidx3449 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3448, i32 0, i64 0
  %rtx3450 = bitcast %union.rtunion_def* %arrayidx3449 to %struct.rtx_def**
  %1814 = load %struct.rtx_def*, %struct.rtx_def** %rtx3450, align 8
  %fld3451 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1814, i32 0, i32 1
  %arrayidx3452 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3451, i32 0, i64 0
  %rtx3453 = bitcast %union.rtunion_def* %arrayidx3452 to %struct.rtx_def**
  %1815 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3454 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1815, i64 0
  store %struct.rtx_def** %rtx3453, %struct.rtx_def*** %arrayidx3454, align 8
  %1816 = load %struct.rtx_def*, %struct.rtx_def** %rtx3453, align 8
  %1817 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3455 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1817, i64 0
  store %struct.rtx_def* %1816, %struct.rtx_def** %arrayidx3455, align 8
  %1818 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3456 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1818, i32 0, i32 1
  %arrayidx3457 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3456, i32 0, i64 0
  %rtvec3458 = bitcast %union.rtunion_def* %arrayidx3457 to %struct.rtvec_def**
  %1819 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3458, align 8
  %elem3459 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1819, i32 0, i32 1
  %arrayidx3460 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3459, i32 0, i64 0
  %1820 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3460, align 8
  %fld3461 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1820, i32 0, i32 1
  %arrayidx3462 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3461, i32 0, i64 1
  %rtx3463 = bitcast %union.rtunion_def* %arrayidx3462 to %struct.rtx_def**
  %1821 = load %struct.rtx_def*, %struct.rtx_def** %rtx3463, align 8
  %fld3464 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1821, i32 0, i32 1
  %arrayidx3465 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3464, i32 0, i64 0
  %rtx3466 = bitcast %union.rtunion_def* %arrayidx3465 to %struct.rtx_def**
  %1822 = load %struct.rtx_def*, %struct.rtx_def** %rtx3466, align 8
  %fld3467 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1822, i32 0, i32 1
  %arrayidx3468 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3467, i32 0, i64 0
  %rtx3469 = bitcast %union.rtunion_def* %arrayidx3468 to %struct.rtx_def**
  %1823 = load %struct.rtx_def*, %struct.rtx_def** %rtx3469, align 8
  %fld3470 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1823, i32 0, i32 1
  %arrayidx3471 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3470, i32 0, i64 0
  %rtx3472 = bitcast %union.rtunion_def* %arrayidx3471 to %struct.rtx_def**
  %1824 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3473 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1824, i64 1
  store %struct.rtx_def** %rtx3472, %struct.rtx_def*** %arrayidx3473, align 8
  %1825 = load %struct.rtx_def*, %struct.rtx_def** %rtx3472, align 8
  %1826 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3474 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1826, i64 1
  store %struct.rtx_def* %1825, %struct.rtx_def** %arrayidx3474, align 8
  %1827 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1827, i32 0, i32 1
  %arrayidx3476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3475, i32 0, i64 0
  %rtvec3477 = bitcast %union.rtunion_def* %arrayidx3476 to %struct.rtvec_def**
  %1828 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3477, align 8
  %elem3478 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1828, i32 0, i32 1
  %arrayidx3479 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3478, i32 0, i64 0
  %1829 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3479, align 8
  %fld3480 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1829, i32 0, i32 1
  %arrayidx3481 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3480, i32 0, i64 1
  %rtx3482 = bitcast %union.rtunion_def* %arrayidx3481 to %struct.rtx_def**
  %1830 = load %struct.rtx_def*, %struct.rtx_def** %rtx3482, align 8
  %fld3483 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1830, i32 0, i32 1
  %arrayidx3484 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3483, i32 0, i64 0
  %rtx3485 = bitcast %union.rtunion_def* %arrayidx3484 to %struct.rtx_def**
  %1831 = load %struct.rtx_def*, %struct.rtx_def** %rtx3485, align 8
  %fld3486 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1831, i32 0, i32 1
  %arrayidx3487 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3486, i32 0, i64 1
  %rtx3488 = bitcast %union.rtunion_def* %arrayidx3487 to %struct.rtx_def**
  %1832 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3489 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1832, i64 2
  store %struct.rtx_def** %rtx3488, %struct.rtx_def*** %arrayidx3489, align 8
  %1833 = load %struct.rtx_def*, %struct.rtx_def** %rtx3488, align 8
  %1834 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3490 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1834, i64 2
  store %struct.rtx_def* %1833, %struct.rtx_def** %arrayidx3490, align 8
  %1835 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3491 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1835, i32 0, i32 1
  %arrayidx3492 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3491, i32 0, i64 0
  %rtvec3493 = bitcast %union.rtunion_def* %arrayidx3492 to %struct.rtvec_def**
  %1836 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3493, align 8
  %elem3494 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1836, i32 0, i32 1
  %arrayidx3495 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3494, i32 0, i64 1
  %1837 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3495, align 8
  %fld3496 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1837, i32 0, i32 1
  %arrayidx3497 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3496, i32 0, i64 1
  %rtx3498 = bitcast %union.rtunion_def* %arrayidx3497 to %struct.rtx_def**
  %1838 = load %struct.rtx_def*, %struct.rtx_def** %rtx3498, align 8
  %fld3499 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1838, i32 0, i32 1
  %arrayidx3500 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3499, i32 0, i64 0
  %rtx3501 = bitcast %union.rtunion_def* %arrayidx3500 to %struct.rtx_def**
  %1839 = load %struct.rtx_def*, %struct.rtx_def** %rtx3501, align 8
  %fld3502 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1839, i32 0, i32 1
  %arrayidx3503 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3502, i32 0, i64 0
  %rtx3504 = bitcast %union.rtunion_def* %arrayidx3503 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3504, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1840 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3505 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1840, i32 0, i32 1
  %arrayidx3506 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3505, i32 0, i64 0
  %rtvec3507 = bitcast %union.rtunion_def* %arrayidx3506 to %struct.rtvec_def**
  %1841 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3507, align 8
  %elem3508 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1841, i32 0, i32 1
  %arrayidx3509 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3508, i32 0, i64 1
  %1842 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3509, align 8
  %fld3510 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1842, i32 0, i32 1
  %arrayidx3511 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3510, i32 0, i64 1
  %rtx3512 = bitcast %union.rtunion_def* %arrayidx3511 to %struct.rtx_def**
  %1843 = load %struct.rtx_def*, %struct.rtx_def** %rtx3512, align 8
  %fld3513 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1843, i32 0, i32 1
  %arrayidx3514 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3513, i32 0, i64 1
  %rtx3515 = bitcast %union.rtunion_def* %arrayidx3514 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3515, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.3516:                                       ; preds = %entry, %entry
  %1844 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3517 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1844, i32 0, i32 1
  %arrayidx3518 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3517, i32 0, i64 0
  %rtvec3519 = bitcast %union.rtunion_def* %arrayidx3518 to %struct.rtvec_def**
  %1845 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3519, align 8
  %elem3520 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1845, i32 0, i32 1
  %arrayidx3521 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3520, i32 0, i64 0
  %1846 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3521, align 8
  %fld3522 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1846, i32 0, i32 1
  %arrayidx3523 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3522, i32 0, i64 1
  %rtx3524 = bitcast %union.rtunion_def* %arrayidx3523 to %struct.rtx_def**
  %1847 = load %struct.rtx_def*, %struct.rtx_def** %rtx3524, align 8
  %fld3525 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1847, i32 0, i32 1
  %arrayidx3526 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3525, i32 0, i64 0
  %rtx3527 = bitcast %union.rtunion_def* %arrayidx3526 to %struct.rtx_def**
  %1848 = load %struct.rtx_def*, %struct.rtx_def** %rtx3527, align 8
  %fld3528 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1848, i32 0, i32 1
  %arrayidx3529 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3528, i32 0, i64 0
  %rtx3530 = bitcast %union.rtunion_def* %arrayidx3529 to %struct.rtx_def**
  %1849 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3531 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1849, i64 0
  store %struct.rtx_def** %rtx3530, %struct.rtx_def*** %arrayidx3531, align 8
  %1850 = load %struct.rtx_def*, %struct.rtx_def** %rtx3530, align 8
  %1851 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3532 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1851, i64 0
  store %struct.rtx_def* %1850, %struct.rtx_def** %arrayidx3532, align 8
  %1852 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3533 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1852, i32 0, i32 1
  %arrayidx3534 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3533, i32 0, i64 0
  %rtvec3535 = bitcast %union.rtunion_def* %arrayidx3534 to %struct.rtvec_def**
  %1853 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3535, align 8
  %elem3536 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1853, i32 0, i32 1
  %arrayidx3537 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3536, i32 0, i64 0
  %1854 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3537, align 8
  %fld3538 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1854, i32 0, i32 1
  %arrayidx3539 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3538, i32 0, i64 1
  %rtx3540 = bitcast %union.rtunion_def* %arrayidx3539 to %struct.rtx_def**
  %1855 = load %struct.rtx_def*, %struct.rtx_def** %rtx3540, align 8
  %fld3541 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1855, i32 0, i32 1
  %arrayidx3542 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3541, i32 0, i64 0
  %rtx3543 = bitcast %union.rtunion_def* %arrayidx3542 to %struct.rtx_def**
  %1856 = load %struct.rtx_def*, %struct.rtx_def** %rtx3543, align 8
  %fld3544 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1856, i32 0, i32 1
  %arrayidx3545 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3544, i32 0, i64 1
  %rtx3546 = bitcast %union.rtunion_def* %arrayidx3545 to %struct.rtx_def**
  %1857 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3547 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1857, i64 1
  store %struct.rtx_def** %rtx3546, %struct.rtx_def*** %arrayidx3547, align 8
  %1858 = load %struct.rtx_def*, %struct.rtx_def** %rtx3546, align 8
  %1859 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3548 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1859, i64 1
  store %struct.rtx_def* %1858, %struct.rtx_def** %arrayidx3548, align 8
  %1860 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3549 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1860, i32 0, i32 1
  %arrayidx3550 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3549, i32 0, i64 0
  %rtvec3551 = bitcast %union.rtunion_def* %arrayidx3550 to %struct.rtvec_def**
  %1861 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3551, align 8
  %elem3552 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1861, i32 0, i32 1
  %arrayidx3553 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3552, i32 0, i64 1
  %1862 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3553, align 8
  %fld3554 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1862, i32 0, i32 1
  %arrayidx3555 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3554, i32 0, i64 0
  %rtx3556 = bitcast %union.rtunion_def* %arrayidx3555 to %struct.rtx_def**
  %1863 = load %struct.rtx_def*, %struct.rtx_def** %rtx3556, align 8
  %fld3557 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1863, i32 0, i32 1
  %arrayidx3558 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3557, i32 0, i64 0
  %rtx3559 = bitcast %union.rtunion_def* %arrayidx3558 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3559, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1864 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3560 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1864, i32 0, i32 1
  %arrayidx3561 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3560, i32 0, i64 0
  %rtvec3562 = bitcast %union.rtunion_def* %arrayidx3561 to %struct.rtvec_def**
  %1865 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3562, align 8
  %elem3563 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1865, i32 0, i32 1
  %arrayidx3564 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3563, i32 0, i64 1
  %1866 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3564, align 8
  %fld3565 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1866, i32 0, i32 1
  %arrayidx3566 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3565, i32 0, i64 1
  %rtx3567 = bitcast %union.rtunion_def* %arrayidx3566 to %struct.rtx_def**
  %1867 = load %struct.rtx_def*, %struct.rtx_def** %rtx3567, align 8
  %fld3568 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1867, i32 0, i32 1
  %arrayidx3569 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3568, i32 0, i64 0
  %rtx3570 = bitcast %union.rtunion_def* %arrayidx3569 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3570, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  %1868 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3571 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1868, i32 0, i32 1
  %arrayidx3572 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3571, i32 0, i64 0
  %rtvec3573 = bitcast %union.rtunion_def* %arrayidx3572 to %struct.rtvec_def**
  %1869 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3573, align 8
  %elem3574 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1869, i32 0, i32 1
  %arrayidx3575 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3574, i32 0, i64 1
  %1870 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3575, align 8
  %fld3576 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1870, i32 0, i32 1
  %arrayidx3577 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3576, i32 0, i64 1
  %rtx3578 = bitcast %union.rtunion_def* %arrayidx3577 to %struct.rtx_def**
  %1871 = load %struct.rtx_def*, %struct.rtx_def** %rtx3578, align 8
  %fld3579 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1871, i32 0, i32 1
  %arrayidx3580 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3579, i32 0, i64 1
  %rtx3581 = bitcast %union.rtunion_def* %arrayidx3580 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3581, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 2), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 2), align 1
  br label %sw.epilog

sw.bb.3582:                                       ; preds = %entry, %entry
  %1872 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3583 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1872, i32 0, i32 1
  %arrayidx3584 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3583, i32 0, i64 0
  %rtvec3585 = bitcast %union.rtunion_def* %arrayidx3584 to %struct.rtvec_def**
  %1873 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3585, align 8
  %elem3586 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1873, i32 0, i32 1
  %arrayidx3587 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3586, i32 0, i64 0
  %1874 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3587, align 8
  %fld3588 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1874, i32 0, i32 1
  %arrayidx3589 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3588, i32 0, i64 0
  %rtx3590 = bitcast %union.rtunion_def* %arrayidx3589 to %struct.rtx_def**
  %1875 = load %struct.rtx_def*, %struct.rtx_def** %rtx3590, align 8
  %fld3591 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1875, i32 0, i32 1
  %arrayidx3592 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3591, i32 0, i64 0
  %rtx3593 = bitcast %union.rtunion_def* %arrayidx3592 to %struct.rtx_def**
  %1876 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3594 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1876, i64 0
  store %struct.rtx_def** %rtx3593, %struct.rtx_def*** %arrayidx3594, align 8
  %1877 = load %struct.rtx_def*, %struct.rtx_def** %rtx3593, align 8
  %1878 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3595 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1878, i64 0
  store %struct.rtx_def* %1877, %struct.rtx_def** %arrayidx3595, align 8
  %1879 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3596 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1879, i32 0, i32 1
  %arrayidx3597 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3596, i32 0, i64 0
  %rtvec3598 = bitcast %union.rtunion_def* %arrayidx3597 to %struct.rtvec_def**
  %1880 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3598, align 8
  %elem3599 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1880, i32 0, i32 1
  %arrayidx3600 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3599, i32 0, i64 0
  %1881 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3600, align 8
  %fld3601 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1881, i32 0, i32 1
  %arrayidx3602 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3601, i32 0, i64 1
  %rtx3603 = bitcast %union.rtunion_def* %arrayidx3602 to %struct.rtx_def**
  %1882 = load %struct.rtx_def*, %struct.rtx_def** %rtx3603, align 8
  %fld3604 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1882, i32 0, i32 1
  %arrayidx3605 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3604, i32 0, i64 1
  %rtx3606 = bitcast %union.rtunion_def* %arrayidx3605 to %struct.rtx_def**
  %1883 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3607 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1883, i64 1
  store %struct.rtx_def** %rtx3606, %struct.rtx_def*** %arrayidx3607, align 8
  %1884 = load %struct.rtx_def*, %struct.rtx_def** %rtx3606, align 8
  %1885 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3608 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1885, i64 1
  store %struct.rtx_def* %1884, %struct.rtx_def** %arrayidx3608, align 8
  %1886 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3609 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1886, i32 0, i32 1
  %arrayidx3610 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3609, i32 0, i64 0
  %rtvec3611 = bitcast %union.rtunion_def* %arrayidx3610 to %struct.rtvec_def**
  %1887 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3611, align 8
  %elem3612 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1887, i32 0, i32 1
  %arrayidx3613 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3612, i32 0, i64 0
  %1888 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3613, align 8
  %fld3614 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1888, i32 0, i32 1
  %arrayidx3615 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3614, i32 0, i64 1
  %rtx3616 = bitcast %union.rtunion_def* %arrayidx3615 to %struct.rtx_def**
  %1889 = load %struct.rtx_def*, %struct.rtx_def** %rtx3616, align 8
  %fld3617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1889, i32 0, i32 1
  %arrayidx3618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3617, i32 0, i64 0
  %rtx3619 = bitcast %union.rtunion_def* %arrayidx3618 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3619, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  br label %sw.epilog

sw.bb.3620:                                       ; preds = %entry, %entry
  %1890 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3621 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1890, i32 0, i32 1
  %arrayidx3622 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3621, i32 0, i64 1
  %rtx3623 = bitcast %union.rtunion_def* %arrayidx3622 to %struct.rtx_def**
  %1891 = load %struct.rtx_def*, %struct.rtx_def** %rtx3623, align 8
  %fld3624 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1891, i32 0, i32 1
  %arrayidx3625 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3624, i32 0, i64 0
  %rtx3626 = bitcast %union.rtunion_def* %arrayidx3625 to %struct.rtx_def**
  %1892 = load %struct.rtx_def*, %struct.rtx_def** %rtx3626, align 8
  %fld3627 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1892, i32 0, i32 1
  %arrayidx3628 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3627, i32 0, i64 0
  %rtx3629 = bitcast %union.rtunion_def* %arrayidx3628 to %struct.rtx_def**
  %1893 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3630 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1893, i64 0
  store %struct.rtx_def** %rtx3629, %struct.rtx_def*** %arrayidx3630, align 8
  %1894 = load %struct.rtx_def*, %struct.rtx_def** %rtx3629, align 8
  %1895 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3631 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1895, i64 0
  store %struct.rtx_def* %1894, %struct.rtx_def** %arrayidx3631, align 8
  %1896 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3632 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1896, i32 0, i32 1
  %arrayidx3633 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3632, i32 0, i64 1
  %rtx3634 = bitcast %union.rtunion_def* %arrayidx3633 to %struct.rtx_def**
  %1897 = load %struct.rtx_def*, %struct.rtx_def** %rtx3634, align 8
  %fld3635 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1897, i32 0, i32 1
  %arrayidx3636 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3635, i32 0, i64 0
  %rtx3637 = bitcast %union.rtunion_def* %arrayidx3636 to %struct.rtx_def**
  %1898 = load %struct.rtx_def*, %struct.rtx_def** %rtx3637, align 8
  %fld3638 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1898, i32 0, i32 1
  %arrayidx3639 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3638, i32 0, i64 1
  %rtx3640 = bitcast %union.rtunion_def* %arrayidx3639 to %struct.rtx_def**
  %1899 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3641 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1899, i64 1
  store %struct.rtx_def** %rtx3640, %struct.rtx_def*** %arrayidx3641, align 8
  %1900 = load %struct.rtx_def*, %struct.rtx_def** %rtx3640, align 8
  %1901 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3642 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1901, i64 1
  store %struct.rtx_def* %1900, %struct.rtx_def** %arrayidx3642, align 8
  %1902 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3643 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1902, i32 0, i32 1
  %arrayidx3644 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3643, i32 0, i64 1
  %rtx3645 = bitcast %union.rtunion_def* %arrayidx3644 to %struct.rtx_def**
  %1903 = load %struct.rtx_def*, %struct.rtx_def** %rtx3645, align 8
  %fld3646 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1903, i32 0, i32 1
  %arrayidx3647 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3646, i32 0, i64 0
  %rtx3648 = bitcast %union.rtunion_def* %arrayidx3647 to %struct.rtx_def**
  %1904 = load %struct.rtx_def*, %struct.rtx_def** %rtx3648, align 8
  %fld3649 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1904, i32 0, i32 1
  %arrayidx3650 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3649, i32 0, i64 2
  %rtx3651 = bitcast %union.rtunion_def* %arrayidx3650 to %struct.rtx_def**
  %1905 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3652 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1905, i64 2
  store %struct.rtx_def** %rtx3651, %struct.rtx_def*** %arrayidx3652, align 8
  %1906 = load %struct.rtx_def*, %struct.rtx_def** %rtx3651, align 8
  %1907 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3653 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1907, i64 2
  store %struct.rtx_def* %1906, %struct.rtx_def** %arrayidx3653, align 8
  br label %sw.epilog

sw.bb.3654:                                       ; preds = %entry, %entry, %entry
  %1908 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3655 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1908, i32 0, i32 1
  %arrayidx3656 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3655, i32 0, i64 1
  %rtx3657 = bitcast %union.rtunion_def* %arrayidx3656 to %struct.rtx_def**
  %1909 = load %struct.rtx_def*, %struct.rtx_def** %rtx3657, align 8
  %fld3658 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1909, i32 0, i32 1
  %arrayidx3659 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3658, i32 0, i64 0
  %rtx3660 = bitcast %union.rtunion_def* %arrayidx3659 to %struct.rtx_def**
  %1910 = load %struct.rtx_def*, %struct.rtx_def** %rtx3660, align 8
  %fld3661 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1910, i32 0, i32 1
  %arrayidx3662 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3661, i32 0, i64 0
  %rtx3663 = bitcast %union.rtunion_def* %arrayidx3662 to %struct.rtx_def**
  %1911 = load %struct.rtx_def*, %struct.rtx_def** %rtx3663, align 8
  %fld3664 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1911, i32 0, i32 1
  %arrayidx3665 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3664, i32 0, i64 0
  %rtx3666 = bitcast %union.rtunion_def* %arrayidx3665 to %struct.rtx_def**
  %1912 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3667 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1912, i64 0
  store %struct.rtx_def** %rtx3666, %struct.rtx_def*** %arrayidx3667, align 8
  %1913 = load %struct.rtx_def*, %struct.rtx_def** %rtx3666, align 8
  %1914 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3668 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1914, i64 0
  store %struct.rtx_def* %1913, %struct.rtx_def** %arrayidx3668, align 8
  %1915 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3669 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1915, i32 0, i32 1
  %arrayidx3670 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3669, i32 0, i64 1
  %rtx3671 = bitcast %union.rtunion_def* %arrayidx3670 to %struct.rtx_def**
  %1916 = load %struct.rtx_def*, %struct.rtx_def** %rtx3671, align 8
  %fld3672 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1916, i32 0, i32 1
  %arrayidx3673 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3672, i32 0, i64 0
  %rtx3674 = bitcast %union.rtunion_def* %arrayidx3673 to %struct.rtx_def**
  %1917 = load %struct.rtx_def*, %struct.rtx_def** %rtx3674, align 8
  %fld3675 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1917, i32 0, i32 1
  %arrayidx3676 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3675, i32 0, i64 1
  %rtx3677 = bitcast %union.rtunion_def* %arrayidx3676 to %struct.rtx_def**
  %1918 = load %struct.rtx_def*, %struct.rtx_def** %rtx3677, align 8
  %fld3678 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1918, i32 0, i32 1
  %arrayidx3679 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3678, i32 0, i64 0
  %rtx3680 = bitcast %union.rtunion_def* %arrayidx3679 to %struct.rtx_def**
  %1919 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3681 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1919, i64 1
  store %struct.rtx_def** %rtx3680, %struct.rtx_def*** %arrayidx3681, align 8
  %1920 = load %struct.rtx_def*, %struct.rtx_def** %rtx3680, align 8
  %1921 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3682 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1921, i64 1
  store %struct.rtx_def* %1920, %struct.rtx_def** %arrayidx3682, align 8
  br label %sw.epilog

sw.bb.3683:                                       ; preds = %entry
  %1922 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3684 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1922, i32 0, i32 1
  %arrayidx3685 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3684, i32 0, i64 1
  %rtx3686 = bitcast %union.rtunion_def* %arrayidx3685 to %struct.rtx_def**
  %1923 = load %struct.rtx_def*, %struct.rtx_def** %rtx3686, align 8
  %fld3687 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1923, i32 0, i32 1
  %arrayidx3688 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3687, i32 0, i64 0
  %rtx3689 = bitcast %union.rtunion_def* %arrayidx3688 to %struct.rtx_def**
  %1924 = load %struct.rtx_def*, %struct.rtx_def** %rtx3689, align 8
  %fld3690 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1924, i32 0, i32 1
  %arrayidx3691 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3690, i32 0, i64 0
  %rtx3692 = bitcast %union.rtunion_def* %arrayidx3691 to %struct.rtx_def**
  %1925 = load %struct.rtx_def*, %struct.rtx_def** %rtx3692, align 8
  %fld3693 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1925, i32 0, i32 1
  %arrayidx3694 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3693, i32 0, i64 0
  %rtx3695 = bitcast %union.rtunion_def* %arrayidx3694 to %struct.rtx_def**
  %1926 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3696 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1926, i64 0
  store %struct.rtx_def** %rtx3695, %struct.rtx_def*** %arrayidx3696, align 8
  %1927 = load %struct.rtx_def*, %struct.rtx_def** %rtx3695, align 8
  %1928 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3697 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1928, i64 0
  store %struct.rtx_def* %1927, %struct.rtx_def** %arrayidx3697, align 8
  %1929 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3698 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1929, i32 0, i32 1
  %arrayidx3699 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3698, i32 0, i64 1
  %rtx3700 = bitcast %union.rtunion_def* %arrayidx3699 to %struct.rtx_def**
  %1930 = load %struct.rtx_def*, %struct.rtx_def** %rtx3700, align 8
  %fld3701 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1930, i32 0, i32 1
  %arrayidx3702 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3701, i32 0, i64 0
  %rtx3703 = bitcast %union.rtunion_def* %arrayidx3702 to %struct.rtx_def**
  %1931 = load %struct.rtx_def*, %struct.rtx_def** %rtx3703, align 8
  %fld3704 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1931, i32 0, i32 1
  %arrayidx3705 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3704, i32 0, i64 1
  %rtx3706 = bitcast %union.rtunion_def* %arrayidx3705 to %struct.rtx_def**
  %1932 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3707 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1932, i64 1
  store %struct.rtx_def** %rtx3706, %struct.rtx_def*** %arrayidx3707, align 8
  %1933 = load %struct.rtx_def*, %struct.rtx_def** %rtx3706, align 8
  %1934 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3708 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1934, i64 1
  store %struct.rtx_def* %1933, %struct.rtx_def** %arrayidx3708, align 8
  br label %sw.epilog

sw.bb.3709:                                       ; preds = %entry, %entry
  %1935 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3710 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1935, i32 0, i32 1
  %arrayidx3711 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3710, i32 0, i64 0
  %rtvec3712 = bitcast %union.rtunion_def* %arrayidx3711 to %struct.rtvec_def**
  %1936 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3712, align 8
  %elem3713 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1936, i32 0, i32 1
  %arrayidx3714 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3713, i32 0, i64 0
  %1937 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3714, align 8
  %fld3715 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1937, i32 0, i32 1
  %arrayidx3716 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3715, i32 0, i64 0
  %rtx3717 = bitcast %union.rtunion_def* %arrayidx3716 to %struct.rtx_def**
  %1938 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3718 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1938, i64 0
  store %struct.rtx_def** %rtx3717, %struct.rtx_def*** %arrayidx3718, align 8
  %1939 = load %struct.rtx_def*, %struct.rtx_def** %rtx3717, align 8
  %1940 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3719 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1940, i64 0
  store %struct.rtx_def* %1939, %struct.rtx_def** %arrayidx3719, align 8
  %1941 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3720 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1941, i32 0, i32 1
  %arrayidx3721 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3720, i32 0, i64 0
  %rtvec3722 = bitcast %union.rtunion_def* %arrayidx3721 to %struct.rtvec_def**
  %1942 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3722, align 8
  %elem3723 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1942, i32 0, i32 1
  %arrayidx3724 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3723, i32 0, i64 0
  %1943 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3724, align 8
  %fld3725 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1943, i32 0, i32 1
  %arrayidx3726 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3725, i32 0, i64 1
  %rtx3727 = bitcast %union.rtunion_def* %arrayidx3726 to %struct.rtx_def**
  %1944 = load %struct.rtx_def*, %struct.rtx_def** %rtx3727, align 8
  %fld3728 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1944, i32 0, i32 1
  %arrayidx3729 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3728, i32 0, i64 0
  %rtx3730 = bitcast %union.rtunion_def* %arrayidx3729 to %struct.rtx_def**
  %1945 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3731 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1945, i64 1
  store %struct.rtx_def** %rtx3730, %struct.rtx_def*** %arrayidx3731, align 8
  %1946 = load %struct.rtx_def*, %struct.rtx_def** %rtx3730, align 8
  %1947 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3732 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1947, i64 1
  store %struct.rtx_def* %1946, %struct.rtx_def** %arrayidx3732, align 8
  %1948 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3733 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1948, i32 0, i32 1
  %arrayidx3734 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3733, i32 0, i64 0
  %rtvec3735 = bitcast %union.rtunion_def* %arrayidx3734 to %struct.rtvec_def**
  %1949 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3735, align 8
  %elem3736 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1949, i32 0, i32 1
  %arrayidx3737 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3736, i32 0, i64 0
  %1950 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3737, align 8
  %fld3738 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1950, i32 0, i32 1
  %arrayidx3739 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3738, i32 0, i64 1
  %rtx3740 = bitcast %union.rtunion_def* %arrayidx3739 to %struct.rtx_def**
  %1951 = load %struct.rtx_def*, %struct.rtx_def** %rtx3740, align 8
  %fld3741 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1951, i32 0, i32 1
  %arrayidx3742 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3741, i32 0, i64 1
  %rtx3743 = bitcast %union.rtunion_def* %arrayidx3742 to %struct.rtx_def**
  %1952 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3744 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1952, i64 2
  store %struct.rtx_def** %rtx3743, %struct.rtx_def*** %arrayidx3744, align 8
  %1953 = load %struct.rtx_def*, %struct.rtx_def** %rtx3743, align 8
  %1954 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3745 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1954, i64 2
  store %struct.rtx_def* %1953, %struct.rtx_def** %arrayidx3745, align 8
  %1955 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3746 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1955, i32 0, i32 1
  %arrayidx3747 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3746, i32 0, i64 0
  %rtvec3748 = bitcast %union.rtunion_def* %arrayidx3747 to %struct.rtvec_def**
  %1956 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3748, align 8
  %elem3749 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1956, i32 0, i32 1
  %arrayidx3750 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3749, i32 0, i64 1
  %1957 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3750, align 8
  %fld3751 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1957, i32 0, i32 1
  %arrayidx3752 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3751, i32 0, i64 0
  %rtx3753 = bitcast %union.rtunion_def* %arrayidx3752 to %struct.rtx_def**
  %1958 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3754 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1958, i64 3
  store %struct.rtx_def** %rtx3753, %struct.rtx_def*** %arrayidx3754, align 8
  %1959 = load %struct.rtx_def*, %struct.rtx_def** %rtx3753, align 8
  %1960 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3755 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1960, i64 3
  store %struct.rtx_def* %1959, %struct.rtx_def** %arrayidx3755, align 8
  %1961 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3756 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1961, i32 0, i32 1
  %arrayidx3757 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3756, i32 0, i64 0
  %rtvec3758 = bitcast %union.rtunion_def* %arrayidx3757 to %struct.rtvec_def**
  %1962 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3758, align 8
  %elem3759 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1962, i32 0, i32 1
  %arrayidx3760 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3759, i32 0, i64 2
  %1963 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3760, align 8
  %fld3761 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1963, i32 0, i32 1
  %arrayidx3762 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3761, i32 0, i64 0
  %rtx3763 = bitcast %union.rtunion_def* %arrayidx3762 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3763, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 3, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %1964 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3764 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1964, i32 0, i32 1
  %arrayidx3765 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3764, i32 0, i64 0
  %rtvec3766 = bitcast %union.rtunion_def* %arrayidx3765 to %struct.rtvec_def**
  %1965 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3766, align 8
  %elem3767 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1965, i32 0, i32 1
  %arrayidx3768 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3767, i32 0, i64 1
  %1966 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3768, align 8
  %fld3769 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1966, i32 0, i32 1
  %arrayidx3770 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3769, i32 0, i64 1
  %rtx3771 = bitcast %union.rtunion_def* %arrayidx3770 to %struct.rtx_def**
  %1967 = load %struct.rtx_def*, %struct.rtx_def** %rtx3771, align 8
  %fld3772 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1967, i32 0, i32 1
  %arrayidx3773 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3772, i32 0, i64 0
  %rtx3774 = bitcast %union.rtunion_def* %arrayidx3773 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3774, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  %1968 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3775 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1968, i32 0, i32 1
  %arrayidx3776 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3775, i32 0, i64 0
  %rtvec3777 = bitcast %union.rtunion_def* %arrayidx3776 to %struct.rtvec_def**
  %1969 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3777, align 8
  %elem3778 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1969, i32 0, i32 1
  %arrayidx3779 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3778, i32 0, i64 1
  %1970 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3779, align 8
  %fld3780 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1970, i32 0, i32 1
  %arrayidx3781 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3780, i32 0, i64 1
  %rtx3782 = bitcast %union.rtunion_def* %arrayidx3781 to %struct.rtx_def**
  %1971 = load %struct.rtx_def*, %struct.rtx_def** %rtx3782, align 8
  %fld3783 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1971, i32 0, i32 1
  %arrayidx3784 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3783, i32 0, i64 1
  %rtx3785 = bitcast %union.rtunion_def* %arrayidx3784 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3785, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 2), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 2), align 1
  br label %sw.epilog

sw.bb.3786:                                       ; preds = %entry, %entry, %entry
  %1972 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3787 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1972, i32 0, i32 1
  %arrayidx3788 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3787, i32 0, i64 0
  %rtvec3789 = bitcast %union.rtunion_def* %arrayidx3788 to %struct.rtvec_def**
  %1973 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3789, align 8
  %elem3790 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1973, i32 0, i32 1
  %arrayidx3791 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3790, i32 0, i64 0
  %1974 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3791, align 8
  %fld3792 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1974, i32 0, i32 1
  %arrayidx3793 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3792, i32 0, i64 0
  %rtx3794 = bitcast %union.rtunion_def* %arrayidx3793 to %struct.rtx_def**
  %1975 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3795 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1975, i64 0
  store %struct.rtx_def** %rtx3794, %struct.rtx_def*** %arrayidx3795, align 8
  %1976 = load %struct.rtx_def*, %struct.rtx_def** %rtx3794, align 8
  %1977 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3796 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1977, i64 0
  store %struct.rtx_def* %1976, %struct.rtx_def** %arrayidx3796, align 8
  %1978 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3797 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1978, i32 0, i32 1
  %arrayidx3798 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3797, i32 0, i64 0
  %rtvec3799 = bitcast %union.rtunion_def* %arrayidx3798 to %struct.rtvec_def**
  %1979 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3799, align 8
  %elem3800 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1979, i32 0, i32 1
  %arrayidx3801 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3800, i32 0, i64 0
  %1980 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3801, align 8
  %fld3802 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1980, i32 0, i32 1
  %arrayidx3803 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3802, i32 0, i64 1
  %rtx3804 = bitcast %union.rtunion_def* %arrayidx3803 to %struct.rtx_def**
  %1981 = load %struct.rtx_def*, %struct.rtx_def** %rtx3804, align 8
  %fld3805 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1981, i32 0, i32 1
  %arrayidx3806 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3805, i32 0, i64 0
  %rtx3807 = bitcast %union.rtunion_def* %arrayidx3806 to %struct.rtx_def**
  %1982 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3808 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1982, i64 1
  store %struct.rtx_def** %rtx3807, %struct.rtx_def*** %arrayidx3808, align 8
  %1983 = load %struct.rtx_def*, %struct.rtx_def** %rtx3807, align 8
  %1984 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3809 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1984, i64 1
  store %struct.rtx_def* %1983, %struct.rtx_def** %arrayidx3809, align 8
  %1985 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3810 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1985, i32 0, i32 1
  %arrayidx3811 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3810, i32 0, i64 0
  %rtvec3812 = bitcast %union.rtunion_def* %arrayidx3811 to %struct.rtvec_def**
  %1986 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3812, align 8
  %elem3813 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1986, i32 0, i32 1
  %arrayidx3814 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3813, i32 0, i64 0
  %1987 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3814, align 8
  %fld3815 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1987, i32 0, i32 1
  %arrayidx3816 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3815, i32 0, i64 1
  %rtx3817 = bitcast %union.rtunion_def* %arrayidx3816 to %struct.rtx_def**
  %1988 = load %struct.rtx_def*, %struct.rtx_def** %rtx3817, align 8
  %fld3818 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1988, i32 0, i32 1
  %arrayidx3819 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3818, i32 0, i64 1
  %rtx3820 = bitcast %union.rtunion_def* %arrayidx3819 to %struct.rtx_def**
  %1989 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3821 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1989, i64 2
  store %struct.rtx_def** %rtx3820, %struct.rtx_def*** %arrayidx3821, align 8
  %1990 = load %struct.rtx_def*, %struct.rtx_def** %rtx3820, align 8
  %1991 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3822 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1991, i64 2
  store %struct.rtx_def* %1990, %struct.rtx_def** %arrayidx3822, align 8
  %1992 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3823 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1992, i32 0, i32 1
  %arrayidx3824 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3823, i32 0, i64 0
  %rtvec3825 = bitcast %union.rtunion_def* %arrayidx3824 to %struct.rtvec_def**
  %1993 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3825, align 8
  %elem3826 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1993, i32 0, i32 1
  %arrayidx3827 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3826, i32 0, i64 1
  %1994 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3827, align 8
  %fld3828 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1994, i32 0, i32 1
  %arrayidx3829 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3828, i32 0, i64 0
  %rtx3830 = bitcast %union.rtunion_def* %arrayidx3829 to %struct.rtx_def**
  %1995 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3831 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %1995, i64 3
  store %struct.rtx_def** %rtx3830, %struct.rtx_def*** %arrayidx3831, align 8
  %1996 = load %struct.rtx_def*, %struct.rtx_def** %rtx3830, align 8
  %1997 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3832 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %1997, i64 3
  store %struct.rtx_def* %1996, %struct.rtx_def** %arrayidx3832, align 8
  %1998 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3833 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1998, i32 0, i32 1
  %arrayidx3834 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3833, i32 0, i64 0
  %rtvec3835 = bitcast %union.rtunion_def* %arrayidx3834 to %struct.rtvec_def**
  %1999 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3835, align 8
  %elem3836 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %1999, i32 0, i32 1
  %arrayidx3837 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3836, i32 0, i64 1
  %2000 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3837, align 8
  %fld3838 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2000, i32 0, i32 1
  %arrayidx3839 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3838, i32 0, i64 1
  %rtx3840 = bitcast %union.rtunion_def* %arrayidx3839 to %struct.rtx_def**
  %2001 = load %struct.rtx_def*, %struct.rtx_def** %rtx3840, align 8
  %fld3841 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2001, i32 0, i32 1
  %arrayidx3842 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3841, i32 0, i64 0
  %rtx3843 = bitcast %union.rtunion_def* %arrayidx3842 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3843, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2002 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3844 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2002, i32 0, i32 1
  %arrayidx3845 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3844, i32 0, i64 0
  %rtvec3846 = bitcast %union.rtunion_def* %arrayidx3845 to %struct.rtvec_def**
  %2003 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3846, align 8
  %elem3847 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2003, i32 0, i32 1
  %arrayidx3848 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3847, i32 0, i64 1
  %2004 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3848, align 8
  %fld3849 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2004, i32 0, i32 1
  %arrayidx3850 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3849, i32 0, i64 1
  %rtx3851 = bitcast %union.rtunion_def* %arrayidx3850 to %struct.rtx_def**
  %2005 = load %struct.rtx_def*, %struct.rtx_def** %rtx3851, align 8
  %fld3852 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2005, i32 0, i32 1
  %arrayidx3853 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3852, i32 0, i64 1
  %rtx3854 = bitcast %union.rtunion_def* %arrayidx3853 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3854, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.3855:                                       ; preds = %entry, %entry, %entry
  %2006 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3856 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2006, i32 0, i32 1
  %arrayidx3857 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3856, i32 0, i64 0
  %rtvec3858 = bitcast %union.rtunion_def* %arrayidx3857 to %struct.rtvec_def**
  %2007 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3858, align 8
  %elem3859 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2007, i32 0, i32 1
  %arrayidx3860 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3859, i32 0, i64 0
  %2008 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3860, align 8
  %fld3861 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2008, i32 0, i32 1
  %arrayidx3862 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3861, i32 0, i64 0
  %rtx3863 = bitcast %union.rtunion_def* %arrayidx3862 to %struct.rtx_def**
  %2009 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3864 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2009, i64 0
  store %struct.rtx_def** %rtx3863, %struct.rtx_def*** %arrayidx3864, align 8
  %2010 = load %struct.rtx_def*, %struct.rtx_def** %rtx3863, align 8
  %2011 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3865 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2011, i64 0
  store %struct.rtx_def* %2010, %struct.rtx_def** %arrayidx3865, align 8
  %2012 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3866 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2012, i32 0, i32 1
  %arrayidx3867 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3866, i32 0, i64 0
  %rtvec3868 = bitcast %union.rtunion_def* %arrayidx3867 to %struct.rtvec_def**
  %2013 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3868, align 8
  %elem3869 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2013, i32 0, i32 1
  %arrayidx3870 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3869, i32 0, i64 0
  %2014 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3870, align 8
  %fld3871 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2014, i32 0, i32 1
  %arrayidx3872 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3871, i32 0, i64 1
  %rtx3873 = bitcast %union.rtunion_def* %arrayidx3872 to %struct.rtx_def**
  %2015 = load %struct.rtx_def*, %struct.rtx_def** %rtx3873, align 8
  %fld3874 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2015, i32 0, i32 1
  %arrayidx3875 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3874, i32 0, i64 0
  %rtx3876 = bitcast %union.rtunion_def* %arrayidx3875 to %struct.rtx_def**
  %2016 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3877 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2016, i64 1
  store %struct.rtx_def** %rtx3876, %struct.rtx_def*** %arrayidx3877, align 8
  %2017 = load %struct.rtx_def*, %struct.rtx_def** %rtx3876, align 8
  %2018 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3878 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2018, i64 1
  store %struct.rtx_def* %2017, %struct.rtx_def** %arrayidx3878, align 8
  %2019 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3879 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2019, i32 0, i32 1
  %arrayidx3880 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3879, i32 0, i64 0
  %rtvec3881 = bitcast %union.rtunion_def* %arrayidx3880 to %struct.rtvec_def**
  %2020 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3881, align 8
  %elem3882 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2020, i32 0, i32 1
  %arrayidx3883 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3882, i32 0, i64 0
  %2021 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3883, align 8
  %fld3884 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2021, i32 0, i32 1
  %arrayidx3885 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3884, i32 0, i64 1
  %rtx3886 = bitcast %union.rtunion_def* %arrayidx3885 to %struct.rtx_def**
  %2022 = load %struct.rtx_def*, %struct.rtx_def** %rtx3886, align 8
  %fld3887 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2022, i32 0, i32 1
  %arrayidx3888 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3887, i32 0, i64 1
  %rtx3889 = bitcast %union.rtunion_def* %arrayidx3888 to %struct.rtx_def**
  %2023 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3890 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2023, i64 2
  store %struct.rtx_def** %rtx3889, %struct.rtx_def*** %arrayidx3890, align 8
  %2024 = load %struct.rtx_def*, %struct.rtx_def** %rtx3889, align 8
  %2025 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3891 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2025, i64 2
  store %struct.rtx_def* %2024, %struct.rtx_def** %arrayidx3891, align 8
  %2026 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3892 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2026, i32 0, i32 1
  %arrayidx3893 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3892, i32 0, i64 0
  %rtvec3894 = bitcast %union.rtunion_def* %arrayidx3893 to %struct.rtvec_def**
  %2027 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3894, align 8
  %elem3895 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2027, i32 0, i32 1
  %arrayidx3896 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3895, i32 0, i64 1
  %2028 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3896, align 8
  %fld3897 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2028, i32 0, i32 1
  %arrayidx3898 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3897, i32 0, i64 0
  %rtx3899 = bitcast %union.rtunion_def* %arrayidx3898 to %struct.rtx_def**
  %2029 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3900 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2029, i64 3
  store %struct.rtx_def** %rtx3899, %struct.rtx_def*** %arrayidx3900, align 8
  %2030 = load %struct.rtx_def*, %struct.rtx_def** %rtx3899, align 8
  %2031 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3901 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2031, i64 3
  store %struct.rtx_def* %2030, %struct.rtx_def** %arrayidx3901, align 8
  %2032 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3902 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2032, i32 0, i32 1
  %arrayidx3903 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3902, i32 0, i64 0
  %rtvec3904 = bitcast %union.rtunion_def* %arrayidx3903 to %struct.rtvec_def**
  %2033 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3904, align 8
  %elem3905 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2033, i32 0, i32 1
  %arrayidx3906 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3905, i32 0, i64 2
  %2034 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3906, align 8
  %fld3907 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2034, i32 0, i32 1
  %arrayidx3908 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3907, i32 0, i64 0
  %rtx3909 = bitcast %union.rtunion_def* %arrayidx3908 to %struct.rtx_def**
  %2035 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3910 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2035, i64 4
  store %struct.rtx_def** %rtx3909, %struct.rtx_def*** %arrayidx3910, align 8
  %2036 = load %struct.rtx_def*, %struct.rtx_def** %rtx3909, align 8
  %2037 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3911 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2037, i64 4
  store %struct.rtx_def* %2036, %struct.rtx_def** %arrayidx3911, align 8
  %2038 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3912 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2038, i32 0, i32 1
  %arrayidx3913 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3912, i32 0, i64 0
  %rtvec3914 = bitcast %union.rtunion_def* %arrayidx3913 to %struct.rtvec_def**
  %2039 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3914, align 8
  %elem3915 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2039, i32 0, i32 1
  %arrayidx3916 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3915, i32 0, i64 1
  %2040 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3916, align 8
  %fld3917 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2040, i32 0, i32 1
  %arrayidx3918 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3917, i32 0, i64 1
  %rtx3919 = bitcast %union.rtunion_def* %arrayidx3918 to %struct.rtx_def**
  %2041 = load %struct.rtx_def*, %struct.rtx_def** %rtx3919, align 8
  %fld3920 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2041, i32 0, i32 1
  %arrayidx3921 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3920, i32 0, i64 0
  %rtx3922 = bitcast %union.rtunion_def* %arrayidx3921 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3922, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2042 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3923 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2042, i32 0, i32 1
  %arrayidx3924 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3923, i32 0, i64 0
  %rtvec3925 = bitcast %union.rtunion_def* %arrayidx3924 to %struct.rtvec_def**
  %2043 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3925, align 8
  %elem3926 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2043, i32 0, i32 1
  %arrayidx3927 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3926, i32 0, i64 1
  %2044 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3927, align 8
  %fld3928 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2044, i32 0, i32 1
  %arrayidx3929 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3928, i32 0, i64 1
  %rtx3930 = bitcast %union.rtunion_def* %arrayidx3929 to %struct.rtx_def**
  %2045 = load %struct.rtx_def*, %struct.rtx_def** %rtx3930, align 8
  %fld3931 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2045, i32 0, i32 1
  %arrayidx3932 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3931, i32 0, i64 1
  %rtx3933 = bitcast %union.rtunion_def* %arrayidx3932 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3933, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.3934:                                       ; preds = %entry, %entry, %entry, %entry
  %2046 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3935 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2046, i32 0, i32 1
  %arrayidx3936 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3935, i32 0, i64 0
  %rtvec3937 = bitcast %union.rtunion_def* %arrayidx3936 to %struct.rtvec_def**
  %2047 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3937, align 8
  %elem3938 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2047, i32 0, i32 1
  %arrayidx3939 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3938, i32 0, i64 0
  %2048 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3939, align 8
  %fld3940 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2048, i32 0, i32 1
  %arrayidx3941 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3940, i32 0, i64 0
  %rtx3942 = bitcast %union.rtunion_def* %arrayidx3941 to %struct.rtx_def**
  %2049 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3943 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2049, i64 0
  store %struct.rtx_def** %rtx3942, %struct.rtx_def*** %arrayidx3943, align 8
  %2050 = load %struct.rtx_def*, %struct.rtx_def** %rtx3942, align 8
  %2051 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3944 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2051, i64 0
  store %struct.rtx_def* %2050, %struct.rtx_def** %arrayidx3944, align 8
  %2052 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3945 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2052, i32 0, i32 1
  %arrayidx3946 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3945, i32 0, i64 0
  %rtvec3947 = bitcast %union.rtunion_def* %arrayidx3946 to %struct.rtvec_def**
  %2053 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3947, align 8
  %elem3948 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2053, i32 0, i32 1
  %arrayidx3949 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3948, i32 0, i64 1
  %2054 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3949, align 8
  %fld3950 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2054, i32 0, i32 1
  %arrayidx3951 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3950, i32 0, i64 0
  %rtx3952 = bitcast %union.rtunion_def* %arrayidx3951 to %struct.rtx_def**
  %2055 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3953 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2055, i64 1
  store %struct.rtx_def** %rtx3952, %struct.rtx_def*** %arrayidx3953, align 8
  %2056 = load %struct.rtx_def*, %struct.rtx_def** %rtx3952, align 8
  %2057 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3954 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2057, i64 1
  store %struct.rtx_def* %2056, %struct.rtx_def** %arrayidx3954, align 8
  %2058 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3955 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2058, i32 0, i32 1
  %arrayidx3956 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3955, i32 0, i64 0
  %rtvec3957 = bitcast %union.rtunion_def* %arrayidx3956 to %struct.rtvec_def**
  %2059 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3957, align 8
  %elem3958 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2059, i32 0, i32 1
  %arrayidx3959 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3958, i32 0, i64 0
  %2060 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3959, align 8
  %fld3960 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2060, i32 0, i32 1
  %arrayidx3961 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3960, i32 0, i64 1
  %rtx3962 = bitcast %union.rtunion_def* %arrayidx3961 to %struct.rtx_def**
  %2061 = load %struct.rtx_def*, %struct.rtx_def** %rtx3962, align 8
  %fld3963 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2061, i32 0, i32 1
  %arrayidx3964 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3963, i32 0, i64 0
  %rtx3965 = bitcast %union.rtunion_def* %arrayidx3964 to %struct.rtx_def**
  %2062 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3966 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2062, i64 2
  store %struct.rtx_def** %rtx3965, %struct.rtx_def*** %arrayidx3966, align 8
  %2063 = load %struct.rtx_def*, %struct.rtx_def** %rtx3965, align 8
  %2064 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3967 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2064, i64 2
  store %struct.rtx_def* %2063, %struct.rtx_def** %arrayidx3967, align 8
  %2065 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3968 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2065, i32 0, i32 1
  %arrayidx3969 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3968, i32 0, i64 0
  %rtvec3970 = bitcast %union.rtunion_def* %arrayidx3969 to %struct.rtvec_def**
  %2066 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3970, align 8
  %elem3971 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2066, i32 0, i32 1
  %arrayidx3972 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3971, i32 0, i64 0
  %2067 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3972, align 8
  %fld3973 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2067, i32 0, i32 1
  %arrayidx3974 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3973, i32 0, i64 1
  %rtx3975 = bitcast %union.rtunion_def* %arrayidx3974 to %struct.rtx_def**
  %2068 = load %struct.rtx_def*, %struct.rtx_def** %rtx3975, align 8
  %fld3976 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2068, i32 0, i32 1
  %arrayidx3977 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3976, i32 0, i64 1
  %rtx3978 = bitcast %union.rtunion_def* %arrayidx3977 to %struct.rtx_def**
  %2069 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx3979 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2069, i64 3
  store %struct.rtx_def** %rtx3978, %struct.rtx_def*** %arrayidx3979, align 8
  %2070 = load %struct.rtx_def*, %struct.rtx_def** %rtx3978, align 8
  %2071 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx3980 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2071, i64 3
  store %struct.rtx_def* %2070, %struct.rtx_def** %arrayidx3980, align 8
  %2072 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3981 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2072, i32 0, i32 1
  %arrayidx3982 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3981, i32 0, i64 0
  %rtvec3983 = bitcast %union.rtunion_def* %arrayidx3982 to %struct.rtvec_def**
  %2073 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3983, align 8
  %elem3984 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2073, i32 0, i32 1
  %arrayidx3985 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3984, i32 0, i64 1
  %2074 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3985, align 8
  %fld3986 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2074, i32 0, i32 1
  %arrayidx3987 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3986, i32 0, i64 1
  %rtx3988 = bitcast %union.rtunion_def* %arrayidx3987 to %struct.rtx_def**
  %2075 = load %struct.rtx_def*, %struct.rtx_def** %rtx3988, align 8
  %fld3989 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2075, i32 0, i32 1
  %arrayidx3990 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3989, i32 0, i64 0
  %rtx3991 = bitcast %union.rtunion_def* %arrayidx3990 to %struct.rtx_def**
  store %struct.rtx_def** %rtx3991, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2076 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld3992 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2076, i32 0, i32 1
  %arrayidx3993 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3992, i32 0, i64 0
  %rtvec3994 = bitcast %union.rtunion_def* %arrayidx3993 to %struct.rtvec_def**
  %2077 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec3994, align 8
  %elem3995 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2077, i32 0, i32 1
  %arrayidx3996 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem3995, i32 0, i64 1
  %2078 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3996, align 8
  %fld3997 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2078, i32 0, i32 1
  %arrayidx3998 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3997, i32 0, i64 1
  %rtx3999 = bitcast %union.rtunion_def* %arrayidx3998 to %struct.rtx_def**
  %2079 = load %struct.rtx_def*, %struct.rtx_def** %rtx3999, align 8
  %fld4000 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2079, i32 0, i32 1
  %arrayidx4001 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4000, i32 0, i64 1
  %rtx4002 = bitcast %union.rtunion_def* %arrayidx4001 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4002, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 3, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.4003:                                       ; preds = %entry, %entry
  %2080 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4004 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2080, i32 0, i32 1
  %arrayidx4005 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4004, i32 0, i64 0
  %rtvec4006 = bitcast %union.rtunion_def* %arrayidx4005 to %struct.rtvec_def**
  %2081 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4006, align 8
  %elem4007 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2081, i32 0, i32 1
  %arrayidx4008 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4007, i32 0, i64 0
  %2082 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4008, align 8
  %fld4009 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2082, i32 0, i32 1
  %arrayidx4010 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4009, i32 0, i64 0
  %rtx4011 = bitcast %union.rtunion_def* %arrayidx4010 to %struct.rtx_def**
  %2083 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4012 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2083, i64 0
  store %struct.rtx_def** %rtx4011, %struct.rtx_def*** %arrayidx4012, align 8
  %2084 = load %struct.rtx_def*, %struct.rtx_def** %rtx4011, align 8
  %2085 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4013 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2085, i64 0
  store %struct.rtx_def* %2084, %struct.rtx_def** %arrayidx4013, align 8
  %2086 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4014 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2086, i32 0, i32 1
  %arrayidx4015 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4014, i32 0, i64 0
  %rtvec4016 = bitcast %union.rtunion_def* %arrayidx4015 to %struct.rtvec_def**
  %2087 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4016, align 8
  %elem4017 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2087, i32 0, i32 1
  %arrayidx4018 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4017, i32 0, i64 0
  %2088 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4018, align 8
  %fld4019 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2088, i32 0, i32 1
  %arrayidx4020 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4019, i32 0, i64 1
  %rtx4021 = bitcast %union.rtunion_def* %arrayidx4020 to %struct.rtx_def**
  %2089 = load %struct.rtx_def*, %struct.rtx_def** %rtx4021, align 8
  %fld4022 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2089, i32 0, i32 1
  %arrayidx4023 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4022, i32 0, i64 0
  %rtx4024 = bitcast %union.rtunion_def* %arrayidx4023 to %struct.rtx_def**
  %2090 = load %struct.rtx_def*, %struct.rtx_def** %rtx4024, align 8
  %fld4025 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2090, i32 0, i32 1
  %arrayidx4026 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4025, i32 0, i64 0
  %rtx4027 = bitcast %union.rtunion_def* %arrayidx4026 to %struct.rtx_def**
  %2091 = load %struct.rtx_def*, %struct.rtx_def** %rtx4027, align 8
  %fld4028 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2091, i32 0, i32 1
  %arrayidx4029 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4028, i32 0, i64 0
  %rtx4030 = bitcast %union.rtunion_def* %arrayidx4029 to %struct.rtx_def**
  %2092 = load %struct.rtx_def*, %struct.rtx_def** %rtx4030, align 8
  %fld4031 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2092, i32 0, i32 1
  %arrayidx4032 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4031, i32 0, i64 0
  %rtx4033 = bitcast %union.rtunion_def* %arrayidx4032 to %struct.rtx_def**
  %2093 = load %struct.rtx_def*, %struct.rtx_def** %rtx4033, align 8
  %fld4034 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2093, i32 0, i32 1
  %arrayidx4035 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4034, i32 0, i64 0
  %rtx4036 = bitcast %union.rtunion_def* %arrayidx4035 to %struct.rtx_def**
  %2094 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4037 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2094, i64 1
  store %struct.rtx_def** %rtx4036, %struct.rtx_def*** %arrayidx4037, align 8
  %2095 = load %struct.rtx_def*, %struct.rtx_def** %rtx4036, align 8
  %2096 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4038 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2096, i64 1
  store %struct.rtx_def* %2095, %struct.rtx_def** %arrayidx4038, align 8
  %2097 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4039 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2097, i32 0, i32 1
  %arrayidx4040 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4039, i32 0, i64 0
  %rtvec4041 = bitcast %union.rtunion_def* %arrayidx4040 to %struct.rtvec_def**
  %2098 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4041, align 8
  %elem4042 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2098, i32 0, i32 1
  %arrayidx4043 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4042, i32 0, i64 0
  %2099 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4043, align 8
  %fld4044 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2099, i32 0, i32 1
  %arrayidx4045 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4044, i32 0, i64 1
  %rtx4046 = bitcast %union.rtunion_def* %arrayidx4045 to %struct.rtx_def**
  %2100 = load %struct.rtx_def*, %struct.rtx_def** %rtx4046, align 8
  %fld4047 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2100, i32 0, i32 1
  %arrayidx4048 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4047, i32 0, i64 0
  %rtx4049 = bitcast %union.rtunion_def* %arrayidx4048 to %struct.rtx_def**
  %2101 = load %struct.rtx_def*, %struct.rtx_def** %rtx4049, align 8
  %fld4050 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2101, i32 0, i32 1
  %arrayidx4051 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4050, i32 0, i64 0
  %rtx4052 = bitcast %union.rtunion_def* %arrayidx4051 to %struct.rtx_def**
  %2102 = load %struct.rtx_def*, %struct.rtx_def** %rtx4052, align 8
  %fld4053 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2102, i32 0, i32 1
  %arrayidx4054 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4053, i32 0, i64 0
  %rtx4055 = bitcast %union.rtunion_def* %arrayidx4054 to %struct.rtx_def**
  %2103 = load %struct.rtx_def*, %struct.rtx_def** %rtx4055, align 8
  %fld4056 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2103, i32 0, i32 1
  %arrayidx4057 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4056, i32 0, i64 1
  %rtx4058 = bitcast %union.rtunion_def* %arrayidx4057 to %struct.rtx_def**
  %2104 = load %struct.rtx_def*, %struct.rtx_def** %rtx4058, align 8
  %fld4059 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2104, i32 0, i32 1
  %arrayidx4060 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4059, i32 0, i64 0
  %rtx4061 = bitcast %union.rtunion_def* %arrayidx4060 to %struct.rtx_def**
  %2105 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4062 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2105, i64 2
  store %struct.rtx_def** %rtx4061, %struct.rtx_def*** %arrayidx4062, align 8
  %2106 = load %struct.rtx_def*, %struct.rtx_def** %rtx4061, align 8
  %2107 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4063 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2107, i64 2
  store %struct.rtx_def* %2106, %struct.rtx_def** %arrayidx4063, align 8
  %2108 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4064 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2108, i32 0, i32 1
  %arrayidx4065 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4064, i32 0, i64 0
  %rtvec4066 = bitcast %union.rtunion_def* %arrayidx4065 to %struct.rtvec_def**
  %2109 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4066, align 8
  %elem4067 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2109, i32 0, i32 1
  %arrayidx4068 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4067, i32 0, i64 1
  %2110 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4068, align 8
  %fld4069 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2110, i32 0, i32 1
  %arrayidx4070 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4069, i32 0, i64 0
  %rtx4071 = bitcast %union.rtunion_def* %arrayidx4070 to %struct.rtx_def**
  %2111 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4072 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2111, i64 3
  store %struct.rtx_def** %rtx4071, %struct.rtx_def*** %arrayidx4072, align 8
  %2112 = load %struct.rtx_def*, %struct.rtx_def** %rtx4071, align 8
  %2113 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4073 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2113, i64 3
  store %struct.rtx_def* %2112, %struct.rtx_def** %arrayidx4073, align 8
  br label %sw.epilog

sw.bb.4074:                                       ; preds = %entry, %entry, %entry, %entry
  %2114 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4075 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2114, i32 0, i32 1
  %arrayidx4076 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4075, i32 0, i64 0
  %rtvec4077 = bitcast %union.rtunion_def* %arrayidx4076 to %struct.rtvec_def**
  %2115 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4077, align 8
  %elem4078 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2115, i32 0, i32 1
  %arrayidx4079 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4078, i32 0, i64 0
  %2116 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4079, align 8
  %fld4080 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2116, i32 0, i32 1
  %arrayidx4081 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4080, i32 0, i64 0
  %rtx4082 = bitcast %union.rtunion_def* %arrayidx4081 to %struct.rtx_def**
  %2117 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4083 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2117, i64 0
  store %struct.rtx_def** %rtx4082, %struct.rtx_def*** %arrayidx4083, align 8
  %2118 = load %struct.rtx_def*, %struct.rtx_def** %rtx4082, align 8
  %2119 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4084 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2119, i64 0
  store %struct.rtx_def* %2118, %struct.rtx_def** %arrayidx4084, align 8
  %2120 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4085 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2120, i32 0, i32 1
  %arrayidx4086 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4085, i32 0, i64 0
  %rtvec4087 = bitcast %union.rtunion_def* %arrayidx4086 to %struct.rtvec_def**
  %2121 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4087, align 8
  %elem4088 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2121, i32 0, i32 1
  %arrayidx4089 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4088, i32 0, i64 0
  %2122 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4089, align 8
  %fld4090 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2122, i32 0, i32 1
  %arrayidx4091 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4090, i32 0, i64 1
  %rtx4092 = bitcast %union.rtunion_def* %arrayidx4091 to %struct.rtx_def**
  %2123 = load %struct.rtx_def*, %struct.rtx_def** %rtx4092, align 8
  %fld4093 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2123, i32 0, i32 1
  %arrayidx4094 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4093, i32 0, i64 0
  %rtx4095 = bitcast %union.rtunion_def* %arrayidx4094 to %struct.rtx_def**
  %2124 = load %struct.rtx_def*, %struct.rtx_def** %rtx4095, align 8
  %fld4096 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2124, i32 0, i32 1
  %arrayidx4097 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4096, i32 0, i64 0
  %rtx4098 = bitcast %union.rtunion_def* %arrayidx4097 to %struct.rtx_def**
  %2125 = load %struct.rtx_def*, %struct.rtx_def** %rtx4098, align 8
  %fld4099 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2125, i32 0, i32 1
  %arrayidx4100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4099, i32 0, i64 0
  %rtx4101 = bitcast %union.rtunion_def* %arrayidx4100 to %struct.rtx_def**
  %2126 = load %struct.rtx_def*, %struct.rtx_def** %rtx4101, align 8
  %fld4102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2126, i32 0, i32 1
  %arrayidx4103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4102, i32 0, i64 0
  %rtx4104 = bitcast %union.rtunion_def* %arrayidx4103 to %struct.rtx_def**
  %2127 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4105 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2127, i64 1
  store %struct.rtx_def** %rtx4104, %struct.rtx_def*** %arrayidx4105, align 8
  %2128 = load %struct.rtx_def*, %struct.rtx_def** %rtx4104, align 8
  %2129 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4106 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2129, i64 1
  store %struct.rtx_def* %2128, %struct.rtx_def** %arrayidx4106, align 8
  %2130 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2130, i32 0, i32 1
  %arrayidx4108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4107, i32 0, i64 0
  %rtvec4109 = bitcast %union.rtunion_def* %arrayidx4108 to %struct.rtvec_def**
  %2131 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4109, align 8
  %elem4110 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2131, i32 0, i32 1
  %arrayidx4111 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4110, i32 0, i64 0
  %2132 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4111, align 8
  %fld4112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2132, i32 0, i32 1
  %arrayidx4113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4112, i32 0, i64 1
  %rtx4114 = bitcast %union.rtunion_def* %arrayidx4113 to %struct.rtx_def**
  %2133 = load %struct.rtx_def*, %struct.rtx_def** %rtx4114, align 8
  %fld4115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2133, i32 0, i32 1
  %arrayidx4116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4115, i32 0, i64 0
  %rtx4117 = bitcast %union.rtunion_def* %arrayidx4116 to %struct.rtx_def**
  %2134 = load %struct.rtx_def*, %struct.rtx_def** %rtx4117, align 8
  %fld4118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2134, i32 0, i32 1
  %arrayidx4119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4118, i32 0, i64 0
  %rtx4120 = bitcast %union.rtunion_def* %arrayidx4119 to %struct.rtx_def**
  %2135 = load %struct.rtx_def*, %struct.rtx_def** %rtx4120, align 8
  %fld4121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2135, i32 0, i32 1
  %arrayidx4122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4121, i32 0, i64 1
  %rtx4123 = bitcast %union.rtunion_def* %arrayidx4122 to %struct.rtx_def**
  %2136 = load %struct.rtx_def*, %struct.rtx_def** %rtx4123, align 8
  %fld4124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2136, i32 0, i32 1
  %arrayidx4125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4124, i32 0, i64 0
  %rtx4126 = bitcast %union.rtunion_def* %arrayidx4125 to %struct.rtx_def**
  %2137 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4127 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2137, i64 2
  store %struct.rtx_def** %rtx4126, %struct.rtx_def*** %arrayidx4127, align 8
  %2138 = load %struct.rtx_def*, %struct.rtx_def** %rtx4126, align 8
  %2139 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4128 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2139, i64 2
  store %struct.rtx_def* %2138, %struct.rtx_def** %arrayidx4128, align 8
  %2140 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2140, i32 0, i32 1
  %arrayidx4130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4129, i32 0, i64 0
  %rtvec4131 = bitcast %union.rtunion_def* %arrayidx4130 to %struct.rtvec_def**
  %2141 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4131, align 8
  %elem4132 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2141, i32 0, i32 1
  %arrayidx4133 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4132, i32 0, i64 1
  %2142 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4133, align 8
  %fld4134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2142, i32 0, i32 1
  %arrayidx4135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4134, i32 0, i64 0
  %rtx4136 = bitcast %union.rtunion_def* %arrayidx4135 to %struct.rtx_def**
  %2143 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4137 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2143, i64 3
  store %struct.rtx_def** %rtx4136, %struct.rtx_def*** %arrayidx4137, align 8
  %2144 = load %struct.rtx_def*, %struct.rtx_def** %rtx4136, align 8
  %2145 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4138 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2145, i64 3
  store %struct.rtx_def* %2144, %struct.rtx_def** %arrayidx4138, align 8
  br label %sw.epilog

sw.bb.4139:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %2146 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2146, i32 0, i32 1
  %arrayidx4141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4140, i32 0, i64 0
  %rtvec4142 = bitcast %union.rtunion_def* %arrayidx4141 to %struct.rtvec_def**
  %2147 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4142, align 8
  %elem4143 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2147, i32 0, i32 1
  %arrayidx4144 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4143, i32 0, i64 0
  %2148 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4144, align 8
  %fld4145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2148, i32 0, i32 1
  %arrayidx4146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4145, i32 0, i64 0
  %rtx4147 = bitcast %union.rtunion_def* %arrayidx4146 to %struct.rtx_def**
  %2149 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4148 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2149, i64 0
  store %struct.rtx_def** %rtx4147, %struct.rtx_def*** %arrayidx4148, align 8
  %2150 = load %struct.rtx_def*, %struct.rtx_def** %rtx4147, align 8
  %2151 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4149 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2151, i64 0
  store %struct.rtx_def* %2150, %struct.rtx_def** %arrayidx4149, align 8
  %2152 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2152, i32 0, i32 1
  %arrayidx4151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4150, i32 0, i64 0
  %rtvec4152 = bitcast %union.rtunion_def* %arrayidx4151 to %struct.rtvec_def**
  %2153 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4152, align 8
  %elem4153 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2153, i32 0, i32 1
  %arrayidx4154 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4153, i32 0, i64 0
  %2154 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4154, align 8
  %fld4155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2154, i32 0, i32 1
  %arrayidx4156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4155, i32 0, i64 1
  %rtx4157 = bitcast %union.rtunion_def* %arrayidx4156 to %struct.rtx_def**
  %2155 = load %struct.rtx_def*, %struct.rtx_def** %rtx4157, align 8
  %fld4158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2155, i32 0, i32 1
  %arrayidx4159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4158, i32 0, i64 0
  %rtx4160 = bitcast %union.rtunion_def* %arrayidx4159 to %struct.rtx_def**
  %2156 = load %struct.rtx_def*, %struct.rtx_def** %rtx4160, align 8
  %fld4161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2156, i32 0, i32 1
  %arrayidx4162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4161, i32 0, i64 0
  %rtx4163 = bitcast %union.rtunion_def* %arrayidx4162 to %struct.rtx_def**
  %2157 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4164 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2157, i64 1
  store %struct.rtx_def** %rtx4163, %struct.rtx_def*** %arrayidx4164, align 8
  %2158 = load %struct.rtx_def*, %struct.rtx_def** %rtx4163, align 8
  %2159 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4165 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2159, i64 1
  store %struct.rtx_def* %2158, %struct.rtx_def** %arrayidx4165, align 8
  %2160 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2160, i32 0, i32 1
  %arrayidx4167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4166, i32 0, i64 0
  %rtvec4168 = bitcast %union.rtunion_def* %arrayidx4167 to %struct.rtvec_def**
  %2161 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4168, align 8
  %elem4169 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2161, i32 0, i32 1
  %arrayidx4170 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4169, i32 0, i64 0
  %2162 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4170, align 8
  %fld4171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2162, i32 0, i32 1
  %arrayidx4172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4171, i32 0, i64 1
  %rtx4173 = bitcast %union.rtunion_def* %arrayidx4172 to %struct.rtx_def**
  %2163 = load %struct.rtx_def*, %struct.rtx_def** %rtx4173, align 8
  %fld4174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2163, i32 0, i32 1
  %arrayidx4175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4174, i32 0, i64 1
  %rtx4176 = bitcast %union.rtunion_def* %arrayidx4175 to %struct.rtx_def**
  %2164 = load %struct.rtx_def*, %struct.rtx_def** %rtx4176, align 8
  %fld4177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2164, i32 0, i32 1
  %arrayidx4178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4177, i32 0, i64 0
  %rtx4179 = bitcast %union.rtunion_def* %arrayidx4178 to %struct.rtx_def**
  %2165 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4180 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2165, i64 2
  store %struct.rtx_def** %rtx4179, %struct.rtx_def*** %arrayidx4180, align 8
  %2166 = load %struct.rtx_def*, %struct.rtx_def** %rtx4179, align 8
  %2167 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4181 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2167, i64 2
  store %struct.rtx_def* %2166, %struct.rtx_def** %arrayidx4181, align 8
  br label %sw.epilog

sw.bb.4182:                                       ; preds = %entry
  %2168 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2168, i32 0, i32 1
  %arrayidx4184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4183, i32 0, i64 0
  %rtvec4185 = bitcast %union.rtunion_def* %arrayidx4184 to %struct.rtvec_def**
  %2169 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4185, align 8
  %elem4186 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2169, i32 0, i32 1
  %arrayidx4187 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4186, i32 0, i64 1
  %2170 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4187, align 8
  %fld4188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2170, i32 0, i32 1
  %arrayidx4189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4188, i32 0, i64 0
  %rtx4190 = bitcast %union.rtunion_def* %arrayidx4189 to %struct.rtx_def**
  %2171 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4191 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2171, i64 0
  store %struct.rtx_def** %rtx4190, %struct.rtx_def*** %arrayidx4191, align 8
  %2172 = load %struct.rtx_def*, %struct.rtx_def** %rtx4190, align 8
  %2173 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4192 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2173, i64 0
  store %struct.rtx_def* %2172, %struct.rtx_def** %arrayidx4192, align 8
  %2174 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2174, i32 0, i32 1
  %arrayidx4194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4193, i32 0, i64 0
  %rtvec4195 = bitcast %union.rtunion_def* %arrayidx4194 to %struct.rtvec_def**
  %2175 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4195, align 8
  %elem4196 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2175, i32 0, i32 1
  %arrayidx4197 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4196, i32 0, i64 0
  %2176 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4197, align 8
  %fld4198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2176, i32 0, i32 1
  %arrayidx4199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4198, i32 0, i64 1
  %rtx4200 = bitcast %union.rtunion_def* %arrayidx4199 to %struct.rtx_def**
  %2177 = load %struct.rtx_def*, %struct.rtx_def** %rtx4200, align 8
  %fld4201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2177, i32 0, i32 1
  %arrayidx4202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4201, i32 0, i64 0
  %rtx4203 = bitcast %union.rtunion_def* %arrayidx4202 to %struct.rtx_def**
  %2178 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4204 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2178, i64 1
  store %struct.rtx_def** %rtx4203, %struct.rtx_def*** %arrayidx4204, align 8
  %2179 = load %struct.rtx_def*, %struct.rtx_def** %rtx4203, align 8
  %2180 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4205 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2180, i64 1
  store %struct.rtx_def* %2179, %struct.rtx_def** %arrayidx4205, align 8
  %2181 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2181, i32 0, i32 1
  %arrayidx4207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4206, i32 0, i64 0
  %rtvec4208 = bitcast %union.rtunion_def* %arrayidx4207 to %struct.rtvec_def**
  %2182 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4208, align 8
  %elem4209 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2182, i32 0, i32 1
  %arrayidx4210 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4209, i32 0, i64 0
  %2183 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4210, align 8
  %fld4211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2183, i32 0, i32 1
  %arrayidx4212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4211, i32 0, i64 1
  %rtx4213 = bitcast %union.rtunion_def* %arrayidx4212 to %struct.rtx_def**
  %2184 = load %struct.rtx_def*, %struct.rtx_def** %rtx4213, align 8
  %fld4214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2184, i32 0, i32 1
  %arrayidx4215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4214, i32 0, i64 1
  %rtx4216 = bitcast %union.rtunion_def* %arrayidx4215 to %struct.rtx_def**
  %2185 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4217 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2185, i64 2
  store %struct.rtx_def** %rtx4216, %struct.rtx_def*** %arrayidx4217, align 8
  %2186 = load %struct.rtx_def*, %struct.rtx_def** %rtx4216, align 8
  %2187 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4218 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2187, i64 2
  store %struct.rtx_def* %2186, %struct.rtx_def** %arrayidx4218, align 8
  %2188 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2188, i32 0, i32 1
  %arrayidx4220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4219, i32 0, i64 0
  %rtvec4221 = bitcast %union.rtunion_def* %arrayidx4220 to %struct.rtvec_def**
  %2189 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4221, align 8
  %elem4222 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2189, i32 0, i32 1
  %arrayidx4223 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4222, i32 0, i64 1
  %2190 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4223, align 8
  %fld4224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2190, i32 0, i32 1
  %arrayidx4225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4224, i32 0, i64 1
  %rtx4226 = bitcast %union.rtunion_def* %arrayidx4225 to %struct.rtx_def**
  %2191 = load %struct.rtx_def*, %struct.rtx_def** %rtx4226, align 8
  %fld4227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2191, i32 0, i32 1
  %arrayidx4228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4227, i32 0, i64 0
  %rtx4229 = bitcast %union.rtunion_def* %arrayidx4228 to %struct.rtx_def**
  %2192 = load %struct.rtx_def*, %struct.rtx_def** %rtx4229, align 8
  %fld4230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2192, i32 0, i32 1
  %arrayidx4231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4230, i32 0, i64 0
  %rtx4232 = bitcast %union.rtunion_def* %arrayidx4231 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4232, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2193 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2193, i32 0, i32 1
  %arrayidx4234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4233, i32 0, i64 0
  %rtvec4235 = bitcast %union.rtunion_def* %arrayidx4234 to %struct.rtvec_def**
  %2194 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4235, align 8
  %elem4236 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2194, i32 0, i32 1
  %arrayidx4237 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4236, i32 0, i64 1
  %2195 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4237, align 8
  %fld4238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2195, i32 0, i32 1
  %arrayidx4239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4238, i32 0, i64 1
  %rtx4240 = bitcast %union.rtunion_def* %arrayidx4239 to %struct.rtx_def**
  %2196 = load %struct.rtx_def*, %struct.rtx_def** %rtx4240, align 8
  %fld4241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2196, i32 0, i32 1
  %arrayidx4242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4241, i32 0, i64 0
  %rtx4243 = bitcast %union.rtunion_def* %arrayidx4242 to %struct.rtx_def**
  %2197 = load %struct.rtx_def*, %struct.rtx_def** %rtx4243, align 8
  %fld4244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2197, i32 0, i32 1
  %arrayidx4245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4244, i32 0, i64 1
  %rtx4246 = bitcast %union.rtunion_def* %arrayidx4245 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4246, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.4247:                                       ; preds = %entry
  %2198 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4248 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2198, i32 0, i32 1
  %arrayidx4249 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4248, i32 0, i64 0
  %rtvec4250 = bitcast %union.rtunion_def* %arrayidx4249 to %struct.rtvec_def**
  %2199 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4250, align 8
  %elem4251 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2199, i32 0, i32 1
  %arrayidx4252 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4251, i32 0, i64 0
  %2200 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4252, align 8
  %fld4253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2200, i32 0, i32 1
  %arrayidx4254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4253, i32 0, i64 0
  %rtx4255 = bitcast %union.rtunion_def* %arrayidx4254 to %struct.rtx_def**
  %2201 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4256 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2201, i64 0
  store %struct.rtx_def** %rtx4255, %struct.rtx_def*** %arrayidx4256, align 8
  %2202 = load %struct.rtx_def*, %struct.rtx_def** %rtx4255, align 8
  %2203 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4257 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2203, i64 0
  store %struct.rtx_def* %2202, %struct.rtx_def** %arrayidx4257, align 8
  %2204 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2204, i32 0, i32 1
  %arrayidx4259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4258, i32 0, i64 0
  %rtvec4260 = bitcast %union.rtunion_def* %arrayidx4259 to %struct.rtvec_def**
  %2205 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4260, align 8
  %elem4261 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2205, i32 0, i32 1
  %arrayidx4262 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4261, i32 0, i64 0
  %2206 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4262, align 8
  %fld4263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2206, i32 0, i32 1
  %arrayidx4264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4263, i32 0, i64 1
  %rtx4265 = bitcast %union.rtunion_def* %arrayidx4264 to %struct.rtx_def**
  %2207 = load %struct.rtx_def*, %struct.rtx_def** %rtx4265, align 8
  %fld4266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2207, i32 0, i32 1
  %arrayidx4267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4266, i32 0, i64 0
  %rtx4268 = bitcast %union.rtunion_def* %arrayidx4267 to %struct.rtx_def**
  %2208 = load %struct.rtx_def*, %struct.rtx_def** %rtx4268, align 8
  %fld4269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2208, i32 0, i32 1
  %arrayidx4270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4269, i32 0, i64 0
  %rtx4271 = bitcast %union.rtunion_def* %arrayidx4270 to %struct.rtx_def**
  %2209 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4272 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2209, i64 1
  store %struct.rtx_def** %rtx4271, %struct.rtx_def*** %arrayidx4272, align 8
  %2210 = load %struct.rtx_def*, %struct.rtx_def** %rtx4271, align 8
  %2211 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4273 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2211, i64 1
  store %struct.rtx_def* %2210, %struct.rtx_def** %arrayidx4273, align 8
  %2212 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2212, i32 0, i32 1
  %arrayidx4275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4274, i32 0, i64 0
  %rtvec4276 = bitcast %union.rtunion_def* %arrayidx4275 to %struct.rtvec_def**
  %2213 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4276, align 8
  %elem4277 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2213, i32 0, i32 1
  %arrayidx4278 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4277, i32 0, i64 0
  %2214 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4278, align 8
  %fld4279 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2214, i32 0, i32 1
  %arrayidx4280 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4279, i32 0, i64 1
  %rtx4281 = bitcast %union.rtunion_def* %arrayidx4280 to %struct.rtx_def**
  %2215 = load %struct.rtx_def*, %struct.rtx_def** %rtx4281, align 8
  %fld4282 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2215, i32 0, i32 1
  %arrayidx4283 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4282, i32 0, i64 0
  %rtx4284 = bitcast %union.rtunion_def* %arrayidx4283 to %struct.rtx_def**
  %2216 = load %struct.rtx_def*, %struct.rtx_def** %rtx4284, align 8
  %fld4285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2216, i32 0, i32 1
  %arrayidx4286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4285, i32 0, i64 1
  %rtx4287 = bitcast %union.rtunion_def* %arrayidx4286 to %struct.rtx_def**
  %2217 = load %struct.rtx_def*, %struct.rtx_def** %rtx4287, align 8
  %fld4288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2217, i32 0, i32 1
  %arrayidx4289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4288, i32 0, i64 1
  %rtx4290 = bitcast %union.rtunion_def* %arrayidx4289 to %struct.rtx_def**
  %2218 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4291 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2218, i64 2
  store %struct.rtx_def** %rtx4290, %struct.rtx_def*** %arrayidx4291, align 8
  %2219 = load %struct.rtx_def*, %struct.rtx_def** %rtx4290, align 8
  %2220 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4292 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2220, i64 2
  store %struct.rtx_def* %2219, %struct.rtx_def** %arrayidx4292, align 8
  br label %sw.epilog

sw.bb.4293:                                       ; preds = %entry, %entry, %entry, %entry
  %2221 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4294 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2221, i32 0, i32 1
  %arrayidx4295 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4294, i32 0, i64 0
  %rtvec4296 = bitcast %union.rtunion_def* %arrayidx4295 to %struct.rtvec_def**
  %2222 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4296, align 8
  %elem4297 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2222, i32 0, i32 1
  %arrayidx4298 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4297, i32 0, i64 1
  %2223 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4298, align 8
  %fld4299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2223, i32 0, i32 1
  %arrayidx4300 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4299, i32 0, i64 0
  %rtx4301 = bitcast %union.rtunion_def* %arrayidx4300 to %struct.rtx_def**
  %2224 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4302 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2224, i64 0
  store %struct.rtx_def** %rtx4301, %struct.rtx_def*** %arrayidx4302, align 8
  %2225 = load %struct.rtx_def*, %struct.rtx_def** %rtx4301, align 8
  %2226 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4303 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2226, i64 0
  store %struct.rtx_def* %2225, %struct.rtx_def** %arrayidx4303, align 8
  %2227 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4304 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2227, i32 0, i32 1
  %arrayidx4305 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4304, i32 0, i64 0
  %rtvec4306 = bitcast %union.rtunion_def* %arrayidx4305 to %struct.rtvec_def**
  %2228 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4306, align 8
  %elem4307 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2228, i32 0, i32 1
  %arrayidx4308 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4307, i32 0, i64 0
  %2229 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4308, align 8
  %fld4309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2229, i32 0, i32 1
  %arrayidx4310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4309, i32 0, i64 1
  %rtx4311 = bitcast %union.rtunion_def* %arrayidx4310 to %struct.rtx_def**
  %2230 = load %struct.rtx_def*, %struct.rtx_def** %rtx4311, align 8
  %fld4312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2230, i32 0, i32 1
  %arrayidx4313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4312, i32 0, i64 0
  %rtx4314 = bitcast %union.rtunion_def* %arrayidx4313 to %struct.rtx_def**
  %2231 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4315 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2231, i64 1
  store %struct.rtx_def** %rtx4314, %struct.rtx_def*** %arrayidx4315, align 8
  %2232 = load %struct.rtx_def*, %struct.rtx_def** %rtx4314, align 8
  %2233 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4316 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2233, i64 1
  store %struct.rtx_def* %2232, %struct.rtx_def** %arrayidx4316, align 8
  %2234 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2234, i32 0, i32 1
  %arrayidx4318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4317, i32 0, i64 0
  %rtvec4319 = bitcast %union.rtunion_def* %arrayidx4318 to %struct.rtvec_def**
  %2235 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4319, align 8
  %elem4320 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2235, i32 0, i32 1
  %arrayidx4321 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4320, i32 0, i64 0
  %2236 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4321, align 8
  %fld4322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2236, i32 0, i32 1
  %arrayidx4323 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4322, i32 0, i64 1
  %rtx4324 = bitcast %union.rtunion_def* %arrayidx4323 to %struct.rtx_def**
  %2237 = load %struct.rtx_def*, %struct.rtx_def** %rtx4324, align 8
  %fld4325 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2237, i32 0, i32 1
  %arrayidx4326 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4325, i32 0, i64 1
  %rtx4327 = bitcast %union.rtunion_def* %arrayidx4326 to %struct.rtx_def**
  %2238 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4328 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2238, i64 2
  store %struct.rtx_def** %rtx4327, %struct.rtx_def*** %arrayidx4328, align 8
  %2239 = load %struct.rtx_def*, %struct.rtx_def** %rtx4327, align 8
  %2240 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4329 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2240, i64 2
  store %struct.rtx_def* %2239, %struct.rtx_def** %arrayidx4329, align 8
  %2241 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4330 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2241, i32 0, i32 1
  %arrayidx4331 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4330, i32 0, i64 0
  %rtvec4332 = bitcast %union.rtunion_def* %arrayidx4331 to %struct.rtvec_def**
  %2242 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4332, align 8
  %elem4333 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2242, i32 0, i32 1
  %arrayidx4334 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4333, i32 0, i64 1
  %2243 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4334, align 8
  %fld4335 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2243, i32 0, i32 1
  %arrayidx4336 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4335, i32 0, i64 1
  %rtx4337 = bitcast %union.rtunion_def* %arrayidx4336 to %struct.rtx_def**
  %2244 = load %struct.rtx_def*, %struct.rtx_def** %rtx4337, align 8
  %fld4338 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2244, i32 0, i32 1
  %arrayidx4339 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4338, i32 0, i64 0
  %rtx4340 = bitcast %union.rtunion_def* %arrayidx4339 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4340, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2245 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4341 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2245, i32 0, i32 1
  %arrayidx4342 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4341, i32 0, i64 0
  %rtvec4343 = bitcast %union.rtunion_def* %arrayidx4342 to %struct.rtvec_def**
  %2246 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4343, align 8
  %elem4344 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2246, i32 0, i32 1
  %arrayidx4345 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4344, i32 0, i64 1
  %2247 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4345, align 8
  %fld4346 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2247, i32 0, i32 1
  %arrayidx4347 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4346, i32 0, i64 1
  %rtx4348 = bitcast %union.rtunion_def* %arrayidx4347 to %struct.rtx_def**
  %2248 = load %struct.rtx_def*, %struct.rtx_def** %rtx4348, align 8
  %fld4349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2248, i32 0, i32 1
  %arrayidx4350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4349, i32 0, i64 1
  %rtx4351 = bitcast %union.rtunion_def* %arrayidx4350 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4351, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.4352:                                       ; preds = %entry, %entry
  %2249 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4353 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2249, i32 0, i32 1
  %arrayidx4354 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4353, i32 0, i64 0
  %rtvec4355 = bitcast %union.rtunion_def* %arrayidx4354 to %struct.rtvec_def**
  %2250 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4355, align 8
  %elem4356 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2250, i32 0, i32 1
  %arrayidx4357 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4356, i32 0, i64 0
  %2251 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4357, align 8
  %fld4358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2251, i32 0, i32 1
  %arrayidx4359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4358, i32 0, i64 0
  %rtx4360 = bitcast %union.rtunion_def* %arrayidx4359 to %struct.rtx_def**
  %2252 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4361 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2252, i64 0
  store %struct.rtx_def** %rtx4360, %struct.rtx_def*** %arrayidx4361, align 8
  %2253 = load %struct.rtx_def*, %struct.rtx_def** %rtx4360, align 8
  %2254 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4362 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2254, i64 0
  store %struct.rtx_def* %2253, %struct.rtx_def** %arrayidx4362, align 8
  %2255 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4363 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2255, i32 0, i32 1
  %arrayidx4364 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4363, i32 0, i64 0
  %rtvec4365 = bitcast %union.rtunion_def* %arrayidx4364 to %struct.rtvec_def**
  %2256 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4365, align 8
  %elem4366 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2256, i32 0, i32 1
  %arrayidx4367 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4366, i32 0, i64 0
  %2257 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4367, align 8
  %fld4368 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2257, i32 0, i32 1
  %arrayidx4369 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4368, i32 0, i64 1
  %rtx4370 = bitcast %union.rtunion_def* %arrayidx4369 to %struct.rtx_def**
  %2258 = load %struct.rtx_def*, %struct.rtx_def** %rtx4370, align 8
  %fld4371 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2258, i32 0, i32 1
  %arrayidx4372 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4371, i32 0, i64 0
  %rtx4373 = bitcast %union.rtunion_def* %arrayidx4372 to %struct.rtx_def**
  %2259 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4374 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2259, i64 1
  store %struct.rtx_def** %rtx4373, %struct.rtx_def*** %arrayidx4374, align 8
  %2260 = load %struct.rtx_def*, %struct.rtx_def** %rtx4373, align 8
  %2261 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4375 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2261, i64 1
  store %struct.rtx_def* %2260, %struct.rtx_def** %arrayidx4375, align 8
  %2262 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2262, i32 0, i32 1
  %arrayidx4377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4376, i32 0, i64 0
  %rtvec4378 = bitcast %union.rtunion_def* %arrayidx4377 to %struct.rtvec_def**
  %2263 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4378, align 8
  %elem4379 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2263, i32 0, i32 1
  %arrayidx4380 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4379, i32 0, i64 0
  %2264 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4380, align 8
  %fld4381 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2264, i32 0, i32 1
  %arrayidx4382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4381, i32 0, i64 1
  %rtx4383 = bitcast %union.rtunion_def* %arrayidx4382 to %struct.rtx_def**
  %2265 = load %struct.rtx_def*, %struct.rtx_def** %rtx4383, align 8
  %fld4384 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2265, i32 0, i32 1
  %arrayidx4385 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4384, i32 0, i64 1
  %rtx4386 = bitcast %union.rtunion_def* %arrayidx4385 to %struct.rtx_def**
  %2266 = load %struct.rtx_def*, %struct.rtx_def** %rtx4386, align 8
  %fld4387 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2266, i32 0, i32 1
  %arrayidx4388 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4387, i32 0, i64 1
  %rtx4389 = bitcast %union.rtunion_def* %arrayidx4388 to %struct.rtx_def**
  %2267 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4390 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2267, i64 2
  store %struct.rtx_def** %rtx4389, %struct.rtx_def*** %arrayidx4390, align 8
  %2268 = load %struct.rtx_def*, %struct.rtx_def** %rtx4389, align 8
  %2269 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4391 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2269, i64 2
  store %struct.rtx_def* %2268, %struct.rtx_def** %arrayidx4391, align 8
  br label %sw.epilog

sw.bb.4392:                                       ; preds = %entry, %entry, %entry, %entry, %entry
  %2270 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4393 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2270, i32 0, i32 1
  %arrayidx4394 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4393, i32 0, i64 0
  %rtvec4395 = bitcast %union.rtunion_def* %arrayidx4394 to %struct.rtvec_def**
  %2271 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4395, align 8
  %elem4396 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2271, i32 0, i32 1
  %arrayidx4397 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4396, i32 0, i64 0
  %2272 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4397, align 8
  %fld4398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2272, i32 0, i32 1
  %arrayidx4399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4398, i32 0, i64 0
  %rtx4400 = bitcast %union.rtunion_def* %arrayidx4399 to %struct.rtx_def**
  %2273 = load %struct.rtx_def*, %struct.rtx_def** %rtx4400, align 8
  %fld4401 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2273, i32 0, i32 1
  %arrayidx4402 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4401, i32 0, i64 0
  %rtx4403 = bitcast %union.rtunion_def* %arrayidx4402 to %struct.rtx_def**
  %2274 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4404 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2274, i64 0
  store %struct.rtx_def** %rtx4403, %struct.rtx_def*** %arrayidx4404, align 8
  %2275 = load %struct.rtx_def*, %struct.rtx_def** %rtx4403, align 8
  %2276 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4405 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2276, i64 0
  store %struct.rtx_def* %2275, %struct.rtx_def** %arrayidx4405, align 8
  %2277 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4406 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2277, i32 0, i32 1
  %arrayidx4407 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4406, i32 0, i64 0
  %rtvec4408 = bitcast %union.rtunion_def* %arrayidx4407 to %struct.rtvec_def**
  %2278 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4408, align 8
  %elem4409 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2278, i32 0, i32 1
  %arrayidx4410 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4409, i32 0, i64 0
  %2279 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4410, align 8
  %fld4411 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2279, i32 0, i32 1
  %arrayidx4412 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4411, i32 0, i64 1
  %rtx4413 = bitcast %union.rtunion_def* %arrayidx4412 to %struct.rtx_def**
  %2280 = load %struct.rtx_def*, %struct.rtx_def** %rtx4413, align 8
  %fld4414 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2280, i32 0, i32 1
  %arrayidx4415 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4414, i32 0, i64 0
  %rtx4416 = bitcast %union.rtunion_def* %arrayidx4415 to %struct.rtx_def**
  %2281 = load %struct.rtx_def*, %struct.rtx_def** %rtx4416, align 8
  %fld4417 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2281, i32 0, i32 1
  %arrayidx4418 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4417, i32 0, i64 0
  %rtx4419 = bitcast %union.rtunion_def* %arrayidx4418 to %struct.rtx_def**
  %2282 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4420 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2282, i64 1
  store %struct.rtx_def** %rtx4419, %struct.rtx_def*** %arrayidx4420, align 8
  %2283 = load %struct.rtx_def*, %struct.rtx_def** %rtx4419, align 8
  %2284 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4421 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2284, i64 1
  store %struct.rtx_def* %2283, %struct.rtx_def** %arrayidx4421, align 8
  %2285 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4422 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2285, i32 0, i32 1
  %arrayidx4423 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4422, i32 0, i64 0
  %rtvec4424 = bitcast %union.rtunion_def* %arrayidx4423 to %struct.rtvec_def**
  %2286 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4424, align 8
  %elem4425 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2286, i32 0, i32 1
  %arrayidx4426 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4425, i32 0, i64 0
  %2287 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4426, align 8
  %fld4427 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2287, i32 0, i32 1
  %arrayidx4428 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4427, i32 0, i64 1
  %rtx4429 = bitcast %union.rtunion_def* %arrayidx4428 to %struct.rtx_def**
  %2288 = load %struct.rtx_def*, %struct.rtx_def** %rtx4429, align 8
  %fld4430 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2288, i32 0, i32 1
  %arrayidx4431 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4430, i32 0, i64 1
  %rtx4432 = bitcast %union.rtunion_def* %arrayidx4431 to %struct.rtx_def**
  %2289 = load %struct.rtx_def*, %struct.rtx_def** %rtx4432, align 8
  %fld4433 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2289, i32 0, i32 1
  %arrayidx4434 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4433, i32 0, i64 0
  %rtx4435 = bitcast %union.rtunion_def* %arrayidx4434 to %struct.rtx_def**
  %2290 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4436 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2290, i64 2
  store %struct.rtx_def** %rtx4435, %struct.rtx_def*** %arrayidx4436, align 8
  %2291 = load %struct.rtx_def*, %struct.rtx_def** %rtx4435, align 8
  %2292 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4437 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2292, i64 2
  store %struct.rtx_def* %2291, %struct.rtx_def** %arrayidx4437, align 8
  br label %sw.epilog

sw.bb.4438:                                       ; preds = %entry, %entry, %entry
  %2293 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4439 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2293, i32 0, i32 1
  %arrayidx4440 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4439, i32 0, i64 0
  %rtvec4441 = bitcast %union.rtunion_def* %arrayidx4440 to %struct.rtvec_def**
  %2294 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4441, align 8
  %elem4442 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2294, i32 0, i32 1
  %arrayidx4443 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4442, i32 0, i64 0
  %2295 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4443, align 8
  %fld4444 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2295, i32 0, i32 1
  %arrayidx4445 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4444, i32 0, i64 0
  %rtx4446 = bitcast %union.rtunion_def* %arrayidx4445 to %struct.rtx_def**
  %2296 = load %struct.rtx_def*, %struct.rtx_def** %rtx4446, align 8
  %fld4447 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2296, i32 0, i32 1
  %arrayidx4448 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4447, i32 0, i64 0
  %rtx4449 = bitcast %union.rtunion_def* %arrayidx4448 to %struct.rtx_def**
  %2297 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4450 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2297, i64 0
  store %struct.rtx_def** %rtx4449, %struct.rtx_def*** %arrayidx4450, align 8
  %2298 = load %struct.rtx_def*, %struct.rtx_def** %rtx4449, align 8
  %2299 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4451 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2299, i64 0
  store %struct.rtx_def* %2298, %struct.rtx_def** %arrayidx4451, align 8
  %2300 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4452 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2300, i32 0, i32 1
  %arrayidx4453 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4452, i32 0, i64 0
  %rtvec4454 = bitcast %union.rtunion_def* %arrayidx4453 to %struct.rtvec_def**
  %2301 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4454, align 8
  %elem4455 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2301, i32 0, i32 1
  %arrayidx4456 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4455, i32 0, i64 0
  %2302 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4456, align 8
  %fld4457 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2302, i32 0, i32 1
  %arrayidx4458 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4457, i32 0, i64 1
  %rtx4459 = bitcast %union.rtunion_def* %arrayidx4458 to %struct.rtx_def**
  %2303 = load %struct.rtx_def*, %struct.rtx_def** %rtx4459, align 8
  %fld4460 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2303, i32 0, i32 1
  %arrayidx4461 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4460, i32 0, i64 0
  %rtx4462 = bitcast %union.rtunion_def* %arrayidx4461 to %struct.rtx_def**
  %2304 = load %struct.rtx_def*, %struct.rtx_def** %rtx4462, align 8
  %fld4463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2304, i32 0, i32 1
  %arrayidx4464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4463, i32 0, i64 0
  %rtx4465 = bitcast %union.rtunion_def* %arrayidx4464 to %struct.rtx_def**
  %2305 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4466 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2305, i64 1
  store %struct.rtx_def** %rtx4465, %struct.rtx_def*** %arrayidx4466, align 8
  %2306 = load %struct.rtx_def*, %struct.rtx_def** %rtx4465, align 8
  %2307 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4467 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2307, i64 1
  store %struct.rtx_def* %2306, %struct.rtx_def** %arrayidx4467, align 8
  %2308 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4468 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2308, i32 0, i32 1
  %arrayidx4469 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4468, i32 0, i64 0
  %rtvec4470 = bitcast %union.rtunion_def* %arrayidx4469 to %struct.rtvec_def**
  %2309 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4470, align 8
  %elem4471 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2309, i32 0, i32 1
  %arrayidx4472 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4471, i32 0, i64 0
  %2310 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4472, align 8
  %fld4473 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2310, i32 0, i32 1
  %arrayidx4474 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4473, i32 0, i64 1
  %rtx4475 = bitcast %union.rtunion_def* %arrayidx4474 to %struct.rtx_def**
  %2311 = load %struct.rtx_def*, %struct.rtx_def** %rtx4475, align 8
  %fld4476 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2311, i32 0, i32 1
  %arrayidx4477 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4476, i32 0, i64 1
  %rtx4478 = bitcast %union.rtunion_def* %arrayidx4477 to %struct.rtx_def**
  %2312 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4479 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2312, i64 2
  store %struct.rtx_def** %rtx4478, %struct.rtx_def*** %arrayidx4479, align 8
  %2313 = load %struct.rtx_def*, %struct.rtx_def** %rtx4478, align 8
  %2314 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4480 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2314, i64 2
  store %struct.rtx_def* %2313, %struct.rtx_def** %arrayidx4480, align 8
  br label %sw.epilog

sw.bb.4481:                                       ; preds = %entry
  %2315 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4482 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2315, i32 0, i32 1
  %arrayidx4483 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4482, i32 0, i64 0
  %rtvec4484 = bitcast %union.rtunion_def* %arrayidx4483 to %struct.rtvec_def**
  %2316 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4484, align 8
  %elem4485 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2316, i32 0, i32 1
  %arrayidx4486 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4485, i32 0, i64 1
  %2317 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4486, align 8
  %fld4487 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2317, i32 0, i32 1
  %arrayidx4488 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4487, i32 0, i64 0
  %rtx4489 = bitcast %union.rtunion_def* %arrayidx4488 to %struct.rtx_def**
  %2318 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4490 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2318, i64 0
  store %struct.rtx_def** %rtx4489, %struct.rtx_def*** %arrayidx4490, align 8
  %2319 = load %struct.rtx_def*, %struct.rtx_def** %rtx4489, align 8
  %2320 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4491 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2320, i64 0
  store %struct.rtx_def* %2319, %struct.rtx_def** %arrayidx4491, align 8
  %2321 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4492 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2321, i32 0, i32 1
  %arrayidx4493 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4492, i32 0, i64 0
  %rtvec4494 = bitcast %union.rtunion_def* %arrayidx4493 to %struct.rtvec_def**
  %2322 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4494, align 8
  %elem4495 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2322, i32 0, i32 1
  %arrayidx4496 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4495, i32 0, i64 0
  %2323 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4496, align 8
  %fld4497 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2323, i32 0, i32 1
  %arrayidx4498 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4497, i32 0, i64 1
  %rtx4499 = bitcast %union.rtunion_def* %arrayidx4498 to %struct.rtx_def**
  %2324 = load %struct.rtx_def*, %struct.rtx_def** %rtx4499, align 8
  %fld4500 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2324, i32 0, i32 1
  %arrayidx4501 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4500, i32 0, i64 1
  %rtx4502 = bitcast %union.rtunion_def* %arrayidx4501 to %struct.rtx_def**
  %2325 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4503 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2325, i64 1
  store %struct.rtx_def** %rtx4502, %struct.rtx_def*** %arrayidx4503, align 8
  %2326 = load %struct.rtx_def*, %struct.rtx_def** %rtx4502, align 8
  %2327 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4504 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2327, i64 1
  store %struct.rtx_def* %2326, %struct.rtx_def** %arrayidx4504, align 8
  %2328 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4505 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2328, i32 0, i32 1
  %arrayidx4506 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4505, i32 0, i64 0
  %rtvec4507 = bitcast %union.rtunion_def* %arrayidx4506 to %struct.rtvec_def**
  %2329 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4507, align 8
  %elem4508 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2329, i32 0, i32 1
  %arrayidx4509 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4508, i32 0, i64 0
  %2330 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4509, align 8
  %fld4510 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2330, i32 0, i32 1
  %arrayidx4511 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4510, i32 0, i64 1
  %rtx4512 = bitcast %union.rtunion_def* %arrayidx4511 to %struct.rtx_def**
  %2331 = load %struct.rtx_def*, %struct.rtx_def** %rtx4512, align 8
  %fld4513 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2331, i32 0, i32 1
  %arrayidx4514 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4513, i32 0, i64 0
  %rtx4515 = bitcast %union.rtunion_def* %arrayidx4514 to %struct.rtx_def**
  %2332 = load %struct.rtx_def*, %struct.rtx_def** %rtx4515, align 8
  %fld4516 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2332, i32 0, i32 1
  %arrayidx4517 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4516, i32 0, i64 0
  %rtx4518 = bitcast %union.rtunion_def* %arrayidx4517 to %struct.rtx_def**
  %2333 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4519 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2333, i64 2
  store %struct.rtx_def** %rtx4518, %struct.rtx_def*** %arrayidx4519, align 8
  %2334 = load %struct.rtx_def*, %struct.rtx_def** %rtx4518, align 8
  %2335 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4520 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2335, i64 2
  store %struct.rtx_def* %2334, %struct.rtx_def** %arrayidx4520, align 8
  %2336 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4521 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2336, i32 0, i32 1
  %arrayidx4522 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4521, i32 0, i64 0
  %rtvec4523 = bitcast %union.rtunion_def* %arrayidx4522 to %struct.rtvec_def**
  %2337 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4523, align 8
  %elem4524 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2337, i32 0, i32 1
  %arrayidx4525 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4524, i32 0, i64 1
  %2338 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4525, align 8
  %fld4526 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2338, i32 0, i32 1
  %arrayidx4527 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4526, i32 0, i64 1
  %rtx4528 = bitcast %union.rtunion_def* %arrayidx4527 to %struct.rtx_def**
  %2339 = load %struct.rtx_def*, %struct.rtx_def** %rtx4528, align 8
  %fld4529 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2339, i32 0, i32 1
  %arrayidx4530 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4529, i32 0, i64 0
  %rtx4531 = bitcast %union.rtunion_def* %arrayidx4530 to %struct.rtx_def**
  %2340 = load %struct.rtx_def*, %struct.rtx_def** %rtx4531, align 8
  %fld4532 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2340, i32 0, i32 1
  %arrayidx4533 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4532, i32 0, i64 0
  %rtx4534 = bitcast %union.rtunion_def* %arrayidx4533 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4534, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2341 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4535 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2341, i32 0, i32 1
  %arrayidx4536 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4535, i32 0, i64 0
  %rtvec4537 = bitcast %union.rtunion_def* %arrayidx4536 to %struct.rtvec_def**
  %2342 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4537, align 8
  %elem4538 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2342, i32 0, i32 1
  %arrayidx4539 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4538, i32 0, i64 1
  %2343 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4539, align 8
  %fld4540 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2343, i32 0, i32 1
  %arrayidx4541 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4540, i32 0, i64 1
  %rtx4542 = bitcast %union.rtunion_def* %arrayidx4541 to %struct.rtx_def**
  %2344 = load %struct.rtx_def*, %struct.rtx_def** %rtx4542, align 8
  %fld4543 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2344, i32 0, i32 1
  %arrayidx4544 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4543, i32 0, i64 0
  %rtx4545 = bitcast %union.rtunion_def* %arrayidx4544 to %struct.rtx_def**
  %2345 = load %struct.rtx_def*, %struct.rtx_def** %rtx4545, align 8
  %fld4546 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2345, i32 0, i32 1
  %arrayidx4547 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4546, i32 0, i64 1
  %rtx4548 = bitcast %union.rtunion_def* %arrayidx4547 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4548, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.4549:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2346 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4550 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2346, i32 0, i32 1
  %arrayidx4551 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4550, i32 0, i64 0
  %rtvec4552 = bitcast %union.rtunion_def* %arrayidx4551 to %struct.rtvec_def**
  %2347 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4552, align 8
  %elem4553 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2347, i32 0, i32 1
  %arrayidx4554 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4553, i32 0, i64 1
  %2348 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4554, align 8
  %fld4555 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2348, i32 0, i32 1
  %arrayidx4556 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4555, i32 0, i64 0
  %rtx4557 = bitcast %union.rtunion_def* %arrayidx4556 to %struct.rtx_def**
  %2349 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4558 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2349, i64 0
  store %struct.rtx_def** %rtx4557, %struct.rtx_def*** %arrayidx4558, align 8
  %2350 = load %struct.rtx_def*, %struct.rtx_def** %rtx4557, align 8
  %2351 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4559 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2351, i64 0
  store %struct.rtx_def* %2350, %struct.rtx_def** %arrayidx4559, align 8
  %2352 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4560 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2352, i32 0, i32 1
  %arrayidx4561 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4560, i32 0, i64 0
  %rtvec4562 = bitcast %union.rtunion_def* %arrayidx4561 to %struct.rtvec_def**
  %2353 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4562, align 8
  %elem4563 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2353, i32 0, i32 1
  %arrayidx4564 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4563, i32 0, i64 0
  %2354 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4564, align 8
  %fld4565 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2354, i32 0, i32 1
  %arrayidx4566 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4565, i32 0, i64 1
  %rtx4567 = bitcast %union.rtunion_def* %arrayidx4566 to %struct.rtx_def**
  %2355 = load %struct.rtx_def*, %struct.rtx_def** %rtx4567, align 8
  %fld4568 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2355, i32 0, i32 1
  %arrayidx4569 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4568, i32 0, i64 0
  %rtx4570 = bitcast %union.rtunion_def* %arrayidx4569 to %struct.rtx_def**
  %2356 = load %struct.rtx_def*, %struct.rtx_def** %rtx4570, align 8
  %fld4571 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2356, i32 0, i32 1
  %arrayidx4572 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4571, i32 0, i64 0
  %rtx4573 = bitcast %union.rtunion_def* %arrayidx4572 to %struct.rtx_def**
  %2357 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4574 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2357, i64 1
  store %struct.rtx_def** %rtx4573, %struct.rtx_def*** %arrayidx4574, align 8
  %2358 = load %struct.rtx_def*, %struct.rtx_def** %rtx4573, align 8
  %2359 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4575 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2359, i64 1
  store %struct.rtx_def* %2358, %struct.rtx_def** %arrayidx4575, align 8
  %2360 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4576 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2360, i32 0, i32 1
  %arrayidx4577 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4576, i32 0, i64 0
  %rtvec4578 = bitcast %union.rtunion_def* %arrayidx4577 to %struct.rtvec_def**
  %2361 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4578, align 8
  %elem4579 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2361, i32 0, i32 1
  %arrayidx4580 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4579, i32 0, i64 0
  %2362 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4580, align 8
  %fld4581 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2362, i32 0, i32 1
  %arrayidx4582 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4581, i32 0, i64 1
  %rtx4583 = bitcast %union.rtunion_def* %arrayidx4582 to %struct.rtx_def**
  %2363 = load %struct.rtx_def*, %struct.rtx_def** %rtx4583, align 8
  %fld4584 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2363, i32 0, i32 1
  %arrayidx4585 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4584, i32 0, i64 0
  %rtx4586 = bitcast %union.rtunion_def* %arrayidx4585 to %struct.rtx_def**
  %2364 = load %struct.rtx_def*, %struct.rtx_def** %rtx4586, align 8
  %fld4587 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2364, i32 0, i32 1
  %arrayidx4588 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4587, i32 0, i64 1
  %rtx4589 = bitcast %union.rtunion_def* %arrayidx4588 to %struct.rtx_def**
  %2365 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4590 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2365, i64 2
  store %struct.rtx_def** %rtx4589, %struct.rtx_def*** %arrayidx4590, align 8
  %2366 = load %struct.rtx_def*, %struct.rtx_def** %rtx4589, align 8
  %2367 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4591 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2367, i64 2
  store %struct.rtx_def* %2366, %struct.rtx_def** %arrayidx4591, align 8
  %2368 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4592 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2368, i32 0, i32 1
  %arrayidx4593 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4592, i32 0, i64 0
  %rtvec4594 = bitcast %union.rtunion_def* %arrayidx4593 to %struct.rtvec_def**
  %2369 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4594, align 8
  %elem4595 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2369, i32 0, i32 1
  %arrayidx4596 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4595, i32 0, i64 1
  %2370 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4596, align 8
  %fld4597 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2370, i32 0, i32 1
  %arrayidx4598 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4597, i32 0, i64 1
  %rtx4599 = bitcast %union.rtunion_def* %arrayidx4598 to %struct.rtx_def**
  %2371 = load %struct.rtx_def*, %struct.rtx_def** %rtx4599, align 8
  %fld4600 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2371, i32 0, i32 1
  %arrayidx4601 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4600, i32 0, i64 0
  %rtx4602 = bitcast %union.rtunion_def* %arrayidx4601 to %struct.rtx_def**
  %2372 = load %struct.rtx_def*, %struct.rtx_def** %rtx4602, align 8
  %fld4603 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2372, i32 0, i32 1
  %arrayidx4604 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4603, i32 0, i64 0
  %rtx4605 = bitcast %union.rtunion_def* %arrayidx4604 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4605, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2373 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4606 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2373, i32 0, i32 1
  %arrayidx4607 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4606, i32 0, i64 0
  %rtvec4608 = bitcast %union.rtunion_def* %arrayidx4607 to %struct.rtvec_def**
  %2374 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4608, align 8
  %elem4609 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2374, i32 0, i32 1
  %arrayidx4610 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4609, i32 0, i64 1
  %2375 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4610, align 8
  %fld4611 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2375, i32 0, i32 1
  %arrayidx4612 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4611, i32 0, i64 1
  %rtx4613 = bitcast %union.rtunion_def* %arrayidx4612 to %struct.rtx_def**
  %2376 = load %struct.rtx_def*, %struct.rtx_def** %rtx4613, align 8
  %fld4614 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2376, i32 0, i32 1
  %arrayidx4615 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4614, i32 0, i64 0
  %rtx4616 = bitcast %union.rtunion_def* %arrayidx4615 to %struct.rtx_def**
  %2377 = load %struct.rtx_def*, %struct.rtx_def** %rtx4616, align 8
  %fld4617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2377, i32 0, i32 1
  %arrayidx4618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4617, i32 0, i64 1
  %rtx4619 = bitcast %union.rtunion_def* %arrayidx4618 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4619, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.4620:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2378 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4621 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2378, i32 0, i32 1
  %arrayidx4622 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4621, i32 0, i64 0
  %rtvec4623 = bitcast %union.rtunion_def* %arrayidx4622 to %struct.rtvec_def**
  %2379 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4623, align 8
  %elem4624 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2379, i32 0, i32 1
  %arrayidx4625 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4624, i32 0, i64 0
  %2380 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4625, align 8
  %fld4626 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2380, i32 0, i32 1
  %arrayidx4627 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4626, i32 0, i64 0
  %rtx4628 = bitcast %union.rtunion_def* %arrayidx4627 to %struct.rtx_def**
  %2381 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4629 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2381, i64 0
  store %struct.rtx_def** %rtx4628, %struct.rtx_def*** %arrayidx4629, align 8
  %2382 = load %struct.rtx_def*, %struct.rtx_def** %rtx4628, align 8
  %2383 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4630 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2383, i64 0
  store %struct.rtx_def* %2382, %struct.rtx_def** %arrayidx4630, align 8
  %2384 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4631 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2384, i32 0, i32 1
  %arrayidx4632 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4631, i32 0, i64 0
  %rtvec4633 = bitcast %union.rtunion_def* %arrayidx4632 to %struct.rtvec_def**
  %2385 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4633, align 8
  %elem4634 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2385, i32 0, i32 1
  %arrayidx4635 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4634, i32 0, i64 0
  %2386 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4635, align 8
  %fld4636 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2386, i32 0, i32 1
  %arrayidx4637 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4636, i32 0, i64 1
  %rtx4638 = bitcast %union.rtunion_def* %arrayidx4637 to %struct.rtx_def**
  %2387 = load %struct.rtx_def*, %struct.rtx_def** %rtx4638, align 8
  %fld4639 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2387, i32 0, i32 1
  %arrayidx4640 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4639, i32 0, i64 0
  %rtx4641 = bitcast %union.rtunion_def* %arrayidx4640 to %struct.rtx_def**
  %2388 = load %struct.rtx_def*, %struct.rtx_def** %rtx4641, align 8
  %fld4642 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2388, i32 0, i32 1
  %arrayidx4643 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4642, i32 0, i64 0
  %rtx4644 = bitcast %union.rtunion_def* %arrayidx4643 to %struct.rtx_def**
  %2389 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4645 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2389, i64 1
  store %struct.rtx_def** %rtx4644, %struct.rtx_def*** %arrayidx4645, align 8
  %2390 = load %struct.rtx_def*, %struct.rtx_def** %rtx4644, align 8
  %2391 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4646 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2391, i64 1
  store %struct.rtx_def* %2390, %struct.rtx_def** %arrayidx4646, align 8
  %2392 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4647 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2392, i32 0, i32 1
  %arrayidx4648 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4647, i32 0, i64 0
  %rtvec4649 = bitcast %union.rtunion_def* %arrayidx4648 to %struct.rtvec_def**
  %2393 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4649, align 8
  %elem4650 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2393, i32 0, i32 1
  %arrayidx4651 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4650, i32 0, i64 0
  %2394 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4651, align 8
  %fld4652 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2394, i32 0, i32 1
  %arrayidx4653 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4652, i32 0, i64 1
  %rtx4654 = bitcast %union.rtunion_def* %arrayidx4653 to %struct.rtx_def**
  %2395 = load %struct.rtx_def*, %struct.rtx_def** %rtx4654, align 8
  %fld4655 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2395, i32 0, i32 1
  %arrayidx4656 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4655, i32 0, i64 0
  %rtx4657 = bitcast %union.rtunion_def* %arrayidx4656 to %struct.rtx_def**
  %2396 = load %struct.rtx_def*, %struct.rtx_def** %rtx4657, align 8
  %fld4658 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2396, i32 0, i32 1
  %arrayidx4659 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4658, i32 0, i64 1
  %rtx4660 = bitcast %union.rtunion_def* %arrayidx4659 to %struct.rtx_def**
  %2397 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4661 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2397, i64 2
  store %struct.rtx_def** %rtx4660, %struct.rtx_def*** %arrayidx4661, align 8
  %2398 = load %struct.rtx_def*, %struct.rtx_def** %rtx4660, align 8
  %2399 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4662 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2399, i64 2
  store %struct.rtx_def* %2398, %struct.rtx_def** %arrayidx4662, align 8
  br label %sw.epilog

sw.bb.4663:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2400 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4664 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2400, i32 0, i32 1
  %arrayidx4665 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4664, i32 0, i64 0
  %rtvec4666 = bitcast %union.rtunion_def* %arrayidx4665 to %struct.rtvec_def**
  %2401 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4666, align 8
  %elem4667 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2401, i32 0, i32 1
  %arrayidx4668 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4667, i32 0, i64 1
  %2402 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4668, align 8
  %fld4669 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2402, i32 0, i32 1
  %arrayidx4670 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4669, i32 0, i64 0
  %rtx4671 = bitcast %union.rtunion_def* %arrayidx4670 to %struct.rtx_def**
  %2403 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4672 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2403, i64 0
  store %struct.rtx_def** %rtx4671, %struct.rtx_def*** %arrayidx4672, align 8
  %2404 = load %struct.rtx_def*, %struct.rtx_def** %rtx4671, align 8
  %2405 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4673 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2405, i64 0
  store %struct.rtx_def* %2404, %struct.rtx_def** %arrayidx4673, align 8
  %2406 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4674 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2406, i32 0, i32 1
  %arrayidx4675 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4674, i32 0, i64 0
  %rtvec4676 = bitcast %union.rtunion_def* %arrayidx4675 to %struct.rtvec_def**
  %2407 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4676, align 8
  %elem4677 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2407, i32 0, i32 1
  %arrayidx4678 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4677, i32 0, i64 0
  %2408 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4678, align 8
  %fld4679 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2408, i32 0, i32 1
  %arrayidx4680 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4679, i32 0, i64 1
  %rtx4681 = bitcast %union.rtunion_def* %arrayidx4680 to %struct.rtx_def**
  %2409 = load %struct.rtx_def*, %struct.rtx_def** %rtx4681, align 8
  %fld4682 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2409, i32 0, i32 1
  %arrayidx4683 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4682, i32 0, i64 0
  %rtx4684 = bitcast %union.rtunion_def* %arrayidx4683 to %struct.rtx_def**
  %2410 = load %struct.rtx_def*, %struct.rtx_def** %rtx4684, align 8
  %fld4685 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2410, i32 0, i32 1
  %arrayidx4686 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4685, i32 0, i64 0
  %rtx4687 = bitcast %union.rtunion_def* %arrayidx4686 to %struct.rtx_def**
  %2411 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4688 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2411, i64 1
  store %struct.rtx_def** %rtx4687, %struct.rtx_def*** %arrayidx4688, align 8
  %2412 = load %struct.rtx_def*, %struct.rtx_def** %rtx4687, align 8
  %2413 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4689 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2413, i64 1
  store %struct.rtx_def* %2412, %struct.rtx_def** %arrayidx4689, align 8
  %2414 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4690 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2414, i32 0, i32 1
  %arrayidx4691 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4690, i32 0, i64 0
  %rtvec4692 = bitcast %union.rtunion_def* %arrayidx4691 to %struct.rtvec_def**
  %2415 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4692, align 8
  %elem4693 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2415, i32 0, i32 1
  %arrayidx4694 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4693, i32 0, i64 0
  %2416 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4694, align 8
  %fld4695 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2416, i32 0, i32 1
  %arrayidx4696 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4695, i32 0, i64 1
  %rtx4697 = bitcast %union.rtunion_def* %arrayidx4696 to %struct.rtx_def**
  %2417 = load %struct.rtx_def*, %struct.rtx_def** %rtx4697, align 8
  %fld4698 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2417, i32 0, i32 1
  %arrayidx4699 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4698, i32 0, i64 0
  %rtx4700 = bitcast %union.rtunion_def* %arrayidx4699 to %struct.rtx_def**
  %2418 = load %struct.rtx_def*, %struct.rtx_def** %rtx4700, align 8
  %fld4701 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2418, i32 0, i32 1
  %arrayidx4702 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4701, i32 0, i64 1
  %rtx4703 = bitcast %union.rtunion_def* %arrayidx4702 to %struct.rtx_def**
  %2419 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4704 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2419, i64 2
  store %struct.rtx_def** %rtx4703, %struct.rtx_def*** %arrayidx4704, align 8
  %2420 = load %struct.rtx_def*, %struct.rtx_def** %rtx4703, align 8
  %2421 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4705 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2421, i64 2
  store %struct.rtx_def* %2420, %struct.rtx_def** %arrayidx4705, align 8
  br label %sw.epilog

sw.bb.4706:                                       ; preds = %entry, %entry, %entry, %entry
  %2422 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4707 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2422, i32 0, i32 1
  %arrayidx4708 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4707, i32 0, i64 0
  %rtvec4709 = bitcast %union.rtunion_def* %arrayidx4708 to %struct.rtvec_def**
  %2423 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4709, align 8
  %elem4710 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2423, i32 0, i32 1
  %arrayidx4711 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4710, i32 0, i64 1
  %2424 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4711, align 8
  %fld4712 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2424, i32 0, i32 1
  %arrayidx4713 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4712, i32 0, i64 0
  %rtx4714 = bitcast %union.rtunion_def* %arrayidx4713 to %struct.rtx_def**
  %2425 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4715 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2425, i64 0
  store %struct.rtx_def** %rtx4714, %struct.rtx_def*** %arrayidx4715, align 8
  %2426 = load %struct.rtx_def*, %struct.rtx_def** %rtx4714, align 8
  %2427 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4716 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2427, i64 0
  store %struct.rtx_def* %2426, %struct.rtx_def** %arrayidx4716, align 8
  %2428 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4717 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2428, i32 0, i32 1
  %arrayidx4718 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4717, i32 0, i64 0
  %rtvec4719 = bitcast %union.rtunion_def* %arrayidx4718 to %struct.rtvec_def**
  %2429 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4719, align 8
  %elem4720 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2429, i32 0, i32 1
  %arrayidx4721 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4720, i32 0, i64 0
  %2430 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4721, align 8
  %fld4722 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2430, i32 0, i32 1
  %arrayidx4723 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4722, i32 0, i64 1
  %rtx4724 = bitcast %union.rtunion_def* %arrayidx4723 to %struct.rtx_def**
  %2431 = load %struct.rtx_def*, %struct.rtx_def** %rtx4724, align 8
  %fld4725 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2431, i32 0, i32 1
  %arrayidx4726 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4725, i32 0, i64 0
  %rtx4727 = bitcast %union.rtunion_def* %arrayidx4726 to %struct.rtx_def**
  %2432 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4728 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2432, i64 1
  store %struct.rtx_def** %rtx4727, %struct.rtx_def*** %arrayidx4728, align 8
  %2433 = load %struct.rtx_def*, %struct.rtx_def** %rtx4727, align 8
  %2434 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4729 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2434, i64 1
  store %struct.rtx_def* %2433, %struct.rtx_def** %arrayidx4729, align 8
  %2435 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4730 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2435, i32 0, i32 1
  %arrayidx4731 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4730, i32 0, i64 0
  %rtvec4732 = bitcast %union.rtunion_def* %arrayidx4731 to %struct.rtvec_def**
  %2436 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4732, align 8
  %elem4733 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2436, i32 0, i32 1
  %arrayidx4734 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4733, i32 0, i64 0
  %2437 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4734, align 8
  %fld4735 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2437, i32 0, i32 1
  %arrayidx4736 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4735, i32 0, i64 1
  %rtx4737 = bitcast %union.rtunion_def* %arrayidx4736 to %struct.rtx_def**
  %2438 = load %struct.rtx_def*, %struct.rtx_def** %rtx4737, align 8
  %fld4738 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2438, i32 0, i32 1
  %arrayidx4739 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4738, i32 0, i64 1
  %rtx4740 = bitcast %union.rtunion_def* %arrayidx4739 to %struct.rtx_def**
  %2439 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4741 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2439, i64 2
  store %struct.rtx_def** %rtx4740, %struct.rtx_def*** %arrayidx4741, align 8
  %2440 = load %struct.rtx_def*, %struct.rtx_def** %rtx4740, align 8
  %2441 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4742 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2441, i64 2
  store %struct.rtx_def* %2440, %struct.rtx_def** %arrayidx4742, align 8
  br label %sw.epilog

sw.bb.4743:                                       ; preds = %entry, %entry, %entry, %entry
  %2442 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4744 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2442, i32 0, i32 1
  %arrayidx4745 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4744, i32 0, i64 0
  %rtvec4746 = bitcast %union.rtunion_def* %arrayidx4745 to %struct.rtvec_def**
  %2443 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4746, align 8
  %elem4747 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2443, i32 0, i32 1
  %arrayidx4748 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4747, i32 0, i64 1
  %2444 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4748, align 8
  %fld4749 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2444, i32 0, i32 1
  %arrayidx4750 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4749, i32 0, i64 0
  %rtx4751 = bitcast %union.rtunion_def* %arrayidx4750 to %struct.rtx_def**
  %2445 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4752 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2445, i64 0
  store %struct.rtx_def** %rtx4751, %struct.rtx_def*** %arrayidx4752, align 8
  %2446 = load %struct.rtx_def*, %struct.rtx_def** %rtx4751, align 8
  %2447 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4753 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2447, i64 0
  store %struct.rtx_def* %2446, %struct.rtx_def** %arrayidx4753, align 8
  %2448 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4754 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2448, i32 0, i32 1
  %arrayidx4755 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4754, i32 0, i64 0
  %rtvec4756 = bitcast %union.rtunion_def* %arrayidx4755 to %struct.rtvec_def**
  %2449 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4756, align 8
  %elem4757 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2449, i32 0, i32 1
  %arrayidx4758 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4757, i32 0, i64 0
  %2450 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4758, align 8
  %fld4759 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2450, i32 0, i32 1
  %arrayidx4760 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4759, i32 0, i64 1
  %rtx4761 = bitcast %union.rtunion_def* %arrayidx4760 to %struct.rtx_def**
  %2451 = load %struct.rtx_def*, %struct.rtx_def** %rtx4761, align 8
  %fld4762 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2451, i32 0, i32 1
  %arrayidx4763 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4762, i32 0, i64 1
  %rtx4764 = bitcast %union.rtunion_def* %arrayidx4763 to %struct.rtx_def**
  %2452 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4765 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2452, i64 1
  store %struct.rtx_def** %rtx4764, %struct.rtx_def*** %arrayidx4765, align 8
  %2453 = load %struct.rtx_def*, %struct.rtx_def** %rtx4764, align 8
  %2454 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4766 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2454, i64 1
  store %struct.rtx_def* %2453, %struct.rtx_def** %arrayidx4766, align 8
  %2455 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4767 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2455, i32 0, i32 1
  %arrayidx4768 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4767, i32 0, i64 0
  %rtvec4769 = bitcast %union.rtunion_def* %arrayidx4768 to %struct.rtvec_def**
  %2456 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4769, align 8
  %elem4770 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2456, i32 0, i32 1
  %arrayidx4771 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4770, i32 0, i64 0
  %2457 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4771, align 8
  %fld4772 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2457, i32 0, i32 1
  %arrayidx4773 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4772, i32 0, i64 1
  %rtx4774 = bitcast %union.rtunion_def* %arrayidx4773 to %struct.rtx_def**
  %2458 = load %struct.rtx_def*, %struct.rtx_def** %rtx4774, align 8
  %fld4775 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2458, i32 0, i32 1
  %arrayidx4776 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4775, i32 0, i64 0
  %rtx4777 = bitcast %union.rtunion_def* %arrayidx4776 to %struct.rtx_def**
  %2459 = load %struct.rtx_def*, %struct.rtx_def** %rtx4777, align 8
  %fld4778 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2459, i32 0, i32 1
  %arrayidx4779 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4778, i32 0, i64 0
  %rtx4780 = bitcast %union.rtunion_def* %arrayidx4779 to %struct.rtx_def**
  %2460 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4781 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2460, i64 2
  store %struct.rtx_def** %rtx4780, %struct.rtx_def*** %arrayidx4781, align 8
  %2461 = load %struct.rtx_def*, %struct.rtx_def** %rtx4780, align 8
  %2462 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4782 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2462, i64 2
  store %struct.rtx_def* %2461, %struct.rtx_def** %arrayidx4782, align 8
  br label %sw.epilog

sw.bb.4783:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2463 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4784 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2463, i32 0, i32 1
  %arrayidx4785 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4784, i32 0, i64 0
  %rtvec4786 = bitcast %union.rtunion_def* %arrayidx4785 to %struct.rtvec_def**
  %2464 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4786, align 8
  %elem4787 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2464, i32 0, i32 1
  %arrayidx4788 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4787, i32 0, i64 1
  %2465 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4788, align 8
  %fld4789 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2465, i32 0, i32 1
  %arrayidx4790 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4789, i32 0, i64 0
  %rtx4791 = bitcast %union.rtunion_def* %arrayidx4790 to %struct.rtx_def**
  %2466 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4792 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2466, i64 0
  store %struct.rtx_def** %rtx4791, %struct.rtx_def*** %arrayidx4792, align 8
  %2467 = load %struct.rtx_def*, %struct.rtx_def** %rtx4791, align 8
  %2468 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4793 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2468, i64 0
  store %struct.rtx_def* %2467, %struct.rtx_def** %arrayidx4793, align 8
  %2469 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4794 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2469, i32 0, i32 1
  %arrayidx4795 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4794, i32 0, i64 0
  %rtvec4796 = bitcast %union.rtunion_def* %arrayidx4795 to %struct.rtvec_def**
  %2470 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4796, align 8
  %elem4797 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2470, i32 0, i32 1
  %arrayidx4798 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4797, i32 0, i64 0
  %2471 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4798, align 8
  %fld4799 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2471, i32 0, i32 1
  %arrayidx4800 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4799, i32 0, i64 1
  %rtx4801 = bitcast %union.rtunion_def* %arrayidx4800 to %struct.rtx_def**
  %2472 = load %struct.rtx_def*, %struct.rtx_def** %rtx4801, align 8
  %fld4802 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2472, i32 0, i32 1
  %arrayidx4803 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4802, i32 0, i64 0
  %rtx4804 = bitcast %union.rtunion_def* %arrayidx4803 to %struct.rtx_def**
  %2473 = load %struct.rtx_def*, %struct.rtx_def** %rtx4804, align 8
  %fld4805 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2473, i32 0, i32 1
  %arrayidx4806 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4805, i32 0, i64 0
  %rtx4807 = bitcast %union.rtunion_def* %arrayidx4806 to %struct.rtx_def**
  %2474 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4808 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2474, i64 1
  store %struct.rtx_def** %rtx4807, %struct.rtx_def*** %arrayidx4808, align 8
  %2475 = load %struct.rtx_def*, %struct.rtx_def** %rtx4807, align 8
  %2476 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4809 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2476, i64 1
  store %struct.rtx_def* %2475, %struct.rtx_def** %arrayidx4809, align 8
  %2477 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4810 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2477, i32 0, i32 1
  %arrayidx4811 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4810, i32 0, i64 0
  %rtvec4812 = bitcast %union.rtunion_def* %arrayidx4811 to %struct.rtvec_def**
  %2478 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4812, align 8
  %elem4813 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2478, i32 0, i32 1
  %arrayidx4814 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4813, i32 0, i64 0
  %2479 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4814, align 8
  %fld4815 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2479, i32 0, i32 1
  %arrayidx4816 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4815, i32 0, i64 1
  %rtx4817 = bitcast %union.rtunion_def* %arrayidx4816 to %struct.rtx_def**
  %2480 = load %struct.rtx_def*, %struct.rtx_def** %rtx4817, align 8
  %fld4818 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2480, i32 0, i32 1
  %arrayidx4819 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4818, i32 0, i64 0
  %rtx4820 = bitcast %union.rtunion_def* %arrayidx4819 to %struct.rtx_def**
  %2481 = load %struct.rtx_def*, %struct.rtx_def** %rtx4820, align 8
  %fld4821 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2481, i32 0, i32 1
  %arrayidx4822 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4821, i32 0, i64 1
  %rtx4823 = bitcast %union.rtunion_def* %arrayidx4822 to %struct.rtx_def**
  %2482 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4824 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2482, i64 2
  store %struct.rtx_def** %rtx4823, %struct.rtx_def*** %arrayidx4824, align 8
  %2483 = load %struct.rtx_def*, %struct.rtx_def** %rtx4823, align 8
  %2484 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4825 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2484, i64 2
  store %struct.rtx_def* %2483, %struct.rtx_def** %arrayidx4825, align 8
  %2485 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4826 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2485, i32 0, i32 1
  %arrayidx4827 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4826, i32 0, i64 0
  %rtvec4828 = bitcast %union.rtunion_def* %arrayidx4827 to %struct.rtvec_def**
  %2486 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4828, align 8
  %elem4829 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2486, i32 0, i32 1
  %arrayidx4830 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4829, i32 0, i64 1
  %2487 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4830, align 8
  %fld4831 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2487, i32 0, i32 1
  %arrayidx4832 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4831, i32 0, i64 1
  %rtx4833 = bitcast %union.rtunion_def* %arrayidx4832 to %struct.rtx_def**
  %2488 = load %struct.rtx_def*, %struct.rtx_def** %rtx4833, align 8
  %fld4834 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2488, i32 0, i32 1
  %arrayidx4835 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4834, i32 0, i64 0
  %rtx4836 = bitcast %union.rtunion_def* %arrayidx4835 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4836, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2489 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4837 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2489, i32 0, i32 1
  %arrayidx4838 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4837, i32 0, i64 0
  %rtvec4839 = bitcast %union.rtunion_def* %arrayidx4838 to %struct.rtvec_def**
  %2490 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4839, align 8
  %elem4840 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2490, i32 0, i32 1
  %arrayidx4841 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem4840, i32 0, i64 1
  %2491 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4841, align 8
  %fld4842 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2491, i32 0, i32 1
  %arrayidx4843 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4842, i32 0, i64 1
  %rtx4844 = bitcast %union.rtunion_def* %arrayidx4843 to %struct.rtx_def**
  %2492 = load %struct.rtx_def*, %struct.rtx_def** %rtx4844, align 8
  %fld4845 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2492, i32 0, i32 1
  %arrayidx4846 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4845, i32 0, i64 1
  %rtx4847 = bitcast %union.rtunion_def* %arrayidx4846 to %struct.rtx_def**
  store %struct.rtx_def** %rtx4847, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.4848:                                       ; preds = %entry
  %2493 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4849 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2493, i32 0, i32 1
  %arrayidx4850 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4849, i32 0, i64 0
  %rtx4851 = bitcast %union.rtunion_def* %arrayidx4850 to %struct.rtx_def**
  %2494 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4852 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2494, i64 0
  store %struct.rtx_def** %rtx4851, %struct.rtx_def*** %arrayidx4852, align 8
  %2495 = load %struct.rtx_def*, %struct.rtx_def** %rtx4851, align 8
  %2496 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4853 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2496, i64 0
  store %struct.rtx_def* %2495, %struct.rtx_def** %arrayidx4853, align 8
  %2497 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4854 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2497, i32 0, i32 1
  %arrayidx4855 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4854, i32 0, i64 1
  %rtx4856 = bitcast %union.rtunion_def* %arrayidx4855 to %struct.rtx_def**
  %2498 = load %struct.rtx_def*, %struct.rtx_def** %rtx4856, align 8
  %fld4857 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2498, i32 0, i32 1
  %arrayidx4858 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4857, i32 0, i64 0
  %rtx4859 = bitcast %union.rtunion_def* %arrayidx4858 to %struct.rtx_def**
  %2499 = load %struct.rtx_def*, %struct.rtx_def** %rtx4859, align 8
  %fld4860 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2499, i32 0, i32 1
  %arrayidx4861 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4860, i32 0, i64 0
  %rtx4862 = bitcast %union.rtunion_def* %arrayidx4861 to %struct.rtx_def**
  %2500 = load %struct.rtx_def*, %struct.rtx_def** %rtx4862, align 8
  %fld4863 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2500, i32 0, i32 1
  %arrayidx4864 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4863, i32 0, i64 0
  %rtx4865 = bitcast %union.rtunion_def* %arrayidx4864 to %struct.rtx_def**
  %2501 = load %struct.rtx_def*, %struct.rtx_def** %rtx4865, align 8
  %fld4866 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2501, i32 0, i32 1
  %arrayidx4867 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4866, i32 0, i64 0
  %rtx4868 = bitcast %union.rtunion_def* %arrayidx4867 to %struct.rtx_def**
  %2502 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4869 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2502, i64 1
  store %struct.rtx_def** %rtx4868, %struct.rtx_def*** %arrayidx4869, align 8
  %2503 = load %struct.rtx_def*, %struct.rtx_def** %rtx4868, align 8
  %2504 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4870 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2504, i64 1
  store %struct.rtx_def* %2503, %struct.rtx_def** %arrayidx4870, align 8
  %2505 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4871 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2505, i32 0, i32 1
  %arrayidx4872 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4871, i32 0, i64 1
  %rtx4873 = bitcast %union.rtunion_def* %arrayidx4872 to %struct.rtx_def**
  %2506 = load %struct.rtx_def*, %struct.rtx_def** %rtx4873, align 8
  %fld4874 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2506, i32 0, i32 1
  %arrayidx4875 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4874, i32 0, i64 0
  %rtx4876 = bitcast %union.rtunion_def* %arrayidx4875 to %struct.rtx_def**
  %2507 = load %struct.rtx_def*, %struct.rtx_def** %rtx4876, align 8
  %fld4877 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2507, i32 0, i32 1
  %arrayidx4878 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4877, i32 0, i64 0
  %rtx4879 = bitcast %union.rtunion_def* %arrayidx4878 to %struct.rtx_def**
  %2508 = load %struct.rtx_def*, %struct.rtx_def** %rtx4879, align 8
  %fld4880 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2508, i32 0, i32 1
  %arrayidx4881 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4880, i32 0, i64 0
  %rtx4882 = bitcast %union.rtunion_def* %arrayidx4881 to %struct.rtx_def**
  %2509 = load %struct.rtx_def*, %struct.rtx_def** %rtx4882, align 8
  %fld4883 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2509, i32 0, i32 1
  %arrayidx4884 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4883, i32 0, i64 1
  %rtx4885 = bitcast %union.rtunion_def* %arrayidx4884 to %struct.rtx_def**
  %2510 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4886 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2510, i64 2
  store %struct.rtx_def** %rtx4885, %struct.rtx_def*** %arrayidx4886, align 8
  %2511 = load %struct.rtx_def*, %struct.rtx_def** %rtx4885, align 8
  %2512 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4887 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2512, i64 2
  store %struct.rtx_def* %2511, %struct.rtx_def** %arrayidx4887, align 8
  %2513 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4888 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2513, i32 0, i32 1
  %arrayidx4889 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4888, i32 0, i64 1
  %rtx4890 = bitcast %union.rtunion_def* %arrayidx4889 to %struct.rtx_def**
  %2514 = load %struct.rtx_def*, %struct.rtx_def** %rtx4890, align 8
  %fld4891 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2514, i32 0, i32 1
  %arrayidx4892 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4891, i32 0, i64 0
  %rtx4893 = bitcast %union.rtunion_def* %arrayidx4892 to %struct.rtx_def**
  %2515 = load %struct.rtx_def*, %struct.rtx_def** %rtx4893, align 8
  %fld4894 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2515, i32 0, i32 1
  %arrayidx4895 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4894, i32 0, i64 0
  %rtx4896 = bitcast %union.rtunion_def* %arrayidx4895 to %struct.rtx_def**
  %2516 = load %struct.rtx_def*, %struct.rtx_def** %rtx4896, align 8
  %fld4897 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2516, i32 0, i32 1
  %arrayidx4898 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4897, i32 0, i64 1
  %rtx4899 = bitcast %union.rtunion_def* %arrayidx4898 to %struct.rtx_def**
  %2517 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4900 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2517, i64 3
  store %struct.rtx_def** %rtx4899, %struct.rtx_def*** %arrayidx4900, align 8
  %2518 = load %struct.rtx_def*, %struct.rtx_def** %rtx4899, align 8
  %2519 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4901 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2519, i64 3
  store %struct.rtx_def* %2518, %struct.rtx_def** %arrayidx4901, align 8
  %2520 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4902 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2520, i32 0, i32 1
  %arrayidx4903 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4902, i32 0, i64 1
  %rtx4904 = bitcast %union.rtunion_def* %arrayidx4903 to %struct.rtx_def**
  %2521 = load %struct.rtx_def*, %struct.rtx_def** %rtx4904, align 8
  %fld4905 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2521, i32 0, i32 1
  %arrayidx4906 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4905, i32 0, i64 0
  %rtx4907 = bitcast %union.rtunion_def* %arrayidx4906 to %struct.rtx_def**
  %2522 = load %struct.rtx_def*, %struct.rtx_def** %rtx4907, align 8
  %fld4908 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2522, i32 0, i32 1
  %arrayidx4909 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4908, i32 0, i64 1
  %rtx4910 = bitcast %union.rtunion_def* %arrayidx4909 to %struct.rtx_def**
  %2523 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4911 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2523, i64 4
  store %struct.rtx_def** %rtx4910, %struct.rtx_def*** %arrayidx4911, align 8
  %2524 = load %struct.rtx_def*, %struct.rtx_def** %rtx4910, align 8
  %2525 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4912 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2525, i64 4
  store %struct.rtx_def* %2524, %struct.rtx_def** %arrayidx4912, align 8
  br label %sw.epilog

sw.bb.4913:                                       ; preds = %entry
  %2526 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4914 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2526, i32 0, i32 1
  %arrayidx4915 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4914, i32 0, i64 0
  %rtx4916 = bitcast %union.rtunion_def* %arrayidx4915 to %struct.rtx_def**
  %2527 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4917 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2527, i64 0
  store %struct.rtx_def** %rtx4916, %struct.rtx_def*** %arrayidx4917, align 8
  %2528 = load %struct.rtx_def*, %struct.rtx_def** %rtx4916, align 8
  %2529 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4918 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2529, i64 0
  store %struct.rtx_def* %2528, %struct.rtx_def** %arrayidx4918, align 8
  %2530 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4919 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2530, i32 0, i32 1
  %arrayidx4920 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4919, i32 0, i64 1
  %rtx4921 = bitcast %union.rtunion_def* %arrayidx4920 to %struct.rtx_def**
  %2531 = load %struct.rtx_def*, %struct.rtx_def** %rtx4921, align 8
  %fld4922 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2531, i32 0, i32 1
  %arrayidx4923 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4922, i32 0, i64 0
  %rtx4924 = bitcast %union.rtunion_def* %arrayidx4923 to %struct.rtx_def**
  %2532 = load %struct.rtx_def*, %struct.rtx_def** %rtx4924, align 8
  %fld4925 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2532, i32 0, i32 1
  %arrayidx4926 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4925, i32 0, i64 0
  %rtx4927 = bitcast %union.rtunion_def* %arrayidx4926 to %struct.rtx_def**
  %2533 = load %struct.rtx_def*, %struct.rtx_def** %rtx4927, align 8
  %fld4928 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2533, i32 0, i32 1
  %arrayidx4929 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4928, i32 0, i64 0
  %rtx4930 = bitcast %union.rtunion_def* %arrayidx4929 to %struct.rtx_def**
  %2534 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4931 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2534, i64 1
  store %struct.rtx_def** %rtx4930, %struct.rtx_def*** %arrayidx4931, align 8
  %2535 = load %struct.rtx_def*, %struct.rtx_def** %rtx4930, align 8
  %2536 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4932 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2536, i64 1
  store %struct.rtx_def* %2535, %struct.rtx_def** %arrayidx4932, align 8
  %2537 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4933 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2537, i32 0, i32 1
  %arrayidx4934 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4933, i32 0, i64 1
  %rtx4935 = bitcast %union.rtunion_def* %arrayidx4934 to %struct.rtx_def**
  %2538 = load %struct.rtx_def*, %struct.rtx_def** %rtx4935, align 8
  %fld4936 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2538, i32 0, i32 1
  %arrayidx4937 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4936, i32 0, i64 0
  %rtx4938 = bitcast %union.rtunion_def* %arrayidx4937 to %struct.rtx_def**
  %2539 = load %struct.rtx_def*, %struct.rtx_def** %rtx4938, align 8
  %fld4939 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2539, i32 0, i32 1
  %arrayidx4940 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4939, i32 0, i64 0
  %rtx4941 = bitcast %union.rtunion_def* %arrayidx4940 to %struct.rtx_def**
  %2540 = load %struct.rtx_def*, %struct.rtx_def** %rtx4941, align 8
  %fld4942 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2540, i32 0, i32 1
  %arrayidx4943 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4942, i32 0, i64 1
  %rtx4944 = bitcast %union.rtunion_def* %arrayidx4943 to %struct.rtx_def**
  %2541 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4945 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2541, i64 2
  store %struct.rtx_def** %rtx4944, %struct.rtx_def*** %arrayidx4945, align 8
  %2542 = load %struct.rtx_def*, %struct.rtx_def** %rtx4944, align 8
  %2543 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4946 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2543, i64 2
  store %struct.rtx_def* %2542, %struct.rtx_def** %arrayidx4946, align 8
  %2544 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4947 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2544, i32 0, i32 1
  %arrayidx4948 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4947, i32 0, i64 1
  %rtx4949 = bitcast %union.rtunion_def* %arrayidx4948 to %struct.rtx_def**
  %2545 = load %struct.rtx_def*, %struct.rtx_def** %rtx4949, align 8
  %fld4950 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2545, i32 0, i32 1
  %arrayidx4951 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4950, i32 0, i64 0
  %rtx4952 = bitcast %union.rtunion_def* %arrayidx4951 to %struct.rtx_def**
  %2546 = load %struct.rtx_def*, %struct.rtx_def** %rtx4952, align 8
  %fld4953 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2546, i32 0, i32 1
  %arrayidx4954 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4953, i32 0, i64 1
  %rtx4955 = bitcast %union.rtunion_def* %arrayidx4954 to %struct.rtx_def**
  %2547 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4956 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2547, i64 3
  store %struct.rtx_def** %rtx4955, %struct.rtx_def*** %arrayidx4956, align 8
  %2548 = load %struct.rtx_def*, %struct.rtx_def** %rtx4955, align 8
  %2549 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4957 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2549, i64 3
  store %struct.rtx_def* %2548, %struct.rtx_def** %arrayidx4957, align 8
  %2550 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4958 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2550, i32 0, i32 1
  %arrayidx4959 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4958, i32 0, i64 1
  %rtx4960 = bitcast %union.rtunion_def* %arrayidx4959 to %struct.rtx_def**
  %2551 = load %struct.rtx_def*, %struct.rtx_def** %rtx4960, align 8
  %fld4961 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2551, i32 0, i32 1
  %arrayidx4962 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4961, i32 0, i64 1
  %rtx4963 = bitcast %union.rtunion_def* %arrayidx4962 to %struct.rtx_def**
  %2552 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4964 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2552, i64 4
  store %struct.rtx_def** %rtx4963, %struct.rtx_def*** %arrayidx4964, align 8
  %2553 = load %struct.rtx_def*, %struct.rtx_def** %rtx4963, align 8
  %2554 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4965 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2554, i64 4
  store %struct.rtx_def* %2553, %struct.rtx_def** %arrayidx4965, align 8
  br label %sw.epilog

sw.bb.4966:                                       ; preds = %entry, %entry
  %2555 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4967 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2555, i32 0, i32 1
  %arrayidx4968 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4967, i32 0, i64 0
  %rtx4969 = bitcast %union.rtunion_def* %arrayidx4968 to %struct.rtx_def**
  %2556 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4970 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2556, i64 0
  store %struct.rtx_def** %rtx4969, %struct.rtx_def*** %arrayidx4970, align 8
  %2557 = load %struct.rtx_def*, %struct.rtx_def** %rtx4969, align 8
  %2558 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4971 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2558, i64 0
  store %struct.rtx_def* %2557, %struct.rtx_def** %arrayidx4971, align 8
  %2559 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4972 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2559, i32 0, i32 1
  %arrayidx4973 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4972, i32 0, i64 1
  %rtx4974 = bitcast %union.rtunion_def* %arrayidx4973 to %struct.rtx_def**
  %2560 = load %struct.rtx_def*, %struct.rtx_def** %rtx4974, align 8
  %fld4975 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2560, i32 0, i32 1
  %arrayidx4976 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4975, i32 0, i64 0
  %rtx4977 = bitcast %union.rtunion_def* %arrayidx4976 to %struct.rtx_def**
  %2561 = load %struct.rtx_def*, %struct.rtx_def** %rtx4977, align 8
  %fld4978 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2561, i32 0, i32 1
  %arrayidx4979 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4978, i32 0, i64 0
  %rtx4980 = bitcast %union.rtunion_def* %arrayidx4979 to %struct.rtx_def**
  %2562 = load %struct.rtx_def*, %struct.rtx_def** %rtx4980, align 8
  %fld4981 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2562, i32 0, i32 1
  %arrayidx4982 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4981, i32 0, i64 0
  %rtx4983 = bitcast %union.rtunion_def* %arrayidx4982 to %struct.rtx_def**
  %2563 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4984 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2563, i64 1
  store %struct.rtx_def** %rtx4983, %struct.rtx_def*** %arrayidx4984, align 8
  %2564 = load %struct.rtx_def*, %struct.rtx_def** %rtx4983, align 8
  %2565 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4985 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2565, i64 1
  store %struct.rtx_def* %2564, %struct.rtx_def** %arrayidx4985, align 8
  %2566 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld4986 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2566, i32 0, i32 1
  %arrayidx4987 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4986, i32 0, i64 1
  %rtx4988 = bitcast %union.rtunion_def* %arrayidx4987 to %struct.rtx_def**
  %2567 = load %struct.rtx_def*, %struct.rtx_def** %rtx4988, align 8
  %fld4989 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2567, i32 0, i32 1
  %arrayidx4990 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4989, i32 0, i64 0
  %rtx4991 = bitcast %union.rtunion_def* %arrayidx4990 to %struct.rtx_def**
  %2568 = load %struct.rtx_def*, %struct.rtx_def** %rtx4991, align 8
  %fld4992 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2568, i32 0, i32 1
  %arrayidx4993 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4992, i32 0, i64 0
  %rtx4994 = bitcast %union.rtunion_def* %arrayidx4993 to %struct.rtx_def**
  %2569 = load %struct.rtx_def*, %struct.rtx_def** %rtx4994, align 8
  %fld4995 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2569, i32 0, i32 1
  %arrayidx4996 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4995, i32 0, i64 1
  %rtx4997 = bitcast %union.rtunion_def* %arrayidx4996 to %struct.rtx_def**
  %2570 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx4998 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2570, i64 2
  store %struct.rtx_def** %rtx4997, %struct.rtx_def*** %arrayidx4998, align 8
  %2571 = load %struct.rtx_def*, %struct.rtx_def** %rtx4997, align 8
  %2572 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx4999 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2572, i64 2
  store %struct.rtx_def* %2571, %struct.rtx_def** %arrayidx4999, align 8
  %2573 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5000 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2573, i32 0, i32 1
  %arrayidx5001 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5000, i32 0, i64 1
  %rtx5002 = bitcast %union.rtunion_def* %arrayidx5001 to %struct.rtx_def**
  %2574 = load %struct.rtx_def*, %struct.rtx_def** %rtx5002, align 8
  %fld5003 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2574, i32 0, i32 1
  %arrayidx5004 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5003, i32 0, i64 0
  %rtx5005 = bitcast %union.rtunion_def* %arrayidx5004 to %struct.rtx_def**
  %2575 = load %struct.rtx_def*, %struct.rtx_def** %rtx5005, align 8
  %fld5006 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2575, i32 0, i32 1
  %arrayidx5007 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5006, i32 0, i64 1
  %rtx5008 = bitcast %union.rtunion_def* %arrayidx5007 to %struct.rtx_def**
  %2576 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5009 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2576, i64 3
  store %struct.rtx_def** %rtx5008, %struct.rtx_def*** %arrayidx5009, align 8
  %2577 = load %struct.rtx_def*, %struct.rtx_def** %rtx5008, align 8
  %2578 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5010 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2578, i64 3
  store %struct.rtx_def* %2577, %struct.rtx_def** %arrayidx5010, align 8
  br label %sw.epilog

sw.bb.5011:                                       ; preds = %entry, %entry
  %2579 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5012 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2579, i32 0, i32 1
  %arrayidx5013 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5012, i32 0, i64 0
  %rtx5014 = bitcast %union.rtunion_def* %arrayidx5013 to %struct.rtx_def**
  %2580 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5015 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2580, i64 0
  store %struct.rtx_def** %rtx5014, %struct.rtx_def*** %arrayidx5015, align 8
  %2581 = load %struct.rtx_def*, %struct.rtx_def** %rtx5014, align 8
  %2582 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5016 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2582, i64 0
  store %struct.rtx_def* %2581, %struct.rtx_def** %arrayidx5016, align 8
  %2583 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5017 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2583, i32 0, i32 1
  %arrayidx5018 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5017, i32 0, i64 1
  %rtx5019 = bitcast %union.rtunion_def* %arrayidx5018 to %struct.rtx_def**
  %2584 = load %struct.rtx_def*, %struct.rtx_def** %rtx5019, align 8
  %fld5020 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2584, i32 0, i32 1
  %arrayidx5021 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5020, i32 0, i64 0
  %rtx5022 = bitcast %union.rtunion_def* %arrayidx5021 to %struct.rtx_def**
  %2585 = load %struct.rtx_def*, %struct.rtx_def** %rtx5022, align 8
  %fld5023 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2585, i32 0, i32 1
  %arrayidx5024 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5023, i32 0, i64 0
  %rtx5025 = bitcast %union.rtunion_def* %arrayidx5024 to %struct.rtx_def**
  %2586 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5026 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2586, i64 1
  store %struct.rtx_def** %rtx5025, %struct.rtx_def*** %arrayidx5026, align 8
  %2587 = load %struct.rtx_def*, %struct.rtx_def** %rtx5025, align 8
  %2588 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5027 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2588, i64 1
  store %struct.rtx_def* %2587, %struct.rtx_def** %arrayidx5027, align 8
  %2589 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5028 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2589, i32 0, i32 1
  %arrayidx5029 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5028, i32 0, i64 1
  %rtx5030 = bitcast %union.rtunion_def* %arrayidx5029 to %struct.rtx_def**
  %2590 = load %struct.rtx_def*, %struct.rtx_def** %rtx5030, align 8
  %fld5031 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2590, i32 0, i32 1
  %arrayidx5032 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5031, i32 0, i64 0
  %rtx5033 = bitcast %union.rtunion_def* %arrayidx5032 to %struct.rtx_def**
  %2591 = load %struct.rtx_def*, %struct.rtx_def** %rtx5033, align 8
  %fld5034 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2591, i32 0, i32 1
  %arrayidx5035 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5034, i32 0, i64 1
  %rtx5036 = bitcast %union.rtunion_def* %arrayidx5035 to %struct.rtx_def**
  %2592 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5037 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2592, i64 2
  store %struct.rtx_def** %rtx5036, %struct.rtx_def*** %arrayidx5037, align 8
  %2593 = load %struct.rtx_def*, %struct.rtx_def** %rtx5036, align 8
  %2594 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5038 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2594, i64 2
  store %struct.rtx_def* %2593, %struct.rtx_def** %arrayidx5038, align 8
  %2595 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5039 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2595, i32 0, i32 1
  %arrayidx5040 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5039, i32 0, i64 1
  %rtx5041 = bitcast %union.rtunion_def* %arrayidx5040 to %struct.rtx_def**
  %2596 = load %struct.rtx_def*, %struct.rtx_def** %rtx5041, align 8
  %fld5042 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2596, i32 0, i32 1
  %arrayidx5043 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5042, i32 0, i64 1
  %rtx5044 = bitcast %union.rtunion_def* %arrayidx5043 to %struct.rtx_def**
  %2597 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5045 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2597, i64 3
  store %struct.rtx_def** %rtx5044, %struct.rtx_def*** %arrayidx5045, align 8
  %2598 = load %struct.rtx_def*, %struct.rtx_def** %rtx5044, align 8
  %2599 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5046 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2599, i64 3
  store %struct.rtx_def* %2598, %struct.rtx_def** %arrayidx5046, align 8
  br label %sw.epilog

sw.bb.5047:                                       ; preds = %entry
  %2600 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5048 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2600, i32 0, i32 1
  %arrayidx5049 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5048, i32 0, i64 0
  %rtvec5050 = bitcast %union.rtunion_def* %arrayidx5049 to %struct.rtvec_def**
  %2601 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5050, align 8
  %elem5051 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2601, i32 0, i32 1
  %arrayidx5052 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5051, i32 0, i64 0
  %2602 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5052, align 8
  %fld5053 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2602, i32 0, i32 1
  %arrayidx5054 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5053, i32 0, i64 0
  %rtx5055 = bitcast %union.rtunion_def* %arrayidx5054 to %struct.rtx_def**
  %2603 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5056 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2603, i64 0
  store %struct.rtx_def** %rtx5055, %struct.rtx_def*** %arrayidx5056, align 8
  %2604 = load %struct.rtx_def*, %struct.rtx_def** %rtx5055, align 8
  %2605 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5057 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2605, i64 0
  store %struct.rtx_def* %2604, %struct.rtx_def** %arrayidx5057, align 8
  %2606 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5058 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2606, i32 0, i32 1
  %arrayidx5059 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5058, i32 0, i64 0
  %rtvec5060 = bitcast %union.rtunion_def* %arrayidx5059 to %struct.rtvec_def**
  %2607 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5060, align 8
  %elem5061 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2607, i32 0, i32 1
  %arrayidx5062 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5061, i32 0, i64 0
  %2608 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5062, align 8
  %fld5063 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2608, i32 0, i32 1
  %arrayidx5064 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5063, i32 0, i64 1
  %rtx5065 = bitcast %union.rtunion_def* %arrayidx5064 to %struct.rtx_def**
  %2609 = load %struct.rtx_def*, %struct.rtx_def** %rtx5065, align 8
  %fld5066 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2609, i32 0, i32 1
  %arrayidx5067 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5066, i32 0, i64 0
  %rtx5068 = bitcast %union.rtunion_def* %arrayidx5067 to %struct.rtx_def**
  %2610 = load %struct.rtx_def*, %struct.rtx_def** %rtx5068, align 8
  %fld5069 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2610, i32 0, i32 1
  %arrayidx5070 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5069, i32 0, i64 0
  %rtx5071 = bitcast %union.rtunion_def* %arrayidx5070 to %struct.rtx_def**
  %2611 = load %struct.rtx_def*, %struct.rtx_def** %rtx5071, align 8
  %fld5072 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2611, i32 0, i32 1
  %arrayidx5073 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5072, i32 0, i64 1
  %rtx5074 = bitcast %union.rtunion_def* %arrayidx5073 to %struct.rtx_def**
  %2612 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5075 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2612, i64 1
  store %struct.rtx_def** %rtx5074, %struct.rtx_def*** %arrayidx5075, align 8
  %2613 = load %struct.rtx_def*, %struct.rtx_def** %rtx5074, align 8
  %2614 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5076 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2614, i64 1
  store %struct.rtx_def* %2613, %struct.rtx_def** %arrayidx5076, align 8
  %2615 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5077 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2615, i32 0, i32 1
  %arrayidx5078 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5077, i32 0, i64 0
  %rtvec5079 = bitcast %union.rtunion_def* %arrayidx5078 to %struct.rtvec_def**
  %2616 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5079, align 8
  %elem5080 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2616, i32 0, i32 1
  %arrayidx5081 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5080, i32 0, i64 0
  %2617 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5081, align 8
  %fld5082 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2617, i32 0, i32 1
  %arrayidx5083 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5082, i32 0, i64 1
  %rtx5084 = bitcast %union.rtunion_def* %arrayidx5083 to %struct.rtx_def**
  %2618 = load %struct.rtx_def*, %struct.rtx_def** %rtx5084, align 8
  %fld5085 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2618, i32 0, i32 1
  %arrayidx5086 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5085, i32 0, i64 0
  %rtx5087 = bitcast %union.rtunion_def* %arrayidx5086 to %struct.rtx_def**
  %2619 = load %struct.rtx_def*, %struct.rtx_def** %rtx5087, align 8
  %fld5088 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2619, i32 0, i32 1
  %arrayidx5089 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5088, i32 0, i64 1
  %rtx5090 = bitcast %union.rtunion_def* %arrayidx5089 to %struct.rtx_def**
  %2620 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5091 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2620, i64 2
  store %struct.rtx_def** %rtx5090, %struct.rtx_def*** %arrayidx5091, align 8
  %2621 = load %struct.rtx_def*, %struct.rtx_def** %rtx5090, align 8
  %2622 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5092 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2622, i64 2
  store %struct.rtx_def* %2621, %struct.rtx_def** %arrayidx5092, align 8
  br label %sw.epilog

sw.bb.5093:                                       ; preds = %entry, %entry, %entry
  %2623 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5094 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2623, i32 0, i32 1
  %arrayidx5095 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5094, i32 0, i64 0
  %rtvec5096 = bitcast %union.rtunion_def* %arrayidx5095 to %struct.rtvec_def**
  %2624 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5096, align 8
  %elem5097 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2624, i32 0, i32 1
  %arrayidx5098 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5097, i32 0, i64 1
  %2625 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5098, align 8
  %fld5099 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2625, i32 0, i32 1
  %arrayidx5100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5099, i32 0, i64 0
  %rtx5101 = bitcast %union.rtunion_def* %arrayidx5100 to %struct.rtx_def**
  %2626 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5102 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2626, i64 0
  store %struct.rtx_def** %rtx5101, %struct.rtx_def*** %arrayidx5102, align 8
  %2627 = load %struct.rtx_def*, %struct.rtx_def** %rtx5101, align 8
  %2628 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5103 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2628, i64 0
  store %struct.rtx_def* %2627, %struct.rtx_def** %arrayidx5103, align 8
  %2629 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2629, i32 0, i32 1
  %arrayidx5105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5104, i32 0, i64 0
  %rtvec5106 = bitcast %union.rtunion_def* %arrayidx5105 to %struct.rtvec_def**
  %2630 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5106, align 8
  %elem5107 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2630, i32 0, i32 1
  %arrayidx5108 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5107, i32 0, i64 0
  %2631 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5108, align 8
  %fld5109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2631, i32 0, i32 1
  %arrayidx5110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5109, i32 0, i64 1
  %rtx5111 = bitcast %union.rtunion_def* %arrayidx5110 to %struct.rtx_def**
  %2632 = load %struct.rtx_def*, %struct.rtx_def** %rtx5111, align 8
  %fld5112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2632, i32 0, i32 1
  %arrayidx5113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5112, i32 0, i64 0
  %rtvec5114 = bitcast %union.rtunion_def* %arrayidx5113 to %struct.rtvec_def**
  %2633 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5114, align 8
  %elem5115 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2633, i32 0, i32 1
  %arrayidx5116 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5115, i32 0, i64 0
  %2634 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5117 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2634, i64 1
  store %struct.rtx_def** %arrayidx5116, %struct.rtx_def*** %arrayidx5117, align 8
  %2635 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5116, align 8
  %2636 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5118 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2636, i64 1
  store %struct.rtx_def* %2635, %struct.rtx_def** %arrayidx5118, align 8
  %2637 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2637, i32 0, i32 1
  %arrayidx5120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5119, i32 0, i64 0
  %rtvec5121 = bitcast %union.rtunion_def* %arrayidx5120 to %struct.rtvec_def**
  %2638 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5121, align 8
  %elem5122 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2638, i32 0, i32 1
  %arrayidx5123 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5122, i32 0, i64 0
  %2639 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5123, align 8
  %fld5124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2639, i32 0, i32 1
  %arrayidx5125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5124, i32 0, i64 1
  %rtx5126 = bitcast %union.rtunion_def* %arrayidx5125 to %struct.rtx_def**
  %2640 = load %struct.rtx_def*, %struct.rtx_def** %rtx5126, align 8
  %fld5127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2640, i32 0, i32 1
  %arrayidx5128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5127, i32 0, i64 0
  %rtvec5129 = bitcast %union.rtunion_def* %arrayidx5128 to %struct.rtvec_def**
  %2641 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5129, align 8
  %elem5130 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2641, i32 0, i32 1
  %arrayidx5131 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5130, i32 0, i64 1
  %2642 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5132 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2642, i64 2
  store %struct.rtx_def** %arrayidx5131, %struct.rtx_def*** %arrayidx5132, align 8
  %2643 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5131, align 8
  %2644 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5133 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2644, i64 2
  store %struct.rtx_def* %2643, %struct.rtx_def** %arrayidx5133, align 8
  %2645 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2645, i32 0, i32 1
  %arrayidx5135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5134, i32 0, i64 0
  %rtvec5136 = bitcast %union.rtunion_def* %arrayidx5135 to %struct.rtvec_def**
  %2646 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5136, align 8
  %elem5137 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2646, i32 0, i32 1
  %arrayidx5138 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5137, i32 0, i64 1
  %2647 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5138, align 8
  %fld5139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2647, i32 0, i32 1
  %arrayidx5140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5139, i32 0, i64 1
  %rtx5141 = bitcast %union.rtunion_def* %arrayidx5140 to %struct.rtx_def**
  %2648 = load %struct.rtx_def*, %struct.rtx_def** %rtx5141, align 8
  %fld5142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2648, i32 0, i32 1
  %arrayidx5143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5142, i32 0, i64 0
  %rtx5144 = bitcast %union.rtunion_def* %arrayidx5143 to %struct.rtx_def**
  store %struct.rtx_def** %rtx5144, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2649 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2649, i32 0, i32 1
  %arrayidx5146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5145, i32 0, i64 0
  %rtvec5147 = bitcast %union.rtunion_def* %arrayidx5146 to %struct.rtvec_def**
  %2650 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5147, align 8
  %elem5148 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2650, i32 0, i32 1
  %arrayidx5149 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5148, i32 0, i64 1
  %2651 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5149, align 8
  %fld5150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2651, i32 0, i32 1
  %arrayidx5151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5150, i32 0, i64 1
  %rtx5152 = bitcast %union.rtunion_def* %arrayidx5151 to %struct.rtx_def**
  %2652 = load %struct.rtx_def*, %struct.rtx_def** %rtx5152, align 8
  %fld5153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2652, i32 0, i32 1
  %arrayidx5154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5153, i32 0, i64 1
  %rtx5155 = bitcast %union.rtunion_def* %arrayidx5154 to %struct.rtx_def**
  store %struct.rtx_def** %rtx5155, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 2, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.5156:                                       ; preds = %entry, %entry
  %2653 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2653, i32 0, i32 1
  %arrayidx5158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5157, i32 0, i64 0
  %rtvec5159 = bitcast %union.rtunion_def* %arrayidx5158 to %struct.rtvec_def**
  %2654 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5159, align 8
  %elem5160 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2654, i32 0, i32 1
  %arrayidx5161 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5160, i32 0, i64 0
  %2655 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5161, align 8
  %fld5162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2655, i32 0, i32 1
  %arrayidx5163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5162, i32 0, i64 0
  %rtx5164 = bitcast %union.rtunion_def* %arrayidx5163 to %struct.rtx_def**
  %2656 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5165 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2656, i64 0
  store %struct.rtx_def** %rtx5164, %struct.rtx_def*** %arrayidx5165, align 8
  %2657 = load %struct.rtx_def*, %struct.rtx_def** %rtx5164, align 8
  %2658 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5166 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2658, i64 0
  store %struct.rtx_def* %2657, %struct.rtx_def** %arrayidx5166, align 8
  %2659 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2659, i32 0, i32 1
  %arrayidx5168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5167, i32 0, i64 0
  %rtvec5169 = bitcast %union.rtunion_def* %arrayidx5168 to %struct.rtvec_def**
  %2660 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5169, align 8
  %elem5170 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2660, i32 0, i32 1
  %arrayidx5171 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5170, i32 0, i64 0
  %2661 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5171, align 8
  %fld5172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2661, i32 0, i32 1
  %arrayidx5173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5172, i32 0, i64 1
  %rtx5174 = bitcast %union.rtunion_def* %arrayidx5173 to %struct.rtx_def**
  %2662 = load %struct.rtx_def*, %struct.rtx_def** %rtx5174, align 8
  %fld5175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2662, i32 0, i32 1
  %arrayidx5176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5175, i32 0, i64 0
  %rtx5177 = bitcast %union.rtunion_def* %arrayidx5176 to %struct.rtx_def**
  %2663 = load %struct.rtx_def*, %struct.rtx_def** %rtx5177, align 8
  %fld5178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2663, i32 0, i32 1
  %arrayidx5179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5178, i32 0, i64 1
  %rtx5180 = bitcast %union.rtunion_def* %arrayidx5179 to %struct.rtx_def**
  %2664 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5181 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2664, i64 1
  store %struct.rtx_def** %rtx5180, %struct.rtx_def*** %arrayidx5181, align 8
  %2665 = load %struct.rtx_def*, %struct.rtx_def** %rtx5180, align 8
  %2666 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5182 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2666, i64 1
  store %struct.rtx_def* %2665, %struct.rtx_def** %arrayidx5182, align 8
  %2667 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2667, i32 0, i32 1
  %arrayidx5184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5183, i32 0, i64 0
  %rtvec5185 = bitcast %union.rtunion_def* %arrayidx5184 to %struct.rtvec_def**
  %2668 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5185, align 8
  %elem5186 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2668, i32 0, i32 1
  %arrayidx5187 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5186, i32 0, i64 0
  %2669 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5187, align 8
  %fld5188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2669, i32 0, i32 1
  %arrayidx5189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5188, i32 0, i64 1
  %rtx5190 = bitcast %union.rtunion_def* %arrayidx5189 to %struct.rtx_def**
  %2670 = load %struct.rtx_def*, %struct.rtx_def** %rtx5190, align 8
  %fld5191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2670, i32 0, i32 1
  %arrayidx5192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5191, i32 0, i64 1
  %rtx5193 = bitcast %union.rtunion_def* %arrayidx5192 to %struct.rtx_def**
  %2671 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5194 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2671, i64 2
  store %struct.rtx_def** %rtx5193, %struct.rtx_def*** %arrayidx5194, align 8
  %2672 = load %struct.rtx_def*, %struct.rtx_def** %rtx5193, align 8
  %2673 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5195 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2673, i64 2
  store %struct.rtx_def* %2672, %struct.rtx_def** %arrayidx5195, align 8
  br label %sw.epilog

sw.bb.5196:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2674 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2674, i32 0, i32 1
  %arrayidx5198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5197, i32 0, i64 0
  %rtvec5199 = bitcast %union.rtunion_def* %arrayidx5198 to %struct.rtvec_def**
  %2675 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5199, align 8
  %elem5200 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2675, i32 0, i32 1
  %arrayidx5201 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5200, i32 0, i64 0
  %2676 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5201, align 8
  %fld5202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2676, i32 0, i32 1
  %arrayidx5203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5202, i32 0, i64 0
  %rtx5204 = bitcast %union.rtunion_def* %arrayidx5203 to %struct.rtx_def**
  %2677 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5205 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2677, i64 0
  store %struct.rtx_def** %rtx5204, %struct.rtx_def*** %arrayidx5205, align 8
  %2678 = load %struct.rtx_def*, %struct.rtx_def** %rtx5204, align 8
  %2679 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5206 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2679, i64 0
  store %struct.rtx_def* %2678, %struct.rtx_def** %arrayidx5206, align 8
  %2680 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2680, i32 0, i32 1
  %arrayidx5208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5207, i32 0, i64 0
  %rtvec5209 = bitcast %union.rtunion_def* %arrayidx5208 to %struct.rtvec_def**
  %2681 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5209, align 8
  %elem5210 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2681, i32 0, i32 1
  %arrayidx5211 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5210, i32 0, i64 0
  %2682 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5211, align 8
  %fld5212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2682, i32 0, i32 1
  %arrayidx5213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5212, i32 0, i64 1
  %rtx5214 = bitcast %union.rtunion_def* %arrayidx5213 to %struct.rtx_def**
  %2683 = load %struct.rtx_def*, %struct.rtx_def** %rtx5214, align 8
  %fld5215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2683, i32 0, i32 1
  %arrayidx5216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5215, i32 0, i64 0
  %rtx5217 = bitcast %union.rtunion_def* %arrayidx5216 to %struct.rtx_def**
  %2684 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5218 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2684, i64 1
  store %struct.rtx_def** %rtx5217, %struct.rtx_def*** %arrayidx5218, align 8
  %2685 = load %struct.rtx_def*, %struct.rtx_def** %rtx5217, align 8
  %2686 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5219 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2686, i64 1
  store %struct.rtx_def* %2685, %struct.rtx_def** %arrayidx5219, align 8
  %2687 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2687, i32 0, i32 1
  %arrayidx5221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5220, i32 0, i64 0
  %rtvec5222 = bitcast %union.rtunion_def* %arrayidx5221 to %struct.rtvec_def**
  %2688 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5222, align 8
  %elem5223 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2688, i32 0, i32 1
  %arrayidx5224 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5223, i32 0, i64 0
  %2689 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5224, align 8
  %fld5225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2689, i32 0, i32 1
  %arrayidx5226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5225, i32 0, i64 1
  %rtx5227 = bitcast %union.rtunion_def* %arrayidx5226 to %struct.rtx_def**
  %2690 = load %struct.rtx_def*, %struct.rtx_def** %rtx5227, align 8
  %fld5228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2690, i32 0, i32 1
  %arrayidx5229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5228, i32 0, i64 1
  %rtx5230 = bitcast %union.rtunion_def* %arrayidx5229 to %struct.rtx_def**
  %2691 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5231 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2691, i64 2
  store %struct.rtx_def** %rtx5230, %struct.rtx_def*** %arrayidx5231, align 8
  %2692 = load %struct.rtx_def*, %struct.rtx_def** %rtx5230, align 8
  %2693 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5232 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2693, i64 2
  store %struct.rtx_def* %2692, %struct.rtx_def** %arrayidx5232, align 8
  br label %sw.epilog

sw.bb.5233:                                       ; preds = %entry, %entry
  %2694 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2694, i32 0, i32 1
  %arrayidx5235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5234, i32 0, i64 0
  %rtvec5236 = bitcast %union.rtunion_def* %arrayidx5235 to %struct.rtvec_def**
  %2695 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5236, align 8
  %elem5237 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2695, i32 0, i32 1
  %arrayidx5238 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5237, i32 0, i64 0
  %2696 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5238, align 8
  %fld5239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2696, i32 0, i32 1
  %arrayidx5240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5239, i32 0, i64 0
  %rtx5241 = bitcast %union.rtunion_def* %arrayidx5240 to %struct.rtx_def**
  %2697 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5242 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2697, i64 0
  store %struct.rtx_def** %rtx5241, %struct.rtx_def*** %arrayidx5242, align 8
  %2698 = load %struct.rtx_def*, %struct.rtx_def** %rtx5241, align 8
  %2699 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5243 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2699, i64 0
  store %struct.rtx_def* %2698, %struct.rtx_def** %arrayidx5243, align 8
  %2700 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2700, i32 0, i32 1
  %arrayidx5245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5244, i32 0, i64 0
  %rtvec5246 = bitcast %union.rtunion_def* %arrayidx5245 to %struct.rtvec_def**
  %2701 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5246, align 8
  %elem5247 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2701, i32 0, i32 1
  %arrayidx5248 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5247, i32 0, i64 0
  %2702 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5248, align 8
  %fld5249 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2702, i32 0, i32 1
  %arrayidx5250 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5249, i32 0, i64 1
  %rtx5251 = bitcast %union.rtunion_def* %arrayidx5250 to %struct.rtx_def**
  %2703 = load %struct.rtx_def*, %struct.rtx_def** %rtx5251, align 8
  %fld5252 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2703, i32 0, i32 1
  %arrayidx5253 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5252, i32 0, i64 0
  %rtx5254 = bitcast %union.rtunion_def* %arrayidx5253 to %struct.rtx_def**
  %2704 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5255 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2704, i64 1
  store %struct.rtx_def** %rtx5254, %struct.rtx_def*** %arrayidx5255, align 8
  %2705 = load %struct.rtx_def*, %struct.rtx_def** %rtx5254, align 8
  %2706 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5256 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2706, i64 1
  store %struct.rtx_def* %2705, %struct.rtx_def** %arrayidx5256, align 8
  %2707 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2707, i32 0, i32 1
  %arrayidx5258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5257, i32 0, i64 0
  %rtvec5259 = bitcast %union.rtunion_def* %arrayidx5258 to %struct.rtvec_def**
  %2708 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5259, align 8
  %elem5260 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2708, i32 0, i32 1
  %arrayidx5261 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5260, i32 0, i64 1
  %2709 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5261, align 8
  %fld5262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2709, i32 0, i32 1
  %arrayidx5263 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5262, i32 0, i64 0
  %rtx5264 = bitcast %union.rtunion_def* %arrayidx5263 to %struct.rtx_def**
  %2710 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5265 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2710, i64 2
  store %struct.rtx_def** %rtx5264, %struct.rtx_def*** %arrayidx5265, align 8
  %2711 = load %struct.rtx_def*, %struct.rtx_def** %rtx5264, align 8
  %2712 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5266 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2712, i64 2
  store %struct.rtx_def* %2711, %struct.rtx_def** %arrayidx5266, align 8
  %2713 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2713, i32 0, i32 1
  %arrayidx5268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5267, i32 0, i64 0
  %rtvec5269 = bitcast %union.rtunion_def* %arrayidx5268 to %struct.rtvec_def**
  %2714 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5269, align 8
  %elem5270 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2714, i32 0, i32 1
  %arrayidx5271 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5270, i32 0, i64 2
  %2715 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5271, align 8
  %fld5272 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2715, i32 0, i32 1
  %arrayidx5273 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5272, i32 0, i64 0
  %rtx5274 = bitcast %union.rtunion_def* %arrayidx5273 to %struct.rtx_def**
  %2716 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5275 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2716, i64 3
  store %struct.rtx_def** %rtx5274, %struct.rtx_def*** %arrayidx5275, align 8
  %2717 = load %struct.rtx_def*, %struct.rtx_def** %rtx5274, align 8
  %2718 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5276 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2718, i64 3
  store %struct.rtx_def* %2717, %struct.rtx_def** %arrayidx5276, align 8
  br label %sw.epilog

sw.bb.5277:                                       ; preds = %entry, %entry, %entry
  %2719 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5278 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2719, i32 0, i32 1
  %arrayidx5279 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5278, i32 0, i64 0
  %rtvec5280 = bitcast %union.rtunion_def* %arrayidx5279 to %struct.rtvec_def**
  %2720 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5280, align 8
  %elem5281 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2720, i32 0, i32 1
  %arrayidx5282 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5281, i32 0, i64 0
  %2721 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5282, align 8
  %fld5283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2721, i32 0, i32 1
  %arrayidx5284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5283, i32 0, i64 0
  %rtx5285 = bitcast %union.rtunion_def* %arrayidx5284 to %struct.rtx_def**
  %2722 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5286 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2722, i64 0
  store %struct.rtx_def** %rtx5285, %struct.rtx_def*** %arrayidx5286, align 8
  %2723 = load %struct.rtx_def*, %struct.rtx_def** %rtx5285, align 8
  %2724 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5287 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2724, i64 0
  store %struct.rtx_def* %2723, %struct.rtx_def** %arrayidx5287, align 8
  %2725 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2725, i32 0, i32 1
  %arrayidx5289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5288, i32 0, i64 0
  %rtvec5290 = bitcast %union.rtunion_def* %arrayidx5289 to %struct.rtvec_def**
  %2726 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5290, align 8
  %elem5291 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2726, i32 0, i32 1
  %arrayidx5292 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5291, i32 0, i64 0
  %2727 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5292, align 8
  %fld5293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2727, i32 0, i32 1
  %arrayidx5294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5293, i32 0, i64 1
  %rtx5295 = bitcast %union.rtunion_def* %arrayidx5294 to %struct.rtx_def**
  %2728 = load %struct.rtx_def*, %struct.rtx_def** %rtx5295, align 8
  %fld5296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2728, i32 0, i32 1
  %arrayidx5297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5296, i32 0, i64 0
  %rtx5298 = bitcast %union.rtunion_def* %arrayidx5297 to %struct.rtx_def**
  %2729 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5299 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2729, i64 1
  store %struct.rtx_def** %rtx5298, %struct.rtx_def*** %arrayidx5299, align 8
  %2730 = load %struct.rtx_def*, %struct.rtx_def** %rtx5298, align 8
  %2731 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5300 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2731, i64 1
  store %struct.rtx_def* %2730, %struct.rtx_def** %arrayidx5300, align 8
  %2732 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5301 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2732, i32 0, i32 1
  %arrayidx5302 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5301, i32 0, i64 0
  %rtvec5303 = bitcast %union.rtunion_def* %arrayidx5302 to %struct.rtvec_def**
  %2733 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5303, align 8
  %elem5304 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2733, i32 0, i32 1
  %arrayidx5305 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5304, i32 0, i64 1
  %2734 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5305, align 8
  %fld5306 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2734, i32 0, i32 1
  %arrayidx5307 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5306, i32 0, i64 0
  %rtx5308 = bitcast %union.rtunion_def* %arrayidx5307 to %struct.rtx_def**
  %2735 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5309 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2735, i64 2
  store %struct.rtx_def** %rtx5308, %struct.rtx_def*** %arrayidx5309, align 8
  %2736 = load %struct.rtx_def*, %struct.rtx_def** %rtx5308, align 8
  %2737 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5310 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2737, i64 2
  store %struct.rtx_def* %2736, %struct.rtx_def** %arrayidx5310, align 8
  %2738 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5311 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2738, i32 0, i32 1
  %arrayidx5312 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5311, i32 0, i64 0
  %rtvec5313 = bitcast %union.rtunion_def* %arrayidx5312 to %struct.rtvec_def**
  %2739 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5313, align 8
  %elem5314 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2739, i32 0, i32 1
  %arrayidx5315 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5314, i32 0, i64 2
  %2740 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5315, align 8
  %fld5316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2740, i32 0, i32 1
  %arrayidx5317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5316, i32 0, i64 0
  %rtx5318 = bitcast %union.rtunion_def* %arrayidx5317 to %struct.rtx_def**
  %2741 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5319 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2741, i64 3
  store %struct.rtx_def** %rtx5318, %struct.rtx_def*** %arrayidx5319, align 8
  %2742 = load %struct.rtx_def*, %struct.rtx_def** %rtx5318, align 8
  %2743 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5320 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2743, i64 3
  store %struct.rtx_def* %2742, %struct.rtx_def** %arrayidx5320, align 8
  %2744 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2744, i32 0, i32 1
  %arrayidx5322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5321, i32 0, i64 0
  %rtvec5323 = bitcast %union.rtunion_def* %arrayidx5322 to %struct.rtvec_def**
  %2745 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5323, align 8
  %elem5324 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2745, i32 0, i32 1
  %arrayidx5325 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5324, i32 0, i64 3
  %2746 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5325, align 8
  %fld5326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2746, i32 0, i32 1
  %arrayidx5327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5326, i32 0, i64 0
  %rtx5328 = bitcast %union.rtunion_def* %arrayidx5327 to %struct.rtx_def**
  %2747 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5329 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2747, i64 4
  store %struct.rtx_def** %rtx5328, %struct.rtx_def*** %arrayidx5329, align 8
  %2748 = load %struct.rtx_def*, %struct.rtx_def** %rtx5328, align 8
  %2749 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5330 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2749, i64 4
  store %struct.rtx_def* %2748, %struct.rtx_def** %arrayidx5330, align 8
  br label %sw.epilog

sw.bb.5331:                                       ; preds = %entry
  %2750 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5332 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2750, i32 0, i32 1
  %arrayidx5333 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5332, i32 0, i64 0
  %rtvec5334 = bitcast %union.rtunion_def* %arrayidx5333 to %struct.rtvec_def**
  %2751 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5334, align 8
  %elem5335 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2751, i32 0, i32 1
  %arrayidx5336 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5335, i32 0, i64 0
  %2752 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5336, align 8
  %fld5337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2752, i32 0, i32 1
  %arrayidx5338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5337, i32 0, i64 0
  %rtx5339 = bitcast %union.rtunion_def* %arrayidx5338 to %struct.rtx_def**
  %2753 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5340 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2753, i64 0
  store %struct.rtx_def** %rtx5339, %struct.rtx_def*** %arrayidx5340, align 8
  %2754 = load %struct.rtx_def*, %struct.rtx_def** %rtx5339, align 8
  %2755 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5341 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2755, i64 0
  store %struct.rtx_def* %2754, %struct.rtx_def** %arrayidx5341, align 8
  %2756 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2756, i32 0, i32 1
  %arrayidx5343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5342, i32 0, i64 0
  %rtvec5344 = bitcast %union.rtunion_def* %arrayidx5343 to %struct.rtvec_def**
  %2757 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5344, align 8
  %elem5345 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2757, i32 0, i32 1
  %arrayidx5346 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5345, i32 0, i64 0
  %2758 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5346, align 8
  %fld5347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2758, i32 0, i32 1
  %arrayidx5348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5347, i32 0, i64 1
  %rtx5349 = bitcast %union.rtunion_def* %arrayidx5348 to %struct.rtx_def**
  %2759 = load %struct.rtx_def*, %struct.rtx_def** %rtx5349, align 8
  %fld5350 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2759, i32 0, i32 1
  %arrayidx5351 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5350, i32 0, i64 0
  %rtx5352 = bitcast %union.rtunion_def* %arrayidx5351 to %struct.rtx_def**
  %2760 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5353 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2760, i64 1
  store %struct.rtx_def** %rtx5352, %struct.rtx_def*** %arrayidx5353, align 8
  %2761 = load %struct.rtx_def*, %struct.rtx_def** %rtx5352, align 8
  %2762 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5354 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2762, i64 1
  store %struct.rtx_def* %2761, %struct.rtx_def** %arrayidx5354, align 8
  %2763 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5355 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2763, i32 0, i32 1
  %arrayidx5356 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5355, i32 0, i64 0
  %rtvec5357 = bitcast %union.rtunion_def* %arrayidx5356 to %struct.rtvec_def**
  %2764 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5357, align 8
  %elem5358 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2764, i32 0, i32 1
  %arrayidx5359 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5358, i32 0, i64 1
  %2765 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5359, align 8
  %fld5360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2765, i32 0, i32 1
  %arrayidx5361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5360, i32 0, i64 0
  %rtx5362 = bitcast %union.rtunion_def* %arrayidx5361 to %struct.rtx_def**
  %2766 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5363 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2766, i64 2
  store %struct.rtx_def** %rtx5362, %struct.rtx_def*** %arrayidx5363, align 8
  %2767 = load %struct.rtx_def*, %struct.rtx_def** %rtx5362, align 8
  %2768 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5364 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2768, i64 2
  store %struct.rtx_def* %2767, %struct.rtx_def** %arrayidx5364, align 8
  %2769 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5365 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2769, i32 0, i32 1
  %arrayidx5366 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5365, i32 0, i64 0
  %rtvec5367 = bitcast %union.rtunion_def* %arrayidx5366 to %struct.rtvec_def**
  %2770 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5367, align 8
  %elem5368 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2770, i32 0, i32 1
  %arrayidx5369 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5368, i32 0, i64 2
  %2771 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5369, align 8
  %fld5370 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2771, i32 0, i32 1
  %arrayidx5371 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5370, i32 0, i64 0
  %rtx5372 = bitcast %union.rtunion_def* %arrayidx5371 to %struct.rtx_def**
  %2772 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5373 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2772, i64 3
  store %struct.rtx_def** %rtx5372, %struct.rtx_def*** %arrayidx5373, align 8
  %2773 = load %struct.rtx_def*, %struct.rtx_def** %rtx5372, align 8
  %2774 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5374 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2774, i64 3
  store %struct.rtx_def* %2773, %struct.rtx_def** %arrayidx5374, align 8
  %2775 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5375 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2775, i32 0, i32 1
  %arrayidx5376 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5375, i32 0, i64 0
  %rtvec5377 = bitcast %union.rtunion_def* %arrayidx5376 to %struct.rtvec_def**
  %2776 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5377, align 8
  %elem5378 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2776, i32 0, i32 1
  %arrayidx5379 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5378, i32 0, i64 3
  %2777 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5379, align 8
  %fld5380 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2777, i32 0, i32 1
  %arrayidx5381 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5380, i32 0, i64 0
  %rtx5382 = bitcast %union.rtunion_def* %arrayidx5381 to %struct.rtx_def**
  %2778 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5383 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2778, i64 4
  store %struct.rtx_def** %rtx5382, %struct.rtx_def*** %arrayidx5383, align 8
  %2779 = load %struct.rtx_def*, %struct.rtx_def** %rtx5382, align 8
  %2780 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5384 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2780, i64 4
  store %struct.rtx_def* %2779, %struct.rtx_def** %arrayidx5384, align 8
  %2781 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5385 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2781, i32 0, i32 1
  %arrayidx5386 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5385, i32 0, i64 0
  %rtvec5387 = bitcast %union.rtunion_def* %arrayidx5386 to %struct.rtvec_def**
  %2782 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5387, align 8
  %elem5388 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2782, i32 0, i32 1
  %arrayidx5389 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5388, i32 0, i64 4
  %2783 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5389, align 8
  %fld5390 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2783, i32 0, i32 1
  %arrayidx5391 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5390, i32 0, i64 0
  %rtx5392 = bitcast %union.rtunion_def* %arrayidx5391 to %struct.rtx_def**
  %2784 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5393 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2784, i64 5
  store %struct.rtx_def** %rtx5392, %struct.rtx_def*** %arrayidx5393, align 8
  %2785 = load %struct.rtx_def*, %struct.rtx_def** %rtx5392, align 8
  %2786 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5394 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2786, i64 5
  store %struct.rtx_def* %2785, %struct.rtx_def** %arrayidx5394, align 8
  br label %sw.epilog

sw.bb.5395:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2787 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5396 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2787, i32 0, i32 1
  %arrayidx5397 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5396, i32 0, i64 0
  %rtvec5398 = bitcast %union.rtunion_def* %arrayidx5397 to %struct.rtvec_def**
  %2788 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5398, align 8
  %elem5399 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2788, i32 0, i32 1
  %arrayidx5400 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5399, i32 0, i64 0
  %2789 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5400, align 8
  %fld5401 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2789, i32 0, i32 1
  %arrayidx5402 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5401, i32 0, i64 0
  %rtx5403 = bitcast %union.rtunion_def* %arrayidx5402 to %struct.rtx_def**
  %2790 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5404 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2790, i64 0
  store %struct.rtx_def** %rtx5403, %struct.rtx_def*** %arrayidx5404, align 8
  %2791 = load %struct.rtx_def*, %struct.rtx_def** %rtx5403, align 8
  %2792 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5405 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2792, i64 0
  store %struct.rtx_def* %2791, %struct.rtx_def** %arrayidx5405, align 8
  %2793 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5406 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2793, i32 0, i32 1
  %arrayidx5407 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5406, i32 0, i64 0
  %rtvec5408 = bitcast %union.rtunion_def* %arrayidx5407 to %struct.rtvec_def**
  %2794 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5408, align 8
  %elem5409 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2794, i32 0, i32 1
  %arrayidx5410 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5409, i32 0, i64 0
  %2795 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5410, align 8
  %fld5411 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2795, i32 0, i32 1
  %arrayidx5412 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5411, i32 0, i64 1
  %rtx5413 = bitcast %union.rtunion_def* %arrayidx5412 to %struct.rtx_def**
  %2796 = load %struct.rtx_def*, %struct.rtx_def** %rtx5413, align 8
  %fld5414 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2796, i32 0, i32 1
  %arrayidx5415 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5414, i32 0, i64 0
  %rtx5416 = bitcast %union.rtunion_def* %arrayidx5415 to %struct.rtx_def**
  %2797 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5417 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2797, i64 1
  store %struct.rtx_def** %rtx5416, %struct.rtx_def*** %arrayidx5417, align 8
  %2798 = load %struct.rtx_def*, %struct.rtx_def** %rtx5416, align 8
  %2799 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5418 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2799, i64 1
  store %struct.rtx_def* %2798, %struct.rtx_def** %arrayidx5418, align 8
  %2800 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5419 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2800, i32 0, i32 1
  %arrayidx5420 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5419, i32 0, i64 0
  %rtvec5421 = bitcast %union.rtunion_def* %arrayidx5420 to %struct.rtvec_def**
  %2801 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5421, align 8
  %elem5422 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2801, i32 0, i32 1
  %arrayidx5423 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5422, i32 0, i64 1
  %2802 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5423, align 8
  %fld5424 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2802, i32 0, i32 1
  %arrayidx5425 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5424, i32 0, i64 0
  %rtx5426 = bitcast %union.rtunion_def* %arrayidx5425 to %struct.rtx_def**
  %2803 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5427 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2803, i64 2
  store %struct.rtx_def** %rtx5426, %struct.rtx_def*** %arrayidx5427, align 8
  %2804 = load %struct.rtx_def*, %struct.rtx_def** %rtx5426, align 8
  %2805 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5428 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2805, i64 2
  store %struct.rtx_def* %2804, %struct.rtx_def** %arrayidx5428, align 8
  br label %sw.epilog

sw.bb.5429:                                       ; preds = %entry
  %2806 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5430 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2806, i32 0, i32 1
  %arrayidx5431 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5430, i32 0, i64 0
  %rtvec5432 = bitcast %union.rtunion_def* %arrayidx5431 to %struct.rtvec_def**
  %2807 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5432, align 8
  %elem5433 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2807, i32 0, i32 1
  %arrayidx5434 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5433, i32 0, i64 0
  %2808 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5434, align 8
  %fld5435 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2808, i32 0, i32 1
  %arrayidx5436 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5435, i32 0, i64 0
  %rtx5437 = bitcast %union.rtunion_def* %arrayidx5436 to %struct.rtx_def**
  %2809 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5438 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2809, i64 0
  store %struct.rtx_def** %rtx5437, %struct.rtx_def*** %arrayidx5438, align 8
  %2810 = load %struct.rtx_def*, %struct.rtx_def** %rtx5437, align 8
  %2811 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5439 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2811, i64 0
  store %struct.rtx_def* %2810, %struct.rtx_def** %arrayidx5439, align 8
  %2812 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5440 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2812, i32 0, i32 1
  %arrayidx5441 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5440, i32 0, i64 0
  %rtvec5442 = bitcast %union.rtunion_def* %arrayidx5441 to %struct.rtvec_def**
  %2813 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5442, align 8
  %elem5443 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2813, i32 0, i32 1
  %arrayidx5444 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5443, i32 0, i64 0
  %2814 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5444, align 8
  %fld5445 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2814, i32 0, i32 1
  %arrayidx5446 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5445, i32 0, i64 1
  %rtx5447 = bitcast %union.rtunion_def* %arrayidx5446 to %struct.rtx_def**
  %2815 = load %struct.rtx_def*, %struct.rtx_def** %rtx5447, align 8
  %fld5448 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2815, i32 0, i32 1
  %arrayidx5449 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5448, i32 0, i64 0
  %rtx5450 = bitcast %union.rtunion_def* %arrayidx5449 to %struct.rtx_def**
  %2816 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5451 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2816, i64 1
  store %struct.rtx_def** %rtx5450, %struct.rtx_def*** %arrayidx5451, align 8
  %2817 = load %struct.rtx_def*, %struct.rtx_def** %rtx5450, align 8
  %2818 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5452 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2818, i64 1
  store %struct.rtx_def* %2817, %struct.rtx_def** %arrayidx5452, align 8
  %2819 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5453 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2819, i32 0, i32 1
  %arrayidx5454 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5453, i32 0, i64 0
  %rtvec5455 = bitcast %union.rtunion_def* %arrayidx5454 to %struct.rtvec_def**
  %2820 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5455, align 8
  %elem5456 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2820, i32 0, i32 1
  %arrayidx5457 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5456, i32 0, i64 2
  %2821 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5457, align 8
  %fld5458 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2821, i32 0, i32 1
  %arrayidx5459 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5458, i32 0, i64 0
  %rtx5460 = bitcast %union.rtunion_def* %arrayidx5459 to %struct.rtx_def**
  %2822 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5461 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2822, i64 2
  store %struct.rtx_def** %rtx5460, %struct.rtx_def*** %arrayidx5461, align 8
  %2823 = load %struct.rtx_def*, %struct.rtx_def** %rtx5460, align 8
  %2824 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5462 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2824, i64 2
  store %struct.rtx_def* %2823, %struct.rtx_def** %arrayidx5462, align 8
  br label %sw.epilog

sw.bb.5463:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2825 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5464 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2825, i32 0, i32 1
  %arrayidx5465 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5464, i32 0, i64 0
  %rtvec5466 = bitcast %union.rtunion_def* %arrayidx5465 to %struct.rtvec_def**
  %2826 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5466, align 8
  %elem5467 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2826, i32 0, i32 1
  %arrayidx5468 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5467, i32 0, i64 0
  %2827 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5468, align 8
  %fld5469 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2827, i32 0, i32 1
  %arrayidx5470 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5469, i32 0, i64 0
  %rtx5471 = bitcast %union.rtunion_def* %arrayidx5470 to %struct.rtx_def**
  %2828 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5472 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2828, i64 0
  store %struct.rtx_def** %rtx5471, %struct.rtx_def*** %arrayidx5472, align 8
  %2829 = load %struct.rtx_def*, %struct.rtx_def** %rtx5471, align 8
  %2830 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5473 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2830, i64 0
  store %struct.rtx_def* %2829, %struct.rtx_def** %arrayidx5473, align 8
  %2831 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5474 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2831, i32 0, i32 1
  %arrayidx5475 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5474, i32 0, i64 0
  %rtvec5476 = bitcast %union.rtunion_def* %arrayidx5475 to %struct.rtvec_def**
  %2832 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5476, align 8
  %elem5477 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2832, i32 0, i32 1
  %arrayidx5478 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5477, i32 0, i64 0
  %2833 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5478, align 8
  %fld5479 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2833, i32 0, i32 1
  %arrayidx5480 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5479, i32 0, i64 1
  %rtx5481 = bitcast %union.rtunion_def* %arrayidx5480 to %struct.rtx_def**
  %2834 = load %struct.rtx_def*, %struct.rtx_def** %rtx5481, align 8
  %fld5482 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2834, i32 0, i32 1
  %arrayidx5483 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5482, i32 0, i64 0
  %rtx5484 = bitcast %union.rtunion_def* %arrayidx5483 to %struct.rtx_def**
  %2835 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5485 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2835, i64 1
  store %struct.rtx_def** %rtx5484, %struct.rtx_def*** %arrayidx5485, align 8
  %2836 = load %struct.rtx_def*, %struct.rtx_def** %rtx5484, align 8
  %2837 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5486 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2837, i64 1
  store %struct.rtx_def* %2836, %struct.rtx_def** %arrayidx5486, align 8
  br label %sw.epilog

sw.bb.5487:                                       ; preds = %entry
  %2838 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5488 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2838, i32 0, i32 1
  %arrayidx5489 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5488, i32 0, i64 0
  %rtx5490 = bitcast %union.rtunion_def* %arrayidx5489 to %struct.rtx_def**
  %2839 = load %struct.rtx_def*, %struct.rtx_def** %rtx5490, align 8
  %fld5491 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2839, i32 0, i32 1
  %arrayidx5492 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5491, i32 0, i64 0
  %rtx5493 = bitcast %union.rtunion_def* %arrayidx5492 to %struct.rtx_def**
  %2840 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5494 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2840, i64 0
  store %struct.rtx_def** %rtx5493, %struct.rtx_def*** %arrayidx5494, align 8
  %2841 = load %struct.rtx_def*, %struct.rtx_def** %rtx5493, align 8
  %2842 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5495 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2842, i64 0
  store %struct.rtx_def* %2841, %struct.rtx_def** %arrayidx5495, align 8
  %2843 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5496 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2843, i32 0, i32 1
  %arrayidx5497 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5496, i32 0, i64 1
  %rtx5498 = bitcast %union.rtunion_def* %arrayidx5497 to %struct.rtx_def**
  %2844 = load %struct.rtx_def*, %struct.rtx_def** %rtx5498, align 8
  %fld5499 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2844, i32 0, i32 1
  %arrayidx5500 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5499, i32 0, i64 0
  %rtx5501 = bitcast %union.rtunion_def* %arrayidx5500 to %struct.rtx_def**
  %2845 = load %struct.rtx_def*, %struct.rtx_def** %rtx5501, align 8
  %fld5502 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2845, i32 0, i32 1
  %arrayidx5503 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5502, i32 0, i64 0
  %rtx5504 = bitcast %union.rtunion_def* %arrayidx5503 to %struct.rtx_def**
  %2846 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5505 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2846, i64 1
  store %struct.rtx_def** %rtx5504, %struct.rtx_def*** %arrayidx5505, align 8
  %2847 = load %struct.rtx_def*, %struct.rtx_def** %rtx5504, align 8
  %2848 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5506 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2848, i64 1
  store %struct.rtx_def* %2847, %struct.rtx_def** %arrayidx5506, align 8
  br label %sw.epilog

sw.bb.5507:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2849 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5508 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2849, i32 0, i32 1
  %arrayidx5509 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5508, i32 0, i64 0
  %rtx5510 = bitcast %union.rtunion_def* %arrayidx5509 to %struct.rtx_def**
  %2850 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5511 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2850, i64 0
  store %struct.rtx_def** %rtx5510, %struct.rtx_def*** %arrayidx5511, align 8
  %2851 = load %struct.rtx_def*, %struct.rtx_def** %rtx5510, align 8
  %2852 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5512 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2852, i64 0
  store %struct.rtx_def* %2851, %struct.rtx_def** %arrayidx5512, align 8
  %2853 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5513 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2853, i32 0, i32 1
  %arrayidx5514 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5513, i32 0, i64 1
  %rtx5515 = bitcast %union.rtunion_def* %arrayidx5514 to %struct.rtx_def**
  %2854 = load %struct.rtx_def*, %struct.rtx_def** %rtx5515, align 8
  %fld5516 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2854, i32 0, i32 1
  %arrayidx5517 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5516, i32 0, i64 0
  %rtx5518 = bitcast %union.rtunion_def* %arrayidx5517 to %struct.rtx_def**
  %2855 = load %struct.rtx_def*, %struct.rtx_def** %rtx5518, align 8
  %fld5519 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2855, i32 0, i32 1
  %arrayidx5520 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5519, i32 0, i64 0
  %rtx5521 = bitcast %union.rtunion_def* %arrayidx5520 to %struct.rtx_def**
  %2856 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5522 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2856, i64 1
  store %struct.rtx_def** %rtx5521, %struct.rtx_def*** %arrayidx5522, align 8
  %2857 = load %struct.rtx_def*, %struct.rtx_def** %rtx5521, align 8
  %2858 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5523 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2858, i64 1
  store %struct.rtx_def* %2857, %struct.rtx_def** %arrayidx5523, align 8
  br label %sw.epilog

sw.bb.5524:                                       ; preds = %entry, %entry
  %2859 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5525 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2859, i32 0, i32 1
  %arrayidx5526 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5525, i32 0, i64 0
  %rtvec5527 = bitcast %union.rtunion_def* %arrayidx5526 to %struct.rtvec_def**
  %2860 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5527, align 8
  %elem5528 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2860, i32 0, i32 1
  %arrayidx5529 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5528, i32 0, i64 0
  %2861 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5529, align 8
  %fld5530 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2861, i32 0, i32 1
  %arrayidx5531 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5530, i32 0, i64 0
  %rtx5532 = bitcast %union.rtunion_def* %arrayidx5531 to %struct.rtx_def**
  %2862 = load %struct.rtx_def*, %struct.rtx_def** %rtx5532, align 8
  %fld5533 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2862, i32 0, i32 1
  %arrayidx5534 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5533, i32 0, i64 0
  %rtx5535 = bitcast %union.rtunion_def* %arrayidx5534 to %struct.rtx_def**
  %2863 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5536 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2863, i64 0
  store %struct.rtx_def** %rtx5535, %struct.rtx_def*** %arrayidx5536, align 8
  %2864 = load %struct.rtx_def*, %struct.rtx_def** %rtx5535, align 8
  %2865 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5537 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2865, i64 0
  store %struct.rtx_def* %2864, %struct.rtx_def** %arrayidx5537, align 8
  %2866 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5538 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2866, i32 0, i32 1
  %arrayidx5539 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5538, i32 0, i64 0
  %rtvec5540 = bitcast %union.rtunion_def* %arrayidx5539 to %struct.rtvec_def**
  %2867 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5540, align 8
  %elem5541 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2867, i32 0, i32 1
  %arrayidx5542 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5541, i32 0, i64 0
  %2868 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5542, align 8
  %fld5543 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2868, i32 0, i32 1
  %arrayidx5544 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5543, i32 0, i64 1
  %rtx5545 = bitcast %union.rtunion_def* %arrayidx5544 to %struct.rtx_def**
  %2869 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5546 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2869, i64 1
  store %struct.rtx_def** %rtx5545, %struct.rtx_def*** %arrayidx5546, align 8
  %2870 = load %struct.rtx_def*, %struct.rtx_def** %rtx5545, align 8
  %2871 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5547 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2871, i64 1
  store %struct.rtx_def* %2870, %struct.rtx_def** %arrayidx5547, align 8
  br label %sw.epilog

sw.bb.5548:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2872 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5549 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2872, i32 0, i32 1
  %arrayidx5550 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5549, i32 0, i64 0
  %rtvec5551 = bitcast %union.rtunion_def* %arrayidx5550 to %struct.rtvec_def**
  %2873 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5551, align 8
  %elem5552 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2873, i32 0, i32 1
  %arrayidx5553 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5552, i32 0, i64 0
  %2874 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5553, align 8
  %fld5554 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2874, i32 0, i32 1
  %arrayidx5555 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5554, i32 0, i64 0
  %rtx5556 = bitcast %union.rtunion_def* %arrayidx5555 to %struct.rtx_def**
  %2875 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5557 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2875, i64 0
  store %struct.rtx_def** %rtx5556, %struct.rtx_def*** %arrayidx5557, align 8
  %2876 = load %struct.rtx_def*, %struct.rtx_def** %rtx5556, align 8
  %2877 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5558 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2877, i64 0
  store %struct.rtx_def* %2876, %struct.rtx_def** %arrayidx5558, align 8
  %2878 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5559 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2878, i32 0, i32 1
  %arrayidx5560 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5559, i32 0, i64 0
  %rtvec5561 = bitcast %union.rtunion_def* %arrayidx5560 to %struct.rtvec_def**
  %2879 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5561, align 8
  %elem5562 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2879, i32 0, i32 1
  %arrayidx5563 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5562, i32 0, i64 0
  %2880 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5563, align 8
  %fld5564 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2880, i32 0, i32 1
  %arrayidx5565 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5564, i32 0, i64 1
  %rtx5566 = bitcast %union.rtunion_def* %arrayidx5565 to %struct.rtx_def**
  %2881 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5567 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2881, i64 1
  store %struct.rtx_def** %rtx5566, %struct.rtx_def*** %arrayidx5567, align 8
  %2882 = load %struct.rtx_def*, %struct.rtx_def** %rtx5566, align 8
  %2883 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5568 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2883, i64 1
  store %struct.rtx_def* %2882, %struct.rtx_def** %arrayidx5568, align 8
  %2884 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5569 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2884, i32 0, i32 1
  %arrayidx5570 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5569, i32 0, i64 0
  %rtvec5571 = bitcast %union.rtunion_def* %arrayidx5570 to %struct.rtvec_def**
  %2885 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5571, align 8
  %elem5572 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2885, i32 0, i32 1
  %arrayidx5573 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5572, i32 0, i64 1
  %2886 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5573, align 8
  %fld5574 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2886, i32 0, i32 1
  %arrayidx5575 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5574, i32 0, i64 0
  %rtx5576 = bitcast %union.rtunion_def* %arrayidx5575 to %struct.rtx_def**
  store %struct.rtx_def** %rtx5576, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 0), align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 0), align 1
  %2887 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5577 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2887, i32 0, i32 1
  %arrayidx5578 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5577, i32 0, i64 0
  %rtvec5579 = bitcast %union.rtunion_def* %arrayidx5578 to %struct.rtvec_def**
  %2888 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5579, align 8
  %elem5580 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2888, i32 0, i32 1
  %arrayidx5581 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5580, i32 0, i64 1
  %2889 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5581, align 8
  %fld5582 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2889, i32 0, i32 1
  %arrayidx5583 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5582, i32 0, i64 1
  %rtx5584 = bitcast %union.rtunion_def* %arrayidx5583 to %struct.rtx_def**
  store %struct.rtx_def** %rtx5584, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5, i64 1), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6, i64 1), align 1
  br label %sw.epilog

sw.bb.5585:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2890 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5586 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2890, i32 0, i32 1
  %arrayidx5587 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5586, i32 0, i64 0
  %rtx5588 = bitcast %union.rtunion_def* %arrayidx5587 to %struct.rtx_def**
  %2891 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5589 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2891, i64 0
  store %struct.rtx_def** %rtx5588, %struct.rtx_def*** %arrayidx5589, align 8
  %2892 = load %struct.rtx_def*, %struct.rtx_def** %rtx5588, align 8
  %2893 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5590 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2893, i64 0
  store %struct.rtx_def* %2892, %struct.rtx_def** %arrayidx5590, align 8
  %2894 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5591 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2894, i32 0, i32 1
  %arrayidx5592 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5591, i32 0, i64 1
  %rtx5593 = bitcast %union.rtunion_def* %arrayidx5592 to %struct.rtx_def**
  %2895 = load %struct.rtx_def*, %struct.rtx_def** %rtx5593, align 8
  %fld5594 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2895, i32 0, i32 1
  %arrayidx5595 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5594, i32 0, i64 0
  %rtx5596 = bitcast %union.rtunion_def* %arrayidx5595 to %struct.rtx_def**
  %2896 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5597 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2896, i64 1
  store %struct.rtx_def** %rtx5596, %struct.rtx_def*** %arrayidx5597, align 8
  %2897 = load %struct.rtx_def*, %struct.rtx_def** %rtx5596, align 8
  %2898 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5598 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2898, i64 1
  store %struct.rtx_def* %2897, %struct.rtx_def** %arrayidx5598, align 8
  br label %sw.epilog

sw.bb.5599:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2899 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5600 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2899, i32 0, i32 1
  %arrayidx5601 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5600, i32 0, i64 0
  %rtx5602 = bitcast %union.rtunion_def* %arrayidx5601 to %struct.rtx_def**
  %2900 = load %struct.rtx_def*, %struct.rtx_def** %rtx5602, align 8
  %fld5603 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2900, i32 0, i32 1
  %arrayidx5604 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5603, i32 0, i64 0
  %rtx5605 = bitcast %union.rtunion_def* %arrayidx5604 to %struct.rtx_def**
  %2901 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5606 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2901, i64 0
  store %struct.rtx_def** %rtx5605, %struct.rtx_def*** %arrayidx5606, align 8
  %2902 = load %struct.rtx_def*, %struct.rtx_def** %rtx5605, align 8
  %2903 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5607 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2903, i64 0
  store %struct.rtx_def* %2902, %struct.rtx_def** %arrayidx5607, align 8
  %2904 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5608 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2904, i32 0, i32 1
  %arrayidx5609 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5608, i32 0, i64 1
  %rtx5610 = bitcast %union.rtunion_def* %arrayidx5609 to %struct.rtx_def**
  %2905 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5611 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2905, i64 1
  store %struct.rtx_def** %rtx5610, %struct.rtx_def*** %arrayidx5611, align 8
  %2906 = load %struct.rtx_def*, %struct.rtx_def** %rtx5610, align 8
  %2907 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5612 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2907, i64 1
  store %struct.rtx_def* %2906, %struct.rtx_def** %arrayidx5612, align 8
  br label %sw.epilog

sw.bb.5613:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %2908 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5614 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2908, i32 0, i32 1
  %arrayidx5615 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5614, i32 0, i64 0
  %rtvec5616 = bitcast %union.rtunion_def* %arrayidx5615 to %struct.rtvec_def**
  %2909 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5616, align 8
  %elem5617 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2909, i32 0, i32 1
  %arrayidx5618 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5617, i32 0, i64 0
  %2910 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5618, align 8
  %fld5619 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2910, i32 0, i32 1
  %arrayidx5620 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5619, i32 0, i64 0
  %rtx5621 = bitcast %union.rtunion_def* %arrayidx5620 to %struct.rtx_def**
  %2911 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5622 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2911, i64 0
  store %struct.rtx_def** %rtx5621, %struct.rtx_def*** %arrayidx5622, align 8
  %2912 = load %struct.rtx_def*, %struct.rtx_def** %rtx5621, align 8
  %2913 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5623 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2913, i64 0
  store %struct.rtx_def* %2912, %struct.rtx_def** %arrayidx5623, align 8
  br label %sw.epilog

sw.bb.5624:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %2914 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5625 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2914, i32 0, i32 1
  %arrayidx5626 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5625, i32 0, i64 0
  %rtvec5627 = bitcast %union.rtunion_def* %arrayidx5626 to %struct.rtvec_def**
  %2915 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5627, align 8
  %elem5628 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2915, i32 0, i32 1
  %arrayidx5629 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5628, i32 0, i64 0
  %2916 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5629, align 8
  %fld5630 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2916, i32 0, i32 1
  %arrayidx5631 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5630, i32 0, i64 0
  %rtx5632 = bitcast %union.rtunion_def* %arrayidx5631 to %struct.rtx_def**
  %2917 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5633 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2917, i64 0
  store %struct.rtx_def** %rtx5632, %struct.rtx_def*** %arrayidx5633, align 8
  %2918 = load %struct.rtx_def*, %struct.rtx_def** %rtx5632, align 8
  %2919 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5634 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2919, i64 0
  store %struct.rtx_def* %2918, %struct.rtx_def** %arrayidx5634, align 8
  %2920 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5635 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2920, i32 0, i32 1
  %arrayidx5636 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5635, i32 0, i64 0
  %rtvec5637 = bitcast %union.rtunion_def* %arrayidx5636 to %struct.rtvec_def**
  %2921 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5637, align 8
  %elem5638 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2921, i32 0, i32 1
  %arrayidx5639 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5638, i32 0, i64 0
  %2922 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5639, align 8
  %fld5640 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2922, i32 0, i32 1
  %arrayidx5641 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5640, i32 0, i64 1
  %rtx5642 = bitcast %union.rtunion_def* %arrayidx5641 to %struct.rtx_def**
  %2923 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5643 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2923, i64 1
  store %struct.rtx_def** %rtx5642, %struct.rtx_def*** %arrayidx5643, align 8
  %2924 = load %struct.rtx_def*, %struct.rtx_def** %rtx5642, align 8
  %2925 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5644 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2925, i64 1
  store %struct.rtx_def* %2924, %struct.rtx_def** %arrayidx5644, align 8
  br label %sw.epilog

sw.bb.5645:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2926 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5646 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2926, i32 0, i32 1
  %arrayidx5647 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5646, i32 0, i64 0
  %rtx5648 = bitcast %union.rtunion_def* %arrayidx5647 to %struct.rtx_def**
  %2927 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5649 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2927, i64 0
  store %struct.rtx_def** %rtx5648, %struct.rtx_def*** %arrayidx5649, align 8
  %2928 = load %struct.rtx_def*, %struct.rtx_def** %rtx5648, align 8
  %2929 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5650 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2929, i64 0
  store %struct.rtx_def* %2928, %struct.rtx_def** %arrayidx5650, align 8
  %2930 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5651 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2930, i32 0, i32 1
  %arrayidx5652 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5651, i32 0, i64 1
  %rtx5653 = bitcast %union.rtunion_def* %arrayidx5652 to %struct.rtx_def**
  %2931 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5654 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2931, i64 1
  store %struct.rtx_def** %rtx5653, %struct.rtx_def*** %arrayidx5654, align 8
  %2932 = load %struct.rtx_def*, %struct.rtx_def** %rtx5653, align 8
  %2933 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5655 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2933, i64 1
  store %struct.rtx_def* %2932, %struct.rtx_def** %arrayidx5655, align 8
  br label %sw.epilog

sw.bb.5656:                                       ; preds = %entry, %entry
  %2934 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5657 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2934, i32 0, i32 1
  %arrayidx5658 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5657, i32 0, i64 1
  %rtx5659 = bitcast %union.rtunion_def* %arrayidx5658 to %struct.rtx_def**
  %2935 = load %struct.rtx_def*, %struct.rtx_def** %rtx5659, align 8
  %fld5660 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2935, i32 0, i32 1
  %arrayidx5661 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5660, i32 0, i64 0
  %rtvec5662 = bitcast %union.rtunion_def* %arrayidx5661 to %struct.rtvec_def**
  %2936 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5662, align 8
  %elem5663 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2936, i32 0, i32 1
  %arrayidx5664 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5663, i32 0, i64 0
  %2937 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5665 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2937, i64 0
  store %struct.rtx_def** %arrayidx5664, %struct.rtx_def*** %arrayidx5665, align 8
  %2938 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5664, align 8
  %2939 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5666 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2939, i64 0
  store %struct.rtx_def* %2938, %struct.rtx_def** %arrayidx5666, align 8
  br label %sw.epilog

sw.bb.5667:                                       ; preds = %entry, %entry, %entry, %entry, %entry
  %2940 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5668 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2940, i32 0, i32 1
  %arrayidx5669 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5668, i32 0, i64 0
  %rtx5670 = bitcast %union.rtunion_def* %arrayidx5669 to %struct.rtx_def**
  %2941 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5671 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2941, i64 0
  store %struct.rtx_def** %rtx5670, %struct.rtx_def*** %arrayidx5671, align 8
  %2942 = load %struct.rtx_def*, %struct.rtx_def** %rtx5670, align 8
  %2943 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5672 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2943, i64 0
  store %struct.rtx_def* %2942, %struct.rtx_def** %arrayidx5672, align 8
  br label %sw.epilog

sw.bb.5673:                                       ; preds = %entry
  %2944 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5674 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2944, i32 0, i32 1
  %arrayidx5675 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5674, i32 0, i64 1
  %rtx5676 = bitcast %union.rtunion_def* %arrayidx5675 to %struct.rtx_def**
  %2945 = load %struct.rtx_def*, %struct.rtx_def** %rtx5676, align 8
  %fld5677 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2945, i32 0, i32 1
  %arrayidx5678 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5677, i32 0, i64 0
  %rtx5679 = bitcast %union.rtunion_def* %arrayidx5678 to %struct.rtx_def**
  %2946 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5680 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2946, i64 0
  store %struct.rtx_def** %rtx5679, %struct.rtx_def*** %arrayidx5680, align 8
  %2947 = load %struct.rtx_def*, %struct.rtx_def** %rtx5679, align 8
  %2948 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5681 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2948, i64 0
  store %struct.rtx_def* %2947, %struct.rtx_def** %arrayidx5681, align 8
  %2949 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5682 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2949, i32 0, i32 1
  %arrayidx5683 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5682, i32 0, i64 1
  %rtx5684 = bitcast %union.rtunion_def* %arrayidx5683 to %struct.rtx_def**
  %2950 = load %struct.rtx_def*, %struct.rtx_def** %rtx5684, align 8
  %fld5685 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2950, i32 0, i32 1
  %arrayidx5686 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5685, i32 0, i64 1
  %rtx5687 = bitcast %union.rtunion_def* %arrayidx5686 to %struct.rtx_def**
  %2951 = load %struct.rtx_def*, %struct.rtx_def** %rtx5687, align 8
  %fld5688 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2951, i32 0, i32 1
  %arrayidx5689 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5688, i32 0, i64 0
  %rtx5690 = bitcast %union.rtunion_def* %arrayidx5689 to %struct.rtx_def**
  %2952 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5691 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2952, i64 1
  store %struct.rtx_def** %rtx5690, %struct.rtx_def*** %arrayidx5691, align 8
  %2953 = load %struct.rtx_def*, %struct.rtx_def** %rtx5690, align 8
  %2954 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5692 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2954, i64 1
  store %struct.rtx_def* %2953, %struct.rtx_def** %arrayidx5692, align 8
  br label %sw.epilog

sw.bb.5693:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %2955 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5694 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2955, i32 0, i32 1
  %arrayidx5695 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5694, i32 0, i64 0
  %rtx5696 = bitcast %union.rtunion_def* %arrayidx5695 to %struct.rtx_def**
  %2956 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5697 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2956, i64 0
  store %struct.rtx_def** %rtx5696, %struct.rtx_def*** %arrayidx5697, align 8
  %2957 = load %struct.rtx_def*, %struct.rtx_def** %rtx5696, align 8
  %2958 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5698 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2958, i64 0
  store %struct.rtx_def* %2957, %struct.rtx_def** %arrayidx5698, align 8
  %2959 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5699 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2959, i32 0, i32 1
  %arrayidx5700 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5699, i32 0, i64 1
  %rtx5701 = bitcast %union.rtunion_def* %arrayidx5700 to %struct.rtx_def**
  %2960 = load %struct.rtx_def*, %struct.rtx_def** %rtx5701, align 8
  %fld5702 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2960, i32 0, i32 1
  %arrayidx5703 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5702, i32 0, i64 0
  %rtvec5704 = bitcast %union.rtunion_def* %arrayidx5703 to %struct.rtvec_def**
  %2961 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5704, align 8
  %elem5705 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2961, i32 0, i32 1
  %arrayidx5706 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5705, i32 0, i64 0
  %2962 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5706, align 8
  %fld5707 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2962, i32 0, i32 1
  %arrayidx5708 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5707, i32 0, i64 0
  %rtx5709 = bitcast %union.rtunion_def* %arrayidx5708 to %struct.rtx_def**
  %2963 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5710 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2963, i64 1
  store %struct.rtx_def** %rtx5709, %struct.rtx_def*** %arrayidx5710, align 8
  %2964 = load %struct.rtx_def*, %struct.rtx_def** %rtx5709, align 8
  %2965 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5711 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2965, i64 1
  store %struct.rtx_def* %2964, %struct.rtx_def** %arrayidx5711, align 8
  %2966 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5712 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2966, i32 0, i32 1
  %arrayidx5713 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5712, i32 0, i64 1
  %rtx5714 = bitcast %union.rtunion_def* %arrayidx5713 to %struct.rtx_def**
  %2967 = load %struct.rtx_def*, %struct.rtx_def** %rtx5714, align 8
  %fld5715 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2967, i32 0, i32 1
  %arrayidx5716 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5715, i32 0, i64 0
  %rtvec5717 = bitcast %union.rtunion_def* %arrayidx5716 to %struct.rtvec_def**
  %2968 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec5717, align 8
  %elem5718 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %2968, i32 0, i32 1
  %arrayidx5719 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem5718, i32 0, i64 0
  %2969 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5719, align 8
  %fld5720 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2969, i32 0, i32 1
  %arrayidx5721 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5720, i32 0, i64 1
  %rtx5722 = bitcast %union.rtunion_def* %arrayidx5721 to %struct.rtx_def**
  %2970 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5723 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2970, i64 2
  store %struct.rtx_def** %rtx5722, %struct.rtx_def*** %arrayidx5723, align 8
  %2971 = load %struct.rtx_def*, %struct.rtx_def** %rtx5722, align 8
  %2972 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5724 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2972, i64 2
  store %struct.rtx_def* %2971, %struct.rtx_def** %arrayidx5724, align 8
  br label %sw.epilog

sw.bb.5725:                                       ; preds = %entry
  %2973 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5726 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2973, i32 0, i32 1
  %arrayidx5727 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5726, i32 0, i64 1
  %rtx5728 = bitcast %union.rtunion_def* %arrayidx5727 to %struct.rtx_def**
  %2974 = load %struct.rtx_def*, %struct.rtx_def** %rtx5728, align 8
  %fld5729 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2974, i32 0, i32 1
  %arrayidx5730 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5729, i32 0, i64 0
  %rtx5731 = bitcast %union.rtunion_def* %arrayidx5730 to %struct.rtx_def**
  %2975 = load %struct.rtx_def*, %struct.rtx_def** %rtx5731, align 8
  %fld5732 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2975, i32 0, i32 1
  %arrayidx5733 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5732, i32 0, i64 0
  %rtx5734 = bitcast %union.rtunion_def* %arrayidx5733 to %struct.rtx_def**
  %2976 = load %struct.rtx_def*, %struct.rtx_def** %rtx5734, align 8
  %fld5735 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2976, i32 0, i32 1
  %arrayidx5736 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5735, i32 0, i64 0
  %rtx5737 = bitcast %union.rtunion_def* %arrayidx5736 to %struct.rtx_def**
  %2977 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5738 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2977, i64 0
  store %struct.rtx_def** %rtx5737, %struct.rtx_def*** %arrayidx5738, align 8
  %2978 = load %struct.rtx_def*, %struct.rtx_def** %rtx5737, align 8
  %2979 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5739 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2979, i64 0
  store %struct.rtx_def* %2978, %struct.rtx_def** %arrayidx5739, align 8
  %2980 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5740 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2980, i32 0, i32 1
  %arrayidx5741 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5740, i32 0, i64 1
  %rtx5742 = bitcast %union.rtunion_def* %arrayidx5741 to %struct.rtx_def**
  %2981 = load %struct.rtx_def*, %struct.rtx_def** %rtx5742, align 8
  %fld5743 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2981, i32 0, i32 1
  %arrayidx5744 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5743, i32 0, i64 1
  %rtx5745 = bitcast %union.rtunion_def* %arrayidx5744 to %struct.rtx_def**
  %2982 = load %struct.rtx_def*, %struct.rtx_def** %rtx5745, align 8
  %fld5746 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2982, i32 0, i32 1
  %arrayidx5747 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5746, i32 0, i64 0
  %rtx5748 = bitcast %union.rtunion_def* %arrayidx5747 to %struct.rtx_def**
  %2983 = load %struct.rtx_def*, %struct.rtx_def** %rtx5748, align 8
  %fld5749 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2983, i32 0, i32 1
  %arrayidx5750 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5749, i32 0, i64 0
  %rtx5751 = bitcast %union.rtunion_def* %arrayidx5750 to %struct.rtx_def**
  %2984 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5752 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2984, i64 1
  store %struct.rtx_def** %rtx5751, %struct.rtx_def*** %arrayidx5752, align 8
  %2985 = load %struct.rtx_def*, %struct.rtx_def** %rtx5751, align 8
  %2986 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5753 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2986, i64 1
  store %struct.rtx_def* %2985, %struct.rtx_def** %arrayidx5753, align 8
  br label %sw.epilog

sw.bb.5754:                                       ; preds = %entry, %entry, %entry
  %2987 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5755 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2987, i32 0, i32 1
  %arrayidx5756 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5755, i32 0, i64 1
  %rtx5757 = bitcast %union.rtunion_def* %arrayidx5756 to %struct.rtx_def**
  %2988 = load %struct.rtx_def*, %struct.rtx_def** %rtx5757, align 8
  %fld5758 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2988, i32 0, i32 1
  %arrayidx5759 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5758, i32 0, i64 0
  %rtx5760 = bitcast %union.rtunion_def* %arrayidx5759 to %struct.rtx_def**
  %2989 = load %struct.rtx_def*, %struct.rtx_def** %rtx5760, align 8
  %fld5761 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2989, i32 0, i32 1
  %arrayidx5762 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5761, i32 0, i64 0
  %rtx5763 = bitcast %union.rtunion_def* %arrayidx5762 to %struct.rtx_def**
  %2990 = load %struct.rtx_def*, %struct.rtx_def** %rtx5763, align 8
  %fld5764 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2990, i32 0, i32 1
  %arrayidx5765 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5764, i32 0, i64 0
  %rtx5766 = bitcast %union.rtunion_def* %arrayidx5765 to %struct.rtx_def**
  %2991 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5767 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2991, i64 0
  store %struct.rtx_def** %rtx5766, %struct.rtx_def*** %arrayidx5767, align 8
  %2992 = load %struct.rtx_def*, %struct.rtx_def** %rtx5766, align 8
  %2993 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5768 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2993, i64 0
  store %struct.rtx_def* %2992, %struct.rtx_def** %arrayidx5768, align 8
  %2994 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5769 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2994, i32 0, i32 1
  %arrayidx5770 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5769, i32 0, i64 1
  %rtx5771 = bitcast %union.rtunion_def* %arrayidx5770 to %struct.rtx_def**
  %2995 = load %struct.rtx_def*, %struct.rtx_def** %rtx5771, align 8
  %fld5772 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2995, i32 0, i32 1
  %arrayidx5773 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5772, i32 0, i64 1
  %rtx5774 = bitcast %union.rtunion_def* %arrayidx5773 to %struct.rtx_def**
  %2996 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5775 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %2996, i64 1
  store %struct.rtx_def** %rtx5774, %struct.rtx_def*** %arrayidx5775, align 8
  %2997 = load %struct.rtx_def*, %struct.rtx_def** %rtx5774, align 8
  %2998 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5776 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2998, i64 1
  store %struct.rtx_def* %2997, %struct.rtx_def** %arrayidx5776, align 8
  br label %sw.epilog

sw.bb.5777:                                       ; preds = %entry, %entry
  %2999 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5778 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2999, i32 0, i32 1
  %arrayidx5779 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5778, i32 0, i64 1
  %rtx5780 = bitcast %union.rtunion_def* %arrayidx5779 to %struct.rtx_def**
  %3000 = load %struct.rtx_def*, %struct.rtx_def** %rtx5780, align 8
  %fld5781 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3000, i32 0, i32 1
  %arrayidx5782 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5781, i32 0, i64 0
  %rtx5783 = bitcast %union.rtunion_def* %arrayidx5782 to %struct.rtx_def**
  %3001 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5784 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %3001, i64 0
  store %struct.rtx_def** %rtx5783, %struct.rtx_def*** %arrayidx5784, align 8
  %3002 = load %struct.rtx_def*, %struct.rtx_def** %rtx5783, align 8
  %3003 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5785 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %3003, i64 0
  store %struct.rtx_def* %3002, %struct.rtx_def** %arrayidx5785, align 8
  %3004 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5786 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3004, i32 0, i32 1
  %arrayidx5787 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5786, i32 0, i64 1
  %rtx5788 = bitcast %union.rtunion_def* %arrayidx5787 to %struct.rtx_def**
  %3005 = load %struct.rtx_def*, %struct.rtx_def** %rtx5788, align 8
  %fld5789 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3005, i32 0, i32 1
  %arrayidx5790 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5789, i32 0, i64 1
  %rtx5791 = bitcast %union.rtunion_def* %arrayidx5790 to %struct.rtx_def**
  %3006 = load %struct.rtx_def*, %struct.rtx_def** %rtx5791, align 8
  %fld5792 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3006, i32 0, i32 1
  %arrayidx5793 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5792, i32 0, i64 0
  %rtx5794 = bitcast %union.rtunion_def* %arrayidx5793 to %struct.rtx_def**
  %3007 = load %struct.rtx_def*, %struct.rtx_def** %rtx5794, align 8
  %fld5795 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3007, i32 0, i32 1
  %arrayidx5796 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5795, i32 0, i64 0
  %rtx5797 = bitcast %union.rtunion_def* %arrayidx5796 to %struct.rtx_def**
  %3008 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5798 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %3008, i64 1
  store %struct.rtx_def** %rtx5797, %struct.rtx_def*** %arrayidx5798, align 8
  %3009 = load %struct.rtx_def*, %struct.rtx_def** %rtx5797, align 8
  %3010 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5799 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %3010, i64 1
  store %struct.rtx_def* %3009, %struct.rtx_def** %arrayidx5799, align 8
  br label %sw.epilog

sw.bb.5800:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3011 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5801 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3011, i32 0, i32 1
  %arrayidx5802 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5801, i32 0, i64 1
  %rtx5803 = bitcast %union.rtunion_def* %arrayidx5802 to %struct.rtx_def**
  %3012 = load %struct.rtx_def*, %struct.rtx_def** %rtx5803, align 8
  %fld5804 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3012, i32 0, i32 1
  %arrayidx5805 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5804, i32 0, i64 0
  %rtx5806 = bitcast %union.rtunion_def* %arrayidx5805 to %struct.rtx_def**
  %3013 = load %struct.rtx_def*, %struct.rtx_def** %rtx5806, align 8
  %fld5807 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3013, i32 0, i32 1
  %arrayidx5808 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5807, i32 0, i64 0
  %rtx5809 = bitcast %union.rtunion_def* %arrayidx5808 to %struct.rtx_def**
  %3014 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5810 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %3014, i64 0
  store %struct.rtx_def** %rtx5809, %struct.rtx_def*** %arrayidx5810, align 8
  %3015 = load %struct.rtx_def*, %struct.rtx_def** %rtx5809, align 8
  %3016 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5811 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %3016, i64 0
  store %struct.rtx_def* %3015, %struct.rtx_def** %arrayidx5811, align 8
  %3017 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5812 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3017, i32 0, i32 1
  %arrayidx5813 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5812, i32 0, i64 1
  %rtx5814 = bitcast %union.rtunion_def* %arrayidx5813 to %struct.rtx_def**
  %3018 = load %struct.rtx_def*, %struct.rtx_def** %rtx5814, align 8
  %fld5815 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3018, i32 0, i32 1
  %arrayidx5816 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5815, i32 0, i64 0
  %rtx5817 = bitcast %union.rtunion_def* %arrayidx5816 to %struct.rtx_def**
  %3019 = load %struct.rtx_def*, %struct.rtx_def** %rtx5817, align 8
  %fld5818 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3019, i32 0, i32 1
  %arrayidx5819 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5818, i32 0, i64 1
  %rtx5820 = bitcast %union.rtunion_def* %arrayidx5819 to %struct.rtx_def**
  %3020 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5821 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %3020, i64 1
  store %struct.rtx_def** %rtx5820, %struct.rtx_def*** %arrayidx5821, align 8
  %3021 = load %struct.rtx_def*, %struct.rtx_def** %rtx5820, align 8
  %3022 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5822 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %3022, i64 1
  store %struct.rtx_def* %3021, %struct.rtx_def** %arrayidx5822, align 8
  br label %sw.epilog

sw.bb.5823:                                       ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3023 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5824 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3023, i32 0, i32 1
  %arrayidx5825 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5824, i32 0, i64 1
  %rtx5826 = bitcast %union.rtunion_def* %arrayidx5825 to %struct.rtx_def**
  %3024 = load %struct.rtx_def*, %struct.rtx_def** %rtx5826, align 8
  %fld5827 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3024, i32 0, i32 1
  %arrayidx5828 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5827, i32 0, i64 0
  %rtx5829 = bitcast %union.rtunion_def* %arrayidx5828 to %struct.rtx_def**
  %3025 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5830 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %3025, i64 0
  store %struct.rtx_def** %rtx5829, %struct.rtx_def*** %arrayidx5830, align 8
  %3026 = load %struct.rtx_def*, %struct.rtx_def** %rtx5829, align 8
  %3027 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5831 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %3027, i64 0
  store %struct.rtx_def* %3026, %struct.rtx_def** %arrayidx5831, align 8
  %3028 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld5832 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3028, i32 0, i32 1
  %arrayidx5833 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5832, i32 0, i64 1
  %rtx5834 = bitcast %union.rtunion_def* %arrayidx5833 to %struct.rtx_def**
  %3029 = load %struct.rtx_def*, %struct.rtx_def** %rtx5834, align 8
  %fld5835 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3029, i32 0, i32 1
  %arrayidx5836 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5835, i32 0, i64 1
  %rtx5837 = bitcast %union.rtunion_def* %arrayidx5836 to %struct.rtx_def**
  %3030 = load %struct.rtx_def***, %struct.rtx_def**** %ro_loc, align 8
  %arrayidx5838 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %3030, i64 1
  store %struct.rtx_def** %rtx5837, %struct.rtx_def*** %arrayidx5838, align 8
  %3031 = load %struct.rtx_def*, %struct.rtx_def** %rtx5837, align 8
  %3032 = load %struct.rtx_def**, %struct.rtx_def*** %ro, align 8
  %arrayidx5839 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %3032, i64 1
  store %struct.rtx_def* %3031, %struct.rtx_def** %arrayidx5839, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 1713, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.insn_extract, i32 0, i32 0)) #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb.5823, %sw.bb.5800, %sw.bb.5777, %sw.bb.5754, %sw.bb.5725, %sw.bb.5693, %sw.bb.5673, %sw.bb.5667, %sw.bb.5656, %sw.bb.5645, %sw.bb.5624, %sw.bb.5613, %sw.bb.5599, %sw.bb.5585, %sw.bb.5548, %sw.bb.5524, %sw.bb.5507, %sw.bb.5487, %sw.bb.5463, %sw.bb.5429, %sw.bb.5395, %sw.bb.5331, %sw.bb.5277, %sw.bb.5233, %sw.bb.5196, %sw.bb.5156, %sw.bb.5093, %sw.bb.5047, %sw.bb.5011, %sw.bb.4966, %sw.bb.4913, %sw.bb.4848, %sw.bb.4783, %sw.bb.4743, %sw.bb.4706, %sw.bb.4663, %sw.bb.4620, %sw.bb.4549, %sw.bb.4481, %sw.bb.4438, %sw.bb.4392, %sw.bb.4352, %sw.bb.4293, %sw.bb.4247, %sw.bb.4182, %sw.bb.4139, %sw.bb.4074, %sw.bb.4003, %sw.bb.3934, %sw.bb.3855, %sw.bb.3786, %sw.bb.3709, %sw.bb.3683, %sw.bb.3654, %sw.bb.3620, %sw.bb.3582, %sw.bb.3516, %sw.bb.3442, %sw.bb.3402, %sw.bb.3334, %sw.bb.3296, %sw.bb.3266, %sw.bb.3216, %sw.bb.3175, %sw.bb.3128, %sw.bb.3054, %sw.bb.3027, %sw.bb.3007, %sw.bb.2987, %sw.bb.2925, %sw.bb.2863, %sw.bb.2791, %sw.bb.2719, %sw.bb.2710, %sw.bb.2704, %sw.bb.2680, %sw.bb.2616, %sw.bb.2579, %sw.bb.2578, %sw.bb.2567, %sw.bb.2495, %sw.bb.2476, %sw.bb.2468, %sw.bb.2431, %sw.bb.2404, %sw.bb.2374, %sw.bb.2344, %sw.bb.2328, %sw.bb.2309, %sw.bb.2240, %sw.bb.2123, %sw.bb.2012, %sw.bb.1967, %sw.bb.1888, %sw.bb.1812, %sw.bb.1729, %sw.bb.1634, %sw.bb.1550, %sw.bb.1520, %sw.bb.1455, %sw.bb.1415, %sw.bb.1323, %sw.bb.1244, %sw.bb.1192, %sw.bb.1160, %sw.bb.1107, %sw.bb.1082, %sw.bb.1053, %sw.bb.1028, %sw.bb.1006, %sw.bb.970, %sw.bb.936, %sw.bb.909, %sw.bb.878, %sw.bb.850, %sw.bb.819, %sw.bb.783, %sw.bb.741, %sw.bb.687, %sw.bb.659, %sw.bb.631, %sw.bb.603, %sw.bb.584, %sw.bb.544, %sw.bb.474, %sw.bb.439, %sw.bb.405, %sw.bb.377, %sw.bb.341, %sw.bb.308, %sw.bb.282, %sw.bb.268, %sw.bb.204, %sw.bb.182, %sw.bb.162, %sw.bb.104, %sw.bb.60, %sw.bb.14, %sw.bb.3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: noreturn
declare void @_fatal_insn_not_found(%struct.rtx_def*, i8*, i32, i8*) #2

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
