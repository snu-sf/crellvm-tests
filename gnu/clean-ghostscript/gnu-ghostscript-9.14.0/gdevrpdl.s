	.text
	.file	"gdevrpdl.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4627842682090579558     # double 25.399999999999999
.LCPI0_1:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	rpdl_print_page_copies,@function
rpdl_print_page_copies:                 # @rpdl_print_page_copies
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r12d
	movl	18508(%rbx), %r13d
	movl	%r13d, %eax
	cltd
	idivl	18548(%rbx)
	subl	%edx, %r13d
	cmpq	$0, 928(%rbx)
	jne	.LBB0_59
# BB#1:                                 # %if.then
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cvttss2si	856(%rbx), %eax
	cvttss2si	860(%rbx), %edx
	cmpl	%edx, %eax
	movl	%edx, %ecx
	cmovlel	%eax, %ecx
	cmovll	%edx, %eax
	cmpl	$1684, %ecx             # imm = 0x694
	jne	.LBB0_5
# BB#2:                                 # %if.then
	cmpl	$2380, %eax             # imm = 0x94C
	jne	.LBB0_5
# BB#3:                                 # %if.then.34.i.i
	movl	$.L.str.30, %esi
	jmp	.LBB0_4
.LBB0_5:                                # %if.else.35.i.i
	cmpl	$1190, %ecx             # imm = 0x4A6
	jne	.LBB0_8
# BB#6:                                 # %if.else.35.i.i
	cmpl	$1684, %eax             # imm = 0x694
	jne	.LBB0_8
# BB#7:                                 # %if.then.41.i.i
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.32, %esi
	jmp	.LBB0_4
.LBB0_8:                                # %if.else.44.i.i
	cmpl	$842, %ecx              # imm = 0x34A
	jne	.LBB0_11
# BB#9:                                 # %if.else.44.i.i
	cmpl	$1190, %eax             # imm = 0x4A6
	jne	.LBB0_11
# BB#10:                                # %if.then.50.i.i
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.34, %esi
	jmp	.LBB0_4
.LBB0_11:                               # %if.else.53.i.i
	cmpl	$595, %ecx              # imm = 0x253
	jne	.LBB0_14
# BB#12:                                # %if.else.53.i.i
	cmpl	$842, %eax              # imm = 0x34A
	je	.LBB0_13
.LBB0_14:                               # %if.else.62.i.i
	cmpl	$597, %ecx              # imm = 0x255
	jne	.LBB0_16
# BB#15:                                # %if.else.62.i.i
	cmpl	$842, %eax              # imm = 0x34A
	jne	.LBB0_16
.LBB0_13:                               # %if.then.59.i.i
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.36, %esi
.LBB0_4:                                # %rpdl_paper_set.exit.i
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_43:                               # %rpdl_paper_set.exit.i
	cvttss2si	4(%rsp), %ebp   # 4-byte Folded Reload
	cmpl	$0, 17168(%rbx)
	jle	.LBB0_50
# BB#44:                                # %if.then.i
	cmpl	$0, 17164(%rbx)
	je	.LBB0_48
# BB#45:                                # %if.then.9.i
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$0, 18492(%rbx)
	je	.LBB0_46
# BB#47:                                # %if.else.i
	movl	$.L.str.14, %esi
	jmp	.LBB0_49
.LBB0_48:                               # %if.else.16.i
	movl	$.L.str.15, %esi
	jmp	.LBB0_49
.LBB0_46:                               # %if.then.13.i
	movl	$.L.str.13, %esi
.LBB0_49:                               # %if.end.19.i
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_50:                               # %if.end.19.i
	cmpl	$400, %ebp              # imm = 0x190
	jne	.LBB0_51
# BB#53:                                # %sw.epilog.thread35.i
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.26, %esi
	jmp	.LBB0_55
.LBB0_51:                               # %if.end.19.i
	cmpl	$600, %ebp              # imm = 0x258
	jne	.LBB0_54
# BB#52:                                # %sw.epilog.thread.i
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.25, %esi
	jmp	.LBB0_55
.LBB0_54:                               # %sw.epilog.i
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.24, %esi
.LBB0_55:                               # %sw.epilog.42.i
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movss	856(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	860(%rbx), %xmm0
	jbe	.LBB0_57
# BB#56:                                # %if.then.48.i
	movl	$.L.str.27, %esi
	jmp	.LBB0_58
.LBB0_57:                               # %if.else.50.i
	movl	$.L.str.28, %esi
.LBB0_58:                               # %rpdl_printer_initialize.exit
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	fprintf
.LBB0_59:                               # %if.end
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	leal	(%r12,%r12,2), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	incl	%esi
	movl	$.L.str.3, %ecx
	movl	%r13d, %edx
	callq	*88(%rdi)
	movq	%rax, 18528(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB0_62
# BB#60:                                # %if.end.10
	movl	$0, 18488(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lprn_print_image
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_62
# BB#61:                                # %if.end.14
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18528(%rbx), %rsi
	movl	$.L.str.3, %edx
	callq	*24(%rdi)
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_62:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_16:                               # %if.else.71.i.i
	cmpl	$421, %ecx              # imm = 0x1A5
	jne	.LBB0_19
# BB#17:                                # %if.else.71.i.i
	cmpl	$595, %eax              # imm = 0x253
	jne	.LBB0_19
# BB#18:                                # %if.then.77.i.i
	movl	$.L.str.37, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.38, %esi
	jmp	.LBB0_4
.LBB0_19:                               # %if.else.80.i.i
	cmpl	$297, %ecx              # imm = 0x129
	jne	.LBB0_22
# BB#20:                                # %if.else.80.i.i
	cmpl	$421, %eax              # imm = 0x1A5
	je	.LBB0_21
.LBB0_22:                               # %if.else.89.i.i
	cmpl	$729, %ecx              # imm = 0x2D9
	jne	.LBB0_25
# BB#23:                                # %if.else.89.i.i
	cmpl	$1032, %eax             # imm = 0x408
	jne	.LBB0_25
# BB#24:                                # %if.then.95.i.i
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.42, %esi
	jmp	.LBB0_4
.LBB0_25:                               # %if.else.98.i.i
	cmpl	$516, %ecx              # imm = 0x204
	jne	.LBB0_28
# BB#26:                                # %if.else.98.i.i
	cmpl	$729, %eax              # imm = 0x2D9
	jne	.LBB0_28
# BB#27:                                # %if.then.104.i.i
	movl	$.L.str.43, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.44, %esi
	jmp	.LBB0_4
.LBB0_28:                               # %if.else.107.i.i
	cmpl	$363, %ecx              # imm = 0x16B
	jne	.LBB0_30
# BB#29:                                # %if.else.107.i.i
	cmpl	$516, %eax              # imm = 0x204
	jne	.LBB0_30
.LBB0_21:                               # %if.then.86.i.i
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.40, %esi
	jmp	.LBB0_4
.LBB0_30:                               # %if.else.116.i.i
	cmpl	$612, %ecx              # imm = 0x264
	jne	.LBB0_33
# BB#31:                                # %if.else.116.i.i
	cmpl	$792, %eax              # imm = 0x318
	jne	.LBB0_33
# BB#32:                                # %if.then.122.i.i
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.46, %esi
	jmp	.LBB0_4
.LBB0_33:                               # %if.else.125.i.i
	cmpl	$612, %ecx              # imm = 0x264
	jne	.LBB0_36
# BB#34:                                # %if.else.125.i.i
	cmpl	$1008, %eax             # imm = 0x3F0
	jne	.LBB0_36
# BB#35:                                # %if.then.131.i.i
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.48, %esi
	jmp	.LBB0_4
.LBB0_36:                               # %if.else.134.i.i
	cmpl	$396, %ecx              # imm = 0x18C
	jne	.LBB0_39
# BB#37:                                # %if.else.134.i.i
	cmpl	$612, %eax              # imm = 0x264
	jne	.LBB0_39
# BB#38:                                # %if.then.140.i.i
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.50, %esi
	jmp	.LBB0_4
.LBB0_39:                               # %if.else.143.i.i
	cmpl	$792, %ecx              # imm = 0x318
	jne	.LBB0_42
# BB#40:                                # %if.else.143.i.i
	cmpl	$1224, %eax             # imm = 0x4C8
	jne	.LBB0_42
# BB#41:                                # %if.then.149.i.i
	movl	$.L.str.51, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.52, %esi
	jmp	.LBB0_4
.LBB0_42:                               # %if.else.152.i.i
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	$.L.str.53, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	jmp	.LBB0_43
.Lfunc_end0:
	.size	rpdl_print_page_copies, .Lfunc_end0-rpdl_print_page_copies
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1131413504              # float 240
	.text
	.align	16, 0x90
	.type	rpdl_image_out,@function
rpdl_image_out:                         # @rpdl_image_out
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %r13d
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%edx, %ebp
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	18520(%rbx), %rdi
	movq	18528(%rbx), %rsi
	movl	%r13d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r13), %r14d
	sarl	$3, %r14d
	imull	%r15d, %r14d
	movl	%r14d, %edx
	callq	lips_mode3format_encode
	movl	%eax, %r12d
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cmpl	%r14d, %r12d
	jge	.LBB1_7
# BB#1:                                 # %if.then
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_3
	jp	.LBB1_3
# BB#2:                                 # %if.then.4
	leal	(%rbp,%rbp,2), %r8d
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	(%rax,%rax,2), %r9d
	movl	%r12d, (%rsp)
	movl	$.L.str.54, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r13d, %edx
	jmp	.LBB1_4
.LBB1_7:                                # %if.else.11
	ucomiss	.LCPI1_0(%rip), %xmm0
	jne	.LBB1_9
	jp	.LBB1_9
# BB#8:                                 # %if.then.16
	leal	(%rbp,%rbp,2), %r8d
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	(%rax,%rax,2), %r9d
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r13d, %edx
	movl	%r15d, %ecx
	callq	fprintf
	movq	18520(%rbx), %rdi
	movslq	%r14d, %rdx
	jmp	.LBB1_5
.LBB1_3:                                # %if.else
	movl	%r12d, (%rsp)
	movl	$.L.str.54, %esi
	xorl	%eax, %eax
	movl	%ebp, %r8d
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r13d, %edx
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB1_4:                                # %if.end
	movl	%r15d, %ecx
	callq	fprintf
	movq	18528(%rbx), %rdi
	movslq	%r12d, %rdx
.LBB1_5:                                # %if.end
	movl	$1, %esi
	movq	%rbp, %rcx
	jmp	.LBB1_6
.LBB1_9:                                # %if.else.25
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movl	%r13d, %edx
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	fprintf
	movq	18520(%rbx), %rdi
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	%r12, %rcx
.LBB1_6:                                # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fwrite                  # TAILCALL
.Lfunc_end1:
	.size	rpdl_image_out, .Lfunc_end1-rpdl_image_out
	.cfi_endproc

	.align	16, 0x90
	.type	rpdl_open,@function
rpdl_open:                              # @rpdl_open
	.cfi_startproc
# BB#0:                                 # %entry
	cvttss2si	884(%rdi), %eax
	cvttss2si	888(%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_4
# BB#1:                                 # %if.end
	cmpl	$240, %eax
	je	.LBB2_5
# BB#2:                                 # %if.end
	cmpl	$600, %eax              # imm = 0x258
	je	.LBB2_5
# BB#3:                                 # %if.end
	cmpl	$400, %eax              # imm = 0x190
	jne	.LBB2_4
.LBB2_5:                                # %if.end.13
	jmp	gdev_prn_open           # TAILCALL
.LBB2_4:                                # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end2:
	.size	rpdl_open, .Lfunc_end2-rpdl_open
	.cfi_endproc

	.align	16, 0x90
	.type	rpdl_close,@function
rpdl_close:                             # @rpdl_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	cmpl	$0, 17164(%rbx)
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	testb	$1, 928(%rbx)
	je	.LBB3_3
# BB#2:                                 # %if.then
	movq	17176(%rbx), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB3_3:                                # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end3:
	.size	rpdl_close, .Lfunc_end3-rpdl_close
	.cfi_endproc

	.type	rpdl_prn_procs,@object  # @rpdl_prn_procs
	.data
	.align	8
rpdl_prn_procs:
	.quad	rpdl_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	rpdl_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lprn_get_params
	.quad	lprn_put_params
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
	.size	rpdl_prn_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rpdl"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_rpdl_device,@object  # @gs_rpdl_device
	.data
	.globl	gs_rpdl_device
	.align	8
gs_rpdl_device:
	.long	18576                   # 0x4890
	.zero	4
	.quad	rpdl_prn_procs
	.quad	.L.str
	.quad	0
	.quad	0
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
	.long	2040                    # 0x7f8
	.long	2640                    # 0xa50
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
	.long	1131413504              # float 2.400000e+02
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
	.quad	0
	.quad	rpdl_print_page_copies
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
	.quad	rpdl_image_out
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	gs_rpdl_device, 18576

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\f"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rpdl_print_page_copies(CompBuf)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033\022!@R00\033 "
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\0334"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033\022YP,2 "
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033\022YB,2 "
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033\022YK,1 "
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033\022YL,1 "
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033\022YM,1 "
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033\022YQ,2 "
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033\02261,"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033\022YA01,2 "
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033\022YA01,1 "
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\033\02260,"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\033\022YA04,3 "
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033\022YA04,1 "
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\033\022YA04,2 "
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\033\022YW,3 "
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\033\022YW,1 "
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033\022YW,2 "
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\033\022Q5 "
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\033\022Q4 "
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\033\022Q0 "
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\033\022#4 "
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033\022#2 "
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\033\022D2 "
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\033\022D1 "
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\033\022N%d "
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\033\02251@A1R\033 "
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\033\02251@A2R\033 "
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\033\02251@A2\033 "
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\033\02251@A3R\033 "
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\033\02251@A3\033 "
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\033\02251@A4R\033 "
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\033\02251@A4\033 "
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\033\02251@A5R\033 "
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\033\02251@A5\033 "
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"\033\02251@A6R\033 "
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\033\02251@A6\033 "
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"\033\02251@B4R\033 "
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\033\02251@B4\033 "
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\033\02251@B5R\033 "
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\033\02251@B5\033 "
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\033\02251@LTR\033 "
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"\033\02251@LT\033 "
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\033\02251@LGR\033 "
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"\033\02251@LG\033 "
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"\033\02251@HLR\033 "
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"\033\02251@HLT\033 "
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\033\02251@DLT\033 "
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\033\02251@DLR\033 "
	.size	.L.str.52, 11

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"\033\022?5%d,%d\033 "
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\033\022G3,%d,%d,,4,%d,%d,%d@"
	.size	.L.str.54, 24

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\033\022G3,%d,%d,,,%d,%d@"
	.size	.L.str.55, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
