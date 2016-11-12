	.text
	.file	"gsdevmem.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4634766966517661696     # double 72
	.text
	.globl	gs_initialize_wordimagedevice
	.align	16, 0x90
	.type	gs_initialize_wordimagedevice,@function
gs_initialize_wordimagedevice:          # @gs_initialize_wordimagedevice
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
	subq	$856, %rsp              # imm = 0x358
.Ltmp6:
	.cfi_def_cfa_offset 912
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
	movq	%r8, %r15
	movq	%rdi, %rbp
	movl	$2, %r14d
	movl	$1, %edi
	movl	$-15, %eax
	cmpl	$5, %r9d
	jle	.LBB0_1
# BB#9:                                 # %entry
	cmpl	$47, %r9d
	jg	.LBB0_13
# BB#10:                                # %entry
	cmpl	$6, %r9d
	je	.LBB0_18
# BB#11:                                # %entry
	cmpl	$12, %r9d
	jne	.LBB0_12
# BB#19:                                # %sw.bb.2
	movl	$3, %edi
	jmp	.LBB0_20
.LBB0_1:                                # %entry
	cmpl	$-17, %r9d
	jle	.LBB0_2
# BB#5:                                 # %entry
	cmpl	$-16, %r9d
	je	.LBB0_23
# BB#6:                                 # %entry
	cmpl	$2, %r9d
	jne	.LBB0_8
# BB#7:
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %r12d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	jmp	.LBB0_26
.LBB0_13:                               # %entry
	cmpl	$48, %r9d
	je	.LBB0_21
# BB#14:                                # %entry
	cmpl	$256, %r9d              # imm = 0x100
	je	.LBB0_17
# BB#15:                                # %entry
	cmpl	$768, %r9d              # imm = 0x300
	jne	.LBB0_63
# BB#16:                                # %sw.bb.6
	movl	$3, %edi
.LBB0_17:                               # %sw.bb.7
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %r12d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	$256, %r14d             # imm = 0x100
	movl	%edi, %r13d
	movl	$8, %edi
	jmp	.LBB0_27
.LBB0_2:                                # %entry
	cmpl	$-32, %r9d
	jne	.LBB0_3
# BB#24:                                # %sw.bb.10
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %r12d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	$32, %edi
	jmp	.LBB0_25
.LBB0_18:                               # %sw.bb
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %r12d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	$3, %r13d
	jmp	.LBB0_27
.LBB0_12:                               # %entry
	cmpl	$16, %r9d
	je	.LBB0_22
	jmp	.LBB0_63
.LBB0_23:                               # %sw.bb.8
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %r12d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	$16, %edi
	jmp	.LBB0_25
.LBB0_8:                                # %entry
	cmpl	$4, %r9d
	jne	.LBB0_63
.LBB0_20:                               # %sw.bb.3
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %r12d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	$4, %r14d
	movl	%edi, %r13d
	movl	$2, %edi
	jmp	.LBB0_27
.LBB0_21:                               # %sw.bb.4
	movl	$3, %edi
.LBB0_22:                               # %sw.bb.5
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %r12d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	$16, %r14d
	movl	%edi, %r13d
	movl	$4, %edi
	jmp	.LBB0_27
.LBB0_3:                                # %entry
	cmpl	$-24, %r9d
	jne	.LBB0_63
# BB#4:                                 # %sw.bb.9
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ecx, %r12d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	$24, %edi
.LBB0_25:                               # %sw.epilog
	xorl	%r14d, %r14d
.LBB0_26:                               # %sw.epilog
	movl	$1, %r13d
.LBB0_27:                               # %sw.epilog
	movl	912(%rsp), %eax
	movl	%edi, %ebp
	testl	%eax, %eax
	je	.LBB0_29
# BB#28:                                # %cond.true
	callq	gdev_mem_word_device_for_bits
	jmp	.LBB0_30
.LBB0_29:                               # %cond.false
	callq	gdev_mem_device_for_bits
.LBB0_30:                               # %cond.end
	movq	%rax, %rdx
	testq	%rdx, %rdx
	movl	$-15, %eax
	je	.LBB0_63
# BB#31:                                # %if.end
	movl	%ebx, 24(%rsp)          # 4-byte Spill
	movl	%r12d, 28(%rsp)         # 4-byte Spill
	movl	$1, %r12d
	movl	%ebp, %ecx
	cmpl	$8, %ecx
	ja	.LBB0_51
# BB#32:                                # %for.cond.preheader
	testl	%r14d, %r14d
	je	.LBB0_63
# BB#33:                                # %for.body.lr.ph
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	leaq	82(%rsp), %rax
	xorl	%esi, %esi
	movl	$16, %r8d
	movl	$1, %r9d
	xorl	%edi, %edi
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_34:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %r10d
	cmpl	$1, %r13d
	jne	.LBB0_36
# BB#35:                                # %sw.bb.15
                                        #   in Loop: Header=BB0_34 Depth=1
	movb	(%r15), %dl
	incq	%r15
	movb	%dl, -2(%rax)
	movb	%dl, %cl
	movb	%dl, %r11b
	jmp	.LBB0_37
	.align	16, 0x90
.LBB0_36:                               # %sw.default.18
                                        #   in Loop: Header=BB0_34 Depth=1
	movb	(%r15), %dl
	movb	%dl, -2(%rax)
	movb	1(%r15), %cl
	movb	2(%r15), %r11b
	addq	$3, %r15
.LBB0_37:                               # %sw.epilog.25
                                        #   in Loop: Header=BB0_34 Depth=1
	movb	%cl, -1(%rax)
	movb	%r11b, (%rax)
	testb	%dl, %dl
	sete	%bl
	movzbl	%bl, %edi
	movzbl	%dl, %edx
	cmpl	$255, %edx
	cmovel	%r8d, %edi
	movzbl	%cl, %ebp
	testb	%bpl, %bpl
	je	.LBB0_41
# BB#38:                                # %sw.epilog.25
                                        #   in Loop: Header=BB0_34 Depth=1
	cmpl	$255, %ebp
	jne	.LBB0_40
# BB#39:                                # %sw.bb.32
                                        #   in Loop: Header=BB0_34 Depth=1
	shll	$2, %edi
	jmp	.LBB0_41
	.align	16, 0x90
.LBB0_40:                               # %sw.default.34
                                        #   in Loop: Header=BB0_34 Depth=1
	xorl	%edi, %edi
.LBB0_41:                               # %sw.epilog.35
                                        #   in Loop: Header=BB0_34 Depth=1
	movzbl	%r11b, %ecx
	testb	%r11b, %r11b
	je	.LBB0_45
# BB#42:                                # %sw.epilog.35
                                        #   in Loop: Header=BB0_34 Depth=1
	cmpl	$255, %ecx
	jne	.LBB0_44
# BB#43:                                # %sw.bb.38
                                        #   in Loop: Header=BB0_34 Depth=1
	addl	%edi, %edi
	jmp	.LBB0_45
	.align	16, 0x90
.LBB0_44:                               # %sw.default.40
                                        #   in Loop: Header=BB0_34 Depth=1
	xorl	%edi, %edi
.LBB0_45:                               # %sw.epilog.41
                                        #   in Loop: Header=BB0_34 Depth=1
	orl	%r10d, %edi
	cmpl	%ecx, %edx
	cmovnel	%r9d, %r12d
	cmpl	%ebp, %edx
	cmovnel	%r9d, %r12d
	incl	%esi
	addq	$3, %rax
	cmpl	%r14d, %esi
	jl	.LBB0_34
# BB#46:                                # %for.end
	cmpl	$255, %edi
	jne	.LBB0_48
# BB#47:
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	jmp	.LBB0_51
.LBB0_48:                               # %for.end
	cmpl	$129, %edi
	jne	.LBB0_49
# BB#50:                                # %sw.bb.57
	testl	%r12d, %r12d
	movl	$0, %r12d
	movl	$-15, %eax
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	jne	.LBB0_63
.LBB0_51:                               # %if.end.66
	movq	40(%rsp), %r15          # 8-byte Reload
	movss	4(%r15), %xmm2          # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm2
	jne	.LBB0_54
	jp	.LBB0_54
# BB#52:                                # %land.lhs.true
	movss	8(%r15), %xmm1          # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_54
	jp	.LBB0_54
# BB#53:                                # %if.then.73
	movss	12(%r15), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movq	%r15, %rax
	jmp	.LBB0_57
.LBB0_54:                               # %if.else.74
	movss	(%r15), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	%r15, %rbp
	movl	$-23, %eax
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_63
	jp	.LBB0_63
# BB#55:                                # %land.lhs.true.79
	movss	12(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_63
	jp	.LBB0_63
# BB#56:                                # %if.then.84
	movq	%rbp, %r15
	leaq	8(%r15), %rax
.LBB0_57:                               # %if.end.89
	movss	%xmm2, 20(%rsp)         # 4-byte Spill
	movq	928(%rsp), %rbp
	movl	920(%rsp), %r13d
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rsp)          # 4-byte Spill
	cmpl	$1, %ecx
	jne	.LBB0_59
# BB#58:                                # %if.then.92
	cmpl	$1, %r13d
	sbbl	%ecx, %ecx
	orl	$1, %ecx
	xorl	%r8d, %r8d
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movq	%rbp, %rdx
	movq	%rbp, %r12
	callq	gs_make_mem_device
	movl	80(%rsp), %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	orl	%eax, %ecx
	shrl	$16, %eax
	orb	%cl, %al
	setne	%al
	movzbl	%al, %esi
	movq	%rbx, %rdi
	callq	gdev_mem_mono_set_inverted
	jmp	.LBB0_62
.LBB0_59:                               # %if.else.105
	leal	(%r14,%r14,2), %r14d
	movq	%rdx, %rbx
	movl	$.L.str, %edx
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	*136(%rbp)
	movq	%rbx, %rsi
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB0_63
# BB#60:                                # %if.end.110
	cmpl	$1, %r13d
	sbbl	%ecx, %ecx
	orl	$1, %ecx
	xorl	%r8d, %r8d
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	gs_make_mem_device
	movl	%r14d, 2592(%rbx)
	movq	%r15, 2584(%rbx)
	movl	%r14d, %edx
	leaq	80(%rsp), %rsi
	movq	%r15, %rdi
	callq	memcpy
	testl	%r12d, %r12d
	movq	40(%rsp), %r15          # 8-byte Reload
	movq	%rbp, %r12
	jne	.LBB0_62
# BB#61:                                # %if.then.119
	movl	$1, 100(%rbx)
	movl	$0, 116(%rbx)
	movl	$0, 124(%rbx)
	movb	$0, 110(%rbx)
.LBB0_62:                               # %if.end.128
	movl	$1, 80(%rbx)
	movq	$1, 56(%rbx)
	movq	24(%rbx), %rax
	movq	%rax, 64(%rbx)
	movq	$rc_free_struct_only, 72(%rbx)
	movq	16(%r15), %rax
	movq	%rax, 2564(%rbx)
	movups	(%r15), %xmm0
	movups	%xmm0, 2548(%rbx)
	movss	8(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	mulsd	.LCPI0_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 884(%rbx)
	movss	%xmm0, 892(%rbx)
	movss	20(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	mulsd	.LCPI0_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 888(%rbx)
	movss	%xmm0, 896(%rbx)
	movq	%rbx, %rdi
	movl	24(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	movl	28(%rsp), %r14d         # 4-byte Reload
	movl	%r14d, %edx
	callq	gx_device_set_width_height
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movl	%ebp, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 64(%rsp)
	movl	%r14d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 72(%rsp)
	leaq	48(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rdi, %rdx
	callq	gs_bbox_transform_inverse
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 864(%rbx)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 868(%rbx)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 872(%rbx)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 876(%rbx)
	movl	$1, 880(%rbx)
	movl	$0, 84(%rbx)
	movq	%r12, 1752(%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_63
.LBB0_49:
	movl	$-15, %eax
.LBB0_63:                               # %cleanup.177
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_initialize_wordimagedevice, .Lfunc_end0-gs_initialize_wordimagedevice
	.cfi_endproc

	.globl	gs_makewordimagedevice
	.align	16, 0x90
	.type	gs_makewordimagedevice,@function
gs_makewordimagedevice:                 # @gs_makewordimagedevice
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
	subq	$56, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 112
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
	movl	%r9d, 52(%rsp)          # 4-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movl	%ecx, %r13d
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rbx
	movl	$st_device_memory, %esi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r12d
	testq	%rbp, %rbp
	je	.LBB1_4
# BB#1:                                 # %if.end
	movl	120(%rsp), %eax
	movl	112(%rsp), %ecx
	movq	%rbx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	movl	%r13d, %ecx
	movq	40(%rsp), %r8           # 8-byte Reload
	movl	52(%rsp), %r9d          # 4-byte Reload
	callq	gs_initialize_wordimagedevice
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_2
# BB#3:                                 # %if.end.5
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB1_4
.LBB1_2:                                # %if.then.3
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
.LBB1_4:                                # %cleanup
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_makewordimagedevice, .Lfunc_end1-gs_makewordimagedevice
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_makeimagedevice(palette)"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_makeimagedevice(device)"
	.size	.L.str.1, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
