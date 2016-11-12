	.text
	.file	"gimpimage-new.bc"
	.globl	gimp_image_new_get_last_template
	.align	16, 0x90
	.type	gimp_image_new_get_last_template,@function
gimp_image_new_get_last_template:       # @gimp_image_new_get_last_template
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_get_last_template, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_29
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_get_last_template, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_29
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	movabsq	$.L.str.3, %rdi
	callq	gimp_template_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.42
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	296(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_template_set_from_image
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.46
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	560(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB0_28:                               # %if.end.50
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_29:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_new_get_last_template, .Lfunc_end0-gimp_image_new_get_last_template
	.cfi_endproc

	.globl	gimp_image_new_set_last_template
	.align	16, 0x90
	.type	gimp_image_new_set_last_template,@function
gimp_image_new_set_last_template:       # @gimp_image_new_set_last_template
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_set_last_template, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_25
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_template_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_set_last_template, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_25
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	560(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_sync
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB1_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_new_set_last_template, .Lfunc_end1-gimp_image_new_set_last_template
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_new_from_template
	.align	16, 0x90
	.type	gimp_image_new_from_template,@function
gimp_image_new_from_template:           # @gimp_image_new_from_template
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_template, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_42
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_template_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_template, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_42
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB2_27
# BB#26:                                # %if.then.48
	movl	$0, -140(%rbp)
	jmp	.LBB2_32
.LBB2_27:                               # %if.else.49
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_30
# BB#28:                                # %land.lhs.true.52
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB2_30
# BB#29:                                # %if.then.56
	movl	$1, -140(%rbp)
	jmp	.LBB2_31
.LBB2_30:                               # %if.else.57
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB2_31:                               # %if.end.59
	jmp	.LBB2_32
.LBB2_32:                               # %if.end.60
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB2_34
# BB#33:                                # %if.then.63
	jmp	.LBB2_35
.LBB2_34:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_template, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_42
.LBB2_35:                               # %if.end.65
	jmp	.LBB2_36
.LBB2_36:                               # %do.end.66
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_template_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_template_get_height
	movq	-24(%rbp), %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_template_get_image_type
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_create_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_disable
	movq	-24(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_template_get_comment
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB2_38
# BB#37:                                # %if.then.74
	movabsq	$.L.str.6, %rdi
	movl	$1, %esi
	movq	-72(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -188(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %edx        # 4-byte Reload
	movl	%esi, -192(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-192(%rbp), %edx        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	gimp_image_parasite_attach
	movq	-152(%rbp), %rdi
	callq	gimp_parasite_free
.LBB2_38:                               # %if.end.78
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_template_get_resolution_x
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	callq	gimp_template_get_resolution_y
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_template_get_resolution_unit
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_set_unit
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_template_get_fill_type
	subl	$3, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jne	.LBB2_40
	jmp	.LBB2_39
.LBB2_39:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gimp_template_get_image_type
	movl	$3, %ecx
	movl	$1, %edx
	cmpl	$0, %eax
	cmovel	%edx, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB2_41
.LBB2_40:                               # %sw.default
	movq	-24(%rbp), %rdi
	callq	gimp_template_get_image_type
	movl	$2, %ecx
	xorl	%edx, %edx
	cmpl	$0, %eax
	cmovel	%edx, %ecx
	movl	%ecx, -52(%rbp)
.LBB2_41:                               # %sw.epilog
	movabsq	$.L.str.7, %rdi
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movl	%edx, -248(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movl	-248(%rbp), %edx        # 4-byte Reload
	movl	-232(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	gimp_layer_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_template_get_fill_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_drawable_fill_by_type
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_image_add_layer
	movq	-40(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_enable
	movq	-40(%rbp), %rdi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	gimp_image_clean_all
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	gimp_template_get_unit
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_create_display
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_42:                               # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_new_from_template, .Lfunc_end2-gimp_image_new_from_template
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_new_from_drawable
	.align	16, 0x90
	.type	gimp_image_new_from_drawable,@function
gimp_image_new_from_drawable:           # @gimp_image_new_from_drawable
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_drawable, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_47
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_drawable, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_47
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB3_26
# BB#25:                                # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB3_27
.LBB3_26:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB3_34
.LBB3_27:                               # %cond.false
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB3_29
# BB#28:                                # %lor.lhs.false.48
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB3_30
.LBB3_29:                               # %cond.true.51
	movl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB3_33
.LBB3_30:                               # %cond.false.52
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -185(%rbp)         # 1-byte Spill
	je	.LBB3_32
# BB#31:                                # %lor.rhs
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -185(%rbp)         # 1-byte Spill
.LBB3_32:                               # %lor.end
	movb	-185(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB3_33:                               # %cond.end
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB3_34:                               # %cond.end.58
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	$1, %r8d
	movl	-76(%rbp), %ecx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_create_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_undo_disable
	cmpl	$2, -76(%rbp)
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jne	.LBB3_36
# BB#35:                                # %if.then.65
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_colormap
	movq	-40(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_image_get_colormap_size
	xorl	%ecx, %ecx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_set_colormap
.LBB3_36:                               # %if.end.68
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-48(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_image_get_unit
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_set_unit
	movq	-24(%rbp), %rdx
	movq	%rdx, -152(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB3_38
# BB#37:                                # %if.then.78
	movl	$0, -164(%rbp)
	jmp	.LBB3_43
.LBB3_38:                               # %if.else.79
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_41
# BB#39:                                # %land.lhs.true.82
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB3_41
# BB#40:                                # %if.then.86
	movl	$1, -164(%rbp)
	jmp	.LBB3_42
.LBB3_41:                               # %if.else.87
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB3_42:                               # %if.end.89
	jmp	.LBB3_43
.LBB3_43:                               # %if.end.90
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB3_45
# BB#44:                                # %if.then.93
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_46
.LBB3_45:                               # %if.else.96
	callq	gimp_layer_get_type
	movq	%rax, -64(%rbp)
.LBB3_46:                               # %if.end.98
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_convert
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	subl	-68(%rbp), %r8d
	movl	%ecx, %r9d
	subl	-72(%rbp), %r9d
	movq	%rax, %rdi
	movl	%r8d, %esi
	movl	%r9d, %edx
	callq	gimp_item_translate
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_item_set_visible
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_linked
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_layer_set_mode
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_layer_set_opacity
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_layer_set_lock_alpha
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-48(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_enable
	movq	-48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB3_47:                               # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_new_from_drawable, .Lfunc_end3-gimp_image_new_from_drawable
	.cfi_endproc

	.globl	gimp_image_new_from_component
	.align	16, 0x90
	.type	gimp_image_new_from_component,@function
gimp_image_new_from_component:          # @gimp_image_new_from_component
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_component, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_component, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	$1, %ecx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	-144(%rbp), %r8d        # 4-byte Reload
	callq	gimp_create_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_disable
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_get_resolution
	movq	-40(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_image_get_unit
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_set_unit
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	gimp_channel_new_from_component
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_convert
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	callq	gimp_channel_type_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-64(%rbp), %r8
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	-208(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-56(%rbp), %rcx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_take_name
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-40(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_enable
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB4_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_new_from_component, .Lfunc_end4-gimp_image_new_from_component
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_new_from_buffer
	.align	16, 0x90
	.type	gimp_image_new_from_buffer,@function
gimp_image_new_from_buffer:             # @gimp_image_new_from_buffer
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_buffer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_57
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_buffer, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_57
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	jmp	.LBB5_26
.LBB5_26:                               # %do.body.40
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_buffer_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB5_28
# BB#27:                                # %if.then.49
	movl	$0, -124(%rbp)
	jmp	.LBB5_33
.LBB5_28:                               # %if.else.50
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_31
# BB#29:                                # %land.lhs.true.53
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_31
# BB#30:                                # %if.then.57
	movl	$1, -124(%rbp)
	jmp	.LBB5_32
.LBB5_31:                               # %if.else.58
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB5_32:                               # %if.end.60
	jmp	.LBB5_33
.LBB5_33:                               # %if.end.61
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB5_35
# BB#34:                                # %if.then.64
	jmp	.LBB5_36
.LBB5_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_buffer, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_57
.LBB5_36:                               # %if.end.66
	jmp	.LBB5_37
.LBB5_37:                               # %do.end.67
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_bpp
	decl	%eax
	movl	%eax, %edi
	subl	$3, %eax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movl	%eax, -156(%rbp)        # 4-byte Spill
	ja	.LBB5_42
# BB#58:                                # %do.end.67
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_38:                               # %sw.bb
	movl	$2, -52(%rbp)
	jmp	.LBB5_44
.LBB5_39:                               # %sw.bb.69
	movl	$3, -52(%rbp)
	jmp	.LBB5_44
.LBB5_40:                               # %sw.bb.70
	movl	$0, -52(%rbp)
	jmp	.LBB5_44
.LBB5_41:                               # %sw.bb.71
	movl	$1, -52(%rbp)
	jmp	.LBB5_44
.LBB5_42:                               # %sw.default
	jmp	.LBB5_43
.LBB5_43:                               # %do.body.72
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movl	$286, %r8d              # imm = 0x11E
	movabsq	$.L__func__.gimp_image_new_from_buffer, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -8(%rbp)
	jmp	.LBB5_57
.LBB5_44:                               # %sw.epilog
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_buffer_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_buffer_get_height
	cmpl	$0, -52(%rbp)
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB5_46
# BB#45:                                # %lor.lhs.false.77
	cmpl	$1, -52(%rbp)
	jne	.LBB5_47
.LBB5_46:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB5_54
.LBB5_47:                               # %cond.false
	cmpl	$2, -52(%rbp)
	je	.LBB5_49
# BB#48:                                # %lor.lhs.false.80
	cmpl	$3, -52(%rbp)
	jne	.LBB5_50
.LBB5_49:                               # %cond.true.82
	movl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB5_53
.LBB5_50:                               # %cond.false.83
	movb	$1, %al
	cmpl	$4, -52(%rbp)
	movb	%al, -185(%rbp)         # 1-byte Spill
	je	.LBB5_52
# BB#51:                                # %lor.rhs
	cmpl	$5, -52(%rbp)
	sete	%al
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB5_52:                               # %lor.end
	movb	-185(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB5_53:                               # %cond.end
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB5_54:                               # %cond.end.87
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	$1, %r8d
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movl	-176(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_create_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_disable
	cmpq	$0, -24(%rbp)
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB5_56
# BB#55:                                # %if.then.92
	leaq	-136(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-40(%rbp), %rdi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	gimp_image_get_unit
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_set_unit
.LBB5_56:                               # %if.end.96
	movabsq	$.L.str.15, %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movl	-204(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_layer_new_from_tiles
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-40(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_enable
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB5_57:                               # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_new_from_buffer, .Lfunc_end5-gimp_image_new_from_buffer
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_38
	.quad	.LBB5_39
	.quad	.LBB5_40
	.quad	.LBB5_41

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_new_from_pixbuf
	.align	16, 0x90
	.type	gimp_image_new_from_pixbuf,@function
gimp_image_new_from_pixbuf:             # @gimp_image_new_from_pixbuf
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_pixbuf, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_42
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gdk_pixbuf_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_new_from_pixbuf, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_42
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels
	decl	%eax
	movl	%eax, %edi
	subl	$3, %eax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%eax, -116(%rbp)        # 4-byte Spill
	ja	.LBB6_29
# BB#43:                                # %do.end.38
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_25:                               # %sw.bb
	movl	$2, -36(%rbp)
	jmp	.LBB6_31
.LBB6_26:                               # %sw.bb.40
	movl	$3, -36(%rbp)
	jmp	.LBB6_31
.LBB6_27:                               # %sw.bb.41
	movl	$0, -36(%rbp)
	jmp	.LBB6_31
.LBB6_28:                               # %sw.bb.42
	movl	$1, -36(%rbp)
	jmp	.LBB6_31
.LBB6_29:                               # %sw.default
	jmp	.LBB6_30
.LBB6_30:                               # %do.body.43
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movl	$340, %r8d              # imm = 0x154
	movabsq	$.L__func__.gimp_image_new_from_pixbuf, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -8(%rbp)
	jmp	.LBB6_42
.LBB6_31:                               # %sw.epilog
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gdk_pixbuf_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_height
	cmpl	$0, -36(%rbp)
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB6_33
# BB#32:                                # %lor.lhs.false
	cmpl	$1, -36(%rbp)
	jne	.LBB6_34
.LBB6_33:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB6_41
.LBB6_34:                               # %cond.false
	cmpl	$2, -36(%rbp)
	je	.LBB6_36
# BB#35:                                # %lor.lhs.false.50
	cmpl	$3, -36(%rbp)
	jne	.LBB6_37
.LBB6_36:                               # %cond.true.52
	movl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB6_40
.LBB6_37:                               # %cond.false.53
	movb	$1, %al
	cmpl	$4, -36(%rbp)
	movb	%al, -145(%rbp)         # 1-byte Spill
	je	.LBB6_39
# BB#38:                                # %lor.rhs
	cmpl	$5, -36(%rbp)
	sete	%al
	movb	%al, -145(%rbp)         # 1-byte Spill
.LBB6_39:                               # %lor.end
	movb	-145(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
.LBB6_40:                               # %cond.end
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB6_41:                               # %cond.end.57
	movl	-140(%rbp), %eax        # 4-byte Reload
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-132(%rbp), %esi        # 4-byte Reload
	movl	-136(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_create_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_undo_disable
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_layer_new_from_pixbuf
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-48(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_enable
	movq	-48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB6_42:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_new_from_pixbuf, .Lfunc_end6-gimp_image_new_from_pixbuf
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_25
	.quad	.LBB6_26
	.quad	.LBB6_27
	.quad	.LBB6_28

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_new_get_last_template,@object # @__func__.gimp_image_new_get_last_template
.L__func__.gimp_image_new_get_last_template:
	.asciz	"gimp_image_new_get_last_template"
	.size	.L__func__.gimp_image_new_get_last_template, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image new values"
	.size	.L.str.3, 17

	.type	.L__func__.gimp_image_new_set_last_template,@object # @__func__.gimp_image_new_set_last_template
.L__func__.gimp_image_new_set_last_template:
	.asciz	"gimp_image_new_set_last_template"
	.size	.L__func__.gimp_image_new_set_last_template, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TEMPLATE (template)"
	.size	.L.str.4, 28

	.type	.L__func__.gimp_image_new_from_template,@object # @__func__.gimp_image_new_from_template
.L__func__.gimp_image_new_from_template:
	.asciz	"gimp_image_new_from_template"
	.size	.L__func__.gimp_image_new_from_template, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-comment"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Background"
	.size	.L.str.7, 11

	.type	.L__func__.gimp_image_new_from_drawable,@object # @__func__.gimp_image_new_from_drawable
.L__func__.gimp_image_new_from_drawable:
	.asciz	"gimp_image_new_from_drawable"
	.size	.L__func__.gimp_image_new_from_drawable, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.8, 28

	.type	.L__func__.gimp_image_new_from_component,@object # @__func__.gimp_image_new_from_component
.L__func__.gimp_image_new_from_component:
	.asciz	"gimp_image_new_from_component"
	.size	.L__func__.gimp_image_new_from_component, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s Channel Copy"
	.size	.L.str.10, 16

	.type	.L__func__.gimp_image_new_from_buffer,@object # @__func__.gimp_image_new_from_buffer
.L__func__.gimp_image_new_from_buffer:
	.asciz	"gimp_image_new_from_buffer"
	.size	.L__func__.gimp_image_new_from_buffer, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"invoke == NULL || GIMP_IS_IMAGE (invoke)"
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_BUFFER (paste)"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.13, 45

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpimage-new.c"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Pasted Layer"
	.size	.L.str.15, 13

	.type	.L__func__.gimp_image_new_from_pixbuf,@object # @__func__.gimp_image_new_from_pixbuf
.L__func__.gimp_image_new_from_pixbuf:
	.asciz	"gimp_image_new_from_pixbuf"
	.size	.L__func__.gimp_image_new_from_pixbuf, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.16, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
