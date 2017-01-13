	.text
	.file	"gdevmeds.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4582978272962677414     # double 0.025399999999999999
.LCPI0_1:
	.quad	4562254508917369340     # double 0.001
	.text
	.globl	select_medium
	.align	16, 0x90
	.type	select_medium,@function
select_medium:                          # @select_medium
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 80
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rax
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB0_11
# BB#1:                                 # %for.cond.13.preheader.lr.ph
	cvtsi2ssl	836(%rax), %xmm0
	divss	888(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2ssl	832(%rax), %xmm2
	divss	884(%rax), %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	xorl	%r12d, %r12d
	movq	%r15, %rbx
	.align	16, 0x90
.LBB0_2:                                # %for.cond.13.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	xorl	%ebp, %ebp
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_9:                                # %for.inc.for.body.16_crit_edge
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	(%rbx), %rdi
.LBB0_3:                                # %for.body.16
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	media(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_8
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_3 Depth=2
	movss	media+8(%rbp), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	ucomisd	24(%rsp), %xmm0         # 8-byte Folded Reload
	jbe	.LBB0_8
# BB#5:                                 # %land.lhs.true.29
                                        #   in Loop: Header=BB0_3 Depth=2
	movss	media+12(%rbp), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	ucomisd	16(%rsp), %xmm0         # 8-byte Folded Reload
	jbe	.LBB0_8
# BB#6:                                 # %land.lhs.true.38
                                        #   in Loop: Header=BB0_3 Depth=2
	movss	media+16(%rbp), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	12(%rsp), %xmm0         # 4-byte Folded Reload
	jbe	.LBB0_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB0_3 Depth=2
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movl	%r12d, %r14d
	.align	16, 0x90
.LBB0_8:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	addq	$24, %rbp
	cmpq	$816, %rbp              # imm = 0x330
	jne	.LBB0_9
# BB#10:                                # %for.inc.47
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	8(%r15,%r12,8), %rbx
	movq	8(%r15,%r12,8), %rdi
	leaq	1(%r12), %r12
	testq	%rdi, %rdi
	jne	.LBB0_2
.LBB0_11:                               # %for.end.49
	movl	%r14d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	select_medium, .Lfunc_end0-select_medium
	.cfi_endproc

	.type	media,@object           # @media
	.section	.rodata,"a",@progbits
	.align	16
media:
	.quad	.L.str
	.long	1062662335              # float 0.839610993
	.long	1066931616              # float 1.18815994
	.long	1065373463              # float 1.00241363
	.zero	4
	.quad	.L.str.1
	.long	1058542975              # float 0.594078004
	.long	1062662335              # float 0.839610993
	.long	1073762099              # float 2.00483394
	.zero	4
	.quad	.L.str.2
	.long	1054273744              # float 0.419806004
	.long	1058542975              # float 0.594078004
	.long	1082150697              # float 4.00966311
	.zero	4
	.quad	.L.str.3
	.long	1050154367              # float 0.297039002
	.long	1054273744              # float 0.419806004
	.long	1090539305              # float 8.01932621
	.zero	4
	.quad	.L.str.4
	.long	1045885136              # float 0.209903002
	.long	1050154367              # float 0.297039002
	.long	1098927913              # float 16.0386524
	.zero	4
	.quad	.L.str.5
	.long	1041765725              # float 0.148518994
	.long	1045885136              # float 0.209903002
	.long	1107316549              # float 32.0774117
	.zero	4
	.quad	.L.str.6
	.long	1037472838              # float 0.104774997
	.long	1041765725              # float 0.148518994
	.long	1115719323              # float 64.2629013
	.zero	4
	.quad	.L.str.7
	.long	1033353468              # float 0.0740832984
	.long	1037472838              # float 0.104774997
	.long	1124127964              # float 128.831482
	.zero	4
	.quad	.L.str.8
	.long	1029036878              # float 0.0522110984
	.long	1033353468              # float 0.0740832984
	.long	1132545098              # float 258.533508
	.zero	4
	.quad	.L.str.9
	.long	1024964874              # float 0.0370417014
	.long	1029036878              # float 0.0522110984
	.long	1140933695              # float 517.066345
	.zero	4
	.quad	.L.str.10
	.long	1020648297              # float 0.0261055995
	.long	1024964874              # float 0.0370417014
	.long	1149322286              # float 1034.13062
	.zero	4
	.quad	.L.str.11
	.long	1047139870              # float 0.228599995
	.long	1050414783              # float 0.304800004
	.long	1097179470              # float 14.351881
	.zero	4
	.quad	.L.str.12
	.long	1050414783              # float 0.304800004
	.long	1055528478              # float 0.457199991
	.long	1088790862              # float 7.17594051
	.zero	4
	.quad	.L.str.13
	.long	1055528478              # float 0.457199991
	.long	1058803391              # float 0.609600007
	.long	1080402254              # float 3.58797026
	.zero	4
	.quad	.L.str.14
	.long	1058803391              # float 0.609600007
	.long	1063917086              # float 0.914399981
	.long	1072013646              # float 1.79398513
	.zero	4
	.quad	.L.str.15
	.long	1063917086              # float 0.914399981
	.long	1067191999              # float 1.21920002
	.long	1063625038              # float 0.896992564
	.zero	4
	.quad	.L.str.16
	.long	1065357243              # float 1.00048006
	.long	1068825513              # float 1.41393006
	.long	1060435970              # float 0.706909299
	.zero	4
	.quad	.L.str.17
	.long	1060436938              # float 0.706966996
	.long	1065357243              # float 1.00048006
	.long	1068824544              # float 1.41381454
	.zero	4
	.quad	.L.str.18
	.long	1056968618              # float 0.500239015
	.long	1060436938              # float 0.706966996
	.long	1077213176              # float 2.82763481
	.zero	4
	.quad	.L.str.19
	.long	1052048313              # float 0.353482991
	.long	1056968618              # float 0.500239015
	.long	1085601801              # float 5.65527773
	.zero	4
	.quad	.L.str.20
	.long	1048579993              # float 0.250119001
	.long	1052048313              # float 0.353482991
	.long	1093990432              # float 11.3105774
	.zero	4
	.quad	.L.str.21
	.long	1043659739              # float 0.176742002
	.long	1048579993              # float 0.250119001
	.long	1102379007              # float 22.6210918
	.zero	4
	.quad	.L.str.22
	.long	1046287588              # float 0.215900004
	.long	1051267065              # float 0.330199987
	.long	1096838994              # float 14.0271778
	.zero	4
	.quad	.L.str.23
	.long	1046287588              # float 0.215900004
	.long	1051267065              # float 0.330199987
	.long	1096838994              # float 14.0271778
	.zero	4
	.quad	.L.str.24
	.long	1041173892              # float 0.139699996
	.long	1046287588              # float 0.215900004
	.long	1107599071              # float 33.1551476
	.zero	4
	.quad	.L.str.25
	.long	1054676196              # float 0.431800008
	.long	1049562500              # float 0.279399991
	.long	1090821855              # float 8.28878688
	.zero	4
	.quad	.L.str.26
	.long	1046287588              # float 0.215900004
	.long	1052119348              # float 0.355599999
	.long	1095788382              # float 13.0252361
	.zero	4
	.quad	.L.str.27
	.long	1046287588              # float 0.215900004
	.long	1049562500              # float 0.279399991
	.long	1099210463              # float 16.5775738
	.zero	4
	.quad	.L.str.28
	.long	1044583023              # float 0.190500006
	.long	1048710218              # float 0.254000008
	.long	1101354347              # float 20.666708
	.zero	4
	.quad	.L.str.29
	.long	1044156881              # float 0.184149995
	.long	1049136359              # float 0.2667
	.long	1101194219              # float 20.3612881
	.zero	4
	.quad	.L.str.30
	.long	1037472838              # float 0.104774997
	.long	1047992153              # float 0.241300002
	.long	1109276363              # float 39.5535088
	.zero	4
	.quad	.L.str.31
	.long	1038174126              # float 0.109999999
	.long	1046562734              # float 0.219999999
	.long	1109740045              # float 41.3223152
	.zero	4
	.quad	.L.str.32
	.long	1042670420              # float 0.162
	.long	1047166714              # float 0.229000002
	.long	1104651554              # float 26.9556313
	.zero	4
	.quad	.L.str.33
	.long	1036620556              # float 0.0984250009
	.long	1044583023              # float 0.190500006
	.long	1112888689              # float 53.3334389
	.zero	4
	.size	media, 816

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"a0"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"a1"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"a2"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"a3"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"a4"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"a5"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"a6"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"a7"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"a8"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"a9"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"a10"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"archA"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"archB"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"archC"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"archD"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"archE"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"b0"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"b1"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"b2"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"b3"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"b4"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"b5"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"flsa"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"flse"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"halfletter"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ledger"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"legal"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"letter"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"note"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"executive"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"com10"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"dl"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"c5"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"monarch"
	.size	.L.str.33, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
