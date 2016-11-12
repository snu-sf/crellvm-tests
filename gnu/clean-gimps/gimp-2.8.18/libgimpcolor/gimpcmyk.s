	.text
	.file	"gimpcmyk.bc"
	.globl	gimp_cmyk_get_type
	.align	16, 0x90
	.type	gimp_cmyk_get_type,@function
gimp_cmyk_get_type:                     # @gimp_cmyk_get_type
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
	cmpq	$0, gimp_cmyk_get_type.cmyk_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	leaq	gimp_cmyk_copy(%rip), %rax
	movq	g_free@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	callq	g_boxed_type_register_static@PLT
	movq	%rax, gimp_cmyk_get_type.cmyk_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_cmyk_get_type.cmyk_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cmyk_get_type, .Lfunc_end0-gimp_cmyk_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cmyk_copy,@function
gimp_cmyk_copy:                         # @gimp_cmyk_copy
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
	movl	$40, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_memdup@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cmyk_copy, .Lfunc_end1-gimp_cmyk_copy
	.cfi_endproc

	.globl	gimp_cmyk_set
	.align	16, 0x90
	.type	gimp_cmyk_set,@function
gimp_cmyk_set:                          # @gimp_cmyk_set
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_cmyk_set(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
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
.LBB2_6:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cmyk_set, .Lfunc_end2-gimp_cmyk_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_cmyk_set_uchar
	.align	16, 0x90
	.type	gimp_cmyk_set_uchar,@function
gimp_cmyk_set_uchar:                    # @gimp_cmyk_set_uchar
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
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_cmyk_set_uchar(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movzbl	-9(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI3_0(%rip), %xmm2   # xmm2 = mem[0],zero
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
.LBB3_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_cmyk_set_uchar, .Lfunc_end3-gimp_cmyk_set_uchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
.LCPI4_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_cmyk_get_uchar
	.align	16, 0x90
	.type	gimp_cmyk_get_uchar,@function
gimp_cmyk_get_uchar:                    # @gimp_cmyk_get_uchar
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_cmyk_get_uchar(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_37
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_13
# BB#6:                                 # %if.then.1
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_8
# BB#7:                                 # %cond.true
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB4_12
.LBB4_8:                                # %cond.false
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB4_10
# BB#9:                                 # %cond.true.5
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB4_11
.LBB4_10:                               # %cond.false.6
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB4_11:                               # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB4_12:                               # %cond.end.8
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB4_13:                               # %if.end.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_21
# BB#14:                                # %if.then.13
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_16
# BB#15:                                # %cond.true.16
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_16:                               # %cond.false.17
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB4_18
# BB#17:                                # %cond.true.21
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB4_19
.LBB4_18:                               # %cond.false.22
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB4_19:                               # %cond.end.24
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB4_20:                               # %cond.end.26
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB4_21:                               # %if.end.32
	cmpq	$0, -32(%rbp)
	je	.LBB4_29
# BB#22:                                # %if.then.34
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_24
# BB#23:                                # %cond.true.37
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB4_28
.LBB4_24:                               # %cond.false.38
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB4_26
# BB#25:                                # %cond.true.42
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB4_27
.LBB4_26:                               # %cond.false.43
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB4_27:                               # %cond.end.45
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB4_28:                               # %cond.end.47
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB4_29:                               # %if.end.53
	cmpq	$0, -40(%rbp)
	je	.LBB4_37
# BB#30:                                # %if.then.55
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_32
# BB#31:                                # %cond.true.58
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB4_36
.LBB4_32:                               # %cond.false.59
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB4_34
# BB#33:                                # %cond.true.63
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB4_35
.LBB4_34:                               # %cond.false.64
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB4_35:                               # %cond.end.66
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB4_36:                               # %cond.end.68
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB4_37:                               # %if.end.74
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cmyk_get_uchar, .Lfunc_end4-gimp_cmyk_get_uchar
	.cfi_endproc

	.globl	gimp_cmyka_set
	.align	16, 0x90
	.type	gimp_cmyka_set,@function
gimp_cmyka_set:                         # @gimp_cmyka_set
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_cmyka_set(%rip), %rsi
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
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB5_6:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_cmyka_set, .Lfunc_end5-gimp_cmyka_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_cmyka_set_uchar
	.align	16, 0x90
	.type	gimp_cmyka_set_uchar,@function
gimp_cmyka_set_uchar:                   # @gimp_cmyka_set_uchar
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
	movb	%r9b, %al
	movb	%r8b, %r10b
	movb	%cl, %r11b
	movb	%dl, %bl
	movb	%sil, %r14b
	movq	%rdi, -24(%rbp)
	movb	%r14b, -25(%rbp)
	movb	%bl, -26(%rbp)
	movb	%r11b, -27(%rbp)
	movb	%r10b, -28(%rbp)
	movb	%al, -29(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_cmyka_set_uchar(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movzbl	-25(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI6_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movzbl	-26(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm2, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 8(%rcx)
	movzbl	-27(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm2, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 16(%rcx)
	movzbl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm2, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 24(%rcx)
	movzbl	-29(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, 32(%rcx)
.LBB6_6:                                # %return
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cmyka_set_uchar, .Lfunc_end6-gimp_cmyka_set_uchar
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4602678819172646912     # double 0.5
.LCPI7_2:
	.quad	4643176031446892544     # double 255
	.text
	.globl	gimp_cmyka_get_uchar
	.align	16, 0x90
	.type	gimp_cmyka_get_uchar,@function
gimp_cmyka_get_uchar:                   # @gimp_cmyka_get_uchar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_cmyka_get_uchar(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_45
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB7_13
# BB#6:                                 # %if.then.1
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_8
# BB#7:                                 # %cond.true
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB7_12
.LBB7_8:                                # %cond.false
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB7_10
# BB#9:                                 # %cond.true.5
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false.6
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB7_11:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB7_12:                               # %cond.end.8
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB7_13:                               # %if.end.11
	cmpq	$0, -24(%rbp)
	je	.LBB7_21
# BB#14:                                # %if.then.13
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_16
# BB#15:                                # %cond.true.16
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB7_20
.LBB7_16:                               # %cond.false.17
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB7_18
# BB#17:                                # %cond.true.21
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB7_19
.LBB7_18:                               # %cond.false.22
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB7_19:                               # %cond.end.24
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB7_20:                               # %cond.end.26
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB7_21:                               # %if.end.32
	cmpq	$0, -32(%rbp)
	je	.LBB7_29
# BB#22:                                # %if.then.34
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_24
# BB#23:                                # %cond.true.37
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB7_28
.LBB7_24:                               # %cond.false.38
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB7_26
# BB#25:                                # %cond.true.42
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB7_27
.LBB7_26:                               # %cond.false.43
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB7_27:                               # %cond.end.45
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB7_28:                               # %cond.end.47
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB7_29:                               # %if.end.53
	cmpq	$0, -40(%rbp)
	je	.LBB7_37
# BB#30:                                # %if.then.55
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_32
# BB#31:                                # %cond.true.58
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB7_36
.LBB7_32:                               # %cond.false.59
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB7_34
# BB#33:                                # %cond.true.63
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB7_35
.LBB7_34:                               # %cond.false.64
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB7_35:                               # %cond.end.66
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB7_36:                               # %cond.end.68
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB7_37:                               # %if.end.74
	cmpq	$0, -48(%rbp)
	je	.LBB7_45
# BB#38:                                # %if.then.76
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_40
# BB#39:                                # %cond.true.79
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB7_44
.LBB7_40:                               # %cond.false.80
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	jbe	.LBB7_42
# BB#41:                                # %cond.true.84
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB7_43
.LBB7_42:                               # %cond.false.85
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB7_43:                               # %cond.end.87
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB7_44:                               # %cond.end.89
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB7_45:                               # %if.end.95
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_cmyka_get_uchar, .Lfunc_end7-gimp_cmyka_get_uchar
	.cfi_endproc

	.type	gimp_cmyk_get_type.cmyk_type,@object # @gimp_cmyk_get_type.cmyk_type
	.local	gimp_cmyk_get_type.cmyk_type
	.comm	gimp_cmyk_get_type.cmyk_type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCMYK"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpColor"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_cmyk_set,@object # @__func__.gimp_cmyk_set
.L__func__.gimp_cmyk_set:
	.asciz	"gimp_cmyk_set"
	.size	.L__func__.gimp_cmyk_set, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cmyk != NULL"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_cmyk_set_uchar,@object # @__func__.gimp_cmyk_set_uchar
.L__func__.gimp_cmyk_set_uchar:
	.asciz	"gimp_cmyk_set_uchar"
	.size	.L__func__.gimp_cmyk_set_uchar, 20

	.type	.L__func__.gimp_cmyk_get_uchar,@object # @__func__.gimp_cmyk_get_uchar
.L__func__.gimp_cmyk_get_uchar:
	.asciz	"gimp_cmyk_get_uchar"
	.size	.L__func__.gimp_cmyk_get_uchar, 20

	.type	.L__func__.gimp_cmyka_set,@object # @__func__.gimp_cmyka_set
.L__func__.gimp_cmyka_set:
	.asciz	"gimp_cmyka_set"
	.size	.L__func__.gimp_cmyka_set, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cmyka != NULL"
	.size	.L.str.3, 14

	.type	.L__func__.gimp_cmyka_set_uchar,@object # @__func__.gimp_cmyka_set_uchar
.L__func__.gimp_cmyka_set_uchar:
	.asciz	"gimp_cmyka_set_uchar"
	.size	.L__func__.gimp_cmyka_set_uchar, 21

	.type	.L__func__.gimp_cmyka_get_uchar,@object # @__func__.gimp_cmyka_get_uchar
.L__func__.gimp_cmyka_get_uchar:
	.asciz	"gimp_cmyka_get_uchar"
	.size	.L__func__.gimp_cmyka_get_uchar, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
