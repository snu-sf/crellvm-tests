	.text
	.file	"gimpzoommodel.bc"
	.globl	gimp_zoom_model_get_type
	.align	16, 0x90
	.type	gimp_zoom_model_get_type,@function
gimp_zoom_model_get_type:               # @gimp_zoom_model_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_zoom_model_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_zoom_model_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	callq	g_intern_static_string@PLT
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$176, %edx
	leaq	gimp_zoom_model_class_intern_init(%rip), %rsi
	movl	$32, %r8d
	leaq	gimp_zoom_model_init(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	leaq	gimp_zoom_model_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_zoom_model_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_zoom_model_get_type, .Lfunc_end0-gimp_zoom_model_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_model_class_intern_init,@function
gimp_zoom_model_class_intern_init:      # @gimp_zoom_model_class_intern_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_zoom_model_parent_class(%rip)
	cmpl	$0, GimpZoomModel_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpZoomModel_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_zoom_model_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_zoom_model_class_intern_init, .Lfunc_end1-gimp_zoom_model_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4643211215818981376     # double 256
.LCPI2_1:
	.quad	4571153621781053440     # double 0.00390625
.LCPI2_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_zoom_model_init,@function
gimp_zoom_model_init:                   # @gimp_zoom_model_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_zoom_model_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	%xmm2, (%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_zoom_model_init, .Lfunc_end2-gimp_zoom_model_init
	.cfi_endproc

	.globl	gimp_zoom_model_new
	.align	16, 0x90
	.type	gimp_zoom_model_new,@function
gimp_zoom_model_new:                    # @gimp_zoom_model_new
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
	callq	gimp_zoom_model_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_zoom_model_new, .Lfunc_end3-gimp_zoom_model_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI4_1:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gimp_zoom_model_set_range
	.align	16, 0x90
	.type	gimp_zoom_model_set_range,@function
gimp_zoom_model_set_range:              # @gimp_zoom_model_set_range
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_zoom_model_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_model_set_range(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_28
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_model_set_range(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_28
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_20
# BB#19:                                # %if.then.19
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.20
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_model_set_range(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_28
.LBB4_21:                               # %if.end.21
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.22
	jmp	.LBB4_23
.LBB4_23:                               # %do.body.23
	movsd	.LCPI4_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jb	.LBB4_25
# BB#24:                                # %if.then.25
	jmp	.LBB4_26
.LBB4_25:                               # %if.else.26
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_model_set_range(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_28
.LBB4_26:                               # %if.end.27
	jmp	.LBB4_27
.LBB4_27:                               # %do.end.28
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_object_set@PLT
.LBB4_28:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_zoom_model_set_range, .Lfunc_end4-gimp_zoom_model_set_range
	.cfi_endproc

	.globl	gimp_zoom_model_zoom
	.align	16, 0x90
	.type	gimp_zoom_model_zoom,@function
gimp_zoom_model_zoom:                   # @gimp_zoom_model_zoom
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_zoom_model_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_model_zoom(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	cmpl	$6, -12(%rbp)
	je	.LBB5_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	callq	gimp_zoom_model_get_factor@PLT
	movsd	%xmm0, -24(%rbp)
.LBB5_14:                               # %if.end.14
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_zoom_model_zoom_step@PLT
	leaq	.L.str.8(%rip), %rsi
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movb	$1, %al
	callq	g_object_set@PLT
.LBB5_15:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_zoom_model_zoom, .Lfunc_end5-gimp_zoom_model_zoom
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_zoom_model_get_factor
	.align	16, 0x90
	.type	gimp_zoom_model_get_factor,@function
gimp_zoom_model_get_factor:             # @gimp_zoom_model_get_factor
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_zoom_model_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_model_get_factor(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB6_13:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_zoom_model_get_factor, .Lfunc_end6-gimp_zoom_model_get_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI7_1:
	.quad	4643211215818981376     # double 256
.LCPI7_2:
	.quad	4607632778762754458     # double 1.1000000000000001
	.text
	.globl	gimp_zoom_model_zoom_step
	.align	16, 0x90
	.type	gimp_zoom_model_zoom_step,@function
gimp_zoom_model_zoom_step:              # @gimp_zoom_model_zoom_step
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
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -32(%rbp)
	movl	$33, -24(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$6, %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	ja	.LBB7_20
# BB#27:                                # %entry
	leaq	.LJTI7_0(%rip), %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB7_1:                                # %sw.bb
	leaq	gimp_zoom_model_zoom_step.presets(%rip), %rax
	movsd	.LCPI7_2(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movsd	(%rax,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB7_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jl	.LBB7_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB7_2 Depth=1
	leaq	gimp_zoom_model_zoom_step.presets(%rip), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	seta	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB7_4:                                # %land.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_5
	jmp	.LBB7_7
.LBB7_5:                                # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	leaq	gimp_zoom_model_zoom_step.presets(%rip), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_2
.LBB7_7:                                # %for.end
	jmp	.LBB7_20
.LBB7_8:                                # %sw.bb.7
	movsd	.LCPI7_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movsd	gimp_zoom_model_zoom_step.presets(%rip), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB7_9:                                # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jge	.LBB7_11
# BB#10:                                # %land.rhs.10
                                        #   in Loop: Header=BB7_9 Depth=1
	leaq	gimp_zoom_model_zoom_step.presets(%rip), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%dl
	movb	%dl, -50(%rbp)          # 1-byte Spill
.LBB7_11:                               # %land.end.14
                                        #   in Loop: Header=BB7_9 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_12
	jmp	.LBB7_14
.LBB7_12:                               # %for.body.15
                                        #   in Loop: Header=BB7_9 Depth=1
	leaq	gimp_zoom_model_zoom_step.presets(%rip), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
# BB#13:                                # %for.inc.18
                                        #   in Loop: Header=BB7_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_9
.LBB7_14:                               # %for.end.19
	jmp	.LBB7_20
.LBB7_15:                               # %sw.bb.20
	xorl	%edi, %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom_step@PLT
	xorl	%edi, %edi
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom_step@PLT
	xorl	%edi, %edi
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom_step@PLT
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB7_20
.LBB7_16:                               # %sw.bb.23
	movl	$1, %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom_step@PLT
	movl	$1, %edi
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom_step@PLT
	movl	$1, %edi
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom_step@PLT
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB7_20
.LBB7_17:                               # %sw.bb.27
	movsd	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB7_20
.LBB7_18:                               # %sw.bb.28
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB7_20
.LBB7_19:                               # %sw.bb.29
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB7_20:                               # %sw.epilog
	movsd	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_22
# BB#21:                                # %cond.true
	movsd	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB7_26
.LBB7_22:                               # %cond.false
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB7_24
# BB#23:                                # %cond.true.32
	movsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB7_25
.LBB7_24:                               # %cond.false.33
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB7_25:                               # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB7_26:                               # %cond.end.34
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_zoom_model_zoom_step, .Lfunc_end7-gimp_zoom_model_zoom_step
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI7_0:
	.long	.LBB7_1-.LJTI7_0
	.long	.LBB7_8-.LJTI7_0
	.long	.LBB7_15-.LJTI7_0
	.long	.LBB7_16-.LJTI7_0
	.long	.LBB7_17-.LJTI7_0
	.long	.LBB7_18-.LJTI7_0
	.long	.LBB7_19-.LJTI7_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI8_3:
	.quad	4643211215818981376     # double 256
.LCPI8_4:
	.quad	4571153621781053440     # double 0.00390625
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_zoom_model_get_fraction
	.align	16, 0x90
	.type	gimp_zoom_model_get_fraction,@function
gimp_zoom_model_get_fraction:           # @gimp_zoom_model_get_fraction
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -76(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_zoom_model_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_model_get_fraction(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_39
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB8_16
# BB#14:                                # %land.lhs.true.13
	cmpq	$0, -24(%rbp)
	je	.LBB8_16
# BB#15:                                # %if.then.15
	jmp	.LBB8_17
.LBB8_16:                               # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_model_get_fraction(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_39
.LBB8_17:                               # %if.end.17
	jmp	.LBB8_18
.LBB8_18:                               # %do.end.18
	movq	-8(%rbp), %rdi
	callq	gimp_zoom_model_get_factor@PLT
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	ucomisd	-56(%rbp), %xmm1
	jbe	.LBB8_20
# BB#19:                                # %if.then.21
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$1, -76(%rbp)
.LBB8_20:                               # %if.end.22
	movl	$1, -28(%rbp)
	movl	$0, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor@PLT
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movl	$1, -44(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB8_21:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI8_2(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jb	.LBB8_23
# BB#22:                                # %land.rhs
                                        #   in Loop: Header=BB8_21 Depth=1
	movsd	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	cvtsi2sdl	-44(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	subsd	-56(%rbp), %xmm1
	movapd	.LCPI8_2(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB8_23:                               # %land.end
                                        #   in Loop: Header=BB8_21 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_24
	jmp	.LBB8_31
.LBB8_24:                               # %while.body
                                        #   in Loop: Header=BB8_21 Depth=1
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor@PLT
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jg	.LBB8_29
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_21 Depth=1
	cmpl	$256, -48(%rbp)         # imm = 0x100
	jg	.LBB8_29
# BB#26:                                # %lor.lhs.false.49
                                        #   in Loop: Header=BB8_21 Depth=1
	cmpl	$1, -36(%rbp)
	jle	.LBB8_30
# BB#27:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB8_21 Depth=1
	cmpl	$1, -48(%rbp)
	jle	.LBB8_30
# BB#28:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB8_21 Depth=1
	movl	-36(%rbp), %eax
	imull	-48(%rbp), %eax
	cmpl	$200, %eax
	jle	.LBB8_30
.LBB8_29:                               # %if.then.59
	jmp	.LBB8_31
.LBB8_30:                               # %if.end.60
                                        #   in Loop: Header=BB8_21 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.LBB8_21
.LBB8_31:                               # %while.end
	movsd	.LCPI8_3(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	cvtsi2sdl	-44(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_33
# BB#32:                                # %if.then.67
	movl	$256, -32(%rbp)         # imm = 0x100
	movl	$1, -44(%rbp)
	jmp	.LBB8_36
.LBB8_33:                               # %if.else.68
	movsd	.LCPI8_4(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB8_35
# BB#34:                                # %if.then.71
	movl	$1, -32(%rbp)
	movl	$256, -44(%rbp)         # imm = 0x100
.LBB8_35:                               # %if.end.72
	jmp	.LBB8_36
.LBB8_36:                               # %if.end.73
	cmpl	$0, -76(%rbp)
	je	.LBB8_38
# BB#37:                                # %if.then.75
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB8_39
.LBB8_38:                               # %if.else.76
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB8_39:                               # %if.end.77
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_zoom_model_get_fraction, .Lfunc_end8-gimp_zoom_model_get_fraction
	.cfi_endproc

	.globl	gimp_zoom_button_new
	.align	16, 0x90
	.type	gimp_zoom_button_new,@function
gimp_zoom_button_new:                   # @gimp_zoom_button_new
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_zoom_model_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_zoom_button_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB9_23
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB9_13
	jmp	.LBB9_24
.LBB9_24:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB9_14
	jmp	.LBB9_15
.LBB9_13:                               # %sw.bb
	leaq	.L.str.10(%rip), %rdi
	movl	-24(%rbp), %esi
	callq	zoom_button_new
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_zoom_model_zoom_in(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.12(%rip), %rsi
	leaq	zoom_in_button_callback(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object@PLT
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB9_16
.LBB9_14:                               # %sw.bb.14
	leaq	.L.str.13(%rip), %rdi
	movl	-24(%rbp), %esi
	callq	zoom_button_new
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_zoom_model_zoom_out(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.12(%rip), %rsi
	leaq	zoom_out_button_callback(%rip), %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object@PLT
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_16
.LBB9_15:                               # %sw.default
	leaq	.L.str.14(%rip), %rdi
	movl	-20(%rbp), %esi
	movb	$0, %al
	callq	g_warning
.LBB9_16:                               # %sw.epilog
	cmpq	$0, -32(%rbp)
	je	.LBB9_22
# BB#17:                                # %if.then.19
	movq	-16(%rbp), %rdi
	callq	gimp_zoom_model_get_factor@PLT
	xorl	%edx, %edx
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rdi
	movl	zoom_model_signals(%rip), %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_signal_emit@PLT
	cmpl	$0, -24(%rbp)
	jbe	.LBB9_21
# BB#18:                                # %if.then.23
	callq	gimp_zoom_type_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-72(%rbp), %r8
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value@PLT
	cmpl	$0, %eax
	je	.LBB9_20
# BB#19:                                # %if.then.28
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_help_set_help_data@PLT
.LBB9_20:                               # %if.end.29
	jmp	.LBB9_21
.LBB9_21:                               # %if.end.30
	jmp	.LBB9_22
.LBB9_22:                               # %if.end.31
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_zoom_button_new, .Lfunc_end9-gimp_zoom_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	zoom_button_new,@function
zoom_button_new:                        # @zoom_button_new
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jbe	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -32(%rbp)
	callq	gtk_button_new@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gtk_button_new_from_stock@PLT
	movq	%rax, -24(%rbp)
.LBB10_3:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	zoom_button_new, .Lfunc_end10-zoom_button_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_model_zoom_in,@function
gimp_zoom_model_zoom_in:                # @gimp_zoom_model_zoom_in
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
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	callq	gimp_zoom_model_zoom@PLT
.LBB11_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_zoom_model_zoom_in, .Lfunc_end11-gimp_zoom_model_zoom_in
	.cfi_endproc

	.align	16, 0x90
	.type	zoom_in_button_callback,@function
zoom_in_button_callback:                # @zoom_in_button_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	ucomisd	16(%rsi), %xmm0
	setne	%al
	setp	%cl
	orb	%cl, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	zoom_in_button_callback, .Lfunc_end12-zoom_in_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_model_zoom_out,@function
gimp_zoom_model_zoom_out:               # @gimp_zoom_model_zoom_out
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	ucomisd	8(%rdi), %xmm0
	jbe	.LBB13_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	callq	gimp_zoom_model_zoom@PLT
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_zoom_model_zoom_out, .Lfunc_end13-gimp_zoom_model_zoom_out
	.cfi_endproc

	.align	16, 0x90
	.type	zoom_out_button_callback,@function
zoom_out_button_callback:               # @zoom_out_button_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	ucomisd	8(%rsi), %xmm0
	setne	%al
	setp	%cl
	orb	%cl, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	zoom_out_button_callback, .Lfunc_end14-zoom_out_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB15_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB15_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI16_1:
	.quad	4643211215818981376     # double 256
.LCPI16_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_zoom_model_class_init,@function
gimp_zoom_model_class_init:             # @gimp_zoom_model_class_init
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp51:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.12(%rip), %rdi
	movl	$2, %edx
	movl	$136, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	_gimp_widgets_marshal_VOID__DOUBLE_DOUBLE@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$60, %r8d
	movl	%r8d, %r11d
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %r8          # 8-byte Reload
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	$60, 24(%rsp)
	movq	$60, 32(%rsp)
	movb	$0, %al
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.15(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI16_2(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$227, %ecx
	leaq	gimp_zoom_model_get_property(%rip), %r8
	leaq	gimp_zoom_model_set_property(%rip), %r9
	movl	%eax, zoom_model_signals(%rip)
	movq	-24(%rbp), %r10
	movq	%r9, 24(%r10)
	movq	-24(%rbp), %r9
	movq	%r8, 32(%r9)
	movq	-24(%rbp), %r8
	movq	%r8, -64(%rbp)          # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$1, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$2, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-24(%rbp), %rax
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_param_spec_double@PLT
	movl	$3, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.18(%rip), %rdi
	leaq	.L.str.19(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	.L.str.20(%rip), %rcx
	movl	$225, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$4, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.21(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	leaq	.L.str.23(%rip), %rcx
	movl	$225, %r8d
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$5, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movl	$24, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_zoom_model_class_init, .Lfunc_end16-gimp_zoom_model_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_zoom_model_set_property,@function
gimp_zoom_model_set_property:           # @gimp_zoom_model_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_object_freeze_notify@PLT
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB17_1
	jmp	.LBB17_25
.LBB17_25:                              # %entry
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB17_2
	jmp	.LBB17_26
.LBB17_26:                              # %entry
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB17_6
	jmp	.LBB17_10
.LBB17_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_double@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	-40(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movq	-8(%rbp), %rdi
	callq	g_object_notify@PLT
	leaq	.L.str.18(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_object_notify@PLT
	leaq	.L.str.21(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_object_notify@PLT
	jmp	.LBB17_13
.LBB17_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	g_value_get_double@PLT
	movq	-40(%rbp), %rdi
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	g_value_get_double@PLT
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB17_5:                               # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB17_13
.LBB17_6:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	callq	g_value_get_double@PLT
	movq	-40(%rbp), %rdi
	ucomisd	8(%rdi), %xmm0
	jbe	.LBB17_8
# BB#7:                                 # %cond.true.12
	movq	-24(%rbp), %rdi
	callq	g_value_get_double@PLT
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB17_9
.LBB17_8:                               # %cond.false.14
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB17_9:                               # %cond.end.16
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB17_13
.LBB17_10:                              # %sw.default
	jmp	.LBB17_11
.LBB17_11:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.24(%rip), %rdi
	leaq	.L.str.25(%rip), %rsi
	movl	$200, %edx
	leaq	.L.str.26(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %sw.epilog
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	ja	.LBB17_15
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_22
.LBB17_15:                              # %if.then
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB17_17
# BB#16:                                # %cond.true.32
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB17_21
.LBB17_17:                              # %cond.false.34
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_19
# BB#18:                                # %cond.true.38
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB17_20
.LBB17_19:                              # %cond.false.40
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB17_20:                              # %cond.end.42
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB17_21:                              # %cond.end.44
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	.L.str.8(%rip), %rsi
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rdi
	callq	g_object_notify@PLT
	leaq	.L.str.18(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_object_notify@PLT
	leaq	.L.str.21(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_object_notify@PLT
.LBB17_22:                              # %if.end
	movq	-8(%rbp), %rdi
	callq	g_object_thaw_notify@PLT
	movq	-40(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jne	.LBB17_23
	jp	.LBB17_23
	jmp	.LBB17_24
.LBB17_23:                              # %if.then.49
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	zoom_model_signals(%rip), %esi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_signal_emit@PLT
.LBB17_24:                              # %if.end.51
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_zoom_model_set_property, .Lfunc_end17-gimp_zoom_model_set_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4636737291354636288     # double 100
.LCPI18_1:
	.quad	4594572339843380019     # double 0.14999999999999999
	.text
	.align	16, 0x90
	.type	gimp_zoom_model_get_property,@function
gimp_zoom_model_get_property:           # @gimp_zoom_model_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-12(%rbp), %esi
	decl	%esi
	movl	%esi, %ecx
	subl	$4, %esi
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	ja	.LBB18_6
# BB#10:                                # %entry
	leaq	.LJTI18_0(%rip), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB18_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB18_9
.LBB18_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB18_9
.LBB18_3:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double@PLT
	jmp	.LBB18_9
.LBB18_4:                               # %sw.bb.5
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_zoom_model_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_zoom_model_get_fraction@PLT
	leaq	.L.str.27(%rip), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_value_set_string@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB18_9
.LBB18_5:                               # %sw.bb.10
	movsd	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI18_1(%rip), %xmm1  # xmm1 = mem[0],zero
	leaq	.L.str.29(%rip), %rax
	leaq	.L.str.28(%rip), %rcx
	movq	-40(%rbp), %rdx
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	cmovaeq	%rcx, %rax
	movq	-40(%rbp), %rcx
	mulsd	(%rcx), %xmm0
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_value_set_string@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB18_9
.LBB18_6:                               # %sw.default
	jmp	.LBB18_7
.LBB18_7:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %r8d
	movq	-72(%rbp), %rax
	movq	8(%rax), %r9
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.24(%rip), %rdi
	leaq	.L.str.25(%rip), %rsi
	movl	$267, %edx              # imm = 0x10B
	leaq	.L.str.26(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB18_9
.LBB18_9:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_zoom_model_get_property, .Lfunc_end18-gimp_zoom_model_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI18_0:
	.long	.LBB18_1-.LJTI18_0
	.long	.LBB18_2-.LJTI18_0
	.long	.LBB18_3-.LJTI18_0
	.long	.LBB18_4-.LJTI18_0
	.long	.LBB18_5-.LJTI18_0

	.type	gimp_zoom_model_get_type.g_define_type_id__volatile,@object # @gimp_zoom_model_get_type.g_define_type_id__volatile
	.local	gimp_zoom_model_get_type.g_define_type_id__volatile
	.comm	gimp_zoom_model_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpZoomModel"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_zoom_model_set_range,@object # @__func__.gimp_zoom_model_set_range
.L__func__.gimp_zoom_model_set_range:
	.asciz	"gimp_zoom_model_set_range"
	.size	.L__func__.gimp_zoom_model_set_range, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_ZOOM_MODEL (model)"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"min < max"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"min >= ZOOM_MIN"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"max <= ZOOM_MAX"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"minimum"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"maximum"
	.size	.L.str.7, 8

	.type	.L__func__.gimp_zoom_model_zoom,@object # @__func__.gimp_zoom_model_zoom
.L__func__.gimp_zoom_model_zoom:
	.asciz	"gimp_zoom_model_zoom"
	.size	.L__func__.gimp_zoom_model_zoom, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"value"
	.size	.L.str.8, 6

	.type	.L__func__.gimp_zoom_model_get_factor,@object # @__func__.gimp_zoom_model_get_factor
.L__func__.gimp_zoom_model_get_factor:
	.asciz	"gimp_zoom_model_get_factor"
	.size	.L__func__.gimp_zoom_model_get_factor, 27

	.type	.L__func__.gimp_zoom_model_get_fraction,@object # @__func__.gimp_zoom_model_get_fraction
.L__func__.gimp_zoom_model_get_fraction:
	.asciz	"gimp_zoom_model_get_fraction"
	.size	.L__func__.gimp_zoom_model_get_fraction, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"numerator != NULL && denominator != NULL"
	.size	.L.str.9, 41

	.type	.L__func__.gimp_zoom_button_new,@object # @__func__.gimp_zoom_button_new
.L__func__.gimp_zoom_button_new:
	.asciz	"gimp_zoom_button_new"
	.size	.L__func__.gimp_zoom_button_new, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-zoom-in"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"clicked"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"zoomed"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-zoom-out"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"sorry, no button for this zoom type (%d)"
	.size	.L.str.14, 41

	.type	zoom_model_signals,@object # @zoom_model_signals
	.local	zoom_model_signals
	.comm	zoom_model_signals,4,4
	.type	gimp_zoom_model_zoom_step.presets,@object # @gimp_zoom_model_zoom_step.presets
	.section	.rodata,"a",@progbits
	.align	16
gimp_zoom_model_zoom_step.presets:
	.quad	4571153621781053440     # double 3.906250e-03
	.quad	4573055141623720983     # double 5.555556e-03
	.quad	4575657221408423936     # double 7.812500e-03
	.quad	4577558741251091479     # double 1.111111e-02
	.quad	4580160821035794432     # double 1.562500e-02
	.quad	4582062340878461975     # double 2.222222e-02
	.quad	4584664420663164928     # double 3.125000e-02
	.quad	4586426698778222948     # double 4.347826e-02
	.quad	4589168020290535424     # double 6.250000e-02
	.quad	4591215111030249286     # double 9.090909e-02
	.quad	4593671619917905920     # double 1.250000e-01
	.quad	4595718710657619782     # double 1.818182e-01
	.quad	4598175219545276416     # double 2.500000e-01
	.quad	4599676419421066581     # double 3.333333e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4604180019048437077     # double 6.666667e-01
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4609434218613702656     # double 1.500000e+00
	.quad	4611686018427387904     # double 2.000000e+00
	.quad	4613937818241073152     # double 3.000000e+00
	.quad	4616189618054758400     # double 4.000000e+00
	.quad	4617878467915022336     # double 5.500000e+00
	.quad	4620693217682128896     # double 8.000000e+00
	.quad	4622382067542392832     # double 1.100000e+01
	.quad	4625196817309499392     # double 1.600000e+01
	.quad	4627167142146473984     # double 2.300000e+01
	.quad	4629700416936869888     # double 3.200000e+01
	.quad	4631530004285489152     # double 4.500000e+01
	.quad	4634204016564240384     # double 6.400000e+01
	.quad	4636033603912859648     # double 9.000000e+01
	.quad	4638707616191610880     # double 1.280000e+02
	.quad	4640537203540230144     # double 1.800000e+02
	.quad	4643211215818981376     # double 2.560000e+02
	.size	gimp_zoom_model_zoom_step.presets, 264

	.type	gimp_zoom_model_parent_class,@object # @gimp_zoom_model_parent_class
	.local	gimp_zoom_model_parent_class
	.comm	gimp_zoom_model_parent_class,8,8
	.type	GimpZoomModel_private_offset,@object # @GimpZoomModel_private_offset
	.local	GimpZoomModel_private_offset
	.comm	GimpZoomModel_private_offset,4,4
	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Zoom factor"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Lower limit for the zoom factor"
	.size	.L.str.16, 32

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Upper limit for the zoom factor"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"fraction"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"The zoom factor expressed as a fraction"
	.size	.L.str.19, 40

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"1:1"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"percentage"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The zoom factor expressed as a percentage"
	.size	.L.str.22, 42

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"100%"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.24, 54

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimpzoommodel.c"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"property"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%d:%d"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%.0f%%"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%.2f%%"
	.size	.L.str.29, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
