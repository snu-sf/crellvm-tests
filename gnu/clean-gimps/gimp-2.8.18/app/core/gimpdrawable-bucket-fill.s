	.text
	.file	"gimpdrawable-bucket-fill.bc"
	.globl	gimp_drawable_bucket_fill
	.align	16, 0x90
	.type	gimp_drawable_bucket_fill,@function
gimp_drawable_bucket_fill:              # @gimp_drawable_bucket_fill
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
	subq	$240, %rsp
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%r11d, -52(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%r10d, -68(%rbp)
	movsd	%xmm2, -80(%rbp)
	movsd	%xmm3, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	$0, -136(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -156(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -156(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_47
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.16
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_47
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.20
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.29
	movl	$0, -180(%rbp)
	jmp	.LBB0_25
.LBB0_20:                               # %if.else.30
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_23
# BB#21:                                # %land.lhs.true.33
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB0_23
# BB#22:                                # %if.then.37
	movl	$1, -180(%rbp)
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.38
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB0_24:                               # %if.end.40
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.41
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.44
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_47
.LBB0_28:                               # %if.end.46
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.48
	cmpq	$0, -96(%rbp)
	je	.LBB0_32
# BB#31:                                # %lor.lhs.false
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_33
.LBB0_32:                               # %if.then.51
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_47
.LBB0_34:                               # %if.end.53
	jmp	.LBB0_35
.LBB0_35:                               # %do.end.54
	cmpl	$0, -28(%rbp)
	jne	.LBB0_37
# BB#36:                                # %if.then.56
	leaq	-128(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_foreground
	jmp	.LBB0_46
.LBB0_37:                               # %if.else.57
	cmpl	$1, -28(%rbp)
	jne	.LBB0_39
# BB#38:                                # %if.then.59
	leaq	-128(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_background
	jmp	.LBB0_45
.LBB0_39:                               # %if.else.60
	cmpl	$2, -28(%rbp)
	jne	.LBB0_43
# BB#40:                                # %if.then.62
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_pattern
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_42
# BB#41:                                # %if.then.65
	movq	-96(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB0_47
.LBB0_42:                               # %if.end.68
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.69
	movabsq	$.L.str.6, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_47
.LBB0_44:                               # %if.end.70
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.71
	jmp	.LBB0_46
.LBB0_46:                               # %if.end.72
	leaq	-128(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-68(%rbp), %r10d
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-136(%rbp), %r11
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	gimp_drawable_bucket_fill_full
	movl	$1, -4(%rbp)
.LBB0_47:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_bucket_fill, .Lfunc_end0-gimp_drawable_bucket_fill
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.globl	gimp_drawable_bucket_fill_full
	.align	16, 0x90
	.type	gimp_drawable_bucket_fill_full,@function
gimp_drawable_bucket_fill_full:         # @gimp_drawable_bucket_fill_full
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
	pushq	%rbx
	subq	$632, %rsp              # imm = 0x278
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	%r11d, -60(%rbp)
	movsd	%xmm2, -72(%rbp)
	movsd	%xmm3, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	$0, -248(%rbp)
	movq	$0, -280(%rbp)
	movl	$0, -284(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -308(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -308(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill_full, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_102
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_15
# BB#14:                                # %if.then.16
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill_full, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_102
.LBB2_16:                               # %if.end.18
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.19
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.20
	cmpl	$2, -20(%rbp)
	jne	.LBB2_27
# BB#19:                                # %lor.lhs.false
	movq	-96(%rbp), %rax
	movq	%rax, -320(%rbp)
	callq	gimp_pattern_get_type
	movq	%rax, -328(%rbp)
	cmpq	$0, -320(%rbp)
	jne	.LBB2_21
# BB#20:                                # %if.then.30
	movl	$0, -332(%rbp)
	jmp	.LBB2_26
.LBB2_21:                               # %if.else.31
	movq	-320(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_24
# BB#22:                                # %land.lhs.true.34
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-328(%rbp), %rax
	jne	.LBB2_24
# BB#23:                                # %if.then.38
	movl	$1, -332(%rbp)
	jmp	.LBB2_25
.LBB2_24:                               # %if.else.39
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -332(%rbp)
.LBB2_25:                               # %if.end.41
	jmp	.LBB2_26
.LBB2_26:                               # %if.end.42
	movl	-332(%rbp), %eax
	movl	%eax, -336(%rbp)
	cmpl	$0, -336(%rbp)
	je	.LBB2_28
.LBB2_27:                               # %if.then.45
	jmp	.LBB2_29
.LBB2_28:                               # %if.else.46
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill_full, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_102
.LBB2_29:                               # %if.end.47
	jmp	.LBB2_30
.LBB2_30:                               # %do.end.48
	jmp	.LBB2_31
.LBB2_31:                               # %do.body.49
	cmpl	$2, -20(%rbp)
	je	.LBB2_33
# BB#32:                                # %lor.lhs.false.51
	cmpq	$0, -88(%rbp)
	je	.LBB2_34
.LBB2_33:                               # %if.then.53
	jmp	.LBB2_35
.LBB2_34:                               # %if.else.54
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill_full, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_102
.LBB2_35:                               # %if.end.55
	jmp	.LBB2_36
.LBB2_36:                               # %do.end.56
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_bytes
	movl	%eax, -252(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-256(%rbp), %rsi
	leaq	-260(%rbp), %rdx
	leaq	-264(%rbp), %rcx
	leaq	-268(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_bounds
	movl	%eax, -288(%rbp)
	movl	-256(%rbp), %eax
	cmpl	-264(%rbp), %eax
	je	.LBB2_38
# BB#37:                                # %lor.lhs.false.65
	movl	-260(%rbp), %eax
	cmpl	-268(%rbp), %eax
	jne	.LBB2_39
.LBB2_38:                               # %if.then.67
	jmp	.LBB2_102
.LBB2_39:                               # %if.end.68
	cmpl	$0, -20(%rbp)
	je	.LBB2_41
# BB#40:                                # %lor.lhs.false.70
	cmpl	$1, -20(%rbp)
	jne	.LBB2_42
.LBB2_41:                               # %if.then.72
	leaq	-340(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rax, %rdx
	addq	$2, %rdx
	movq	%rax, %rsi
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	gimp_rgb_get_uchar
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_type
	xorl	%ecx, %ecx
	leaq	-340(%rbp), %r8
	leaq	-272(%rbp), %rdx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_transform_color
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_bytes_with_alpha
	subl	$1, %eax
	movslq	%eax, %rdx
	movb	$-1, -272(%rbp,%rdx)
	jmp	.LBB2_46
.LBB2_42:                               # %if.else.80
	cmpl	$2, -20(%rbp)
	jne	.LBB2_44
# BB#43:                                # %if.then.82
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_type
	leaq	-284(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movq	32(%rdi), %rdx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_image_transform_temp_buf
	movq	%rax, -280(%rbp)
	jmp	.LBB2_45
.LBB2_44:                               # %if.else.86
	movabsq	$.L.str.6, %rdi
	movabsq	$.L__func__.gimp_drawable_bucket_fill_full, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB2_102
.LBB2_45:                               # %if.end.87
	jmp	.LBB2_46
.LBB2_46:                               # %if.end.88
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	cmpl	$0, -36(%rbp)
	je	.LBB2_81
# BB#47:                                # %if.then.90
	movl	$1, %ecx
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-60(%rbp), %edx
	cvttsd2si	-56(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %eax
	cvttsd2si	-72(%rbp), %r10d
	cvttsd2si	-80(%rbp), %r11d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	gimp_image_contiguous_region_by_seed
	movq	%rax, -248(%rbp)
	cmpl	$0, -288(%rbp)
	je	.LBB2_51
# BB#48:                                # %if.then.95
	movl	$0, -344(%rbp)
	movl	$0, -348(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB2_50
# BB#49:                                # %if.then.99
	movq	-16(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-344(%rbp), %rsi
	leaq	-348(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
.LBB2_50:                               # %if.end.102
	movq	-248(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movl	$3, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	subl	-344(%rbp), %esi
	subl	-348(%rbp), %ecx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -436(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-436(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-440(%rbp), %r8d        # 4-byte Reload
	callq	gimp_channel_combine_mask
.LBB2_51:                               # %if.end.106
	leaq	-256(%rbp), %rsi
	leaq	-260(%rbp), %rdx
	leaq	-264(%rbp), %rcx
	leaq	-268(%rbp), %r8
	movq	-248(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, -60(%rbp)
	movl	%eax, -444(%rbp)        # 4-byte Spill
	je	.LBB2_77
# BB#52:                                # %if.then.109
	movq	-16(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-364(%rbp), %rsi
	leaq	-368(%rbp), %rdx
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-256(%rbp), %ecx
	movl	-364(%rbp), %r8d
	movq	-360(%rbp), %rdi
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	%r8d, -464(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-464(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-460(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB2_54
# BB#53:                                # %cond.true
	movl	-364(%rbp), %eax
	movq	-360(%rbp), %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-468(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -472(%rbp)        # 4-byte Spill
	jmp	.LBB2_58
.LBB2_54:                               # %cond.false
	movl	-256(%rbp), %eax
	cmpl	-364(%rbp), %eax
	jge	.LBB2_56
# BB#55:                                # %cond.true.124
	movl	-364(%rbp), %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	jmp	.LBB2_57
.LBB2_56:                               # %cond.false.125
	movl	-256(%rbp), %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB2_57:                               # %cond.end
	movl	-476(%rbp), %eax        # 4-byte Reload
	movl	%eax, -472(%rbp)        # 4-byte Spill
.LBB2_58:                               # %cond.end.126
	movl	-472(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)
	movl	-260(%rbp), %eax
	movl	-368(%rbp), %ecx
	movq	-360(%rbp), %rdi
	movl	%eax, -480(%rbp)        # 4-byte Spill
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-484(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-480(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB2_60
# BB#59:                                # %cond.true.132
	movl	-368(%rbp), %eax
	movq	-360(%rbp), %rdi
	movl	%eax, -488(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-488(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	jmp	.LBB2_64
.LBB2_60:                               # %cond.false.135
	movl	-260(%rbp), %eax
	cmpl	-368(%rbp), %eax
	jge	.LBB2_62
# BB#61:                                # %cond.true.138
	movl	-368(%rbp), %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB2_63
.LBB2_62:                               # %cond.false.139
	movl	-260(%rbp), %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
.LBB2_63:                               # %cond.end.140
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB2_64:                               # %cond.end.142
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)
	movl	-264(%rbp), %eax
	movl	-364(%rbp), %ecx
	movq	-360(%rbp), %rdi
	movl	%eax, -500(%rbp)        # 4-byte Spill
	movl	%ecx, -504(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-504(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-500(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB2_66
# BB#65:                                # %cond.true.148
	movl	-364(%rbp), %eax
	movq	-360(%rbp), %rdi
	movl	%eax, -508(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-508(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -512(%rbp)        # 4-byte Spill
	jmp	.LBB2_70
.LBB2_66:                               # %cond.false.151
	movl	-264(%rbp), %eax
	cmpl	-364(%rbp), %eax
	jge	.LBB2_68
# BB#67:                                # %cond.true.154
	movl	-364(%rbp), %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB2_69
.LBB2_68:                               # %cond.false.155
	movl	-264(%rbp), %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB2_69:                               # %cond.end.156
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	%eax, -512(%rbp)        # 4-byte Spill
.LBB2_70:                               # %cond.end.158
	movl	-512(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)
	movl	-268(%rbp), %eax
	movl	-368(%rbp), %ecx
	movq	-360(%rbp), %rdi
	movl	%eax, -520(%rbp)        # 4-byte Spill
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-524(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	-520(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB2_72
# BB#71:                                # %cond.true.164
	movl	-368(%rbp), %eax
	movq	-360(%rbp), %rdi
	movl	%eax, -528(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-528(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	jmp	.LBB2_76
.LBB2_72:                               # %cond.false.167
	movl	-268(%rbp), %eax
	cmpl	-368(%rbp), %eax
	jge	.LBB2_74
# BB#73:                                # %cond.true.170
	movl	-368(%rbp), %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB2_75
.LBB2_74:                               # %cond.false.171
	movl	-268(%rbp), %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
.LBB2_75:                               # %cond.end.172
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	%eax, -532(%rbp)        # 4-byte Spill
.LBB2_76:                               # %cond.end.174
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	%eax, -268(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-240(%rbp), %rdi
	movl	$1, %edx
	movl	-256(%rbp), %r8d
	movl	-260(%rbp), %ecx
	movl	-264(%rbp), %r9d
	subl	-256(%rbp), %r9d
	movl	-268(%rbp), %r10d
	subl	-260(%rbp), %r10d
	movq	%rax, %rsi
	movl	%edx, -548(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	-364(%rbp), %ecx
	movl	-256(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -256(%rbp)
	movl	-368(%rbp), %ecx
	movl	-260(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -260(%rbp)
	movl	-364(%rbp), %ecx
	movl	-264(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -264(%rbp)
	movl	-368(%rbp), %ecx
	movl	-268(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -268(%rbp)
	jmp	.LBB2_78
.LBB2_77:                               # %if.else.185
	movq	-248(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-240(%rbp), %rdi
	movl	$1, %ecx
	movl	-256(%rbp), %edx
	movl	-260(%rbp), %r8d
	movl	-264(%rbp), %r9d
	subl	-256(%rbp), %r9d
	movl	-268(%rbp), %r10d
	subl	-260(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
.LBB2_78:                               # %if.end.191
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB2_80
# BB#79:                                # %if.then.194
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
.LBB2_80:                               # %if.end.195
	jmp	.LBB2_88
.LBB2_81:                               # %if.else.196
	cmpl	$2, -20(%rbp)
	jne	.LBB2_87
# BB#82:                                # %land.lhs.true.199
	movq	-280(%rbp), %rax
	cmpl	$2, (%rax)
	je	.LBB2_84
# BB#83:                                # %lor.lhs.false.203
	movq	-280(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB2_87
.LBB2_84:                               # %if.then.207
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB2_86
# BB#85:                                # %if.then.210
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
.LBB2_86:                               # %if.end.212
	jmp	.LBB2_87
.LBB2_87:                               # %if.end.213
	jmp	.LBB2_88
.LBB2_88:                               # %if.end.214
	movl	-264(%rbp), %eax
	movl	-256(%rbp), %ecx
	subl	%ecx, %eax
	movl	-268(%rbp), %ecx
	movl	-260(%rbp), %edx
	subl	%edx, %ecx
	movl	-252(%rbp), %edx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	tile_manager_new
	movq	%rax, -112(%rbp)
	movl	-264(%rbp), %ecx
	movl	-256(%rbp), %edx
	subl	%edx, %ecx
	movl	-268(%rbp), %edx
	movl	-260(%rbp), %esi
	subl	%esi, %edx
	movq	%rsp, %r8
	movl	$1, (%r8)
	leaq	-176(%rbp), %rdi
	xorl	%esi, %esi
	movl	%esi, -568(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-568(%rbp), %r9d        # 4-byte Reload
	movl	%edx, -572(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -576(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-576(%rbp), %r8d        # 4-byte Reload
	movl	-572(%rbp), %r9d        # 4-byte Reload
	callq	pixel_region_init
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	movl	%edx, -584(%rbp)        # 4-byte Spill
	jb	.LBB2_89
	jmp	.LBB2_103
.LBB2_103:                              # %if.end.214
	movl	-580(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	je	.LBB2_93
	jmp	.LBB2_97
.LBB2_89:                               # %sw.bb
	cmpq	$0, -248(%rbp)
	je	.LBB2_91
# BB#90:                                # %if.then.221
	leaq	-176(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	callq	color_region_mask
	jmp	.LBB2_92
.LBB2_91:                               # %if.else.223
	leaq	-176(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	callq	color_region
.LBB2_92:                               # %if.end.225
	jmp	.LBB2_97
.LBB2_93:                               # %sw.bb.226
	cmpq	$0, -248(%rbp)
	je	.LBB2_95
# BB#94:                                # %if.then.228
	leaq	-176(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	movq	-280(%rbp), %rdx
	movl	-256(%rbp), %ecx
	movl	-260(%rbp), %r8d
	callq	pattern_region
	jmp	.LBB2_96
.LBB2_95:                               # %if.else.229
	leaq	-176(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-280(%rbp), %rdx
	movl	-256(%rbp), %ecx
	movl	-260(%rbp), %r8d
	callq	pattern_region
.LBB2_96:                               # %if.end.230
	jmp	.LBB2_97
.LBB2_97:                               # %sw.epilog
	leaq	-176(%rbp), %rdi
	xorl	%eax, %eax
	movq	-112(%rbp), %rsi
	movl	-264(%rbp), %ecx
	subl	-256(%rbp), %ecx
	movl	-268(%rbp), %edx
	subl	-260(%rbp), %edx
	movl	%edx, -592(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-596(%rbp), %r8d        # 4-byte Reload
	movl	-592(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	pixel_region_init
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.9, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %r10
	movq	%r10, -608(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	leaq	-176(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-24(%rbp), %r8d
	movl	-256(%rbp), %ecx
	movl	-260(%rbp), %r11d
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movl	-612(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-112(%rbp), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rdi
	movl	-256(%rbp), %esi
	movl	-260(%rbp), %edx
	movl	-264(%rbp), %r8d
	subl	-256(%rbp), %r8d
	movl	-268(%rbp), %r11d
	subl	-260(%rbp), %r11d
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gimp_drawable_update
	cmpq	$0, -248(%rbp)
	je	.LBB2_99
# BB#98:                                # %if.then.237
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB2_99:                               # %if.end.238
	cmpl	$0, -284(%rbp)
	je	.LBB2_101
# BB#100:                               # %if.then.240
	movq	-280(%rbp), %rdi
	callq	temp_buf_free
.LBB2_101:                              # %if.end.241
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_unset_busy
.LBB2_102:                              # %return
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_bucket_fill_full, .Lfunc_end2-gimp_drawable_bucket_fill_full
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_bucket_fill,@object # @__func__.gimp_drawable_bucket_fill
.L__func__.gimp_drawable_bucket_fill:
	.asciz	"gimp_drawable_bucket_fill"
	.size	.L__func__.gimp_drawable_bucket_fill, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"No patterns available for this operation."
	.size	.L.str.5, 42

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s: invalid fill_mode passed"
	.size	.L.str.6, 29

	.type	.L__func__.gimp_drawable_bucket_fill_full,@object # @__func__.gimp_drawable_bucket_fill_full
.L__func__.gimp_drawable_bucket_fill_full:
	.asciz	"gimp_drawable_bucket_fill_full"
	.size	.L__func__.gimp_drawable_bucket_fill_full, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fill_mode != GIMP_PATTERN_BUCKET_FILL || GIMP_IS_PATTERN (pattern)"
	.size	.L.str.7, 67

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"fill_mode == GIMP_PATTERN_BUCKET_FILL || color != NULL"
	.size	.L.str.8, 55

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"undo-type\004Bucket Fill"
	.size	.L.str.9, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
