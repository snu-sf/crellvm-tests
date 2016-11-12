	.text
	.file	"gdevlx32.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1138819072              # float 450
.LCPI0_1:
	.long	1147207680              # float 900
	.text
	.align	16, 0x90
	.type	lxm3200_print_page,@function
lxm3200_print_page:                     # @lxm3200_print_page
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	18560(%r14), %rbx
	movq	%r14, 18688(%r14)
	movq	%r15, 18680(%r14)
	movl	18472(%r14), %r9d
	movl	%r9d, 18580(%r14)
	movl	$600, 18620(%r14)       # imm = 0x258
	movl	$600, %ebp              # imm = 0x258
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	884(%r14), %xmm0
	jbe	.LBB0_2
# BB#1:                                 # %if.then
	movl	$300, 60(%rbx)          # imm = 0x12C
	movl	$300, %ebp              # imm = 0x12C
.LBB0_2:                                # %if.end
	movss	884(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_1(%rip), %xmm1
	jbe	.LBB0_4
# BB#3:                                 # %if.then.10
	movl	$1200, 60(%rbx)         # imm = 0x4B0
	movl	$1200, %ebp             # imm = 0x4B0
.LBB0_4:                                # %if.end.12
	movl	$1200, %eax             # imm = 0x4B0
	xorl	%edx, %edx
	idivl	%ebp
	movl	%eax, %r8d
	movl	%r8d, 18628(%r14)
	movl	$600, 18624(%r14)       # imm = 0x258
	movss	888(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$600, %ecx              # imm = 0x258
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_6
# BB#5:                                 # %if.then.18
	movl	$300, 64(%rbx)          # imm = 0x12C
	movl	$300, %ecx              # imm = 0x12C
.LBB0_6:                                # %if.end.20
	ucomiss	.LCPI0_1(%rip), %xmm1
	jbe	.LBB0_8
# BB#7:                                 # %if.then.25
	movl	$1200, 64(%rbx)         # imm = 0x4B0
	movl	$1200, %ecx             # imm = 0x4B0
.LBB0_8:                                # %if.end.27
	movl	$1200, %eax             # imm = 0x4B0
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %esi
	movl	%esi, 18632(%r14)
	movl	18504(%r14), %eax
	movl	%eax, 18616(%r14)
	movl	18500(%r14), %ecx
	movl	%ecx, 18612(%r14)
	movl	$0, 18516(%r14)
	movl	$184, %eax
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, 18520(%r14)
	movl	$368, %eax              # imm = 0x170
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, 18524(%r14)
	movl	$16, %eax
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, 18528(%r14)
	movl	18656(%r14), %eax
	leal	(%rax,%rax), %edi
	leal	60(%rax,%rax), %eax
	cltd
	idivl	%esi
	movl	%eax, 18532(%r14)
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%eax, 18536(%r14)
	movl	18508(%r14), %eax
	movl	%eax, 18604(%r14)
	movl	18512(%r14), %edx
	movl	%edx, 18608(%r14)
	cmpl	$1, %eax
	jne	.LBB0_10
# BB#9:                                 # %sw.bb
	addl	$5000, %ecx             # imm = 0x1388
	movl	100(%rbx), %eax
	addl	%ecx, %eax
	jmp	.LBB0_11
.LBB0_10:                               # %sw.default
	movl	100(%rbx), %eax
	leal	4134(%rcx,%rax), %eax
	leal	6254(%rcx), %ecx
.LBB0_11:                               # %sw.epilog
	movl	%ecx, 18540(%r14)
	movl	%eax, 18548(%r14)
	addl	$-62, %ecx
	movl	%ecx, 18544(%r14)
	addl	$-62, %eax
	movl	%eax, 18552(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 18664(%r14)
	movl	$0, 18636(%r14)
	movl	$0, 18712(%r14)
	movups	%xmm0, 18696(%r14)
	movl	$0, 18740(%r14)
	movl	$0, 18644(%r14)
	movl	$0, 18748(%r14)
	movl	18492(%r14), %eax
	movl	%eax, 18596(%r14)
	movl	18496(%r14), %ecx
	movl	%ecx, 18592(%r14)
	leal	-1(%r9), %eax
	leaq	12(%rbx), %r12
	cmpl	$2, %eax
	jae	.LBB0_12
# BB#17:                                # %sw.bb.108
	movabsq	$824633721088, %rax     # imm = 0xC000000100
	movq	%rax, 12(%rbx)
	movl	$0, 40(%rbx)
	movl	$256, %eax              # imm = 0x100
	jmp	.LBB0_18
.LBB0_12:                               # %sw.epilog
	testl	%r9d, %r9d
	jne	.LBB0_13
# BB#14:                                # %sw.bb.100
	movabsq	$893353197776, %rax     # imm = 0xD0000000D0
	movq	%rax, 12(%rbx)
	movl	$16, 40(%rbx)
	movl	$208, %eax
	cmpl	$1200, %ebp             # imm = 0x4B0
	jne	.LBB0_18
# BB#15:                                # %sw.epilog.112.thread
	movl	$192, 16(%rbx)
	movl	$0, 40(%rbx)
	movl	$384, %eax              # imm = 0x180
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, 12(%rbx)
	jmp	.LBB0_16
.LBB0_13:                               # %sw.epilog.sw.epilog.112_crit_edge
	movl	12(%rbx), %eax
.LBB0_18:                               # %sw.epilog.112
	addl	%eax, %eax
	cltd
	idivl	%esi
	movl	%eax, (%r12)
	cmpl	$1200, %ebp             # imm = 0x4B0
	jne	.LBB0_19
.LBB0_16:                               # %sw.bb.121
	orb	$64, 40(%rbx)
	addl	%ecx, %ecx
	movl	%ecx, 32(%rbx)
	jmp	.LBB0_21
.LBB0_19:                               # %sw.epilog.112
	cmpl	$300, %ebp              # imm = 0x12C
	jne	.LBB0_21
# BB#20:                                # %sw.bb.119
	orb	$96, 40(%rbx)
.LBB0_21:                               # %sw.epilog.126
	movl	832(%r14), %ecx
	movl	%ecx, 18588(%r14)
	movl	836(%r14), %eax
	movl	%eax, 18584(%r14)
	movl	18476(%r14), %eax
	movl	%eax, 18660(%r14)
	movl	18480(%r14), %eax
	movl	%eax, 18656(%r14)
	movl	18484(%r14), %edx
	movl	%edx, 18648(%r14)
	movl	18488(%r14), %eax
	movl	%eax, 18652(%r14)
	cmpl	%eax, %edx
	cmovgel	%edx, %eax
	addl	%eax, %eax
	cltd
	idivl	%r8d
	movl	%eax, 18568(%r14)
	leal	(%rcx,%rax,2), %eax
	movl	%eax, 18560(%r14)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_device_raster
	movl	%eax, 18564(%r14)
	movl	18632(%r14), %eax
	imull	18584(%r14), %eax
	addl	$2400, %eax             # imm = 0x960
	movl	%eax, 18640(%r14)
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	18560(%r14), %esi
	movl	(%r12), %edx
	movl	$.L.str.11, %ecx
	callq	*88(%rdi)
	movq	%rax, 18672(%r14)
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	18560(%r14), %esi
	movl	$30, %edx
	movl	$.L.str.12, %ecx
	callq	*88(%rdi)
	movq	%rax, 18664(%r14)
	movq	18672(%r14), %rsi
	testq	%rax, %rax
	je	.LBB0_23
# BB#22:                                # %sw.epilog.126
	testq	%rsi, %rsi
	je	.LBB0_23
# BB#27:                                # %if.end.177
	cmpl	$1, 44(%rbx)
	jne	.LBB0_29
# BB#28:                                # %if.then.180
	movl	$z12_init_sequence, %edi
	movl	$40, %esi
	jmp	.LBB0_30
.LBB0_23:                               # %if.then.176
	testq	%rsi, %rsi
	je	.LBB0_25
# BB#24:                                # %if.then.i
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
	movq	18664(%r14), %rax
.LBB0_25:                               # %if.end.i
	movl	$-25, %ebx
	testq	%rax, %rax
	je	.LBB0_133
# BB#26:                                # %if.then.7.i
	movq	24(%r14), %rcx
	movq	200(%rcx), %rcx
	movq	200(%rcx), %rdi
	movl	$.L.str.14, %edx
	movq	%rax, %rsi
	jmp	.LBB0_132
.LBB0_29:                               # %if.else
	movl	$init_sequence, %edi
	movl	$32, %esi
.LBB0_30:                               # %if.end.183
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite
	movl	20(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB0_31
# BB#69:                                # %sw.bb.186
	movl	$384, %eax              # imm = 0x180
	xorl	%edx, %edx
	idivl	72(%rbx)
	movl	%eax, %r15d
	movq	%rbx, %rdi
	callq	init_buffer
	jmp	.LBB0_70
	.align	16, 0x90
.LBB0_135:                              # %while.body.i.143
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	%rbx, %rdi
	callq	roll_buffer
.LBB0_70:                               # %while.cond.i.141
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB0_135
# BB#71:                                # %while.cond.i.141
	cmpl	$1, %ebp
	je	.LBB0_123
# BB#72:                                # %if.end.i.165
	movl	56(%rbx), %eax
	movl	152(%rbx), %ecx
	imull	72(%rbx), %ecx
	leal	476(%rax,%rcx), %eax
	movb	$27, (%rsp)
	movb	$35, 1(%rsp)
	movb	$-128, 2(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	movb	%cl, 3(%rsp)
	movb	%al, 4(%rsp)
	movb	$0, 5(%rsp)
	movb	$0, 6(%rsp)
	addb	%al, %cl
	addb	$-93, %cl
	movb	%cl, 7(%rsp)
	subl	%eax, 80(%rbx)
	movq	120(%rbx), %rcx
	leaq	(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	cmpl	$6, %ebp
	je	.LBB0_82
# BB#73:                                # %if.end.i.165
	cmpl	$4, %ebp
	jne	.LBB0_74
# BB#79:                                # %sw.bb.11.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	jmp	.LBB0_80
.LBB0_31:                               # %if.end.183
	movq	%rbx, %rdi
	cmpl	$2, %eax
	jne	.LBB0_111
# BB#32:                                # %sw.bb.185
	callq	init_buffer
	jmp	.LBB0_33
	.align	16, 0x90
.LBB0_134:                              # %while.body.i
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	%rbx, %rdi
	callq	roll_buffer
.LBB0_33:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB0_134
# BB#34:                                # %while.cond.i
	cmpl	$1, %ebp
	je	.LBB0_123
# BB#35:                                # %if.end.i.137
	movl	56(%rbx), %eax
	movl	152(%rbx), %ecx
	imull	72(%rbx), %ecx
	leal	476(%rax,%rcx), %eax
	movb	$27, (%rsp)
	movb	$35, 1(%rsp)
	movb	$-128, 2(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	movb	%cl, 3(%rsp)
	movb	%al, 4(%rsp)
	movb	$0, 5(%rsp)
	movb	$0, 6(%rsp)
	addb	%al, %cl
	addb	$-93, %cl
	movb	%cl, 7(%rsp)
	subl	%eax, 80(%rbx)
	movq	120(%rbx), %rcx
	leaq	(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	cmpl	$6, %ebp
	je	.LBB0_45
# BB#36:                                # %if.end.i.137
	cmpl	$4, %ebp
	jne	.LBB0_37
# BB#42:                                # %sw.bb.9.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	jmp	.LBB0_43
.LBB0_111:                              # %sw.default.188
	callq	init_buffer
	cmpl	$1, %eax
	je	.LBB0_123
# BB#112:                               # %if.end.i.207
	movl	56(%rbx), %eax
	movl	152(%rbx), %ecx
	imull	72(%rbx), %ecx
	leal	420(%rax,%rcx), %eax
	movb	$27, (%rsp)
	movb	$35, 1(%rsp)
	movb	$-128, 2(%rsp)
	movl	%eax, %ecx
	shrl	$8, %ecx
	movb	%cl, 3(%rsp)
	movb	%al, 4(%rsp)
	movb	$0, 5(%rsp)
	movb	$0, 6(%rsp)
	addb	%al, %cl
	addb	$-93, %cl
	movb	%cl, 7(%rsp)
	subl	%eax, 80(%rbx)
	movq	120(%rbx), %rcx
	leaq	(%rsp), %rdi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	$0, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	movl	152(%rbx), %ebp
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	je	.LBB0_114
# BB#113:
	movl	%ebp, %r15d
	jmp	.LBB0_115
.LBB0_82:                               # %sw.bb.20.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	jmp	.LBB0_83
.LBB0_74:                               # %if.end.i.165
	cmpl	$2, %ebp
	jne	.LBB0_75
# BB#76:                                # %sw.bb.i.168
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	jmp	.LBB0_77
.LBB0_45:                               # %sw.bb.18.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	jmp	.LBB0_46
.LBB0_37:                               # %if.end.i.137
	cmpl	$2, %ebp
	jne	.LBB0_38
# BB#39:                                # %sw.bb.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	jmp	.LBB0_40
.LBB0_75:
	movl	152(%rbx), %ebp
	jmp	.LBB0_87
.LBB0_38:
	movl	152(%rbx), %ebp
	jmp	.LBB0_50
.LBB0_40:                               # %sw.bb.i
	movl	$0, 188(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	movl	152(%rbx), %ebp
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_50
# BB#41:                                # %if.then.6.i
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	xorl	%esi, %esi
	jmp	.LBB0_49
.LBB0_43:                               # %sw.bb.9.i
	movl	$0, 188(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	movl	152(%rbx), %ebp
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_50
# BB#44:                                # %if.then.14.i
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	jmp	.LBB0_48
.LBB0_46:                               # %sw.bb.18.i
	movl	$0, 188(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	movl	152(%rbx), %ebp
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_50
# BB#47:                                # %if.then.23.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
.LBB0_48:                               # %sw.epilog.i
	movl	$1, %esi
.LBB0_49:                               # %sw.epilog.i
	movq	%rbx, %rdi
	callq	encode_col_buf
	incl	%ebp
.LBB0_50:                               # %sw.epilog.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	roll_buffer
	testb	$1, %al
	jne	.LBB0_57
# BB#51:                                # %while.body.29.i
                                        #   in Loop: Header=BB0_50 Depth=1
	cmpl	$6, %eax
	je	.LBB0_56
# BB#52:                                # %while.body.29.i
                                        #   in Loop: Header=BB0_50 Depth=1
	cmpl	$4, %eax
	je	.LBB0_55
# BB#53:                                # %while.body.29.i
                                        #   in Loop: Header=BB0_50 Depth=1
	cmpl	$2, %eax
	jne	.LBB0_50
# BB#54:                                # %sw.bb.30.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	jmp	.LBB0_40
.LBB0_56:                               # %sw.bb.51.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	jmp	.LBB0_46
.LBB0_55:                               # %sw.bb.40.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	jmp	.LBB0_43
.LBB0_57:                               # %while.end.64.i
	cmpl	$6, %eax
	je	.LBB0_65
# BB#58:                                # %while.end.64.i
	cmpl	$4, %eax
	je	.LBB0_62
# BB#59:                                # %while.end.64.i
	cmpl	$2, %eax
	jne	.LBB0_122
# BB#60:                                # %sw.bb.65.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$0, 188(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_62
# BB#61:                                # %if.then.71.i
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	incl	%ebp
.LBB0_62:                               # %sw.bb.75.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	jmp	.LBB0_63
.LBB0_65:                               # %sw.bb.85.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$0, 188(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_122
# BB#66:                                # %if.then.91.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	jmp	.LBB0_67
.LBB0_63:                               # %sw.bb.75.i
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$0, 188(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_122
# BB#64:                                # %if.then.81.i
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	jmp	.LBB0_68
.LBB0_67:                               # %sw.epilog.95.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
.LBB0_68:                               # %sw.epilog.95.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	jmp	.LBB0_122
.LBB0_77:                               # %sw.bb.i.168
	movl	$0, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	movl	152(%rbx), %ebp
	leal	(%rbp,%r15), %eax
	movl	%eax, 148(%rbx)
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_87
# BB#78:                                # %if.then.8.i
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	jmp	.LBB0_86
.LBB0_80:                               # %sw.bb.11.i
	movl	$0, 188(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	movl	152(%rbx), %ebp
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_87
# BB#81:                                # %if.then.16.i
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	jmp	.LBB0_85
.LBB0_83:                               # %sw.bb.20.i
	movl	$0, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	movl	152(%rbx), %eax
	addl	%r15d, %eax
	movl	%eax, 148(%rbx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	movl	152(%rbx), %ebp
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_87
# BB#84:                                # %if.then.28.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
.LBB0_85:                               # %sw.epilog.i.171
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
.LBB0_86:                               # %sw.epilog.i.171
	incl	%ebp
.LBB0_87:                               # %sw.epilog.i.171
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	roll_buffer
	testb	$1, %al
	jne	.LBB0_96
# BB#88:                                # %while.body.34.i
                                        #   in Loop: Header=BB0_87 Depth=1
	movl	152(%rbx), %ecx
	cmpl	148(%rbx), %ecx
	jge	.LBB0_90
# BB#89:                                #   in Loop: Header=BB0_87 Depth=1
	andl	$-3, %eax
.LBB0_90:                               # %select.end
                                        #   in Loop: Header=BB0_87 Depth=1
	cmpl	$6, %eax
	je	.LBB0_95
# BB#91:                                # %select.end
                                        #   in Loop: Header=BB0_87 Depth=1
	cmpl	$4, %eax
	je	.LBB0_94
# BB#92:                                # %select.end
                                        #   in Loop: Header=BB0_87 Depth=1
	cmpl	$2, %eax
	jne	.LBB0_87
# BB#93:                                # %sw.bb.41.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	jmp	.LBB0_77
.LBB0_95:                               # %sw.bb.65.i.174
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	jmp	.LBB0_83
.LBB0_94:                               # %sw.bb.54.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	jmp	.LBB0_80
.LBB0_96:                               # %while.end.81.i
	movq	%rbx, %rdi
	callq	qualify_buffer
	testb	$2, %al
	je	.LBB0_104
# BB#97:                                # %land.lhs.true.i
	movl	148(%rbx), %r10d
	subl	152(%rbx), %r10d
	jl	.LBB0_104
# BB#98:                                # %if.then.88.i
	testl	%r10d, %r10d
	jle	.LBB0_104
# BB#99:                                # %for.body.lr.ph.i
	movq	128(%rbx), %rcx
	movl	18532(%rcx), %r8d
	addl	144(%rbx), %r8d
	movl	(%r12), %r9d
	decl	%r9d
	movl	(%rbx), %edx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_100:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_102 Depth 2
	testl	%edx, %edx
	jle	.LBB0_103
# BB#101:                               # %for.body.100.lr.ph.i
                                        #   in Loop: Header=BB0_100 Depth=1
	leal	(%r8,%rdi), %ecx
	andl	%r9d, %ecx
	imull	%ecx, %edx
	movslq	%edx, %rsi
	addq	112(%rbx), %rsi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_102:                              # %for.body.100.i
                                        #   Parent Loop BB0_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andb	$-65, (%rsi,%rcx)
	movl	(%rbx), %edx
	incq	%rcx
	cmpl	%edx, %ecx
	jl	.LBB0_102
.LBB0_103:                              # %for.inc.104.i
                                        #   in Loop: Header=BB0_100 Depth=1
	incl	%edi
	cmpl	%r10d, %edi
	jne	.LBB0_100
.LBB0_104:                              # %if.end.107.i
	cmpl	$6, %eax
	je	.LBB0_109
# BB#105:                               # %if.end.107.i
	cmpl	$4, %eax
	jne	.LBB0_106
# BB#108:                               # %sw.bb.119.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	jmp	.LBB0_63
.LBB0_109:                              # %sw.bb.130.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$0, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	encode_col_buf
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_122
# BB#110:                               # %if.then.137.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	jmp	.LBB0_67
.LBB0_106:                              # %if.end.107.i
	cmpl	$2, %eax
	jne	.LBB0_122
# BB#107:                               # %sw.bb.108.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%ebp, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$0, 188(%rbx)
	jmp	.LBB0_120
.LBB0_114:                              # %if.then.4.i
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	movl	%ebp, %r15d
	incl	%r15d
	movl	152(%rbx), %ebp
	jmp	.LBB0_115
	.align	16, 0x90
.LBB0_117:                              #   in Loop: Header=BB0_115 Depth=1
	movl	%ebp, %r15d
.LBB0_115:                              # %if.end.6.i
                                        # =>This Inner Loop Header: Depth=1
	addl	(%r12), %ebp
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	fill_mono_buffer
	testb	$1, %al
	jne	.LBB0_118
# BB#116:                               # %while.body.i.213
                                        #   in Loop: Header=BB0_115 Depth=1
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%r15d, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$0, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
	movl	152(%rbx), %ebp
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	je	.LBB0_114
	jmp	.LBB0_117
.LBB0_118:                              # %while.end.i
	testb	$2, %al
	je	.LBB0_122
# BB#119:                               # %if.then.25.i
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	calcbufmargins
	movl	152(%rbx), %esi
	subl	%r15d, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
.LBB0_120:                              # %if.then.25.i
	movq	%rbx, %rdi
	callq	encode_bw_buf
	cmpl	$1200, 64(%rbx)         # imm = 0x4B0
	jne	.LBB0_122
# BB#121:                               # %if.then.30.i
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
	movl	$1, 188(%rbx)
	movq	%rbx, %rdi
	callq	encode_bw_buf
.LBB0_122:                              # %if.end.34.i
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%rbx, %rdi
	callq	finalizeheader
.LBB0_123:                              # %sw.epilog.189
	movw	$8731, (%rsp)           # imm = 0x221B
	movb	$-128, 2(%rsp)
	movl	80(%rbx), %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	movb	%cl, 3(%rsp)
	movb	%al, 4(%rsp)
	movb	$0, 5(%rsp)
	movb	$0, 6(%rsp)
	addb	%cl, %al
	addb	$-94, %al
	movb	%al, 7(%rsp)
	movl	76(%rbx), %eax
	cmpl	$0, 36(%rbx)
	je	.LBB0_126
# BB#124:                               # %land.lhs.true.i.221
	cmpl	$0, 84(%rbx)
	jne	.LBB0_126
# BB#125:
	addl	$-168, %eax
.LBB0_126:                              # %outputepilogue.exit
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	%eax, %edx
	cmovsl	%ecx, %edx
	movw	$12571, 8(%rsp)         # imm = 0x311B
	movb	$16, 10(%rsp)
	js	.LBB0_128
# BB#127:                               # %outputepilogue.exit
	movb	%al, %cl
.LBB0_128:                              # %outputepilogue.exit
	shrl	$8, %edx
	movb	%dl, 11(%rsp)
	movb	%cl, 12(%rsp)
	movb	$0, 13(%rsp)
	movb	$0, 14(%rsp)
	addb	%dl, %cl
	addb	$65, %cl
	movb	%cl, 15(%rsp)
	movb	$27, 16(%rsp)
	movb	$51, 17(%rsp)
	movb	$0, 18(%rsp)
	movb	$0, 19(%rsp)
	movb	$0, 20(%rsp)
	movb	$0, 21(%rsp)
	movb	$0, 22(%rsp)
	movb	$51, 23(%rsp)
	movq	18680(%r14), %rcx
	leaq	(%rsp), %rdi
	movl	$8, %esi
	movl	$3, %edx
	callq	fwrite
	movq	18672(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB0_130
# BB#129:                               # %if.then.i.229
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
.LBB0_130:                              # %if.end.i.232
	movq	18664(%r14), %rsi
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB0_133
# BB#131:                               # %if.then.7.i.237
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
.LBB0_132:                              # %cleanup
	callq	*24(%rdi)
.LBB0_133:                              # %cleanup
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lxm3200_print_page, .Lfunc_end0-lxm3200_print_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1090781184              # float 8.25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4620918397663497421     # double 8.4000000000000004
	.text
	.align	16, 0x90
	.type	lxm3200_open,@function
lxm3200_open:                           # @lxm3200_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvtsi2ssl	832(%rbx), %xmm0
	divss	884(%rbx), %xmm0
	ucomiss	.LCPI1_0(%rip), %xmm0
	jb	.LBB1_3
# BB#1:                                 # %entry
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB1_3
# BB#2:                                 # %if.then
	movl	$lxm3200_open.a4_margins, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movl	$84, 18504(%rbx)
	movl	$162, 18500(%rbx)
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movl	$lxm3200_open.letter_margins, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movl	$84, 18504(%rbx)
	movl	$300, 18500(%rbx)       # imm = 0x12C
.LBB1_4:                                # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end1:
	.size	lxm3200_open, .Lfunc_end1-lxm3200_open
	.cfi_endproc

	.align	16, 0x90
	.type	lxm3200_map_rgb_color,@function
lxm3200_map_rgb_color:                  # @lxm3200_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 16
	movw	(%rsi), %cx
	movw	2(%rsi), %r9w
	movzwl	%cx, %edx
	movzwl	%r9w, %r8d
	movw	4(%rsi), %r10w
	movzwl	%r10w, %eax
	cmpl	%r8d, %edx
	jne	.LBB2_3
# BB#1:                                 # %entry
	cmpl	%eax, %edx
	jne	.LBB2_3
# BB#2:                                 # %if.then
	testw	%cx, %cx
	setns	%al
	movzbl	%al, %eax
	shlq	$6, %rax
	popq	%rdx
	retq
.LBB2_3:                                # %if.end
	xorl	$65535, %edx            # imm = 0xFFFF
	xorl	$65535, %r8d            # imm = 0xFFFF
	xorl	$32768, %eax            # imm = 0x8000
	cmpl	$32767, %eax            # imm = 0x7FFF
	seta	%al
	movzbl	%al, %eax
	shlq	$2, %rax
	movl	18472(%rdi), %esi
	cmpl	$2, %esi
	jne	.LBB2_4
# BB#6:                                 # %sw.bb.32
	cmpl	$43691, %edx            # imm = 0xAAAB
	jb	.LBB2_8
# BB#7:                                 # %if.then.35
	orq	$2, %rax
	jmp	.LBB2_9
.LBB2_4:                                # %if.end
	cmpl	$1, %esi
	jne	.LBB2_12
# BB#5:                                 # %sw.bb
	movq	%rax, %rcx
	orq	$2, %rcx
	cmpl	$32767, %edx            # imm = 0x7FFF
	cmovbeq	%rax, %rcx
	cmpl	$32767, %r8d            # imm = 0x7FFF
	seta	%al
	movzbl	%al, %eax
	orq	%rcx, %rax
	popq	%rdx
	retq
.LBB2_8:                                # %if.else.37
	movq	%rax, %rcx
	orq	$16, %rcx
	cmpl	$21845, %edx            # imm = 0x5555
	cmovaq	%rcx, %rax
.LBB2_9:                                # %if.end.43
	cmpl	$43691, %r8d            # imm = 0xAAAB
	jb	.LBB2_11
# BB#10:                                # %if.then.46
	orq	$1, %rax
	popq	%rdx
	retq
.LBB2_12:                               # %sw.default
	movw	%cx, 2(%rsp)
	movw	%r9w, 4(%rsp)
	movw	%r10w, 6(%rsp)
	leaq	2(%rsp), %rsi
	callq	gx_default_b_w_map_rgb_color
	popq	%rdx
	retq
.LBB2_11:                               # %if.else.48
	movq	%rax, %rcx
	orq	$32, %rcx
	cmpl	$21845, %r8d            # imm = 0x5555
	cmovaq	%rcx, %rax
	popq	%rdx
	retq
.Lfunc_end2:
	.size	lxm3200_map_rgb_color, .Lfunc_end2-lxm3200_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	lxm3200_map_color_rgb,@function
lxm3200_map_color_rgb:                  # @lxm3200_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB3_1
# BB#2:                                 # %if.end
	testb	$64, %sil
	jne	.LBB3_3
# BB#4:                                 # %if.end.7
	cmpl	$1, 18472(%rdi)
	jne	.LBB3_6
# BB#5:                                 # %sw.bb
	movl	%esi, %r8d
	andl	$2, %r8d
	leal	(%rsi,%rsi), %ecx
	andl	$2, %ecx
	jmp	.LBB3_7
.LBB3_1:                                # %if.then
	movl	$-1, (%rdx)
	movw	$-1, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB3_3:                                # %if.then.3
	movl	$0, (%rdx)
	movw	$0, 4(%rdx)
	xorl	%eax, %eax
	retq
.LBB3_6:                                # %sw.default
	movl	%esi, %r8d
	shrl	$4, %r8d
	andl	$1, %r8d
	movl	%esi, %ecx
	shrl	$5, %ecx
	andl	$1, %ecx
	testb	$2, %sil
	movw	$2, %di
	cmovnew	%di, %r8w
	testb	$1, %sil
	cmovnew	%di, %cx
.LBB3_7:                                # %sw.epilog
	shrl	%esi
	notl	%esi
	movl	$2, %edi
	movl	$2, %eax
	subl	%r8d, %eax
	imull	$32767, %eax, %eax      # imm = 0x7FFF
	movw	%ax, (%rdx)
	subl	%ecx, %edi
	imull	$32767, %edi, %eax      # imm = 0x7FFF
	movw	%ax, 2(%rdx)
	andl	$2, %esi
	imull	$32767, %esi, %eax      # imm = 0x7FFF
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	lxm3200_map_color_rgb, .Lfunc_end3-lxm3200_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	lxm3200_get_params,@function
lxm3200_get_params:                     # @lxm3200_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 32
.Ltmp17:
	.cfi_offset %rbx, -24
.Ltmp18:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB4_9
# BB#1:                                 # %if.end
	leaq	18476(%rbx), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_9
# BB#2:                                 # %if.end.4
	leaq	18480(%rbx), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_9
# BB#3:                                 # %if.end.8
	leaq	18484(%rbx), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_9
# BB#4:                                 # %if.end.12
	leaq	18488(%rbx), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_9
# BB#5:                                 # %if.end.16
	leaq	18492(%rbx), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_9
# BB#6:                                 # %if.end.20
	leaq	18496(%rbx), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_9
# BB#7:                                 # %if.end.24
	leaq	18472(%rbx), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_9
# BB#8:                                 # %if.end.28
	leaq	18508(%rbx), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_9
# BB#10:                                # %if.end.32
	addq	$18512, %rbx            # imm = 0x4850
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_int         # TAILCALL
.LBB4_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	lxm3200_get_params, .Lfunc_end4-lxm3200_get_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI5_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
.LCPI5_2:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.text
	.align	16, 0x90
	.type	lxm3200_put_params,@function
lxm3200_put_params:                     # @lxm3200_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 64
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	18476(%rbx), %eax
	movl	%eax, 36(%rsp)
	movl	18480(%rbx), %eax
	movl	%eax, 32(%rsp)
	movl	18484(%rbx), %eax
	movl	%eax, 28(%rsp)
	movl	18488(%rbx), %eax
	movl	%eax, 24(%rsp)
	movl	18492(%rbx), %eax
	movl	%eax, 20(%rsp)
	movl	18496(%rbx), %eax
	movl	%eax, 16(%rsp)
	movl	18472(%rbx), %eax
	movl	%eax, 12(%rsp)
	movl	18508(%rbx), %eax
	movl	%eax, 8(%rsp)
	movl	18512(%rbx), %eax
	movl	%eax, 4(%rsp)
	leaq	36(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#1:                                 # %if.end
	cmpl	$31, 36(%rsp)
	jb	.LBB5_3
# BB#2:                                 # %if.then.11
	movq	(%r14), %rax
	movl	$.L.str.2, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB5_3:                                # %if.end.13
	leaq	32(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#4:                                 # %if.end.17
	cmpl	$16, 32(%rsp)
	jb	.LBB5_6
# BB#5:                                 # %if.then.21
	movq	(%r14), %rax
	movl	$.L.str.3, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB5_6:                                # %if.end.25
	leaq	28(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#7:                                 # %if.end.29
	cmpl	$31, 28(%rsp)
	jb	.LBB5_9
# BB#8:                                 # %if.then.33
	movq	(%r14), %rax
	movl	$.L.str.4, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB5_9:                                # %if.end.37
	leaq	24(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#10:                                # %if.end.41
	cmpl	$31, 24(%rsp)
	jb	.LBB5_12
# BB#11:                                # %if.then.45
	movq	(%r14), %rax
	movl	$.L.str.5, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB5_12:                               # %if.end.49
	leaq	20(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#13:                                # %if.end.53
	cmpl	$2, 20(%rsp)
	jb	.LBB5_15
# BB#14:                                # %if.then.56
	movq	(%r14), %rax
	movl	$.L.str.6, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB5_15:                               # %if.end.60
	leaq	16(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#16:                                # %if.end.64
	movl	16(%rsp), %eax
	decl	%eax
	cmpl	$16, %eax
	jb	.LBB5_18
# BB#17:                                # %if.then.68
	movq	(%r14), %rax
	movl	$.L.str.7, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB5_18:                               # %if.end.72
	leaq	12(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#19:                                # %if.end.76
	cmpl	$3, 12(%rsp)
	jb	.LBB5_21
# BB#20:                                # %if.then.82
	movq	(%r14), %rax
	movl	$.L.str.8, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB5_21:                               # %if.end.86
	leaq	8(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#22:                                # %if.end.90
	cmpl	$3, 8(%rsp)
	jb	.LBB5_24
# BB#23:                                # %if.then.94
	movq	(%r14), %rax
	movl	$.L.str.9, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB5_24:                               # %if.end.98
	leaq	4(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	js	.LBB5_33
# BB#25:                                # %if.end.102
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_put_params
	testl	%eax, %eax
	js	.LBB5_33
# BB#26:                                # %if.end.106
	movl	36(%rsp), %eax
	movl	%eax, 18476(%rbx)
	movl	32(%rsp), %eax
	movl	%eax, 18480(%rbx)
	movl	28(%rsp), %eax
	movl	%eax, 18484(%rbx)
	movl	24(%rsp), %eax
	movl	%eax, 18488(%rbx)
	movl	20(%rsp), %eax
	movl	%eax, 18492(%rbx)
	movl	16(%rsp), %eax
	movl	%eax, 18496(%rbx)
	movl	12(%rsp), %ecx
	movl	%ecx, 18472(%rbx)
	movl	8(%rsp), %eax
	movl	%eax, 18508(%rbx)
	movl	4(%rsp), %eax
	movl	%eax, 18512(%rbx)
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB5_31
# BB#27:                                # %if.end.106
	cmpl	$1, %ecx
	jne	.LBB5_28
# BB#30:                                # %sw.bb.120
	movl	$3, 100(%rbx)
	movaps	.LCPI5_1(%rip), %xmm0   # xmm0 = [1,1,2,2]
	jmp	.LBB5_32
.LBB5_31:                               # %sw.bb.131
	movl	$3, 100(%rbx)
	movaps	.LCPI5_0(%rip), %xmm0   # xmm0 = [1,2,2,3]
	jmp	.LBB5_32
.LBB5_28:                               # %if.end.106
	testl	%ecx, %ecx
	jne	.LBB5_33
# BB#29:                                # %sw.bb
	movl	$1, 100(%rbx)
	movaps	.LCPI5_2(%rip), %xmm0   # xmm0 = [1,0,2,0]
.LBB5_32:                               # %cleanup
	movups	%xmm0, 112(%rbx)
.LBB5_33:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	lxm3200_put_params, .Lfunc_end5-lxm3200_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	init_buffer,@function
init_buffer:                            # @init_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 64
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	cmpl	$0, 20(%r15)
	je	.LBB6_1
# BB#2:                                 # %if.end
	movslq	8(%r15), %r12
	movl	72(%r15), %ecx
	movl	$368, %eax              # imm = 0x170
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ebx
	movl	$144, %eax
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %r14d
	movl	%ebx, %eax
	negl	%eax
	movl	%eax, 152(%r15)
	movl	%ebx, %eax
	notl	%eax
	movl	%eax, 148(%r15)
	movq	112(%r15), %rbp
	testl	%ebx, %ebx
	jle	.LBB6_5
# BB#3:                                 # %for.body.lr.ph
	movl	(%r15), %eax
	.align	16, 0x90
.LBB6_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movslq	(%r15), %rax
	addq	%rax, %rbp
	decl	%ebx
	jne	.LBB6_4
.LBB6_5:                                # %for.cond.9.preheader
	testl	%r14d, %r14d
	jle	.LBB6_11
# BB#6:                                 # %for.body.12.lr.ph
	movl	(%r15), %eax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB6_7:                                # %for.body.12
                                        # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	cmpl	24(%r15), %ebx
	jge	.LBB6_10
# BB#8:                                 # %if.then.18
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	128(%r15), %rdi
	leaq	(%rbp,%r12), %r13
	movl	%ebx, %esi
	movq	%r13, %rdx
	leaq	(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	(%rsp), %rsi
	cmpq	%r13, %rsi
	je	.LBB6_10
# BB#9:                                 # %if.then.26
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	4(%r15), %rdx
	movq	%r13, %rdi
	callq	memcpy
.LBB6_10:                               # %if.end.32
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	(%r15), %rax
	addq	%rax, %rbp
	incl	%ebx
	cmpl	%ebx, %r14d
	jne	.LBB6_7
.LBB6_11:                               # %for.end.38
	movl	$0, 144(%r15)
	cmpl	%r14d, 24(%r15)
	setl	%al
	movzbl	%al, %ebx
	movq	%r15, %rdi
	callq	qualify_buffer
	orl	%ebx, %eax
	jmp	.LBB6_12
.LBB6_1:                                # %if.then
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	fill_mono_buffer
.LBB6_12:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	init_buffer, .Lfunc_end6-init_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	roll_buffer,@function
roll_buffer:                            # @roll_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 80
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	72(%r14), %esi
	movl	$128, %eax
	xorl	%edx, %edx
	idivl	%esi
	movl	%eax, %r15d
	movl	12(%r14), %ecx
	movl	24(%r14), %edi
	leal	-1(%rcx), %ebp
	movl	$224, %eax
	xorl	%edx, %edx
	idivl	%esi
	subl	%eax, %edi
	movl	144(%r14), %r12d
	leal	(%r12,%r15), %eax
	andl	%ebp, %eax
	movl	%eax, 144(%r14)
	movl	152(%r14), %r13d
	movslq	8(%r14), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leal	(%r13,%r15), %eax
	movl	%eax, 152(%r14)
	cmpl	%edi, %eax
	setge	%al
	movzbl	%al, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	testl	%r15d, %r15d
	jle	.LBB7_6
# BB#1:                                 # %for.body.lr.ph
	addl	%ecx, %r13d
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	andl	%ebp, %eax
	movslq	(%r14), %rdx
	movslq	%eax, %rbx
	imulq	%rdx, %rbx
	addq	112(%r14), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	cmpl	24(%r14), %r13d
	jge	.LBB7_5
# BB#3:                                 # %if.then.17
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	128(%r14), %rdi
	addq	8(%rsp), %rbx           # 8-byte Folded Reload
	movl	%r13d, %esi
	movq	%rbx, %rdx
	leaq	16(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	16(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.LBB7_5
# BB#4:                                 # %if.then.25
                                        #   in Loop: Header=BB7_2 Depth=1
	movslq	4(%r14), %rdx
	movq	%rbx, %rdi
	callq	memcpy
.LBB7_5:                                # %if.end.31
                                        #   in Loop: Header=BB7_2 Depth=1
	incl	%r13d
	incl	%r12d
	decl	%r15d
	jne	.LBB7_2
.LBB7_6:                                # %for.end
	movq	%r14, %rdi
	callq	qualify_buffer
	orl	4(%rsp), %eax           # 4-byte Folded Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	roll_buffer, .Lfunc_end7-roll_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	calcbufmargins,@function
calcbufmargins:                         # @calcbufmargins
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	12(%rdi), %r9d
	movl	72(%rdi), %ecx
	xorl	%r14d, %r14d
	movl	$128, %eax
	xorl	%edx, %edx
	idivl	%ecx
	leal	-1(%r9), %edx
	movl	%edx, -24(%rsp)         # 4-byte Spill
	cmpl	$1, %esi
	je	.LBB8_3
# BB#1:                                 # %lor.lhs.false
	movl	20(%rdi), %edx
	testl	%edx, %edx
	jne	.LBB8_2
# BB#29:                                # %if.then.47
	movq	112(%rdi), %rcx
	movslq	(%rdi), %r13
	leaq	-1(%r13), %r10
	xorl	%r12d, %r12d
	testq	%r13, %r13
	movl	%r10d, %r11d
	jle	.LBB8_39
# BB#30:                                # %land.rhs.lr.ph.i.166
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB8_31:                               # %land.rhs.i.172
                                        # =>This Inner Loop Header: Depth=1
	testb	$64, (%rcx,%r12)
	jne	.LBB8_32
# BB#34:                                # %while.body.i.179
                                        #   in Loop: Header=BB8_31 Depth=1
	cmpq	%r10, %r12
	leaq	1(%r12), %r12
	jl	.LBB8_31
.LBB8_32:                               # %while.cond.3.preheader.i.175
	testl	%r13d, %r13d
	jle	.LBB8_33
# BB#35:                                # %land.rhs.6.lr.ph.i.176
	movq	%r10, %rax
	.align	16, 0x90
.LBB8_36:                               # %land.rhs.6.i.187
                                        # =>This Inner Loop Header: Depth=1
	testb	$64, (%rcx,%rax)
	jne	.LBB8_38
# BB#37:                                # %while.body.14.i.190
                                        #   in Loop: Header=BB8_36 Depth=1
	leaq	-1(%rax), %r11
	incq	%rax
	cmpq	$1, %rax
	movq	%r11, %rax
	jg	.LBB8_36
	jmp	.LBB8_39
.LBB8_2:                                # %lor.lhs.false
	cmpl	$2, %edx
	jne	.LBB8_52
.LBB8_3:                                # %if.then
	testl	%esi, %esi
	sete	%cl
	movq	112(%rdi), %r10
	movq	128(%rdi), %rbp
	movzbl	%cl, %ecx
	movl	18528(%rbp,%rcx,8), %ecx
	addl	144(%rdi), %ecx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movslq	(%rdi), %r12
	movq	%rdi, -48(%rsp)         # 8-byte Spill
	leaq	-1(%r12), %r11
	testq	%r12, %r12
	movslq	%esi, %rcx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movb	colmask(%rcx,%rcx,2), %bl
	movl	%r11d, %r13d
	jle	.LBB8_13
# BB#4:                                 # %land.rhs.lr.ph.i
	movl	18516(%rbp), %ecx
	movq	-8(%rsp), %rdx          # 8-byte Reload
	addl	%edx, %ecx
	movl	-24(%rsp), %edx         # 4-byte Reload
	andl	%edx, %ecx
	movl	%r12d, %edx
	imull	%ecx, %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%r10), %rdx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB8_5:                                # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	testb	(%rdx,%r14), %bl
	jne	.LBB8_6
# BB#8:                                 # %while.body.i
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpq	%r11, %r14
	leaq	1(%r14), %r14
	jl	.LBB8_5
.LBB8_6:                                # %while.cond.3.preheader.i
	testl	%r12d, %r12d
	jle	.LBB8_7
# BB#9:                                 # %land.rhs.6.lr.ph.i
	imull	%r12d, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r10), %rdx
	movq	%r11, %rcx
	.align	16, 0x90
.LBB8_10:                               # %land.rhs.6.i
                                        # =>This Inner Loop Header: Depth=1
	testb	(%rdx,%rcx), %bl
	jne	.LBB8_12
# BB#11:                                # %while.body.14.i
                                        #   in Loop: Header=BB8_10 Depth=1
	leaq	-1(%rcx), %r13
	incq	%rcx
	cmpq	$1, %rcx
	movq	%r13, %rcx
	jg	.LBB8_10
	jmp	.LBB8_13
.LBB8_7:
	movl	%r11d, %r13d
	jmp	.LBB8_13
.LBB8_52:                               # %if.end.74
	movl	16(%rdi), %eax
	addl	%eax, %eax
	cltd
	idivl	%ecx
	movq	128(%rdi), %rcx
	movl	18532(%rcx), %r9d
	addl	144(%rdi), %r9d
	movq	112(%rdi), %r10
	movslq	(%rdi), %r8
	leaq	-1(%r8), %r14
	xorl	%r12d, %r12d
	testq	%r8, %r8
	movl	%r14d, %r15d
	jle	.LBB8_62
# BB#53:                                # %land.rhs.lr.ph.i.102
	movl	%r9d, %edx
	andl	-24(%rsp), %edx         # 4-byte Folded Reload
	movl	%r8d, %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r10), %rcx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB8_54:                               # %land.rhs.i.108
                                        # =>This Inner Loop Header: Depth=1
	testb	$64, (%rcx,%r12)
	jne	.LBB8_55
# BB#57:                                # %while.body.i.115
                                        #   in Loop: Header=BB8_54 Depth=1
	cmpq	%r14, %r12
	leaq	1(%r12), %r12
	jl	.LBB8_54
.LBB8_55:                               # %while.cond.3.preheader.i.111
	testl	%r8d, %r8d
	jle	.LBB8_56
# BB#58:                                # %land.rhs.6.lr.ph.i.112
	imull	%r8d, %edx
	movslq	%edx, %rcx
	leaq	(%rcx,%r10), %rdx
	movq	%r14, %rsi
	.align	16, 0x90
.LBB8_59:                               # %land.rhs.6.i.123
                                        # =>This Inner Loop Header: Depth=1
	testb	$64, (%rdx,%rsi)
	jne	.LBB8_61
# BB#60:                                # %while.body.14.i.126
                                        #   in Loop: Header=BB8_59 Depth=1
	leaq	-1(%rsi), %r15
	incq	%rsi
	cmpq	$1, %rsi
	movq	%r15, %rsi
	jg	.LBB8_59
	jmp	.LBB8_62
.LBB8_12:                               # %land.rhs.6.while.end.15_crit_edge.i
	movl	%ecx, %r13d
.LBB8_13:                               # %for.cond.11.preheader
	movslq	%r11d, %rsi
	testl	%eax, %eax
	jle	.LBB8_14
# BB#15:                                # %for.body.14.lr.ph
	movq	%rbp, -32(%rsp)         # 8-byte Spill
	movl	18516(%rbp), %r9d
	leaq	-1(%r12), %rcx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movl	-24(%rsp), %ebp         # 4-byte Reload
	.align	16, 0x90
.LBB8_16:                               # %for.body.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
                                        #     Child Loop BB8_23 Depth 2
	testl	%r12d, %r12d
	movl	$0, %r8d
	movl	%r11d, %edx
	jle	.LBB8_26
# BB#17:                                # %land.rhs.i.204.preheader
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	-8(%rsp), %rcx          # 8-byte Reload
	leal	(%r15,%rcx), %edx
	addl	%r9d, %edx
	andl	%ebp, %edx
	movl	%r12d, %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r10), %rcx
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB8_18:                               # %land.rhs.i.204
                                        #   Parent Loop BB8_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	(%rcx,%r8), %bl
	jne	.LBB8_19
# BB#21:                                # %while.body.i.211
                                        #   in Loop: Header=BB8_18 Depth=2
	cmpq	%rsi, %r8
	leaq	1(%r8), %r8
	jl	.LBB8_18
.LBB8_19:                               # %while.cond.3.preheader.i.207
                                        #   in Loop: Header=BB8_16 Depth=1
	testl	%r12d, %r12d
	jle	.LBB8_20
# BB#22:                                # %land.rhs.6.i.219.preheader
                                        #   in Loop: Header=BB8_16 Depth=1
	imull	%r12d, %edx
	movslq	%edx, %rcx
	leaq	(%rcx,%r10), %rcx
	movq	-16(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB8_23:                               # %land.rhs.6.i.219
                                        #   Parent Loop BB8_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	(%rcx,%rdi), %bl
	jne	.LBB8_25
# BB#24:                                # %while.body.14.i.222
                                        #   in Loop: Header=BB8_23 Depth=2
	leaq	-1(%rdi), %rdx
	incq	%rdi
	cmpq	$1, %rdi
	movq	%rdx, %rdi
	jg	.LBB8_23
	jmp	.LBB8_26
	.align	16, 0x90
.LBB8_20:                               #   in Loop: Header=BB8_16 Depth=1
	movl	%r11d, %edx
	jmp	.LBB8_26
.LBB8_25:                               # %land.rhs.6.while.end.15_crit_edge.i.223
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	%edi, %edx
	.align	16, 0x90
.LBB8_26:                               # %calclinemargins.exit226
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	%r8d, %r14d
	cmovgl	%r8d, %r14d
	cmpl	%edx, %r13d
	cmovgel	%r13d, %edx
	incl	%r15d
	cmpl	%eax, %r15d
	movl	%edx, %r13d
	jne	.LBB8_16
	jmp	.LBB8_27
.LBB8_14:
	movq	%rbp, -32(%rsp)         # 8-byte Spill
	movl	%r13d, %edx
	movl	-24(%rsp), %ebp         # 4-byte Reload
.LBB8_27:                               # %for.inc.41
	movl	%ebp, %r15d
	testl	%eax, %eax
	jle	.LBB8_28
# BB#78:                                # %for.body.14.lr.ph.1
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movl	18520(%rcx), %ecx
	movl	%ecx, -16(%rsp)         # 4-byte Spill
	movq	-40(%rsp), %rcx         # 8-byte Reload
	movb	colmask+1(%rcx,%rcx,2), %cl
	leaq	-1(%r12), %rdi
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB8_79:                               # %for.body.14.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_81 Depth 2
                                        #     Child Loop BB8_86 Depth 2
	testl	%r12d, %r12d
	movl	$0, %edi
	movl	%r11d, %r13d
	jle	.LBB8_89
# BB#80:                                # %land.rhs.i.204.preheader.1
                                        #   in Loop: Header=BB8_79 Depth=1
	movq	-8(%rsp), %rdi          # 8-byte Reload
	leal	(%r9,%rdi), %ebx
	addl	-16(%rsp), %ebx         # 4-byte Folded Reload
	andl	%r15d, %ebx
	movl	%r12d, %edi
	imull	%ebx, %edi
	movslq	%edi, %rdi
	leaq	(%rdi,%r10), %rbp
	xorl	%edi, %edi
	.align	16, 0x90
.LBB8_81:                               # %land.rhs.i.204.1
                                        #   Parent Loop BB8_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	(%rbp,%rdi), %cl
	jne	.LBB8_83
# BB#82:                                # %while.body.i.211.1
                                        #   in Loop: Header=BB8_81 Depth=2
	cmpq	%rsi, %rdi
	leaq	1(%rdi), %rdi
	jl	.LBB8_81
.LBB8_83:                               # %while.cond.3.preheader.i.207.1
                                        #   in Loop: Header=BB8_79 Depth=1
	testl	%r12d, %r12d
	jle	.LBB8_84
# BB#85:                                # %land.rhs.6.i.219.preheader.1
                                        #   in Loop: Header=BB8_79 Depth=1
	imull	%r12d, %ebx
	movslq	%ebx, %rbp
	leaq	(%rbp,%r10), %r8
	movq	-24(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB8_86:                               # %land.rhs.6.i.219.1
                                        #   Parent Loop BB8_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	(%r8,%rbx), %cl
	jne	.LBB8_87
# BB#88:                                # %while.body.14.i.222.1
                                        #   in Loop: Header=BB8_86 Depth=2
	leaq	-1(%rbx), %r13
	incq	%rbx
	cmpq	$1, %rbx
	movq	%r13, %rbx
	jg	.LBB8_86
	jmp	.LBB8_89
	.align	16, 0x90
.LBB8_84:                               #   in Loop: Header=BB8_79 Depth=1
	movl	%r11d, %r13d
	jmp	.LBB8_89
.LBB8_87:                               # %land.rhs.6.while.end.15_crit_edge.i.223.1
                                        #   in Loop: Header=BB8_79 Depth=1
	movl	%ebx, %r13d
	.align	16, 0x90
.LBB8_89:                               # %calclinemargins.exit226.1
                                        #   in Loop: Header=BB8_79 Depth=1
	cmpl	%edi, %r14d
	cmovgl	%edi, %r14d
	cmpl	%r13d, %edx
	cmovgel	%edx, %r13d
	incl	%r9d
	cmpl	%eax, %r9d
	movl	%r13d, %edx
	jne	.LBB8_79
	jmp	.LBB8_90
.LBB8_28:
	movl	%edx, %r13d
.LBB8_90:                               # %for.inc.41.1
	testl	%eax, %eax
	movl	%r15d, %r9d
	jle	.LBB8_91
# BB#92:                                # %for.body.14.lr.ph.2
	movq	-32(%rsp), %rcx         # 8-byte Reload
	movl	18524(%rcx), %r8d
	movq	-40(%rsp), %rcx         # 8-byte Reload
	movb	colmask+2(%rcx,%rcx,2), %cl
	leaq	-1(%r12), %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_93:                               # %for.body.14.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_95 Depth 2
                                        #     Child Loop BB8_100 Depth 2
	testl	%r12d, %r12d
	movl	$0, %edi
	movl	%r11d, %edx
	jle	.LBB8_103
# BB#94:                                # %land.rhs.i.204.preheader.2
                                        #   in Loop: Header=BB8_93 Depth=1
	movq	-8(%rsp), %rdx          # 8-byte Reload
	leal	(%rbp,%rdx), %edx
	addl	%r8d, %edx
	andl	%r9d, %edx
	movl	%r12d, %edi
	imull	%edx, %edi
	movslq	%edi, %rdi
	leaq	(%rdi,%r10), %rbx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB8_95:                               # %land.rhs.i.204.2
                                        #   Parent Loop BB8_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	(%rbx,%rdi), %cl
	jne	.LBB8_97
# BB#96:                                # %while.body.i.211.2
                                        #   in Loop: Header=BB8_95 Depth=2
	cmpq	%rsi, %rdi
	leaq	1(%rdi), %rdi
	jl	.LBB8_95
.LBB8_97:                               # %while.cond.3.preheader.i.207.2
                                        #   in Loop: Header=BB8_93 Depth=1
	testl	%r12d, %r12d
	jle	.LBB8_98
# BB#99:                                # %land.rhs.6.i.219.preheader.2
                                        #   in Loop: Header=BB8_93 Depth=1
	imull	%r12d, %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%r10), %r15
	movq	-16(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB8_100:                              # %land.rhs.6.i.219.2
                                        #   Parent Loop BB8_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	(%r15,%rbx), %cl
	jne	.LBB8_101
# BB#102:                               # %while.body.14.i.222.2
                                        #   in Loop: Header=BB8_100 Depth=2
	leaq	-1(%rbx), %rdx
	incq	%rbx
	cmpq	$1, %rbx
	movq	%rdx, %rbx
	jg	.LBB8_100
	jmp	.LBB8_103
	.align	16, 0x90
.LBB8_98:                               #   in Loop: Header=BB8_93 Depth=1
	movl	%r11d, %edx
	jmp	.LBB8_103
.LBB8_101:                              # %land.rhs.6.while.end.15_crit_edge.i.223.2
                                        #   in Loop: Header=BB8_93 Depth=1
	movl	%ebx, %edx
	.align	16, 0x90
.LBB8_103:                              # %calclinemargins.exit226.2
                                        #   in Loop: Header=BB8_93 Depth=1
	cmpl	%edi, %r14d
	cmovgl	%edi, %r14d
	cmpl	%edx, %r13d
	cmovgel	%r13d, %edx
	incl	%ebp
	cmpl	%eax, %ebp
	movl	%edx, %r13d
	jne	.LBB8_93
	jmp	.LBB8_104
.LBB8_91:
	movl	%r13d, %edx
.LBB8_104:                              # %for.inc.41.2
	movq	-48(%rsp), %rax         # 8-byte Reload
	movl	%r14d, 136(%rax)
	movl	%edx, 140(%rax)
	jmp	.LBB8_77
.LBB8_33:
	movl	%r10d, %r11d
	jmp	.LBB8_39
.LBB8_38:                               # %land.rhs.6.while.end.15_crit_edge.i.191
	movl	%eax, %r11d
.LBB8_39:                               # %for.cond.49.preheader
	cmpl	$2, %r9d
	jl	.LBB8_40
# BB#41:                                # %for.body.53.lr.ph
	movslq	%r10d, %rbp
	leaq	-1(%r13), %r8
	leaq	-1(%rcx,%r13,2), %r14
	movl	$1, %r15d
	.align	16, 0x90
.LBB8_42:                               # %for.body.53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_43 Depth 2
                                        #     Child Loop BB8_47 Depth 2
	xorl	%esi, %esi
	testl	%r13d, %r13d
	movl	%r10d, %edx
	jle	.LBB8_50
	.align	16, 0x90
.LBB8_43:                               # %land.rhs.i.140
                                        #   Parent Loop BB8_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r13,%rsi), %rax
	testb	$64, (%rcx,%rax)
	jne	.LBB8_44
# BB#46:                                # %while.body.i.147
                                        #   in Loop: Header=BB8_43 Depth=2
	cmpq	%rbp, %rsi
	leaq	1(%rsi), %rsi
	jl	.LBB8_43
.LBB8_44:                               # %while.cond.3.preheader.i.143
                                        #   in Loop: Header=BB8_42 Depth=1
	testl	%r13d, %r13d
	movq	%r14, %rbx
	movq	%r8, %rax
	jle	.LBB8_45
	.align	16, 0x90
.LBB8_47:                               # %land.rhs.6.i.155
                                        #   Parent Loop BB8_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$64, (%rbx)
	jne	.LBB8_49
# BB#48:                                # %while.body.14.i.158
                                        #   in Loop: Header=BB8_47 Depth=2
	leaq	-1(%rax), %rdx
	incq	%rax
	decq	%rbx
	cmpq	$1, %rax
	movq	%rdx, %rax
	jg	.LBB8_47
	jmp	.LBB8_50
	.align	16, 0x90
.LBB8_45:                               #   in Loop: Header=BB8_42 Depth=1
	movl	%r10d, %edx
	jmp	.LBB8_50
.LBB8_49:                               # %land.rhs.6.while.end.15_crit_edge.i.159
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	%eax, %edx
	.align	16, 0x90
.LBB8_50:                               # %calclinemargins.exit162
                                        #   in Loop: Header=BB8_42 Depth=1
	addq	%r13, %rcx
	cmpl	%esi, %r12d
	cmovgl	%esi, %r12d
	cmpl	%edx, %r11d
	cmovgel	%r11d, %edx
	incl	%r15d
	addq	%r13, %r14
	cmpl	%r9d, %r15d
	movl	%edx, %r11d
	jl	.LBB8_42
	jmp	.LBB8_51
.LBB8_40:
	movl	%r11d, %edx
.LBB8_51:                               # %for.end.71
	movl	%r12d, 136(%rdi)
	movl	%edx, 140(%rdi)
	jmp	.LBB8_77
.LBB8_56:
	movl	%r14d, %r15d
	jmp	.LBB8_62
.LBB8_61:                               # %land.rhs.6.while.end.15_crit_edge.i.127
	movl	%esi, %r15d
.LBB8_62:                               # %for.cond.89.preheader
	cmpl	$2, %eax
	jl	.LBB8_63
# BB#64:                                # %for.body.92.lr.ph
	movslq	%r14d, %rbp
	leaq	-1(%r8), %r11
	movl	$1, %r13d
	.align	16, 0x90
.LBB8_65:                               # %for.body.92
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_67 Depth 2
                                        #     Child Loop BB8_72 Depth 2
	testl	%r8d, %r8d
	movl	$0, %esi
	movl	%r14d, %ebx
	jle	.LBB8_75
# BB#66:                                # %land.rhs.i.76.preheader
                                        #   in Loop: Header=BB8_65 Depth=1
	leal	(%r13,%r9), %edx
	andl	-24(%rsp), %edx         # 4-byte Folded Reload
	movl	%r8d, %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r10), %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB8_67:                               # %land.rhs.i.76
                                        #   Parent Loop BB8_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$64, (%rcx,%rsi)
	jne	.LBB8_68
# BB#70:                                # %while.body.i.83
                                        #   in Loop: Header=BB8_67 Depth=2
	cmpq	%rbp, %rsi
	leaq	1(%rsi), %rsi
	jl	.LBB8_67
.LBB8_68:                               # %while.cond.3.preheader.i.79
                                        #   in Loop: Header=BB8_65 Depth=1
	testl	%r8d, %r8d
	jle	.LBB8_69
# BB#71:                                # %land.rhs.6.i.91.preheader
                                        #   in Loop: Header=BB8_65 Depth=1
	imull	%r8d, %edx
	movslq	%edx, %rcx
	leaq	(%rcx,%r10), %rcx
	movq	%r11, %rdx
	.align	16, 0x90
.LBB8_72:                               # %land.rhs.6.i.91
                                        #   Parent Loop BB8_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$64, (%rcx,%rdx)
	jne	.LBB8_74
# BB#73:                                # %while.body.14.i.94
                                        #   in Loop: Header=BB8_72 Depth=2
	leaq	-1(%rdx), %rbx
	incq	%rdx
	cmpq	$1, %rdx
	movq	%rbx, %rdx
	jg	.LBB8_72
	jmp	.LBB8_75
	.align	16, 0x90
.LBB8_69:                               #   in Loop: Header=BB8_65 Depth=1
	movl	%r14d, %ebx
	jmp	.LBB8_75
.LBB8_74:                               # %land.rhs.6.while.end.15_crit_edge.i.95
                                        #   in Loop: Header=BB8_65 Depth=1
	movl	%edx, %ebx
	.align	16, 0x90
.LBB8_75:                               # %calclinemargins.exit98
                                        #   in Loop: Header=BB8_65 Depth=1
	cmpl	%esi, %r12d
	cmovgl	%esi, %r12d
	cmpl	%ebx, %r15d
	cmovgel	%r15d, %ebx
	incl	%r13d
	cmpl	%eax, %r13d
	movl	%ebx, %r15d
	jne	.LBB8_65
	jmp	.LBB8_76
.LBB8_63:
	movl	%r15d, %ebx
.LBB8_76:                               # %for.end.114
	movl	%r12d, 136(%rdi)
	movl	%ebx, 140(%rdi)
.LBB8_77:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	calcbufmargins, .Lfunc_end8-calcbufmargins
	.cfi_endproc

	.align	16, 0x90
	.type	encode_col_buf,@function
encode_col_buf:                         # @encode_col_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 192
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movq	%rdi, %r14
	movl	64(%r14), %esi
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	cmpl	$300, %esi              # imm = 0x12C
	jne	.LBB9_2
# BB#1:
	movl	$32, %r15d
	movl	$127, 132(%rsp)         # 4-byte Folded Spill
	movl	$1, %r12d
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
	jmp	.LBB9_5
.LBB9_2:                                # %entry
	cmpl	$1200, %esi             # imm = 0x4B0
	jne	.LBB9_3
# BB#4:                                 # %sw.bb.2
	cmpl	$0, 188(%r14)
	setne	%al
	movzbl	%al, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leal	2(%rax), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	$128, %r15d
	movl	$511, 132(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x1FF
	movl	$4, %r12d
	jmp	.LBB9_5
.LBB9_3:                                # %sw.bb.1
	movl	$64, %r15d
	movl	$255, 132(%rsp)         # 4-byte Folded Spill
	movl	$2, %r12d
	movl	$1, 116(%rsp)           # 4-byte Folded Spill
.LBB9_5:                                # %sw.epilog
	movq	128(%r14), %rax
	leaq	18528(%rax), %rcx
	addq	$18536, %rax            # imm = 0x4868
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	cmovneq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	88(%r14), %eax
	addl	%eax, %eax
	cltd
	idivl	68(%r14)
	movl	%eax, %ecx
	movl	32(%r14), %edi
	cmpl	$1200, 60(%r14)         # imm = 0x4B0
	jne	.LBB9_7
# BB#6:
	movl	%edi, %eax
	shrl	$31, %eax
	leal	(%rax,%rdi), %ebx
	sarl	%ebx
	jmp	.LBB9_8
.LBB9_7:                                # %select.mid
	movl	%edi, %ebx
.LBB9_8:                                # %select.end
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	movl	136(%r14), %edx
	cmpl	$0, 84(%r14)
	leal	(%rcx,%rcx), %ebp
	movl	%ebp, %eax
	cmovel	%ecx, %eax
	cmovnel	%ecx, %ebp
	addl	140(%r14), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	subl	%ebp, %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	subl	%edx, %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	cltd
	idivl	%ebx
	testl	%edi, %edi
	jle	.LBB9_60
# BB#9:                                 # %for.body.lr.ph
	movl	16(%r14), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$29, %edi
	addl	%eax, %edi
	sarl	$3, %edi
	addl	$4, %edi
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movl	108(%rsp), %eax         # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	%edi, %eax
	imull	%ebx, %eax
	cmpl	$300, %esi              # imm = 0x12C
	setne	%dl
	movzbl	%dl, %r13d
	movl	%ebx, %edx
	negl	%edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movslq	36(%rsp), %rdx          # 4-byte Folded Reload
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 96(%rsp)          # 8-byte Spill
	negq	%rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	156(%r14), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%ebp, %ebp
	movl	$1, %eax
	.align	16, 0x90
.LBB9_10:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_38 Depth 2
                                        #       Child Loop BB9_42 Depth 3
                                        #       Child Loop BB9_62 Depth 3
                                        #       Child Loop BB9_67 Depth 3
                                        #       Child Loop BB9_51 Depth 3
                                        #       Child Loop BB9_71 Depth 3
                                        #       Child Loop BB9_76 Depth 3
                                        #     Child Loop BB9_19 Depth 2
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_80 Depth 3
                                        #       Child Loop BB9_85 Depth 3
                                        #       Child Loop BB9_31 Depth 3
                                        #       Child Loop BB9_89 Depth 3
                                        #       Child Loop BB9_94 Depth 3
	movl	%eax, 128(%rsp)         # 4-byte Spill
	cmpl	$0, 180(%r14)
	je	.LBB9_12
# BB#11:                                # %if.then.37
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	120(%r14), %rcx
	movl	$3, %esi
	movl	$8, %edx
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	fwrite
	movslq	184(%r14), %rsi
	movq	104(%r14), %rdi
	movq	120(%r14), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$0, 180(%r14)
.LBB9_12:                               # %if.end.41
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	104(%r14), %rdi
	movslq	(%r14), %rax
	imulq	$30, %rax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	104(%r14), %rax
	cmpl	$1200, 60(%r14)         # imm = 0x4B0
	movl	%ebp, %ecx
	jne	.LBB9_14
# BB#13:                                # %if.then.53
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	%ebp, %r13d
	andl	$1, %r13d
	movl	%r13d, 128(%rsp)        # 4-byte Spill
	xorl	$1, %r13d
	movl	%ebp, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rbp), %ecx
	sarl	%ecx
.LBB9_14:                               # %if.end.63
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	%ecx, %edx
	imull	20(%rsp), %edx          # 4-byte Folded Reload
	movslq	%edx, %rdx
	leaq	4(%rax,%rdx), %r11
	movl	84(%r14), %esi
	cmpl	$1, %esi
	movl	%ebx, %eax
	cmovel	12(%rsp), %eax          # 4-byte Folded Reload
	movl	$0, %edx
	cmovel	16(%rsp), %edx          # 4-byte Folded Reload
	testl	%esi, %esi
	je	.LBB9_17
# BB#15:                                # %for.cond.202.preheader
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	jle	.LBB9_16
# BB#37:                                # %for.body.205.lr.ph
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rsi          # 8-byte Reload
	leal	(%rdx,%rsi), %edx
	addl	%ecx, %edx
	movslq	%edx, %r10
	cltq
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%r9d, %r9d
	movl	128(%rsp), %r8d         # 4-byte Reload
	.align	16, 0x90
.LBB9_38:                               # %for.body.205
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_42 Depth 3
                                        #       Child Loop BB9_62 Depth 3
                                        #       Child Loop BB9_67 Depth 3
                                        #       Child Loop BB9_51 Depth 3
                                        #       Child Loop BB9_71 Depth 3
                                        #       Child Loop BB9_76 Depth 3
	movl	%r8d, 128(%rsp)         # 4-byte Spill
	movl	%r13d, 112(%rsp)        # 4-byte Spill
	testl	%r8d, %r8d
	je	.LBB9_47
# BB#39:                                # %for.body.205
                                        #   in Loop: Header=BB9_38 Depth=2
	movl	(%r14), %eax
	movslq	%eax, %rcx
	cmpq	%rcx, %r10
	jge	.LBB9_47
# BB#40:                                # %if.then.211
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	120(%rsp), %rcx         # 8-byte Reload
	cmpl	%r15d, %ecx
	jae	.LBB9_47
# BB#41:                                # %for.body.229.lr.ph
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	112(%r14), %rdi
	addq	%r10, %rdi
	movq	128(%r14), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18516(%rdx), %esi
	movl	$1, %r13d
	movq	120(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB9_42
	.align	16, 0x90
.LBB9_45:                               # %if.end.255.for.body.229_crit_edge
                                        #   in Loop: Header=BB9_42 Depth=3
	movl	(%r14), %eax
.LBB9_42:                               # %for.body.229
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %r8d
	andl	132(%rsp), %r8d         # 4-byte Folded Reload
	imull	%eax, %r8d
	movslq	%r8d, %rax
	testb	(%rdi,%rax), %cl
	je	.LBB9_44
# BB#43:                                # %if.then.244
                                        #   in Loop: Header=BB9_42 Depth=3
	movl	%r13d, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%r13d, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%r13), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_44:                               # %if.end.255
                                        #   in Loop: Header=BB9_42 Depth=3
	addl	$2, %r13d
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_45
# BB#46:                                # %for.inc.260
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%r15d, %eax
	jae	.LBB9_47
# BB#61:                                # %for.body.229.lr.ph.1
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask+1(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18520(%rax), %esi
	movq	120(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB9_62:                               # %for.body.229.1
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rdx
	cltq
	imulq	%rdx, %rax
	testb	(%rdi,%rax), %cl
	je	.LBB9_64
# BB#63:                                # %if.then.244.1
                                        #   in Loop: Header=BB9_62 Depth=3
	movl	%r13d, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%r13d, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%r13), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_64:                               # %if.end.255.1
                                        #   in Loop: Header=BB9_62 Depth=3
	addl	$2, %r13d
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_62
# BB#65:                                # %for.inc.260.1
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%r15d, %eax
	jae	.LBB9_47
# BB#66:                                # %for.body.229.lr.ph.2
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask+2(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18524(%rax), %esi
	movq	120(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB9_67:                               # %for.body.229.2
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rdx
	cltq
	imulq	%rdx, %rax
	testb	(%rdi,%rax), %cl
	je	.LBB9_69
# BB#68:                                # %if.then.244.2
                                        #   in Loop: Header=BB9_67 Depth=3
	movl	%r13d, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%r13d, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%r13), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_69:                               # %if.end.255.2
                                        #   in Loop: Header=BB9_67 Depth=3
	addl	$2, %r13d
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_67
	.align	16, 0x90
.LBB9_47:                               # %if.end.263
                                        #   in Loop: Header=BB9_38 Depth=2
	cmpq	88(%rsp), %r10          # 8-byte Folded Reload
	movl	112(%rsp), %r13d        # 4-byte Reload
	jl	.LBB9_55
# BB#48:                                # %if.end.263
                                        #   in Loop: Header=BB9_38 Depth=2
	testl	%r13d, %r13d
	je	.LBB9_55
# BB#49:                                # %if.then.269
                                        #   in Loop: Header=BB9_38 Depth=2
	cmpl	%r15d, 116(%rsp)        # 4-byte Folded Reload
	jae	.LBB9_55
# BB#50:                                # %for.body.289.lr.ph
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	112(%r14), %r8
	addq	%r10, %r8
	addq	48(%rsp), %r8           # 8-byte Folded Reload
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18516(%rax), %esi
	xorl	%edi, %edi
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB9_51:                               # %for.body.289
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rbx
	cltq
	imulq	%rbx, %rax
	testb	(%r8,%rax), %cl
	je	.LBB9_53
# BB#52:                                # %if.then.304
                                        #   in Loop: Header=BB9_51 Depth=3
	movl	%edi, %eax
	andl	$6, %eax
	movb	bits(%rax), %al
	movl	%edi, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rdi), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_53:                               # %if.end.315
                                        #   in Loop: Header=BB9_51 Depth=3
	addl	$2, %edi
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_51
# BB#54:                                # %for.inc.320
                                        #   in Loop: Header=BB9_38 Depth=2
	cmpl	%r15d, 116(%rsp)        # 4-byte Folded Reload
	movl	60(%rsp), %ebx          # 4-byte Reload
	jae	.LBB9_55
# BB#70:                                # %for.body.289.lr.ph.1
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask+1(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18520(%rax), %esi
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB9_71:                               # %for.body.289.1
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rdx
	cltq
	imulq	%rdx, %rax
	testb	(%r8,%rax), %cl
	je	.LBB9_73
# BB#72:                                # %if.then.304.1
                                        #   in Loop: Header=BB9_71 Depth=3
	movl	%edi, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%edi, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rdi), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_73:                               # %if.end.315.1
                                        #   in Loop: Header=BB9_71 Depth=3
	addl	$2, %edi
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_71
# BB#74:                                # %for.inc.320.1
                                        #   in Loop: Header=BB9_38 Depth=2
	cmpl	%r15d, 116(%rsp)        # 4-byte Folded Reload
	jae	.LBB9_55
# BB#75:                                # %for.body.289.lr.ph.2
                                        #   in Loop: Header=BB9_38 Depth=2
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask+2(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18524(%rax), %esi
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB9_76:                               # %for.body.289.2
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rdx
	cltq
	imulq	%rdx, %rax
	testb	(%r8,%rax), %cl
	je	.LBB9_78
# BB#77:                                # %if.then.304.2
                                        #   in Loop: Header=BB9_76 Depth=3
	movl	%edi, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%edi, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rdi), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_78:                               # %if.end.315.2
                                        #   in Loop: Header=BB9_76 Depth=3
	addl	$2, %edi
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_76
	.align	16, 0x90
.LBB9_55:                               # %if.end.323
                                        #   in Loop: Header=BB9_38 Depth=2
	movl	$1, %eax
	movl	128(%rsp), %r8d         # 4-byte Reload
	subl	%r8d, %eax
	movl	$1, %ecx
	subl	%r13d, %ecx
	cmpl	$1200, 60(%r14)         # imm = 0x4B0
	cmovel	%eax, %r8d
	cmovel	%ecx, %r13d
	addq	96(%rsp), %r11          # 8-byte Folded Reload
	addl	%ebx, %r9d
	addq	64(%rsp), %r10          # 8-byte Folded Reload
	cmpl	108(%rsp), %r9d         # 4-byte Folded Reload
	jl	.LBB9_38
	jmp	.LBB9_56
	.align	16, 0x90
.LBB9_17:                               # %for.cond.75.preheader
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	jle	.LBB9_16
# BB#18:                                # %for.body.78.lr.ph
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rsi          # 8-byte Reload
	leal	(%rdx,%rsi), %edx
	addl	%ecx, %edx
	movslq	%edx, %r10
	cltq
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movl	128(%rsp), %r8d         # 4-byte Reload
	.align	16, 0x90
.LBB9_19:                               # %for.body.78
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_23 Depth 3
                                        #       Child Loop BB9_80 Depth 3
                                        #       Child Loop BB9_85 Depth 3
                                        #       Child Loop BB9_31 Depth 3
                                        #       Child Loop BB9_89 Depth 3
                                        #       Child Loop BB9_94 Depth 3
	movl	%eax, 112(%rsp)         # 4-byte Spill
	testq	%r10, %r10
	js	.LBB9_27
# BB#20:                                # %for.body.78
                                        #   in Loop: Header=BB9_19 Depth=2
	testl	%r8d, %r8d
	je	.LBB9_27
# BB#21:                                # %if.then.82
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%r15d, %eax
	jae	.LBB9_27
# BB#22:                                # %for.body.96.lr.ph
                                        #   in Loop: Header=BB9_19 Depth=2
	movl	%r8d, 128(%rsp)         # 4-byte Spill
	movq	112(%r14), %rdi
	addq	%r10, %rdi
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18516(%rax), %esi
	xorl	%r9d, %r9d
	movq	120(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB9_23:                               # %for.body.96
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %r8
	cltq
	imulq	%r8, %rax
	testb	(%rdi,%rax), %cl
	je	.LBB9_25
# BB#24:                                # %if.then.111
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	%r9d, %eax
	andl	$6, %eax
	movb	bits(%rax), %al
	movl	%r9d, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%r9), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_25:                               # %if.end.121
                                        #   in Loop: Header=BB9_23 Depth=3
	addl	$2, %r9d
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_23
# BB#26:                                # %for.inc.124
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%r15d, %eax
	movl	128(%rsp), %r8d         # 4-byte Reload
	jae	.LBB9_27
# BB#79:                                # %for.body.96.lr.ph.1
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask+1(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18520(%rax), %esi
	movq	120(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB9_80:                               # %for.body.96.1
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rdx
	cltq
	imulq	%rdx, %rax
	testb	(%rdi,%rax), %cl
	je	.LBB9_82
# BB#81:                                # %if.then.111.1
                                        #   in Loop: Header=BB9_80 Depth=3
	movl	%r9d, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%r9d, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%r9), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_82:                               # %if.end.121.1
                                        #   in Loop: Header=BB9_80 Depth=3
	addl	$2, %r9d
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_80
# BB#83:                                # %for.inc.124.1
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	%r15d, %eax
	jae	.LBB9_27
# BB#84:                                # %for.body.96.lr.ph.2
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask+2(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18524(%rax), %esi
	movq	120(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB9_85:                               # %for.body.96.2
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rdx
	cltq
	imulq	%rdx, %rax
	testb	(%rdi,%rax), %cl
	je	.LBB9_87
# BB#86:                                # %if.then.111.2
                                        #   in Loop: Header=BB9_85 Depth=3
	movl	%r9d, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%r9d, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%r9), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%al, (%r11,%rdx)
.LBB9_87:                               # %if.end.121.2
                                        #   in Loop: Header=BB9_85 Depth=3
	addl	$2, %r9d
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_85
	.align	16, 0x90
.LBB9_27:                               # %if.end.126
                                        #   in Loop: Header=BB9_19 Depth=2
	movl	%r8d, %r9d
	testl	%r13d, %r13d
	je	.LBB9_36
# BB#28:                                # %if.end.126
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%r10,%rax), %rcx
	movl	(%r14), %eax
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB9_36
# BB#29:                                # %if.then.133
                                        #   in Loop: Header=BB9_19 Depth=2
	cmpl	%r15d, 116(%rsp)        # 4-byte Folded Reload
	jae	.LBB9_36
# BB#30:                                # %for.body.153.lr.ph
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	112(%r14), %r8
	addq	%r10, %r8
	addq	88(%rsp), %r8           # 8-byte Folded Reload
	movq	128(%r14), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18516(%rdx), %esi
	movl	$1, %edx
	movl	116(%rsp), %edi         # 4-byte Reload
	movl	%edi, %ebp
	jmp	.LBB9_31
	.align	16, 0x90
.LBB9_34:                               # %if.end.179.for.body.153_crit_edge
                                        #   in Loop: Header=BB9_31 Depth=3
	movl	(%r14), %eax
.LBB9_31:                               # %for.body.153
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %edi
	andl	132(%rsp), %edi         # 4-byte Folded Reload
	imull	%eax, %edi
	movslq	%edi, %rax
	testb	(%r8,%rax), %cl
	je	.LBB9_33
# BB#32:                                # %if.then.168
                                        #   in Loop: Header=BB9_31 Depth=3
	movl	%edx, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%edx, %edi
	sarl	$31, %edi
	shrl	$29, %edi
	leal	(%rdi,%rdx), %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	orb	%al, (%r11,%rdi)
.LBB9_33:                               # %if.end.179
                                        #   in Loop: Header=BB9_31 Depth=3
	addl	$2, %edx
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_34
# BB#35:                                # %for.inc.184
                                        #   in Loop: Header=BB9_19 Depth=2
	cmpl	%r15d, 116(%rsp)        # 4-byte Folded Reload
	jae	.LBB9_36
# BB#88:                                # %for.body.153.lr.ph.1
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask+1(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18520(%rax), %esi
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB9_89:                               # %for.body.153.1
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rdi
	cltq
	imulq	%rdi, %rax
	testb	(%r8,%rax), %cl
	je	.LBB9_91
# BB#90:                                # %if.then.168.1
                                        #   in Loop: Header=BB9_89 Depth=3
	movl	%edx, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%edx, %edi
	sarl	$31, %edi
	shrl	$29, %edi
	leal	(%rdi,%rdx), %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	orb	%al, (%r11,%rdi)
.LBB9_91:                               # %if.end.179.1
                                        #   in Loop: Header=BB9_89 Depth=3
	addl	$2, %edx
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_89
# BB#92:                                # %for.inc.184.1
                                        #   in Loop: Header=BB9_19 Depth=2
	cmpl	%r15d, 116(%rsp)        # 4-byte Folded Reload
	jae	.LBB9_36
# BB#93:                                # %for.body.153.lr.ph.2
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	128(%r14), %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	colmask+2(%rcx,%rcx,2), %cl
	movl	144(%r14), %esi
	addl	84(%rsp), %esi          # 4-byte Folded Reload
	addl	18524(%rax), %esi
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB9_94:                               # %for.body.153.2
                                        #   Parent Loop BB9_10 Depth=1
                                        #     Parent Loop BB9_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rsi,%rbp), %eax
	andl	132(%rsp), %eax         # 4-byte Folded Reload
	movslq	(%r14), %rdi
	cltq
	imulq	%rdi, %rax
	testb	(%r8,%rax), %cl
	je	.LBB9_96
# BB#95:                                # %if.then.168.2
                                        #   in Loop: Header=BB9_94 Depth=3
	movl	%edx, %eax
	andl	$7, %eax
	movb	bits(%rax), %al
	movl	%edx, %edi
	sarl	$31, %edi
	shrl	$29, %edi
	leal	(%rdi,%rdx), %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	orb	%al, (%r11,%rdi)
.LBB9_96:                               # %if.end.179.2
                                        #   in Loop: Header=BB9_94 Depth=3
	addl	$2, %edx
	addl	%r12d, %ebp
	cmpl	%r15d, %ebp
	jl	.LBB9_94
	.align	16, 0x90
.LBB9_36:                               # %if.end.187
                                        #   in Loop: Header=BB9_19 Depth=2
	movl	$1, %eax
	movl	%r9d, %r8d
	subl	%r8d, %eax
	movl	$1, %ecx
	subl	%r13d, %ecx
	cmpl	$1200, 60(%r14)         # imm = 0x4B0
	cmovel	%eax, %r8d
	cmovel	%ecx, %r13d
	addq	96(%rsp), %r11          # 8-byte Folded Reload
	movl	112(%rsp), %eax         # 4-byte Reload
	addl	%ebx, %eax
	addq	64(%rsp), %r10          # 8-byte Folded Reload
	cmpl	108(%rsp), %eax         # 4-byte Folded Reload
	jl	.LBB9_19
	jmp	.LBB9_56
	.align	16, 0x90
.LBB9_16:                               #   in Loop: Header=BB9_10 Depth=1
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movl	128(%rsp), %r8d         # 4-byte Reload
.LBB9_56:                               # %if.end.337
                                        #   in Loop: Header=BB9_10 Depth=1
	cmpl	$0, 84(%r14)
	je	.LBB9_57
# BB#58:                                # %if.else.342
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	%r14, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	108(%rsp), %edx         # 4-byte Reload
	movl	8(%rsp), %ecx           # 4-byte Reload
	jmp	.LBB9_59
	.align	16, 0x90
.LBB9_57:                               # %if.then.341
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	%r14, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	108(%rsp), %edx         # 4-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
.LBB9_59:                               # %for.inc.344
                                        #   in Loop: Header=BB9_10 Depth=1
	movl	%r8d, %ebp
	callq	convbuf
	movl	%ebp, %eax
	movq	40(%rsp), %rbp          # 8-byte Reload
	incl	%ebp
	cmpl	32(%r14), %ebp
	jl	.LBB9_10
.LBB9_60:                               # %for.end.346
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	encode_col_buf, .Lfunc_end9-encode_col_buf
	.cfi_endproc

	.align	16, 0x90
	.type	finalizeheader,@function
finalizeheader:                         # @finalizeheader
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 80
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movl	%edx, %r8d
	movq	%rdi, %rbx
	movb	158(%rbx), %r9b
	movb	%r9b, %r11b
	andb	$1, %r11b
	movslq	84(%rbx), %rax
	movslq	%r8d, %rdx
	shlq	$3, %rdx
	addq	128(%rbx), %rdx
	testq	%rax, %rax
	movl	18540(%rdx,%rax,4), %eax
	movl	68(%rbx), %edi
	je	.LBB10_1
# BB#2:                                 # %if.else.15
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	140(%rbx), %r12d
	imull	%edi, %r12d
	jmp	.LBB10_3
.LBB10_1:                               # %if.then.12
	movl	%eax, 12(%rsp)          # 4-byte Spill
	leaq	88(%rbx), %rax
	leaq	92(%rbx), %rdx
	testl	%r8d, %r8d
	cmoveq	%rax, %rdx
	movl	(%rdx), %eax
	addl	%eax, %eax
	cltd
	idivl	%edi
	movl	136(%rbx), %r12d
	imull	%edi, %r12d
	subl	%eax, %r12d
.LBB10_3:                               # %if.end.18
	imull	72(%rbx), %esi
	movzbl	177(%rbx), %r13d
	movzbl	178(%rbx), %r15d
	movzbl	159(%rbx), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	shll	$8, %eax
	movzbl	160(%rbx), %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	orl	%ecx, %eax
	imull	%edi, %eax
	movl	%eax, %edx
	negl	%edx
	testb	%r11b, %r11b
	cmovnel	%eax, %edx
	movzbl	167(%rbx), %edi
	shll	$8, %edi
	movzbl	168(%rbx), %eax
	orl	%edi, %eax
	testb	%r11b, %r11b
	movl	76(%rbx), %r14d
	movzbl	161(%rbx), %r10d
	movzbl	162(%rbx), %edi
	je	.LBB10_5
# BB#4:                                 # %if.then.43
	addl	%r14d, %eax
	movl	%eax, 76(%rbx)
	movl	%r10d, %ebp
	shll	$8, %ebp
	orl	%edi, %ebp
	subl	%ebp, %eax
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.59
	subl	%eax, %r14d
	movl	%r14d, 76(%rbx)
	movl	%r10d, %eax
	shll	$8, %eax
	orl	%edi, %eax
	addl	%r14d, %eax
.LBB10_6:                               # %if.end.76
	movl	%eax, 76(%rbx)
	testl	%r8d, %r8d
	js	.LBB10_10
# BB#7:                                 # %if.else.88
	shll	$8, %r13d
	orl	%r15d, %r13d
	addl	12(%rsp), %r12d         # 4-byte Folded Reload
	addl	%r13d, %edx
	testb	%r11b, %r11b
	je	.LBB10_11
# BB#8:                                 # %if.then.91
	cmpl	%r12d, %edx
	cmovll	%r12d, %edx
	addl	$520688, %edx           # imm = 0x7F1F0
	shrl	$3, %edx
	andl	$65520, %edx            # imm = 0xFFF0
	orl	$9, %edx
	subl	%eax, %edx
	cmpl	$2, 44(%rbx)
	movl	20(%rsp), %r8d          # 4-byte Reload
	movl	16(%rsp), %r10d         # 4-byte Reload
	jne	.LBB10_12
# BB#9:                                 # %if.then.102
	addl	48(%rbx), %edx
	jmp	.LBB10_12
.LBB10_10:                              # %if.end.126
	shll	$8, %r10d
	andl	$240, %edi
	orl	%r10d, %edi
	orl	$9, %edi
	movl	%edi, %edx
	negl	%edx
	testb	%r11b, %r11b
	cmovnel	%edi, %edx
	addl	%edx, %eax
	movl	%eax, 76(%rbx)
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	20(%rsp), %r8d          # 4-byte Reload
	movl	16(%rsp), %r10d         # 4-byte Reload
	jmp	.LBB10_14
.LBB10_11:                              # %if.else.105
	cmpl	%r12d, %edx
	cmovgl	%r12d, %edx
	cmpl	$4816, %edx             # imm = 0x12D0
	movl	$519488, %edi           # imm = 0x7ED40
	movl	$520688, %ebp           # imm = 0x7F1F0
	cmovgl	%edi, %ebp
	addl	%edx, %ebp
	shrl	$3, %ebp
	andl	$65520, %ebp            # imm = 0xFFF0
	movl	%eax, %edx
	subl	%ebp, %edx
	movl	20(%rsp), %r8d          # 4-byte Reload
	movl	16(%rsp), %r10d         # 4-byte Reload
.LBB10_12:                              # %lor.lhs.false
	movl	%edx, %edi
	negl	%edi
	testb	%r11b, %r11b
	cmovnel	%edx, %edi
	addl	%edi, %eax
	movl	%eax, 76(%rbx)
	xorl	%ecx, %ecx
	cmpl	$0, 36(%rbx)
	jne	.LBB10_14
# BB#13:                                # %if.else.140
	cmpl	$4856, %r12d            # imm = 0x12F8
	movl	$519448, %edi           # imm = 0x7ED18
	movl	$520688, %ebp           # imm = 0x7F1F0
	cmovgl	%edi, %ebp
	addl	%r12d, %ebp
	shrl	$3, %ebp
	andl	$65520, %ebp            # imm = 0xFFF0
	movl	%eax, %edi
	subl	%ebp, %edi
	cmpl	$16, %edi
	movl	$16, %ecx
	cmovgel	%edi, %ecx
.LBB10_14:                              # %if.end.158
	leaq	156(%rbx), %rdi
	movl	%ecx, %ebp
	negl	%ebp
	testb	%r11b, %r11b
	cmovnel	%ecx, %ebp
	subl	%ebp, %eax
	movl	%eax, 76(%rbx)
	movl	%edx, %eax
	shrl	$8, %eax
	movb	%al, 161(%rbx)
	movb	%dl, 162(%rbx)
	addb	157(%rbx), %r9b
	addb	%r8b, %r9b
	addb	%r10b, %r9b
	addb	%al, %r9b
	addb	%dl, %r9b
	movb	%r9b, 163(%rbx)
	movb	$27, 164(%rbx)
	movb	$66, 165(%rbx)
	movb	$16, %al
	cmpl	$1, 44(%rbx)
	je	.LBB10_16
# BB#15:                                # %select.mid
	xorl	%eax, %eax
.LBB10_16:                              # %select.end
	movb	%al, 166(%rbx)
	movl	%ecx, %edx
	shrl	$8, %edx
	movb	%dl, 167(%rbx)
	movb	%cl, 168(%rbx)
	movl	%esi, %ebp
	shrl	$8, %ebp
	movb	%bpl, 169(%rbx)
	movb	%sil, 170(%rbx)
	orb	$66, %al
	addb	%dl, %al
	addb	%cl, %al
	addb	%bpl, %al
	addb	%sil, %al
	movb	%al, 171(%rbx)
	movq	120(%rbx), %rcx
	movl	$3, %esi
	movl	$8, %edx
	callq	fwrite
	movslq	184(%rbx), %rsi
	movq	104(%rbx), %rdi
	movq	120(%rbx), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$0, 180(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	finalizeheader, .Lfunc_end10-finalizeheader
	.cfi_endproc

	.align	16, 0x90
	.type	fill_mono_buffer,@function
fill_mono_buffer:                       # @fill_mono_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp92:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp94:
	.cfi_def_cfa_offset 80
.Ltmp95:
	.cfi_offset %rbx, -56
.Ltmp96:
	.cfi_offset %r12, -48
.Ltmp97:
	.cfi_offset %r13, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	112(%r14), %r13
	movslq	8(%r14), %rax
	cmpl	%r15d, 24(%r14)
	jle	.LBB11_1
# BB#2:                                 # %while.body.lr.ph
	leaq	(%r13,%rax), %r12
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	16(%rsp), %rbx
	.align	16, 0x90
.LBB11_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	128(%r14), %rdi
	movl	%r15d, %esi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	gdev_prn_get_bits
	movq	16(%rsp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB11_6
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB11_3 Depth=1
	movslq	4(%r14), %rdx
	decq	%rdx
	leaq	1(%rdi), %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB11_6
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB11_3 Depth=1
	incl	%r15d
	cmpl	24(%r14), %r15d
	jl	.LBB11_3
	jmp	.LBB11_6
.LBB11_1:
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB11_6:                               # %while.end
	movl	$1, %eax
	cmpl	24(%r14), %r15d
	jge	.LBB11_16
# BB#7:                                 # %if.end.10
	movl	%r15d, 152(%r14)
	movslq	(%r14), %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	memset
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%r13,%rax), %rdi
	cmpq	%rdi, %rsi
	je	.LBB11_9
# BB#8:                                 # %if.then.17
	movslq	4(%r14), %rdx
	callq	memcpy
.LBB11_9:                               # %if.end.23
	movl	$2, %eax
	cmpl	$2, 12(%r14)
	jl	.LBB11_16
# BB#10:                                # %for.body.lr.ph
	movslq	(%r14), %rcx
	addq	%rcx, %r13
	movl	$2, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB11_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%rbp), %ebx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	memset
	movl	$3, %eax
	cmpl	24(%r14), %ebx
	jge	.LBB11_15
# BB#12:                                # %if.else
                                        #   in Loop: Header=BB11_11 Depth=1
	leal	1(%r15,%rbp), %esi
	movq	128(%r14), %rdi
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%r13,%rax), %rbx
	movq	%rbx, %rdx
	leaq	16(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	16(%rsp), %rsi
	cmpq	%rbx, %rsi
	je	.LBB11_14
# BB#13:                                # %if.then.45
                                        #   in Loop: Header=BB11_11 Depth=1
	movslq	4(%r14), %rdx
	movq	%rbx, %rdi
	callq	memcpy
.LBB11_14:                              # %if.end.52
                                        #   in Loop: Header=BB11_11 Depth=1
	movl	%r12d, %eax
.LBB11_15:                              # %if.end.52
                                        #   in Loop: Header=BB11_11 Depth=1
	movslq	(%r14), %rcx
	addq	%rcx, %r13
	leal	1(%rbp), %edx
	addl	$2, %ebp
	cmpl	12(%r14), %ebp
	movl	%edx, %ebp
	movl	%eax, %r12d
	jl	.LBB11_11
.LBB11_16:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	fill_mono_buffer, .Lfunc_end11-fill_mono_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	qualify_buffer,@function
qualify_buffer:                         # @qualify_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp104:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp105:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 56
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	movl	12(%rdi), %esi
	movl	72(%rdi), %ecx
	movl	%ecx, -52(%rsp)         # 4-byte Spill
	movl	$128, %eax
	xorl	%edx, %edx
	idivl	%ecx
	movl	%eax, %ecx
	decl	%esi
	movl	%esi, -4(%rsp)          # 4-byte Spill
	movl	144(%rdi), %eax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movq	128(%rdi), %rdx
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	movl	18528(%rdx), %edx
	addl	%eax, %edx
	movl	%edx, -28(%rsp)         # 4-byte Spill
	xorl	%r12d, %r12d
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
                                        #       Child Loop BB12_11 Depth 3
                                        #       Child Loop BB12_14 Depth 3
	testl	%ecx, %ecx
	movl	$0, %edi
	jle	.LBB12_16
# BB#2:                                 # %for.body.9.lr.ph
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	18516(%rax,%r12,4), %esi
	addl	-28(%rsp), %esi         # 4-byte Folded Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	112(%rax), %r9
	movl	(%rax), %ebx
	leal	-1(%rbx), %eax
	incq	%rax
	movq	%rax, %r10
	movabsq	$8589934584, %rdx       # imm = 0x1FFFFFFF8
	andq	%rdx, %r10
	leaq	-8(%r10), %r13
	shrq	$3, %r13
	movl	%r13d, %r14d
	andl	$1, %r14d
	leaq	12(%r9), %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB12_3:                               # %for.body.9
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_11 Depth 3
                                        #       Child Loop BB12_14 Depth 3
	testl	%ebx, %ebx
	jle	.LBB12_15
# BB#4:                                 # %for.body.14.lr.ph
                                        #   in Loop: Header=BB12_3 Depth=2
	leal	(%rsi,%r15), %edx
	andl	-4(%rsp), %edx          # 4-byte Folded Reload
	imull	%ebx, %edx
	movslq	%edx, %r8
	leaq	(%r9,%r8), %r11
	xorl	%edx, %edx
	testq	%r10, %r10
	movd	%edi, %xmm1
	pxor	%xmm2, %xmm2
	je	.LBB12_5
# BB#6:                                 # %vector.body.preheader
                                        #   in Loop: Header=BB12_3 Depth=2
	pxor	%xmm2, %xmm2
	testq	%r14, %r14
	jne	.LBB12_7
# BB#8:                                 # %vector.body.prol
                                        #   in Loop: Header=BB12_3 Depth=2
	movd	(%r11), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movd	4(%r11), %xmm2          # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	por	%xmm3, %xmm1
	movl	$8, %edx
	jmp	.LBB12_9
	.align	16, 0x90
.LBB12_5:                               #   in Loop: Header=BB12_3 Depth=2
	xorl	%ebp, %ebp
	jmp	.LBB12_13
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=2
	xorl	%edx, %edx
.LBB12_9:                               # %vector.body.preheader.split
                                        #   in Loop: Header=BB12_3 Depth=2
	addq	%r10, %r11
	testq	%r13, %r13
	je	.LBB12_12
# BB#10:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB12_3 Depth=2
	movq	%r10, %rdi
	subq	%rdx, %rdi
	addq	%rdx, %r8
	movq	-16(%rsp), %rdx         # 8-byte Reload
	leaq	(%r8,%rdx), %rbp
	.align	16, 0x90
.LBB12_11:                              # %vector.body
                                        #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-12(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movd	-8(%rbp), %xmm4         # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	por	%xmm1, %xmm3
	por	%xmm2, %xmm4
	movd	-4(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rbp), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	por	%xmm3, %xmm1
	por	%xmm4, %xmm2
	addq	$16, %rbp
	addq	$-16, %rdi
	jne	.LBB12_11
.LBB12_12:                              #   in Loop: Header=BB12_3 Depth=2
	movq	%r10, %rdx
	movl	%r10d, %ebp
.LBB12_13:                              # %middle.block
                                        #   in Loop: Header=BB12_3 Depth=2
	por	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	por	%xmm1, %xmm2
	pshufd	$229, %xmm2, %xmm1      # xmm1 = xmm2[1,1,2,3]
	por	%xmm2, %xmm1
	movd	%xmm1, %edi
	cmpq	%rdx, %rax
	je	.LBB12_15
	.align	16, 0x90
.LBB12_14:                              # %for.body.14
                                        #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r11), %edx
	incq	%r11
	orl	%edx, %edi
	incl	%ebp
	cmpl	%ebx, %ebp
	jl	.LBB12_14
.LBB12_15:                              # %for.inc.15
                                        #   in Loop: Header=BB12_3 Depth=2
	incl	%r15d
	cmpl	%ecx, %r15d
	jne	.LBB12_3
.LBB12_16:                              # %for.end.17
                                        #   in Loop: Header=BB12_1 Depth=1
	movzbl	colmask+3(%r12), %eax
	andl	%edi, %eax
	jne	.LBB12_18
# BB#17:                                # %for.end.17
                                        #   in Loop: Header=BB12_1 Depth=1
	incq	%r12
	cmpq	$3, %r12
	jl	.LBB12_1
.LBB12_18:                              # %for.end.25
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ebp
	shll	$2, %ebp
	xorl	%esi, %esi
	movl	$384, %eax              # imm = 0x180
	xorl	%edx, %edx
	idivl	-52(%rsp)               # 4-byte Folded Reload
	movq	-24(%rsp), %rdx         # 8-byte Reload
	cmpl	$1, 20(%rdx)
	jne	.LBB12_19
# BB#25:                                # %if.then.28
	testl	%eax, %eax
	movabsq	$8589934584, %r11       # imm = 0x1FFFFFFF8
	jle	.LBB12_40
# BB#26:                                # %for.body.37.lr.ph
	movq	-48(%rsp), %rcx         # 8-byte Reload
	movq	-40(%rsp), %rdx         # 8-byte Reload
	addl	18532(%rdx), %ecx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	movq	-24(%rsp), %rcx         # 8-byte Reload
	movq	112(%rcx), %r8
	movl	(%rcx), %edx
	leal	-1(%rdx), %r9d
	incq	%r9
	andq	%r9, %r11
	leaq	-8(%r11), %r10
	shrq	$3, %r10
	movl	%r10d, %r15d
	andl	$1, %r15d
	leaq	12(%r8), %r14
	xorl	%r12d, %r12d
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	.align	16, 0x90
.LBB12_27:                              # %for.body.37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_35 Depth 2
                                        #     Child Loop BB12_38 Depth 2
	testl	%edx, %edx
	jle	.LBB12_39
# BB#28:                                # %for.body.49.lr.ph
                                        #   in Loop: Header=BB12_27 Depth=1
	movq	-48(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%r12), %ecx
	andl	-4(%rsp), %ecx          # 4-byte Folded Reload
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	leaq	(%r8,%rdi), %rbx
	xorl	%ecx, %ecx
	testq	%r11, %r11
	movd	%esi, %xmm1
	pxor	%xmm2, %xmm2
	je	.LBB12_29
# BB#30:                                # %vector.body187.preheader
                                        #   in Loop: Header=BB12_27 Depth=1
	pxor	%xmm2, %xmm2
	testq	%r15, %r15
	jne	.LBB12_31
# BB#32:                                # %vector.body187.prol
                                        #   in Loop: Header=BB12_27 Depth=1
	movd	(%rbx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movd	4(%rbx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	por	%xmm3, %xmm1
	movl	$8, %ecx
	jmp	.LBB12_33
	.align	16, 0x90
.LBB12_29:                              #   in Loop: Header=BB12_27 Depth=1
	xorl	%edi, %edi
	jmp	.LBB12_37
.LBB12_31:                              #   in Loop: Header=BB12_27 Depth=1
	xorl	%ecx, %ecx
.LBB12_33:                              # %vector.body187.preheader.split
                                        #   in Loop: Header=BB12_27 Depth=1
	addq	%r11, %rbx
	testq	%r10, %r10
	je	.LBB12_36
# BB#34:                                # %vector.body187.preheader.split.split
                                        #   in Loop: Header=BB12_27 Depth=1
	movq	%r11, %rsi
	subq	%rcx, %rsi
	addq	%rcx, %rdi
	leaq	(%rdi,%r14), %rdi
	.align	16, 0x90
.LBB12_35:                              # %vector.body187
                                        #   Parent Loop BB12_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-12(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movd	-8(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	por	%xmm1, %xmm3
	por	%xmm2, %xmm4
	movd	-4(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	por	%xmm3, %xmm1
	por	%xmm4, %xmm2
	addq	$16, %rdi
	addq	$-16, %rsi
	jne	.LBB12_35
.LBB12_36:                              #   in Loop: Header=BB12_27 Depth=1
	movq	%r11, %rcx
	movl	%r11d, %edi
.LBB12_37:                              # %middle.block188
                                        #   in Loop: Header=BB12_27 Depth=1
	por	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	por	%xmm1, %xmm2
	pshufd	$229, %xmm2, %xmm1      # xmm1 = xmm2[1,1,2,3]
	por	%xmm2, %xmm1
	movd	%xmm1, %esi
	cmpq	%rcx, %r9
	je	.LBB12_39
	.align	16, 0x90
.LBB12_38:                              # %for.body.49
                                        #   Parent Loop BB12_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %ecx
	incq	%rbx
	orl	%ecx, %esi
	incl	%edi
	cmpl	%edx, %edi
	jl	.LBB12_38
.LBB12_39:                              # %for.inc.56
                                        #   in Loop: Header=BB12_27 Depth=1
	incl	%r12d
	cmpl	%eax, %r12d
	jne	.LBB12_27
.LBB12_40:                              # %for.end.58
	shrl	$5, %esi
	andl	$2, %esi
	orl	%ebp, %esi
	movl	%esi, %eax
	jmp	.LBB12_54
.LBB12_19:                              # %for.body.71.lr.ph
	movq	-48(%rsp), %rax         # 8-byte Reload
	movq	-40(%rsp), %rdx         # 8-byte Reload
	addl	18536(%rdx), %eax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_20:                              # %for.body.71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_22 Depth 2
                                        #       Child Loop BB12_46 Depth 3
                                        #       Child Loop BB12_49 Depth 3
	movl	%ebp, -28(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	movl	$0, %r8d
	jle	.LBB12_51
# BB#21:                                # %for.body.85.lr.ph
                                        #   in Loop: Header=BB12_20 Depth=1
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	18516(%rax,%r14,4), %r11d
	movq	-48(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r11d
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	112(%rax), %r15
	movl	(%rax), %ebx
	leal	-1(%rbx), %r9d
	incq	%r9
	movq	%r9, %r10
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r10
	leaq	-8(%r10), %r12
	shrq	$3, %r12
	movl	%r12d, %r13d
	andl	$1, %r13d
	leaq	12(%r15), %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB12_22:                              # %for.body.85
                                        #   Parent Loop BB12_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_46 Depth 3
                                        #       Child Loop BB12_49 Depth 3
	testl	%ebx, %ebx
	jle	.LBB12_50
# BB#23:                                # %for.body.97.lr.ph
                                        #   in Loop: Header=BB12_22 Depth=2
	leal	(%r11,%rsi), %eax
	andl	-4(%rsp), %eax          # 4-byte Folded Reload
	imull	%ebx, %eax
	movslq	%eax, %rdi
	leaq	(%r15,%rdi), %rdx
	xorl	%ebp, %ebp
	testq	%r10, %r10
	movd	%r8d, %xmm1
	pxor	%xmm2, %xmm2
	je	.LBB12_24
# BB#41:                                # %vector.body131.preheader
                                        #   in Loop: Header=BB12_22 Depth=2
	pxor	%xmm2, %xmm2
	testq	%r13, %r13
	jne	.LBB12_42
# BB#43:                                # %vector.body131.prol
                                        #   in Loop: Header=BB12_22 Depth=2
	movd	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movd	4(%rdx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	por	%xmm3, %xmm1
	movl	$8, %ebp
	jmp	.LBB12_44
	.align	16, 0x90
.LBB12_24:                              #   in Loop: Header=BB12_22 Depth=2
	xorl	%eax, %eax
	jmp	.LBB12_48
.LBB12_42:                              #   in Loop: Header=BB12_22 Depth=2
	xorl	%ebp, %ebp
.LBB12_44:                              # %vector.body131.preheader.split
                                        #   in Loop: Header=BB12_22 Depth=2
	addq	%r10, %rdx
	testq	%r12, %r12
	je	.LBB12_47
# BB#45:                                # %vector.body131.preheader.split.split
                                        #   in Loop: Header=BB12_22 Depth=2
	movq	%r10, %rax
	subq	%rbp, %rax
	addq	%rbp, %rdi
	movq	-16(%rsp), %rbp         # 8-byte Reload
	leaq	(%rdi,%rbp), %rdi
	.align	16, 0x90
.LBB12_46:                              # %vector.body131
                                        #   Parent Loop BB12_20 Depth=1
                                        #     Parent Loop BB12_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-12(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movd	-8(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	por	%xmm1, %xmm3
	por	%xmm2, %xmm4
	movd	-4(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	por	%xmm3, %xmm1
	por	%xmm4, %xmm2
	addq	$16, %rdi
	addq	$-16, %rax
	jne	.LBB12_46
.LBB12_47:                              #   in Loop: Header=BB12_22 Depth=2
	movq	%r10, %rbp
	movl	%r10d, %eax
.LBB12_48:                              # %middle.block132
                                        #   in Loop: Header=BB12_22 Depth=2
	por	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	por	%xmm1, %xmm2
	pshufd	$229, %xmm2, %xmm1      # xmm1 = xmm2[1,1,2,3]
	por	%xmm2, %xmm1
	movd	%xmm1, %r8d
	cmpq	%rbp, %r9
	je	.LBB12_50
	.align	16, 0x90
.LBB12_49:                              # %for.body.97
                                        #   Parent Loop BB12_20 Depth=1
                                        #     Parent Loop BB12_22 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx), %edi
	incq	%rdx
	orl	%edi, %r8d
	incl	%eax
	cmpl	%ebx, %eax
	jl	.LBB12_49
.LBB12_50:                              # %for.inc.104
                                        #   in Loop: Header=BB12_22 Depth=2
	incl	%esi
	cmpl	%ecx, %esi
	jne	.LBB12_22
.LBB12_51:                              # %for.end.106
                                        #   in Loop: Header=BB12_20 Depth=1
	movzbl	colmask(%r14), %eax
	movl	-28(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %edx
	orl	$2, %edx
	testl	%r8d, %eax
	cmovnel	%edx, %ebp
	incq	%r14
	cmpq	$2, %r14
	jg	.LBB12_53
# BB#52:                                # %for.end.106
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	%ebp, %eax
	andl	$2, %eax
	je	.LBB12_20
.LBB12_53:                              # %if.end.118
	movl	%ebp, %eax
.LBB12_54:                              # %if.end.118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	qualify_buffer, .Lfunc_end12-qualify_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	convbuf,@function
convbuf:                                # @convbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
.Ltmp119:
	.cfi_offset %rbx, -56
.Ltmp120:
	.cfi_offset %r12, -48
.Ltmp121:
	.cfi_offset %r13, -40
.Ltmp122:
	.cfi_offset %r14, -32
.Ltmp123:
	.cfi_offset %r15, -24
.Ltmp124:
	.cfi_offset %rbp, -16
	movl	%edx, -4(%rsp)          # 4-byte Spill
	movl	%esi, -44(%rsp)         # 4-byte Spill
	movq	104(%rdi), %r14
	cmpl	$208, 16(%rdi)
	sete	%al
	movb	%al, -17(%rsp)          # 1-byte Spill
	movzbl	%al, %eax
	setne	%dl
	movzbl	%dl, %edx
	movb	$-125, -18(%rsp)        # 1-byte Folded Spill
	je	.LBB13_2
# BB#1:                                 # %entry
	movb	$-128, -18(%rsp)        # 1-byte Folded Spill
.LBB13_2:                               # %entry
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	movb	$-1, -19(%rsp)          # 1-byte Folded Spill
	je	.LBB13_4
# BB#3:                                 # %entry
	movb	$127, -19(%rsp)         # 1-byte Folded Spill
.LBB13_4:                               # %entry
	xorl	%r8d, %r8d
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB13_19
# BB#5:                                 # %for.body.lr.ph
	leal	24(%rax,%rax), %eax
	leal	6(%rdx,%rdx), %r15d
	orb	$64, -17(%rsp)          # 1-byte Folded Spill
	movl	%eax, %r11d
	orl	$4, %eax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	leaq	5(%r14), %r12
	movl	%r15d, %r13d
	incl	%r15d
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	leaq	4(%r14), %r10
	.align	16, 0x90
.LBB13_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
                                        #     Child Loop BB13_15 Depth 2
                                        #     Child Loop BB13_10 Depth 2
	movq	%rax, %r8
	movzbl	(%r10), %edi
	testl	%edi, %edi
	setne	%al
	movzbl	%al, %ecx
	movl	$1, %esi
	movq	%r12, %rbp
	movl	$1, %eax
	.align	16, 0x90
.LBB13_7:                               # %for.body.6
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %edx
	cmpl	$1, %edx
	sbbl	$-1, %ecx
	cmpl	%edi, %edx
	setne	%bl
	movzbl	%bl, %edi
	addl	%edi, %esi
	incq	%rax
	incq	%rbp
	cmpq	%r11, %rax
	movl	%edx, %edi
	jl	.LBB13_7
# BB#8:                                 # %for.end
                                        #   in Loop: Header=BB13_6 Depth=1
	movw	$-1, 2(%r14)
	cmpl	%esi, %ecx
	jle	.LBB13_14
# BB#9:                                 # %if.then.25
                                        #   in Loop: Header=BB13_6 Depth=1
	movb	-17(%rsp), %al          # 1-byte Reload
	movb	%al, (%r14)
	movb	-19(%rsp), %al          # 1-byte Reload
	movb	%al, 1(%r14)
	movzbl	(%r10), %eax
	movb	%al, 4(%r14)
	movl	$5, %ecx
	xorl	%esi, %esi
	movq	%r8, %rdi
	.align	16, 0x90
.LBB13_10:                              # %for.body.37
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r12,%rsi), %dl
	movzbl	%dl, %ebp
	cmpl	%eax, %ebp
	jne	.LBB13_12
# BB#11:                                #   in Loop: Header=BB13_10 Depth=2
	movl	%eax, %ebp
	jmp	.LBB13_13
	.align	16, 0x90
.LBB13_12:                              # %if.then.43
                                        #   in Loop: Header=BB13_10 Depth=2
	leaq	(%r15,%rsi), %rax
	movslq	%ecx, %rcx
	movb	%dl, (%r14,%rcx)
	movl	%eax, %edx
	andl	$7, %edx
	movb	ibits(%rdx), %dl
	sarl	$3, %eax
	cltq
	andb	%dl, (%r14,%rax)
	incl	%ecx
.LBB13_13:                              # %if.end.59
                                        #   in Loop: Header=BB13_10 Depth=2
	leaq	1(%rsi), %rax
	addq	$2, %rsi
	cmpq	%r11, %rsi
	movq	%rax, %rsi
	movl	%ebp, %eax
	jl	.LBB13_10
	jmp	.LBB13_18
	.align	16, 0x90
.LBB13_14:                              # %if.else.64
                                        #   in Loop: Header=BB13_6 Depth=1
	movb	-18(%rsp), %al          # 1-byte Reload
	movb	%al, (%r14)
	movb	$-1, 1(%r14)
	movl	$4, %ecx
	xorl	%esi, %esi
	movq	%r8, %rdi
	.align	16, 0x90
.LBB13_15:                              # %for.body.71
                                        #   Parent Loop BB13_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r10,%rsi), %al
	testb	%al, %al
	je	.LBB13_17
# BB#16:                                # %if.then.76
                                        #   in Loop: Header=BB13_15 Depth=2
	leaq	(%r13,%rsi), %rdx
	movslq	%ecx, %rcx
	movb	%al, (%r14,%rcx)
	movl	%edx, %eax
	andl	$7, %eax
	movb	ibits(%rax), %al
	sarl	$3, %edx
	movslq	%edx, %rdx
	andb	%al, (%r14,%rdx)
	incl	%ecx
.LBB13_17:                              # %if.end.91
                                        #   in Loop: Header=BB13_15 Depth=2
	incq	%rsi
	cmpq	%r11, %rsi
	jl	.LBB13_15
.LBB13_18:                              # %if.end.96
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-16(%rsp), %rax         # 8-byte Reload
	addq	%rax, %r10
	movslq	%ecx, %r8
	addq	%r8, %r14
	addl	%edi, %r8d
	incl	%r9d
	addq	%rax, %r12
	cmpl	-4(%rsp), %r9d          # 4-byte Folded Reload
	movl	%r8d, %eax
	jne	.LBB13_6
.LBB13_19:                              # %for.end.104
	movq	-32(%rsp), %rbp         # 8-byte Reload
	movl	68(%rbp), %eax
	movl	76(%rbp), %r10d
	movq	-40(%rsp), %r11         # 8-byte Reload
	imull	%eax, %r11d
	imull	-4(%rsp), %eax          # 4-byte Folded Reload
	movslq	84(%rbp), %rbx
	movl	%eax, %ecx
	negl	%ecx
	testq	%rbx, %rbx
	sete	%dl
	movzbl	%dl, %r9d
	movslq	-44(%rsp), %rdx         # 4-byte Folded Reload
	cmovel	%eax, %ecx
	movl	40(%rbp), %eax
	orl	%r9d, %eax
	leaq	(,%rdx,8), %rdi
	addq	128(%rbp), %rdi
	movl	%eax, %esi
	orl	$128, %esi
	testl	%edx, %edx
	cmovel	%eax, %esi
	addl	18540(%rdi,%rbx,4), %r11d
	leal	(%rcx,%r11), %ecx
	testq	%rbx, %rbx
	je	.LBB13_20
# BB#21:                                # %if.else.27.i
	cmpl	$4816, %ecx             # imm = 0x12D0
	movl	$519488, %eax           # imm = 0x7ED40
	movl	$520688, %edx           # imm = 0x7F1F0
	cmovgl	%eax, %edx
	addl	%ecx, %edx
	shrl	$3, %edx
	andl	$65520, %edx            # imm = 0xFFF0
	orl	$9, %edx
	movl	%r10d, %ecx
	subl	%edx, %ecx
	jmp	.LBB13_22
.LBB13_20:                              # %if.then.23.i
	addl	$520688, %ecx           # imm = 0x7F1F0
	shrl	$3, %ecx
	andl	$65520, %ecx            # imm = 0xFFF0
	orl	$9, %ecx
	subl	%r10d, %ecx
.LBB13_22:                              # %if.end.42.i
	movl	%ecx, %eax
	negl	%eax
	testl	%ebx, %ebx
	cmovel	%ecx, %eax
	addl	%r10d, %eax
	movl	%eax, 76(%rbp)
	movl	36(%rbp), %r10d
	xorl	%edi, %edi
	testl	%r10d, %r10d
	jne	.LBB13_26
# BB#23:                                # %if.then.50.i
	cmpl	$4816, %r11d            # imm = 0x12D0
	movl	$519488, %edi           # imm = 0x7ED40
	movl	$520688, %edx           # imm = 0x7F1F0
	cmovgl	%edi, %edx
	addl	%r11d, %edx
	shrl	$3, %edx
	andl	$65520, %edx            # imm = 0xFFF0
	testl	%ebx, %ebx
	je	.LBB13_24
# BB#25:                                # %if.else.66.i
	subl	%eax, %edx
	movl	%edx, %edi
	jmp	.LBB13_26
.LBB13_24:                              # %if.then.63.i
	movl	%eax, %edi
	subl	%edx, %edi
.LBB13_26:                              # %if.end.70.i
	movl	%edi, %edx
	negl	%edx
	testl	%ebx, %ebx
	cmovel	%edi, %edx
	subl	%edx, %eax
	movl	%eax, 76(%rbp)
	movb	$27, 156(%rbp)
	movb	$64, 157(%rbp)
	movb	%sil, 158(%rbp)
	movl	-4(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %eax
	shrl	$8, %eax
	movb	%al, 159(%rbp)
	movb	%bl, 160(%rbp)
	movl	%ecx, %edx
	shrl	$8, %edx
	movb	%dl, 161(%rbp)
	movb	%cl, 162(%rbp)
	addb	%al, %bl
	addb	%sil, %bl
	addb	%cl, %bl
	addb	%dl, %bl
	addb	$64, %bl
	movb	%bl, 163(%rbp)
	movb	$27, 164(%rbp)
	movb	$66, 165(%rbp)
	movb	$16, %al
	cmpl	$1, 44(%rbp)
	je	.LBB13_28
# BB#27:                                # %select.mid
	xorl	%eax, %eax
.LBB13_28:                              # %select.end
	movl	%edi, %ecx
	shrl	$8, %ecx
	movb	%al, %dl
	orb	$66, %dl
	movb	%al, 166(%rbp)
	movb	%cl, 167(%rbp)
	movb	%cl, %al
	addb	%dil, %al
	addb	%dl, %al
	movl	%r8d, %ecx
	shrl	$16, %ecx
	movl	%r8d, %edx
	shrl	$8, %edx
	movl	%r11d, %esi
	shrl	$8, %esi
	movb	%r8b, %bl
	addb	%cl, %bl
	addb	%dl, %bl
	addb	%r11b, %bl
	addb	%sil, %bl
	addb	$67, %bl
	testl	%r10d, %r10d
	movb	%dil, 168(%rbp)
	movb	$0, 169(%rbp)
	movb	$0, 170(%rbp)
	movb	%al, 171(%rbp)
	movb	$27, 172(%rbp)
	movb	$67, 173(%rbp)
	movb	%cl, 174(%rbp)
	movb	%dl, 175(%rbp)
	movb	%r8b, 176(%rbp)
	movb	%sil, 177(%rbp)
	movb	%r11b, 178(%rbp)
	movb	%bl, 179(%rbp)
	movl	%r8d, 184(%rbp)
	movl	$1, 180(%rbp)
	je	.LBB13_30
# BB#29:                                # %if.then.139.i
	movl	%r9d, 84(%rbp)
.LBB13_30:                              # %fillheader.exit
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	convbuf, .Lfunc_end13-convbuf
	.cfi_endproc

	.align	16, 0x90
	.type	encode_bw_buf,@function
encode_bw_buf:                          # @encode_bw_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp127:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp128:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp129:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp131:
	.cfi_def_cfa_offset 176
.Ltmp132:
	.cfi_offset %rbx, -56
.Ltmp133:
	.cfi_offset %r12, -48
.Ltmp134:
	.cfi_offset %r13, -40
.Ltmp135:
	.cfi_offset %r14, -32
.Ltmp136:
	.cfi_offset %r15, -24
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movl	64(%r15), %r8d
	xorl	%ecx, %ecx
	cmpl	$300, %r8d              # imm = 0x12C
	jne	.LBB14_2
# BB#1:
	movl	$127, 116(%rsp)         # 4-byte Folded Spill
	movl	$1, %r14d
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	jmp	.LBB14_5
.LBB14_2:                               # %entry
	cmpl	$1200, %r8d             # imm = 0x4B0
	jne	.LBB14_3
# BB#4:                                 # %sw.bb.2
	cmpl	$0, 188(%r15)
	setne	%al
	movzbl	%al, %ecx
	leal	2(%rcx), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	$511, 116(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x1FF
	movl	$4, %r14d
	jmp	.LBB14_5
.LBB14_3:                               # %sw.bb.1
	movl	$255, 116(%rsp)         # 4-byte Folded Spill
	movl	$2, %r14d
	movl	$1, 84(%rsp)            # 4-byte Folded Spill
.LBB14_5:                               # %sw.epilog
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 20(%r15)
	je	.LBB14_6
# BB#7:                                 # %if.else
	movq	128(%r15), %rax
	movl	18532(%rax), %r13d
	addl	144(%r15), %r13d
	movl	$384, %eax              # imm = 0x180
	xorl	%edx, %edx
	idivl	72(%r15)
	movl	%eax, %r12d
	jmp	.LBB14_8
.LBB14_6:                               # %if.then
	movl	12(%r15), %r12d
	movl	$511, 116(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x1FF
	xorl	%r13d, %r13d
.LBB14_8:                               # %if.end
	movl	88(%r15), %eax
	addl	%eax, %eax
	cltd
	idivl	68(%r15)
	movl	%eax, %ecx
	movl	32(%r15), %edi
	cmpl	$1200, 60(%r15)         # imm = 0x4B0
	jne	.LBB14_10
# BB#9:
	movl	%edi, %eax
	shrl	$31, %eax
	leal	(%rax,%rdi), %ebx
	sarl	%ebx
	jmp	.LBB14_11
.LBB14_10:                              # %select.mid
	movl	%edi, %ebx
.LBB14_11:                              # %select.end
	movl	136(%r15), %edx
	cmpl	$0, 84(%r15)
	leal	(%rcx,%rcx), %esi
	movl	%esi, %eax
	cmovel	%ecx, %eax
	cmovnel	%ecx, %esi
	addl	140(%r15), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	subl	%esi, %edx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	subl	%edx, %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	cltd
	idivl	%ebx
	testl	%edi, %edi
	jle	.LBB14_60
# BB#12:                                # %for.body.lr.ph
	movl	16(%r15), %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	addl	%eax, %esi
	sarl	$3, %esi
	addl	$4, %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	108(%rsp), %eax         # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%esi, %eax
	imull	%ebx, %eax
	cmpl	$300, %r8d              # imm = 0x12C
	setne	%dl
	movzbl	%dl, %edx
	movl	%edx, 112(%rsp)         # 4-byte Spill
	movl	%ebx, %edx
	negl	%edx
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 96(%rsp)          # 8-byte Spill
	negq	%rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	156(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB14_13:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_40 Depth 2
                                        #       Child Loop BB14_44 Depth 3
                                        #       Child Loop BB14_52 Depth 3
                                        #     Child Loop BB14_23 Depth 2
                                        #       Child Loop BB14_27 Depth 3
                                        #       Child Loop BB14_34 Depth 3
	cmpl	$0, 180(%r15)
	je	.LBB14_15
# BB#14:                                # %if.then.36
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	120(%r15), %rcx
	movl	$3, %esi
	movl	$8, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	fwrite
	movslq	184(%r15), %rsi
	movq	104(%r15), %rdi
	movq	120(%r15), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$0, 180(%r15)
.LBB14_15:                              # %if.end.40
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	104(%r15), %rdi
	movslq	(%r15), %rax
	imulq	$30, %rax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	104(%r15), %rax
	cmpl	$1200, 60(%r15)         # imm = 0x4B0
	movq	56(%rsp), %rcx          # 8-byte Reload
	jne	.LBB14_17
# BB#16:                                # %if.then.52
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	56(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ecx
	andl	$1, %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	xorl	$1, %ecx
	movl	%ecx, 112(%rsp)         # 4-byte Spill
	movl	%edx, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rdx), %ecx
	sarl	%ecx
.LBB14_17:                              # %if.end.62
                                        #   in Loop: Header=BB14_13 Depth=1
	movl	%ecx, %edx
	imull	28(%rsp), %edx          # 4-byte Folded Reload
	movslq	%edx, %rdx
	leaq	4(%rax,%rdx), %rax
	movl	84(%r15), %edi
	cmpl	$1, %edi
	movl	%ebx, %edx
	cmovel	20(%rsp), %edx          # 4-byte Folded Reload
	movl	$0, %esi
	cmovel	24(%rsp), %esi          # 4-byte Folded Reload
	testl	%edi, %edi
	je	.LBB14_20
# BB#18:                                # %for.cond.166.preheader
                                        #   in Loop: Header=BB14_13 Depth=1
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	jle	.LBB14_19
# BB#39:                                # %for.body.169.lr.ph
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	leal	(%rsi,%rdi), %esi
	addl	%ecx, %esi
	movslq	%esi, %r10
	movslq	%edx, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	xorl	%r9d, %r9d
	movl	44(%rsp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB14_40:                              # %for.body.169
                                        #   Parent Loop BB14_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_44 Depth 3
                                        #       Child Loop BB14_52 Depth 3
	movl	%ebx, %r11d
	testl	%edi, %edi
	movl	%edi, %r8d
	je	.LBB14_48
# BB#41:                                # %for.body.169
                                        #   in Loop: Header=BB14_40 Depth=2
	movl	(%r15), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %r10
	jge	.LBB14_48
# BB#42:                                # %if.then.175
                                        #   in Loop: Header=BB14_40 Depth=2
	movq	72(%rsp), %rdx          # 8-byte Reload
	cmpl	%r12d, %edx
	jge	.LBB14_48
# BB#43:                                #   in Loop: Header=BB14_40 Depth=2
	movq	112(%r15), %rdi
	addq	%r10, %rdi
	movl	$1, %ebx
	movq	72(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB14_44
	.align	16, 0x90
.LBB14_47:                              # %if.end.203.for.body.182_crit_edge
                                        #   in Loop: Header=BB14_44 Depth=3
	addl	$2, %ebx
	movl	(%r15), %ecx
.LBB14_44:                              # %for.body.182
                                        #   Parent Loop BB14_13 Depth=1
                                        #     Parent Loop BB14_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%r13,%rsi), %ebp
	andl	116(%rsp), %ebp         # 4-byte Folded Reload
	imull	%ecx, %ebp
	movslq	%ebp, %rcx
	testb	$64, (%rdi,%rcx)
	je	.LBB14_46
# BB#45:                                # %if.then.192
                                        #   in Loop: Header=BB14_44 Depth=3
	movl	%ebx, %ecx
	andl	$7, %ecx
	movb	bits(%rcx), %cl
	movl	%ebx, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rbx), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%cl, (%rax,%rdx)
.LBB14_46:                              # %if.end.203
                                        #   in Loop: Header=BB14_44 Depth=3
	addl	%r14d, %esi
	cmpl	%r12d, %esi
	jl	.LBB14_47
.LBB14_48:                              # %if.end.208
                                        #   in Loop: Header=BB14_40 Depth=2
	cmpq	88(%rsp), %r10          # 8-byte Folded Reload
	jl	.LBB14_55
# BB#49:                                # %if.end.208
                                        #   in Loop: Header=BB14_40 Depth=2
	cmpl	$0, 112(%rsp)           # 4-byte Folded Reload
	je	.LBB14_55
# BB#50:                                # %if.then.214
                                        #   in Loop: Header=BB14_40 Depth=2
	cmpl	%r12d, 84(%rsp)         # 4-byte Folded Reload
	jge	.LBB14_55
# BB#51:                                #   in Loop: Header=BB14_40 Depth=2
	movq	112(%r15), %rdi
	addq	%r10, %rdi
	addq	48(%rsp), %rdi          # 8-byte Folded Reload
	xorl	%ebx, %ebx
	movl	84(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %esi
	.align	16, 0x90
.LBB14_52:                              # %for.body.223
                                        #   Parent Loop BB14_13 Depth=1
                                        #     Parent Loop BB14_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%r13,%rsi), %ecx
	andl	116(%rsp), %ecx         # 4-byte Folded Reload
	movslq	(%r15), %rbp
	movslq	%ecx, %rcx
	imulq	%rbp, %rcx
	testb	$64, (%rdi,%rcx)
	je	.LBB14_54
# BB#53:                                # %if.then.233
                                        #   in Loop: Header=BB14_52 Depth=3
	movl	%ebx, %ecx
	andl	$6, %ecx
	movb	bits(%rcx), %cl
	movl	%ebx, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rbx), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%cl, (%rax,%rdx)
.LBB14_54:                              # %if.end.244
                                        #   in Loop: Header=BB14_52 Depth=3
	addl	$2, %ebx
	addl	%r14d, %esi
	cmpl	%r12d, %esi
	jl	.LBB14_52
.LBB14_55:                              # %if.end.249
                                        #   in Loop: Header=BB14_40 Depth=2
	movl	$1, %ecx
	movl	%r8d, %edi
	subl	%edi, %ecx
	movl	$1, %edx
	movl	112(%rsp), %esi         # 4-byte Reload
	subl	%esi, %edx
	cmpl	$1200, 60(%r15)         # imm = 0x4B0
	cmovel	%ecx, %edi
	cmovel	%edx, %esi
	movl	%esi, 112(%rsp)         # 4-byte Spill
	addq	96(%rsp), %rax          # 8-byte Folded Reload
	movl	%r11d, %ebx
	addl	%ebx, %r9d
	addq	64(%rsp), %r10          # 8-byte Folded Reload
	cmpl	108(%rsp), %r9d         # 4-byte Folded Reload
	jl	.LBB14_40
	jmp	.LBB14_56
	.align	16, 0x90
.LBB14_20:                              # %for.cond.74.preheader
                                        #   in Loop: Header=BB14_13 Depth=1
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	jle	.LBB14_21
# BB#22:                                # %for.body.77.lr.ph
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	leal	(%rsi,%rdi), %esi
	addl	%ecx, %esi
	movslq	%esi, %r10
	movslq	%edx, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	xorl	%r9d, %r9d
	movl	44(%rsp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB14_23:                              # %for.body.77
                                        #   Parent Loop BB14_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_27 Depth 3
                                        #       Child Loop BB14_34 Depth 3
	movl	%edi, %r11d
	movl	%ebx, %r8d
	testq	%r10, %r10
	js	.LBB14_30
# BB#24:                                # %for.body.77
                                        #   in Loop: Header=BB14_23 Depth=2
	testl	%r11d, %r11d
	je	.LBB14_30
# BB#25:                                # %if.then.81
                                        #   in Loop: Header=BB14_23 Depth=2
	movq	72(%rsp), %rcx          # 8-byte Reload
	cmpl	%r12d, %ecx
	jge	.LBB14_30
# BB#26:                                #   in Loop: Header=BB14_23 Depth=2
	movq	112(%r15), %rdx
	addq	%r10, %rdx
	xorl	%ebx, %ebx
	movq	72(%rsp), %rdi          # 8-byte Reload
	.align	16, 0x90
.LBB14_27:                              # %for.body.87
                                        #   Parent Loop BB14_13 Depth=1
                                        #     Parent Loop BB14_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%r13,%rdi), %ecx
	andl	116(%rsp), %ecx         # 4-byte Folded Reload
	movslq	(%r15), %rbp
	movslq	%ecx, %rcx
	imulq	%rbp, %rcx
	testb	$64, (%rdx,%rcx)
	je	.LBB14_29
# BB#28:                                # %if.then.96
                                        #   in Loop: Header=BB14_27 Depth=3
	movl	%ebx, %ecx
	andl	$6, %ecx
	movb	bits(%rcx), %cl
	movl	%ebx, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	leal	(%rsi,%rbx), %esi
	sarl	$3, %esi
	movslq	%esi, %rsi
	orb	%cl, (%rax,%rsi)
.LBB14_29:                              # %if.end.106
                                        #   in Loop: Header=BB14_27 Depth=3
	addl	$2, %ebx
	addl	%r14d, %edi
	cmpl	%r12d, %edi
	jl	.LBB14_27
.LBB14_30:                              # %if.end.109
                                        #   in Loop: Header=BB14_23 Depth=2
	cmpl	$0, 112(%rsp)           # 4-byte Folded Reload
	je	.LBB14_38
# BB#31:                                # %if.end.109
                                        #   in Loop: Header=BB14_23 Depth=2
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%r10,%rcx), %rdx
	movl	(%r15), %ecx
	movslq	%ecx, %rsi
	cmpq	%rsi, %rdx
	jge	.LBB14_38
# BB#32:                                # %if.then.116
                                        #   in Loop: Header=BB14_23 Depth=2
	cmpl	%r12d, 84(%rsp)         # 4-byte Folded Reload
	jge	.LBB14_38
# BB#33:                                #   in Loop: Header=BB14_23 Depth=2
	movq	112(%r15), %rdi
	addq	%r10, %rdi
	addq	88(%rsp), %rdi          # 8-byte Folded Reload
	movl	$1, %ebx
	movl	84(%rsp), %edx          # 4-byte Reload
	movl	%edx, %esi
	jmp	.LBB14_34
	.align	16, 0x90
.LBB14_37:                              # %if.end.146.for.body.125_crit_edge
                                        #   in Loop: Header=BB14_34 Depth=3
	addl	$2, %ebx
	movl	(%r15), %ecx
.LBB14_34:                              # %for.body.125
                                        #   Parent Loop BB14_13 Depth=1
                                        #     Parent Loop BB14_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%r13,%rsi), %ebp
	andl	116(%rsp), %ebp         # 4-byte Folded Reload
	imull	%ecx, %ebp
	movslq	%ebp, %rcx
	testb	$64, (%rdi,%rcx)
	je	.LBB14_36
# BB#35:                                # %if.then.135
                                        #   in Loop: Header=BB14_34 Depth=3
	movl	%ebx, %ecx
	andl	$7, %ecx
	movb	bits(%rcx), %cl
	movl	%ebx, %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	(%rdx,%rbx), %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	orb	%cl, (%rax,%rdx)
.LBB14_36:                              # %if.end.146
                                        #   in Loop: Header=BB14_34 Depth=3
	addl	%r14d, %esi
	cmpl	%r12d, %esi
	jl	.LBB14_37
.LBB14_38:                              # %if.end.151
                                        #   in Loop: Header=BB14_23 Depth=2
	movl	$1, %ecx
	movl	%r11d, %edi
	subl	%edi, %ecx
	movl	$1, %edx
	movl	112(%rsp), %esi         # 4-byte Reload
	subl	%esi, %edx
	cmpl	$1200, 60(%r15)         # imm = 0x4B0
	cmovel	%ecx, %edi
	cmovel	%edx, %esi
	movl	%esi, 112(%rsp)         # 4-byte Spill
	addq	96(%rsp), %rax          # 8-byte Folded Reload
	movl	%r8d, %ebx
	addl	%ebx, %r9d
	addq	64(%rsp), %r10          # 8-byte Folded Reload
	cmpl	108(%rsp), %r9d         # 4-byte Folded Reload
	jl	.LBB14_23
	jmp	.LBB14_56
	.align	16, 0x90
.LBB14_19:                              #   in Loop: Header=BB14_13 Depth=1
	movl	44(%rsp), %edi          # 4-byte Reload
	jmp	.LBB14_56
.LBB14_21:                              #   in Loop: Header=BB14_13 Depth=1
	movl	44(%rsp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB14_56:                              # %if.end.263
                                        #   in Loop: Header=BB14_13 Depth=1
	cmpl	$0, 84(%r15)
	je	.LBB14_57
# BB#58:                                # %if.else.268
                                        #   in Loop: Header=BB14_13 Depth=1
	movl	%edi, 44(%rsp)          # 4-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	108(%rsp), %edx         # 4-byte Reload
	movl	16(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB14_59
	.align	16, 0x90
.LBB14_57:                              # %if.then.267
                                        #   in Loop: Header=BB14_13 Depth=1
	movl	%edi, 44(%rsp)          # 4-byte Spill
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	108(%rsp), %edx         # 4-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
.LBB14_59:                              # %for.inc.270
                                        #   in Loop: Header=BB14_13 Depth=1
	callq	convbuf
	movq	56(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpl	32(%r15), %eax
	jl	.LBB14_13
.LBB14_60:                              # %for.end.271
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	encode_bw_buf, .Lfunc_end14-encode_bw_buf
	.cfi_endproc

	.type	lxm3200_procs,@object   # @lxm3200_procs
	.data
	.align	8
lxm3200_procs:
	.quad	lxm3200_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	lxm3200_map_rgb_color
	.quad	lxm3200_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lxm3200_get_params
	.quad	lxm3200_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	lxm3200_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lxm3200"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_lxm3200_device,@object # @gs_lxm3200_device
	.data
	.globl	gs_lxm3200_device
	.align	8
gs_lxm3200_device:
	.long	18752                   # 0x4940
	.zero	4
	.quad	lxm3200_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	lxm3200_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	16                      # 0x10
	.long	8                       # 0x8
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	100                     # 0x64
	.zero	12
	.zero	12
	.zero	16
	.zero	4
	.zero	192
	.size	gs_lxm3200_device, 18752

	.type	lxm3200_open.a4_margins,@object # @lxm3200_open.a4_margins
	.section	.rodata,"a",@progbits
	.align	16
lxm3200_open.a4_margins:
	.long	1040858481              # float 1.350000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1040858481              # float 1.350000e-01
	.long	1032805417              # float 7.000000e-02
	.size	lxm3200_open.a4_margins, 16

	.type	lxm3200_open.letter_margins,@object # @lxm3200_open.letter_margins
	.align	16
lxm3200_open.letter_margins:
	.long	1048576000              # float 2.500000e-01
	.long	1045220557              # float 2.000000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1032805417              # float 7.000000e-02
	.size	lxm3200_open.letter_margins, 16

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"algnA"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"algnB"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"algnC"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"algnD"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"bidir"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"numpass"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"mode"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"model"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"z31m"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"lxm3200_print_page(scanbuf)"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"lxm3200_print_page(outdata)"
	.size	.L.str.12, 28

	.type	z12_init_sequence,@object # @z12_init_sequence
	.data
	.align	16
z12_init_sequence:
	.ascii	"\033*\200\000\000\000\000\000\0333\000\000\000\000\0003\033c\000\001@\002\r\263\0330\200\f\001\000\000\275\033!\000\000\000\000\000!"
	.size	z12_init_sequence, 40

	.type	init_sequence,@object   # @init_sequence
	.align	16
init_sequence:
	.ascii	"\033*\200\000\000\000\000\000\0333\000\000\000\000\0003\0330\200\f\002\000\000\276\033!\000\000\000\000\000!"
	.size	init_sequence, 32

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"lxm3200:freeresources(scanbuf)"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"lxm3200:freeresources(outdata)"
	.size	.L.str.14, 31

	.type	colmask,@object         # @colmask
	.section	.rodata,"a",@progbits
colmask:
	.ascii	"\020 @"
	.ascii	"\002\001\004"
	.size	colmask, 6

	.type	bits,@object            # @bits
	.section	.rodata.cst8,"aM",@progbits,8
bits:
	.ascii	"\200@ \020\b\004\002\001"
	.size	bits, 8

	.type	ibits,@object           # @ibits
ibits:
	.ascii	"\177\277\337\357\367\373\375\376"
	.size	ibits, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
