	.text
	.file	"gimprgb.bc"
	.globl	gimp_rgb_get_type
	.align	16, 0x90
	.type	gimp_rgb_get_type,@function
gimp_rgb_get_type:                      # @gimp_rgb_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_rgb_get_type.rgb_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	leaq	gimp_rgb_copy(%rip), %rax
	movq	g_free@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	callq	g_boxed_type_register_static@PLT
	movq	%rax, gimp_rgb_get_type.rgb_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_rgb_get_type.rgb_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rgb_get_type, .Lfunc_end0-gimp_rgb_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgb_copy,@function
gimp_rgb_copy:                          # @gimp_rgb_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$32, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_memdup@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rgb_copy, .Lfunc_end1-gimp_rgb_copy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_value_get_rgb
	.align	16, 0x90
	.type	gimp_value_get_rgb,@function
gimp_value_get_rgb:                     # @gimp_value_get_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_rgb_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_7
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -36(%rbp)
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_9
# BB#8:                                 # %if.then.6
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.7
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_value_get_rgb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_19
.LBB2_10:                               # %if.end.8
	jmp	.LBB2_11
.LBB2_11:                               # %do.end
	jmp	.LBB2_12
.LBB2_12:                               # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.11
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.12
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_value_get_rgb(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_19
.LBB2_15:                               # %if.end.13
	jmp	.LBB2_16
.LBB2_16:                               # %do.end.14
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_18
# BB#17:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.20
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
.LBB2_19:                               # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_value_get_rgb, .Lfunc_end2-gimp_value_get_rgb
	.cfi_endproc

	.globl	gimp_rgba_set
	.align	16, 0x90
	.type	gimp_rgba_set,@function
gimp_rgba_set:                          # @gimp_rgba_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_set(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB3_6:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rgba_set, .Lfunc_end3-gimp_rgba_set
	.cfi_endproc

	.globl	gimp_value_set_rgb
	.align	16, 0x90
	.type	gimp_value_set_rgb,@function
gimp_value_set_rgb:                     # @gimp_value_set_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_rgb_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_7
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -36(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.6
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.7
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_value_set_rgb(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_17
.LBB4_10:                               # %if.end.8
	jmp	.LBB4_11
.LBB4_11:                               # %do.end
	jmp	.LBB4_12
.LBB4_12:                               # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.11
	jmp	.LBB4_15
.LBB4_14:                               # %if.else.12
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_value_set_rgb(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_17
.LBB4_15:                               # %if.end.13
	jmp	.LBB4_16
.LBB4_16:                               # %do.end.14
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed@PLT
.LBB4_17:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_value_set_rgb, .Lfunc_end4-gimp_value_set_rgb
	.cfi_endproc

	.globl	gimp_rgb_set
	.align	16, 0x90
	.type	gimp_rgb_set,@function
gimp_rgb_set:                           # @gimp_rgb_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_set(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB5_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rgb_set, .Lfunc_end5-gimp_rgb_set
	.cfi_endproc

	.globl	gimp_rgb_set_alpha
	.align	16, 0x90
	.type	gimp_rgb_set_alpha,@function
gimp_rgb_set_alpha:                     # @gimp_rgb_set_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_set_alpha(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB6_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_rgb_set_alpha, .Lfunc_end6-gimp_rgb_set_alpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_rgb_set_uchar
	.align	16, 0x90
	.type	gimp_rgb_set_uchar,@function
gimp_rgb_set_uchar:                     # @gimp_rgb_set_uchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%cl, %al
	movb	%dl, %r8b
	movb	%sil, %r9b
	movq	%rdi, -8(%rbp)
	movb	%r9b, -9(%rbp)
	movb	%r8b, -10(%rbp)
	movb	%al, -11(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_set_uchar(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_6
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movzbl	-9(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI7_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movzbl	-10(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movzbl	-11(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, 16(%rcx)
.LBB7_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rgb_set_uchar, .Lfunc_end7-gimp_rgb_set_uchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
.LCPI8_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_rgb_get_uchar
	.align	16, 0x90
	.type	gimp_rgb_get_uchar,@function
gimp_rgb_get_uchar:                     # @gimp_rgb_get_uchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_get_uchar(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_29
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB8_13
# BB#6:                                 # %if.then.1
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_8
# BB#7:                                 # %cond.true
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB8_12
.LBB8_8:                                # %cond.false
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB8_10
# BB#9:                                 # %cond.true.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB8_11
.LBB8_10:                               # %cond.false.7
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB8_11:                               # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB8_12:                               # %cond.end.9
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB8_13:                               # %if.end.12
	cmpq	$0, -24(%rbp)
	je	.LBB8_21
# BB#14:                                # %if.then.14
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_16
# BB#15:                                # %cond.true.18
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB8_20
.LBB8_16:                               # %cond.false.19
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB8_18
# BB#17:                                # %cond.true.23
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB8_19
.LBB8_18:                               # %cond.false.24
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB8_19:                               # %cond.end.26
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB8_20:                               # %cond.end.28
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB8_21:                               # %if.end.34
	cmpq	$0, -32(%rbp)
	je	.LBB8_29
# BB#22:                                # %if.then.36
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_24
# BB#23:                                # %cond.true.40
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB8_28
.LBB8_24:                               # %cond.false.41
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB8_26
# BB#25:                                # %cond.true.45
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB8_27
.LBB8_26:                               # %cond.false.46
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB8_27:                               # %cond.end.48
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB8_28:                               # %cond.end.50
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB8_29:                               # %if.end.56
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_rgb_get_uchar, .Lfunc_end8-gimp_rgb_get_uchar
	.cfi_endproc

	.globl	gimp_rgb_add
	.align	16, 0x90
	.type	gimp_rgb_add,@function
gimp_rgb_add:                           # @gimp_rgb_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_add(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_11
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.3
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_add(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_11
.LBB9_9:                                # %if.end.5
	jmp	.LBB9_10
.LBB9_10:                               # %do.end.6
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
.LBB9_11:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rgb_add, .Lfunc_end9-gimp_rgb_add
	.cfi_endproc

	.globl	gimp_rgb_subtract
	.align	16, 0x90
	.type	gimp_rgb_subtract,@function
gimp_rgb_subtract:                      # @gimp_rgb_subtract
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_subtract(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_11
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then.3
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_subtract(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_11
.LBB10_9:                               # %if.end.5
	jmp	.LBB10_10
.LBB10_10:                              # %do.end.6
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rax)
.LBB10_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_rgb_subtract, .Lfunc_end10-gimp_rgb_subtract
	.cfi_endproc

	.globl	gimp_rgb_multiply
	.align	16, 0x90
	.type	gimp_rgb_multiply,@function
gimp_rgb_multiply:                      # @gimp_rgb_multiply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_multiply(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_6
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
.LBB11_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_rgb_multiply, .Lfunc_end11-gimp_rgb_multiply
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_rgb_distance
	.align	16, 0x90
	.type	gimp_rgb_distance,@function
gimp_rgb_distance:                      # @gimp_rgb_distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_distance(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_11
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	jmp	.LBB12_6
.LBB12_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB12_8
# BB#7:                                 # %if.then.3
	jmp	.LBB12_9
.LBB12_8:                               # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_distance(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_11
.LBB12_9:                               # %if.end.5
	jmp	.LBB12_10
.LBB12_10:                              # %do.end.6
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm0
	movapd	.LCPI12_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	8(%rax), %xmm1
	movapd	.LCPI12_0(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	16(%rax), %xmm1
	movapd	.LCPI12_0(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB12_11:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_rgb_distance, .Lfunc_end12-gimp_rgb_distance
	.cfi_endproc

	.globl	gimp_rgb_max
	.align	16, 0x90
	.type	gimp_rgb_max,@function
gimp_rgb_max:                           # @gimp_rgb_max
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_max(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_14
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB13_10
# BB#6:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB13_8
# BB#7:                                 # %cond.true
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB13_9:                               # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_14
.LBB13_10:                              # %if.else.7
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB13_12
# BB#11:                                # %cond.true.11
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB13_13
.LBB13_12:                              # %cond.false.13
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB13_13:                              # %cond.end.15
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB13_14:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_rgb_max, .Lfunc_end13-gimp_rgb_max
	.cfi_endproc

	.globl	gimp_rgb_min
	.align	16, 0x90
	.type	gimp_rgb_min,@function
gimp_rgb_min:                           # @gimp_rgb_min
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_min(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_14
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_10
# BB#6:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_8
# BB#7:                                 # %cond.true
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB14_9:                               # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_14
.LBB14_10:                              # %if.else.7
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_12
# BB#11:                                # %cond.true.11
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false.13
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB14_13:                              # %cond.end.15
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB14_14:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_rgb_min, .Lfunc_end14-gimp_rgb_min
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_rgb_clamp
	.align	16, 0x90
	.type	gimp_rgb_clamp,@function
gimp_rgb_clamp:                         # @gimp_rgb_clamp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_clamp(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_30
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_7
# BB#6:                                 # %cond.true
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	jmp	.LBB15_11
.LBB15_7:                               # %cond.false
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB15_9
# BB#8:                                 # %cond.true.4
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB15_10
.LBB15_9:                               # %cond.false.5
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB15_10:                              # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
.LBB15_11:                              # %cond.end.7
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_13
# BB#12:                                # %cond.true.11
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB15_17
.LBB15_13:                              # %cond.false.12
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB15_15
# BB#14:                                # %cond.true.15
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB15_16
.LBB15_15:                              # %cond.false.16
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB15_16:                              # %cond.end.18
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB15_17:                              # %cond.end.20
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_19
# BB#18:                                # %cond.true.24
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB15_23
.LBB15_19:                              # %cond.false.25
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB15_21
# BB#20:                                # %cond.true.28
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB15_22
.LBB15_21:                              # %cond.false.29
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB15_22:                              # %cond.end.31
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB15_23:                              # %cond.end.33
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_25
# BB#24:                                # %cond.true.37
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB15_29
.LBB15_25:                              # %cond.false.38
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB15_27
# BB#26:                                # %cond.true.41
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB15_28
.LBB15_27:                              # %cond.false.42
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB15_28:                              # %cond.end.44
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB15_29:                              # %cond.end.46
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB15_30:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_rgb_clamp, .Lfunc_end15-gimp_rgb_clamp
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_rgb_gamma
	.align	16, 0x90
	.type	gimp_rgb_gamma,@function
gimp_rgb_gamma:                         # @gimp_rgb_gamma
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_gamma(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB16_9
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	xorps	%xmm0, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB16_6
	jp	.LBB16_6
	jmp	.LBB16_7
.LBB16_6:                               # %if.then.2
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB16_8
.LBB16_7:                               # %if.else.3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB16_8:                               # %if.end.4
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow@PLT
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow@PLT
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow@PLT
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
.LBB16_9:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_rgb_gamma, .Lfunc_end16-gimp_rgb_gamma
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
.LCPI17_1:
	.quad	4589866978952703325     # double 0.0722
.LCPI17_2:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI17_3:
	.quad	4596827742536767164     # double 0.21260000000000001
	.text
	.globl	gimp_rgb_luminance
	.align	16, 0x90
	.type	gimp_rgb_luminance,@function
gimp_rgb_luminance:                     # @gimp_rgb_luminance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_luminance(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB17_12
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	movsd	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI17_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI17_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI17_3(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm3
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm2
	addsd	%xmm2, %xmm3
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -24(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_7
# BB#6:                                 # %cond.true
	movsd	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB17_11
.LBB17_7:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB17_9
# BB#8:                                 # %cond.true.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB17_10
.LBB17_9:                               # %cond.false.7
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB17_10:                              # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB17_11:                              # %cond.end.8
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB17_12:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_rgb_luminance, .Lfunc_end17-gimp_rgb_luminance
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4602678819172646912     # double 0.5
.LCPI18_1:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_rgb_luminance_uchar
	.align	16, 0x90
	.type	gimp_rgb_luminance_uchar,@function
gimp_rgb_luminance_uchar:               # @gimp_rgb_luminance_uchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_luminance_uchar(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movb	$0, -1(%rbp)
	jmp	.LBB18_6
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_luminance@PLT
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI18_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
.LBB18_6:                               # %return
	movzbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_rgb_luminance_uchar, .Lfunc_end18-gimp_rgb_luminance_uchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
.LCPI19_1:
	.quad	4592590756007337001     # double 0.11
.LCPI19_2:
	.quad	4603489467105573601     # double 0.58999999999999997
.LCPI19_3:
	.quad	4599075939470750515     # double 0.29999999999999999
	.text
	.globl	gimp_rgb_intensity
	.align	16, 0x90
	.type	gimp_rgb_intensity,@function
gimp_rgb_intensity:                     # @gimp_rgb_intensity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_intensity(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB19_12
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI19_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI19_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI19_3(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	(%rax), %xmm3
	movq	-16(%rbp), %rax
	mulsd	8(%rax), %xmm2
	addsd	%xmm2, %xmm3
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -24(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_7
# BB#6:                                 # %cond.true
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB19_11
.LBB19_7:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB19_9
# BB#8:                                 # %cond.true.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB19_10
.LBB19_9:                               # %cond.false.7
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB19_10:                              # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB19_11:                              # %cond.end.8
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB19_12:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_rgb_intensity, .Lfunc_end19-gimp_rgb_intensity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4602678819172646912     # double 0.5
.LCPI20_1:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_rgb_intensity_uchar
	.align	16, 0x90
	.type	gimp_rgb_intensity_uchar,@function
gimp_rgb_intensity_uchar:               # @gimp_rgb_intensity_uchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB20_3
# BB#2:                                 # %if.then
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_intensity_uchar(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movb	$0, -1(%rbp)
	jmp	.LBB20_6
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_intensity@PLT
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI20_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -1(%rbp)
.LBB20_6:                               # %return
	movzbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_rgb_intensity_uchar, .Lfunc_end20-gimp_rgb_intensity_uchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_rgb_composite
	.align	16, 0x90
	.type	gimp_rgb_composite,@function
gimp_rgb_composite:                     # @gimp_rgb_composite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_composite(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB21_19
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	jmp	.LBB21_6
.LBB21_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB21_8
# BB#7:                                 # %if.then.3
	jmp	.LBB21_9
.LBB21_8:                               # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgb_composite(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB21_19
.LBB21_9:                               # %if.end.5
	jmp	.LBB21_10
.LBB21_10:                              # %do.end.6
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB21_11
	jmp	.LBB21_20
.LBB21_20:                              # %do.end.6
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB21_12
	jmp	.LBB21_21
.LBB21_21:                              # %do.end.6
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB21_16
	jmp	.LBB21_19
.LBB21_11:                              # %sw.bb
	jmp	.LBB21_19
.LBB21_12:                              # %sw.bb.7
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_14
	jp	.LBB21_14
# BB#13:                                # %if.then.9
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	jmp	.LBB21_15
.LBB21_14:                              # %if.else.10
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	24(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB21_15:                              # %if.end.33
	jmp	.LBB21_19
.LBB21_16:                              # %sw.bb.34
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB21_18
# BB#17:                                # %if.then.37
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	24(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	24(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	24(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	24(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	24(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB21_18:                              # %if.end.67
	jmp	.LBB21_19
.LBB21_19:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_rgb_composite, .Lfunc_end21-gimp_rgb_composite
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_rgba_set_uchar
	.align	16, 0x90
	.type	gimp_rgba_set_uchar,@function
gimp_rgba_set_uchar:                    # @gimp_rgba_set_uchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%r8b, %al
	movb	%cl, %r9b
	movb	%dl, %r10b
	movb	%sil, %r11b
	movq	%rdi, -8(%rbp)
	movb	%r11b, -9(%rbp)
	movb	%r10b, -10(%rbp)
	movb	%r9b, -11(%rbp)
	movb	%al, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_set_uchar(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB22_6
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	movsd	.LCPI22_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movzbl	-9(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI22_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movzbl	-10(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movzbl	-11(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm2, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, 16(%rcx)
	movzbl	-12(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rcx
	movsd	%xmm1, 24(%rcx)
.LBB22_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_rgba_set_uchar, .Lfunc_end22-gimp_rgba_set_uchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4607182418800017408     # double 1
.LCPI23_1:
	.quad	4602678819172646912     # double 0.5
.LCPI23_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_rgba_get_uchar
	.align	16, 0x90
	.type	gimp_rgba_get_uchar,@function
gimp_rgba_get_uchar:                    # @gimp_rgba_get_uchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB23_3
# BB#2:                                 # %if.then
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_get_uchar(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB23_37
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB23_13
# BB#6:                                 # %if.then.1
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_8
# BB#7:                                 # %cond.true
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB23_12
.LBB23_8:                               # %cond.false
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB23_10
# BB#9:                                 # %cond.true.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB23_11
.LBB23_10:                              # %cond.false.7
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB23_11:                              # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB23_12:                              # %cond.end.9
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI23_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI23_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB23_13:                              # %if.end.12
	cmpq	$0, -24(%rbp)
	je	.LBB23_21
# BB#14:                                # %if.then.14
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_16
# BB#15:                                # %cond.true.18
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB23_20
.LBB23_16:                              # %cond.false.19
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB23_18
# BB#17:                                # %cond.true.23
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB23_19
.LBB23_18:                              # %cond.false.24
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB23_19:                              # %cond.end.26
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB23_20:                              # %cond.end.28
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI23_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI23_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB23_21:                              # %if.end.34
	cmpq	$0, -32(%rbp)
	je	.LBB23_29
# BB#22:                                # %if.then.36
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_24
# BB#23:                                # %cond.true.40
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB23_28
.LBB23_24:                              # %cond.false.41
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB23_26
# BB#25:                                # %cond.true.45
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB23_27
.LBB23_26:                              # %cond.false.46
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB23_27:                              # %cond.end.48
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB23_28:                              # %cond.end.50
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI23_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI23_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB23_29:                              # %if.end.56
	cmpq	$0, -40(%rbp)
	je	.LBB23_37
# BB#30:                                # %if.then.58
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB23_32
# BB#31:                                # %cond.true.62
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB23_36
.LBB23_32:                              # %cond.false.63
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB23_34
# BB#33:                                # %cond.true.67
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB23_35
.LBB23_34:                              # %cond.false.68
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB23_35:                              # %cond.end.70
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB23_36:                              # %cond.end.72
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI23_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI23_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB23_37:                              # %if.end.78
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_rgba_get_uchar, .Lfunc_end23-gimp_rgba_get_uchar
	.cfi_endproc

	.globl	gimp_rgba_add
	.align	16, 0x90
	.type	gimp_rgba_add,@function
gimp_rgba_add:                          # @gimp_rgba_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB24_3
# BB#2:                                 # %if.then
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_add(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB24_11
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	jmp	.LBB24_6
.LBB24_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB24_8
# BB#7:                                 # %if.then.3
	jmp	.LBB24_9
.LBB24_8:                               # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_add(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB24_11
.LBB24_9:                               # %if.end.5
	jmp	.LBB24_10
.LBB24_10:                              # %do.end.6
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	%xmm0, 24(%rax)
.LBB24_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_rgba_add, .Lfunc_end24-gimp_rgba_add
	.cfi_endproc

	.globl	gimp_rgba_subtract
	.align	16, 0x90
	.type	gimp_rgba_subtract,@function
gimp_rgba_subtract:                     # @gimp_rgba_subtract
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB25_3
# BB#2:                                 # %if.then
	jmp	.LBB25_4
.LBB25_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_subtract(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB25_11
.LBB25_4:                               # %if.end
	jmp	.LBB25_5
.LBB25_5:                               # %do.end
	jmp	.LBB25_6
.LBB25_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB25_8
# BB#7:                                 # %if.then.3
	jmp	.LBB25_9
.LBB25_8:                               # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_subtract(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB25_11
.LBB25_9:                               # %if.end.5
	jmp	.LBB25_10
.LBB25_10:                              # %do.end.6
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rax)
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rax)
.LBB25_11:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_rgba_subtract, .Lfunc_end25-gimp_rgba_subtract
	.cfi_endproc

	.globl	gimp_rgba_multiply
	.align	16, 0x90
	.type	gimp_rgba_multiply,@function
gimp_rgba_multiply:                     # @gimp_rgba_multiply
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB26_3
# BB#2:                                 # %if.then
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_multiply(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB26_6
.LBB26_4:                               # %if.end
	jmp	.LBB26_5
.LBB26_5:                               # %do.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	24(%rax), %xmm0
	movsd	%xmm0, 24(%rax)
.LBB26_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_rgba_multiply, .Lfunc_end26-gimp_rgba_multiply
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI27_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_rgba_distance
	.align	16, 0x90
	.type	gimp_rgba_distance,@function
gimp_rgba_distance:                     # @gimp_rgba_distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB27_3
# BB#2:                                 # %if.then
	jmp	.LBB27_4
.LBB27_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_distance(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB27_11
.LBB27_4:                               # %if.end
	jmp	.LBB27_5
.LBB27_5:                               # %do.end
	jmp	.LBB27_6
.LBB27_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB27_8
# BB#7:                                 # %if.then.3
	jmp	.LBB27_9
.LBB27_8:                               # %if.else.4
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_rgba_distance(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB27_11
.LBB27_9:                               # %if.end.5
	jmp	.LBB27_10
.LBB27_10:                              # %do.end.6
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	(%rax), %xmm0
	movapd	.LCPI27_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	8(%rax), %xmm1
	movapd	.LCPI27_0(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	16(%rax), %xmm1
	movapd	.LCPI27_0(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	24(%rax), %xmm1
	movapd	.LCPI27_0(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB27_11:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_rgba_distance, .Lfunc_end27-gimp_rgba_distance
	.cfi_endproc

	.globl	gimp_param_rgb_get_type
	.align	16, 0x90
	.type	gimp_param_rgb_get_type,@function
gimp_param_rgb_get_type:                # @gimp_param_rgb_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_rgb_get_type.spec_type(%rip)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_param_rgb_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_param_rgb_get_type.spec_type(%rip)
.LBB28_2:                               # %if.end
	movq	gimp_param_rgb_get_type.spec_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_param_rgb_get_type, .Lfunc_end28-gimp_param_rgb_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_rgb_class_init,@function
gimp_param_rgb_class_init:              # @gimp_param_rgb_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_rgb_get_type@PLT
	leaq	gimp_param_rgb_values_cmp(%rip), %rdi
	leaq	gimp_param_rgb_validate(%rip), %rcx
	leaq	gimp_param_rgb_set_default(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_param_rgb_class_init, .Lfunc_end29-gimp_param_rgb_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_param_rgb_init,@function
gimp_param_rgb_init:                    # @gimp_param_rgb_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_rgb_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_param_rgb_init, .Lfunc_end30-gimp_param_rgb_init
	.cfi_endproc

	.globl	gimp_param_spec_rgb
	.align	16, 0x90
	.type	gimp_param_spec_rgb,@function
gimp_param_spec_rgb:                    # @gimp_param_spec_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	callq	gimp_param_rgb_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal@PLT
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 72(%rax)
	cmpq	$0, -40(%rbp)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 96(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 104(%rax)
.LBB31_2:                               # %if.end
	movl	$76, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_param_spec_rgb, .Lfunc_end31-gimp_param_spec_rgb
	.cfi_endproc

	.globl	gimp_param_spec_rgb_has_alpha
	.align	16, 0x90
	.type	gimp_param_spec_rgb_has_alpha,@function
gimp_param_spec_rgb_has_alpha:          # @gimp_param_spec_rgb_has_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_param_rgb_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_param_spec_rgb_has_alpha(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB32_13
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_param_rgb_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	72(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB32_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_param_spec_rgb_has_alpha, .Lfunc_end32-gimp_param_spec_rgb_has_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_rgb_set_default,@function
gimp_param_rgb_set_default:             # @gimp_param_rgb_set_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_param_rgb_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rsi
	callq	g_value_set_static_boxed@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_param_rgb_set_default, .Lfunc_end33-gimp_param_rgb_set_default
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_rgb_validate,@function
gimp_param_rgb_validate:                # @gimp_param_rgb_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB34_8
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_rgb_clamp@PLT
	movb	$1, %dl
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	(%rax), %xmm0
	movb	%dl, -65(%rbp)          # 1-byte Spill
	jne	.LBB34_7
	jp	.LBB34_7
# BB#2:                                 # %lor.lhs.false
	movb	$1, %al
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	ucomisd	8(%rcx), %xmm0
	movb	%al, -65(%rbp)          # 1-byte Spill
	jne	.LBB34_7
	jp	.LBB34_7
# BB#3:                                 # %lor.lhs.false.4
	movb	$1, %al
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	ucomisd	16(%rcx), %xmm0
	movb	%al, -65(%rbp)          # 1-byte Spill
	jne	.LBB34_7
	jp	.LBB34_7
# BB#4:                                 # %lor.rhs
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_param_rgb_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, 72(%rax)
	movb	%dl, -81(%rbp)          # 1-byte Spill
	je	.LBB34_6
# BB#5:                                 # %land.rhs
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	setne	%cl
	setp	%dl
	orb	%dl, %cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB34_6:                               # %land.end
	movb	-81(%rbp), %al          # 1-byte Reload
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB34_7:                               # %lor.end
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB34_9
.LBB34_8:                               # %if.end
	movl	$0, -4(%rbp)
.LBB34_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_param_rgb_validate, .Lfunc_end34-gimp_param_rgb_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_rgb_values_cmp,@function
gimp_param_rgb_values_cmp:              # @gimp_param_rgb_values_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB35_8
.LBB35_2:                               # %if.else
	cmpq	$0, -48(%rbp)
	jne	.LBB35_4
# BB#3:                                 # %if.then.5
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB35_8
.LBB35_4:                               # %if.else.7
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_param_rgb_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpl	$0, 72(%rax)
	je	.LBB35_6
# BB#5:                                 # %if.then.10
	leaq	-52(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	addq	$2, %rsi
	addq	$3, %rax
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_rgba_get_uchar@PLT
	leaq	-56(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	addq	$2, %rsi
	addq	$3, %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_rgba_get_uchar@PLT
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.18
	leaq	-52(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, %rdx
	addq	$1, %rdx
	addq	$2, %rax
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	gimp_rgb_get_uchar@PLT
	leaq	-56(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rax, %rdx
	addq	$1, %rdx
	addq	$2, %rax
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	gimp_rgb_get_uchar@PLT
.LBB35_7:                               # %if.end
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB35_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_param_rgb_values_cmp, .Lfunc_end35-gimp_param_rgb_values_cmp
	.cfi_endproc

	.type	gimp_rgb_get_type.rgb_type,@object # @gimp_rgb_get_type.rgb_type
	.local	gimp_rgb_get_type.rgb_type
	.comm	gimp_rgb_get_type.rgb_type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRGB"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpColor"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_value_get_rgb,@object # @__func__.gimp_value_get_rgb
.L__func__.gimp_value_get_rgb:
	.asciz	"gimp_value_get_rgb"
	.size	.L__func__.gimp_value_get_rgb, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_VALUE_HOLDS_RGB (value)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rgb != NULL"
	.size	.L.str.3, 12

	.type	.L__func__.gimp_value_set_rgb,@object # @__func__.gimp_value_set_rgb
.L__func__.gimp_value_set_rgb:
	.asciz	"gimp_value_set_rgb"
	.size	.L__func__.gimp_value_set_rgb, 19

	.type	.L__func__.gimp_rgb_set,@object # @__func__.gimp_rgb_set
.L__func__.gimp_rgb_set:
	.asciz	"gimp_rgb_set"
	.size	.L__func__.gimp_rgb_set, 13

	.type	.L__func__.gimp_rgb_set_alpha,@object # @__func__.gimp_rgb_set_alpha
.L__func__.gimp_rgb_set_alpha:
	.asciz	"gimp_rgb_set_alpha"
	.size	.L__func__.gimp_rgb_set_alpha, 19

	.type	.L__func__.gimp_rgb_set_uchar,@object # @__func__.gimp_rgb_set_uchar
.L__func__.gimp_rgb_set_uchar:
	.asciz	"gimp_rgb_set_uchar"
	.size	.L__func__.gimp_rgb_set_uchar, 19

	.type	.L__func__.gimp_rgb_get_uchar,@object # @__func__.gimp_rgb_get_uchar
.L__func__.gimp_rgb_get_uchar:
	.asciz	"gimp_rgb_get_uchar"
	.size	.L__func__.gimp_rgb_get_uchar, 19

	.type	.L__func__.gimp_rgb_add,@object # @__func__.gimp_rgb_add
.L__func__.gimp_rgb_add:
	.asciz	"gimp_rgb_add"
	.size	.L__func__.gimp_rgb_add, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rgb1 != NULL"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"rgb2 != NULL"
	.size	.L.str.5, 13

	.type	.L__func__.gimp_rgb_subtract,@object # @__func__.gimp_rgb_subtract
.L__func__.gimp_rgb_subtract:
	.asciz	"gimp_rgb_subtract"
	.size	.L__func__.gimp_rgb_subtract, 18

	.type	.L__func__.gimp_rgb_multiply,@object # @__func__.gimp_rgb_multiply
.L__func__.gimp_rgb_multiply:
	.asciz	"gimp_rgb_multiply"
	.size	.L__func__.gimp_rgb_multiply, 18

	.type	.L__func__.gimp_rgb_distance,@object # @__func__.gimp_rgb_distance
.L__func__.gimp_rgb_distance:
	.asciz	"gimp_rgb_distance"
	.size	.L__func__.gimp_rgb_distance, 18

	.type	.L__func__.gimp_rgb_max,@object # @__func__.gimp_rgb_max
.L__func__.gimp_rgb_max:
	.asciz	"gimp_rgb_max"
	.size	.L__func__.gimp_rgb_max, 13

	.type	.L__func__.gimp_rgb_min,@object # @__func__.gimp_rgb_min
.L__func__.gimp_rgb_min:
	.asciz	"gimp_rgb_min"
	.size	.L__func__.gimp_rgb_min, 13

	.type	.L__func__.gimp_rgb_clamp,@object # @__func__.gimp_rgb_clamp
.L__func__.gimp_rgb_clamp:
	.asciz	"gimp_rgb_clamp"
	.size	.L__func__.gimp_rgb_clamp, 15

	.type	.L__func__.gimp_rgb_gamma,@object # @__func__.gimp_rgb_gamma
.L__func__.gimp_rgb_gamma:
	.asciz	"gimp_rgb_gamma"
	.size	.L__func__.gimp_rgb_gamma, 15

	.type	.L__func__.gimp_rgb_luminance,@object # @__func__.gimp_rgb_luminance
.L__func__.gimp_rgb_luminance:
	.asciz	"gimp_rgb_luminance"
	.size	.L__func__.gimp_rgb_luminance, 19

	.type	.L__func__.gimp_rgb_luminance_uchar,@object # @__func__.gimp_rgb_luminance_uchar
.L__func__.gimp_rgb_luminance_uchar:
	.asciz	"gimp_rgb_luminance_uchar"
	.size	.L__func__.gimp_rgb_luminance_uchar, 25

	.type	.L__func__.gimp_rgb_intensity,@object # @__func__.gimp_rgb_intensity
.L__func__.gimp_rgb_intensity:
	.asciz	"gimp_rgb_intensity"
	.size	.L__func__.gimp_rgb_intensity, 19

	.type	.L__func__.gimp_rgb_intensity_uchar,@object # @__func__.gimp_rgb_intensity_uchar
.L__func__.gimp_rgb_intensity_uchar:
	.asciz	"gimp_rgb_intensity_uchar"
	.size	.L__func__.gimp_rgb_intensity_uchar, 25

	.type	.L__func__.gimp_rgb_composite,@object # @__func__.gimp_rgb_composite
.L__func__.gimp_rgb_composite:
	.asciz	"gimp_rgb_composite"
	.size	.L__func__.gimp_rgb_composite, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"color1 != NULL"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color2 != NULL"
	.size	.L.str.7, 15

	.type	.L__func__.gimp_rgba_set,@object # @__func__.gimp_rgba_set
.L__func__.gimp_rgba_set:
	.asciz	"gimp_rgba_set"
	.size	.L__func__.gimp_rgba_set, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"rgba != NULL"
	.size	.L.str.8, 13

	.type	.L__func__.gimp_rgba_set_uchar,@object # @__func__.gimp_rgba_set_uchar
.L__func__.gimp_rgba_set_uchar:
	.asciz	"gimp_rgba_set_uchar"
	.size	.L__func__.gimp_rgba_set_uchar, 20

	.type	.L__func__.gimp_rgba_get_uchar,@object # @__func__.gimp_rgba_get_uchar
.L__func__.gimp_rgba_get_uchar:
	.asciz	"gimp_rgba_get_uchar"
	.size	.L__func__.gimp_rgba_get_uchar, 20

	.type	.L__func__.gimp_rgba_add,@object # @__func__.gimp_rgba_add
.L__func__.gimp_rgba_add:
	.asciz	"gimp_rgba_add"
	.size	.L__func__.gimp_rgba_add, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"rgba1 != NULL"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"rgba2 != NULL"
	.size	.L.str.10, 14

	.type	.L__func__.gimp_rgba_subtract,@object # @__func__.gimp_rgba_subtract
.L__func__.gimp_rgba_subtract:
	.asciz	"gimp_rgba_subtract"
	.size	.L__func__.gimp_rgba_subtract, 19

	.type	.L__func__.gimp_rgba_multiply,@object # @__func__.gimp_rgba_multiply
.L__func__.gimp_rgba_multiply:
	.asciz	"gimp_rgba_multiply"
	.size	.L__func__.gimp_rgba_multiply, 19

	.type	.L__func__.gimp_rgba_distance,@object # @__func__.gimp_rgba_distance
.L__func__.gimp_rgba_distance:
	.asciz	"gimp_rgba_distance"
	.size	.L__func__.gimp_rgba_distance, 19

	.type	gimp_param_rgb_get_type.spec_type,@object # @gimp_param_rgb_get_type.spec_type
	.local	gimp_param_rgb_get_type.spec_type
	.comm	gimp_param_rgb_get_type.spec_type,8,8
	.type	gimp_param_rgb_get_type.type_info,@object # @gimp_param_rgb_get_type.type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_param_rgb_get_type.type_info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_rgb_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_rgb_init
	.quad	0
	.size	gimp_param_rgb_get_type.type_info, 72

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"GimpParamRGB"
	.size	.L.str.11, 13

	.type	.L__func__.gimp_param_spec_rgb_has_alpha,@object # @__func__.gimp_param_spec_rgb_has_alpha
.L__func__.gimp_param_spec_rgb_has_alpha:
	.asciz	"gimp_param_spec_rgb_has_alpha"
	.size	.L__func__.gimp_param_spec_rgb_has_alpha, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_PARAM_SPEC_RGB (pspec)"
	.size	.L.str.12, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
