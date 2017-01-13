	.text
	.file	"gdevdjet.bc"
	.align	16, 0x90
	.type	djet_print_page_copies,@function
djet_print_page_copies:                 # @djet_print_page_copies
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
	subq	$96, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 128
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$0, 18484(%rbp)
	je	.LBB0_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB0_4
.LBB0_2:                                # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB0_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB0_5
.LBB0_4:                                # %if.then.8.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.22, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.9.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.22, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB0_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$300, %ecx              # imm = 0x12C
	movl	$170, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	djet_print_page_copies, .Lfunc_end0-djet_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	djet500_print_page_copies,@function
djet500_print_page_copies:              # @djet500_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 128
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$0, 18484(%rbp)
	je	.LBB1_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB1_4
.LBB1_2:                                # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB1_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB1_5
.LBB1_4:                                # %if.then.8.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.25, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB1_6
.LBB1_5:                                # %if.else.9.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.25, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB1_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$300, %ecx              # imm = 0x12C
	movl	$180, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	djet500_print_page_copies, .Lfunc_end1-djet500_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	fs600_print_page_copies,@function
fs600_print_page_copies:                # @fs600_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 208
.Ltmp19:
	.cfi_offset %rbx, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cvttss2si	888(%rbx), %ebp
	leaq	96(%rsp), %rdi
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	gs_sprintf
	cmpl	$0, 18484(%rbx)
	je	.LBB2_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbx)
	jne	.LBB2_4
.LBB2_2:                                # %if.else.i
	cmpl	$0, 18476(%rbx)
	je	.LBB2_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB2_5
.LBB2_4:                                # %if.then.8.i
	leaq	16(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.9.i
	leaq	16(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB2_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$404, %r8d              # imm = 0x194
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	callq	dljet_mono_print_page_copies
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fs600_print_page_copies, .Lfunc_end2-fs600_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	ljet_print_page_copies,@function
ljet_print_page_copies:                 # @ljet_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 128
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$0, 18484(%rbp)
	je	.LBB3_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB3_4
.LBB3_2:                                # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB3_5
.LBB3_4:                                # %if.then.8.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB3_6
.LBB3_5:                                # %if.else.9.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB3_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$300, %ecx              # imm = 0x12C
	movl	$1, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ljet_print_page_copies, .Lfunc_end3-ljet_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	ljetplus_print_page_copies,@function
ljetplus_print_page_copies:             # @ljetplus_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 128
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$0, 18484(%rbp)
	je	.LBB4_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB4_4
.LBB4_2:                                # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB4_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB4_5
.LBB4_4:                                # %if.then.8.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.9.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB4_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$300, %ecx              # imm = 0x12C
	movl	$1, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ljetplus_print_page_copies, .Lfunc_end4-ljetplus_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	ljet2p_print_page_copies,@function
ljet2p_print_page_copies:               # @ljet2p_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 128
.Ltmp41:
	.cfi_offset %rbx, -32
.Ltmp42:
	.cfi_offset %r14, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$0, 18484(%rbp)
	je	.LBB5_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB5_4
.LBB5_2:                                # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB5_5
.LBB5_4:                                # %if.then.8.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.28, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB5_6
.LBB5_5:                                # %if.else.9.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.28, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB5_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$300, %ecx              # imm = 0x12C
	movl	$136, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ljet2p_print_page_copies, .Lfunc_end5-ljet2p_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	ljet3_print_page_copies,@function
ljet3_print_page_copies:                # @ljet3_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 128
.Ltmp48:
	.cfi_offset %rbx, -32
.Ltmp49:
	.cfi_offset %r14, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$0, 18484(%rbp)
	je	.LBB6_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB6_4
.LBB6_2:                                # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB6_5
.LBB6_4:                                # %if.then.8.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.29, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.9.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.29, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB6_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$300, %ecx              # imm = 0x12C
	movl	$404, %r8d              # imm = 0x194
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ljet3_print_page_copies, .Lfunc_end6-ljet3_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	ljet3d_print_page_copies,@function
ljet3d_print_page_copies:               # @ljet3d_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 48
	subq	$176, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 224
.Ltmp57:
	.cfi_offset %rbx, -48
.Ltmp58:
	.cfi_offset %r12, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movl	18488(%rbp), %r12d
	cmpl	$0, 18484(%rbp)
	je	.LBB7_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB7_4
.LBB7_2:                                # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB7_5
.LBB7_4:                                # %if.then.8.i
	leaq	96(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.29, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB7_6
.LBB7_5:                                # %if.else.9.i
	leaq	96(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.29, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB7_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %rbx
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movl	%r12d, 8(%rsp)
	movq	%rbx, (%rsp)
	leaq	96(%rsp), %r9
	movl	$300, %ecx              # imm = 0x12C
	movl	$468, %r8d              # imm = 0x1D4
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ljet3d_print_page_copies, .Lfunc_end7-ljet3d_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	ljet4_print_page_copies,@function
ljet4_print_page_copies:                # @ljet4_print_page_copies
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
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
.Ltmp66:
	.cfi_def_cfa_offset 208
.Ltmp67:
	.cfi_offset %rbx, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cvttss2si	888(%rbx), %ebp
	leaq	96(%rsp), %rdi
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	gdev_pcl_page_orientation
	cmpl	$1, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	leaq	96(%rsp), %rdi
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	gs_sprintf
.LBB8_2:                                # %if.end
	cmpl	$0, 18484(%rbx)
	je	.LBB8_4
# BB#3:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbx)
	jne	.LBB8_6
.LBB8_4:                                # %if.else.i
	cmpl	$0, 18476(%rbx)
	je	.LBB8_7
# BB#5:                                 # %land.lhs.true.3.i
	movl	18472(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB8_7
.LBB8_6:                                # %if.then.8.i
	leaq	16(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB8_8
.LBB8_7:                                # %if.else.9.i
	leaq	16(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB8_8:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$404, %r8d              # imm = 0x194
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	callq	dljet_mono_print_page_copies
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ljet4_print_page_copies, .Lfunc_end8-ljet4_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	ljet4d_print_page_copies,@function
ljet4d_print_page_copies:               # @ljet4d_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 304
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cvttss2si	888(%rbx), %r12d
	movl	18488(%rbx), %r13d
	leaq	176(%rsp), %rdi
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movl	%r12d, %edx
	callq	gs_sprintf
	cmpl	$0, 18484(%rbx)
	je	.LBB9_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbx)
	jne	.LBB9_4
.LBB9_2:                                # %if.else.i
	cmpl	$0, 18476(%rbx)
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB9_5
.LBB9_4:                                # %if.then.8.i
	leaq	96(%rsp), %rdi
	leaq	176(%rsp), %rdx
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.9.i
	leaq	96(%rsp), %rdi
	leaq	176(%rsp), %rdx
	movl	$.L.str.24, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB9_6:                                # %hpjet_make_init.exit
	leaq	16(%rsp), %rbp
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r12d, %edx
	callq	gs_sprintf
	movl	%r13d, 8(%rsp)
	movq	%rbp, (%rsp)
	leaq	96(%rsp), %r9
	movl	$468, %r8d              # imm = 0x1D4
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	callq	dljet_mono_print_page_copies
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ljet4d_print_page_copies, .Lfunc_end9-ljet4d_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	lp2563_print_page_copies,@function
lp2563_print_page_copies:               # @lp2563_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 128
.Ltmp88:
	.cfi_offset %rbx, -32
.Ltmp89:
	.cfi_offset %r14, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpl	$0, 18484(%rbp)
	je	.LBB10_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB10_4
.LBB10_2:                               # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB10_5
.LBB10_4:                               # %if.then.8.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.9.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB10_6:                               # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$300, %ecx              # imm = 0x12C
	movl	$128, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	lp2563_print_page_copies, .Lfunc_end10-lp2563_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	oce9050_print_page_copies,@function
oce9050_print_page_copies:              # @oce9050_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp94:
	.cfi_def_cfa_offset 128
.Ltmp95:
	.cfi_offset %rbx, -32
.Ltmp96:
	.cfi_offset %r14, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$.L.str.34, %edi
	callq	fputs
	movl	$.L.str.35, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.36, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.37, %edi
	movq	%rbx, %rsi
	callq	fputs
	cmpl	$0, 18484(%rbp)
	je	.LBB11_2
# BB#1:                                 # %land.lhs.true.i
	movl	$2, %ecx
	cmpl	$0, 18480(%rbp)
	jne	.LBB11_4
.LBB11_2:                               # %if.else.i
	cmpl	$0, 18476(%rbp)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true.3.i
	movl	18472(%rbp), %ecx
	testl	%ecx, %ecx
	js	.LBB11_5
.LBB11_4:                               # %if.then.8.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.23, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.9.i
	leaq	16(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB11_6:                               # %hpjet_make_init.exit
	leaq	16(%rsp), %r9
	movq	%r9, (%rsp)
	movl	$0, 8(%rsp)
	movl	$400, %ecx              # imm = 0x190
	movl	$144, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	dljet_mono_print_page_copies
	movl	%eax, %ebp
	movl	$.L.str.34, %edi
	movq	%rbx, %rsi
	callq	fputs
	testl	%ebp, %ebp
	jne	.LBB11_8
# BB#7:                                 # %if.then
	movl	$.L.str.38, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.39, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.40, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.17, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB11_8:                               # %if.end
	movl	%ebp, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	oce9050_print_page_copies, .Lfunc_end11-oce9050_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	ljet4pjl_print_page_copies,@function
ljet4pjl_print_page_copies:             # @ljet4pjl_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 128
.Ltmp104:
	.cfi_offset %rbx, -48
.Ltmp105:
	.cfi_offset %r12, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbp
	cvttss2si	888(%rbp), %ebx
	leaq	16(%rsp), %r12
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	gs_sprintf
	movq	%r12, (%rsp)
	movl	$0, 8(%rsp)
	movl	$916, %r8d              # imm = 0x394
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movl	%ebx, %ecx
	movq	%r12, %r9
	callq	dljet_mono_print_page_copies
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ljet4pjl_print_page_copies, .Lfunc_end12-ljet4pjl_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	hpjet_open,@function
hpjet_open:                             # @hpjet_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	12976(%rbx), %rax
	movl	$djet_print_page_copies, %ecx
	cmpq	%rcx, %rax
	je	.LBB13_2
# BB#1:                                 # %entry
	movl	$djet500_print_page_copies, %ecx
	cmpq	%rcx, %rax
	je	.LBB13_2
# BB#3:                                 # %if.else
	movl	$oce9050_print_page_copies, %ecx
	cmpq	%rcx, %rax
	je	.LBB13_7
# BB#4:                                 # %if.else
	movl	$lp2563_print_page_copies, %ecx
	cmpq	%rcx, %rax
	je	.LBB13_7
# BB#5:                                 # %if.else.13
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hpjet_open.m_a4.14, %eax
	movl	$hpjet_open.m_letter.15, %esi
	cmoveq	%rax, %rsi
	xorl	%edx, %edx
	jmp	.LBB13_6
.LBB13_2:                               # %if.then
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	cmpl	$26, %eax
	movl	$hpjet_open.m_a4, %eax
	movl	$hpjet_open.m_letter, %esi
	cmoveq	%rax, %rsi
	movl	$1, %edx
.LBB13_6:                               # %if.then.19
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	12976(%rbx), %rax
.LBB13_7:                               # %if.end.20
	movl	$ljet3d_print_page_copies, %ecx
	cmpq	%rcx, %rax
	je	.LBB13_9
# BB#8:                                 # %if.end.25
	movl	$ljet4d_print_page_copies, %ecx
	cmpq	%rcx, %rax
	jne	.LBB13_10
.LBB13_9:                               # %if.then.29
	movq	$1, 17164(%rbx)
.LBB13_10:                              # %if.end.32
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end13:
	.size	hpjet_open, .Lfunc_end13-hpjet_open
	.cfi_endproc

	.align	16, 0x90
	.type	hpjet_close,@function
hpjet_close:                            # @hpjet_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB14_7
# BB#1:                                 # %if.end
	cmpq	$0, 928(%rbx)
	jle	.LBB14_6
# BB#2:                                 # %if.then.2
	cmpl	$0, 17168(%rbx)
	js	.LBB14_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, 17164(%rbx)
	je	.LBB14_5
# BB#4:                                 # %if.then.4
	movq	17176(%rbx), %rsi
	movl	$.L.str.16, %edi
	callq	fputs
.LBB14_5:                               # %if.end.6
	movq	17176(%rbx), %rsi
	movl	$.L.str.17, %edi
	callq	fputs
.LBB14_6:                               # %if.end.9
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.LBB14_7:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end14:
	.size	hpjet_close, .Lfunc_end14-hpjet_close
	.cfi_endproc

	.align	16, 0x90
	.type	hpjet_get_params,@function
hpjet_get_params:                       # @hpjet_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp115:
	.cfi_def_cfa_offset 32
.Ltmp116:
	.cfi_offset %rbx, -24
.Ltmp117:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB15_3
# BB#1:                                 # %if.end
	leaq	18480(%rbx), %rdx
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB15_3
# BB#2:                                 # %if.end.5
	leaq	18472(%rbx), %rdx
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB15_3
# BB#4:                                 # %if.then.7
	addq	$18488, %rbx            # imm = 0x4838
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_bool        # TAILCALL
.LBB15_3:                               # %if.end.9
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	hpjet_get_params, .Lfunc_end15-hpjet_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	hpjet_put_params,@function
hpjet_put_params:                       # @hpjet_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp123:
	.cfi_def_cfa_offset 64
.Ltmp124:
	.cfi_offset %rbx, -48
.Ltmp125:
	.cfi_offset %r12, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	12(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movl	%r15d, %ebp
	js	.LBB16_11
# BB#1:                                 # %if.then.2
	leaq	8(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	movl	$1, %r12d
	testl	%ebp, %ebp
	je	.LBB16_4
# BB#2:                                 # %if.else
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jns	.LBB16_4
# BB#3:                                 # %if.then.7
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	param_read_null
	testl	%eax, %eax
	jne	.LBB16_11
.LBB16_4:                               # %if.then.16
	leaq	4(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB16_6
# BB#5:                                 # %if.end.21
	movl	$0, 4(%rsp)
	js	.LBB16_11
.LBB16_6:                               # %if.end.25
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB16_11
# BB#7:                                 # %if.then.27
	movl	4(%rsp), %eax
	movl	%eax, 18488(%r14)
	testl	%r15d, %r15d
	jne	.LBB16_9
# BB#8:                                 # %if.then.29
	movl	12(%rsp), %eax
	movl	%eax, 18480(%r14)
	movl	$1, 18484(%r14)
.LBB16_9:                               # %if.end.32
	testl	%r12d, %r12d
	je	.LBB16_11
# BB#10:                                # %if.then.34
	movl	8(%rsp), %eax
	movl	%eax, 18472(%r14)
	movl	$1, 18476(%r14)
.LBB16_11:                              # %if.end.38
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	hpjet_put_params, .Lfunc_end16-hpjet_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	ljet4pjl_close,@function
ljet4pjl_close:                         # @ljet4pjl_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB17_5
# BB#1:                                 # %if.end
	cmpl	$0, 17168(%rbx)
	js	.LBB17_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 17164(%rbx)
	je	.LBB17_4
# BB#3:                                 # %if.then.2
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gdev_prn_open_printer
	movq	17176(%rbx), %rsi
	movl	$.L.str.16, %edi
	callq	fputs
.LBB17_4:                               # %if.end.5
	movq	17176(%rbx), %rsi
	movl	$.L.str.21, %edi
	callq	fputs
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.LBB17_5:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end17:
	.size	ljet4pjl_close, .Lfunc_end17-ljet4pjl_close
	.cfi_endproc

	.type	prn_hp_procs,@object    # @prn_hp_procs
	.section	.rodata,"a",@progbits
	.align	8
prn_hp_procs:
	.quad	hpjet_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	hpjet_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	hpjet_get_params
	.quad	hpjet_put_params
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
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.size	prn_hp_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"deskjet"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_deskjet_device,@object # @gs_deskjet_device
	.section	.rodata,"a",@progbits
	.globl	gs_deskjet_device
	.align	8
gs_deskjet_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	djet_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_deskjet_device, 18496

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"djet500"
	.size	.L.str.2, 8

	.type	gs_djet500_device,@object # @gs_djet500_device
	.section	.rodata,"a",@progbits
	.globl	gs_djet500_device
	.align	8
gs_djet500_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.2
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	djet500_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_djet500_device, 18496

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"fs600"
	.size	.L.str.3, 6

	.type	gs_fs600_device,@object # @gs_fs600_device
	.section	.rodata,"a",@progbits
	.globl	gs_fs600_device
	.align	8
gs_fs600_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.3
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	3272212480              # float -1.380000e+02
	.long	3250585600              # float -2.400000e+01
	.long	1099201249              # float 1.656000e+01
	.long	0                       # float 0.000000e+00
	.long	1099201249              # float 1.656000e+01
	.long	1077432812              # float 2.880000e+00
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
	.quad	gx_print_page_single_copy
	.quad	fs600_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_fs600_device, 18496

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"laserjet"
	.size	.L.str.4, 9

	.type	gs_laserjet_device,@object # @gs_laserjet_device
	.section	.rodata,"a",@progbits
	.globl	gs_laserjet_device
	.align	8
gs_laserjet_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.4
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3245342720              # float -1.500000e+01
	.long	3264610304              # float -7.500000e+01
	.long	1080452710              # float 3.600000e+00
	.long	1099956224              # float 1.800000e+01
	.long	1109288550              # float 3.960000e+01
	.long	1099956224              # float 1.800000e+01
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
	.quad	gx_print_page_single_copy
	.quad	ljet_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_laserjet_device, 18496

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ljetplus"
	.size	.L.str.5, 9

	.type	gs_ljetplus_device,@object # @gs_ljetplus_device
	.section	.rodata,"a",@progbits
	.globl	gs_ljetplus_device
	.align	8
gs_ljetplus_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.5
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3245342720              # float -1.500000e+01
	.long	3264610304              # float -7.500000e+01
	.long	1080452710              # float 3.600000e+00
	.long	1099956224              # float 1.800000e+01
	.long	1109288550              # float 3.960000e+01
	.long	1099956224              # float 1.800000e+01
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
	.quad	gx_print_page_single_copy
	.quad	ljetplus_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_ljetplus_device, 18496

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"ljet2p"
	.size	.L.str.6, 7

	.type	gs_ljet2p_device,@object # @gs_ljet2p_device
	.section	.rodata,"a",@progbits
	.globl	gs_ljet2p_device
	.align	8
gs_ljet2p_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.6
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3264610304              # float -7.500000e+01
	.long	2147483648              # float -0.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	gx_print_page_single_copy
	.quad	ljet2p_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_ljet2p_device, 18496

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"ljet3"
	.size	.L.str.7, 6

	.type	gs_ljet3_device,@object # @gs_ljet3_device
	.section	.rodata,"a",@progbits
	.globl	gs_ljet3_device
	.align	8
gs_ljet3_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.7
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3262119936              # float -6.000000e+01
	.long	3264610304              # float -7.500000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
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
	.quad	gx_print_page_single_copy
	.quad	ljet3_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_ljet3_device, 18496

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"ljet3d"
	.size	.L.str.8, 7

	.type	gs_ljet3d_device,@object # @gs_ljet3d_device
	.section	.rodata,"a",@progbits
	.globl	gs_ljet3d_device
	.align	8
gs_ljet3d_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.8
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3262119936              # float -6.000000e+01
	.long	3264610304              # float -7.500000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1099956224              # float 1.800000e+01
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
	.quad	gx_print_page_single_copy
	.quad	ljet3d_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_ljet3d_device, 18496

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"ljet4"
	.size	.L.str.9, 6

	.type	gs_ljet4_device,@object # @gs_ljet4_device
	.section	.rodata,"a",@progbits
	.globl	gs_ljet4_device
	.align	8
gs_ljet4_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.9
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	ljet4_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_ljet4_device, 18496

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"ljet4d"
	.size	.L.str.10, 7

	.type	gs_ljet4d_device,@object # @gs_ljet4d_device
	.section	.rodata,"a",@progbits
	.globl	gs_ljet4d_device
	.align	8
gs_ljet4d_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.10
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	ljet4d_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_ljet4d_device, 18496

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"lp2563"
	.size	.L.str.11, 7

	.type	gs_lp2563_device,@object # @gs_lp2563_device
	.section	.rodata,"a",@progbits
	.globl	gs_lp2563_device
	.align	8
gs_lp2563_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.11
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	lp2563_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_lp2563_device, 18496

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"oce9050"
	.size	.L.str.12, 8

	.type	gs_oce9050_device,@object # @gs_oce9050_device
	.section	.rodata,"a",@progbits
	.globl	gs_oce9050_device
	.align	8
gs_oce9050_device:
	.long	18496                   # 0x4840
	.zero	4
	.quad	prn_hp_procs
	.quad	.L.str.12
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	9600                    # 0x2580
	.long	9600                    # 0x2580
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1155006464              # float 1.728000e+03
	.long	1155006464              # float 1.728000e+03
	.zero	16
	.long	0                       # 0x0
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	oce9050_print_page_copies
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	gs_oce9050_device, 18496

	.type	prn_ljet4pjl_procs,@object # @prn_ljet4pjl_procs
	.data
	.align	8
prn_ljet4pjl_procs:
	.quad	hpjet_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	ljet4pjl_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
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
	.size	prn_ljet4pjl_procs, 584

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"ljet4pjl"
	.size	.L.str.13, 9

	.type	gs_ljet4pjl_device,@object # @gs_ljet4pjl_device
	.section	.rodata,"a",@progbits
	.globl	gs_ljet4pjl_device
	.align	8
gs_ljet4pjl_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_ljet4pjl_procs
	.quad	.L.str.13
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.zero	8
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
	.quad	gx_print_page_single_copy
	.quad	ljet4pjl_print_page_copies
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
	.size	gs_ljet4pjl_device, 18472

	.type	hpjet_open.m_a4,@object # @hpjet_open.m_a4
	.align	16
hpjet_open.m_a4:
	.long	1040187392              # float 1.250000e-01
	.long	1056964608              # float 5.000000e-01
	.long	1041395352              # float 1.430000e-01
	.long	1035489772              # float 9.000000e-02
	.size	hpjet_open.m_a4, 16

	.type	hpjet_open.m_letter,@object # @hpjet_open.m_letter
	.align	16
hpjet_open.m_letter:
	.long	1045220557              # float 2.000000e-01
	.long	1055286886              # float 4.500000e-01
	.long	1050253722              # float 3.000000e-01
	.long	1028443341              # float 5.000000e-02
	.size	hpjet_open.m_letter, 16

	.type	hpjet_open.m_a4.14,@object # @hpjet_open.m_a4.14
	.align	16
hpjet_open.m_a4.14:
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hpjet_open.m_a4.14, 16

	.type	hpjet_open.m_letter.15,@object # @hpjet_open.m_letter.15
	.align	16
hpjet_open.m_letter.15:
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.long	1043005964              # float 1.670000e-01
	.size	hpjet_open.m_letter.15, 16

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"\033&l0H"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033E"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ManualFeed"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"MediaPosition"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Tumble"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033%-12345X"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\033&k1W\033*b2M"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s\033&l%dH"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\033&k1W"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033*r0F\033&u%dD"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\033*b0M"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\033*r0F\033*b2M"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\033&l-180u36Z\033*r0F"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\033&l180u36Z\033*r0F"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\033&l-180u36Z\033*r0F\033&u%dD"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\033&l0u140Z\033*r0F\033&u%dD"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\033&l180u36Z\033*r0F\033&u%dD"
	.size	.L.str.33, 22

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\033%1B"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"BP"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"IN;"
	.size	.L.str.36, 4

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\033%1A"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"PU"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"SP0"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"PG;"
	.size	.L.str.40, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
