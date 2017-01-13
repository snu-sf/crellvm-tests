	.text
	.file	"gdevpdfg.bc"
	.globl	pdf_save_viewer_state
	.align	16, 0x90
	.type	pdf_save_viewer_state,@function
pdf_save_viewer_state:                  # @pdf_save_viewer_state
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
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movslq	28860(%rbx), %r12
	movl	28856(%rbx), %eax
	cmpl	%eax, %r12d
	jge	.LBB0_2
# BB#1:                                 # %entry.if.end.24_crit_edge
	movq	28848(%rbx), %r15
	jmp	.LBB0_4
.LBB0_2:                                # %if.then
	movq	1728(%rbx), %rdi
	imull	$1512, %eax, %esi       # imm = 0x5E8
	addl	$7560, %esi             # imm = 0x1D88
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB0_12
# BB#3:                                 # %if.end
	movslq	28856(%rbx), %rax
	imulq	$1512, %rax, %rdx       # imm = 0x5E8
	addq	$7560, %rdx             # imm = 0x1D88
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
	movq	28848(%rbx), %rsi
	movslq	28856(%rbx), %rax
	imulq	$1512, %rax, %rdx       # imm = 0x5E8
	movq	%r15, %rdi
	callq	memcpy
	movq	1728(%rbx), %rdi
	movq	28848(%rbx), %rsi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
	movq	%r15, 28848(%rbx)
	addl	$5, 28856(%rbx)
.LBB0_4:                                # %if.end.24
	movq	9928(%rbx), %rax
	imulq	$1512, %r12, %rbp       # imm = 0x5E8
	movq	%rax, 8(%r15,%rbp)
	movq	9936(%rbx), %rax
	movq	%rax, 16(%r15,%rbp)
	movq	9944(%rbx), %rax
	movq	%rax, 24(%r15,%rbp)
	movq	9952(%rbx), %rax
	movq	%rax, 32(%r15,%rbp)
	movl	9960(%rbx), %eax
	movl	%eax, (%r15,%rbp)
	movl	6096(%rbx), %eax
	movl	%eax, 40(%r15,%rbp)
	movl	6100(%rbx), %eax
	movl	%eax, 44(%r15,%rbp)
	movl	6092(%rbx), %eax
	movl	%eax, 48(%r15,%rbp)
	movq	9920(%rbx), %rax
	movq	%rax, 56(%r15,%rbp)
	movups	9968(%rbx), %xmm0
	movups	%xmm0, 64(%r15,%rbp)
	movl	9912(%rbx), %eax
	movl	%eax, 80(%r15,%rbp)
	movl	6192(%rbx), %eax
	movl	%eax, 84(%r15,%rbp)
	movl	6168(%rbx), %eax
	movl	%eax, 88(%r15,%rbp)
	movl	6120(%rbx), %eax
	movl	%eax, 92(%r15,%rbp)
	movl	9896(%rbx), %eax
	movl	%eax, 96(%r15,%rbp)
	movl	9900(%rbx), %eax
	movl	%eax, 100(%r15,%rbp)
	movl	6180(%rbx), %eax
	movl	%eax, 104(%r15,%rbp)
	movl	7500(%rbx), %eax
	movq	28848(%rbx), %rcx
	movl	%eax, 108(%rcx,%rbp)
	movl	7504(%rbx), %eax
	movl	%eax, 112(%rcx,%rbp)
	leaq	120(%rcx,%rbp), %rdi
	leaq	7512(%rbx), %rsi
	movl	$632, %edx              # imm = 0x278
	callq	memcpy
	movq	28848(%rbx), %rax
	leaq	752(%rax,%rbp), %rdi
	leaq	8144(%rbx), %rsi
	movl	$632, %edx              # imm = 0x278
	callq	memcpy
	movq	28848(%rbx), %rax
	movq	5992(%rbx), %rcx
	movq	%rcx, 1480(%rax,%rbp)
	movups	5976(%rbx), %xmm0
	movups	%xmm0, 1464(%rax,%rbp)
	movups	5960(%rbx), %xmm0
	movups	%xmm0, 1448(%rax,%rbp)
	movups	5896(%rbx), %xmm0
	movups	5912(%rbx), %xmm1
	movups	5928(%rbx), %xmm2
	movups	5944(%rbx), %xmm3
	movups	%xmm3, 1432(%rax,%rbp)
	movups	%xmm2, 1416(%rax,%rbp)
	movups	%xmm1, 1400(%rax,%rbp)
	movups	%xmm0, 1384(%rax,%rbp)
	movq	28848(%rbx), %rax
	movq	$0, 1448(%rax,%rbp)
	cmpq	$0, 7488(%rbx)
	movq	1488(%rax,%rbp), %rsi
	je	.LBB0_8
# BB#5:                                 # %if.then.136
	testq	%rsi, %rsi
	je	.LBB0_7
# BB#6:                                 # %if.then.142
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
.LBB0_7:                                # %if.end.151
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	7496(%rbx), %esi
	shll	$2, %esi
	movl	$.L.str.3, %edx
	callq	*64(%rdi)
	movq	28848(%rbx), %rcx
	movq	%rax, 1488(%rcx,%rbp)
	movq	7488(%rbx), %rsi
	movl	7496(%rbx), %edx
	shlq	$2, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movl	7496(%rbx), %eax
	movq	28848(%rbx), %rcx
	movl	%eax, 1496(%rcx,%rbp)
	jmp	.LBB0_10
.LBB0_8:                                # %if.else
	testq	%rsi, %rsi
	je	.LBB0_10
# BB#9:                                 # %if.then.185
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	movq	28848(%rbx), %rax
	movq	$0, 1488(%rax,%rbp)
	movl	$0, 1496(%rax,%rbp)
.LBB0_10:                               # %if.end.205
	incl	28860(%rbx)
	xorl	%ebp, %ebp
	testq	%r14, %r14
	je	.LBB0_12
# BB#11:                                # %if.then.208
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	stream_puts
.LBB0_12:                               # %cleanup.211
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pdf_save_viewer_state, .Lfunc_end0-pdf_save_viewer_state
	.cfi_endproc

	.globl	pdf_restore_viewer_state
	.align	16, 0x90
	.type	pdf_restore_viewer_state,@function
pdf_restore_viewer_state:               # @pdf_restore_viewer_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -24
.Ltmp14:
	.cfi_offset %r14, -16
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	movslq	28860(%rbx), %rdx
	leaq	-1(%rdx), %r14
	testq	%rdx, %rdx
	movl	%r14d, 28860(%rbx)
	movl	$-28, %eax
	jle	.LBB1_5
# BB#1:                                 # %entry
	cmpl	28864(%rbx), %edx
	jle	.LBB1_5
# BB#2:                                 # %if.end
	testq	%rcx, %rcx
	je	.LBB1_4
# BB#3:                                 # %if.then.2
	movl	$.L.str.5, %esi
	movq	%rcx, %rdi
	callq	stream_puts
.LBB1_4:                                # %if.end.3
	imulq	$1512, %r14, %rsi       # imm = 0x5E8
	addq	28848(%rbx), %rsi
	movq	%rbx, %rdi
	callq	pdf_load_viewer_state
	xorl	%eax, %eax
.LBB1_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	pdf_restore_viewer_state, .Lfunc_end1-pdf_restore_viewer_state
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_load_viewer_state,@function
pdf_load_viewer_state:                  # @pdf_load_viewer_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	8(%rbx), %rax
	movq	%rax, 9928(%r14)
	movq	16(%rbx), %rax
	movq	%rax, 9936(%r14)
	movq	24(%rbx), %rax
	movq	%rax, 9944(%r14)
	movq	32(%rbx), %rax
	movq	%rax, 9952(%r14)
	movl	(%rbx), %eax
	movl	%eax, 9960(%r14)
	movl	40(%rbx), %eax
	movl	%eax, 6096(%r14)
	movl	44(%rbx), %eax
	movl	%eax, 6100(%r14)
	movl	48(%rbx), %eax
	movl	%eax, 6092(%r14)
	movq	56(%rbx), %rax
	movq	%rax, 9920(%r14)
	movups	64(%rbx), %xmm0
	movups	%xmm0, 9968(%r14)
	movl	80(%rbx), %eax
	movl	%eax, 9912(%r14)
	movl	84(%rbx), %eax
	movl	%eax, 6192(%r14)
	movl	88(%rbx), %eax
	movl	%eax, 6168(%r14)
	movl	92(%rbx), %eax
	movl	%eax, 6120(%r14)
	movl	96(%rbx), %eax
	movl	%eax, 9896(%r14)
	movl	100(%rbx), %eax
	movl	%eax, 9900(%r14)
	movl	104(%rbx), %eax
	movl	%eax, 6180(%r14)
	movl	108(%rbx), %eax
	movl	%eax, 7500(%r14)
	movl	112(%rbx), %eax
	movl	%eax, 7504(%r14)
	leaq	7512(%r14), %rdi
	leaq	120(%rbx), %rsi
	movl	$632, %edx              # imm = 0x278
	callq	memcpy
	leaq	8144(%r14), %rdi
	leaq	752(%rbx), %rsi
	movl	$632, %edx              # imm = 0x278
	callq	memcpy
	movq	1480(%rbx), %rax
	movq	%rax, 5992(%r14)
	movups	1464(%rbx), %xmm0
	movups	%xmm0, 5976(%r14)
	movups	1448(%rbx), %xmm0
	movups	%xmm0, 5960(%r14)
	movups	1384(%rbx), %xmm0
	movups	1400(%rbx), %xmm1
	movups	1416(%rbx), %xmm2
	movups	1432(%rbx), %xmm3
	movups	%xmm3, 5944(%r14)
	movups	%xmm2, 5928(%r14)
	movups	%xmm1, 5912(%r14)
	movups	%xmm0, 5896(%r14)
	cmpq	$0, 1488(%rbx)
	movq	7488(%r14), %rsi
	je	.LBB2_4
# BB#1:                                 # %if.then
	testq	%rsi, %rsi
	je	.LBB2_3
# BB#2:                                 # %if.then.42
	movq	24(%r14), %rax
	movq	(%rax), %rdi
	movl	$.L.str.53, %edx
	callq	*24(%rdi)
.LBB2_3:                                # %if.end
	movq	24(%r14), %rax
	movq	(%rax), %rdi
	movl	1496(%rbx), %esi
	shll	$2, %esi
	movl	$.L.str.54, %edx
	callq	*64(%rdi)
	movq	%rax, 7488(%r14)
	movl	1496(%rbx), %eax
	movl	%eax, 7496(%r14)
	jmp	.LBB2_6
.LBB2_4:                                # %if.else
	testq	%rsi, %rsi
	je	.LBB2_6
# BB#5:                                 # %if.then.57
	movq	24(%r14), %rax
	movq	(%rax), %rdi
	movl	$.L.str.53, %edx
	callq	*24(%rdi)
	movq	$0, 7488(%r14)
	movl	$0, 7496(%r14)
.LBB2_6:                                # %if.end.68
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	pdf_load_viewer_state, .Lfunc_end2-pdf_load_viewer_state
	.cfi_endproc

	.globl	pdf_set_initial_color
	.align	16, 0x90
	.type	pdf_set_initial_color,@function
pdf_set_initial_color:                  # @pdf_set_initial_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 48
	subq	$656, %rsp              # imm = 0x290
.Ltmp25:
	.cfi_def_cfa_offset 704
.Ltmp26:
	.cfi_offset %rbx, -48
.Ltmp27:
	.cfi_offset %r12, -40
.Ltmp28:
	.cfi_offset %r13, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	callq	gx_device_black
	movq	%rax, 8832(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_white
	movq	%rax, 8840(%rbx)
	movq	8832(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	$gx_dc_type_data_pure, (%rsp)
	movl	$0, 360(%rsp)
	leaq	(%rsp), %rbx
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	gx_hld_save_color
	xorl	%edi, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	gx_hld_save_color
	movl	$1, (%r15)
	movl	$1, (%r14)
	addq	$656, %rsp              # imm = 0x290
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	pdf_set_initial_color, .Lfunc_end3-pdf_set_initial_color
	.cfi_endproc

	.globl	pdf_viewer_state_from_imager_state
	.align	16, 0x90
	.type	pdf_viewer_state_from_imager_state,@function
pdf_viewer_state_from_imager_state:     # @pdf_viewer_state_from_imager_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 40
	subq	$1512, %rsp             # imm = 0x5E8
.Ltmp35:
	.cfi_def_cfa_offset 1552
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r12, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	(%rsp), %r12
	movq	%r12, %rdi
	callq	pdf_viewer_state_from_imager_state_aux
	leaq	120(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_hld_save_color
	leaq	752(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_hld_save_color
	movq	$0, 108(%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	pdf_load_viewer_state
	addq	$1512, %rsp             # imm = 0x5E8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	pdf_viewer_state_from_imager_state, .Lfunc_end4-pdf_viewer_state_from_imager_state
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_viewer_state_from_imager_state_aux,@function
pdf_viewer_state_from_imager_state_aux: # @pdf_viewer_state_from_imager_state_aux
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	440(%rsi), %r8
	xorl	%edi, %edi
	testq	%r8, %r8
	movl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movl	$gs_identity_transfer, %eax
	cmpq	%rax, 24(%r8)
	setne	%al
	movzbl	%al, %eax
.LBB5_2:                                # %cond.end
	movq	456(%rsi), %r9
	testq	%r9, %r9
	je	.LBB5_4
# BB#3:                                 # %cond.true.8
	movl	$gs_identity_transfer, %ecx
	cmpq	%rcx, 24(%r9)
	setne	%cl
	movzbl	%cl, %edi
	addl	%edi, %edi
.LBB5_4:                                # %cond.end.16
	orl	%eax, %edi
	movq	472(%rsi), %rdx
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	movl	$0, %eax
	je	.LBB5_6
# BB#5:                                 # %cond.true.22
	movl	$gs_identity_transfer, %eax
	cmpq	%rax, 24(%rdx)
	setne	%al
	movzbl	%al, %eax
	shll	$2, %eax
.LBB5_6:                                # %cond.end.30
	addl	%edi, %eax
	movq	488(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB5_8
# BB#7:                                 # %cond.true.37
	movl	$gs_identity_transfer, %ecx
	cmpq	%rcx, 24(%rdi)
	setne	%cl
	movzbl	%cl, %ecx
	shll	$3, %ecx
.LBB5_8:                                # %cond.end.45
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	testq	%r8, %r8
	movl	%eax, (%rbx)
	je	.LBB5_10
# BB#9:                                 # %cond.true.53
	movq	48(%r8), %rcx
.LBB5_10:                               # %cond.end.57
	xorl	%eax, %eax
	testq	%r9, %r9
	movq	%rcx, 8(%rbx)
	je	.LBB5_12
# BB#11:                                # %cond.true.63
	movq	48(%r9), %rax
.LBB5_12:                               # %cond.end.68
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	movq	%rax, 16(%rbx)
	je	.LBB5_14
# BB#13:                                # %cond.true.76
	movq	48(%rdx), %rcx
.LBB5_14:                               # %cond.end.81
	xorl	%eax, %eax
	testq	%rdi, %rdi
	movq	%rcx, 24(%rbx)
	je	.LBB5_16
# BB#15:                                # %cond.true.89
	movq	48(%rdi), %rax
.LBB5_16:                               # %cond.end.94
	movq	%rax, 32(%rbx)
	movl	224(%rsi), %eax
	movl	%eax, 40(%rbx)
	movl	228(%rsi), %eax
	movl	%eax, 44(%rbx)
	movl	220(%rsi), %eax
	movl	%eax, 48(%rbx)
	movq	392(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_18
# BB#17:                                # %cond.true.102
	movq	184(%rcx), %rax
.LBB5_18:                               # %cond.end.106
	movq	%rax, 56(%rbx)
	movq	416(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_20
# BB#19:                                # %cond.true.110
	movq	48(%rcx), %rax
.LBB5_20:                               # %cond.end.114
	movq	%rax, 64(%rbx)
	movq	424(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_22
# BB#21:                                # %cond.true.118
	movq	48(%rcx), %rax
.LBB5_22:                               # %cond.end.122
	movq	%rax, 72(%rbx)
	movl	$0, 80(%rbx)
	movl	296(%rsi), %eax
	movl	%eax, 88(%rbx)
	movl	320(%rsi), %eax
	movl	%eax, 84(%rbx)
	movl	248(%rsi), %eax
	movl	%eax, 92(%rbx)
	movl	$0, 96(%rbx)
	movl	$0, 100(%rbx)
	movl	$0, 104(%rbx)
	movl	$1056964608, 1384(%rbx) # imm = 0x3F000000
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1388(%rbx)
	movl	$0, 1404(%rbx)
	movl	$1092616192, 1408(%rbx) # imm = 0x41200000
	movl	$0, 1412(%rbx)
	movl	56(%rsi), %eax
	movl	%eax, 1416(%rbx)
	movl	60(%rsi), %eax
	movl	%eax, 1420(%rbx)
	movq	80(%rsi), %rax
	movq	%rax, 1440(%rbx)
	movups	64(%rsi), %xmm0
	movups	%xmm0, 1424(%rbx)
	leaq	1448(%rbx), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset
	movq	$0, 1488(%rbx)
	movl	$0, 1496(%rbx)
	popq	%rbx
	retq
.Lfunc_end5:
	.size	pdf_viewer_state_from_imager_state_aux, .Lfunc_end5-pdf_viewer_state_from_imager_state_aux
	.cfi_endproc

	.globl	pdf_prepare_initial_viewer_state
	.align	16, 0x90
	.type	pdf_prepare_initial_viewer_state,@function
pdf_prepare_initial_viewer_state:       # @pdf_prepare_initial_viewer_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp48:
	.cfi_def_cfa_offset 720
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	28872(%rbx), %r15
	leaq	28992(%rbx), %r12
	leaq	29624(%rbx), %r13
	callq	gx_device_black
	movq	%rax, 8832(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_white
	movq	%rax, 8840(%rbx)
	movq	8832(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	$gx_dc_type_data_pure, 8(%rsp)
	movl	$0, 368(%rsp)
	leaq	8(%rsp), %rbp
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	gx_hld_save_color
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	gx_hld_save_color
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 28980(%rbx)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	pdf_viewer_state_from_imager_state_aux
	movl	$1, 30384(%rbx)
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pdf_prepare_initial_viewer_state, .Lfunc_end6-pdf_prepare_initial_viewer_state
	.cfi_endproc

	.globl	pdf_reset_graphics
	.align	16, 0x90
	.type	pdf_reset_graphics,@function
pdf_reset_graphics:                     # @pdf_reset_graphics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 40
	subq	$664, %rsp              # imm = 0x298
.Ltmp59:
	.cfi_def_cfa_offset 704
.Ltmp60:
	.cfi_offset %rbx, -40
.Ltmp61:
	.cfi_offset %r12, -32
.Ltmp62:
	.cfi_offset %r14, -24
.Ltmp63:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	cmpl	$0, 30384(%rbx)
	je	.LBB7_2
# BB#1:                                 # %if.then
	leaq	28872(%rbx), %rsi
	movq	%rbx, %rdi
	callq	pdf_load_viewer_state
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	leaq	7512(%rbx), %r14
	leaq	8144(%rbx), %r15
	movq	%rbx, %rdi
	callq	gx_device_black
	movq	%rax, 8832(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_white
	movq	%rax, 8840(%rbx)
	movq	8832(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	$gx_dc_type_data_pure, 8(%rsp)
	movl	$0, 368(%rsp)
	leaq	8(%rsp), %r12
	xorl	%edi, %edi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	gx_hld_save_color
	xorl	%edi, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	gx_hld_save_color
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 7500(%rbx)
	movl	$-1082130432, 6168(%rbx) # imm = 0xFFFFFFFFBF800000
	movq	pdf_reset_graphics_old.lp_initial+96(%rip), %rax
	movq	%rax, 5992(%rbx)
	movups	pdf_reset_graphics_old.lp_initial+80(%rip), %xmm0
	movups	%xmm0, 5976(%rbx)
	movups	pdf_reset_graphics_old.lp_initial+64(%rip), %xmm0
	movups	%xmm0, 5960(%rbx)
	movups	pdf_reset_graphics_old.lp_initial+48(%rip), %xmm0
	movups	%xmm0, 5944(%rbx)
	movups	pdf_reset_graphics_old.lp_initial+32(%rip), %xmm0
	movups	%xmm0, 5928(%rbx)
	movups	pdf_reset_graphics_old.lp_initial+16(%rip), %xmm0
	movups	%xmm0, 5912(%rbx)
	movups	pdf_reset_graphics_old.lp_initial(%rip), %xmm0
	movups	%xmm0, 5896(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 9896(%rbx)
	movq	%rbx, %rdi
	callq	pdf_reset_text
.LBB7_3:                                # %if.end
	movq	%rbx, %rdi
	callq	pdf_reset_text
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	pdf_reset_graphics, .Lfunc_end7-pdf_reset_graphics
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_1:
	.long	1065353216              # float 1
.LCPI8_2:
	.long	1191178240              # float 32760
.LCPI8_3:
	.long	1132396544              # float 255
.LCPI8_4:
	.long	0                       # float 0
	.text
	.globl	convert_DeviceN_alternate
	.align	16, 0x90
	.type	convert_DeviceN_alternate,@function
convert_DeviceN_alternate:              # @convert_DeviceN_alternate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$584, %rsp              # imm = 0x248
.Ltmp70:
	.cfi_def_cfa_offset 640
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %r14
	movq	%rdx, %r12
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	$0, 576(%rsp)
	movq	$0, 544(%rsp)
	movl	$.L.str.6, %esi
	callq	cos_array_alloc
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB8_104
# BB#1:                                 # %if.end
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	80(%r12), %eax
	cvtsi2sdq	%rax, %xmm1
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	cvttsd2si	%xmm0, %r13
	movq	24(%rbx), %rdi
	movl	100(%rbx), %esi
	imull	%r13d, %esi
	movl	$.L.str.7, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB8_41
# BB#2:                                 # %if.end.9
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movslq	100(%rbx), %rdx
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movslq	%r13d, %r13
	imulq	%r13, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movq	%r12, %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	movq	40(%r12), %rbp
	movq	%r12, %r15
	movq	%r12, 56(%rsp)          # 8-byte Spill
	cmoveq	%rbp, %r15
	.align	16, 0x90
.LBB8_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	je	.LBB8_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	40(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB8_3
.LBB8_5:                                # %do.end
	leaq	160(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB8_16
# BB#6:                                 # %for.body.lr.ph
	leaq	416(%rsp), %r12
	.align	16, 0x90
.LBB8_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
                                        #     Child Loop BB8_14 Depth 2
	testl	%ebp, %ebp
	jle	.LBB8_13
# BB#8:                                 # %if.then.31
                                        #   in Loop: Header=BB8_7 Depth=1
	movss	160(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI8_4, %xmm0
	jne	.LBB8_9
	jnp	.LBB8_105
.LBB8_9:                                # %while.cond.preheader
                                        #   in Loop: Header=BB8_7 Depth=1
	ucomiss	.LCPI8_1(%rip), %xmm0
	movl	$1, %eax
	leaq	160(%rsp), %rcx
	movq	%rcx, %rdx
	jne	.LBB8_12
	jp	.LBB8_12
	.align	16, 0x90
.LBB8_10:                               # %while.body
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, (%rdx)
	leaq	4(%rdx), %rcx
	cmpq	%r13, %rax
	jge	.LBB8_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB8_10 Depth=2
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	incq	%rax
	ucomiss	.LCPI8_1(%rip), %xmm0
	movq	%rcx, %rdx
	jne	.LBB8_12
	jnp	.LBB8_10
.LBB8_12:                               # %while.end
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	$1065353216, (%rcx)     # imm = 0x3F800000
	jmp	.LBB8_13
	.align	16, 0x90
.LBB8_105:                              # %if.then.36
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	$1065353216, 160(%rsp)  # imm = 0x3F800000
.LBB8_13:                               # %if.end.58
                                        #   in Loop: Header=BB8_7 Depth=1
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%r12, %rdi
	callq	memset
	movq	(%r15), %rax
	leaq	152(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, %r8
	callq	*56(%rax)
	movl	100(%rbx), %ecx
	testl	%ecx, %ecx
	movl	$0, %eax
	movss	.LCPI8_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI8_3(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	jle	.LBB8_15
	.align	16, 0x90
.LBB8_14:                               # %for.body.66
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	416(%rsp,%rax,2), %edx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	divss	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %edx
	imull	%ebp, %ecx
	leal	(%rcx,%rax), %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%r14,%rcx)
	incq	%rax
	movslq	100(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB8_14
.LBB8_15:                               # %for.inc.80
                                        #   in Loop: Header=BB8_7 Depth=1
	incl	%ebp
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebp
	jne	.LBB8_7
.LBB8_16:                               # %for.end.82
	movl	9008(%rbx), %ecx
	cmpl	$5, %ecx
	je	.LBB8_22
# BB#17:                                # %for.end.82
	cmpl	$7, %ecx
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	640(%rsp), %r13
	movq	56(%rsp), %r15          # 8-byte Reload
	jne	.LBB8_18
# BB#21:                                # %sw.bb.88
	movl	80(%r15), %edx
	leaq	576(%rsp), %rsi
	movl	$3, %ecx
	jmp	.LBB8_20
.LBB8_22:                               # %sw.bb.93
	movq	56(%rsp), %r15          # 8-byte Reload
	movl	80(%r15), %edx
	leaq	576(%rsp), %rsi
	movl	$4, %ecx
	movq	%rbx, %rdi
	movq	%r14, %r8
	callq	pdf_make_sampled_base_space_function
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	640(%rsp), %r13
	jmp	.LBB8_23
.LBB8_18:                               # %for.end.82
	movl	$-15, %eax
	cmpl	$6, %ecx
	jne	.LBB8_23
# BB#19:                                # %sw.bb
	movl	80(%r15), %edx
	leaq	576(%rsp), %rsi
	movl	$1, %ecx
.LBB8_20:                               # %sw.epilog
	movq	%rbx, %rdi
	movq	%r14, %r8
	callq	pdf_make_sampled_base_space_function
.LBB8_23:                               # %sw.epilog
	movq	24(%rbx), %rdi
	movl	$.L.str.7, %edx
	movq	%r14, %rsi
	movl	%eax, %ebp
	callq	*24(%rdi)
	movl	%ebp, %eax
	testl	%eax, %eax
	js	.LBB8_24
# BB#27:                                # %if.end.105
	leaq	552(%rsp), %rdi
	movl	$.L.str.9, %esi
	callq	cos_c_string_value
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	testl	%eax, %eax
	js	.LBB8_28
# BB#29:                                # %if.end.112
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	callq	gs_color_space_get_index
	xorl	%ebp, %ebp
	cmpl	$10, %eax
	jne	.LBB8_31
# BB#30:                                # %if.then.116
	movq	%r15, %rbp
	movq	40(%r15), %rax
	movq	%rax, %r15
.LBB8_31:                               # %if.then.121
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	cos_array_alloc
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB8_39
# BB#32:                                # %for.cond.128.preheader
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	cmpl	$0, 80(%r15)
	je	.LBB8_40
# BB#33:                                # %for.body.134.lr.ph
	xorl	%r14d, %r14d
	leaq	552(%rsp), %rbp
	.align	16, 0x90
.LBB8_36:                               # %for.body.134
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%r14,8), %rsi
	leaq	144(%rsp), %rdx
	leaq	140(%rsp), %rcx
	callq	*112(%r15)
	testl	%eax, %eax
	js	.LBB8_37
# BB#38:                                # %if.end.147
                                        #   in Loop: Header=BB8_36 Depth=1
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movq	144(%rsp), %r12
	movl	140(%rsp), %r15d
	movq	1728(%rbx), %rdi
	leal	1(%r15), %r14d
	movl	$.L.str.20, %edx
	movl	%r14d, %esi
	callq	*136(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB8_39
# BB#34:                                # %if.end.153
                                        #   in Loop: Header=BB8_36 Depth=1
	movb	$47, (%r13)
	movq	%r13, %rdi
	incq	%rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	cos_string_value
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	callq	cos_array_add_no_copy
	testl	%eax, %eax
	js	.LBB8_37
# BB#35:                                # %for.cond.128
                                        #   in Loop: Header=BB8_36 Depth=1
	movq	72(%rsp), %r14          # 8-byte Reload
	incq	%r14
	movq	56(%rsp), %r15          # 8-byte Reload
	cmpl	80(%r15), %r14d
	movq	640(%rsp), %r13
	jb	.LBB8_36
.LBB8_40:                               # %for.end.162
	leaq	552(%rsp), %r14
	movq	%r14, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	cos_object_value
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	cos_array_add
	testl	%eax, %eax
	js	.LBB8_41
# BB#43:                                # %if.end.170
	cmpq	$0, 96(%r15)
	je	.LBB8_65
# BB#44:                                # %if.then.175
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	cos_dict_alloc
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB8_63
# BB#45:                                # %if.end.181
	leaq	80(%rsp), %rcx
	movl	$5, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%rbx, %rdi
	callq	pdf_alloc_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_46
# BB#47:                                # %if.end.187
	movq	80(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	leaq	416(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	cos_object_value
	movq	80(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.11, %esi
	movl	$10, %edx
	movq	%rbp, %rcx
	callq	cos_dict_put
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_46
# BB#48:                                # %for.cond.201.preheader
	movq	96(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB8_49
.LBB8_52:                               # %for.body.204
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdi
	movq	24(%rbp), %rsi
	leaq	144(%rsp), %rdx
	leaq	140(%rsp), %rcx
	callq	*112(%r15)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_53
# BB#54:                                # %if.end.214
                                        #   in Loop: Header=BB8_52 Depth=1
	movq	32(%rbp), %rcx
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%edx, %edx
	movl	$pdf_color_space_names, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	leaq	112(%rsp), %rsi
	callq	pdf_color_space_named
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB8_53
# BB#55:                                # %if.end.220
                                        #   in Loop: Header=BB8_52 Depth=1
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	%r14, %r12
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	144(%rsp), %r13
	movl	140(%rsp), %ebp
	movq	1728(%rbx), %rdi
	leal	1(%rbp), %r15d
	movl	$.L.str.20, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB8_56
# BB#57:                                # %if.end.226
                                        #   in Loop: Header=BB8_52 Depth=1
	movb	$47, (%r14)
	movq	%r14, %rdi
	incq	%rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	88(%rsp), %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	cos_string_value
	movq	96(%rsp), %rsi
	movl	104(%rsp), %edx
	movq	%r12, %r14
	movq	%r14, %rdi
	leaq	112(%rsp), %rcx
	callq	cos_dict_put
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_58
# BB#51:                                # %for.cond.201
                                        #   in Loop: Header=BB8_52 Depth=1
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	40(%rbp), %rbp
	testq	%rbp, %rbp
	movq	640(%rsp), %r13
	movq	56(%rsp), %r15          # 8-byte Reload
	jne	.LBB8_52
.LBB8_49:                               # %for.end.236
	leaq	80(%rsp), %rsi
	movl	$5, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	pdf_substitute_resource
	testl	%eax, %eax
	js	.LBB8_50
# BB#59:                                # %if.end.242
	movq	26664(%rbx), %rax
	movq	80(%rsp), %rcx
	orq	%rax, 56(%rcx)
	movq	64(%rcx), %rsi
	leaq	152(%rsp), %r14
	movq	%r14, %rdi
	callq	cos_object_value
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	cos_array_add
	testl	%eax, %eax
	js	.LBB8_61
# BB#60:
	movb	$1, %cl
                                        # implicit-def: EAX
	jmp	.LBB8_64
.LBB8_41:                               # %if.then.168
	movl	$.L.str.8, %esi
	movq	%rbp, %rdi
	jmp	.LBB8_42
.LBB8_24:                               # %if.then.103
	movl	$.L.str.8, %esi
	jmp	.LBB8_25
.LBB8_28:                               # %if.then.110
	movl	$.L.str.6, %esi
.LBB8_25:                               # %cleanup.437
	movq	%r12, %rdi
.LBB8_26:                               # %cleanup.437
	movl	%eax, %ebx
	callq	cos_free
	movl	%ebx, %eax
	jmp	.LBB8_104
.LBB8_39:                               # %if.then.125
	movl	$.L.str.8, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
.LBB8_42:                               # %cleanup.281.thread
	callq	cos_free
	movl	$-25, %eax
.LBB8_104:                              # %cleanup.437
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_37:                               # %if.then.145
	movl	$.L.str.8, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB8_26
.LBB8_46:                               # %if.then.185
	movl	$.L.str.8, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	cos_free
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	jmp	.LBB8_64
.LBB8_53:                               # %if.then.212
	movl	$.L.str.8, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	cos_free
	xorl	%ecx, %ecx
	movl	%r12d, %eax
	jmp	.LBB8_64
.LBB8_50:                               # %if.then.240
	movl	$.L.str.8, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB8_62
.LBB8_56:                               # %if.then.224
	movl	$.L.str.8, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	cos_free
	xorl	%ecx, %ecx
	movq	640(%rsp), %r13
	movq	56(%rsp), %r15          # 8-byte Reload
	movl	$-25, %eax
	jmp	.LBB8_64
.LBB8_58:                               # %if.then.232
	movl	$.L.str.8, %esi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	cos_free
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	movq	640(%rsp), %r13
	movq	56(%rsp), %r15          # 8-byte Reload
	jmp	.LBB8_64
.LBB8_61:                               # %if.then.249
	movl	$.L.str.8, %esi
	movq	%rbp, %rdi
.LBB8_62:                               # %cleanup
	movl	%eax, %ebp
	callq	cos_free
	movl	%ebp, %eax
.LBB8_63:                               # %cleanup
	xorl	%ecx, %ecx
.LBB8_64:                               # %cleanup
	testb	%cl, %cl
	je	.LBB8_104
.LBB8_65:                               # %if.end.257
	movl	9008(%rbx), %eax
	cmpl	$5, %eax
	je	.LBB8_71
# BB#66:                                # %if.end.257
	cmpl	$7, %eax
	movq	48(%rsp), %r14          # 8-byte Reload
	jne	.LBB8_67
# BB#70:                                # %sw.bb.262
	movq	pdf_color_space_names+16(%rip), %rsi
	jmp	.LBB8_69
.LBB8_71:                               # %sw.bb.264
	movq	pdf_color_space_names(%rip), %rsi
	leaq	552(%rsp), %rdi
	callq	cos_c_string_value
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB8_72
.LBB8_67:                               # %if.end.257
	cmpl	$6, %eax
	jne	.LBB8_72
# BB#68:                                # %sw.bb.260
	movq	pdf_color_space_names+8(%rip), %rsi
.LBB8_69:                               # %sw.epilog.267
	leaq	552(%rsp), %rdi
	callq	cos_c_string_value
.LBB8_72:                               # %sw.epilog.267
	leaq	552(%rsp), %rsi
	movq	%r14, %rdi
	callq	cos_array_add
	testl	%eax, %eax
	js	.LBB8_75
# BB#73:                                # %if.then.271
	movq	576(%rsp), %rsi
	leaq	552(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	pdf_function_scaled
	testl	%eax, %eax
	js	.LBB8_95
# BB#74:                                # %if.then.275
	leaq	552(%rsp), %rsi
	movq	%r14, %rdi
	callq	cos_array_add
.LBB8_75:                               # %if.end.288
	movq	576(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%eax, %ebp
	callq	pdf_delete_sampled_base_space_function
	movl	%ebp, %eax
	testl	%eax, %eax
	js	.LBB8_96
# BB#76:                                # %lor.lhs.false
	movq	32(%r15), %rdx
	leaq	544(%rsp), %rcx
	xorl	%esi, %esi
	movq	$-1, %r8
	movq	%rbx, %rdi
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB8_96
# BB#77:                                # %if.end.297
	movq	544(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	pdf_reserve_object_id
	movq	%r14, %rbp
	movq	%r15, %r12
	movq	544(%rsp), %r15
	movq	$0, 88(%r15)
	movl	$0, 80(%r15)
	movq	$0, 72(%r15)
	movq	544(%rsp), %rax
	movq	64(%rax), %rdi
	movq	8(%rdi), %rax
	movq	%rax, 8(%rbp)
	movl	$.L.str.6, %esi
	callq	cos_free
	movq	544(%rsp), %rax
	movq	%rbp, 64(%rax)
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbp, %r14
	movq	%rbx, %rsi
	callq	cos_write_object
	movq	%r12, %rdi
	callq	gs_color_space_get_index
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	je	.LBB8_80
# BB#78:                                # %if.end.297
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	jne	.LBB8_80
# BB#79:                                # %if.then.311
	movq	5848(%rbx), %rdi
	addq	$32, %r15
	movl	$.L.str.12, %esi
	movq	%r15, %rdx
	callq	pprints1
.LBB8_80:                               # %cleanup.cont.317
	movq	544(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB8_82
# BB#81:                                # %if.then.320
	movq	26664(%rbx), %rax
	orq	%rax, 56(%rcx)
	movq	30448(%rbx), %rsi
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	callq	pdf_add_resource
	testl	%eax, %eax
	js	.LBB8_104
.LBB8_82:                               # %if.end.329
	movq	24(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB8_90
# BB#83:                                # %if.then.332
	leaq	152(%rsp), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	cos_object_value
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	cos_array_alloc
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%rax, %rcx
	movq	%rax, %r14
	movq	%r15, %r8
	callq	pdf_indexed_color_space
	testl	%eax, %eax
	js	.LBB8_96
# BB#84:                                # %lor.lhs.false.340
	movq	32(%rbp), %rdx
	leaq	544(%rsp), %rcx
	xorl	%esi, %esi
	movq	$-1, %r8
	movq	%rbx, %rdi
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB8_96
# BB#85:                                # %if.end.347
	movq	544(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	pdf_reserve_object_id
	movq	544(%rsp), %r15
	movq	$0, 88(%r15)
	movl	$0, 80(%r15)
	movq	$0, 72(%r15)
	movq	544(%rsp), %rax
	movq	64(%rax), %rdi
	movq	8(%rdi), %rax
	movq	%r14, %rbp
	movq	%rax, 8(%rbp)
	movl	$.L.str.6, %esi
	callq	cos_free
	movq	544(%rsp), %rax
	movq	%rbp, 64(%rax)
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbp, %r14
	movq	%rbx, %rsi
	callq	cos_write_object
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	je	.LBB8_87
# BB#86:                                # %if.then.361
	movq	5848(%rbx), %rdi
	addq	$32, %r15
	movl	$.L.str.12, %esi
	movq	%r15, %rdx
	callq	pprints1
.LBB8_87:                               # %cleanup.cont.369
	movq	544(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB8_89
# BB#88:                                # %if.then.372
	movq	26664(%rbx), %rax
	orq	%rax, 56(%rcx)
	movq	30448(%rbx), %rsi
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	callq	pdf_add_resource
	testl	%eax, %eax
	js	.LBB8_104
.LBB8_89:                               # %cleanup.383
	movq	24(%rsp), %r12          # 8-byte Reload
.LBB8_90:                               # %if.end.386
	movq	32(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movq	%r14, %rsi
	je	.LBB8_99
# BB#91:                                # %if.then.389
	movq	%r12, %r15
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	5848(%rbx), %rdi
	movq	24(%rax), %rdx
	movq	%rax, %r12
	movl	$.L.str.14, %esi
	callq	pprints1
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	je	.LBB8_92
# BB#97:                                # %if.else.413
	movq	5848(%rbx), %rbp
	movss	8(%r13), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.15, %esi
	movq	%rbp, %rdi
	callq	pprintg1
	jmp	.LBB8_98
.LBB8_96:                               # %cleanup.367
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	jmp	.LBB8_26
.LBB8_95:                               # %if.else.277
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	jmp	.LBB8_26
.LBB8_92:                               # %for.cond.395.preheader
	cmpl	$0, 80(%r15)
	je	.LBB8_98
# BB#93:                                # %for.body.401.preheader
	xorl	%ebp, %ebp
.LBB8_94:                               # %for.body.401
                                        # =>This Inner Loop Header: Depth=1
	movq	5848(%rbx), %r14
	movss	8(%r13,%rbp,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	callq	pprintg1
	incq	%rbp
	cmpl	80(%r15), %ebp
	jb	.LBB8_94
.LBB8_98:                               # %if.end.421
	movq	5848(%rbx), %rdi
	movq	40(%r12), %rdx
	movl	$.L.str.16, %esi
	callq	pprints1
	movq	48(%rsp), %rsi          # 8-byte Reload
.LBB8_99:                               # %if.end.424
	xorl	%eax, %eax
	movq	648(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_104
# BB#100:                               # %if.then.427
	cmpl	$0, 656(%rsp)
	je	.LBB8_102
# BB#101:                               # %if.then.429
	callq	cos_resource_value
	jmp	.LBB8_103
.LBB8_102:                              # %if.else.432
	callq	cos_object_value
.LBB8_103:                              # %cleanup.437
	xorl	%eax, %eax
	jmp	.LBB8_104
.Lfunc_end8:
	.size	convert_DeviceN_alternate, .Lfunc_end8-convert_DeviceN_alternate
	.cfi_endproc

	.globl	pdf_string_to_cos_name
	.align	16, 0x90
	.type	pdf_string_to_cos_name,@function
pdf_string_to_cos_name:                 # @pdf_string_to_cos_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 48
.Ltmp82:
	.cfi_offset %rbx, -48
.Ltmp83:
	.cfi_offset %r12, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	1728(%rdi), %rdi
	leal	1(%rbx), %r12d
	movl	$.L.str.20, %edx
	movl	%r12d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB9_2
# BB#1:                                 # %if.end
	movb	$47, (%rbp)
	movq	%rbp, %rdi
	incq	%rdi
	movl	%ebx, %edx
	movq	%r15, %rsi
	callq	memcpy
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%r12d, %edx
	callq	cos_string_value
	xorl	%eax, %eax
.LBB9_2:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pdf_string_to_cos_name, .Lfunc_end9-pdf_string_to_cos_name
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.long	1191178240              # float 3.276000e+04
	.long	1191178240              # float 3.276000e+04
	.long	1191178240              # float 3.276000e+04
	.long	1191178240              # float 3.276000e+04
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_1:
	.long	1191178240              # float 32760
	.text
	.globl	convert_separation_alternate
	.align	16, 0x90
	.type	convert_separation_alternate,@function
convert_separation_alternate:           # @convert_separation_alternate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp93:
	.cfi_def_cfa_offset 560
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %rbp
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	$0, 496(%rsp)
	movq	$0, 416(%rsp)
	movl	$.L.str.6, %esi
	callq	cos_array_alloc
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB10_74
# BB#1:                                 # %if.end
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%rax, %r14
	movq	%r13, %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	movq	40(%r13), %rbx
	movq	%r13, %rbp
	cmoveq	%rbx, %rbp
	.align	16, 0x90
.LBB10_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	je	.LBB10_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	40(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB10_2
.LBB10_4:                               # %do.end
	leaq	32(%rsp), %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	callq	memset
	movl	$0, 32(%rsp)
	leaq	288(%rsp), %rbx
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	(%rbp), %rax
	leaq	24(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	*56(%rax)
	movslq	100(%r15), %rax
	testq	%rax, %rax
	jle	.LBB10_15
# BB#5:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB10_14
# BB#6:                                 # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-4, %rcx
	je	.LBB10_13
# BB#7:                                 # %vector.body.preheader
	leaq	-4(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	xorl	%edi, %edi
	btq	$2, %rsi
	jb	.LBB10_9
# BB#8:                                 # %vector.body.prol
	movq	288(%rsp), %xmm0        # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	cvtdq2ps	%xmm0, %xmm0
	divps	.LCPI10_0(%rip), %xmm0
	movaps	%xmm0, 480(%rsp)
	movl	$4, %edi
.LBB10_9:                               # %vector.body.preheader.split
	testq	%rdx, %rdx
	je	.LBB10_12
# BB#10:                                # %vector.body.preheader.split.split
	movq	%rax, %rdx
	andq	$-4, %rdx
	subq	%rdi, %rdx
	leaq	296(%rsp,%rdi,2), %rsi
	leaq	496(%rsp,%rdi,4), %rdi
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [3.276000e+04,3.276000e+04,3.276000e+04,3.276000e+04]
	.align	16, 0x90
.LBB10_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	cvtdq2ps	%xmm1, %xmm1
	divps	%xmm0, %xmm1
	movaps	%xmm1, -16(%rdi)
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	cvtdq2ps	%xmm1, %xmm1
	divps	%xmm0, %xmm1
	movaps	%xmm1, (%rdi)
	addq	$16, %rsi
	addq	$32, %rdi
	addq	$-8, %rdx
	jne	.LBB10_11
.LBB10_12:
	movq	%rcx, %rdx
.LBB10_13:                              # %middle.block
	cmpq	%rdx, %rax
	je	.LBB10_15
	.align	16, 0x90
.LBB10_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	288(%rsp,%rdx,2), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	divss	.LCPI10_1(%rip), %xmm0
	movss	%xmm0, 480(%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB10_14
.LBB10_15:                              # %for.end
	movl	$1065353216, 32(%rsp)   # imm = 0x3F800000
	leaq	288(%rsp), %rbx
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	(%rbp), %rax
	leaq	24(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	*56(%rax)
	movslq	100(%r15), %rax
	testq	%rax, %rax
	jle	.LBB10_26
# BB#16:                                # %for.body.32.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB10_25
# BB#17:                                # %overflow.checked150
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-4, %rcx
	je	.LBB10_24
# BB#18:                                # %vector.body146.preheader
	leaq	-4(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$2, %rdx
	xorl	%edi, %edi
	btq	$2, %rsi
	jb	.LBB10_20
# BB#19:                                # %vector.body146.prol
	movq	288(%rsp), %xmm0        # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	cvtdq2ps	%xmm0, %xmm0
	divps	.LCPI10_0(%rip), %xmm0
	movaps	%xmm0, 464(%rsp)
	movl	$4, %edi
.LBB10_20:                              # %vector.body146.preheader.split
	testq	%rdx, %rdx
	je	.LBB10_23
# BB#21:                                # %vector.body146.preheader.split.split
	movq	%rax, %rdx
	andq	$-4, %rdx
	subq	%rdi, %rdx
	leaq	296(%rsp,%rdi,2), %rsi
	leaq	480(%rsp,%rdi,4), %rdi
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [3.276000e+04,3.276000e+04,3.276000e+04,3.276000e+04]
	.align	16, 0x90
.LBB10_22:                              # %vector.body146
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	cvtdq2ps	%xmm1, %xmm1
	divps	%xmm0, %xmm1
	movaps	%xmm1, -16(%rdi)
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	cvtdq2ps	%xmm1, %xmm1
	divps	%xmm0, %xmm1
	movaps	%xmm1, (%rdi)
	addq	$16, %rsi
	addq	$32, %rdi
	addq	$-8, %rdx
	jne	.LBB10_22
.LBB10_23:
	movq	%rcx, %rdx
.LBB10_24:                              # %middle.block147
	cmpq	%rdx, %rax
	je	.LBB10_26
	.align	16, 0x90
.LBB10_25:                              # %for.body.32
                                        # =>This Inner Loop Header: Depth=1
	movswl	288(%rsp,%rdx,2), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	divss	.LCPI10_1(%rip), %xmm0
	movss	%xmm0, 464(%rsp,%rdx,4)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB10_25
.LBB10_26:                              # %for.end.42
	movl	9008(%r15), %eax
	cmpl	$5, %eax
	movq	%r14, %rbx
	je	.LBB10_31
# BB#27:                                # %for.end.42
	cmpl	$7, %eax
	jne	.LBB10_28
# BB#30:                                # %sw.bb.46
	leaq	496(%rsp), %rsi
	leaq	480(%rsp), %rcx
	leaq	464(%rsp), %r8
	movl	$3, %edx
	jmp	.LBB10_32
.LBB10_31:                              # %sw.bb.50
	leaq	496(%rsp), %rsi
	leaq	480(%rsp), %rcx
	leaq	464(%rsp), %r8
	movl	$4, %edx
	jmp	.LBB10_32
.LBB10_28:                              # %for.end.42
	movl	$-15, %r14d
	cmpl	$6, %eax
	jne	.LBB10_33
# BB#29:                                # %sw.bb
	leaq	496(%rsp), %rsi
	leaq	480(%rsp), %rcx
	leaq	464(%rsp), %r8
	movl	$1, %edx
.LBB10_32:                              # %sw.epilog
	movq	%r15, %rdi
	callq	pdf_make_base_space_function
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_33
# BB#34:                                # %if.end.57
	leaq	440(%rsp), %rdi
	movl	$.L.str.17, %esi
	callq	cos_c_string_value
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	cos_array_add
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_33
# BB#35:                                # %if.then.67
	movq	%r13, %rdi
	callq	gs_color_space_get_index
	movq	24(%r15), %rdi
	cmpl	$10, %eax
	jne	.LBB10_37
# BB#36:                                # %if.then.71
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	40(%r13), %rax
	movq	72(%rax), %rsi
	leaq	432(%rsp), %rdx
	leaq	428(%rsp), %rcx
	callq	*96(%rax)
	jmp	.LBB10_38
.LBB10_37:                              # %if.else
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	72(%r13), %rsi
	leaq	432(%rsp), %rdx
	leaq	428(%rsp), %rcx
	callq	*96(%r13)
.LBB10_38:                              # %if.end.86
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_39
# BB#40:                                # %if.end.91
	movq	432(%rsp), %r14
	movl	428(%rsp), %ebp
	movq	1728(%r15), %rdi
	leal	1(%rbp), %r12d
	movl	$.L.str.20, %edx
	movl	%r12d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB10_41
# BB#42:                                # %if.end.97
	movb	$47, (%rbx)
	movq	%rbx, %rdi
	incq	%rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	440(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	cos_string_value
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cos_array_add_no_copy
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_33
# BB#43:                                # %if.then.106
	movl	9008(%r15), %eax
	cmpl	$5, %eax
	je	.LBB10_48
# BB#44:                                # %if.then.106
	cmpl	$7, %eax
	jne	.LBB10_45
# BB#47:                                # %sw.bb.111
	movq	pdf_color_space_names+16(%rip), %rsi
	jmp	.LBB10_49
.LBB10_39:                              # %if.then.89
	movl	$.L.str.6, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	cos_free
	jmp	.LBB10_74
.LBB10_41:                              # %if.then.95
	movl	$.L.str.6, %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	cos_free
	movl	$-25, %r14d
	jmp	.LBB10_74
.LBB10_48:                              # %sw.bb.113
	movq	pdf_color_space_names(%rip), %rsi
	jmp	.LBB10_49
.LBB10_45:                              # %if.then.106
	cmpl	$6, %eax
	jne	.LBB10_50
# BB#46:                                # %sw.bb.109
	movq	pdf_color_space_names+8(%rip), %rsi
.LBB10_49:                              # %sw.epilog.116
	leaq	440(%rsp), %rdi
	callq	cos_c_string_value
.LBB10_50:                              # %sw.epilog.116
	leaq	440(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cos_array_add
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_52
# BB#51:                                # %if.then.120
	movq	496(%rsp), %rsi
	leaq	440(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	pdf_function_scaled
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_52
# BB#53:                                # %if.end.129
	leaq	440(%rsp), %rsi
	movq	%rbx, %rdi
	callq	cos_array_add
	movl	%eax, %r14d
	movq	496(%rsp), %rsi
	movq	%r15, %rdi
	callq	pdf_delete_base_space_function
	testl	%r14d, %r14d
	js	.LBB10_33
# BB#54:                                # %lor.lhs.false
	movq	32(%r13), %rdx
	leaq	416(%rsp), %rcx
	xorl	%esi, %esi
	movq	$-1, %r8
	movq	%r15, %rdi
	callq	pdf_alloc_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_33
# BB#55:                                # %if.end.138
	movq	416(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	pdf_reserve_object_id
	movq	416(%rsp), %rbp
	movq	$0, 88(%rbp)
	movl	$0, 80(%rbp)
	movq	$0, 72(%rbp)
	movq	416(%rsp), %rax
	movq	64(%rax), %rdi
	movq	8(%rdi), %rax
	movq	%rax, 8(%rbx)
	movl	$.L.str.6, %esi
	callq	cos_free
	movq	416(%rsp), %rax
	movq	%rbx, 64(%rax)
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	cos_write_object
	movq	%r13, %rdi
	callq	gs_color_space_get_index
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	je	.LBB10_58
# BB#56:                                # %if.end.138
	cmpl	$10, %eax
	je	.LBB10_58
# BB#57:                                # %if.then.151
	movq	5848(%r15), %rdi
	addq	$32, %rbp
	movl	$.L.str.12, %esi
	movq	%rbp, %rdx
	callq	pprints1
.LBB10_58:                              # %cleanup.cont
	movq	416(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB10_60
# BB#59:                                # %if.then.157
	movq	26664(%r15), %rax
	orq	%rax, 56(%rcx)
	movq	30448(%r15), %rsi
	movl	$.L.str.13, %edx
	movq	%r15, %rdi
	callq	pdf_add_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_74
.LBB10_60:                              # %if.end.163
	movq	%rbx, %rbp
	movq	%r13, %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB10_61
# BB#62:                                # %if.then.167
	leaq	24(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cos_object_value
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	cos_array_alloc
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%rax, %r12
	movq	%rbx, %r8
	callq	pdf_indexed_color_space
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_75
# BB#63:                                # %lor.lhs.false.175
	movq	32(%r13), %rdx
	leaq	416(%rsp), %rcx
	xorl	%esi, %esi
	movq	$-1, %r8
	movq	%r15, %rdi
	callq	pdf_alloc_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB10_75
# BB#64:                                # %if.end.182
	movq	416(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	pdf_reserve_object_id
	movq	416(%rsp), %rbp
	movq	$0, 88(%rbp)
	movl	$0, 80(%rbp)
	movq	$0, 72(%rbp)
	movq	416(%rsp), %rax
	movq	64(%rax), %rdi
	movq	8(%rdi), %rax
	movq	%r12, %rbx
	movq	%rax, 8(%rbx)
	movl	$.L.str.6, %esi
	callq	cos_free
	movq	416(%rsp), %rax
	movq	%rbx, 64(%rax)
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	cos_write_object
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	je	.LBB10_66
# BB#65:                                # %if.then.196
	movq	5848(%r15), %rdi
	addq	$32, %rbp
	movl	$.L.str.12, %esi
	movq	%rbp, %rdx
	callq	pprints1
.LBB10_66:                              # %cleanup.cont.204
	movq	416(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB10_68
# BB#67:                                # %if.then.207
	movq	26664(%r15), %rax
	orq	%rax, 56(%rcx)
	movq	30448(%r15), %rsi
	movl	$.L.str.13, %edx
	movq	%r15, %rdi
	callq	pdf_add_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB10_68
	jmp	.LBB10_74
.LBB10_52:                              # %if.end.129.thread
	movq	496(%rsp), %rsi
	movq	%r15, %rdi
	callq	pdf_delete_base_space_function
.LBB10_33:                              # %if.then.56
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	cos_free
.LBB10_74:                              # %cleanup.249
	movl	%r14d, %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_61:
	movq	%rbp, %rbx
.LBB10_68:                              # %cleanup.218
	movq	16(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB10_70
# BB#69:                                # %if.then.224
	movq	5848(%r15), %rdi
	movq	24(%rbp), %rdx
	movl	$.L.str.14, %esi
	callq	pprints1
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	$0, (%rax)
	movq	%rbp, %r14
	movq	%rbx, %rbp
	movq	5848(%r15), %rbx
	movq	560(%rsp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rbx
	callq	pprintg1
	movq	5848(%r15), %rdi
	movq	40(%r14), %rdx
	movl	$.L.str.14, %esi
	callq	pprints1
.LBB10_70:                              # %if.end.236
	xorl	%r14d, %r14d
	movq	568(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_74
# BB#71:                                # %if.then.239
	movq	%rbx, %rsi
	cmpl	$0, 576(%rsp)
	je	.LBB10_73
# BB#72:                                # %if.then.241
	callq	cos_resource_value
	jmp	.LBB10_74
.LBB10_75:                              # %cleanup.202
	movl	$.L.str.6, %esi
	movq	%r12, %rdi
	callq	cos_free
	jmp	.LBB10_74
.LBB10_73:                              # %if.else.244
	callq	cos_object_value
	jmp	.LBB10_74
.Lfunc_end10:
	.size	convert_separation_alternate, .Lfunc_end10-convert_separation_alternate
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
	.text
	.globl	rescale_cie_color
	.align	16, 0x90
	.type	rescale_cie_color,@function
rescale_cie_color:                      # @rescale_cie_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 48
.Ltmp105:
	.cfi_offset %rbx, -48
.Ltmp106:
	.cfi_offset %r12, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	testl	%esi, %esi
	jle	.LBB11_13
# BB#1:                                 # %for.body.preheader
	leal	-1(%rsi), %r11d
	leaq	1(%r11), %r8
	xorl	%r10d, %r10d
	movabsq	$8589934588, %r14       # imm = 0x1FFFFFFFC
	movq	%r8, %r9
	andq	%r14, %r9
	je	.LBB11_7
# BB#2:                                 # %vector.memcheck
	leaq	8(%rcx), %rax
	leaq	8(%rcx,%r11,4), %rbx
	leaq	8(%rdx), %r10
	leaq	8(%rdx,%r11,4), %r15
	leaq	4(%rdi,%r11,8), %r12
	cmpq	%r15, %rax
	setbe	%bpl
	cmpq	%rbx, %r10
	setbe	%r15b
	cmpq	%r12, %rax
	setbe	%al
	cmpq	%rbx, %rdi
	setbe	%bl
	xorl	%r10d, %r10d
	testb	%r15b, %bpl
	jne	.LBB11_7
# BB#3:                                 # %vector.memcheck
	andb	%bl, %al
	jne	.LBB11_7
# BB#4:                                 # %vector.body.preheader
	incq	%r11
	andq	%r14, %r11
	xorl	%eax, %eax
	movl	$1, %ebp
	movd	%rbp, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	.LCPI11_0(%rip), %xmm1  # xmm1 = [2,3]
	.align	16, 0x90
.LBB11_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movdqa	%xmm2, %xmm3
	paddq	%xmm0, %xmm3
	paddq	%xmm1, %xmm2
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %r10
	movd	%xmm2, %rbx
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	movd	%xmm2, %rbp
	movups	8(%rdx,%rax,4), %xmm2
	movss	(%rdi,%rax,8), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movss	(%rdi,%rbx,8), %xmm4    # xmm4 = mem[0],zero,zero,zero
	unpcklps	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	movss	(%rdi,%rbp,8), %xmm4    # xmm4 = mem[0],zero,zero,zero
	movss	(%rdi,%r10,8), %xmm5    # xmm5 = mem[0],zero,zero,zero
	unpcklps	%xmm4, %xmm5    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	unpcklps	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	subps	%xmm3, %xmm2
	movss	4(%rdi,%rax,8), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movss	4(%rdi,%rbx,8), %xmm5   # xmm5 = mem[0],zero,zero,zero
	unpcklps	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movss	4(%rdi,%rbp,8), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movss	4(%rdi,%r10,8), %xmm6   # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	unpcklps	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	subps	%xmm3, %xmm4
	divps	%xmm4, %xmm2
	movups	%xmm2, 8(%rcx,%rax,4)
	addq	$4, %rax
	cmpq	%rax, %r11
	jne	.LBB11_5
# BB#6:
	movq	%r9, %r10
.LBB11_7:                               # %middle.block
	cmpq	%r10, %r8
	je	.LBB11_13
# BB#8:                                 # %for.body.preheader26
	leal	1(%rsi), %ebp
	movl	%r10d, %eax
	orl	$1, %eax
	subl	%eax, %ebp
	testb	$1, %bpl
	je	.LBB11_10
# BB#9:                                 # %for.body.prol
	movss	8(%rdx,%r10,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	(%rdi,%r10,8), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	4(%rdi,%r10,8), %xmm2   # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 8(%rcx,%r10,4)
	orq	$1, %r10
.LBB11_10:                              # %for.body.preheader26.split
	cmpl	%esi, %eax
	je	.LBB11_13
# BB#11:                                # %for.body.preheader26.split.split
	subl	%r10d, %esi
	leaq	12(%rdx,%r10,4), %rax
	leaq	12(%rdi,%r10,8), %rdx
	leaq	12(%rcx,%r10,4), %rcx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB11_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rax,%rdi,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	-12(%rdx,%rdi,8), %xmm1 # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	-8(%rdx,%rdi,8), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, -4(%rcx,%rdi,4)
	movss	(%rax,%rdi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rdx,%rdi,8), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movss	(%rdx,%rdi,8), %xmm2    # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, (%rcx,%rdi,4)
	addq	$2, %rdi
	cmpl	%edi, %esi
	jne	.LBB11_12
.LBB11_13:                              # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	rescale_cie_color, .Lfunc_end11-rescale_cie_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4608083138725491507     # double 1.2
	.text
	.globl	pdf_reset_color
	.align	16, 0x90
	.type	pdf_reset_color,@function
pdf_reset_color:                        # @pdf_reset_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 56
	subq	$1432, %rsp             # imm = 0x598
.Ltmp116:
	.cfi_def_cfa_offset 1488
.Ltmp117:
	.cfi_offset %rbx, -56
.Ltmp118:
	.cfi_offset %r12, -48
.Ltmp119:
	.cfi_offset %r13, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	$0, 56(%rsp)
	cmpl	$0, 30760(%r15)
	je	.LBB12_1
# BB#141:                               # %if.end
	xorl	%r14d, %r14d
	cmpl	$0, 30460(%r15)
	jne	.LBB12_209
# BB#142:                               # %if.end.3
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%r9, 48(%rsp)           # 8-byte Spill
	leaq	104(%rsp), %rbp
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	gx_hld_save_color
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB12_209
# BB#143:                               # %if.end.8
	leaq	96(%rsp), %rdx
	leaq	88(%rsp), %rcx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gx_hld_get_color_space_and_ccolor
	cmpl	$1, %eax
	jne	.LBB12_144
# BB#183:                               # %sw.bb.120
	movq	(%r12), %rax
	movl	$gx_dc_pattern, %ecx
	cmpq	%rcx, %rax
	je	.LBB12_184
# BB#186:                               # %if.else.124
	movl	$gx_dc_pure_masked, %ecx
	cmpq	%rcx, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	je	.LBB12_187
# BB#192:                               # %if.else.139
	movl	$gx_dc_pattern2, %ecx
	movl	$-15, %r14d
	cmpq	%rcx, %rax
	jne	.LBB12_209
# BB#193:                               # %if.then.142
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jae	.LBB12_209
# BB#194:                               # %if.end.146
	movq	%r12, %rdi
	callq	gx_dc_pattern2_get_color_space
	movq	%rax, %rdi
	callq	gs_color_space_get_index
	movl	9008(%r15), %ecx
	cmpl	$5, %ecx
	jne	.LBB12_196
# BB#195:                               # %switch.early.test.i.i
	orl	$2, %eax
	cmpl	$2, %eax
	je	.LBB12_198
	jmp	.LBB12_209
.LBB12_1:                               # %if.then
	xorl	%r14d, %r14d
	cmpl	$0, 30460(%r15)
	jne	.LBB12_209
# BB#2:                                 # %if.end.i
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%r9, 48(%rsp)           # 8-byte Spill
	leaq	776(%rsp), %rbp
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	gx_hld_save_color
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB12_209
# BB#3:                                 # %if.end.4.i
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	leaq	736(%rsp), %rdx
	leaq	768(%rsp), %rcx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gx_hld_get_color_space_and_ccolor
	testl	%eax, %eax
	jne	.LBB12_4
# BB#28:                                # %sw.bb.59.i
	movq	736(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_30
# BB#29:                                # %if.then.62.i
	movq	736(%rsp), %rax
	movq	64(%rax), %rdi
	callq	gsicc_get_default_type
.LBB12_30:                              # %if.end.64.i
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jae	.LBB12_31
# BB#67:                                # %if.else.184.i
	xorl	%r14d, %r14d
	movl	9008(%r15), %ecx
	cmpq	$8, %rcx
	ja	.LBB12_139
# BB#68:                                # %if.else.184.i
	jmpq	*.LJTI12_3(,%rcx,8)
.LBB12_120:                             # %sw.bb.341.i
	movl	%eax, %ecx
	cmpl	$10, %eax
	ja	.LBB12_66
# BB#121:                               # %sw.bb.341.i
	jmpq	*.LJTI12_4(,%rcx,8)
.LBB12_126:                             # %sw.bb.358.i
	movq	40(%rbp), %r14
	jmp	.LBB12_127
.LBB12_144:                             # %if.end.8
	testl	%eax, %eax
	jne	.LBB12_205
# BB#145:                               # %sw.bb
	movq	96(%rsp), %rdi
	callq	gs_color_space_get_index
	movl	%eax, %ebp
	cmpl	$12, %ebp
	jne	.LBB12_147
# BB#146:                               # %if.then.11
	movq	96(%rsp), %rax
	movq	64(%rax), %rdi
	callq	gsicc_get_default_type
	movl	%eax, %ebp
.LBB12_147:                             # %if.end.13
	movl	%ebp, %ecx
	cmpl	$12, %ebp
	ja	.LBB12_169
# BB#148:                               # %if.end.13
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_204:                             # %sw.bb.61
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jb	.LBB12_170
	jmp	.LBB12_205
.LBB12_4:                               # %if.end.4.i
	cmpl	$1, %eax
	jne	.LBB12_137
# BB#5:                                 # %sw.bb.i
	movq	(%r12), %rax
	movl	$gx_dc_pattern, %ecx
	cmpq	%rcx, %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	je	.LBB12_6
# BB#9:                                 # %if.else.i
	movl	$gx_dc_pure_masked, %edx
	cmpq	%rdx, %rax
	movq	32(%rsp), %rbx          # 8-byte Reload
	je	.LBB12_10
# BB#16:                                # %if.else.25.i
	movl	$gx_dc_pattern2, %ecx
	movl	$-15, %r14d
	cmpq	%rcx, %rax
	jne	.LBB12_209
# BB#17:                                # %if.then.28.i
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jae	.LBB12_209
# BB#18:                                # %if.end.32.i
	movq	%r12, %rdi
	callq	gx_dc_pattern2_get_color_space
	movq	%rax, %rdi
	callq	gs_color_space_get_index
	movl	9008(%r15), %ecx
	cmpl	$5, %ecx
	jne	.LBB12_20
# BB#19:                                # %switch.early.test.i.i.i
	orl	$2, %eax
	cmpl	$2, %eax
	je	.LBB12_22
	jmp	.LBB12_209
.LBB12_184:                             # %if.then.122
	movq	96(%rsp), %rdx
	movl	316(%r13), %r8d
	leaq	776(%rsp), %r9
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	pdf_put_colored_pattern
	movl	%eax, %r14d
.LBB12_185:                             # %if.end.155
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jns	.LBB12_199
	jmp	.LBB12_209
.LBB12_31:                              # %if.then.67.i
	cmpl	$10, %eax
	jne	.LBB12_33
# BB#32:                                # %if.then.69.i
	movq	736(%rsp), %rax
	movq	40(%rax), %rbp
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
.LBB12_33:                              # %if.end.71.i
	movl	$-15, %r14d
	movl	%eax, %ecx
	cmpl	$12, %eax
	ja	.LBB12_209
# BB#34:                                # %if.end.71.i
	movq	32(%rsp), %rbx          # 8-byte Reload
	jmpq	*.LJTI12_2(,%rcx,8)
.LBB12_40:                              # %sw.bb.109.i
	cmpl	$0, 9524(%r15)
	je	.LBB12_66
# BB#41:                                # %if.then.111.i
	movl	9008(%r15), %eax
	cmpl	$8, %eax
	movq	48(%rsp), %rbp          # 8-byte Reload
	ja	.LBB12_44
# BB#42:                                # %if.then.111.i
	movl	$267, %ecx              # imm = 0x10B
	btl	%eax, %ecx
	jae	.LBB12_44
# BB#43:                                # %sw.bb.114.i
	movq	768(%rsp), %rdx
	movq	736(%rsp), %rax
	movq	%r12, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	leaq	776(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	%rbp, %r9
	jmp	.LBB12_52
.LBB12_137:                             # %sw.bb.420.i
	movl	30760(%r15), %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	psdf_set_color
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_209
# BB#138:                               # %if.end.424.i
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$1, (%rax)
	jmp	.LBB12_139
.LBB12_169:                             # %sw.default.66
	movl	9008(%r15), %eax
	addl	$-4, %eax
	cmpl	$3, %eax
	jb	.LBB12_205
	jmp	.LBB12_170
.LBB12_187:                             # %if.then.127
	movq	96(%rsp), %rdx
	movl	316(%r13), %r8d
	leaq	776(%rsp), %r9
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	pdf_put_uncolored_pattern
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_189
# BB#188:                               # %if.then.127
	movq	776(%rsp), %rax
	testq	%rax, %rax
	je	.LBB12_189
# BB#190:                               # %if.end.133
	cmpl	$0, 316(%r13)
	je	.LBB12_185
# BB#191:                               # %if.then.136
	movq	88(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	pdf_write_ccolor
	xorl	%ebp, %ebp
	jmp	.LBB12_199
.LBB12_189:                             # %if.then.132
	leaq	104(%rsp), %rsi
	jmp	.LBB12_13
.LBB12_6:                               # %if.then.6.i
	movl	$-21, %r14d
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	movq	32(%rsp), %rbx          # 8-byte Reload
	ja	.LBB12_209
# BB#7:                                 # %if.end.9.i
	movq	736(%rsp), %rdx
	movl	316(%r13), %r8d
	leaq	1408(%rsp), %r9
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	pdf_put_colored_pattern
	movl	%eax, %r14d
	jmp	.LBB12_8
.LBB12_10:                              # %if.then.13.i
	movq	736(%rsp), %rdx
	movl	316(%r13), %r8d
	leaq	1408(%rsp), %r9
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	pdf_put_uncolored_pattern
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_12
# BB#11:                                # %if.then.13.i
	movq	1408(%rsp), %rax
	testq	%rax, %rax
	je	.LBB12_12
# BB#14:                                # %if.end.19.i
	cmpl	$0, 316(%r13)
	je	.LBB12_8
# BB#15:                                # %if.then.22.i
	movq	768(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	pdf_write_ccolor
	xorl	%ebp, %ebp
	jmp	.LBB12_23
.LBB12_8:                               # %if.end.44.i
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jns	.LBB12_23
	jmp	.LBB12_209
.LBB12_196:                             # %if.end.i.i.164
	testl	%eax, %eax
	setne	%dil
	cmpl	$4, %ecx
	sete	%dl
	cmpl	$1, %eax
	seta	%al
	cmpl	$7, %ecx
	sete	%sil
	cmpl	$6, %ecx
	sete	%cl
	testb	%cl, %dil
	jne	.LBB12_209
# BB#197:                               # %if.end.i.i.164
	orb	%sil, %dl
	andb	%dl, %al
	jne	.LBB12_209
.LBB12_198:                             # %if.end.150
	leaq	776(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	pdf_put_pattern2
	movl	%eax, %ebp
.LBB12_199:                             # %if.end.158
	movq	30448(%r15), %rsi
	movq	776(%rsp), %rcx
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	callq	pdf_add_resource
	movl	%eax, %r14d
	cmpl	$-15, %ebp
	movq	776(%rsp), %rax
	jne	.LBB12_200
# BB#201:                               # %if.else.167
	movq	$0, 56(%rax)
	jmp	.LBB12_202
.LBB12_200:                             # %if.then.161
	movq	64(%rax), %rsi
	leaq	64(%rsp), %rdi
	callq	cos_resource_value
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	cos_value_write
	movq	5848(%r15), %rdi
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdx
	movl	$.L.str.14, %esi
	callq	pprints1
.LBB12_202:                             # %cleanup
	testl	%r14d, %r14d
	js	.LBB12_209
# BB#203:                               # %cleanup.cont
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	jmp	.LBB12_208
.LBB12_12:                              # %if.then.18.i
	leaq	776(%rsp), %rsi
.LBB12_13:                              # %cleanup.180
	movl	$632, %edx              # imm = 0x278
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB12_209
.LBB12_149:                             # %sw.bb.14
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB12_182
.LBB12_150:                             # %sw.bb.15
	movl	9008(%r15), %eax
	addl	$-5, %eax
	cmpl	$2, %eax
	jb	.LBB12_205
# BB#151:                               # %if.end.23
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB12_182
.LBB12_152:                             # %sw.bb.24
	movl	9008(%r15), %eax
	orl	$2, %eax
	cmpl	$6, %eax
	je	.LBB12_205
# BB#153:                               # %if.end.34
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB12_182
.LBB12_161:                             # %sw.bb.48
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jb	.LBB12_170
# BB#162:                               # %if.then.51
	movq	96(%rsp), %rax
	movq	40(%rax), %r14
	leaq	9008(%r15), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB12_163
.LBB12_154:                             # %sw.bb.35
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r15), %xmm0
	jb	.LBB12_170
# BB#155:                               # %if.then.37
	movq	96(%rsp), %rax
	movq	40(%rax), %r14
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	leaq	9008(%r15), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	9008(%r15), %edx
	cmpl	$5, %edx
	jne	.LBB12_157
# BB#156:                               # %switch.early.test.i
	orl	$2, %eax
	cmpl	$2, %eax
	je	.LBB12_163
	jmp	.LBB12_205
.LBB12_44:                              # %sw.default.i
	movq	736(%rsp), %rdx
	movq	768(%rsp), %r9
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rbp, %r8
	jmp	.LBB12_45
.LBB12_69:                              # %sw.bb.189.i
	movq	736(%rsp), %rbx
	movq	768(%rsp), %r12
	leaq	776(%rsp), %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	gx_hld_saved_color_same_cspace
	testl	%eax, %eax
	je	.LBB12_70
# BB#77:                                # %if.else.i.i
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	movq	5848(%r15), %rbp
	movss	8(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.18, %esi
	movq	%rbp, %rdi
	callq	pprintg1
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	movq	5848(%r15), %r14
	cmpl	$2, %eax
	jl	.LBB12_80
# BB#78:                                # %for.body.40.i.i.preheader
	movl	$1, %ebp
.LBB12_79:                              # %for.body.40.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r12,%rbp,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.55, %esi
	movq	%r14, %rdi
	callq	pprintg1
	incq	%rbp
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	cltq
	movq	5848(%r15), %r14
	cmpq	%rax, %rbp
	jl	.LBB12_79
	jmp	.LBB12_80
.LBB12_81:                              # %sw.bb.191.i
	movl	%eax, %ecx
	cmpl	$10, %eax
	ja	.LBB12_66
# BB#82:                                # %sw.bb.191.i
	jmpq	*.LJTI12_5(,%rcx,8)
.LBB12_87:                              # %sw.bb.208.i
	movq	40(%rbp), %r14
.LBB12_88:                              # %sw.bb.208.i
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_90
# BB#89:                                # %if.then.212.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_90:                              # %if.end.215.i
	cmpl	$2, %eax
	je	.LBB12_37
	jmp	.LBB12_56
.LBB12_97:                              # %sw.bb.266.i
	cmpl	$8, %eax
	jg	.LBB12_104
# BB#98:                                # %sw.bb.266.i
	testl	%eax, %eax
	je	.LBB12_37
# BB#99:                                # %sw.bb.266.i
	cmpl	$4, %eax
	jne	.LBB12_66
# BB#100:                               # %sw.bb.283.i
	movq	40(%rbp), %r14
	jmp	.LBB12_101
.LBB12_35:                              # %sw.bb.72.i
	movl	9008(%r15), %eax
	cmpl	$6, %eax
	je	.LBB12_37
	jmp	.LBB12_36
.LBB12_38:                              # %sw.bb.83.i
	movl	9008(%r15), %eax
	cmpl	$7, %eax
	jne	.LBB12_36
	jmp	.LBB12_37
.LBB12_39:                              # %sw.bb.96.i
	movl	9008(%r15), %eax
	cmpl	$5, %eax
	jne	.LBB12_36
	jmp	.LBB12_37
.LBB12_53:                              # %sw.bb.131.i
	movl	9008(%r15), %eax
	cmpl	$8, %eax
	ja	.LBB12_56
# BB#54:                                # %sw.bb.131.i
	movl	$267, %ecx              # imm = 0x10B
	btl	%eax, %ecx
	movq	48(%rsp), %r9           # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	jb	.LBB12_50
# BB#55:                                # %sw.bb.131.i
	cmpl	$2, %eax
	je	.LBB12_66
	jmp	.LBB12_56
.LBB12_46:                              # %sw.bb.120.i
	movl	9008(%r15), %eax
	cmpl	$8, %eax
	ja	.LBB12_49
# BB#47:                                # %sw.bb.120.i
	movl	$267, %ecx              # imm = 0x10B
	btl	%eax, %ecx
	movq	48(%rsp), %r9           # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	jae	.LBB12_48
.LBB12_50:                              # %sw.bb.123.i
	movq	768(%rsp), %rdx
	movq	736(%rsp), %rax
	movq	%r12, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%rcx, (%rsp)
.LBB12_51:                              # %sw.epilog.425.i
	leaq	776(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	32(%rsp), %r8           # 8-byte Reload
	jmp	.LBB12_52
.LBB12_57:                              # %sw.bb.142.i
	movq	64(%rbp), %rdi
	callq	gsicc_get_default_type
	cmpl	$2, %eax
	je	.LBB12_64
# BB#58:                                # %sw.bb.142.i
	cmpl	$1, %eax
	jne	.LBB12_59
# BB#63:                                # %sw.bb.156.i
	movl	9008(%r15), %eax
	cmpl	$7, %eax
	jne	.LBB12_61
	jmp	.LBB12_62
.LBB12_20:                              # %if.end.i.i.i
	testl	%eax, %eax
	setne	%dil
	cmpl	$4, %ecx
	sete	%dl
	cmpl	$1, %eax
	seta	%al
	cmpl	$7, %ecx
	sete	%sil
	cmpl	$6, %ecx
	sete	%cl
	testb	%cl, %dil
	jne	.LBB12_209
# BB#21:                                # %if.end.i.i.i
	orb	%sil, %dl
	andb	%dl, %al
	jne	.LBB12_209
.LBB12_22:                              # %if.end.36.i
	leaq	1408(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	pdf_put_pattern2
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	%ebp, %r14d
	js	.LBB12_209
.LBB12_23:                              # %if.end.47.i
	movq	30448(%r15), %rsi
	movq	1408(%rsp), %rcx
	movl	$.L.str.19, %edx
	movq	%r15, %rdi
	callq	pdf_add_resource
	movl	%eax, %r14d
	cmpl	$-15, %ebp
	movq	1408(%rsp), %rax
	jne	.LBB12_24
# BB#25:                                # %if.else.54.i
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	$0, 56(%rax)
	jmp	.LBB12_26
.LBB12_24:                              # %if.then.50.i
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	64(%rax), %rsi
	leaq	744(%rsp), %rdi
	callq	cos_resource_value
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	cos_value_write
	movq	5848(%r15), %rdi
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdx
	movl	$.L.str.14, %esi
	callq	pprints1
.LBB12_26:                              # %if.end.55.i
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%r14d, %r14d
	js	.LBB12_209
# BB#27:                                # %cleanup.i
	movl	$0, (%rax)
	jmp	.LBB12_139
.LBB12_104:                             # %sw.bb.266.i
	cmpl	$9, %eax
	jne	.LBB12_105
# BB#111:                               # %sw.bb.269.i
	movq	40(%rbp), %r14
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_113
# BB#112:                               # %if.then.273.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_113:                             # %if.end.276.i
	testl	%eax, %eax
	movq	48(%rsp), %r9           # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	je	.LBB12_116
# BB#114:                               # %if.then.278.i
	movq	736(%rsp), %rdx
	movq	768(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	jmp	.LBB12_115
.LBB12_157:                             # %if.end.i.106
	testl	%eax, %eax
	setne	%r8b
	cmpl	$4, %edx
	sete	%cl
	cmpl	$1, %eax
	seta	%sil
	cmpl	$7, %edx
	sete	%dil
	cmpl	$6, %edx
	sete	%dl
	testb	%dl, %r8b
	jne	.LBB12_205
# BB#158:                               # %if.end.i.106
	orb	%dil, %cl
	andb	%cl, %sil
	jne	.LBB12_205
# BB#159:                               # %if.end.42
	cmpl	$9, %eax
	jne	.LBB12_163
# BB#160:                               # %if.then.44
	movq	96(%rsp), %rax
	movq	40(%rax), %r14
.LBB12_163:                             # %check_pcs2
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %edx
	cmpl	$5, %edx
	jne	.LBB12_165
# BB#164:                               # %switch.early.test.i.110
	orl	$2, %eax
	cmpl	$2, %eax
	je	.LBB12_167
	jmp	.LBB12_205
.LBB12_165:                             # %if.end.i.115
	testl	%eax, %eax
	setne	%dil
	cmpl	$4, %edx
	sete	%cl
	cmpl	$1, %eax
	seta	%al
	cmpl	$7, %edx
	sete	%sil
	cmpl	$6, %edx
	sete	%dl
	testb	%dl, %dil
	jne	.LBB12_205
# BB#166:                               # %if.end.i.115
	orb	%sil, %cl
	andb	%cl, %al
	jne	.LBB12_205
.LBB12_167:                             # %if.end.57
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	ja	.LBB12_170
# BB#168:                               # %if.end.57
	movl	$4120, %ecx             # imm = 0x1018
	btl	%eax, %ecx
	jb	.LBB12_205
.LBB12_170:                             # %scn
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	104(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_hld_saved_color_same_cspace
	testl	%eax, %eax
	je	.LBB12_171
# BB#181:                               # %if.else
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB12_205
	jmp	.LBB12_182
.LBB12_171:                             # %if.then.84
	movq	96(%rsp), %rcx
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	64(%rsp), %rsi
	leaq	56(%rsp), %rdx
	movl	$pdf_color_space_names, %r8d
	movl	$1, %r9d
	movq	%r15, %rdi
	callq	pdf_color_space_named
	movl	%eax, %r14d
	cmpl	$-15, %r14d
	jne	.LBB12_172
.LBB12_205:                             # %write_process_color
	movl	30760(%r15), %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	psdf_set_color
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_209
# BB#206:                               # %if.end.178
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$1, (%rax)
	jmp	.LBB12_207
.LBB12_172:                             # %if.end.88
	testl	%r14d, %r14d
	js	.LBB12_209
# BB#173:                               # %if.end.91
	leaq	64(%rsp), %rdi
	movq	%r15, %rsi
	callq	cos_value_write
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_209
# BB#174:                               # %if.end.95
	movq	5848(%r15), %rdi
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdx
	movl	$.L.str.14, %esi
	callq	pprints1
	addl	$-5, %ebp
	cmpl	$3, %ebp
	ja	.LBB12_182
# BB#175:                               # %if.end.95
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB12_182
# BB#176:                               # %if.then.101
	cmpl	$3, %ebp
	ja	.LBB12_182
# BB#177:                               # %if.then.101
	movq	88(%rsp), %rax
	jmpq	*.LJTI12_1(,%rbp,8)
.LBB12_179:                             # %for.body.i.133.preheader
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 8(%rax)
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	8(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	12(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 12(%rax)
	movss	16(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	16(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	20(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 16(%rax)
	jmp	.LBB12_182
.LBB12_70:                              # %if.then.i.i
	movl	$1, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	1408(%rsp), %rsi
	xorl	%edx, %edx
	movl	$pdf_color_space_names, %r8d
	movl	$1, %r9d
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	pdf_color_space_named
	movl	%eax, %r14d
	cmpl	$-15, %r14d
	movq	40(%rsp), %rbp          # 8-byte Reload
	jne	.LBB12_72
# BB#71:                                # %if.then.2.i.i
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	%r12, %r9
	jmp	.LBB12_45
.LBB12_105:                             # %sw.bb.266.i
	cmpl	$10, %eax
	jne	.LBB12_66
# BB#106:                               # %sw.bb.297.i
	movq	736(%rsp), %rax
	movq	40(%rax), %r14
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_108
# BB#107:                               # %if.then.301.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_108:                             # %if.end.304.i
	cmpl	$9, %eax
	je	.LBB12_117
# BB#109:                               # %if.end.304.i
	cmpl	$4, %eax
	jne	.LBB12_36
# BB#110:                               # %sw.bb.321.i
	movq	40(%r14), %r14
.LBB12_101:                             # %sw.bb.283.i
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_103
# BB#102:                               # %if.then.287.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_103:                             # %if.end.290.i
	testl	%eax, %eax
	jne	.LBB12_56
	jmp	.LBB12_37
.LBB12_36:                              # %sw.bb.72.i
	testl	%eax, %eax
	jne	.LBB12_66
	jmp	.LBB12_37
.LBB12_64:                              # %sw.bb.167.i
	movl	9008(%r15), %eax
	cmpl	$5, %eax
	jne	.LBB12_61
	jmp	.LBB12_62
.LBB12_59:                              # %sw.bb.142.i
	testl	%eax, %eax
	jne	.LBB12_65
# BB#60:                                # %sw.bb.145.i
	movl	9008(%r15), %eax
	cmpl	$6, %eax
	je	.LBB12_62
.LBB12_61:                              # %sw.bb.145.i
	testl	%eax, %eax
	jne	.LBB12_65
.LBB12_62:                              # %if.then.153.i
	movq	768(%rsp), %rdx
	movq	736(%rsp), %rax
	movq	%r12, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	leaq	776(%rsp), %rbp
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rcx
	movq	%rbx, %r8
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	write_color_unchanged
	movl	%eax, %r14d
	movl	$632, %edx              # imm = 0x278
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	jmp	.LBB12_209
.LBB12_65:                              # %sw.bb.180.i
	movq	%rbx, 32(%rsp)          # 8-byte Spill
.LBB12_66:                              # %if.else.80.i
	movq	736(%rsp), %rdx
	movq	768(%rsp), %r9
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
.LBB12_45:                              # %sw.epilog.425.i
	callq	write_color_as_process
	movl	%eax, %r14d
	jmp	.LBB12_139
.LBB12_72:                              # %if.end.i.i
	testl	%r14d, %r14d
	js	.LBB12_139
# BB#73:                                # %if.end.6.i.i
	leaq	1408(%rsp), %rdi
	movq	%r15, %rsi
	callq	cos_value_write
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB12_139
# BB#74:                                # %if.end.10.i.i
	movq	5848(%r15), %rdi
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdx
	movl	$.L.str.14, %esi
	callq	pprints1
	movl	$0, (%rbp)
	movq	5848(%r15), %rbp
	movss	8(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.18, %esi
	movq	%rbp, %rdi
	callq	pprintg1
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	movq	5848(%r15), %r14
	cmpl	$2, %eax
	jl	.LBB12_80
# BB#75:                                # %for.body.i.i.preheader
	movl	$1, %ebp
.LBB12_76:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r12,%rbp,4), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.55, %esi
	movq	%r14, %rdi
	callq	pprintg1
	incq	%rbp
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	cltq
	movq	5848(%r15), %r14
	cmpq	%rax, %rbp
	jl	.LBB12_76
.LBB12_80:                              # %for.end.51.i.i
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	pprints1
	xorl	%r14d, %r14d
	jmp	.LBB12_139
.LBB12_122:                             # %sw.bb.344.i
	movq	40(%rbp), %r14
.LBB12_123:                             # %sw.bb.344.i
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_125
# BB#124:                               # %if.then.348.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_125:                             # %if.end.351.i
	cmpl	$1, %eax
	je	.LBB12_37
	jmp	.LBB12_49
.LBB12_130:                             # %sw.bb.372.i
	movq	736(%rsp), %rax
	movq	40(%rax), %r14
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_132
# BB#131:                               # %if.then.376.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_132:                             # %if.end.379.i
	cmpl	$2, %eax
	jb	.LBB12_37
# BB#133:                               # %if.end.379.i
	cmpl	$4, %eax
	jne	.LBB12_134
# BB#136:                               # %sw.bb.396.i
	movq	40(%r14), %r14
.LBB12_127:                             # %sw.bb.358.i
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_129
# BB#128:                               # %if.then.362.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_129:                             # %if.end.365.i
	cmpl	$1, %eax
	je	.LBB12_37
.LBB12_56:                              # %sw.default.139.i
	movq	736(%rsp), %rdx
	movq	768(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	convert_DeviceN_alternate
	movl	%eax, %r14d
	jmp	.LBB12_139
.LBB12_116:                             # %if.else.280.i
	movq	768(%rsp), %rdx
	movq	736(%rsp), %rax
	movq	%r12, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%r8, (%rsp)
	jmp	.LBB12_51
.LBB12_83:                              # %sw.bb.194.i
	movq	40(%rbp), %r14
.LBB12_84:                              # %sw.bb.194.i
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_86
# BB#85:                                # %if.then.198.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_86:                              # %if.end.201.i
	cmpl	$2, %eax
	je	.LBB12_37
	jmp	.LBB12_49
.LBB12_91:                              # %sw.bb.222.i
	movq	736(%rsp), %rax
	movq	40(%rax), %r14
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_93
# BB#92:                                # %if.then.226.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_93:                              # %if.end.229.i
	movl	%eax, %ecx
	cmpl	$9, %eax
	ja	.LBB12_66
# BB#94:                                # %if.end.229.i
	jmpq	*.LJTI12_6(,%rcx,8)
.LBB12_96:                              # %sw.bb.246.i
	movq	40(%r14), %r14
	jmp	.LBB12_88
.LBB12_48:                              # %sw.bb.120.i
	cmpl	$2, %eax
	je	.LBB12_66
	jmp	.LBB12_49
.LBB12_180:                             # %for.body.i.preheader
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 8(%rax)
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	8(%rcx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	12(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 12(%rax)
	movss	16(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	16(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	20(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 16(%rax)
	movss	20(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	24(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	28(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 20(%rax)
	jmp	.LBB12_182
.LBB12_178:                             # %for.body.i.159.preheader
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 8(%rax)
.LBB12_182:                             # %sw.epilog.113
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	movq	88(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	pdf_write_ccolor
	movq	5848(%r15), %rdi
	movl	$.L.str.14, %esi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	pprints1
.LBB12_207:                             # %sw.epilog.179
	xorl	%ebp, %ebp
.LBB12_208:                             # %sw.epilog.179
	leaq	104(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	%rbx, %rdi
	callq	memcpy
	movl	%ebp, %r14d
	jmp	.LBB12_209
.LBB12_117:                             # %sw.bb.307.i
	movq	40(%r14), %r14
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	jne	.LBB12_119
# BB#118:                               # %if.then.311.i
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
.LBB12_119:                             # %if.end.314.i
	testl	%eax, %eax
	je	.LBB12_37
.LBB12_49:                              # %sw.default.128.i
	movq	736(%rsp), %rdx
	movq	768(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
.LBB12_115:                             # %sw.epilog.425.i
	callq	convert_separation_alternate
	movl	%eax, %r14d
	jmp	.LBB12_139
.LBB12_37:                              # %if.then.78.i
	movq	768(%rsp), %rdx
	movq	736(%rsp), %rax
	movq	%r12, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	leaq	776(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
.LBB12_52:                              # %sw.epilog.425.i
	callq	write_color_unchanged
	movl	%eax, %r14d
.LBB12_139:                             # %sw.epilog.425.i
	leaq	776(%rsp), %rsi
	movl	$632, %edx              # imm = 0x278
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	memcpy
.LBB12_209:                             # %cleanup.180
	movl	%r14d, %eax
	addq	$1432, %rsp             # imm = 0x598
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_134:                             # %if.end.379.i
	cmpl	$9, %eax
	jne	.LBB12_66
# BB#135:                               # %sw.bb.382.i
	movq	40(%r14), %r14
	jmp	.LBB12_123
.LBB12_95:                              # %sw.bb.232.i
	movq	40(%r14), %r14
	jmp	.LBB12_84
.Lfunc_end12:
	.size	pdf_reset_color, .Lfunc_end12-pdf_reset_color
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_149
	.quad	.LBB12_150
	.quad	.LBB12_152
	.quad	.LBB12_204
	.quad	.LBB12_204
	.quad	.LBB12_169
	.quad	.LBB12_169
	.quad	.LBB12_169
	.quad	.LBB12_169
	.quad	.LBB12_161
	.quad	.LBB12_154
	.quad	.LBB12_169
	.quad	.LBB12_204
.LJTI12_1:
	.quad	.LBB12_180
	.quad	.LBB12_179
	.quad	.LBB12_179
	.quad	.LBB12_178
.LJTI12_2:
	.quad	.LBB12_35
	.quad	.LBB12_38
	.quad	.LBB12_39
	.quad	.LBB12_65
	.quad	.LBB12_53
	.quad	.LBB12_40
	.quad	.LBB12_40
	.quad	.LBB12_40
	.quad	.LBB12_40
	.quad	.LBB12_46
	.quad	.LBB12_65
	.quad	.LBB12_209
	.quad	.LBB12_57
.LJTI12_3:
	.quad	.LBB12_37
	.quad	.LBB12_37
	.quad	.LBB12_69
	.quad	.LBB12_37
	.quad	.LBB12_120
	.quad	.LBB12_81
	.quad	.LBB12_97
	.quad	.LBB12_120
	.quad	.LBB12_37
.LJTI12_4:
	.quad	.LBB12_37
	.quad	.LBB12_37
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_126
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_122
	.quad	.LBB12_130
.LJTI12_5:
	.quad	.LBB12_37
	.quad	.LBB12_66
	.quad	.LBB12_37
	.quad	.LBB12_66
	.quad	.LBB12_87
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_83
	.quad	.LBB12_91
.LJTI12_6:
	.quad	.LBB12_37
	.quad	.LBB12_66
	.quad	.LBB12_37
	.quad	.LBB12_66
	.quad	.LBB12_96
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_66
	.quad	.LBB12_95

	.text
	.align	16, 0x90
	.type	pdf_write_ccolor,@function
pdf_write_ccolor:                       # @pdf_write_ccolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp127:
	.cfi_def_cfa_offset 48
.Ltmp128:
	.cfi_offset %rbx, -40
.Ltmp129:
	.cfi_offset %r14, -32
.Ltmp130:
	.cfi_offset %r15, -24
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	gx_hld_get_number_color_components
	movl	%eax, %ebp
	movq	5848(%r14), %r15
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	callq	pprintg1
	cmpl	$2, %ebp
	jl	.LBB13_3
# BB#1:                                 # %for.body.preheader
	addq	$12, %rbx
	decl	%ebp
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	5848(%r14), %r15
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.55, %esi
	movq	%r15, %rdi
	callq	pprintg1
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB13_2
.LBB13_3:                               # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdf_write_ccolor, .Lfunc_end13-pdf_write_ccolor
	.cfi_endproc

	.globl	pdf_set_drawing_color
	.align	16, 0x90
	.type	pdf_set_drawing_color,@function
pdf_set_drawing_color:                  # @pdf_set_drawing_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp133:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp134:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp135:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp136:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp137:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp138:
	.cfi_def_cfa_offset 704
.Ltmp139:
	.cfi_offset %rbx, -56
.Ltmp140:
	.cfi_offset %r12, -48
.Ltmp141:
	.cfi_offset %r13, -40
.Ltmp142:
	.cfi_offset %r14, -32
.Ltmp143:
	.cfi_offset %r15, -24
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	xorl	%r14d, %r14d
	cmpl	$0, 30460(%rbp)
	jne	.LBB14_4
# BB#1:                                 # %if.end
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%r9, 8(%rsp)            # 8-byte Spill
	leaq	16(%rsp), %r15
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	gx_hld_save_color
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB14_4
# BB#2:                                 # %if.end.4
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	pdf_open_page
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB14_4
# BB#3:                                 # %if.end.7
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	(%rsp), %r8             # 8-byte Reload
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	pdf_reset_color
	movl	%eax, %r14d
.LBB14_4:                               # %cleanup
	movl	%r14d, %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pdf_set_drawing_color, .Lfunc_end14-pdf_set_drawing_color
	.cfi_endproc

	.globl	pdf_set_pure_color
	.align	16, 0x90
	.type	pdf_set_pure_color,@function
pdf_set_pure_color:                     # @pdf_set_pure_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp148:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp149:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 56
	subq	$1288, %rsp             # imm = 0x508
.Ltmp151:
	.cfi_def_cfa_offset 1344
.Ltmp152:
	.cfi_offset %rbx, -56
.Ltmp153:
	.cfi_offset %r12, -48
.Ltmp154:
	.cfi_offset %r13, -40
.Ltmp155:
	.cfi_offset %r14, -32
.Ltmp156:
	.cfi_offset %r15, -24
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rdi, %r13
	movq	%rsi, 640(%rsp)
	movq	$gx_dc_type_data_pure, 632(%rsp)
	movl	$0, 992(%rsp)
	xorl	%ebx, %ebx
	cmpl	$0, 30460(%r13)
	jne	.LBB15_4
# BB#1:                                 # %if.end
	xorl	%ebx, %ebx
	leaq	632(%rsp), %rsi
	leaq	(%rsp), %rbp
	xorl	%edi, %edi
	movq	%rbp, %rdx
	callq	gx_hld_save_color
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB15_4
# BB#2:                                 # %if.end.4
	movl	$1, %esi
	movq	%r13, %rdi
	callq	pdf_open_page
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB15_4
# BB#3:                                 # %if.end.7
	leaq	632(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	pdf_reset_color
	movl	%eax, %ebx
.LBB15_4:                               # %cleanup
	movl	%ebx, %eax
	addq	$1288, %rsp             # imm = 0x508
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pdf_set_pure_color, .Lfunc_end15-pdf_set_pure_color
	.cfi_endproc

	.globl	pdf_end_gstate
	.align	16, 0x90
	.type	pdf_end_gstate,@function
pdf_end_gstate:                         # @pdf_end_gstate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp158:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp160:
	.cfi_def_cfa_offset 32
.Ltmp161:
	.cfi_offset %rbx, -24
.Ltmp162:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	%rsi, (%rsp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB16_5
# BB#1:                                 # %if.then
	leaq	(%rsp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	pdf_substitute_resource
	testl	%eax, %eax
	js	.LBB16_5
# BB#2:                                 # %if.end
	movq	26664(%rbx), %rax
	movq	(%rsp), %rcx
	orq	%rax, 56(%rcx)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
	testl	%eax, %eax
	js	.LBB16_5
# BB#3:                                 # %if.end.5
	movq	30448(%rbx), %rsi
	movq	(%rsp), %rcx
	movl	$.L.str.21, %edx
	movq	%rbx, %rdi
	callq	pdf_add_resource
	testl	%eax, %eax
	js	.LBB16_5
# BB#4:                                 # %cleanup
	movq	5848(%rbx), %r14
	movq	(%rsp), %rdi
	callq	pdf_resource_id
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	movq	26664(%rbx), %rax
	movq	(%rsp), %rcx
	orq	%rax, 56(%rcx)
	xorl	%eax, %eax
.LBB16_5:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	pdf_end_gstate, .Lfunc_end16-pdf_end_gstate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI17_2:
	.quad	4608533498688228557     # double 1.3
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI17_1:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_3:
	.zero	16
	.text
	.globl	pdf_prepare_drawing
	.align	16, 0x90
	.type	pdf_prepare_drawing,@function
pdf_prepare_drawing:                    # @pdf_prepare_drawing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp166:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp167:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp168:
	.cfi_def_cfa_offset 56
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp169:
	.cfi_def_cfa_offset 528
.Ltmp170:
	.cfi_offset %rbx, -56
.Ltmp171:
	.cfi_offset %r12, -48
.Ltmp172:
	.cfi_offset %r13, -40
.Ltmp173:
	.cfi_offset %r14, -32
.Ltmp174:
	.cfi_offset %r15, -24
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movsd	9368(%r12), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI17_0(%rip), %xmm0
	jae	.LBB17_1
# BB#33:                                # %if.else
	movss	224(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$-15, %eax
	ucomiss	.LCPI17_1(%rip), %xmm0
	jne	.LBB17_229
	jp	.LBB17_229
# BB#34:                                # %lor.lhs.false
	movss	228(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%ebp, %ebp
	ucomiss	.LCPI17_1(%rip), %xmm0
	jne	.LBB17_229
	jp	.LBB17_229
	jmp	.LBB17_35
.LBB17_1:                               # %if.then
	movl	220(%r14), %eax
	cmpl	%eax, 6092(%r12)
	je	.LBB17_9
# BB#2:                                 # %if.then.3
	cmpq	$0, (%r15)
	jne	.LBB17_7
# BB#3:                                 # %if.end.i
	movl	$-6, %eax
	cmpl	$1, 26560(%r12)
	jne	.LBB17_229
# BB#4:                                 # %if.end.2.i
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB17_229
# BB#5:                                 # %if.end.5.i
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB17_229
# BB#6:                                 # %if.end.5.i.if.end_crit_edge
	movl	220(%r14), %eax
.LBB17_7:                               # %if.end
	movb	$47, 176(%rsp)
	leaq	177(%rsp), %rdi
	movl	%eax, %eax
	movq	pdf_prepare_drawing.bm_names(,%rax,8), %rsi
	movl	$18, %edx
	callq	strncpy
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	leaq	176(%rsp), %rdx
	movl	$.L.str.40, %esi
	callq	cos_dict_put_string_copy
	testl	%eax, %eax
	js	.LBB17_229
# BB#8:                                 # %cleanup
	movl	220(%r14), %eax
	movl	%eax, 6092(%r12)
.LBB17_9:                               # %if.end.18
	movq	240(%r14), %rdx
	cmpq	%rdx, 6112(%r12)
	je	.LBB17_20
# BB#10:                                # %if.then.i
	leaq	176(%rsp), %rdi
	testq	%rdx, %rdx
	je	.LBB17_11
# BB#12:                                # %if.else.i
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB17_13
.LBB17_11:                              # %if.then.4.i
	movl	$.L.str.57, %esi
	callq	strcpy
.LBB17_13:                              # %if.end.i.134
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB17_18
# BB#14:                                # %if.end.i.i
	movl	$-6, %eax
	cmpl	$1, 26560(%r12)
	jne	.LBB17_229
# BB#15:                                # %if.end.2.i.i
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB17_229
# BB#16:                                # %if.end.5.i.i
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB17_229
# BB#17:                                # %if.end.5.i.if.end.11_crit_edge.i
	movq	(%r15), %rax
.LBB17_18:                              # %if.end.11.i
	movq	64(%rax), %rbp
	leaq	176(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.59, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB17_229
# BB#19:                                # %cleanup.i
	movq	240(%r14), %rax
	movq	%rax, 6112(%r12)
.LBB17_20:                              # %if.end.24.i
	movss	224(%r14), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	228(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	6096(%r12), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	6100(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	jne	.LBB17_21
	jnp	.LBB17_23
.LBB17_21:                              # %if.then.31.i
	movl	$-15, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB17_229
	jp	.LBB17_229
# BB#22:                                # %if.end.39.i
	movss	%xmm3, 6096(%r12)
	xorl	%ebp, %ebp
	jmp	.LBB17_25
.LBB17_23:                              # %if.else.46.i
	xorl	%ebp, %ebp
	ucomiss	%xmm0, %xmm1
	jne	.LBB17_24
	jnp	.LBB17_35
.LBB17_24:                              # %if.then.54.i
	movss	%xmm0, 6100(%r12)
	movl	$1, %ebp
	movaps	%xmm0, %xmm3
.LBB17_25:                              # %if.end.63.i
	movss	%xmm3, 88(%rsp)         # 4-byte Spill
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB17_30
# BB#26:                                # %if.end.i.37.i
	movl	$-6, %eax
	cmpl	$1, 26560(%r12)
	jne	.LBB17_229
# BB#27:                                # %if.end.2.i.40.i
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB17_229
# BB#28:                                # %if.end.5.i.47.i
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB17_229
# BB#29:                                # %if.end.5.i.47.if.end.68_crit_edge.i
	movq	(%r15), %rax
.LBB17_30:                              # %if.end.68.i
	movq	64(%rax), %rdi
	movl	$.L.str.60, %esi
	movl	%ebp, %edx
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	movss	88(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	js	.LBB17_229
# BB#31:                                # %if.end.74.i
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.61, %esi
	callq	cos_dict_put_c_key_real
	testl	%eax, %eax
	js	.LBB17_229
# BB#32:                                # %pdf_update_alpha.exit
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.62, %esi
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos_dict_put_c_key_real
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_229
.LBB17_35:                              # %if.end.28
	cmpl	$0, 9536(%r12)
	setne	%al
	movzbl	%al, %ecx
	cmpl	%ecx, 30392(%r12)
	jne	.LBB17_199
# BB#36:                                # %if.then.30
	movb	$0, 96(%rsp)
	movb	$0, 144(%rsp)
	movb	$0, 176(%rsp)
	movb	$0, 304(%rsp)
	cmpl	$0, 9012(%r12)
	je	.LBB17_113
# BB#37:                                # %land.lhs.true
	movq	9920(%r12), %rax
	movq	392(%r14), %rbx
	cmpq	184(%rbx), %rax
	je	.LBB17_113
# BB#38:                                # %land.lhs.true.37
	cmpl	$0, 9560(%r12)
	jne	.LBB17_113
# BB#39:                                # %if.then.39
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movq	368(%r14), %r13
	movl	(%r13), %eax
	movl	$-15, %ebp
	decl	%eax
	cmpl	$6, %eax
	ja	.LBB17_111
# BB#40:                                # %if.then.39
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_57:                              # %sw.bb.22.i
	movq	1728(%r12), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	40(%r13), %esi
	movl	$8, %edx
	movl	$.L.str.104, %ecx
	movq	%r13, 72(%rsp)          # 8-byte Spill
	callq	*88(%rdi)
	movq	%r13, %rcx
	movq	%rbx, %r13
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB17_111
# BB#58:                                # %for.cond.preheader.i.i
	movl	208(%r13), %eax
	testl	%eax, %eax
	je	.LBB17_84
# BB#59:                                # %for.body.lr.ph.i.28.i
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
.LBB17_60:                              # %for.body.i.29.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_62 Depth 2
                                        #     Child Loop BB17_67 Depth 2
	movl	40(%rcx), %edx
	testl	%edx, %edx
	movl	$0, %esi
	je	.LBB17_64
# BB#61:                                # %for.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movq	32(%rcx), %rdi
	xorl	%esi, %esi
.LBB17_62:                              # %for.body.i.i.i
                                        #   Parent Loop BB17_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ebx, (%rdi)
	je	.LBB17_64
# BB#63:                                # %for.inc.i.i.i
                                        #   in Loop: Header=BB17_62 Depth=2
	incq	%rsi
	addq	$80, %rdi
	cmpl	%edx, %esi
	jb	.LBB17_62
.LBB17_64:                              # %for.end.i.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	cmpl	%edx, %esi
	jne	.LBB17_70
# BB#65:                                # %for.cond.5.preheader.i.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	xorl	%esi, %esi
	testl	%edx, %edx
	je	.LBB17_69
# BB#66:                                # %for.body.8.lr.ph.i.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movq	32(%rcx), %rdi
	xorl	%esi, %esi
.LBB17_67:                              # %for.body.8.i.i.i
                                        #   Parent Loop BB17_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$64, (%rdi)
	je	.LBB17_69
# BB#68:                                # %for.inc.16.i.i.i
                                        #   in Loop: Header=BB17_67 Depth=2
	incq	%rsi
	addq	$80, %rdi
	cmpl	%edx, %esi
	jb	.LBB17_67
.LBB17_69:                              # %for.end.18.i.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movl	$-21, %ebp
	cmpl	%edx, %esi
	je	.LBB17_111
.LBB17_70:                              # %pdf_get_halftone_component_index.exit.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	testl	%esi, %esi
	js	.LBB17_71
# BB#72:                                # %if.end.6.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movslq	%esi, %rdx
	movq	32(%rcx), %rsi
	leaq	(%rdx,%rdx,4), %rdi
	shlq	$4, %rdi
	cmpl	$64, (%rsi,%rdi)
	jne	.LBB17_73
# BB#74:                                # %if.then.8.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movl	$1, %r10d
	testl	%r9d, %r9d
	jne	.LBB17_83
	jmp	.LBB17_75
.LBB17_73:                              #   in Loop: Header=BB17_60 Depth=1
	movl	%r9d, %r10d
.LBB17_75:                              # %if.end.11.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movq	200(%r13), %rax
	imulq	$168, %rbx, %rcx
	testq	%rax, %rax
	leaq	(%rcx,%rax), %rdx
	cmoveq	%r13, %rdx
	movl	8(%rsi,%rdi), %eax
	cmpl	$5, %eax
	je	.LBB17_80
# BB#76:                                # %if.end.11.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	cmpl	$4, %eax
	jne	.LBB17_77
# BB#79:                                # %sw.bb.23.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movl	%r10d, 64(%rsp)         # 4-byte Spill
	leaq	16(%rsi,%rdi), %rsi
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,8), %rcx
	movq	%r12, %rdi
	callq	pdf_write_threshold_halftone
	jmp	.LBB17_81
.LBB17_80:                              # %sw.bb.28.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movl	%r10d, 64(%rsp)         # 4-byte Spill
	leaq	16(%rsi,%rdi), %rsi
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,8), %rcx
	movq	%r12, %rdi
	callq	pdf_write_threshold2_halftone
	jmp	.LBB17_81
.LBB17_77:                              # %if.end.11.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movl	$-15, %ebp
	cmpl	$3, %eax
	jne	.LBB17_230
# BB#78:                                # %sw.bb.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movl	%r10d, 64(%rsp)         # 4-byte Spill
	leaq	16(%rsi,%rdi), %rsi
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,8), %rcx
	movq	%r12, %rdi
	callq	pdf_write_spot_halftone
.LBB17_81:                              # %sw.epilog.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	64(%rsp), %edx          # 4-byte Reload
	js	.LBB17_230
# BB#82:                                # %sw.epilog.for.inc_crit_edge.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	movl	208(%r13), %eax
	movl	%edx, %r9d
.LBB17_83:                              # %for.inc.i.i
                                        #   in Loop: Header=BB17_60 Depth=1
	incq	%rbx
	cmpl	%eax, %ebx
	jb	.LBB17_60
.LBB17_84:                              # %for.end.i.35.i
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%rcx, %rbp
	movl	$18, %esi
	movq	%r12, %rdi
	movq	%r13, %rbx
	callq	pdf_begin_separate
	movq	%rax, 360(%rsp)
	movq	5848(%r12), %r13
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.105, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	208(%rbx), %r9d
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	je	.LBB17_106
# BB#85:                                # %for.body.43.lr.ph.i.i
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbp, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB17_86:                              # %for.body.43.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_88 Depth 2
                                        #     Child Loop BB17_93 Depth 2
	movl	40(%rax), %esi
	testl	%esi, %esi
	movl	$0, %edi
	je	.LBB17_90
# BB#87:                                # %for.body.lr.ph.i.80.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	movq	32(%rax), %rbp
	xorl	%edi, %edi
.LBB17_88:                              # %for.body.i.84.i.i
                                        #   Parent Loop BB17_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, (%rbp)
	je	.LBB17_90
# BB#89:                                # %for.inc.i.87.i.i
                                        #   in Loop: Header=BB17_88 Depth=2
	incq	%rdi
	addq	$80, %rbp
	cmpl	%esi, %edi
	jb	.LBB17_88
.LBB17_90:                              # %for.end.i.91.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	cmpl	%esi, %edi
	jne	.LBB17_96
# BB#91:                                # %for.cond.5.preheader.i.92.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	xorl	%edi, %edi
	testl	%esi, %esi
	je	.LBB17_95
# BB#92:                                # %for.body.8.lr.ph.i.94.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	movq	32(%rax), %rbp
	xorl	%edi, %edi
.LBB17_93:                              # %for.body.8.i.98.i.i
                                        #   Parent Loop BB17_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$64, (%rbp)
	je	.LBB17_95
# BB#94:                                # %for.inc.16.i.101.i.i
                                        #   in Loop: Header=BB17_93 Depth=2
	incq	%rdi
	addq	$80, %rbp
	cmpl	%esi, %edi
	jb	.LBB17_93
.LBB17_95:                              # %for.end.18.i.105.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	movl	$-21, %ebp
	cmpl	%esi, %edi
	je	.LBB17_111
.LBB17_96:                              # %pdf_get_halftone_component_index.exit109.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	testl	%edi, %edi
	js	.LBB17_97
# BB#98:                                # %if.end.48.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	movslq	%edi, %rdi
	movq	32(%rax), %rsi
	leaq	(%rdi,%rdi,4), %rbp
	shlq	$4, %rbp
	cmpl	$64, (%rsi,%rbp)
	jne	.LBB17_99
# BB#100:                               # %if.then.54.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	movl	$1, %edi
	testl	%edx, %edx
	jne	.LBB17_104
	jmp	.LBB17_101
.LBB17_99:                              #   in Loop: Header=BB17_86 Depth=1
	movl	%edx, %edi
.LBB17_101:                             # %if.end.58.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	24(%r12), %rdi
	movslq	4(%rsi,%rbp), %rsi
	leaq	368(%rsp), %rdx
	leaq	468(%rsp), %rcx
	callq	*48(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_111
# BB#102:                               # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	movq	368(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	468(%rsp), %ebx
	movq	1728(%r12), %rdi
	leal	1(%rbx), %esi
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movl	$.L.str.20, %edx
	callq	*136(%rdi)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB17_111
# BB#103:                               # %if.end.69.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	movb	$47, (%r13)
	movq	%r13, %rdi
	incq	%rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	leaq	400(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	36(%rsp), %edx          # 4-byte Reload
	callq	cos_string_value
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	cos_value_write
	movq	408(%rsp), %rsi
	movl	416(%rsp), %edx
	movl	$.L.str.104, %ecx
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	*160(%rdi)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	(%rax,%rbp,8), %rdx
	movl	$.L.str.106, %esi
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	callq	pprintld1
	movq	%rbp, %rcx
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	208(%rbx), %r9d
	movl	%ecx, %r8d
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB17_104:                             # %for.inc.83.i.i
                                        #   in Loop: Header=BB17_86 Depth=1
	incq	%rcx
	cmpl	%r9d, %ecx
	jb	.LBB17_86
# BB#105:                               # %for.end.85.i.i
	testl	%edx, %edx
	jne	.LBB17_107
.LBB17_106:                             # %if.then.87.i.i
	movslq	%r8d, %rax
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx,%rax,8), %rdx
	movl	$.L.str.107, %esi
	movq	%r13, %rdi
	callq	pprintld1
.LBB17_107:                             # %if.end.91.i.i
	movl	$.L.str.68, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	$.L.str.104, %edx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB17_108
.LBB17_41:                              # %sw.bb.i
	movq	200(%rbx), %rdx
	movq	48(%r13), %rax
	movq	%rax, 416(%rsp)
	movups	32(%r13), %xmm0
	movaps	%xmm0, 400(%rsp)
	movl	$0, 424(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 432(%rsp)
	leaq	400(%rsp), %rsi
	leaq	360(%rsp), %rcx
	movq	%r12, %rdi
	callq	pdf_write_spot_halftone
	jmp	.LBB17_109
.LBB17_42:                              # %sw.bb.1.i
	cmpl	$0, 208(%rbx)
	je	.LBB17_43
# BB#44:                                # %for.body.lr.ph.i.i
	addq	$32, %r13
	xorl	%eax, %eax
	leaq	368(%rsp), %rcx
	xorl	%edx, %edx
.LBB17_46:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	200(%rbx), %rdx
	addq	%rax, %rdx
	movq	16(%r13), %rax
	movq	%rax, 416(%rsp)
	movups	(%r13), %xmm0
	movaps	%xmm0, 400(%rsp)
	movl	$0, 424(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 432(%rsp)
	movq	%r12, %rdi
	leaq	400(%rsp), %rsi
	callq	pdf_write_spot_halftone
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_110
# BB#45:                                # %for.cond.i.i
                                        #   in Loop: Header=BB17_46 Depth=1
	movl	64(%rsp), %edx          # 4-byte Reload
	incl	%edx
	movq	72(%rsp), %rcx          # 8-byte Reload
	addq	$8, %rcx
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	$168, %rax
	addq	$24, %r13
	cmpl	208(%rbx), %edx
	jb	.LBB17_46
# BB#47:                                # %for.cond.for.end_crit_edge.i.i
	movq	392(%rsp), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	368(%rsp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	376(%rsp), %r13
	movq	384(%rsp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB17_48
.LBB17_53:                              # %sw.bb.4.i
	addq	$32, %r13
	movq	200(%rbx), %rdx
	leaq	360(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	pdf_write_spot_halftone
	jmp	.LBB17_109
.LBB17_55:                              # %sw.bb.10.i
	addq	$32, %r13
	movq	200(%rbx), %rdx
	leaq	360(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	pdf_write_threshold_halftone
	jmp	.LBB17_109
.LBB17_56:                              # %sw.bb.16.i
	addq	$32, %r13
	movq	200(%rbx), %rdx
	leaq	360(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	pdf_write_threshold2_halftone
	jmp	.LBB17_109
.LBB17_43:                              # %entry.for.end_crit_edge.i.i
                                        # implicit-def: RAX
	movq	%rax, 80(%rsp)          # 8-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 72(%rsp)          # 8-byte Spill
                                        # implicit-def: R13
                                        # implicit-def: RAX
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB17_48:                              # %for.end.i.i
	movl	$18, %esi
	movq	%r12, %rdi
	callq	pdf_begin_separate
	movq	%rax, 360(%rsp)
	movq	5848(%r12), %rbp
	cmpl	$3, 208(%rbx)
	movq	64(%rsp), %rdx          # 8-byte Reload
	ja	.LBB17_50
# BB#49:                                # %select.mid
	movq	%r13, %rdx
.LBB17_50:                              # %select.end
	movl	$.L.str.63, %esi
	movq	%rbp, %rdi
	callq	pprintld1
	movl	$.L.str.64, %esi
	movq	%rbp, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, %rcx
	callq	pprintld2
	movl	$.L.str.65, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	movq	%r13, %rcx
	callq	pprintld2
	movl	$.L.str.66, %esi
	movq	%rbp, %rdi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, %rcx
	callq	pprintld2
	cmpl	$4, 208(%rbx)
	jb	.LBB17_52
# BB#51:                                # %if.then.23.i.i
	movq	392(%rsp), %rdx
	movl	$.L.str.67, %esi
	movq	%rbp, %rdi
	movq	%rdx, %rcx
	callq	pprintld2
.LBB17_52:                              # %if.end.27.i.i
	movl	$.L.str.68, %esi
	movq	%rbp, %rdi
	callq	stream_puts
.LBB17_108:                             # %sw.epilog.i
	movl	$18, %esi
	movq	%r12, %rdi
	callq	pdf_end_separate
.LBB17_109:                             # %sw.epilog.i
	movl	%eax, %ebp
.LBB17_110:                             # %sw.epilog.i
	testl	%ebp, %ebp
	movl	88(%rsp), %ecx          # 4-byte Reload
	js	.LBB17_111
# BB#112:                               # %pdf_update_halftone.exit
	movq	360(%rsp), %rdx
	leaq	304(%rsp), %rdi
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	movl	%ecx, %ebx
	callq	gs_sprintf
	movl	%ebx, %ecx
	movq	392(%r14), %rax
	movq	184(%rax), %rax
	movq	%rax, 9920(%r12)
.LBB17_113:                             # %if.end.45
	cmpl	$0, 9020(%r12)
	jne	.LBB17_160
# BB#114:                               # %land.lhs.true.48
	cmpl	$0, 9560(%r12)
	jne	.LBB17_160
# BB#115:                               # %land.lhs.true.51
	cmpl	$0, 9564(%r12)
	jne	.LBB17_160
# BB#116:                               # %if.then.53
	movq	440(%r14), %r13
	movq	%r13, 400(%rsp)
	movq	456(%r14), %rbx
	movq	%rbx, 408(%rsp)
	movq	472(%r14), %r8
	movq	%r8, 416(%rsp)
	movq	488(%r14), %r9
	movq	%r9, 424(%rsp)
	testq	%r13, %r13
	je	.LBB17_118
# BB#117:                               # %if.then.i.146
	movq	48(%r13), %rax
	movq	%rax, 368(%rsp)
	movq	9928(%r12), %rax
	cmpq	48(%r13), %rax
	setne	%al
	movzbl	%al, %eax
	xorl	%edx, %edx
	jmp	.LBB17_119
.LBB17_118:                             # %if.else.i.147
	movq	$-1, 368(%rsp)
	xorl	%eax, %eax
	movl	$-1, %edx
.LBB17_119:                             # %for.inc.i
	movl	%ecx, %ebp
	testq	%rbx, %rbx
	je	.LBB17_142
# BB#120:                               # %if.then.1.i
	movq	48(%rbx), %rdi
	movq	%rdi, 376(%rsp)
	movq	9936(%r12), %rcx
	cmpq	48(%rbx), %rcx
	je	.LBB17_122
# BB#121:                               # %select.mid483
	movl	$1, %eax
.LBB17_122:                             # %select.end482
	xorl	%ecx, %ecx
	movl	$1, %esi
	cmpl	$-1, %edx
	je	.LBB17_143
# BB#123:                               # %land.lhs.true.1.i
	movslq	%edx, %rcx
	cmpq	368(%rsp,%rcx,8), %rdi
	setne	%cl
	movzbl	%cl, %ecx
	jmp	.LBB17_143
.LBB17_142:                             # %if.else.1.i
	movq	$-1, 376(%rsp)
	xorl	%ecx, %ecx
	movl	%edx, %esi
.LBB17_143:                             # %for.inc.1.i
	testq	%r8, %r8
	je	.LBB17_149
# BB#144:                               # %if.then.2.i
	movq	48(%r8), %rdi
	movq	%rdi, 384(%rsp)
	movq	9944(%r12), %rdx
	cmpq	48(%r8), %rdx
	je	.LBB17_146
# BB#145:                               # %select.mid485
	movl	$1, %eax
.LBB17_146:                             # %select.end484
	movl	$2, %edx
	cmpl	$-1, %esi
	je	.LBB17_150
# BB#147:                               # %land.lhs.true.2.i
	movslq	%esi, %rsi
	cmpq	368(%rsp,%rsi,8), %rdi
	je	.LBB17_150
# BB#148:                               # %select.mid487
	movl	$1, %ecx
	jmp	.LBB17_150
.LBB17_149:                             # %if.else.2.i
	movq	$-1, 384(%rsp)
	movl	%esi, %edx
.LBB17_150:                             # %for.inc.2.i
	testq	%r9, %r9
	je	.LBB17_157
# BB#151:                               # %if.then.3.i
	movq	48(%r9), %rdi
	movq	%rdi, 392(%rsp)
	movq	9952(%r12), %rsi
	cmpq	48(%r9), %rsi
	je	.LBB17_153
# BB#152:                               # %select.mid489
	movl	$1, %eax
.LBB17_153:                             # %select.end488
	movl	$3, %esi
	cmpl	$-1, %edx
	je	.LBB17_154
# BB#155:                               # %land.lhs.true.3.i
	movl	%ebp, 88(%rsp)          # 4-byte Spill
	movslq	%edx, %rdx
	cmpq	368(%rsp,%rdx,8), %rdi
	je	.LBB17_158
# BB#156:                               # %select.mid491
	movl	$1, %ecx
	jmp	.LBB17_158
.LBB17_157:                             # %if.else.3.i
	movl	%ebp, 88(%rsp)          # 4-byte Spill
	movq	$-1, 392(%rsp)
	movl	%edx, %esi
	jmp	.LBB17_158
.LBB17_154:
	movl	%ebp, 88(%rsp)          # 4-byte Spill
.LBB17_158:                             # %for.inc.3.i
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB17_159
# BB#124:                               # %if.then.32.i
	testl	%ecx, %ecx
	je	.LBB17_125
# BB#127:                               # %if.else.41.i
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%r9, 64(%rsp)           # 8-byte Spill
	leaq	176(%rsp), %rdi
	movl	$.L.str.108, %esi
	callq	strcpy
	xorl	%ebp, %ebp
	testq	%r13, %r13
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	je	.LBB17_130
# BB#128:                               # %if.then.51.i
	leaq	176(%rsp), %rdi
	callq	strlen
	leaq	176(%rsp,%rax), %r9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$.L.str.109, %r8d
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	pdf_write_transfer_map
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_111
# BB#129:                               # %if.end.59.i
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
.LBB17_130:                             # %for.inc.63.i
	testq	%rbx, %rbx
	je	.LBB17_131
# BB#132:                               # %if.then.51.1.i
	leaq	176(%rsp), %rdi
	callq	strlen
	leaq	176(%rsp,%rax), %r9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$.L.str.109, %r8d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_write_transfer_map
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_111
# BB#133:                               # %if.end.59.1.i
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	movl	80(%rsp), %ebx          # 4-byte Reload
	orl	%eax, %ebx
	jmp	.LBB17_134
.LBB17_125:                             # %if.then.34.i
	movslq	%esi, %rax
	movq	400(%rsp,%rax,8), %rsi
	leaq	176(%rsp), %r9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$.L.str.41, %r8d
	movq	%r12, %rdi
	callq	pdf_write_transfer_map
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_111
# BB#126:                               # %if.end.39.i.150
	sete	%al
	movzbl	%al, %ebx
	jmp	.LBB17_141
.LBB17_131:
	movl	80(%rsp), %ebx          # 4-byte Reload
.LBB17_134:                             # %for.inc.63.1.i
	movq	72(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB17_137
# BB#135:                               # %if.then.51.2.i
	leaq	176(%rsp), %rdi
	movq	%rax, %rbp
	callq	strlen
	leaq	176(%rsp,%rax), %r9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$.L.str.109, %r8d
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pdf_write_transfer_map
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_111
# BB#136:                               # %if.end.59.2.i
	sete	%al
	movzbl	%al, %eax
	shll	$2, %eax
	orl	%eax, %ebx
.LBB17_137:                             # %for.inc.63.2.i
	movq	64(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB17_140
# BB#138:                               # %if.then.51.3.i
	leaq	176(%rsp), %rdi
	movq	%rax, %rbp
	callq	strlen
	leaq	176(%rsp,%rax), %r9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$.L.str.109, %r8d
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pdf_write_transfer_map
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_111
# BB#139:                               # %if.end.59.3.i
	sete	%al
	movzbl	%al, %eax
	shll	$3, %eax
	orl	%eax, %ebx
.LBB17_140:                             # %for.inc.63.3.i
	leaq	176(%rsp), %rdi
	movl	$.L.str.110, %esi
	callq	strcat
.LBB17_141:                             # %cleanup.i.152
	leaq	9928(%r12), %rdi
	leaq	368(%rsp), %rsi
	movl	$32, %edx
	callq	memcpy
	movl	%ebx, 9960(%r12)
.LBB17_159:                             # %pdf_update_transfer.exit.thread259
	movl	88(%rsp), %ecx          # 4-byte Reload
.LBB17_160:                             # %if.end.59
	cmpl	$0, 9024(%r12)
	je	.LBB17_162
# BB#161:
	movl	%ecx, %ebx
.LBB17_170:                             # %if.end.95
	movb	304(%rsp), %al
	movb	176(%rsp), %cl
	orb	%al, %cl
	orb	144(%rsp), %cl
	orb	96(%rsp), %cl
	je	.LBB17_178
# BB#171:                               # %if.then.110
	xorl	%ebp, %ebp
	cmpq	$0, (%r15)
	jne	.LBB17_178
# BB#172:                               # %if.end.i.158
	cmpl	$1, 26560(%r12)
	jne	.LBB17_173
# BB#174:                               # %if.end.2.i.161
	xorl	%r13d, %r13d
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_197
# BB#175:                               # %if.end.5.i.168
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB17_176
# BB#177:                               # %if.end.5.i.168.if.end.116_crit_edge
	movb	304(%rsp), %al
.LBB17_178:                             # %if.end.116
	testb	%al, %al
	je	.LBB17_181
# BB#179:                               # %if.then.119
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	leaq	304(%rsp), %rdx
	movl	$.L.str.42, %esi
	callq	cos_dict_put_string_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_180
.LBB17_181:                             # %if.end.127
	cmpb	$0, 176(%rsp)
	je	.LBB17_183
# BB#182:                               # %if.then.130
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	leaq	176(%rsp), %rdx
	movl	$.L.str.43, %esi
	callq	cos_dict_put_string_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_180
.LBB17_183:                             # %if.end.138
	cmpb	$0, 144(%rsp)
	je	.LBB17_185
# BB#184:                               # %if.then.141
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	leaq	144(%rsp), %rdx
	movl	$.L.str.44, %esi
	callq	cos_dict_put_string_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_180
.LBB17_185:                             # %if.end.149
	cmpb	$0, 96(%rsp)
	je	.LBB17_187
# BB#186:                               # %if.then.152
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	leaq	96(%rsp), %rdx
	movl	$.L.str.45, %esi
	callq	cos_dict_put_string_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_180
.LBB17_187:                             # %if.end.160
	movb	$1, %r13b
	cmpl	$0, 9560(%r12)
	jne	.LBB17_197
# BB#188:                               # %if.then.163
	leaq	352(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	gs_currentscreenphase_pis
	leaq	5872(%r12), %rdi
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	leaq	344(%rsp), %rsi
	xorl	%edx, %edx
	callq	gs_currentscreenphase_pis
	movl	352(%rsp), %edx
	cmpl	%edx, 344(%rsp)
	jne	.LBB17_190
# BB#189:                               # %lor.lhs.false.170
	movl	348(%rsp), %eax
	cmpl	356(%rsp), %eax
	je	.LBB17_197
.LBB17_190:                             # %if.then.174
	cmpq	$0, (%r15)
	jne	.LBB17_195
# BB#191:                               # %if.end.i.179
	movl	$-6, %ebp
	cmpl	$1, 26560(%r12)
	jne	.LBB17_180
# BB#192:                               # %if.end.2.i.182
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_180
# BB#193:                               # %if.end.5.i.189
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_180
# BB#194:                               # %if.end.5.i.189.if.end.180_crit_edge
	movl	352(%rsp), %edx
.LBB17_195:                             # %if.end.180
	movl	356(%rsp), %ecx
	leaq	400(%rsp), %rbp
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.47, %esi
	movq	%rbp, %rdx
	callq	cos_dict_put_string_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_180
# BB#196:                               # %cleanup.196
	movl	352(%rsp), %esi
	movl	356(%rsp), %edx
	movl	$-1, %ecx
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	gx_imager_setscreenphase
	jmp	.LBB17_197
.LBB17_180:
	xorl	%r13d, %r13d
	jmp	.LBB17_197
.LBB17_162:                             # %if.then.62
	movq	416(%r14), %rsi
	movl	%ecx, %ebx
	testq	%rsi, %rsi
	je	.LBB17_166
# BB#163:                               # %land.lhs.true.64
	movq	9968(%r12), %rax
	cmpq	48(%rsi), %rax
	je	.LBB17_166
# BB#164:                               # %if.then.68
	xorl	%r13d, %r13d
	leaq	144(%rsp), %r9
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.41, %r8d
	movq	%r12, %rdi
	callq	pdf_write_transfer_map
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_197
# BB#165:                               # %if.end.74
	movq	416(%r14), %rax
	movq	48(%rax), %rax
	movq	%rax, 9968(%r12)
.LBB17_166:                             # %if.end.78
	movq	424(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB17_170
# BB#167:                               # %land.lhs.true.80
	movq	9976(%r12), %rax
	cmpq	48(%rsi), %rax
	je	.LBB17_170
# BB#168:                               # %if.then.84
	xorl	%r13d, %r13d
	leaq	96(%rsp), %r9
	movl	$-1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.41, %r8d
	movq	%r12, %rdi
	callq	pdf_write_transfer_map
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_197
# BB#169:                               # %if.end.90
	movq	424(%r14), %rax
	movq	48(%rax), %rax
	movq	%rax, 9976(%r12)
	jmp	.LBB17_170
.LBB17_173:
	movl	$-6, %ebp
	xorl	%r13d, %r13d
	jmp	.LBB17_197
.LBB17_176:
	xorl	%r13d, %r13d
	movl	%eax, %ebp
.LBB17_197:                             # %cleanup.201
	movl	%ebx, %ecx
.LBB17_198:                             # %cleanup.201
	testb	%r13b, %r13b
	movl	%ebp, %eax
	je	.LBB17_229
.LBB17_199:                             # %if.end.209
	movsd	9368(%r12), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI17_2(%rip), %xmm0
	jae	.LBB17_201
# BB#200:
	movl	%ebp, %eax
	jmp	.LBB17_229
.LBB17_201:                             # %land.lhs.true.213
	cmpl	%ecx, 30392(%r12)
	jne	.LBB17_202
# BB#203:                               # %if.then.217
	movl	8928(%r12), %edx
	cmpl	%edx, 9912(%r12)
	je	.LBB17_212
# BB#204:                               # %if.then.221
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB17_209
# BB#205:                               # %if.end.i.197
	movl	$-6, %eax
	cmpl	$1, 26560(%r12)
	jne	.LBB17_229
# BB#206:                               # %if.end.2.i.200
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB17_229
# BB#207:                               # %if.end.5.i.207
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB17_229
# BB#208:                               # %if.end.5.i.207.if.end.226_crit_edge
	movq	(%r15), %rax
	movl	8928(%r12), %edx
.LBB17_209:                             # %if.end.226
	movq	64(%rax), %rdi
	movl	$.L.str.48, %esi
	callq	cos_dict_put_c_key_int
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_210
# BB#211:                               # %if.end.234
	movl	8928(%r12), %eax
	movl	%eax, 9912(%r12)
.LBB17_212:                             # %if.end.238
	movss	6192(%r12), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	320(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	%ebp, %eax
	jne	.LBB17_213
	jnp	.LBB17_220
.LBB17_213:                             # %if.then.243
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB17_218
# BB#214:                               # %if.end.i.215
	movl	$-6, %eax
	cmpl	$1, 26560(%r12)
	jne	.LBB17_229
# BB#215:                               # %if.end.2.i.218
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB17_229
# BB#216:                               # %if.end.5.i.225
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB17_229
# BB#217:                               # %if.end.5.i.225.if.end.248_crit_edge
	movq	(%r15), %rax
	movss	320(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
.LBB17_218:                             # %if.end.248
	movq	64(%rax), %rdi
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.49, %esi
	callq	cos_dict_put_c_key_real
	testl	%eax, %eax
	js	.LBB17_229
# BB#219:                               # %if.end.256
	movl	320(%r14), %ecx
	movl	%ecx, 6192(%r12)
.LBB17_220:                             # %if.end.260
	movsd	9368(%r12), %xmm0       # xmm0 = mem[0],zero
	ucomisd	.LCPI17_0(%rip), %xmm0
	jb	.LBB17_229
# BB#221:                               # %if.then.264
	movl	248(%r14), %edx
	cmpl	%edx, 6120(%r12)
	je	.LBB17_229
# BB#222:                               # %if.then.269
	movq	(%r15), %rax
	testq	%rax, %rax
	jne	.LBB17_227
# BB#223:                               # %if.end.i.233
	movl	$-6, %eax
	cmpl	$1, 26560(%r12)
	jne	.LBB17_229
# BB#224:                               # %if.end.2.i.236
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB17_229
# BB#225:                               # %if.end.5.i.243
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%r15), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB17_229
# BB#226:                               # %if.end.5.i.243.if.end.274_crit_edge
	movq	(%r15), %rax
	movl	248(%r14), %edx
.LBB17_227:                             # %if.end.274
	movq	64(%rax), %rdi
	movl	$.L.str.50, %esi
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB17_229
# BB#228:                               # %if.end.281
	movl	248(%r14), %ecx
	movl	%ecx, 6120(%r12)
	jmp	.LBB17_229
.LBB17_202:
	movl	%ebp, %eax
.LBB17_229:                             # %cleanup.288
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_210:
	movl	%ebp, %eax
	jmp	.LBB17_229
.LBB17_230:                             # %if.then.34.i.i
	movl	$.L.str.104, %edx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	jmp	.LBB17_111
.LBB17_71:
	movl	%esi, %ebp
	jmp	.LBB17_111
.LBB17_97:
	movl	%edi, %ebp
.LBB17_111:                             # %pdf_update_halftone.exit.thread
	xorl	%r13d, %r13d
	movl	88(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB17_198
.Lfunc_end17:
	.size	pdf_prepare_drawing, .Lfunc_end17-pdf_prepare_drawing
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_41
	.quad	.LBB17_42
	.quad	.LBB17_53
	.quad	.LBB17_55
	.quad	.LBB17_56
	.quad	.LBB17_57
	.quad	.LBB17_57

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	3279880192              # float -255
.LCPI18_1:
	.long	1065353216              # float 1
.LCPI18_2:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	pdf_write_transfer_map,@function
pdf_write_transfer_map:                 # @pdf_write_transfer_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp179:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 48
	subq	$176, %rsp
.Ltmp181:
	.cfi_def_cfa_offset 224
.Ltmp182:
	.cfi_offset %rbx, -48
.Ltmp183:
	.cfi_offset %r12, -40
.Ltmp184:
	.cfi_offset %r14, -32
.Ltmp185:
	.cfi_offset %r15, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r14
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB18_1
# BB#2:                                 # %if.end
	movq	1728(%rbx), %r15
	testl	%ecx, %ecx
	je	.LBB18_9
# BB#3:                                 # %if.then.1
	movl	$gs_identity_transfer, %eax
	cmpq	%rax, 24(%rsi)
	je	.LBB18_8
# BB#4:                                 # %for.body.preheader
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB18_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edi
	shrl	%edi
	leal	(%rdi,%rax), %edi
	movl	%ecx, %ebp
	shrl	$5, %ebp
	subl	%ebp, %edi
	movswl	56(%rsi,%rcx,2), %ebp
	movswl	%di, %edi
	subl	%edi, %ebp
	movl	%ebp, %edi
	negl	%edi
	cmovll	%ebp, %edi
	cmpl	$1, %edi
	jg	.LBB18_9
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB18_5 Depth=1
	incq	%rcx
	subl	$-128, %eax
	cmpq	$256, %rcx              # imm = 0x100
	jl	.LBB18_5
# BB#7:                                 # %if.end.20
	cmpl	$256, %ecx              # imm = 0x100
	jne	.LBB18_9
.LBB18_8:                               # %if.then.23
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movl	$.L.str.111, %esi
	movq	%r12, %rdi
	callq	strcat
	movl	$1, %ebp
	jmp	.LBB18_15
.LBB18_9:                               # %if.end.29
	movl	$1, 40(%rsp)
	movq	$pdf_write_transfer_map.domain01, 48(%rsp)
	movl	$1, 56(%rsp)
	cvtsi2ssl	%edx, %xmm0
	movss	%xmm0, 32(%rsp)
	movl	$1065353216, 36(%rsp)   # imm = 0x3F800000
	leaq	32(%rsp), %rax
	movq	%rax, 64(%rsp)
	movl	$1, 72(%rsp)
	movl	$transfer_map_access_signed, %eax
	movl	$transfer_map_access, %ecx
	testl	%edx, %edx
	cmovsq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movq	%rsi, 96(%rsp)
	movl	$8, 112(%rsp)
	movq	$0, 120(%rsp)
	js	.LBB18_10
# BB#11:                                # %if.else.78
	movq	$0, 128(%rsp)
	jmp	.LBB18_12
.LBB18_1:                               # %if.then
	movb	$0, (%r12)
	movl	$1, %ebp
	jmp	.LBB18_15
.LBB18_10:                              # %if.then.44
	movss	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	.LCPI18_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	divss	%xmm2, %xmm1
	cvttss2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	movaps	%xmm1, %xmm3
	divss	%xmm0, %xmm3
	movss	%xmm0, 24(%rsp)
	mulss	.LCPI18_2(%rip), %xmm2
	subss	%xmm3, %xmm1
	divss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	movss	%xmm2, 28(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, 128(%rsp)
.LBB18_12:                              # %if.end.80
	movq	$pdf_write_transfer_map.size, 136(%rsp)
	leaq	16(%rsp), %rdi
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	gs_function_Sd_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB18_15
# BB#13:                                # %if.end.85
	movq	16(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	pdf_write_function
	movl	%eax, %ebp
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	*56(%rdi)
	testl	%ebp, %ebp
	js	.LBB18_15
# BB#14:                                # %if.end.90
	movzbl	(%r14), %eax
	cmpl	$32, %eax
	movl	$.L.str.109, %ecx
	movl	$.L.str.41, %edx
	cmoveq	%rdx, %rcx
	testb	%al, %al
	cmoveq	%rdx, %rcx
	movq	8(%rsp), %r8
	movl	$.L.str.112, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	gs_sprintf
	xorl	%ebp, %ebp
.LBB18_15:                              # %cleanup.100
	movl	%ebp, %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdf_write_transfer_map, .Lfunc_end18-pdf_write_transfer_map
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.globl	pdf_try_prepare_fill
	.align	16, 0x90
	.type	pdf_try_prepare_fill,@function
pdf_try_prepare_fill:                   # @pdf_try_prepare_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp189:
	.cfi_def_cfa_offset 32
.Ltmp190:
	.cfi_offset %rbx, -24
.Ltmp191:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, (%rsp)
	leaq	(%rsp), %rdx
	callq	pdf_prepare_drawing
	testl	%eax, %eax
	js	.LBB19_17
# BB#1:                                 # %if.end
	cmpl	$0, 9016(%rbx)
	je	.LBB19_16
# BB#2:                                 # %land.lhs.true
	movl	272(%r14), %edx
	cmpl	%edx, 9896(%rbx)
	jne	.LBB19_4
# BB#3:                                 # %lor.lhs.false
	cmpq	$0, 30472(%rbx)
	je	.LBB19_16
.LBB19_4:                               # %land.lhs.true.3
	cmpl	$0, 30460(%rbx)
	jne	.LBB19_16
# BB#5:                                 # %if.then.5
	movq	(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB19_10
# BB#6:                                 # %if.end.i
	movl	$-6, %eax
	cmpl	$1, 26560(%rbx)
	jne	.LBB19_17
# BB#7:                                 # %if.end.2.i
	leaq	(%rsp), %rcx
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%rbx, %rdi
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB19_17
# BB#8:                                 # %if.end.5.i
	movq	(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB19_17
# BB#9:                                 # %if.end.5.i.if.end.9_crit_edge
	movq	(%rsp), %rax
	movl	272(%r14), %edx
.LBB19_10:                              # %if.end.9
	movq	64(%rax), %rdi
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%rbx), %xmm0
	jbe	.LBB19_13
# BB#11:                                # %if.then.11
	movl	$.L.str.51, %esi
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB19_17
# BB#12:                                # %if.end.17
	movl	272(%r14), %eax
	movl	%eax, 9900(%rbx)
	jmp	.LBB19_15
.LBB19_13:                              # %if.else
	movl	$.L.str.52, %esi
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB19_17
# BB#14:                                # %if.else.if.end.25_crit_edge
	movl	272(%r14), %eax
.LBB19_15:                              # %if.end.25
	movl	%eax, 9896(%rbx)
.LBB19_16:                              # %if.end.28
	movq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pdf_end_gstate
.LBB19_17:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	pdf_try_prepare_fill, .Lfunc_end19-pdf_try_prepare_fill
	.cfi_endproc

	.globl	pdf_prepare_fill
	.align	16, 0x90
	.type	pdf_prepare_fill,@function
pdf_prepare_fill:                       # @pdf_prepare_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp192:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp193:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp194:
	.cfi_def_cfa_offset 32
.Ltmp195:
	.cfi_offset %rbx, -24
.Ltmp196:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$1, 26560(%rbx)
	je	.LBB20_4
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_try_prepare_fill
	cmpl	$-6, %eax
	jne	.LBB20_3
# BB#2:                                 # %if.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB20_3
.LBB20_4:                               # %if.end.7
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pdf_try_prepare_fill    # TAILCALL
.LBB20_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end20:
	.size	pdf_prepare_fill, .Lfunc_end20-pdf_prepare_fill
	.cfi_endproc

	.globl	pdf_prepare_stroke
	.align	16, 0x90
	.type	pdf_prepare_stroke,@function
pdf_prepare_stroke:                     # @pdf_prepare_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp197:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp199:
	.cfi_def_cfa_offset 32
.Ltmp200:
	.cfi_offset %rbx, -24
.Ltmp201:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$1, 26560(%rbx)
	je	.LBB21_4
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_try_prepare_stroke
	cmpl	$-6, %eax
	jne	.LBB21_3
# BB#2:                                 # %if.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB21_3
.LBB21_4:                               # %if.end.7
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pdf_try_prepare_stroke  # TAILCALL
.LBB21_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end21:
	.size	pdf_prepare_stroke, .Lfunc_end21-pdf_prepare_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_try_prepare_stroke,@function
pdf_try_prepare_stroke:                 # @pdf_try_prepare_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp202:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp203:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp204:
	.cfi_def_cfa_offset 32
.Ltmp205:
	.cfi_offset %rbx, -24
.Ltmp206:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, (%rsp)
	leaq	(%rsp), %rdx
	callq	pdf_prepare_drawing
	testl	%eax, %eax
	js	.LBB22_20
# BB#1:                                 # %if.end
	cmpl	$0, 9016(%rbx)
	je	.LBB22_11
# BB#2:                                 # %land.lhs.true
	movl	272(%r14), %edx
	cmpl	%edx, 9900(%rbx)
	je	.LBB22_11
# BB#3:                                 # %land.lhs.true.2
	cmpl	$0, 30460(%rbx)
	jne	.LBB22_11
# BB#4:                                 # %if.then.4
	movq	(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB22_9
# BB#5:                                 # %if.end.i
	movl	$-6, %eax
	cmpl	$1, 26560(%rbx)
	jne	.LBB22_20
# BB#6:                                 # %if.end.2.i
	leaq	(%rsp), %rcx
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%rbx, %rdi
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB22_20
# BB#7:                                 # %if.end.5.i
	movq	(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB22_20
# BB#8:                                 # %if.end.5.i.if.end.8_crit_edge
	movq	(%rsp), %rax
	movl	272(%r14), %edx
.LBB22_9:                               # %if.end.8
	movq	64(%rax), %rdi
	movl	$.L.str.51, %esi
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB22_20
# BB#10:                                # %if.end.14
	movl	272(%r14), %eax
	movl	%eax, 9900(%rbx)
	movl	%eax, 9896(%rbx)
.LBB22_11:                              # %if.end.23
	movl	308(%r14), %edx
	cmpl	%edx, 6180(%rbx)
	je	.LBB22_19
# BB#12:                                # %if.then.26
	movq	(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB22_17
# BB#13:                                # %if.end.i.32
	movl	$-6, %eax
	cmpl	$1, 26560(%rbx)
	jne	.LBB22_20
# BB#14:                                # %if.end.2.i.35
	leaq	(%rsp), %rcx
	movl	$1, %esi
	xorl	%edx, %edx
	movq	$-1, %r8
	movq	%rbx, %rdi
	callq	pdf_alloc_resource
	testl	%eax, %eax
	js	.LBB22_20
# BB#15:                                # %if.end.5.i.42
	movq	(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$cos_dict_procs, %esi
	callq	cos_become
	movq	(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.56, %esi
	movl	$.L.str.21, %edx
	movl	$10, %ecx
	callq	cos_dict_put_c_key_string
	testl	%eax, %eax
	js	.LBB22_20
# BB#16:                                # %if.end.5.i.42.if.end.30_crit_edge
	movq	(%rsp), %rax
	movl	308(%r14), %edx
.LBB22_17:                              # %if.end.30
	movq	64(%rax), %rdi
	movl	$.L.str.113, %esi
	callq	cos_dict_put_c_key_bool
	testl	%eax, %eax
	js	.LBB22_20
# BB#18:                                # %if.end.36
	movl	308(%r14), %eax
	movl	%eax, 6180(%rbx)
.LBB22_19:                              # %if.end.40
	movq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pdf_end_gstate
.LBB22_20:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end22:
	.size	pdf_try_prepare_stroke, .Lfunc_end22-pdf_try_prepare_stroke
	.cfi_endproc

	.globl	pdf_prepare_image
	.align	16, 0x90
	.type	pdf_prepare_image,@function
pdf_prepare_image:                      # @pdf_prepare_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp207:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp208:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp209:
	.cfi_def_cfa_offset 32
.Ltmp210:
	.cfi_offset %rbx, -24
.Ltmp211:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$1, 26560(%rbx)
	je	.LBB23_4
# BB#1:                                 # %if.then.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_try_prepare_fill
	cmpl	$-6, %eax
	jne	.LBB23_3
# BB#2:                                 # %if.end.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_contents
	testl	%eax, %eax
	js	.LBB23_3
.LBB23_4:                               # %if.end.7.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pdf_try_prepare_fill    # TAILCALL
.LBB23_3:                               # %pdf_prepare_fill.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end23:
	.size	pdf_prepare_image, .Lfunc_end23-pdf_prepare_image
	.cfi_endproc

	.globl	pdf_prepare_imagemask
	.align	16, 0x90
	.type	pdf_prepare_imagemask,@function
pdf_prepare_imagemask:                  # @pdf_prepare_imagemask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp213:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp214:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp215:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp216:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp217:
	.cfi_def_cfa_offset 56
	subq	$632, %rsp              # imm = 0x278
.Ltmp218:
	.cfi_def_cfa_offset 688
.Ltmp219:
	.cfi_offset %rbx, -56
.Ltmp220:
	.cfi_offset %r12, -48
.Ltmp221:
	.cfi_offset %r13, -40
.Ltmp222:
	.cfi_offset %r14, -32
.Ltmp223:
	.cfi_offset %r15, -24
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cmpl	$1, 26560(%rbx)
	je	.LBB24_3
# BB#1:                                 # %if.then.i.i
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf_try_prepare_fill
	movl	%eax, %ebp
	cmpl	$-6, %ebp
	jne	.LBB24_4
# BB#2:                                 # %if.end.i.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_contents
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_9
.LBB24_3:                               # %if.end.7.i.i
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf_try_prepare_fill
	movl	%eax, %ebp
.LBB24_4:                               # %pdf_prepare_image.exit
	testl	%ebp, %ebp
	js	.LBB24_9
# BB#5:                                 # %if.end
	xorl	%ebp, %ebp
	cmpl	$0, 30460(%rbx)
	jne	.LBB24_9
# BB#6:                                 # %if.end.i
	leaq	7512(%rbx), %r12
	leaq	(%rsp), %r13
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	gx_hld_save_color
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gx_hld_saved_color_equal
	testl	%eax, %eax
	jne	.LBB24_9
# BB#7:                                 # %if.end.4.i
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB24_9
# BB#8:                                 # %if.end.7.i
	leaq	7500(%rbx), %r8
	movl	$psdf_set_fill_color_commands, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	pdf_reset_color
	movl	%eax, %ebp
.LBB24_9:                               # %cleanup
	movl	%ebp, %eax
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	pdf_prepare_imagemask, .Lfunc_end24-pdf_prepare_imagemask
	.cfi_endproc

	.align	16, 0x90
	.type	write_color_unchanged,@function
write_color_unchanged:                  # @write_color_unchanged
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp226:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp227:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp228:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp229:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp230:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp231:
	.cfi_def_cfa_offset 128
.Ltmp232:
	.cfi_offset %rbx, -56
.Ltmp233:
	.cfi_offset %r12, -48
.Ltmp234:
	.cfi_offset %r13, -40
.Ltmp235:
	.cfi_offset %r14, -32
.Ltmp236:
	.cfi_offset %r15, -24
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	136(%rsp), %r14
	movq	$0, 64(%rsp)
	movq	%r14, %rdi
	callq	gs_color_space_get_index
	movl	%eax, %ebp
	cmpl	$12, %ebp
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	64(%r14), %rdi
	callq	gsicc_get_default_type
	movl	%eax, %ebp
.LBB25_2:                               # %if.end
	cmpl	$2, %ebp
	je	.LBB25_8
# BB#3:                                 # %if.end
	cmpl	$1, %ebp
	jne	.LBB25_4
# BB#7:                                 # %sw.bb.7
	movq	8(%r13), %rbp
	jmp	.LBB25_6
.LBB25_8:                               # %sw.bb.14
	movq	16(%r13), %rbp
	jmp	.LBB25_6
.LBB25_4:                               # %if.end
	testl	%ebp, %ebp
	jne	.LBB25_9
# BB#5:                                 # %sw.bb
	movq	(%r13), %rbp
.LBB25_6:                               # %sw.epilog.86
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	pdf_write_ccolor
	movq	5848(%rbx), %rdi
	movl	$.L.str.14, %esi
	movq	%rbp, %rdx
	callq	pprints1
	movq	128(%rsp), %rbp
.LBB25_30:                              # %sw.epilog.86
	movl	$0, (%rbp)
	xorl	%eax, %eax
.LBB25_31:                              # %cleanup.87
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_9:                               # %sw.default
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_hld_saved_color_same_cspace
	testl	%eax, %eax
	je	.LBB25_10
# BB#25:                                # %if.else.61
	movq	128(%rsp), %rbp
	cmpl	$0, (%rbp)
	je	.LBB25_28
# BB#26:                                # %if.then.63
	movl	$1, (%rbp)
	cmpl	$0, 9524(%rbx)
	jne	.LBB25_12
# BB#27:                                # %if.else.73
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbp, %rcx
	jmp	.LBB25_22
.LBB25_10:                              # %if.then.22
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	40(%rsp), %rsi
	leaq	64(%rsp), %rdx
	movl	$pdf_color_space_names, %r8d
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	pdf_color_space_named
	cmpl	$-15, %eax
	jne	.LBB25_13
# BB#11:                                # %if.then.25
	movq	128(%rsp), %rcx
	movl	$1, (%rcx)
	cmpl	$0, 9524(%rbx)
	je	.LBB25_21
.LBB25_12:                              # %if.then.27
	movl	30760(%rbx), %ebp
	movl	$1, 30760(%rbx)
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	144(%rsp), %rsi
	movq	%r13, %rdx
	callq	psdf_set_color
	movl	%ebp, 30760(%rbx)
	jmp	.LBB25_31
.LBB25_28:                              # %if.else.76
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB25_29
.LBB25_13:                              # %if.end.34
	testl	%eax, %eax
	js	.LBB25_31
# BB#14:                                # %if.end.37
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	cos_value_write
	testl	%eax, %eax
	js	.LBB25_31
# BB#15:                                # %if.end.41
	movq	5848(%rbx), %rdi
	movq	24(%r13), %rdx
	movl	$.L.str.14, %esi
	callq	pprints1
	addl	$-5, %ebp
	cmpl	$3, %ebp
	movq	32(%rsp), %rdx          # 8-byte Reload
	ja	.LBB25_24
# BB#16:                                # %if.end.41
	movq	64(%rsp), %rax
	testq	%rax, %rax
	je	.LBB25_24
# BB#17:                                # %if.then.48
	cmpl	$3, %ebp
	ja	.LBB25_24
# BB#18:                                # %if.then.48
	jmpq	*.LJTI25_0(,%rbp,8)
.LBB25_19:                              # %for.body.i.109.preheader
	movss	8(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 8(%rdx)
	movss	12(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	8(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	12(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 12(%rdx)
	movss	16(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	16(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	20(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 16(%rdx)
	jmp	.LBB25_24
.LBB25_21:                              # %if.else
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
.LBB25_22:                              # %cleanup.87
	movq	%r13, %r8
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	write_color_as_process
	jmp	.LBB25_31
.LBB25_20:                              # %for.body.i.preheader
	movss	8(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 8(%rdx)
	movss	12(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	8(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	12(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 12(%rdx)
	movss	16(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	16(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	20(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 16(%rdx)
	movss	20(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	24(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	28(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 20(%rdx)
	jmp	.LBB25_24
.LBB25_23:                              # %for.body.i.135.preheader
	movss	8(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	subss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	%xmm0, 8(%rdx)
.LBB25_24:                              # %cleanup
	movq	128(%rsp), %rbp
	movl	$0, (%rbp)
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB25_29:                              # %sw.epilog.86
	callq	pdf_write_ccolor
	movq	5848(%rbx), %rdi
	movq	40(%r13), %rdx
	movl	$.L.str.14, %esi
	callq	pprints1
	jmp	.LBB25_30
.Lfunc_end25:
	.size	write_color_unchanged, .Lfunc_end25-write_color_unchanged
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_20
	.quad	.LBB25_19
	.quad	.LBB25_19
	.quad	.LBB25_23

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI26_0:
	.long	1191178240              # float 32760
.LCPI26_1:
	.long	1132396544              # float 255
.LCPI26_2:
	.long	1120403456              # float 100
.LCPI26_3:
	.long	1124073472              # float 128
	.text
	.align	16, 0x90
	.type	write_color_as_process,@function
write_color_as_process:                 # @write_color_as_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp239:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp240:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp241:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp242:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp243:
	.cfi_def_cfa_offset 56
	subq	$1080, %rsp             # imm = 0x438
.Ltmp244:
	.cfi_def_cfa_offset 1136
.Ltmp245:
	.cfi_offset %rbx, -56
.Ltmp246:
	.cfi_offset %r12, -48
.Ltmp247:
	.cfi_offset %r13, -40
.Ltmp248:
	.cfi_offset %r14, -32
.Ltmp249:
	.cfi_offset %r15, -24
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	$gx_dc_type_data_pure, 288(%rsp)
	movq	$0, 296(%rsp)
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	movl	%eax, %r12d
	cmpl	$10, %r12d
	ja	.LBB26_24
# BB#1:                                 # %entry
	movl	$1552, %eax             # imm = 0x610
	btl	%r12d, %eax
	jae	.LBB26_24
# BB#2:                                 # %if.then
	movl	$1, (%rbx)
	leaq	944(%rsp), %rbx
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	(%rbp), %rax
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	*56(%rax)
	movq	40(%rbp), %rax
	.align	16, 0x90
.LBB26_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	cmpl	$12, %eax
	je	.LBB26_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB26_3 Depth=1
	movq	40(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB26_3
.LBB26_5:                               # %do.end
	movq	%rbp, %rdi
	callq	gs_color_space_get_index
	movl	%eax, %ecx
	movl	$-1, %eax
	cmpl	$12, %ecx
	ja	.LBB26_47
# BB#6:                                 # %do.end
	movl	$4576, %edx             # imm = 0x11E0
	btl	%ecx, %edx
	jae	.LBB26_7
# BB#17:                                # %sw.bb.32
	leaq	280(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	testl	%eax, %eax
	js	.LBB26_47
# BB#18:                                # %if.end
	movq	280(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	testl	%eax, %eax
	jle	.LBB26_46
# BB#19:                                # %for.body.41.lr.ph
	movq	296(%rsp), %rdx
	xorl	%esi, %esi
	testb	$1, %al
	je	.LBB26_21
# BB#20:                                # %for.body.41.prol
	shlq	$8, %rdx
	movswl	944(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm0
	divss	.LCPI26_0(%rip), %xmm0
	mulss	.LCPI26_1(%rip), %xmm0
	cvttss2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movl	$1, %esi
	movq	%rcx, %rdx
.LBB26_21:                              # %for.body.41.lr.ph.split
	cmpl	$1, %eax
	je	.LBB26_45
# BB#22:                                # %for.body.41.lr.ph.split.split
	subl	%esi, %eax
	leaq	2(%rsi,%rsi), %rcx
	orq	%rcx, %rbx
	movss	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI26_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB26_23:                              # %for.body.41
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rcx
	movswl	-2(%rbx), %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	shlq	$8, %rdx
	movswl	(%rbx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %ecx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	addq	$4, %rbx
	addl	$-2, %eax
	jne	.LBB26_23
	jmp	.LBB26_45
.LBB26_24:                              # %if.else
	movq	%rbx, (%rsp)            # 8-byte Spill
	addl	$-5, %r12d
	leaq	944(%rsp), %rbx
	xorl	%esi, %esi
	movl	$128, %edx
	movq	%rbx, %rdi
	callq	memset
	cmpl	$3, %r12d
	ja	.LBB26_34
# BB#25:                                # %if.then.62
	movq	(%rbp), %rax
	leaq	944(%rsp), %rbx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	*56(%rax)
	leaq	280(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	testl	%eax, %eax
	js	.LBB26_47
# BB#26:                                # %if.end.74
	movq	280(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	testl	%eax, %eax
	jle	.LBB26_33
# BB#27:                                # %for.body.79.lr.ph
	movq	296(%rsp), %rdx
	xorl	%esi, %esi
	testb	$1, %al
	je	.LBB26_29
# BB#28:                                # %for.body.79.prol
	shlq	$8, %rdx
	movswl	944(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm0
	divss	.LCPI26_0(%rip), %xmm0
	mulss	.LCPI26_1(%rip), %xmm0
	cvttss2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movl	$1, %esi
	movq	%rcx, %rdx
.LBB26_29:                              # %for.body.79.lr.ph.split
	cmpl	$1, %eax
	je	.LBB26_32
# BB#30:                                # %for.body.79.lr.ph.split.split
	subl	%esi, %eax
	leaq	2(%rsi,%rsi), %rcx
	orq	%rcx, %rbx
	movss	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI26_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB26_31:                              # %for.body.79
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rcx
	movswl	-2(%rbx), %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	shlq	$8, %rdx
	movswl	(%rbx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %ecx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	addq	$4, %rbx
	addl	$-2, %eax
	jne	.LBB26_31
.LBB26_32:                              # %for.cond.76.for.end.96_crit_edge
	movq	%rcx, 296(%rsp)
.LBB26_33:                              # %for.end.96
	movl	30760(%r15), %ecx
	leaq	288(%rsp), %rsi
	movq	%r15, %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	psdf_set_color
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	$1, (%rcx)
	jmp	.LBB26_47
.LBB26_34:                              # %if.else.99
	movq	64(%rbp), %rax
	cmpl	$6, 16(%rax)
	je	.LBB26_36
# BB#35:                                # %lor.lhs.false.103
	cmpl	$0, 4(%rax)
	je	.LBB26_37
.LBB26_36:                              # %if.then.106
	movss	8(%r14), %xmm0          # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI26_2(%rip), %xmm0
	movss	%xmm0, 24(%rsp)
	movss	.LCPI26_3(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	12(%r14), %xmm1         # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	.LCPI26_1(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	movss	%xmm1, 28(%rsp)
	addss	16(%r14), %xmm0
	divss	%xmm2, %xmm0
	movss	%xmm0, 32(%rsp)
	movq	(%rbp), %rax
	leaq	16(%rsp), %rdi
	leaq	944(%rsp), %rdx
	jmp	.LBB26_38
.LBB26_7:                               # %do.end
	movl	$7, %edx
	btl	%ecx, %edx
	jae	.LBB26_47
# BB#8:                                 # %sw.bb
	movl	100(%r15), %eax
	xorl	%r14d, %r14d
	cmpl	$4, %eax
	je	.LBB26_13
# BB#9:                                 # %sw.bb
	cmpl	$3, %eax
	jne	.LBB26_10
# BB#12:                                # %sw.bb.12
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	8(%rax), %r14
	jmp	.LBB26_14
.LBB26_37:                              # %if.else.138
	movq	(%rbp), %rax
	leaq	944(%rsp), %rdx
	movq	%r14, %rdi
.LBB26_38:                              # %if.end.143
	movq	%rbp, %rsi
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	*56(%rax)
	leaq	280(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	testl	%eax, %eax
	js	.LBB26_47
# BB#39:                                # %if.end.150
	movq	280(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	testl	%eax, %eax
	jle	.LBB26_46
# BB#40:                                # %for.body.155.lr.ph
	movq	296(%rsp), %rdx
	xorl	%esi, %esi
	testb	$1, %al
	je	.LBB26_42
# BB#41:                                # %for.body.155.prol
	shlq	$8, %rdx
	movswl	944(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm0
	divss	.LCPI26_0(%rip), %xmm0
	mulss	.LCPI26_1(%rip), %xmm0
	cvttss2si	%xmm0, %ecx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movl	$1, %esi
	movq	%rcx, %rdx
.LBB26_42:                              # %for.body.155.lr.ph.split
	cmpl	$1, %eax
	je	.LBB26_45
# BB#43:                                # %for.body.155.lr.ph.split.split
	subl	%esi, %eax
	leaq	2(%rsi,%rsi), %rcx
	orq	%rcx, %rbx
	movss	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI26_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB26_44:                              # %for.body.155
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rcx
	movswl	-2(%rbx), %edx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	shlq	$8, %rdx
	movswl	(%rbx), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %ecx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	addq	$4, %rbx
	addl	$-2, %eax
	jne	.LBB26_44
.LBB26_45:                              # %for.cond.152.for.end.172_crit_edge
	movq	%rcx, 296(%rsp)
.LBB26_46:                              # %for.end.172
	movl	30760(%r15), %ecx
	leaq	288(%rsp), %rsi
	movq	%r15, %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	psdf_set_color
	jmp	.LBB26_47
.LBB26_13:                              # %sw.bb.13
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	16(%rax), %r14
	jmp	.LBB26_14
.LBB26_10:                              # %sw.bb
	cmpl	$1, %eax
	jne	.LBB26_14
# BB#11:                                # %sw.bb.11
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %r14
.LBB26_14:                              # %sw.epilog
	movq	5848(%r15), %rbp
	movswl	944(%rsp), %eax
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI26_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.18, %esi
	movq	%rbp, %rdi
	callq	pprintg1
	movq	5848(%r15), %rbp
	movl	$1, %ebx
	cmpl	$2, 100(%r15)
	jl	.LBB26_16
	.align	16, 0x90
.LBB26_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	944(%rsp,%rbx,2), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI26_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$255, %edi
	movl	$8, %esi
	callq	psdf_round
	movl	$.L.str.55, %esi
	movq	%rbp, %rdi
	callq	pprintg1
	incq	%rbx
	movslq	100(%r15), %rax
	movq	5848(%r15), %rbp
	cmpq	%rax, %rbx
	jl	.LBB26_15
.LBB26_16:                              # %for.end
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	pprints1
	xorl	%eax, %eax
.LBB26_47:                              # %cleanup.176
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	write_color_as_process, .Lfunc_end26-write_color_as_process
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_write_spot_halftone,@function
pdf_write_spot_halftone:                # @pdf_write_spot_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp252:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp253:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp254:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp255:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp256:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp257:
	.cfi_def_cfa_offset 704
.Ltmp258:
	.cfi_offset %rbx, -56
.Ltmp259:
	.cfi_offset %r12, -48
.Ltmp260:
	.cfi_offset %r13, -40
.Ltmp261:
	.cfi_offset %r14, -32
.Ltmp262:
	.cfi_offset %r15, -24
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	104(%rbp), %rsi
	leaq	592(%rsp), %r9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$.L.str.69, %r8d
	callq	pdf_write_transfer_map
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB27_31
# BB#1:                                 # %if.end
	movq	1728(%r13), %r15
	leaq	64(%rsp), %rbx
	movl	$160, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gs_screen_order_alloc
	testl	%eax, %eax
	movq	%rbp, %r12
	js	.LBB27_32
# BB#2:                                 # %for.cond.preheader
	movq	%r13, 16(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	leaq	224(%rsp), %rbp
	leaq	48(%rsp), %r14
	.align	16, 0x90
.LBB27_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_4 Depth 2
                                        #     Child Loop BB27_10 Depth 2
	movq	%rbx, %rax
	shlq	$4, %rax
	movq	ht_functions+8(%rax), %r13
	xorl	%edx, %edx
	movq	%rbp, %rdi
	leaq	64(%rsp), %rsi
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%r15, %r8
	callq	gs_screen_enum_init_memory
	.align	16, 0x90
.LBB27_4:                               # %while.cond
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_screen_currentpoint
	testl	%eax, %eax
	jne	.LBB27_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB27_4 Depth=2
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	callq	*%r13
	movq	%rbp, %rdi
	callq	gs_screen_next
	testl	%eax, %eax
	jns	.LBB27_4
	jmp	.LBB27_7
	.align	16, 0x90
.LBB27_6:                               # %while.end
                                        #   in Loop: Header=BB27_3 Depth=1
	js	.LBB27_12
.LBB27_7:                               # %if.end.19
                                        #   in Loop: Header=BB27_3 Depth=1
	movq	120(%rsp), %rdx
	testl	%edx, %edx
	je	.LBB27_11
# BB#8:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB27_3 Depth=1
	movq	144(%rsp), %rax
	movq	80(%r12), %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB27_10:                              # %for.body.i
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rsi,4), %edi
	cmpl	(%rcx,%rsi,4), %edi
	jne	.LBB27_12
# BB#9:                                 # %for.cond.i
                                        #   in Loop: Header=BB27_10 Depth=2
	incq	%rsi
	cmpl	%edx, %esi
	jb	.LBB27_10
.LBB27_11:                              # %if.end.22
                                        #   in Loop: Header=BB27_3 Depth=1
	shrq	$32, %rdx
	movq	152(%rsp), %rdi
	movq	64(%r12), %rax
	movq	88(%r12), %rsi
	imull	(%rax), %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB27_13
.LBB27_12:                              # %for.inc
                                        #   in Loop: Header=BB27_3 Depth=1
	incq	%rbx
	cmpl	$21, %ebx
	jb	.LBB27_3
.LBB27_13:                              # %notrec
	leaq	64(%rsp), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	gx_ht_order_release
	movslq	%ebx, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cmpl	$21, %eax
	movq	16(%rsp), %r13          # 8-byte Reload
	jne	.LBB27_25
	jmp	.LBB27_14
.LBB27_32:                              # %notrec.thread
	movl	$21, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB27_14:                              # %if.then.37
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movzwl	40(%r12), %r14d
	movzwl	42(%r12), %eax
	movl	60(%r12), %ebp
	cmpq	$65536, %rbp            # imm = 0x10000
	movq	1728(%r13), %rbx
	movl	$0, 352(%rsp)
	movl	$2, 224(%rsp)
	movq	$pdf_write_spot_function.domain_spot, 232(%rsp)
	movl	$1, 240(%rsp)
	movq	$pdf_write_spot_function.range_spot, 248(%rsp)
	movl	$0, 256(%rsp)
	movl	$-13, %r12d
	ja	.LBB27_24
# BB#15:                                # %if.end.i
	movl	$16, 296(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 304(%rsp)
	movl	%r14d, 64(%rsp)
	movl	%eax, 68(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 320(%rsp)
	movl	$2, %edx
	movl	$.L.str.95, %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*88(%rbx)
	movq	%rax, %r15
	movl	$-25, %r12d
	testq	%r15, %r15
	je	.LBB27_24
# BB#16:                                # %for.cond.preheader.i
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	je	.LBB27_20
# BB#17:                                # %for.body.lr.ph.i.40
	movl	$1, %r13d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB27_18:                              # %for.body.i.42
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	64(%rdi), %rax
	movl	%ebx, %esi
	leaq	640(%rsp), %rdx
	callq	*16(%rax)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB27_20
# BB#19:                                # %if.end.16.i
                                        #   in Loop: Header=BB27_18 Depth=1
	movl	644(%rsp), %eax
	imull	%r14d, %eax
	addl	640(%rsp), %eax
	leal	-1(%r13), %ecx
	movq	%r15, %rdx
	movb	%ah, (%rdx,%rcx)  # NOREX
	movl	%r13d, %ecx
	movb	%al, (%rdx,%rcx)
	incq	%rbx
	addl	$2, %r13d
	cmpq	%rbp, %rbx
	jb	.LBB27_18
.LBB27_20:                              # %for.end.i
	movl	$1, 272(%rsp)
	movq	%r15, 280(%rsp)
	movl	%ebp, 288(%rsp)
	movq	$data_source_access_bytes, 264(%rsp)
	testl	%r12d, %r12d
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	(%rsp), %rbx            # 8-byte Reload
	js	.LBB27_23
# BB#21:                                # %land.lhs.true.i
	leaq	48(%rsp), %rdi
	leaq	224(%rsp), %rsi
	movq	%rbx, %rdx
	callq	gs_function_Sd_init
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB27_23
# BB#22:                                # %if.then.41.i
	movq	48(%rsp), %rsi
	leaq	584(%rsp), %rdx
	movq	%r13, %rdi
	callq	pdf_write_function
	movl	%eax, %r12d
	movq	48(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	*56(%rdi)
.LBB27_23:                              # %if.end.44.i
	movl	$.L.str.95, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
.LBB27_24:                              # %pdf_write_spot_function.exit
	movl	$21, %ebx
	testl	%r12d, %r12d
	js	.LBB27_31
.LBB27_25:                              # %if.end.43
	movl	$18, %esi
	movq	%r13, %rdi
	callq	pdf_begin_separate
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movq	5848(%r13), %rbp
	movq	40(%rsp), %rax          # 8-byte Reload
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %r14
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.70, %esi
	movq	%rbp, %rdi
	callq	pprintg2
	cmpl	$20, %ebx
	ja	.LBB27_27
# BB#26:                                # %if.then.53
	movq	8(%rsp), %rax           # 8-byte Reload
	shlq	$4, %rax
	movq	ht_functions(%rax), %rdx
	movl	$.L.str.71, %esi
	movq	%rbp, %rdi
	callq	pprints1
	jmp	.LBB27_28
.LBB27_27:                              # %if.else
	movq	584(%rsp), %rdx
	movl	$.L.str.72, %esi
	movq	%rbp, %rdi
	callq	pprintld1
.LBB27_28:                              # %if.end.58
	leaq	592(%rsp), %rsi
	movq	%rbp, %rdi
	callq	stream_puts
	cmpl	$0, 24(%r14)
	je	.LBB27_30
# BB#29:                                # %if.then.62
	movl	$.L.str.73, %esi
	movq	%rbp, %rdi
	callq	stream_puts
.LBB27_30:                              # %if.end.64
	movl	$.L.str.68, %esi
	movq	%rbp, %rdi
	callq	stream_puts
	movl	$18, %esi
	movq	%r13, %rdi
	callq	pdf_end_separate
	movl	%eax, %r12d
.LBB27_31:                              # %cleanup.67
	movl	%r12d, %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	pdf_write_spot_halftone, .Lfunc_end27-pdf_write_spot_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_write_threshold_halftone,@function
pdf_write_threshold_halftone:           # @pdf_write_threshold_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp264:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp265:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp266:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp267:
	.cfi_def_cfa_offset 160
.Ltmp268:
	.cfi_offset %rbx, -32
.Ltmp269:
	.cfi_offset %r14, -24
.Ltmp270:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	104(%rdx), %rsi
	leaq	80(%rsp), %r9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$.L.str.41, %r8d
	callq	pdf_write_transfer_map
	testl	%eax, %eax
	js	.LBB28_9
# BB#1:                                 # %do.body
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pdf_begin_data
	testl	%eax, %eax
	js	.LBB28_9
# BB#2:                                 # %do.end
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movq	8(%rdi), %rax
	movq	%rax, (%r15)
	movl	$.L.str.56, %esi
	movl	$.L.str.96, %edx
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB28_9
# BB#3:                                 # %do.body.14
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.97, %esi
	movl	$.L.str.98, %edx
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB28_9
# BB#4:                                 # %do.body.23
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movl	(%r14), %edx
	movl	$.L.str.99, %esi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB28_9
# BB#5:                                 # %do.body.32
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movl	4(%r14), %edx
	movl	$.L.str.100, %esi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB28_9
# BB#6:                                 # %do.end.40
	cmpb	$0, 80(%rsp)
	je	.LBB28_8
# BB#7:                                 # %do.body.45
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	leaq	80(%rsp), %rdx
	movl	$.L.str.69, %esi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB28_9
.LBB28_8:                               # %if.end.56
	movq	16(%rsp), %rdi
	movq	24(%r14), %rsi
	movl	32(%r14), %edx
	callq	stream_write
	leaq	(%rsp), %rdi
	callq	pdf_end_data
.LBB28_9:                               # %cleanup
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end28:
	.size	pdf_write_threshold_halftone, .Lfunc_end28-pdf_write_threshold_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_write_threshold2_halftone,@function
pdf_write_threshold2_halftone:          # @pdf_write_threshold2_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp271:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp272:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp273:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp274:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp275:
	.cfi_def_cfa_offset 176
.Ltmp276:
	.cfi_offset %rbx, -40
.Ltmp277:
	.cfi_offset %r14, -32
.Ltmp278:
	.cfi_offset %r15, -24
.Ltmp279:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	104(%rdx), %rsi
	leaq	80(%rsp), %r9
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$.L.str.69, %r8d
	callq	pdf_write_transfer_map
	testl	%eax, %eax
	js	.LBB29_17
# BB#1:                                 # %do.body
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pdf_begin_data
	testl	%eax, %eax
	js	.LBB29_17
# BB#2:                                 # %do.end
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movq	8(%rdi), %rax
	movq	%rax, (%r15)
	movl	$.L.str.56, %esi
	movl	$.L.str.96, %edx
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB29_17
# BB#3:                                 # %do.body.14
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.97, %esi
	movl	$.L.str.101, %edx
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB29_17
# BB#4:                                 # %do.body.23
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movl	(%r14), %edx
	movl	$.L.str.99, %esi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB29_17
# BB#5:                                 # %do.body.32
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movl	4(%r14), %edx
	movl	$.L.str.100, %esi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB29_17
# BB#6:                                 # %do.end.40
	movl	24(%r14), %edx
	testl	%edx, %edx
	je	.LBB29_10
# BB#7:                                 # %land.lhs.true
	cmpl	$0, 28(%r14)
	je	.LBB29_10
# BB#8:                                 # %do.body.43
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movl	$.L.str.102, %esi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB29_17
# BB#9:                                 # %do.body.53
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	movl	28(%r14), %edx
	movl	$.L.str.103, %esi
	callq	cos_dict_put_c_key_int
	testl	%eax, %eax
	js	.LBB29_17
.LBB29_10:                              # %if.end.63
	cmpb	$0, 80(%rsp)
	je	.LBB29_12
# BB#11:                                # %do.body.68
	movq	48(%rsp), %rax
	movq	64(%rax), %rdi
	leaq	80(%rsp), %rdx
	movl	$.L.str.69, %esi
	callq	cos_dict_put_c_strings
	testl	%eax, %eax
	js	.LBB29_17
.LBB29_12:                              # %if.end.79
	movq	16(%rsp), %r15
	cmpl	$2, 32(%r14)
	jne	.LBB29_13
# BB#18:                                # %if.then.82
	movq	40(%r14), %rsi
	movl	48(%r14), %edx
	movq	%r15, %rdi
	callq	stream_write
	jmp	.LBB29_16
.LBB29_13:                              # %for.cond.preheader
	cmpl	$0, 48(%r14)
	je	.LBB29_16
# BB#14:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB29_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%r14), %rax
	movzbl	(%rax,%rbx), %ebp
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	spputc
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	spputc
	incq	%rbx
	cmpl	48(%r14), %ebx
	jb	.LBB29_15
.LBB29_16:                              # %if.end.93
	leaq	(%rsp), %rdi
	callq	pdf_end_data
.LBB29_17:                              # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	pdf_write_threshold2_halftone, .Lfunc_end29-pdf_write_threshold2_halftone
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI30_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI30_1:
	.long	1065353216              # float 1
.LCPI30_2:
	.long	3212836864              # float -1
	.text
	.align	16, 0x90
	.type	ht_Round,@function
ht_Round:                               # @ht_Round
	.cfi_startproc
# BB#0:                                 # %entry
	unpcklpd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	cvtpd2ps	%xmm0, %xmm2
	movaps	.LCPI30_0(%rip), %xmm0  # xmm0 = [2147483647,2147483647,2147483647,2147483647]
	andps	%xmm2, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	movaps	%xmm0, %xmm4
	addss	%xmm1, %xmm4
	movss	.LCPI30_1(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	jae	.LBB30_1
# BB#2:                                 # %if.end
	movss	.LCPI30_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movaps	%xmm1, %xmm3
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	retq
.LBB30_1:                               # %if.then
	movaps	%xmm2, %xmm0
	mulss	%xmm0, %xmm0
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	mulss	%xmm2, %xmm2
	addss	%xmm0, %xmm2
	subss	%xmm2, %xmm3
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	retq
.Lfunc_end30:
	.size	ht_Round, .Lfunc_end30-ht_Round
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI31_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI31_1:
	.long	1061158912              # float 0.75
.LCPI31_2:
	.long	1065353216              # float 1
.LCPI31_3:
	.long	1067282596              # float 1.23000002
.LCPI31_4:
	.long	1062836634              # float 0.850000023
.LCPI31_5:
	.long	3212836864              # float -1
	.text
	.align	16, 0x90
	.type	ht_Diamond,@function
ht_Diamond:                             # @ht_Diamond
	.cfi_startproc
# BB#0:                                 # %entry
	unpcklpd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	cvtpd2ps	%xmm0, %xmm2
	movaps	.LCPI31_0(%rip), %xmm1  # xmm1 = [2147483647,2147483647,2147483647,2147483647]
	andps	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	movaps	%xmm1, %xmm3
	addss	%xmm0, %xmm3
	movss	.LCPI31_1(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm4
	jae	.LBB31_1
# BB#2:                                 # %if.end
	movss	.LCPI31_3(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm2
	jae	.LBB31_3
# BB#4:                                 # %if.end.40
	movss	.LCPI31_5(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm1
	addss	%xmm2, %xmm0
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.LBB31_1:                               # %if.then
	movaps	%xmm2, %xmm0
	mulss	%xmm0, %xmm0
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	mulss	%xmm2, %xmm2
	addss	%xmm0, %xmm2
	movss	.LCPI31_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.LBB31_3:                               # %if.then.28
	mulss	.LCPI31_4(%rip), %xmm1
	addss	%xmm0, %xmm1
	movss	.LCPI31_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end31:
	.size	ht_Diamond, .Lfunc_end31-ht_Diamond
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI32_0:
	.long	1077936128              # float 3
.LCPI32_1:
	.long	1082130432              # float 4
.LCPI32_2:
	.long	3225419776              # float -3
.LCPI32_3:
	.long	1065353216              # float 1
.LCPI32_4:
	.long	1056964608              # float 0.5
.LCPI32_5:
	.long	1061158912              # float 0.75
.LCPI32_6:
	.long	1048576000              # float 0.25
.LCPI32_7:
	.long	3212836864              # float -1
.LCPI32_8:
	.long	3196059648              # float -0.25
	.text
	.align	16, 0x90
	.type	ht_Ellipse,@function
ht_Ellipse:                             # @ht_Ellipse
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp280:
	.cfi_def_cfa_offset 32
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 20(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movss	20(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movss	16(%rsp), %xmm3         # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	cvtsd2ss	%xmm0, %xmm0
	movss	.LCPI32_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm2
	movss	.LCPI32_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	addss	.LCPI32_2(%rip), %xmm1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.LBB32_2
# BB#1:                                 # %if.then
	divss	.LCPI32_5(%rip), %xmm0
	movss	12(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	mulss	.LCPI32_8(%rip), %xmm0
	addss	.LCPI32_3(%rip), %xmm0
	jmp	.LBB32_5
.LBB32_2:                               # %if.end
	ucomiss	.LCPI32_3(%rip), %xmm1
	jbe	.LBB32_4
# BB#3:                                 # %if.then.33
	movss	.LCPI32_3(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	subss	%xmm3, %xmm2
	subss	%xmm0, %xmm1
	divss	.LCPI32_5(%rip), %xmm1
	mulss	%xmm2, %xmm2
	mulss	%xmm1, %xmm1
	addss	%xmm2, %xmm1
	mulss	.LCPI32_6(%rip), %xmm1
	addss	.LCPI32_7(%rip), %xmm1
	movaps	%xmm1, %xmm0
	jmp	.LBB32_5
.LBB32_4:                               # %if.end.55
	movss	.LCPI32_4(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
.LBB32_5:                               # %cleanup
	cvtss2sd	%xmm0, %xmm0
	addq	$24, %rsp
	retq
.Lfunc_end32:
	.size	ht_Ellipse, .Lfunc_end32-ht_Ellipse
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI33_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	ht_EllipseA,@function
ht_EllipseA:                            # @ht_EllipseA
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI33_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	.LCPI33_1(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end33:
	.size	ht_EllipseA, .Lfunc_end33-ht_EllipseA
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI34_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	ht_InvertedEllipseA,@function
ht_InvertedEllipseA:                    # @ht_InvertedEllipseA
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI34_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	addsd	.LCPI34_1(%rip), %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end34:
	.size	ht_InvertedEllipseA, .Lfunc_end34-ht_InvertedEllipseA
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4603804719079489536     # double 0.625
.LCPI35_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	ht_EllipseB,@function
ht_EllipseB:                            # @ht_EllipseB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp281:
	.cfi_def_cfa_offset 16
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm2
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI35_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB35_2
# BB#1:                                 # %call.sqrt
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB35_2:                               # %entry.split
	movsd	.LCPI35_1(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end35:
	.size	ht_EllipseB, .Lfunc_end35-ht_EllipseB
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI36_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	ht_EllipseC,@function
ht_EllipseC:                            # @ht_EllipseC
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI36_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	mulss	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movsd	.LCPI36_1(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end36:
	.size	ht_EllipseC, .Lfunc_end36-ht_EllipseC
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI37_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	ht_InvertedEllipseC,@function
ht_InvertedEllipseC:                    # @ht_InvertedEllipseC
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI37_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	mulss	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addsd	.LCPI37_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end37:
	.size	ht_InvertedEllipseC, .Lfunc_end37-ht_InvertedEllipseC
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI38_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	ht_Line,@function
ht_Line:                                # @ht_Line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp282:
	.cfi_def_cfa_offset 16
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	subss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	cvtsd2ss	%xmm0, %xmm0
	xorps	.LCPI38_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end38:
	.size	ht_Line, .Lfunc_end38-ht_Line
	.cfi_endproc

	.align	16, 0x90
	.type	ht_LineX,@function
ht_LineX:                               # @ht_LineX
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	subss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	retq
.Lfunc_end39:
	.size	ht_LineX, .Lfunc_end39-ht_LineX
	.cfi_endproc

	.align	16, 0x90
	.type	ht_LineY,@function
ht_LineY:                               # @ht_LineY
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	subss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end40:
	.size	ht_LineY, .Lfunc_end40-ht_LineY
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI41_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
.LCPI41_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	ht_Square,@function
ht_Square:                              # @ht_Square
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp283:
	.cfi_def_cfa_offset 16
	unpcklpd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	cvtpd2ps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm1
	andpd	.LCPI41_0(%rip), %xmm1
	movapd	%xmm1, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	ucomisd	%xmm2, %xmm1
	ja	.LBB41_2
# BB#1:                                 # %entry
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
.LBB41_2:                               # %entry
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	cvtsd2ss	%xmm0, %xmm0
	xorps	.LCPI41_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end41:
	.size	ht_Square, .Lfunc_end41-ht_Square
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI42_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
.LCPI42_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	ht_Cross,@function
ht_Cross:                               # @ht_Cross
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp284:
	.cfi_def_cfa_offset 16
	unpcklpd	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	cvtpd2ps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm1
	andpd	.LCPI42_0(%rip), %xmm1
	movapd	%xmm1, %xmm2
	shufpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	ucomisd	%xmm1, %xmm2
	ja	.LBB42_2
# BB#1:                                 # %entry
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
.LBB42_2:                               # %entry
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	cvtsd2ss	%xmm0, %xmm0
	xorps	.LCPI42_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end42:
	.size	ht_Cross, .Lfunc_end42-ht_Cross
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI43_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI43_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	ht_Rhomboid,@function
ht_Rhomboid:                            # @ht_Rhomboid
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp285:
	.cfi_def_cfa_offset 32
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 20(%rsp)         # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	mulsd	.LCPI43_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movss	20(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	addsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	mulsd	.LCPI43_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addq	$24, %rsp
	retq
.Lfunc_end43:
	.size	ht_Rhomboid, .Lfunc_end43-ht_Rhomboid
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI44_0:
	.long	1135869952              # float 360
.LCPI44_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	ht_DoubleDot,@function
ht_DoubleDot:                           # @ht_DoubleDot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp286:
	.cfi_def_cfa_offset 16
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rsp)          # 4-byte Spill
	mulss	.LCPI44_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsp)           # 4-byte Spill
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI44_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	addss	(%rsp), %xmm0           # 4-byte Folded Reload
	mulss	.LCPI44_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end44:
	.size	ht_DoubleDot, .Lfunc_end44-ht_DoubleDot
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI45_0:
	.long	1135869952              # float 360
.LCPI45_1:
	.long	3204448256              # float -0.5
	.text
	.align	16, 0x90
	.type	ht_InvertedDoubleDot,@function
ht_InvertedDoubleDot:                   # @ht_InvertedDoubleDot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp287:
	.cfi_def_cfa_offset 16
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rsp)          # 4-byte Spill
	mulss	.LCPI45_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsp)           # 4-byte Spill
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI45_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	addss	(%rsp), %xmm0           # 4-byte Folded Reload
	mulss	.LCPI45_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end45:
	.size	ht_InvertedDoubleDot, .Lfunc_end45-ht_InvertedDoubleDot
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI46_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	ht_SimpleDot,@function
ht_SimpleDot:                           # @ht_SimpleDot
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	movss	.LCPI46_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end46:
	.size	ht_SimpleDot, .Lfunc_end46-ht_SimpleDot
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI47_0:
	.long	3212836864              # float -1
	.text
	.align	16, 0x90
	.type	ht_InvertedSimpleDot,@function
ht_InvertedSimpleDot:                   # @ht_InvertedSimpleDot
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	mulss	%xmm1, %xmm1
	addss	%xmm0, %xmm1
	addss	.LCPI47_0(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	retq
.Lfunc_end47:
	.size	ht_InvertedSimpleDot, .Lfunc_end47-ht_InvertedSimpleDot
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI48_0:
	.long	1127481344              # float 180
.LCPI48_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	ht_CosineDot,@function
ht_CosineDot:                           # @ht_CosineDot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp288:
	.cfi_def_cfa_offset 16
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rsp)          # 4-byte Spill
	mulss	.LCPI48_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_cos_degrees
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsp)           # 4-byte Spill
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI48_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_cos_degrees
	cvtsd2ss	%xmm0, %xmm0
	addss	(%rsp), %xmm0           # 4-byte Folded Reload
	mulss	.LCPI48_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end48:
	.size	ht_CosineDot, .Lfunc_end48-ht_CosineDot
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI49_0:
	.long	1127481344              # float 180
.LCPI49_1:
	.long	1135869952              # float 360
.LCPI49_2:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	ht_Double,@function
ht_Double:                              # @ht_Double
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp289:
	.cfi_def_cfa_offset 16
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rsp)           # 4-byte Spill
	mulss	.LCPI49_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movss	(%rsp), %xmm0           # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI49_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	addss	4(%rsp), %xmm0          # 4-byte Folded Reload
	mulss	.LCPI49_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end49:
	.size	ht_Double, .Lfunc_end49-ht_Double
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI50_0:
	.long	1127481344              # float 180
.LCPI50_1:
	.long	1135869952              # float 360
.LCPI50_2:
	.long	3204448256              # float -0.5
	.text
	.align	16, 0x90
	.type	ht_InvertedDouble,@function
ht_InvertedDouble:                      # @ht_InvertedDouble
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp290:
	.cfi_def_cfa_offset 16
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rsp)           # 4-byte Spill
	mulss	.LCPI50_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movss	(%rsp), %xmm0           # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI50_1(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gs_sin_degrees
	cvtsd2ss	%xmm0, %xmm0
	addss	4(%rsp), %xmm0          # 4-byte Folded Reload
	mulss	.LCPI50_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	popq	%rax
	retq
.Lfunc_end50:
	.size	ht_InvertedDouble, .Lfunc_end50-ht_InvertedDouble
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI51_0:
	.long	1191178240              # float 32760
.LCPI51_1:
	.long	1065353216              # float 1
.LCPI51_2:
	.long	1123942400              # float 127
	.text
	.align	16, 0x90
	.type	transfer_map_access_signed,@function
transfer_map_access_signed:             # @transfer_map_access_signed
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	movq	%rcx, (%r8)
	testl	%edx, %edx
	je	.LBB51_6
# BB#1:                                 # %for.body.preheader
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	testb	$1, %dl
	je	.LBB51_3
# BB#2:                                 # %for.body.prol
	movq	%rsi, %rdi
	andq	%r9, %rdi
	movswl	56(%rax,%rdi,2), %edi
	cvtsi2ssl	%edi, %xmm0
	divss	.LCPI51_0(%rip), %xmm0
	addss	.LCPI51_1(%rip), %xmm0
	mulss	.LCPI51_2(%rip), %xmm0
	cvttss2si	%xmm0, %edi
	movb	%dil, (%rcx)
	movl	$1, %r8d
.LBB51_3:                               # %for.body.preheader.split
	cmpl	$1, %edx
	je	.LBB51_6
# BB#4:                                 # %for.body.preheader.split.split
	subl	%r8d, %edx
	leaq	1(%r8,%rcx), %rcx
	leaq	(%rsi,%r8), %rsi
	movss	.LCPI51_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI51_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI51_2(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB51_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdi
	andq	%r9, %rdi
	movswl	56(%rax,%rdi,2), %edi
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edi, %xmm3
	divss	%xmm0, %xmm3
	addss	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %edi
	movb	%dil, -1(%rcx)
	leal	1(%rsi), %edi
	andq	%r9, %rdi
	movswl	56(%rax,%rdi,2), %edi
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%edi, %xmm3
	divss	%xmm0, %xmm3
	addss	%xmm1, %xmm3
	mulss	%xmm2, %xmm3
	cvttss2si	%xmm3, %edi
	movb	%dil, (%rcx)
	addq	$2, %rsi
	addq	$2, %rcx
	addl	$-2, %edx
	jne	.LBB51_5
.LBB51_6:                               # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end51:
	.size	transfer_map_access_signed, .Lfunc_end51-transfer_map_access_signed
	.cfi_endproc

	.align	16, 0x90
	.type	transfer_map_access,@function
transfer_map_access:                    # @transfer_map_access
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %r10
	testq	%r8, %r8
	je	.LBB52_2
# BB#1:                                 # %if.then
	movq	%rcx, (%r8)
.LBB52_2:                               # %for.cond.preheader
	testl	%edx, %edx
	je	.LBB52_8
# BB#3:                                 # %for.body.preheader
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	testb	$1, %dl
	je	.LBB52_5
# BB#4:                                 # %for.body.prol
	movq	%rsi, %rdi
	andq	%r9, %rdi
	movswl	56(%r10,%rdi,2), %r8d
	movl	%r8d, %edi
	shrl	$12, %edi
	addl	%r8d, %edi
	shrl	$7, %edi
	movb	%dil, (%rcx)
	movl	$1, %r8d
.LBB52_5:                               # %for.body.preheader.split
	cmpl	$1, %edx
	je	.LBB52_8
# BB#6:                                 # %for.body.preheader.split.split
	subl	%r8d, %edx
	leaq	1(%r8,%rcx), %rcx
	leaq	(%rsi,%r8), %rsi
	.align	16, 0x90
.LBB52_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdi
	andq	%r9, %rdi
	movswl	56(%r10,%rdi,2), %eax
	movl	%eax, %edi
	shrl	$12, %edi
	addl	%eax, %edi
	shrl	$7, %edi
	movb	%dil, -1(%rcx)
	leal	1(%rsi), %eax
	andq	%r9, %rax
	movswl	56(%r10,%rax,2), %eax
	movl	%eax, %edi
	shrl	$12, %edi
	addl	%eax, %edi
	shrl	$7, %edi
	movb	%dil, (%rcx)
	addq	$2, %rsi
	addq	$2, %rcx
	addl	$-2, %edx
	jne	.LBB52_7
.LBB52_8:                               # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end52:
	.size	transfer_map_access, .Lfunc_end52-transfer_map_access
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"increase graphics state stack size"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"resize graphics state stack, free old stack)"
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"free gstate copy dash"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gstate copy dash"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"q\n"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Q\n"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pdf_color_space"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Convert DeviceN"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"convert DeviceN"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/DeviceN"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"pdf_color_space(DeviceN)"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/Colorants"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/%s"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/ColorSpace"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	" %s\n"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%g "
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s\n"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"/Separation"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%g"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/Pattern"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"pdf_string_to_cos_name"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/ExtGState"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/R%ld gs\n"
	.size	.L.str.22, 10

	.type	pdf_prepare_drawing.bm_names,@object # @pdf_prepare_drawing.bm_names
	.section	.rodata,"a",@progbits
	.align	16
pdf_prepare_drawing.bm_names:
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.size	pdf_prepare_drawing.bm_names, 136

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"Normal"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Multiply"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Screen"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Difference"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Darken"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Lighten"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"ColorDodge"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ColorBurn"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Exclusion"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"HardLight"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Overlay"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"SoftLight"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Luminosity"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Hue"
	.size	.L.str.36, 4

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Saturation"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Color"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Compatible"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"/BM"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.zero	1
	.size	.L.str.41, 1

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/HT"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/TR"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"/BG"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"/UCR"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"[%d %d]"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"/HTP"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/OPM"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"/SM"
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"/TK"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/OP"
	.size	.L.str.51, 4

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"/op"
	.size	.L.str.52, 4

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"vector free dash pattern"
	.size	.L.str.53, 25

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"vector allocate dash pattern"
	.size	.L.str.54, 29

	.type	pdf_reset_graphics_old.lp_initial,@object # @pdf_reset_graphics_old.lp_initial
	.section	.rodata,"a",@progbits
	.align	8
pdf_reset_graphics_old.lp_initial:
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	1092616192              # float 10
	.long	1045425820              # float 0.20305866
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # float 0
	.zero	4
	.size	pdf_reset_graphics_old.lp_initial, 104

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	" %g"
	.size	.L.str.55, 4

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"/Type"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"/None"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%ld 0 R"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"/SMask"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"/AIS"
	.size	.L.str.60, 5

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"/CA"
	.size	.L.str.61, 4

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"/ca"
	.size	.L.str.62, 4

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"<</Type/Halftone/HalftoneType 5/Default %ld 0 R\n"
	.size	.L.str.63, 49

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"/Red %ld 0 R/Cyan %ld 0 R"
	.size	.L.str.64, 26

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"/Green %ld 0 R/Magenta %ld 0 R"
	.size	.L.str.65, 31

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"/Blue %ld 0 R/Yellow %ld 0 R"
	.size	.L.str.66, 29

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/Gray %ld 0 R/Black %ld 0 R"
	.size	.L.str.67, 28

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	">>\n"
	.size	.L.str.68, 4

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"/TransferFunction"
	.size	.L.str.69, 18

	.type	ht_functions,@object    # @ht_functions
	.section	.rodata,"a",@progbits
	.align	16
ht_functions:
	.quad	.L.str.74
	.quad	ht_Round
	.quad	.L.str.75
	.quad	ht_Diamond
	.quad	.L.str.76
	.quad	ht_Ellipse
	.quad	.L.str.77
	.quad	ht_EllipseA
	.quad	.L.str.78
	.quad	ht_InvertedEllipseA
	.quad	.L.str.79
	.quad	ht_EllipseB
	.quad	.L.str.80
	.quad	ht_EllipseC
	.quad	.L.str.81
	.quad	ht_InvertedEllipseC
	.quad	.L.str.82
	.quad	ht_Line
	.quad	.L.str.83
	.quad	ht_LineX
	.quad	.L.str.84
	.quad	ht_LineY
	.quad	.L.str.85
	.quad	ht_Square
	.quad	.L.str.86
	.quad	ht_Cross
	.quad	.L.str.87
	.quad	ht_Rhomboid
	.quad	.L.str.88
	.quad	ht_DoubleDot
	.quad	.L.str.89
	.quad	ht_InvertedDoubleDot
	.quad	.L.str.90
	.quad	ht_SimpleDot
	.quad	.L.str.91
	.quad	ht_InvertedSimpleDot
	.quad	.L.str.92
	.quad	ht_CosineDot
	.quad	.L.str.93
	.quad	ht_Double
	.quad	.L.str.94
	.quad	ht_InvertedDouble
	.size	ht_functions, 336

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"<</Type/Halftone/HalftoneType 1/Frequency %g/Angle %g"
	.size	.L.str.70, 54

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"/SpotFunction/%s"
	.size	.L.str.71, 17

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"/SpotFunction %ld 0 R"
	.size	.L.str.72, 22

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"/AccurateScreens true"
	.size	.L.str.73, 22

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Round"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Diamond"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Ellipse"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"EllipseA"
	.size	.L.str.77, 9

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"InvertedEllipseA"
	.size	.L.str.78, 17

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"EllipseB"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"EllipseC"
	.size	.L.str.80, 9

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"InvertedEllipseC"
	.size	.L.str.81, 17

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Line"
	.size	.L.str.82, 5

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"LineX"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"LineY"
	.size	.L.str.84, 6

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Square"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Cross"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Rhomboid"
	.size	.L.str.87, 9

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"DoubleDot"
	.size	.L.str.88, 10

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"InvertedDoubleDot"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"SimpleDot"
	.size	.L.str.90, 10

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"InvertedSimpleDot"
	.size	.L.str.91, 18

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"CosineDot"
	.size	.L.str.92, 10

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Double"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"InvertedDouble"
	.size	.L.str.94, 15

	.type	pdf_write_spot_function.domain_spot,@object # @pdf_write_spot_function.domain_spot
	.section	.rodata,"a",@progbits
	.align	16
pdf_write_spot_function.domain_spot:
	.long	3212836864              # float -1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	3212836864              # float -1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	pdf_write_spot_function.domain_spot, 16

	.type	pdf_write_spot_function.range_spot,@object # @pdf_write_spot_function.range_spot
	.align	16
pdf_write_spot_function.range_spot:
	.long	3212836864              # float -1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.size	pdf_write_spot_function.range_spot, 16

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"pdf_write_spot_function"
	.size	.L.str.95, 24

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"/Halftone"
	.size	.L.str.96, 10

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"/HalftoneType"
	.size	.L.str.97, 14

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"6"
	.size	.L.str.98, 2

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"/Width"
	.size	.L.str.99, 7

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"/Height"
	.size	.L.str.100, 8

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"16"
	.size	.L.str.101, 3

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"/Width2"
	.size	.L.str.102, 8

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"/Height2"
	.size	.L.str.103, 9

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"pdf_write_multiple_halftone"
	.size	.L.str.104, 28

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"<</Type/Halftone/HalftoneType 5\n"
	.size	.L.str.105, 33

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	" %ld 0 R\n"
	.size	.L.str.106, 10

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	" /Default %ld 0 R\n"
	.size	.L.str.107, 19

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"["
	.size	.L.str.108, 2

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	" "
	.size	.L.str.109, 2

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"]"
	.size	.L.str.110, 2

	.type	pdf_write_transfer_map.domain01,@object # @pdf_write_transfer_map.domain01
	.section	.rodata,"a",@progbits
	.align	4
pdf_write_transfer_map.domain01:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	pdf_write_transfer_map.domain01, 8

	.type	pdf_write_transfer_map.size,@object # @pdf_write_transfer_map.size
	.align	4
pdf_write_transfer_map.size:
	.long	256                     # 0x100
	.size	pdf_write_transfer_map.size, 4

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"/Identity"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"%s%s%ld 0 R"
	.size	.L.str.112, 12

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"/SA"
	.size	.L.str.113, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
