	.text
	.file	"gimphsv.bc"
	.globl	gimp_hsv_get_type
	.align	16, 0x90
	.type	gimp_hsv_get_type,@function
gimp_hsv_get_type:                      # @gimp_hsv_get_type
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
	cmpq	$0, gimp_hsv_get_type.hsv_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	leaq	gimp_hsv_copy(%rip), %rax
	movq	g_free@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	callq	g_boxed_type_register_static@PLT
	movq	%rax, gimp_hsv_get_type.hsv_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_hsv_get_type.hsv_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_hsv_get_type, .Lfunc_end0-gimp_hsv_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_hsv_copy,@function
gimp_hsv_copy:                          # @gimp_hsv_copy
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
	.size	gimp_hsv_copy, .Lfunc_end1-gimp_hsv_copy
	.cfi_endproc

	.globl	gimp_hsv_set
	.align	16, 0x90
	.type	gimp_hsv_set,@function
gimp_hsv_set:                           # @gimp_hsv_set
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_hsv_set(%rip), %rsi
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
.LBB2_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_hsv_set, .Lfunc_end2-gimp_hsv_set
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_hsv_clamp
	.align	16, 0x90
	.type	gimp_hsv_clamp,@function
gimp_hsv_clamp:                         # @gimp_hsv_clamp
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_hsv_clamp(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_26
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, (%rax)
	movq	-8(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB3_7
# BB#6:                                 # %if.then.6
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
.LBB3_7:                                # %if.end.8
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_9
# BB#8:                                 # %cond.true
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	jmp	.LBB3_13
.LBB3_9:                                # %cond.false
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB3_11
# BB#10:                                # %cond.true.14
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	jmp	.LBB3_12
.LBB3_11:                               # %cond.false.15
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
.LBB3_12:                               # %cond.end
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
.LBB3_13:                               # %cond.end.17
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_15
# BB#14:                                # %cond.true.22
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB3_19
.LBB3_15:                               # %cond.false.23
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB3_17
# BB#16:                                # %cond.true.27
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false.28
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB3_18:                               # %cond.end.30
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB3_19:                               # %cond.end.32
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_21
# BB#20:                                # %cond.true.37
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB3_25
.LBB3_21:                               # %cond.false.38
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB3_23
# BB#22:                                # %cond.true.42
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB3_24
.LBB3_23:                               # %cond.false.43
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB3_24:                               # %cond.end.45
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB3_25:                               # %cond.end.47
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB3_26:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_hsv_clamp, .Lfunc_end3-gimp_hsv_clamp
	.cfi_endproc

	.globl	gimp_hsva_set
	.align	16, 0x90
	.type	gimp_hsva_set,@function
gimp_hsva_set:                          # @gimp_hsva_set
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_hsva_set(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
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
.LBB4_6:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_hsva_set, .Lfunc_end4-gimp_hsva_set
	.cfi_endproc

	.type	gimp_hsv_get_type.hsv_type,@object # @gimp_hsv_get_type.hsv_type
	.local	gimp_hsv_get_type.hsv_type
	.comm	gimp_hsv_get_type.hsv_type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpHSV"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpColor"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_hsv_set,@object # @__func__.gimp_hsv_set
.L__func__.gimp_hsv_set:
	.asciz	"gimp_hsv_set"
	.size	.L__func__.gimp_hsv_set, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"hsv != NULL"
	.size	.L.str.2, 12

	.type	.L__func__.gimp_hsv_clamp,@object # @__func__.gimp_hsv_clamp
.L__func__.gimp_hsv_clamp:
	.asciz	"gimp_hsv_clamp"
	.size	.L__func__.gimp_hsv_clamp, 15

	.type	.L__func__.gimp_hsva_set,@object # @__func__.gimp_hsva_set
.L__func__.gimp_hsva_set:
	.asciz	"gimp_hsva_set"
	.size	.L__func__.gimp_hsva_set, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"hsva != NULL"
	.size	.L.str.3, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
