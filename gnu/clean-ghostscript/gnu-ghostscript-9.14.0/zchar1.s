	.text
	.file	"zchar1.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
.LCPI0_2:
	.quad	4571153621781053440     # double 0.00390625
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	charstring_execchar
	.align	16, 0x90
	.type	charstring_execchar,@function
charstring_execchar:                    # @charstring_execchar
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
	subq	$11512, %rsp            # imm = 0x2CF8
.Ltmp6:
	.cfi_def_cfa_offset 11568
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
	movl	%esi, %ebx
	movq	%rdi, %r13
	callq	op_show_find
	movq	%rax, %r14
	movq	624(%r13), %rdi
	addq	$-48, %rdi
	leaq	56(%rsp), %rsi
	callq	font_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_21
# BB#1:                                 # %if.end
	movl	$-21, %ebp
	testq	%r14, %r14
	je	.LBB0_21
# BB#2:                                 # %lor.lhs.false
	movq	56(%rsp), %r12
	movl	128(%r12), %eax
	cmpl	$31, %eax
	ja	.LBB0_21
# BB#3:                                 # %lor.lhs.false.5
	btl	%eax, %ebx
	jae	.LBB0_21
# BB#4:                                 # %if.end.8
	movq	624(%r13), %r15
	movsd	376(%r12), %xmm1        # xmm1 = mem[0],zero
	movsd	384(%r12), %xmm0        # xmm0 = mem[0],zero
	movsd	392(%r12), %xmm3        # xmm3 = mem[0],zero
	movsd	400(%r12), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jb	.LBB0_8
# BB#5:                                 # %if.end.8
	ucomisd	%xmm3, %xmm1
	jb	.LBB0_8
# BB#6:                                 # %if.end.8
	movq	192(%r14), %rax
	cmpl	$9, 128(%rax)
	jne	.LBB0_8
# BB#7:                                 # %if.then.9.i
	movsd	376(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	384(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	392(%rax), %xmm3        # xmm3 = mem[0],zero
	movsd	400(%rax), %xmm2        # xmm2 = mem[0],zero
.LBB0_8:                                # %if.end.12.i
	movsd	%xmm3, 40(%rsp)         # 8-byte Spill
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	cmpl	$0, 152(%r12)
	je	.LBB0_10
# BB#9:                                 # %if.then.13.i
	movq	(%r13), %rdi
	movss	156(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	gs_setlinewidth
.LBB0_10:                               # %if.end.14.i
	movq	536(%r13), %rax
	addq	$-48, %rax
	cmpq	%rax, 520(%r13)
	jbe	.LBB0_12
# BB#11:                                # %if.then.21.i
	leaq	520(%r13), %rdi
	movl	$3, %esi
	callq	ref_stack_extend
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
.LBB0_12:                               # %if.end.29.i
	movzwl	(%r15), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB0_14
# BB#13:                                # %if.then.33.i
	movq	%r13, %rdi
	callq	zchar_exec_char_proc
	jmp	.LBB0_16
.LBB0_14:                               # %if.end.35.i
	movzbl	1(%r15), %eax
	cmpl	$18, %eax
	jne	.LBB0_15
# BB#22:                                # %if.end.43.i
	movl	512(%r12), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	movl	$-10, %ebp
	cmpl	%ecx, 4(%r15)
	jbe	.LBB0_18
# BB#23:                                # %if.end.51.i
	movsd	360(%r14), %xmm1        # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_25
	jp	.LBB0_25
# BB#24:                                # %land.lhs.true.55.i
	movsd	368(%r14), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_25
	jnp	.LBB0_26
.LBB0_25:                               # %lor.lhs.false.i
	movq	(%r13), %rdi
	callq	gs_rootfont
	cmpl	$0, 148(%rax)
	je	.LBB0_26
# BB#28:                                # %if.else.i
	movsd	360(%r14), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 11328(%rsp)
	movq	368(%r14), %rax
	movq	%rax, 11336(%rsp)
	movq	$0, 11344(%rsp)
	xorpd	.LCPI0_1(%rip), %xmm0
	movlpd	%xmm0, 11352(%rsp)
	movl	$1, 11400(%rsp)
	movl	$0, 11360(%rsp)
	jmp	.LBB0_29
.LBB0_15:                               # %if.then.41.i
	movq	%r15, %rdi
	callq	check_type_failed
.LBB0_16:                               # %charstring_execchar_aux.exit
	movl	%eax, %ebp
.LBB0_17:                               # %charstring_execchar_aux.exit
	testl	%ebp, %ebp
	jns	.LBB0_21
	jmp	.LBB0_18
.LBB0_26:                               # %if.then.64.i
	leaq	-16(%r15), %rsi
	leaq	11328(%rsp), %rdx
	movq	%r12, %rdi
	callq	zchar_get_metrics
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
# BB#27:                                # %if.end.70.i
	movl	%ebp, 11360(%rsp)
	movl	$0, 11400(%rsp)
.LBB0_29:                               # %if.end.87.i
	movq	(%r13), %rdi
	xorpd	%xmm0, %xmm0
	xorpd	%xmm1, %xmm1
	callq	gs_moveto
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
# BB#30:                                # %if.end.93.i
	movq	(%r13), %rbp
	movq	1760(%rbp), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB0_32
# BB#31:                                # %if.end.i.i
	movq	1872(%rbp), %rdi
	xorl	%esi, %esi
	callq	*1304(%rdi)
	cmpl	$1, %eax
	jg	.LBB0_33
.LBB0_32:                               # %if.then.3.i.i
	movq	%r14, %rcx
	addq	$212, %rcx
	movq	212(%r14), %rax
	movq	%rax, 88(%rsp)
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.i.i
	movl	%eax, %edi
	callq	ilog2
	movl	%eax, 92(%rsp)
	movl	%eax, 88(%rsp)
	movq	%r14, %rcx
	addq	$212, %rcx
.LBB0_34:                               # %if.end.5.i.i
	movq	1680(%rbp), %rdx
	movb	$1, %al
	testb	$-8, 1(%r14)
	jne	.LBB0_36
# BB#35:                                # %lor.rhs.i.i
	cmpl	$0, 384(%r14)
	setne	%al
.LBB0_36:                               # %type1_exec_init.exit.i
	movzbl	%al, %r9d
	movl	152(%r12), %eax
	movq	%r12, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	104(%rsp), %rdi
	leaq	88(%rsp), %r8
	movq	%rbp, %rsi
	callq	gs_type1_interp_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_18
# BB#37:                                # %if.end.99.i
	leaq	104(%rsp), %rdi
	movq	%rdi, %rsi
	callq	gs_type1_set_callback_data
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	48(%rsp), %xmm0         # 8-byte Folded Reload
	jbe	.LBB0_43
# BB#38:                                # %if.end.99.i
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	32(%rsp), %xmm0         # 8-byte Folded Reload
	jbe	.LBB0_43
# BB#39:                                # %if.then.113.i
	leaq	376(%r12), %rax
	movq	$0, 88(%rsp)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	%xmm1, 11384(%rsp)
	movups	%xmm0, 11368(%rsp)
	leaq	104(%rsp), %rdx
	leaq	88(%rsp), %r8
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rcx
	callq	type1exec_bbox
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_17
# BB#40:                                # %if.then.113.i
	movq	88(%rsp), %rax
	jmp	.LBB0_41
.LBB0_18:                               # %land.lhs.true
	movq	(%r13), %rax
	cmpl	$3, 1848(%rax)
	jne	.LBB0_21
# BB#19:                                # %if.then.14
	movq	600(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB0_21
# BB#20:                                # %if.then.17
	movq	56(%rsp), %rax
	movq	24(%rax), %rdi
	callq	gx_free_cached_char
	movq	$0, 600(%r14)
.LBB0_21:                               # %cleanup
	movl	%ebp, %eax
	addq	$11512, %rsp            # imm = 0x2CF8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_43:                               # %if.else.125.i
	movq	(%r13), %rax
	movq	132(%rax), %xmm0        # xmm0 = mem[0],zero
	movss	140(%rax), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	144(%rax), %xmm2        # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	mulps	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	shufps	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	ucomiss	%xmm0, %xmm2
	jne	.LBB0_46
	jp	.LBB0_46
# BB#44:                                # %if.then.130.i
	movq	$0, 64(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 11368(%rsp)
	movups	%xmm0, 11384(%rsp)
	leaq	104(%rsp), %rdx
	leaq	64(%rsp), %r8
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rcx
	callq	type1exec_bbox
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_17
# BB#45:                                # %if.then.130.i
	movq	64(%rsp), %rax
.LBB0_41:                               # %if.then.113.i
	testq	%rax, %rax
	je	.LBB0_17
# BB#42:                                # %if.then.121.i
	movq	%r13, %rdi
	callq	*%rax
	jmp	.LBB0_16
.LBB0_46:                               # %if.end.154.i
	movl	11360(%rsp), %eax
	cmpl	$1, %eax
	je	.LBB0_49
# BB#47:                                # %if.end.154.i
	cmpl	$2, %eax
	jne	.LBB0_50
# BB#48:                                # %sw.bb.i
	movups	11328(%rsp), %xmm0
	movaps	%xmm0, 64(%rsp)
	leaq	104(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	gs_type1_set_lsb
.LBB0_49:                               # %sw.bb.162.i
	movups	11344(%rsp), %xmm0
	movaps	%xmm0, 64(%rsp)
	leaq	104(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	gs_type1_set_width
.LBB0_50:                               # %icont.preheader.i
	leaq	104(%rsp), %r12
	leaq	88(%rsp), %rbx
	jmp	.LBB0_51
.LBB0_63:                               # %sw.bb.192.i
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	11112(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 11344(%rsp)
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 11352(%rsp)
	xorl	%r15d, %r15d
.LBB0_51:                               # %icont.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$4, %r8d
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	type1_continue_dispatch
	movl	%eax, %ebp
	cmpl	$1, %ebp
	jne	.LBB0_52
# BB#60:                                # %sw.bb.178.i
                                        #   in Loop: Header=BB0_51 Depth=1
	movl	11360(%rsp), %eax
	cmpl	$1, %eax
	je	.LBB0_63
# BB#61:                                # %sw.bb.178.i
                                        #   in Loop: Header=BB0_51 Depth=1
	testl	%eax, %eax
	movl	$0, %r15d
	jne	.LBB0_51
# BB#62:                                # %sw.bb.180.i
                                        #   in Loop: Header=BB0_51 Depth=1
	movq	11104(%rsp), %rax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 11328(%rsp)
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 11336(%rsp)
	jmp	.LBB0_63
.LBB0_52:                               # %icont.i
	cmpl	$2, %ebp
	jne	.LBB0_53
# BB#55:                                # %sw.bb.176.i
	movq	8(%r13), %rdi
	movl	$st_gs_type1exec_state, %esi
	movl	$.L.str.9, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#56:                                # %if.end.i.99.i
	leaq	104(%rsp), %rbp
	movl	$11408, %edx            # imm = 0x2C90
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	gs_type1_set_callback_data
	movq	520(%r13), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r13)
	movq	$op_type1_cleanup, 24(%rax)
	movq	520(%r13), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$1, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r13)
	movq	%rbx, 24(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%r13), %eax
	movq	520(%r13), %rcx
	movw	%ax, (%rcx)
	movslq	11504(%rsp), %rdx
	leaq	16(%rcx), %rax
	movq	%rax, 520(%r13)
	movq	$nobbox_continue, 24(%rcx)
	movq	520(%r13), %rax
	testq	%rdx, %rdx
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rax
	movq	%rax, 520(%r13)
	jle	.LBB0_59
# BB#57:                                # %for.body.lr.ph.i.i
	leaq	1(%rdx), %rcx
	shlq	$4, %rdx
	leaq	11288(%rdx,%rbp), %rdx
.LBB0_58:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rax)
	movq	520(%r13), %rax
	andw	$-129, (%rax)
	addq	$16, %rax
	movq	%rax, 520(%r13)
	decq	%rcx
	addq	$-16, %rdx
	cmpq	$1, %rcx
	jg	.LBB0_58
.LBB0_59:                               # %type1_push_OtherSubr.exit.i
	movups	88(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$5, %ebp
	jmp	.LBB0_17
.LBB0_53:                               # %icont.i
	testl	%ebp, %ebp
	jne	.LBB0_17
# BB#54:                                # %sw.bb.174.i
	leaq	104(%rsp), %rsi
	movq	%r13, %rdi
	callq	nobbox_finish
	jmp	.LBB0_16
.Lfunc_end0:
	.size	charstring_execchar, .Lfunc_end0-charstring_execchar
	.cfi_endproc

	.align	16, 0x90
	.type	ztype1execchar,@function
ztype1execchar:                         # @ztype1execchar
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$18, %esi
	jmp	charstring_execchar     # TAILCALL
.Lfunc_end1:
	.size	ztype1execchar, .Lfunc_end1-ztype1execchar
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_getsbw_continue,@function
bbox_getsbw_continue:                   # @bbox_getsbw_continue
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
	subq	$120, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 176
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
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	8(%rax), %r14
	leaq	104(%rsp), %rcx
	xorl	%edx, %edx
	movl	$4, %r8d
	movq	%r14, %rsi
	callq	type1_continue_dispatch
	movl	%eax, %ebp
	cmpl	$1, %ebp
	jne	.LBB2_1
# BB#7:                                 # %sw.bb.7
	movq	624(%rbx), %r15
	movq	9856(%r14), %r12
	movl	$bbox_finish_fill, %ebp
	cmpl	$0, 152(%r12)
	je	.LBB2_9
# BB#8:                                 # %select.mid
	movl	$bbox_finish_stroke, %ebp
.LBB2_9:                                # %select.end
	movq	$0, 24(%rsp)
	leaq	64(%rsp), %r13
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	type1_cis_get_metrics
	movups	11264(%r14), %xmm0
	movups	11280(%r14), %xmm1
	movaps	%xmm1, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movq	8(%rbx), %rdi
	movq	520(%rbx), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movq	520(%rbx), %rax
	movq	$0, -8(%rax)
	movq	520(%rbx), %rax
	movw	$1248, -16(%rax)        # imm = 0x4E0
	movl	$0, -12(%rax)
	movq	$0, 8(%rax)
	movq	520(%rbx), %rax
	movw	$1248, (%rax)           # imm = 0x4E0
	movl	$0, 4(%rax)
	addq	$-16, %r15
	leaq	80(%rsp), %r8
	leaq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%rbp, (%rsp)
	movq	$0, 16(%rsp)
	leaq	32(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	zchar_set_cache
	testl	%eax, %eax
	js	.LBB2_12
# BB#10:                                # %select.end
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB2_12
# BB#11:                                # %if.then
	movq	%rbx, %rdi
	callq	*%rcx
	jmp	.LBB2_12
.LBB2_1:                                # %entry
	cmpl	$2, %ebp
	jne	.LBB2_2
# BB#3:                                 # %sw.bb
	movslq	11400(%r14), %rdx
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	$bbox_getsbw_continue, 24(%rax)
	movq	520(%rbx), %rax
	testq	%rdx, %rdx
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rax
	movq	%rax, 520(%rbx)
	jle	.LBB2_6
# BB#4:                                 # %for.body.lr.ph.i
	leaq	1(%rdx), %rcx
	shlq	$4, %rdx
	leaq	11288(%rdx,%r14), %rdx
	.align	16, 0x90
.LBB2_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rax)
	movq	520(%rbx), %rax
	andw	$-129, (%rax)
	addq	$16, %rax
	movq	%rax, 520(%rbx)
	decq	%rcx
	addq	$-16, %rdx
	cmpq	$1, %rcx
	jg	.LBB2_5
.LBB2_6:                                # %type1_push_OtherSubr.exit
	movups	104(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$5, %eax
	jmp	.LBB2_12
.LBB2_2:                                # %sw.default
	movq	8(%rbx), %rdi
	movq	520(%rbx), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movq	520(%rbx), %rax
	movq	$0, -8(%rax)
	movq	520(%rbx), %rax
	movw	$1248, -16(%rax)        # imm = 0x4E0
	movl	$0, -12(%rax)
	movq	$0, 8(%rax)
	movq	520(%rbx), %rax
	movw	$1248, (%rax)           # imm = 0x4E0
	movl	$0, 4(%rax)
	testl	%ebp, %ebp
	movl	$-10, %eax
	cmovsl	%ebp, %eax
.LBB2_12:                               # %cleanup
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bbox_getsbw_continue, .Lfunc_end2-bbox_getsbw_continue
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_continue,@function
bbox_continue:                          # @bbox_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 64
.Ltmp32:
	.cfi_offset %rbx, -48
.Ltmp33:
	.cfi_offset %r12, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rax
	movzbl	1(%rax), %eax
	movl	$4, %ebx
	cmpl	$18, %eax
	je	.LBB3_2
# BB#1:                                 # %select.mid
	movl	$6, %ebx
.LBB3_2:                                # %select.end
	movq	520(%r14), %rax
	movq	8(%rax), %r15
	leaq	(%rsp), %r12
	.align	16, 0x90
.LBB3_3:                                # %icont.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	type1_continue_dispatch
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB3_3
# BB#4:                                 # %icont.i
	testl	%ebp, %ebp
	jne	.LBB3_5
# BB#11:                                # %if.then
	addl	$-4, %ebx
	shlq	$4, %rbx
	subq	%rbx, 624(%r14)
	movq	8(%r14), %rdi
	movq	520(%r14), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movq	520(%r14), %rax
	movq	$0, -8(%rax)
	movq	520(%r14), %rax
	movw	$1248, -16(%rax)        # imm = 0x4E0
	movl	$0, -12(%rax)
	movq	$0, 8(%rax)
	movq	520(%r14), %rax
	movw	$1248, (%rax)           # imm = 0x4E0
	movl	$0, 4(%rax)
	xorl	%eax, %eax
	jmp	.LBB3_12
.LBB3_5:                                # %icont.i
	cmpl	$2, %ebp
	jne	.LBB3_6
# BB#7:                                 # %sw.bb.1.i
	movslq	11400(%r15), %rdx
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$bbox_continue, 24(%rax)
	movq	520(%r14), %rax
	testq	%rdx, %rdx
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rax
	movq	%rax, 520(%r14)
	jle	.LBB3_10
# BB#8:                                 # %for.body.lr.ph.i
	leaq	1(%rdx), %rcx
	shlq	$4, %rdx
	leaq	11288(%rdx,%r15), %rdx
	.align	16, 0x90
.LBB3_9:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rax)
	movq	520(%r14), %rax
	andw	$-129, (%rax)
	addq	$16, %rax
	movq	%rax, 520(%r14)
	decq	%rcx
	addq	$-16, %rdx
	cmpq	$1, %rcx
	jg	.LBB3_9
.LBB3_10:                               # %type1_push_OtherSubr.exit
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$5, %eax
	jmp	.LBB3_12
.LBB3_6:                                # %sw.default.i
	movq	8(%r14), %rdi
	movq	520(%r14), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movq	520(%r14), %rax
	movq	$0, -8(%rax)
	movq	520(%r14), %rax
	movw	$1248, -16(%rax)        # imm = 0x4E0
	movl	$0, -12(%rax)
	movq	$0, 8(%rax)
	movq	520(%r14), %rax
	movw	$1248, (%rax)           # imm = 0x4E0
	movl	$0, 4(%rax)
	testl	%ebp, %ebp
	movl	$-10, %eax
	cmovsl	%ebp, %eax
.LBB3_12:                               # %if.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bbox_continue, .Lfunc_end3-bbox_continue
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_finish_fill,@function
bbox_finish_fill:                       # @bbox_finish_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 32
.Ltmp39:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdx
	movl	$bbox_fill, %esi
	callq	bbox_finish
	testl	%eax, %eax
	js	.LBB4_3
# BB#1:                                 # %entry
	movq	8(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB4_3
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rcx
.LBB4_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	bbox_finish_fill, .Lfunc_end4-bbox_finish_fill
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_finish_stroke,@function
bbox_finish_stroke:                     # @bbox_finish_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdx
	movl	$bbox_stroke, %esi
	callq	bbox_finish
	testl	%eax, %eax
	js	.LBB5_3
# BB#1:                                 # %entry
	movq	8(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rcx
.LBB5_3:                                # %if.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	bbox_finish_stroke, .Lfunc_end5-bbox_finish_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	nobbox_continue,@function
nobbox_continue:                        # @nobbox_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 40
	subq	$11416, %rsp            # imm = 0x2C98
.Ltmp47:
	.cfi_def_cfa_offset 11456
.Ltmp48:
	.cfi_offset %rbx, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	520(%r14), %rax
	movq	8(%rax), %rbx
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB6_1:                                # %icont.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movl	$4, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	callq	type1_continue_dispatch
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB6_1
# BB#2:                                 # %icont.i
	testl	%ebp, %ebp
	jne	.LBB6_3
# BB#9:                                 # %if.end
	movq	520(%r14), %rax
	movq	8(%rax), %rsi
	leaq	8(%rsp), %rbx
	movl	$11408, %edx            # imm = 0x2C90
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	gs_type1_set_callback_data
	movq	8(%r14), %rdi
	movq	520(%r14), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movq	520(%r14), %rax
	movq	$0, -8(%rax)
	movq	520(%r14), %rax
	movw	$1248, -16(%rax)        # imm = 0x4E0
	movl	$0, -12(%rax)
	movq	$0, 8(%rax)
	movq	520(%r14), %rax
	movw	$1248, (%rax)           # imm = 0x4E0
	movl	$0, 4(%rax)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	nobbox_finish
	jmp	.LBB6_10
.LBB6_3:                                # %icont.i
	cmpl	$2, %ebp
	jne	.LBB6_4
# BB#5:                                 # %sw.bb.1.i
	movslq	11400(%rbx), %rdx
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$nobbox_continue, 24(%rax)
	movq	520(%r14), %rax
	testq	%rdx, %rdx
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rax
	movq	%rax, 520(%r14)
	jle	.LBB6_8
# BB#6:                                 # %for.body.lr.ph.i
	leaq	1(%rdx), %rcx
	shlq	$4, %rdx
	leaq	11288(%rdx,%rbx), %rdx
	.align	16, 0x90
.LBB6_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rax)
	movq	520(%r14), %rax
	andw	$-129, (%rax)
	addq	$16, %rax
	movq	%rax, 520(%r14)
	decq	%rcx
	addq	$-16, %rdx
	cmpq	$1, %rcx
	jg	.LBB6_7
.LBB6_8:                                # %type1_push_OtherSubr.exit
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$5, %eax
	jmp	.LBB6_10
.LBB6_4:                                # %sw.default.i
	movq	8(%r14), %rdi
	movq	520(%r14), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	movq	520(%r14), %rax
	movq	$0, -8(%rax)
	movq	520(%r14), %rax
	movw	$1248, -16(%rax)        # imm = 0x4E0
	movl	$0, -12(%rax)
	movq	$0, 8(%rax)
	movq	520(%r14), %rax
	movw	$1248, (%rax)           # imm = 0x4E0
	movl	$0, 4(%rax)
	testl	%ebp, %ebp
	movl	$-10, %eax
	cmovsl	%ebp, %eax
.LBB6_10:                               # %cleanup
	addq	$11416, %rsp            # imm = 0x2C98
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	nobbox_continue, .Lfunc_end6-nobbox_continue
	.cfi_endproc

	.align	16, 0x90
	.type	nobbox_fill,@function
nobbox_fill:                            # @nobbox_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_fill
	testl	%eax, %eax
	js	.LBB7_2
# BB#1:                                 # %if.then.i
	addq	$-64, 624(%rbx)
.LBB7_2:                                # %nobbox_draw.exit
	popq	%rbx
	retq
.Lfunc_end7:
	.size	nobbox_fill, .Lfunc_end7-nobbox_fill
	.cfi_endproc

	.align	16, 0x90
	.type	nobbox_stroke,@function
nobbox_stroke:                          # @nobbox_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -24
.Ltmp58:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movq	300(%rdi), %r14
	movl	$0, 304(%rdi)
	movl	$0, 300(%rdi)
	callq	gs_stroke
	testl	%eax, %eax
	js	.LBB8_2
# BB#1:                                 # %if.then.i
	addq	$-64, 624(%rbx)
.LBB8_2:                                # %nobbox_draw.exit
	movq	(%rbx), %rcx
	movq	%r14, 300(%rcx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	nobbox_stroke, .Lfunc_end8-nobbox_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	zsetweightvector,@function
zsetweightvector:                       # @zsetweightvector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -24
.Ltmp63:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	font_param
	testl	%eax, %eax
	js	.LBB9_4
# BB#1:                                 # %if.end
	movq	(%rsp), %rcx
	movl	128(%rcx), %edx
	decl	%edx
	movl	$-10, %eax
	cmpl	$1, %edx
	ja	.LBB9_5
# BB#2:                                 # %if.end.9
	movl	4(%rbx), %edx
	cmpl	900(%rcx), %edx
	jne	.LBB9_5
# BB#3:                                 # %if.end.12
	movq	8(%r14), %rdi
	addq	$904, %rcx              # imm = 0x388
	movq	%rbx, %rsi
	callq	process_float_array
	testl	%eax, %eax
	js	.LBB9_5
.LBB9_4:                                # %if.end.18
	addq	$-32, 624(%r14)
	xorl	%eax, %eax
.LBB9_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	zsetweightvector, .Lfunc_end9-zsetweightvector
	.cfi_endproc

	.align	16, 0x90
	.type	z1_glyph_data,@function
z1_glyph_data:                          # @z1_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 48
.Ltmp68:
	.cfi_offset %rbx, -32
.Ltmp69:
	.cfi_offset %r14, -24
.Ltmp70:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	16(%rbx), %rdi
	leaq	(%rsp), %r15
	movq	%r15, %rdx
	callq	glyph_ref
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	zchar_charstring_data
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	z1_glyph_data, .Lfunc_end10-z1_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	z1_subr_data,@function
z1_subr_data:                           # @z1_subr_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 48
.Ltmp74:
	.cfi_offset %rbx, -24
.Ltmp75:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	72(%rdi), %rax
	movq	16(%rdi), %rdi
	movq	%rax, %rcx
	subq	$-128, %rcx
	addq	$112, %rax
	testl	%edx, %edx
	cmovneq	%rcx, %rax
	movslq	%esi, %rdx
	leaq	8(%rsp), %rcx
	movq	%rax, %rsi
	callq	array_get
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB11_3
# BB#1:                                 # %do.body
	movl	$-20, %ebx
	movzbl	9(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB11_3
# BB#2:                                 # %do.end
	movq	16(%rsp), %rsi
	movl	12(%rsp), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gs_glyph_data_from_string
.LBB11_3:                               # %cleanup
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	z1_subr_data, .Lfunc_end11-z1_subr_data
	.cfi_endproc

	.align	16, 0x90
	.type	z1_seac_data,@function
z1_seac_data:                           # @z1_seac_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 64
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
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rdi, %r12
	movslq	%esi, %rdi
	xorl	%esi, %esi
	callq	gs_c_known_encode
	movl	$-15, %ebp
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB12_7
# BB#1:                                 # %if.end
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	gs_c_glyph_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_7
# BB#2:                                 # %lor.lhs.false
	movq	16(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
	leaq	(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	names_ref
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_7
# BB#3:                                 # %if.end.9
	testq	%r15, %r15
	je	.LBB12_5
# BB#4:                                 # %if.then.10
	movq	16(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rsi
	callq	names_index
	movl	%eax, %eax
	movq	%rax, (%r15)
.LBB12_5:                               # %if.end.16
	testq	%r14, %r14
	je	.LBB12_7
# BB#6:                                 # %if.then.18
	leaq	(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	zchar_charstring_data
	movl	%eax, %ebp
.LBB12_7:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	z1_seac_data, .Lfunc_end12-z1_seac_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	z1_push,@function
z1_push:                                # @z1_push
	.cfi_startproc
# BB#0:                                 # %entry
	movq	11216(%rdi), %rcx
	movslq	%edx, %rdi
	movq	624(%rcx), %r11
	movq	640(%rcx), %rax
	subq	%r11, %rax
	sarq	$4, %rax
	cmpq	%rdi, %rax
	jge	.LBB13_2
# BB#1:                                 # %if.then
	movl	%edx, 688(%rcx)
	movl	$-16, %eax
	retq
.LBB13_2:                               # %if.end
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB13_10
# BB#3:                                 # %for.body.lr.ph
	leaq	(%rsi,%rdi,4), %rax
	leal	-1(%rdx), %r9d
	testb	$1, %dl
	jne	.LBB13_5
# BB#4:
	xorl	%r10d, %r10d
	movq	%r11, %rsi
	jmp	.LBB13_6
.LBB13_5:                               # %for.body.prol
	leaq	16(%r11), %rsi
	cvtsi2sdl	-4(%rax), %xmm0
	addq	$-4, %rax
	mulsd	.LCPI13_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r11)
	movw	$4096, 16(%r11)         # imm = 0x1000
	movl	$1, %r10d
.LBB13_6:                               # %for.body.lr.ph.split
	leaq	1(%r9), %r8
	testl	%r9d, %r9d
	je	.LBB13_9
# BB#7:                                 # %for.body.lr.ph.split.split
	addq	$40, %rsi
	addq	$-4, %rax
	subl	%r10d, %edx
	movsd	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB13_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -16(%rsi)
	movw	$4096, -24(%rsi)        # imm = 0x1000
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-4(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rsi)
	movw	$4096, -8(%rsi)         # imm = 0x1000
	addq	$32, %rsi
	addq	$-8, %rax
	addl	$-2, %edx
	jne	.LBB13_8
.LBB13_9:                               # %for.cond.cleanup.loopexit_crit_edge
	shlq	$4, %r8
	addq	%r8, %r11
	movq	%r11, 624(%rcx)
	xorl	%eax, %eax
.LBB13_10:                              # %cleanup
	retq
.Lfunc_end13:
	.size	z1_push, .Lfunc_end13-z1_push
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	z1_pop,@function
z1_pop:                                 # @z1_pop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp89:
	.cfi_def_cfa_offset 32
.Ltmp90:
	.cfi_offset %rbx, -24
.Ltmp91:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	11216(%rdi), %rbx
	movq	624(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	real_param
	testl	%eax, %eax
	js	.LBB14_2
# BB#1:                                 # %if.end
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI14_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%r14)
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB14_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	z1_pop, .Lfunc_end14-z1_pop
	.cfi_endproc

	.globl	zchar1_glyph_outline
	.align	16, 0x90
	.type	zchar1_glyph_outline,@function
zchar1_glyph_outline:                   # @zchar1_glyph_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 128
.Ltmp99:
	.cfi_offset %rbx, -56
.Ltmp100:
	.cfi_offset %r12, -48
.Ltmp101:
	.cfi_offset %r13, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	16(%rbx), %rdi
	leaq	56(%rsp), %rbp
	movq	%rdx, %rsi
	movq	%rbp, %rdx
	callq	glyph_ref
	movq	16(%rbx), %rax
	movq	%rax, 48(%rsp)
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	zchar_charstring_data
	testl	%eax, %eax
	js	.LBB15_2
# BB#1:                                 # %if.end
	movq	%r12, (%rsp)
	leaq	56(%rsp), %rdx
	leaq	8(%rsp), %rcx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%r15, %r8
	movq	%r14, %r9
	callq	zcharstring_outline
.LBB15_2:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	zchar1_glyph_outline, .Lfunc_end15-zchar1_glyph_outline
	.cfi_endproc

	.globl	zcharstring_outline
	.align	16, 0x90
	.type	zcharstring_outline,@function
zcharstring_outline:                    # @zcharstring_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp109:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 56
	subq	$13128, %rsp            # imm = 0x3348
.Ltmp111:
	.cfi_def_cfa_offset 13184
.Ltmp112:
	.cfi_offset %rbx, -56
.Ltmp113:
	.cfi_offset %r12, -48
.Ltmp114:
	.cfi_offset %r13, -40
.Ltmp115:
	.cfi_offset %r14, -32
.Ltmp116:
	.cfi_offset %r15, -24
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r13
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rdi, %r15
	movl	512(%r15), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	movl	$-10, %eax
	cmpl	%ecx, 8(%rbx)
	jbe	.LBB16_18
# BB#1:                                 # %if.end
	movq	13184(%rsp), %r14
	testl	%esi, %esi
	je	.LBB16_4
# BB#2:                                 # %sw.default
	leaq	64(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	zchar_get_metrics2
	testl	%eax, %eax
	je	.LBB16_4
# BB#3:                                 # %if.then.3
	movaps	80(%rsp), %xmm0
	movups	%xmm0, (%r14)
	movaps	64(%rsp), %xmm0
	movups	%xmm0, 16(%r14)
	jmp	.LBB16_5
.LBB16_4:                               # %sw.bb
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	zchar_get_metrics
.LBB16_5:                               # %sw.epilog
	testl	%eax, %eax
	js	.LBB16_18
# BB#6:                                 # %if.end.15
	movl	%eax, 12976(%rsp)
	testq	%r13, %r13
	je	.LBB16_8
# BB#7:                                 # %if.then.17
	leaq	228(%rsp), %rdi
	movq	%r13, %rsi
	jmp	.LBB16_9
.LBB16_8:                               # %if.else
	leaq	24(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_make_identity
	leaq	228(%rsp), %rdi
	movq	%rbp, %rsi
.LBB16_9:                               # %if.end.21
	callq	gs_matrix_fixed_from_matrix
	movl	$0, 392(%rsp)
	movq	%r15, 8(%rsp)
	movl	$0, (%rsp)
	leaq	1720(%rsp), %rdi
	leaq	96(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r12, %rdx
	callq	gs_type1_interp_init
	testl	%eax, %eax
	js	.LBB16_18
# BB#10:                                # %if.end.26
	movl	$1, 11600(%rsp)
	leaq	1720(%rsp), %rdi
	movq	%rdi, %rsi
	callq	gs_type1_set_callback_data
	movl	12976(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB16_11
# BB#12:                                # %sw.bb.29
	movups	(%r14), %xmm0
	movaps	%xmm0, 48(%rsp)
	leaq	1720(%rsp), %rdi
	leaq	48(%rsp), %rsi
	callq	gs_type1_set_lsb
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.26
	cmpl	$1, %eax
	jne	.LBB16_14
.LBB16_13:                              # %sw.bb.32
	movq	16(%r14), %rax
	movq	%rax, 48(%rsp)
	movq	24(%r14), %rax
	movq	%rax, 56(%rsp)
	leaq	1720(%rsp), %rdi
	leaq	48(%rsp), %rsi
	callq	gs_type1_set_width
.LBB16_14:                              # %icont.preheader
	leaq	12944(%rsp), %r12
	leaq	1720(%rsp), %rbp
	leaq	1716(%rsp), %r13
	jmp	.LBB16_15
	.align	16, 0x90
.LBB16_19:                              # %sw.bb.44
                                        #   in Loop: Header=BB16_15 Depth=1
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	type1_cis_get_metrics
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	type1_cis_get_metrics
	xorl	%ebx, %ebx
.LBB16_15:                              # %icont
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*488(%r15)
	cmpl	$1, %eax
	je	.LBB16_19
# BB#16:                                # %icont
	cmpl	$2, %eax
	jne	.LBB16_18
# BB#17:                                # %cleanup.loopexit44
	movl	$-15, %eax
.LBB16_18:                              # %cleanup
	addq	$13128, %rsp            # imm = 0x3348
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	zcharstring_outline, .Lfunc_end16-zcharstring_outline
	.cfi_endproc

	.globl	z1_glyph_info_generic
	.align	16, 0x90
	.type	z1_glyph_info_generic,@function
z1_glyph_info_generic:                  # @z1_glyph_info_generic
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
	pushq	%r13
.Ltmp121:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp122:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 160
.Ltmp125:
	.cfi_offset %rbx, -56
.Ltmp126:
	.cfi_offset %r12, -48
.Ltmp127:
	.cfi_offset %r13, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movl	%ecx, %ebx
	movq	%rdx, %rbp
	movl	160(%rsp), %ecx
	movl	$1, %r15d
	shll	%cl, %r15d
	movl	%r15d, %r12d
	andl	%ebx, %r12d
	andl	%ebx, %r15d
	je	.LBB17_1
# BB#2:                                 # %if.end
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	xorl	%r14d, %r14d
	movl	%ebx, %eax
	andl	$32, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	jne	.LBB17_6
# BB#3:                                 # %land.lhs.true
	leaq	80(%rsp), %rsi
	movq	%rdi, %r14
	callq	zchar_get_CDevProc
	movq	%r14, %rdi
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB17_6
# BB#4:                                 # %if.then.9
	movl	$256, %r14d             # imm = 0x100
	testb	$1, %bh
	jne	.LBB17_5
.LBB17_6:                               # %if.end.15
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movl	$-449, %r13d            # imm = 0xFFFFFFFFFFFFFE3F
	subl	44(%rsp), %r13d         # 4-byte Folded Reload
	subl	%r12d, %r13d
	movq	%rdi, %r12
	movq	16(%r12), %rdi
	leaq	88(%rsp), %rdx
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	glyph_ref
	cmpl	$2, %r15d
	jne	.LBB17_9
# BB#7:                                 # %if.then.16
	leaq	88(%rsp), %rsi
	leaq	48(%rsp), %rdx
	movq	%r12, %rdi
	callq	zchar_get_metrics2
	testl	%eax, %eax
	jle	.LBB17_9
# BB#8:                                 # %if.end.31.thread62
	movaps	48(%rsp), %xmm0
	movq	24(%rsp), %r8           # 8-byte Reload
	movups	%xmm0, 24(%r8)
	movaps	64(%rsp), %xmm0
	movups	%xmm0, 40(%r8)
	movl	$130, %r15d
	jmp	.LBB17_14
.LBB17_1:                               # %if.then
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	*%r13
	jmp	.LBB17_26
.LBB17_9:                               # %if.then.33
	leaq	88(%rsp), %rsi
	leaq	48(%rsp), %rdx
	movq	%r12, %rdi
	callq	zchar_get_metrics
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB17_10
# BB#11:                                # %if.then.37
	movslq	160(%rsp), %rcx
	shlq	$4, %rcx
	movaps	64(%rsp), %xmm0
	movq	24(%rsp), %r8           # 8-byte Reload
	movups	%xmm0, 8(%r8,%rcx)
	cmpl	$2, %eax
	jne	.LBB17_13
# BB#12:                                # %if.then.48
	movaps	48(%rsp), %xmm0
	movups	%xmm0, 40(%r8)
	orl	$64, %r15d
	jmp	.LBB17_14
.LBB17_10:
	movl	%r15d, %ebp
	movl	%r14d, %r15d
	movq	24(%rsp), %r8           # 8-byte Reload
	jmp	.LBB17_15
.LBB17_13:                              # %if.else.56
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%r8)
.LBB17_14:                              # %if.end.62
	movl	$1, %ecx
	xorl	%ebp, %ebp
.LBB17_15:                              # %if.end.62
	movl	44(%rsp), %r14d         # 4-byte Reload
	andl	%ebx, %r13d
	testl	%r14d, %r14d
	je	.LBB17_16
# BB#17:                                # %if.then.65
	testl	%ecx, %ecx
	jne	.LBB17_20
# BB#18:                                # %lor.lhs.false
	leaq	80(%rsp), %rsi
	movq	%r12, %rdi
	callq	zchar_get_CDevProc
	movq	24(%rsp), %r8           # 8-byte Reload
	testl	%eax, %eax
	je	.LBB17_19
.LBB17_20:                              # %if.then.69
	orl	%r15d, %ebp
	jmp	.LBB17_21
.LBB17_16:
	movl	%r15d, %r14d
.LBB17_21:                              # %if.end.72
	orl	%r13d, %ebp
	je	.LBB17_24
# BB#22:                                # %if.then.75
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	%ebp, %ecx
	movq	%r8, %rbx
	callq	*16(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB17_26
# BB#23:                                # %if.then.75.if.end.82_crit_edge
	movl	(%rbx), %eax
	movq	%rbx, %r8
	jmp	.LBB17_25
.LBB17_24:                              # %if.else.80
	movl	$0, (%r8)
	xorl	%eax, %eax
.LBB17_25:                              # %if.end.82
	orl	%r14d, %eax
	movl	%eax, (%r8)
	xorl	%eax, %eax
	jmp	.LBB17_26
.LBB17_5:                               # %if.then.12
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$256, (%rax)            # imm = 0x100
	movl	$-15, %eax
.LBB17_26:                              # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_19:
	movl	%r15d, %r14d
	jmp	.LBB17_21
.Lfunc_end17:
	.size	z1_glyph_info_generic, .Lfunc_end17-z1_glyph_info_generic
	.cfi_endproc

	.globl	z1_glyph_info
	.align	16, 0x90
	.type	z1_glyph_info,@function
z1_glyph_info:                          # @z1_glyph_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp131:
	.cfi_def_cfa_offset 16
	movl	148(%rdi), %eax
	movl	%eax, (%rsp)
	movl	$gs_type1_glyph_info, %r9d
	callq	z1_glyph_info_generic
	popq	%rdx
	retq
.Lfunc_end18:
	.size	z1_glyph_info, .Lfunc_end18-z1_glyph_info
	.cfi_endproc

	.globl	z1_set_cache
	.align	16, 0x90
	.type	z1_set_cache,@function
z1_set_cache:                           # @z1_set_cache
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
	subq	$200, %rsp
.Ltmp138:
	.cfi_def_cfa_offset 256
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
	movq	%r9, %r13
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_rootfont
	movslq	148(%rax), %rbp
	movq	.Lz1_set_cache.id_matrix+16(%rip), %rax
	movq	%rax, 48(%rsp)
	movups	.Lz1_set_cache.id_matrix(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	$65, %eax
	movb	%bpl, %cl
	shll	%cl, %eax
	orl	$4, %eax
	leaq	32(%rsp), %rdx
	leaq	56(%rsp), %r8
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%eax, %ecx
	callq	gs_default_glyph_info
	testl	%eax, %eax
	js	.LBB19_2
# BB#1:                                 # %if.end
	movups	96(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movq	%rbp, %rax
	shlq	$4, %rax
	leaq	176(%rsp), %r8
	movups	64(%rsp,%rax), %xmm0
	movaps	%xmm0, 176(%rsp)
	leaq	112(%rsp), %r9
	xorl	%eax, %eax
	testl	%ebp, %ebp
	leaq	160(%rsp), %rcx
	cmoveq	%rax, %rcx
	movq	%rcx, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	%r12, (%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	zchar_set_cache
.LBB19_2:                               # %cleanup
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	z1_set_cache, .Lfunc_end19-z1_set_cache
	.cfi_endproc

	.align	16, 0x90
	.type	type1exec_bbox,@function
type1exec_bbox:                         # @type1exec_bbox
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
	subq	$72, %rsp
.Ltmp151:
	.cfi_def_cfa_offset 128
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
	movq	%r8, %r12
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	624(%r14), %r13
	movl	$bbox_finish_stroke, %ebp
	cmpl	$0, 152(%r15)
	jne	.LBB20_3
# BB#1:                                 # %land.rhs
	movq	112(%rsi), %rax
	movl	$bbox_finish_fill, %ebp
	cmpl	$0, 152(%rax)
	je	.LBB20_3
# BB#2:                                 # %select.mid
	movl	$bbox_finish_stroke, %ebp
.LBB20_3:                               # %land.end
	movl	11256(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB20_5
# BB#4:                                 # %land.lhs.true
	cmpl	$0, 11296(%rbx)
	je	.LBB20_9
.LBB20_5:                               # %lor.lhs.false
	movq	112(%rsi), %rcx
	cmpl	$0, 148(%rcx)
	je	.LBB20_8
# BB#6:                                 # %land.lhs.true.6
	leaq	64(%rsp), %rsi
	movq	%r15, %rdi
	callq	zchar_get_CDevProc
	testl	%eax, %eax
	je	.LBB20_7
.LBB20_9:                               # %if.then
	movups	-16(%r13), %xmm0
	movaps	%xmm0, 48(%rsp)
	leaq	32(%rsp), %rcx
	movl	$4, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	type1_continue_dispatch
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB20_10
# BB#17:                                # %sw.epilog
	leaq	11224(%rbx), %rsi
	movq	%rbx, %rdi
	callq	type1_cis_get_metrics
	leaq	11240(%rbx), %r8
	addq	$11264, %rbx            # imm = 0x2C00
	movq	%r12, 8(%rsp)
	movq	%rbp, (%rsp)
	movq	$0, 16(%rsp)
	leaq	48(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	jmp	.LBB20_18
.LBB20_10:                              # %if.then
	cmpl	$2, %ecx
	jne	.LBB20_11
# BB#12:                                # %sw.bb
	movq	8(%r14), %rdi
	movl	$st_gs_type1exec_state, %esi
	movl	$.L.str.9, %edx
	callq	*72(%rdi)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB20_19
# BB#13:                                # %if.end.i
	movl	$11408, %edx            # imm = 0x2C90
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r15, %rdi
	movq	%r15, %rsi
	callq	gs_type1_set_callback_data
	movq	520(%r14), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	$op_type1_cleanup, 24(%rax)
	movq	520(%r14), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$1, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r14)
	movq	%r15, 24(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%r14), %eax
	movq	520(%r14), %rcx
	movw	%ax, (%rcx)
	movslq	11400(%rbx), %rdx
	leaq	16(%rcx), %rax
	movq	%rax, 520(%r14)
	movq	$bbox_getsbw_continue, 24(%rcx)
	movq	520(%r14), %rax
	testq	%rdx, %rdx
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rax
	movq	%rax, 520(%r14)
	jle	.LBB20_16
# BB#14:                                # %for.body.lr.ph.i
	leaq	1(%rdx), %rcx
	shlq	$4, %rdx
	leaq	11288(%rdx,%rbx), %rdx
	.align	16, 0x90
.LBB20_15:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rax)
	movq	520(%r14), %rax
	andw	$-129, (%rax)
	addq	$16, %rax
	movq	%rax, 520(%r14)
	decq	%rcx
	addq	$-16, %rdx
	cmpq	$1, %rcx
	jg	.LBB20_15
.LBB20_16:                              # %type1_push_OtherSubr.exit
	movups	32(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$5, %eax
	jmp	.LBB20_19
.LBB20_7:                               # %land.lhs.true.6.if.else_crit_edge
	movl	11256(%rbx), %eax
.LBB20_8:                               # %if.else
	addq	$-16, %r13
	xorl	%edx, %edx
	cmpl	$0, 11296(%rbx)
	leaq	11224(%rbx), %rsi
	movl	$0, %ecx
	cmoveq	%rsi, %rcx
	cmoveq	%rdx, %rsi
	cmpl	$2, %eax
	cmovneq	%rdx, %rcx
	leaq	11240(%rbx), %r8
	addq	$11264, %rbx            # imm = 0x2C00
	movq	%rsi, 16(%rsp)
	movq	%r12, 8(%rsp)
	movq	%rbp, (%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
.LBB20_18:                              # %cleanup.46
	movq	%rbx, %r9
	callq	zchar_set_cache
.LBB20_19:                              # %cleanup.46
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_11:                              # %sw.default
	testl	%ecx, %ecx
	movl	$-10, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB20_19
.Lfunc_end20:
	.size	type1exec_bbox, .Lfunc_end20-type1exec_bbox
	.cfi_endproc

	.align	16, 0x90
	.type	type1_continue_dispatch,@function
type1_continue_dispatch:                # @type1_continue_dispatch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp159:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp160:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp161:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp162:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp164:
	.cfi_def_cfa_offset 128
.Ltmp165:
	.cfi_offset %rbx, -56
.Ltmp166:
	.cfi_offset %r12, -48
.Ltmp167:
	.cfi_offset %r13, -40
.Ltmp168:
	.cfi_offset %r14, -32
.Ltmp169:
	.cfi_offset %r15, -24
.Ltmp170:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	8(%r12), %rax
	movq	%rax, 56(%rsp)
	xorl	%r14d, %r14d
	testq	%rdx, %rdx
	je	.LBB21_2
# BB#1:                                 # %if.else
	movq	8(%rdx), %rsi
	movl	4(%rdx), %edx
	leaq	16(%rsp), %r14
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gs_glyph_data_from_string
.LBB21_2:                               # %if.end
	movq	%r12, 11216(%rbx)
	movl	%ebp, 11400(%rbx)
	leaq	11304(%rbx), %r15
	movq	624(%r12), %rsi
	leal	-1(%rbp), %eax
	cltq
	shlq	$4, %rax
	subq	%rax, %rsi
	movslq	%ebp, %r13
	shlq	$4, %r13
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	memcpy
	subq	%r13, 624(%r12)
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	gs_type1_set_callback_data
	movq	9856(%rbx), %rax
	leaq	68(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*488(%rax)
	movl	%eax, %ebx
	cmpl	$2, %ebx
	jne	.LBB21_4
# BB#3:                                 # %sw.bb
	movq	(%r12), %rdi
	callq	gs_currentfont
	movq	72(%rax), %rsi
	movq	8(%r12), %rdi
	addq	$96, %rsi
	movslq	68(%rsp), %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	array_get
	movl	%eax, %ebx
	movl	$2, %eax
	testl	%ebx, %ebx
	jns	.LBB21_5
.LBB21_4:                               # %sw.epilog
	movq	624(%r12), %rdi
	addq	$16, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, 624(%r12)
	movl	%ebx, %eax
.LBB21_5:                               # %cleanup.37
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	type1_continue_dispatch, .Lfunc_end21-type1_continue_dispatch
	.cfi_endproc

	.align	16, 0x90
	.type	nobbox_finish,@function
nobbox_finish:                          # @nobbox_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp172:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp173:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp174:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp175:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp176:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp177:
	.cfi_def_cfa_offset 128
.Ltmp178:
	.cfi_offset %rbx, -56
.Ltmp179:
	.cfi_offset %r12, -48
.Ltmp180:
	.cfi_offset %r13, -40
.Ltmp181:
	.cfi_offset %r14, -32
.Ltmp182:
	.cfi_offset %r15, -24
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	624(%rbx), %r13
	callq	op_show_find
	movq	%rax, %r15
	movq	(%rbx), %rdi
	leaq	11264(%r14), %rbp
	xorl	%edx, %edx
	movq	%rbp, %rsi
	callq	gs_upathbbox
	testl	%eax, %eax
	js	.LBB22_27
# BB#1:                                 # %lor.lhs.false
	leaq	-48(%r13), %rdi
	leaq	64(%rsp), %rsi
	callq	font_param
	testl	%eax, %eax
	js	.LBB22_27
# BB#2:                                 # %if.end
	movl	$-21, %eax
	testq	%r15, %r15
	je	.LBB22_27
# BB#3:                                 # %lor.lhs.false.5
	movq	64(%rsp), %r12
	movl	128(%r12), %esi
	decl	%esi
	movb	%sil, %cl
	andb	$15, %cl
	movb	$11, %dl
	shrb	%cl, %dl
	cmpl	$3, %esi
	ja	.LBB22_27
# BB#4:                                 # %lor.lhs.false.5
	andb	$1, %dl
	je	.LBB22_27
# BB#5:                                 # %if.end.8
	movq	$0, 56(%rsp)
	cmpl	$0, 11256(%r14)
	jne	.LBB22_8
# BB#6:                                 # %if.then.10
	movq	(%rbx), %rdi
	leaq	32(%rsp), %rsi
	callq	gs_currentpoint
	testl	%eax, %eax
	js	.LBB22_27
# BB#7:                                 # %if.end.15
	movaps	32(%rsp), %xmm0
	movups	%xmm0, 11240(%r14)
	movl	$2, 11256(%r14)
.LBB22_8:                               # %if.end.19
	movq	(%rbx), %rax
	movq	1872(%rax), %rdi
	xorl	%esi, %esi
	callq	*1304(%rdi)
	cmpl	$2, %eax
	jl	.LBB22_17
# BB#9:                                 # %if.then.25
	movq	(%rbx), %rdi
	callq	gs_newpath
	movq	(%rbx), %rdi
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	callq	gs_moveto
	movq	(%rbx), %rbp
	movq	1760(%rbp), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB22_11
# BB#10:                                # %if.end.i
	movq	1872(%rbp), %rdi
	xorl	%esi, %esi
	callq	*1304(%rdi)
	cmpl	$1, %eax
	jg	.LBB22_12
.LBB22_11:                              # %if.then.3.i
	movq	%r15, %rcx
	addq	$212, %rcx
	movq	212(%r15), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB22_13
.LBB22_17:                              # %if.else
	movl	$nobbox_stroke, %eax
	cmpl	$0, 152(%r12)
	jne	.LBB22_20
# BB#18:                                # %land.rhs
	movq	112(%r15), %rcx
	movl	$nobbox_fill, %eax
	cmpl	$0, 152(%rcx)
	je	.LBB22_20
# BB#19:                                # %select.mid
	movl	$nobbox_stroke, %eax
.LBB22_20:                              # %land.end
	movq	$0, 56(%rsp)
	addq	$-16, %r13
	leaq	11240(%r14), %r8
	cmpl	$0, 11296(%r14)
	je	.LBB22_22
# BB#21:
	addq	$11224, %r14            # imm = 0x2BD8
	jmp	.LBB22_23
.LBB22_22:                              # %select.mid47
	xorl	%r14d, %r14d
.LBB22_23:                              # %select.end46
	movq	%r14, 16(%rsp)
	leaq	56(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rbp, %r9
	callq	zchar_set_cache
	jmp	.LBB22_24
.LBB22_12:                              # %if.else.i
	movl	%eax, %edi
	callq	ilog2
	movl	%eax, 36(%rsp)
	movl	%eax, 32(%rsp)
	movq	%r15, %rcx
	addq	$212, %rcx
.LBB22_13:                              # %if.end.5.i
	movq	1680(%rbp), %rdx
	movb	$1, %al
	testb	$-8, 1(%r15)
	jne	.LBB22_15
# BB#14:                                # %lor.rhs.i
	cmpl	$0, 384(%r15)
	setne	%al
.LBB22_15:                              # %type1_exec_init.exit
	movzbl	%al, %r9d
	movl	152(%r12), %eax
	movq	%r12, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	32(%rsp), %r8
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gs_type1_interp_init
	testl	%eax, %eax
	js	.LBB22_27
# BB#16:                                # %if.end.34
	movq	64(%rsp), %rcx
	leaq	56(%rsp), %r8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	type1exec_bbox
.LBB22_24:                              # %if.end.48
	testl	%eax, %eax
	js	.LBB22_27
# BB#25:                                # %if.end.48
	movq	56(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB22_27
# BB#26:                                # %if.then.51
	movq	%rbx, %rdi
	callq	*%rcx
.LBB22_27:                              # %cleanup.58
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	nobbox_finish, .Lfunc_end22-nobbox_finish
	.cfi_endproc

	.align	16, 0x90
	.type	op_type1_cleanup,@function
op_type1_cleanup:                       # @op_type1_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp184:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rax
	movq	520(%rdi), %rcx
	movq	40(%rcx), %rsi
	movl	$.L.str.11, %edx
	movq	%rax, %rdi
	callq	*24(%rax)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end23:
	.size	op_type1_cleanup, .Lfunc_end23-op_type1_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_finish,@function
bbox_finish:                            # @bbox_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp186:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp187:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp188:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp189:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp190:
	.cfi_def_cfa_offset 56
	subq	$11512, %rsp            # imm = 0x2CF8
.Ltmp191:
	.cfi_def_cfa_offset 11568
.Ltmp192:
	.cfi_offset %rbx, -56
.Ltmp193:
	.cfi_offset %r12, -48
.Ltmp194:
	.cfi_offset %r13, -40
.Ltmp195:
	.cfi_offset %r14, -32
.Ltmp196:
	.cfi_offset %r15, -24
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	624(%r12), %rbx
	callq	op_show_find
	movq	%rax, %r15
	movzbl	1(%rbx), %eax
	xorl	%r13d, %r13d
	cmpl	$18, %eax
	jne	.LBB24_2
# BB#1:
	movq	%r14, 24(%rsp)          # 8-byte Spill
.LBB24_6:                               # %if.end.24
	leaq	-48(%rbx), %rdi
	leaq	11496(%rsp), %rsi
	callq	font_param
	testl	%eax, %eax
	js	.LBB24_35
# BB#7:                                 # %if.end.30
	movl	$-21, %eax
	testq	%r15, %r15
	je	.LBB24_35
# BB#8:                                 # %lor.lhs.false
	movq	11496(%rsp), %r14
	movl	128(%r14), %esi
	decl	%esi
	movb	%sil, %cl
	andb	$15, %cl
	movb	$11, %dl
	shrb	%cl, %dl
	cmpl	$3, %esi
	ja	.LBB24_35
# BB#9:                                 # %lor.lhs.false
	andb	$1, %dl
	je	.LBB24_35
# BB#10:                                # %if.end.35
	movl	512(%r14), %ecx
	testl	%ecx, %ecx
	jle	.LBB24_12
# BB#11:                                # %land.lhs.true
	movl	$-10, %eax
	cmpl	%ecx, 4(%rbx)
	jbe	.LBB24_35
.LBB24_12:                              # %if.end.43
	movq	536(%r12), %rax
	addq	$-80, %rax
	cmpq	%rax, 520(%r12)
	jbe	.LBB24_14
# BB#13:                                # %if.then.51
	leaq	520(%r12), %rdi
	movl	$5, %esi
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB24_35
.LBB24_14:                              # %if.end.59
	movq	(%r12), %rsi
	movq	1760(%rsi), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB24_16
# BB#15:                                # %if.end.i.61
	movq	1872(%rsi), %rdi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	*1304(%rdi)
	movq	16(%rsp), %rsi          # 8-byte Reload
	cmpl	$1, %eax
	jg	.LBB24_17
.LBB24_16:                              # %if.then.3.i
	movq	%r15, %rcx
	addq	$212, %rcx
	movq	212(%r15), %rax
	movq	%rax, 11504(%rsp)
	jmp	.LBB24_18
.LBB24_2:                               # %if.then
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movq	632(%r12), %rcx
	addq	$32, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB24_35
# BB#3:                                 # %if.end
	leaq	64(%rsp), %rdx
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB24_35
# BB#4:                                 # %if.end.11
	movaps	64(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	movzbl	-31(%rbx), %eax
	addq	$-32, %rbx
	cmpl	$18, %eax
	jne	.LBB24_36
# BB#5:
	leaq	48(%rsp), %r13
	jmp	.LBB24_6
.LBB24_36:                              # %if.then.21
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB24_35
.LBB24_17:                              # %if.else.i
	movl	%eax, %edi
	callq	ilog2
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%eax, 11508(%rsp)
	movl	%eax, 11504(%rsp)
	movq	%r15, %rcx
	addq	$212, %rcx
.LBB24_18:                              # %if.end.5.i
	movq	1680(%rsi), %rdx
	movb	$1, %al
	testb	$-8, 1(%r15)
	jne	.LBB24_20
# BB#19:                                # %lor.rhs.i
	cmpl	$0, 384(%r15)
	setne	%al
.LBB24_20:                              # %type1_exec_init.exit
	movzbl	%al, %r9d
	movl	152(%r14), %eax
	movq	%r14, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	88(%rsp), %rdi
	leaq	11504(%rsp), %r8
	callq	gs_type1_interp_init
	testl	%eax, %eax
	js	.LBB24_35
# BB#21:                                # %if.end.64
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	testq	%r13, %r13
	je	.LBB24_23
# BB#22:                                # %if.then.66
	leaq	88(%rsp), %rdi
	movq	%r13, %rsi
	callq	gs_type1_set_lsb
.LBB24_23:                              # %icont.preheader
	testq	%r13, %r13
	setne	%al
	movzbl	%al, %eax
	leal	4(%rax,%rax), %ebp
	leaq	88(%rsp), %r15
	leaq	32(%rsp), %r14
	.align	16, 0x90
.LBB24_24:                              # %icont
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movl	%ebp, %r8d
	callq	type1_continue_dispatch
	cmpl	$1, %eax
	movl	$0, %ebx
	je	.LBB24_24
# BB#25:                                # %icont
	cmpl	$2, %eax
	jne	.LBB24_26
# BB#30:                                # %sw.bb.84
	movq	520(%r12), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r12)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	520(%r12), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	8(%r12), %rdi
	movl	$st_gs_type1exec_state, %esi
	movl	$.L.str.9, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB24_35
# BB#31:                                # %if.end.i
	leaq	88(%rsp), %rbx
	movl	$11408, %edx            # imm = 0x2C90
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	callq	gs_type1_set_callback_data
	movq	520(%r12), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r12)
	movq	$op_type1_cleanup, 24(%rax)
	movq	520(%r12), %rax
	movw	$3712, (%rax)           # imm = 0xE80
	movl	$1, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%r12)
	movq	%rbp, 24(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%r12), %eax
	movq	520(%r12), %rcx
	movw	%ax, (%rcx)
	movslq	11488(%rsp), %rdx
	leaq	16(%rcx), %rax
	movq	%rax, 520(%r12)
	movq	$bbox_continue, 24(%rcx)
	movq	520(%r12), %rax
	testq	%rdx, %rdx
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rax
	movq	%rax, 520(%r12)
	jle	.LBB24_34
# BB#32:                                # %for.body.lr.ph.i
	leaq	1(%rdx), %rcx
	shlq	$4, %rdx
	leaq	11288(%rdx,%rbx), %rdx
	.align	16, 0x90
.LBB24_33:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rax)
	movq	520(%r12), %rax
	andw	$-129, (%rax)
	addq	$16, %rax
	movq	%rax, 520(%r12)
	decq	%rcx
	addq	$-16, %rdx
	cmpq	$1, %rcx
	jg	.LBB24_33
.LBB24_34:                              # %type1_push_OtherSubr.exit
	movups	32(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$5, %eax
	jmp	.LBB24_35
.LBB24_26:                              # %icont
	testl	%eax, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	jne	.LBB24_35
# BB#27:                                # %sw.bb
	testq	%r13, %r13
	je	.LBB24_29
# BB#28:                                # %if.then.78
	addq	$-32, 624(%r12)
.LBB24_29:                              # %if.end.83
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rcx, (%rax)
	xorl	%eax, %eax
.LBB24_35:                              # %cleanup.103
	addq	$11512, %rsp            # imm = 0x2CF8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	bbox_finish, .Lfunc_end24-bbox_finish
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_fill,@function
bbox_fill:                              # @bbox_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp199:
	.cfi_def_cfa_offset 32
.Ltmp200:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdx
	movl	$gs_fill, %esi
	callq	bbox_draw
	testl	%eax, %eax
	js	.LBB25_3
# BB#1:                                 # %entry
	movq	8(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB25_3
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rcx
.LBB25_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end25:
	.size	bbox_fill, .Lfunc_end25-bbox_fill
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4609047899837666815     # double 1.41422
.LCPI26_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI26_2:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	bbox_draw,@function
bbox_draw:                              # @bbox_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp202:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp203:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp204:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp205:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp206:
	.cfi_def_cfa_offset 56
	subq	$11480, %rsp            # imm = 0x2CD8
.Ltmp207:
	.cfi_def_cfa_offset 11536
.Ltmp208:
	.cfi_offset %rbx, -56
.Ltmp209:
	.cfi_offset %r12, -48
.Ltmp210:
	.cfi_offset %r13, -40
.Ltmp211:
	.cfi_offset %r14, -32
.Ltmp212:
	.cfi_offset %r15, -24
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	(%r13), %rdi
	cmpl	$1, 1848(%rdi)
	ja	.LBB26_3
# BB#1:                                 # %if.then
	callq	*%rbx
	testl	%eax, %eax
	js	.LBB26_41
# BB#2:                                 # %if.then.i
	addq	$-64, 624(%r13)
	jmp	.LBB26_41
.LBB26_3:                               # %if.end
	movq	624(%r13), %r12
	leaq	-48(%r12), %rdi
	leaq	11432(%rsp), %rsi
	callq	font_param
	testl	%eax, %eax
	js	.LBB26_41
# BB#4:                                 # %if.end.4
	movq	%r13, %rdi
	callq	op_show_find
	movq	%rax, %r15
	movl	$-21, %eax
	testq	%r15, %r15
	je	.LBB26_41
# BB#5:                                 # %lor.lhs.false
	movq	11432(%rsp), %rcx
	movl	128(%rcx), %esi
	decl	%esi
	movb	%sil, %cl
	andb	$15, %cl
	movb	$11, %dl
	shrb	%cl, %dl
	cmpl	$3, %esi
	ja	.LBB26_41
# BB#6:                                 # %lor.lhs.false
	andb	$1, %dl
	je	.LBB26_41
# BB#7:                                 # %if.end.9
	movq	(%r13), %rdi
	leaq	11440(%rsp), %rsi
	xorl	%edx, %edx
	callq	gs_upathbbox
	testl	%eax, %eax
	js	.LBB26_8
# BB#10:                                # %if.end.23
	movl	$gs_stroke, %eax
	cmpq	%rax, %rbx
	je	.LBB26_12
# BB#11:                                # %if.end.23.if.end.40_crit_edge
	movsd	11464(%rsp), %xmm0      # xmm0 = mem[0],zero
	jmp	.LBB26_13
.LBB26_8:                               # %if.then.13
	cmpl	$-23, %eax
	jne	.LBB26_41
# BB#9:                                 # %if.then.15
	addq	$-64, 624(%r13)
	movq	(%r13), %rdi
	callq	gs_newpath
	xorl	%eax, %eax
	jmp	.LBB26_41
.LBB26_12:                              # %if.then.25
	movq	(%r13), %rdi
	callq	gs_currentlinewidth
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI26_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	11440(%rsp), %xmm1
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	subpd	%xmm0, %xmm1
	movapd	%xmm1, 11440(%rsp)
	addpd	11456(%rsp), %xmm0
	movapd	%xmm0, 11456(%rsp)
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
.LBB26_13:                              # %if.end.40
	movq	11432(%rsp), %rbp
	movsd	400(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB26_19
# BB#14:                                # %land.lhs.true
	movsd	392(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	11456(%rsp), %xmm2
	jb	.LBB26_19
# BB#15:                                # %land.lhs.true.54
	movsd	11448(%rsp), %xmm2      # xmm2 = mem[0],zero
	ucomisd	384(%rbp), %xmm2
	jb	.LBB26_19
# BB#16:                                # %land.lhs.true.62
	movsd	11440(%rsp), %xmm2      # xmm2 = mem[0],zero
	ucomisd	376(%rbp), %xmm2
	jae	.LBB26_17
.LBB26_19:                              # %do.body
	movsd	11440(%rsp), %xmm2      # xmm2 = mem[0],zero
	movsd	376(%rbp), %xmm3        # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB26_21
# BB#20:                                # %if.then.80
	movsd	%xmm2, 376(%rbp)
.LBB26_21:                              # %if.end.86
	movsd	11456(%rsp), %xmm2      # xmm2 = mem[0],zero
	ucomisd	392(%rbp), %xmm2
	jbe	.LBB26_23
# BB#22:                                # %if.then.94
	movsd	%xmm2, 392(%rbp)
.LBB26_23:                              # %if.end.100
	movsd	11448(%rsp), %xmm2      # xmm2 = mem[0],zero
	movsd	384(%rbp), %xmm3        # xmm3 = mem[0],zero
	ucomisd	%xmm2, %xmm3
	jbe	.LBB26_25
# BB#24:                                # %if.then.108
	movsd	%xmm2, 384(%rbp)
.LBB26_25:                              # %if.end.114
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_27
# BB#26:                                # %if.then.122
	movsd	%xmm0, 400(%rbp)
.LBB26_27:                              # %do.end
	movq	%r15, %rdi
	callq	gs_text_retry
	movq	11432(%rsp), %rbx
	movsd	360(%r15), %xmm1        # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB26_29
	jp	.LBB26_29
# BB#28:                                # %land.lhs.true.133
	movsd	368(%r15), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB26_29
	jnp	.LBB26_30
.LBB26_29:                              # %lor.lhs.false.138
	movq	(%r13), %rdi
	callq	gs_rootfont
	cmpl	$0, 148(%rax)
	je	.LBB26_30
# BB#32:                                # %if.else
	movsd	360(%r15), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI26_1(%rip), %xmm0
	movsd	%xmm0, 11248(%rsp)
	movq	368(%r15), %rax
	movq	%rax, 11256(%rsp)
	movq	$0, 11264(%rsp)
	movsd	360(%r15), %xmm0        # xmm0 = mem[0],zero
	xorpd	.LCPI26_2(%rip), %xmm0
	movlpd	%xmm0, 11272(%rsp)
	movl	$1, 11320(%rsp)
	movl	$2, 11280(%rsp)
	jmp	.LBB26_33
.LBB26_30:                              # %if.then.143
	addq	$-16, %r12
	leaq	11248(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	zchar_get_metrics
	testl	%eax, %eax
	js	.LBB26_41
# BB#31:                                # %if.end.149
	movl	%eax, 11280(%rsp)
	movl	$0, 11320(%rsp)
.LBB26_33:                              # %if.end.166
	movq	%rbx, %rbp
	movq	(%r13), %rbx
	movq	1760(%rbx), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB26_35
# BB#34:                                # %if.end.i
	movq	1872(%rbx), %rdi
	xorl	%esi, %esi
	callq	*1304(%rdi)
	cmpl	$1, %eax
	jg	.LBB26_36
.LBB26_35:                              # %if.then.3.i
	movq	%r15, %rcx
	addq	$212, %rcx
	movq	212(%r15), %rax
	movq	%rax, 11472(%rsp)
	jmp	.LBB26_37
.LBB26_36:                              # %if.else.i
	movl	%eax, %edi
	callq	ilog2
	movl	%eax, 11476(%rsp)
	movl	%eax, 11472(%rsp)
	movq	%r15, %rcx
	addq	$212, %rcx
.LBB26_37:                              # %if.end.5.i
	movq	1680(%rbx), %rdx
	movb	$1, %al
	testb	$-8, 1(%r15)
	jne	.LBB26_39
# BB#38:                                # %lor.rhs.i
	cmpl	$0, 384(%r15)
	setne	%al
.LBB26_39:                              # %type1_exec_init.exit
	movzbl	%al, %r9d
	movl	152(%rbp), %eax
	movq	%rbp, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	24(%rsp), %rdi
	leaq	11472(%rsp), %r8
	movq	%rbx, %rsi
	callq	gs_type1_interp_init
	testl	%eax, %eax
	js	.LBB26_41
# BB#40:                                # %if.end.172
	movupd	376(%rbp), %xmm0
	movupd	392(%rbp), %xmm1
	movupd	%xmm1, 11304(%rsp)
	movupd	%xmm0, 11288(%rsp)
	movq	11432(%rsp), %rcx
	leaq	24(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %r8
	callq	type1exec_bbox
.LBB26_41:                              # %cleanup
	addq	$11480, %rsp            # imm = 0x2CD8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_17:                              # %if.then.70
	movq	(%r13), %rdi
	callq	*%rbx
	testl	%eax, %eax
	js	.LBB26_41
# BB#18:                                # %if.then.i.57
	addq	$-64, 624(%r13)
	jmp	.LBB26_41
.Lfunc_end26:
	.size	bbox_draw, .Lfunc_end26-bbox_draw
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_stroke,@function
bbox_stroke:                            # @bbox_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp214:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp215:
	.cfi_def_cfa_offset 32
.Ltmp216:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdx
	movl	$gs_stroke, %esi
	callq	bbox_draw
	testl	%eax, %eax
	js	.LBB27_3
# BB#1:                                 # %entry
	movq	8(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB27_3
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rcx
.LBB27_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end27:
	.size	bbox_stroke, .Lfunc_end27-bbox_stroke
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"4.type1execchar"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"4%bbox_getsbw_continue"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"4%bbox_continue"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"4%bbox_finish_fill"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"4%bbox_finish_stroke"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"4%nobbox_continue"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"4%nobbox_fill"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"4%nobbox_stroke"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"4.setweightvector"
	.size	.L.str.8, 18

	.type	zchar1_op_defs,@object  # @zchar1_op_defs
	.section	.rodata,"a",@progbits
	.globl	zchar1_op_defs
	.align	16
zchar1_op_defs:
	.quad	.L.str
	.quad	ztype1execchar
	.quad	.L.str.1
	.quad	bbox_getsbw_continue
	.quad	.L.str.2
	.quad	bbox_continue
	.quad	.L.str.3
	.quad	bbox_finish_fill
	.quad	.L.str.4
	.quad	bbox_finish_stroke
	.quad	.L.str.5
	.quad	nobbox_continue
	.quad	.L.str.6
	.quad	nobbox_fill
	.quad	.L.str.7
	.quad	nobbox_stroke
	.quad	.L.str.8
	.quad	zsetweightvector
	.zero	16
	.size	zchar1_op_defs, 160

	.type	z1_data_procs,@object   # @z1_data_procs
	.globl	z1_data_procs
	.align	8
z1_data_procs:
	.quad	z1_glyph_data
	.quad	z1_subr_data
	.quad	z1_seac_data
	.quad	z1_push
	.quad	z1_pop
	.size	z1_data_procs, 40

	.type	.Lz1_set_cache.id_matrix,@object # @z1_set_cache.id_matrix
	.align	4
.Lz1_set_cache.id_matrix:
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.size	.Lz1_set_cache.id_matrix, 24

	.type	st_gs_type1exec_state,@object # @st_gs_type1exec_state
	.align	8
st_gs_type1exec_state:
	.long	11408                   # 0x2c90
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gs_type1exec_state_reloc_ptrs
	.size	st_gs_type1exec_state, 64

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"type1_call_OtherSubr"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gs_type1exec_state"
	.size	.L.str.10, 19

	.type	gs_type1exec_state_reloc_ptrs,@object # @gs_type1exec_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gs_type1exec_state_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_type1_state
	.quad	gs_type1exec_state_enum_ptrs
	.size	gs_type1exec_state_reloc_ptrs, 24

	.type	gs_type1exec_state_enum_ptrs,@object # @gs_type1exec_state_enum_ptrs
	.align	2
gs_type1exec_state_enum_ptrs:
	.short	0                       # 0x0
	.short	11216                   # 0x2bd0
	.size	gs_type1exec_state_enum_ptrs, 4

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"op_type1_cleanup"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"op_type1_free"
	.size	.L.str.12, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
