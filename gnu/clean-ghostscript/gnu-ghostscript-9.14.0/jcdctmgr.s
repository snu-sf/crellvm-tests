	.text
	.file	"jcdctmgr.bc"
	.globl	jinit_forward_dct
	.align	16, 0x90
	.type	jinit_forward_dct,@function
jinit_forward_dct:                      # @jinit_forward_dct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	8(%r14), %rax
	movl	$1, %esi
	movl	$168, %edx
	callq	*(%rax)
	movq	%rax, 552(%r14)
	movq	$start_pass_fdctmgr, (%rax)
	cmpl	$0, 92(%r14)
	jle	.LBB0_3
# BB#1:                                 # %for.body.lr.ph
	movq	104(%r14), %rbx
	addq	$88, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rax
	movl	$1, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%r14, %rdi
	callq	*(%rax)
	movq	%rax, (%rbx)
	incl	%ebp
	addq	$96, %rbx
	cmpl	92(%r14), %ebp
	jl	.LBB0_2
.LBB0_3:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jinit_forward_dct, .Lfunc_end0-jinit_forward_dct
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_fdctmgr,@function
start_pass_fdctmgr:                     # @start_pass_fdctmgr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 48
.Ltmp11:
	.cfi_offset %rbx, -48
.Ltmp12:
	.cfi_offset %r12, -40
.Ltmp13:
	.cfi_offset %r13, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	cmpl	$0, 92(%r15)
	jle	.LBB1_90
# BB#1:                                 # %for.body.lr.ph
	movq	552(%r15), %r14
	movq	104(%r15), %r13
	addq	$16, %r13
	xorl	%r12d, %r12d
	jmp	.LBB1_2
.LBB1_81:                               # %sw.bb.123
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_islow, 88(%r14,%r12,8)
	jmp	.LBB1_84
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	20(%r13), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	addl	24(%r13), %ecx
	cmpl	$1805, %ecx             # imm = 0x70D
	jg	.LBB1_34
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1027, %ecx             # imm = 0x403
	jg	.LBB1_19
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$515, %ecx              # imm = 0x203
	jg	.LBB1_12
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$512, %ecx              # imm = 0x200
	jg	.LBB1_9
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$257, %ecx              # imm = 0x101
	jne	.LBB1_7
# BB#65:                                # %sw.bb
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_1x1, 88(%r14,%r12,8)
	jmp	.LBB1_84
	.align	16, 0x90
.LBB1_34:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3077, %ecx             # imm = 0xC05
	jg	.LBB1_50
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2312, %ecx             # imm = 0x908
	jg	.LBB1_43
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2055, %ecx             # imm = 0x807
	jg	.LBB1_40
# BB#37:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1806, %ecx             # imm = 0x70E
	jne	.LBB1_38
# BB#76:                                # %sw.bb.94
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_7x14, 88(%r14,%r12,8)
	jmp	.LBB1_84
	.align	16, 0x90
.LBB1_19:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1538, %ecx             # imm = 0x602
	jg	.LBB1_27
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1284, %ecx             # imm = 0x504
	jg	.LBB1_24
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1028, %ecx             # imm = 0x404
	jne	.LBB1_22
# BB#66:                                # %sw.bb.10
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_4x4, 88(%r14,%r12,8)
	jmp	.LBB1_84
	.align	16, 0x90
.LBB1_50:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3597, %ecx             # imm = 0xE0D
	jg	.LBB1_58
# BB#51:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3340, %ecx             # imm = 0xD0C
	jg	.LBB1_55
# BB#52:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3078, %ecx             # imm = 0xC06
	jne	.LBB1_53
# BB#73:                                # %sw.bb.66
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_12x6, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_12:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$773, %ecx              # imm = 0x305
	jg	.LBB1_16
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$516, %ecx              # imm = 0x204
	jne	.LBB1_14
# BB#79:                                # %sw.bb.114
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_2x4, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_43:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2569, %ecx             # imm = 0xA09
	jg	.LBB1_47
# BB#44:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2313, %ecx             # imm = 0x909
	jne	.LBB1_45
# BB#68:                                # %sw.bb.26
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_9x9, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_27:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1547, %ecx             # imm = 0x60B
	jg	.LBB1_31
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1539, %ecx             # imm = 0x603
	jne	.LBB1_29
# BB#74:                                # %sw.bb.78
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_6x3, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_58:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$4103, %ecx             # imm = 0x1007
	jg	.LBB1_62
# BB#59:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3598, %ecx             # imm = 0xE0E
	jne	.LBB1_60
# BB#71:                                # %sw.bb.46
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_14x14, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_9:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$513, %ecx              # imm = 0x201
	jne	.LBB1_10
# BB#75:                                # %sw.bb.86
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_2x1, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_40:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2056, %ecx             # imm = 0x808
	jne	.LBB1_41
# BB#80:                                # %sw.bb.122
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, 312(%r15)
	je	.LBB1_81
# BB#82:                                # %sw.default
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r15), %rax
	movl	$49, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	jmp	.LBB1_84
.LBB1_24:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1285, %ecx             # imm = 0x505
	jne	.LBB1_25
# BB#67:                                # %sw.bb.14
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_5x5, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_55:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3341, %ecx             # imm = 0xD0D
	jne	.LBB1_56
# BB#70:                                # %sw.bb.42
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_13x13, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_16:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$774, %ecx              # imm = 0x306
	jne	.LBB1_17
# BB#78:                                # %sw.bb.110
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_3x6, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_47:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2570, %ecx             # imm = 0xA0A
	jne	.LBB1_48
# BB#69:                                # %sw.bb.30
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_10x10, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_31:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1548, %ecx             # imm = 0x60C
	jne	.LBB1_32
# BB#77:                                # %sw.bb.98
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_6x12, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_62:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$4104, %ecx             # imm = 0x1008
	jne	.LBB1_63
# BB#72:                                # %sw.bb.58
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_16x8, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_7:                                # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$258, %ecx              # imm = 0x102
	jne	.LBB1_83
# BB#8:                                 # %sw.bb.118
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_1x2, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_38:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2052, %ecx             # imm = 0x804
	jne	.LBB1_83
# BB#39:                                # %sw.bb.74
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_8x4, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_22:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1032, %ecx             # imm = 0x408
	jne	.LBB1_83
# BB#23:                                # %sw.bb.106
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_4x8, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_53:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3084, %ecx             # imm = 0xC0C
	jne	.LBB1_83
# BB#54:                                # %sw.bb.38
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_12x12, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_14:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$771, %ecx              # imm = 0x303
	jne	.LBB1_83
# BB#15:                                # %sw.bb.6
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_3x3, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_45:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2565, %ecx             # imm = 0xA05
	jne	.LBB1_83
# BB#46:                                # %sw.bb.70
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_10x5, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_29:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1542, %ecx             # imm = 0x606
	jne	.LBB1_83
# BB#30:                                # %sw.bb.18
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_6x6, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_60:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3855, %ecx             # imm = 0xF0F
	jne	.LBB1_83
# BB#61:                                # %sw.bb.50
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_15x15, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_10:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$514, %ecx              # imm = 0x202
	jne	.LBB1_83
# BB#11:                                # %sw.bb.2
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_2x2, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_41:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2064, %ecx             # imm = 0x810
	jne	.LBB1_83
# BB#42:                                # %sw.bb.90
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_8x16, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_25:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1290, %ecx             # imm = 0x50A
	jne	.LBB1_83
# BB#26:                                # %sw.bb.102
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_5x10, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_56:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$3591, %ecx             # imm = 0xE07
	jne	.LBB1_83
# BB#57:                                # %sw.bb.62
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_14x7, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_17:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1026, %ecx             # imm = 0x402
	jne	.LBB1_83
# BB#18:                                # %sw.bb.82
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_4x2, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_48:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$2827, %ecx             # imm = 0xB0B
	jne	.LBB1_83
# BB#49:                                # %sw.bb.34
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_11x11, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_32:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$1799, %ecx             # imm = 0x707
	jne	.LBB1_83
# BB#33:                                # %sw.bb.22
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_7x7, 88(%r14,%r12,8)
	jmp	.LBB1_84
.LBB1_63:                               # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpl	$4112, %ecx             # imm = 0x1010
	jne	.LBB1_83
# BB#64:                                # %sw.bb.54
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	$jpeg_fdct_16x16, 88(%r14,%r12,8)
	jmp	.LBB1_84
	.align	16, 0x90
.LBB1_83:                               # %sw.default.128
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r15), %rcx
	movl	$7, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	24(%r13), %eax
	movl	%eax, 48(%rcx)
	movq	%r15, %rdi
	callq	*(%rcx)
.LBB1_84:                               # %sw.epilog.142
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	(%r13), %rbx
	cmpq	$3, %rbx
	ja	.LBB1_86
# BB#85:                                # %lor.lhs.false.145
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	112(%r15,%rbx,8), %rax
	testq	%rax, %rax
	jne	.LBB1_87
.LBB1_86:                               # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%r15), %rax
	movl	$54, 40(%rax)
	movl	%ebx, 44(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	movq	112(%r15,%rbx,8), %rax
.LBB1_87:                               # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	72(%r13), %rcx
	movl	$4, %edx
	cmpl	$0, 36(%r13)
	jne	.LBB1_89
# BB#88:                                # %select.mid
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$3, %edx
.LBB1_89:                               # %vector.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %xmm1           # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movd	%edx, %xmm0
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, (%rcx)
	movq	8(%rax), %xmm1          # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 16(%rcx)
	movq	16(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 32(%rcx)
	movq	24(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 48(%rcx)
	movq	32(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 64(%rcx)
	movq	40(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 80(%rcx)
	movq	48(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 96(%rcx)
	movq	56(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 112(%rcx)
	movq	64(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 128(%rcx)
	movq	72(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 144(%rcx)
	movq	80(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 160(%rcx)
	movq	88(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 176(%rcx)
	movq	96(%rax), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 192(%rcx)
	movq	104(%rax), %xmm1        # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 208(%rcx)
	movq	112(%rax), %xmm1        # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 224(%rcx)
	movq	120(%rax), %xmm1        # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	pslld	%xmm0, %xmm1
	movdqu	%xmm1, 240(%rcx)
	movq	$forward_DCT, 8(%r14,%r12,8)
	incq	%r12
	movslq	92(%r15), %rax
	addq	$96, %r13
	cmpq	%rax, %r12
	jl	.LBB1_2
.LBB1_90:                               # %for.end.179
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	start_pass_fdctmgr, .Lfunc_end1-start_pass_fdctmgr
	.cfi_endproc

	.align	16, 0x90
	.type	forward_DCT,@function
forward_DCT:                            # @forward_DCT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp22:
	.cfi_def_cfa_offset 336
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movq	%rcx, %rbx
	movl	%r8d, %eax
	cmpl	$0, 336(%rsp)
	je	.LBB2_11
# BB#1:                                 # %for.body.lr.ph
	movq	552(%rdi), %rcx
	movq	%rsi, %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movslq	4(%rdi), %rsi
	movq	88(%rcx,%rsi,8), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	88(%rdi), %r12
	leaq	(%rdx,%rax,8), %r15
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	leaq	16(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	*(%rsp)                 # 8-byte Folded Reload
	movq	%rbx, %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB2_3:                                # %for.body.8
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12,%rdi,4), %ebp
	movl	16(%rsp,%rdi,4), %ecx
	movl	%ebp, %edx
	sarl	%edx
	testl	%ecx, %ecx
	js	.LBB2_4
# BB#7:                                 # %if.else.17
                                        #   in Loop: Header=BB2_3 Depth=2
	addl	%edx, %ecx
	xorl	%eax, %eax
	cmpl	%ebp, %ecx
	jl	.LBB2_9
# BB#8:                                 # %if.then.21
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	%ecx, %eax
	cltd
	idivl	%ebp
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_4:                                # %if.then
                                        #   in Loop: Header=BB2_3 Depth=2
	subl	%ecx, %edx
	xorl	%eax, %eax
	cmpl	%ebp, %edx
	jl	.LBB2_6
# BB#5:                                 # %if.then.15
                                        #   in Loop: Header=BB2_3 Depth=2
	movl	%edx, %eax
	cltd
	idivl	%ebp
.LBB2_6:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=2
	negl	%eax
.LBB2_9:                                # %if.end.25
                                        #   in Loop: Header=BB2_3 Depth=2
	movw	%ax, (%rsi)
	incq	%rdi
	addq	$2, %rsi
	cmpq	$64, %rdi
	jne	.LBB2_3
# BB#10:                                # %for.end
                                        #   in Loop: Header=BB2_2 Depth=1
	incq	%r14
	movq	8(%rsp), %rax           # 8-byte Reload
	addl	36(%rax), %r13d
	subq	$-128, %rbx
	cmpl	336(%rsp), %r14d
	jne	.LBB2_2
.LBB2_11:                               # %for.end.31
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	forward_DCT, .Lfunc_end2-forward_DCT
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
