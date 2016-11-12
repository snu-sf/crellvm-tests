	.text
	.file	"gimpcanvastransformpreview.bc"
	.globl	gimp_canvas_transform_preview_get_type
	.align	16, 0x90
	.type	gimp_canvas_transform_preview_get_type,@function
gimp_canvas_transform_preview_get_type: # @gimp_canvas_transform_preview_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_canvas_transform_preview_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_transform_preview_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
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
	callq	gimp_canvas_item_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_transform_preview_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_transform_preview_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_canvas_transform_preview_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_transform_preview_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_transform_preview_get_type, .Lfunc_end0-gimp_canvas_transform_preview_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_preview_class_intern_init,@function
gimp_canvas_transform_preview_class_intern_init: # @gimp_canvas_transform_preview_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_canvas_transform_preview_parent_class
	cmpl	$0, GimpCanvasTransformPreview_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasTransformPreview_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_transform_preview_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_transform_preview_class_intern_init, .Lfunc_end1-gimp_canvas_transform_preview_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_preview_init,@function
gimp_canvas_transform_preview_init:     # @gimp_canvas_transform_preview_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_canvas_transform_preview_init, .Lfunc_end2-gimp_canvas_transform_preview_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_canvas_transform_preview_new
	.align	16, 0x90
	.type	gimp_canvas_transform_preview_new,@function
gimp_canvas_transform_preview_new:      # @gimp_canvas_transform_preview_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm2, -96(%rbp)
	movsd	%xmm3, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movsd	%xmm4, -120(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_36
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -164(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -164(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_36
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpq	$0, -72(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.41
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_36
.LBB3_28:                               # %if.end.43
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.44
	callq	gimp_canvas_transform_preview_get_type
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %rcx
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-104(%rbp), %xmm4       # xmm4 = mem[0],zero
	movl	-108(%rbp), %esi
	movsd	-120(%rbp), %xmm5       # xmm5 = mem[0],zero
	ucomisd	%xmm0, %xmm5
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	movsd	%xmm2, -224(%rbp)       # 8-byte Spill
	movsd	%xmm3, -232(%rbp)       # 8-byte Spill
	movsd	%xmm4, -240(%rbp)       # 8-byte Spill
	jbe	.LBB3_31
# BB#30:                                # %cond.true
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB3_35
.LBB3_31:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	jbe	.LBB3_33
# BB#32:                                # %cond.true.48
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB3_34
.LBB3_33:                               # %cond.false.49
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB3_34:                               # %cond.end
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB3_35:                               # %cond.end.50
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r9
	movabsq	$.L.str.8, %rax
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %r8
	movabsq	$.L.str.12, %r10
	movabsq	$.L.str.13, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-192(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	-200(%rbp), %r13        # 8-byte Reload
	movq	%r8, -280(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movq	-208(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	%rax, 8(%rsp)
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movsd	-232(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movsd	-240(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	%r10, 40(%rsp)
	movl	-180(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 48(%rsp)
	movq	%r11, 56(%rsp)
	movsd	-288(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movq	$0, 64(%rsp)
	movb	$5, %al
	movq	%r14, -296(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB3_36:                               # %return
	movq	-48(%rbp), %rax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_transform_preview_new, .Lfunc_end3-gimp_canvas_transform_preview_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	-4535124824762089472    # double -262144
.LCPI4_2:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_preview_class_init,@function
gimp_canvas_transform_preview_class_init: # @gimp_canvas_transform_preview_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_canvas_transform_preview_get_extents, %rsi
	movabsq	$gimp_canvas_transform_preview_draw, %rdi
	movabsq	$gimp_canvas_transform_preview_get_property, %rcx
	movabsq	$gimp_canvas_transform_preview_set_property, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$227, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	gimp_param_spec_matrix3
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$6, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movl	$227, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$8, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$128, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_transform_preview_class_init, .Lfunc_end4-gimp_canvas_transform_preview_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_preview_set_property,@function
gimp_canvas_transform_preview_set_property: # @gimp_canvas_transform_preview_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_transform_preview_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB5_12
# BB#16:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB5_15
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then
	movl	$72, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	addq	$8, %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	gimp_matrix3_identity
.LBB5_5:                                # %if.end
	jmp	.LBB5_15
.LBB5_6:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 80(%rdi)
	jmp	.LBB5_15
.LBB5_7:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 88(%rdi)
	jmp	.LBB5_15
.LBB5_8:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 96(%rdi)
	jmp	.LBB5_15
.LBB5_9:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 104(%rdi)
	jmp	.LBB5_15
.LBB5_10:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 112(%rdi)
	jmp	.LBB5_15
.LBB5_11:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 120(%rdi)
	jmp	.LBB5_15
.LBB5_12:                               # %sw.default
	jmp	.LBB5_13
.LBB5_13:                               # %do.body
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
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$294, %edx              # imm = 0x126
	movabsq	$.L.str.16, %rcx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#14:                                # %do.end
	jmp	.LBB5_15
.LBB5_15:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_transform_preview_set_property, .Lfunc_end5-gimp_canvas_transform_preview_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_6
	.quad	.LBB5_7
	.quad	.LBB5_8
	.quad	.LBB5_9
	.quad	.LBB5_10
	.quad	.LBB5_11

	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_preview_get_property,@function
gimp_canvas_transform_preview_get_property: # @gimp_canvas_transform_preview_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_transform_preview_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB6_12
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB6_12
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	112(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_12
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_8:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_12
.LBB6_9:                                # %sw.default
	jmp	.LBB6_10
.LBB6_10:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$342, %edx              # imm = 0x156
	movabsq	$.L.str.16, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB6_12
.LBB6_12:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_transform_preview_get_property, .Lfunc_end6-gimp_canvas_transform_preview_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6
	.quad	.LBB6_7
	.quad	.LBB6_3
	.quad	.LBB6_8

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4643211180634609287     # double 255.999
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_preview_draw,@function
gimp_canvas_transform_preview_draw:     # @gimp_canvas_transform_preview_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$2712, %rsp             # imm = 0xA98
.Ltmp29:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, -2632(%rbp)       # 8-byte Spill
	movq	%rdi, -2640(%rbp)       # 8-byte Spill
	callq	gimp_canvas_transform_preview_get_type
	movq	-2640(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -2417(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-2632(%rbp), %rdx       # 8-byte Reload
	callq	gimp_canvas_transform_preview_transform
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_31
.LBB7_2:                                # %if.end
	movq	$0, -48(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2648(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-2648(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_bounds
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.8
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2656(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-2656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -2432(%rbp)
	movq	-2432(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -2664(%rbp)       # 8-byte Spill
	callq	gimp_item_get_type
	movq	-2664(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
.LBB7_4:                                # %if.end.17
	movq	-40(%rbp), %rax
	cmpl	$0, 112(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.19
	movl	$6, -76(%rbp)
	movl	$6, -80(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movl	$1, -76(%rbp)
	movl	$1, -80(%rbp)
.LBB7_7:                                # %if.end.20
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	80(%rax), %xmm0
	cvtsi2ssl	-76(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	88(%rax), %xmm0
	cvtsi2ssl	-80(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -108(%rbp)
	movl	-60(%rbp), %ecx
	subl	-52(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	-76(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
	movl	-64(%rbp), %ecx
	subl	-56(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm0
	cvtsi2ssl	-80(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -100(%rbp)
	movl	$0, -84(%rbp)
.LBB7_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -84(%rbp)
	jge	.LBB7_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB7_8 Depth=1
	leaq	-2440(%rbp), %rsi
	leaq	-2448(%rbp), %rdx
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	movss	-104(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %ecx
	andl	$1, %ecx
	addl	$0, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -2456(%rbp)
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movss	-108(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %ecx
	sarl	$1, %ecx
	addl	$0, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -2464(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movsd	-2456(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2464(%rbp), %xmm1      # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-2456(%rbp), %rsi
	leaq	-2464(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-2440(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2448(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	cvttsd2si	-2456(%rbp), %ecx
	movslq	-84(%rbp), %rax
	movl	%ecx, -688(%rbp,%rax,4)
	cvttsd2si	-2464(%rbp), %ecx
	movslq	-84(%rbp), %rax
	movl	%ecx, -1264(%rbp,%rax,4)
	cvtsi2ssl	-52(%rbp), %xmm0
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %ecx
	andl	$1, %ecx
	addl	$0, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movslq	-84(%rbp), %rax
	movss	%xmm0, -1840(%rbp,%rax,4)
	cvtsi2ssl	-56(%rbp), %xmm0
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %ecx
	sarl	$1, %ecx
	addl	$0, %ecx
	cvtsi2ssl	%ecx, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movslq	-84(%rbp), %rax
	movss	%xmm0, -2416(%rbp,%rax,4)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_8
.LBB7_11:                               # %for.end
	movl	$1, -84(%rbp)
.LBB7_12:                               # %for.cond.74
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB7_15
# BB#13:                                # %for.body.77
                                        #   in Loop: Header=BB7_12 Depth=1
	leaq	-2472(%rbp), %rsi
	leaq	-2480(%rbp), %rdx
	xorps	%xmm0, %xmm0
	leaq	-2416(%rbp), %rax
	leaq	-1840(%rbp), %rcx
	leaq	-1264(%rbp), %rdi
	leaq	-688(%rbp), %r8
	movl	-84(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	4(%r11), %r9d
	movslq	-84(%rbp), %r10
	shlq	$4, %r10
	addq	%r10, %r8
	movl	%r9d, (%r8)
	movl	-84(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r8
	shlq	$4, %r8
	movq	%rdi, %r10
	addq	%r8, %r10
	movl	4(%r10), %r9d
	movslq	-84(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rdi
	movl	%r9d, (%rdi)
	movl	-84(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %rdi
	shlq	$4, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movss	4(%r8), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movslq	-84(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movss	%xmm1, (%rcx)
	movl	-84(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movss	4(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movslq	-84(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movss	%xmm1, (%rax)
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movss	-104(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm3
	mulss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -2488(%rbp)
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm1         # xmm1 = mem[0],zero
	mulss	-108(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -2496(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movsd	-2488(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2496(%rbp), %xmm1      # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-2488(%rbp), %rsi
	leaq	-2496(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-2472(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2480(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-2504(%rbp), %rsi
	leaq	-2512(%rbp), %rdx
	movss	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	leaq	-2416(%rbp), %rax
	leaq	-1840(%rbp), %rcx
	leaq	-1264(%rbp), %rdi
	leaq	-688(%rbp), %r8
	xorps	%xmm1, %xmm1
	cvttsd2si	-2488(%rbp), %r9d
	movslq	-84(%rbp), %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	%r9d, 4(%r11)
	cvttsd2si	-2496(%rbp), %r9d
	movslq	-84(%rbp), %r10
	shlq	$4, %r10
	movq	%rdi, %r11
	addq	%r10, %r11
	movl	%r9d, 4(%r11)
	cvtsi2ssl	-52(%rbp), %xmm2
	movss	-96(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm4
	mulss	%xmm4, %xmm3
	addss	%xmm3, %xmm2
	movslq	-84(%rbp), %r10
	shlq	$4, %r10
	movq	%rcx, %r11
	addq	%r10, %r11
	movss	%xmm2, 4(%r11)
	cvtsi2ssl	-56(%rbp), %xmm2
	mulss	-100(%rbp), %xmm1
	addss	%xmm1, %xmm2
	movslq	-84(%rbp), %r10
	shlq	$4, %r10
	movq	%rax, %r11
	addq	%r10, %r11
	movss	%xmm2, 4(%r11)
	movl	-84(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	12(%r11), %r9d
	movslq	-84(%rbp), %r10
	shlq	$4, %r10
	addq	%r10, %r8
	movl	%r9d, 8(%r8)
	movl	-84(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r8
	shlq	$4, %r8
	movq	%rdi, %r10
	addq	%r8, %r10
	movl	12(%r10), %r9d
	movslq	-84(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rdi
	movl	%r9d, 8(%rdi)
	movl	-84(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %rdi
	shlq	$4, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movss	12(%r8), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movslq	-84(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movss	%xmm1, 8(%rcx)
	movl	-84(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	-84(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movss	%xmm1, 8(%rax)
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movss	-104(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm3
	mulss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -2520(%rbp)
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm1         # xmm1 = mem[0],zero
	mulss	-108(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -2528(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movsd	-2520(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2528(%rbp), %xmm1      # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-2520(%rbp), %rsi
	leaq	-2528(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-2504(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2512(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-2416(%rbp), %rax
	movss	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	leaq	-1840(%rbp), %rcx
	leaq	-1264(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	cvttsd2si	-2520(%rbp), %r9d
	movslq	-84(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movl	%r9d, 12(%rsi)
	cvttsd2si	-2528(%rbp), %r9d
	movslq	-84(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movl	%r9d, 12(%rdx)
	cvtsi2ssl	-52(%rbp), %xmm1
	movss	-96(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-84(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	%xmm1, 12(%rcx)
	cvtsi2ssl	-56(%rbp), %xmm1
	mulss	-100(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movslq	-84(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movss	%xmm1, 12(%rax)
# BB#14:                                # %for.inc.208
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_12
.LBB7_15:                               # %for.end.210
	movl	$1, -84(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB7_16:                               # %for.cond.211
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB7_19
# BB#17:                                # %for.body.214
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	-2536(%rbp), %rsi
	leaq	-2544(%rbp), %rdx
	xorps	%xmm0, %xmm0
	leaq	-2416(%rbp), %rax
	leaq	-1840(%rbp), %rcx
	leaq	-1264(%rbp), %rdi
	leaq	-688(%rbp), %r8
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	8(%r11), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	%r9d, (%r11)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rdi, %r11
	addq	%r10, %r11
	movl	8(%r11), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rdi, %r11
	addq	%r10, %r11
	movl	%r9d, (%r11)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rcx, %r11
	addq	%r10, %r11
	movss	8(%r11), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rcx, %r11
	addq	%r10, %r11
	movss	%xmm1, (%r11)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rax, %r11
	addq	%r10, %r11
	movss	8(%r11), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rax, %r11
	addq	%r10, %r11
	movss	%xmm1, (%r11)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	12(%r11), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	addq	%r10, %r8
	movl	%r9d, 4(%r8)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r8
	shlq	$4, %r8
	movq	%rdi, %r10
	addq	%r8, %r10
	movl	12(%r10), %r9d
	movslq	-92(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rdi
	movl	%r9d, 4(%rdi)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %rdi
	shlq	$4, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movss	12(%r8), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movss	%xmm1, 4(%rcx)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movss	%xmm1, 4(%rax)
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	mulss	-104(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -2552(%rbp)
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movss	-108(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -2560(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movsd	-2552(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2560(%rbp), %xmm1      # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-2552(%rbp), %rsi
	leaq	-2560(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-2536(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2544(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-2568(%rbp), %rsi
	leaq	-2576(%rbp), %rdx
	movss	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	leaq	-2416(%rbp), %rax
	leaq	-1840(%rbp), %rcx
	xorps	%xmm1, %xmm1
	leaq	-1264(%rbp), %rdi
	leaq	-688(%rbp), %r8
	cvttsd2si	-2552(%rbp), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	addq	%r10, %r8
	movl	%r9d, 8(%r8)
	cvttsd2si	-2560(%rbp), %r9d
	movslq	-92(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rdi
	movl	%r9d, 8(%rdi)
	cvtsi2ssl	-52(%rbp), %xmm2
	mulss	-96(%rbp), %xmm1
	addss	%xmm1, %xmm2
	movslq	-92(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movss	%xmm2, 8(%rcx)
	cvtsi2ssl	-56(%rbp), %xmm1
	movss	-100(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-92(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movss	%xmm1, 8(%rax)
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	mulss	-104(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -2584(%rbp)
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movss	-108(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -2592(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movsd	-2584(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2592(%rbp), %xmm1      # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-2584(%rbp), %rsi
	leaq	-2592(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-2568(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2576(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-2416(%rbp), %rax
	leaq	-1840(%rbp), %rcx
	movss	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	leaq	-1264(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	cvttsd2si	-2584(%rbp), %r9d
	movslq	-92(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movl	%r9d, 12(%rsi)
	cvttsd2si	-2592(%rbp), %r9d
	movslq	-92(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movl	%r9d, 12(%rdx)
	cvtsi2ssl	-52(%rbp), %xmm1
	mulss	-96(%rbp), %xmm0
	addss	%xmm0, %xmm1
	movslq	-92(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	%xmm1, 12(%rcx)
	cvtsi2ssl	-56(%rbp), %xmm0
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movslq	-92(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 12(%rax)
# BB#18:                                # %for.inc.345
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movl	-76(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB7_16
.LBB7_19:                               # %for.end.348
	movl	$1, -84(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB7_20:                               # %for.cond.349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB7_27
# BB#21:                                # %for.body.352
                                        #   in Loop: Header=BB7_20 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	$1, -88(%rbp)
.LBB7_22:                               # %for.cond.354
                                        #   Parent Loop BB7_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB7_25
# BB#23:                                # %for.body.357
                                        #   in Loop: Header=BB7_22 Depth=2
	leaq	-2600(%rbp), %rsi
	leaq	-2608(%rbp), %rdx
	leaq	-2416(%rbp), %rax
	leaq	-1840(%rbp), %rcx
	leaq	-1264(%rbp), %rdi
	leaq	-688(%rbp), %r8
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	4(%r11), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	%r9d, (%r11)
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rdi, %r11
	addq	%r10, %r11
	movl	4(%r11), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rdi, %r11
	addq	%r10, %r11
	movl	%r9d, (%r11)
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rcx, %r11
	addq	%r10, %r11
	movss	4(%r11), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rcx, %r11
	addq	%r10, %r11
	movss	%xmm0, (%r11)
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rax, %r11
	addq	%r10, %r11
	movss	4(%r11), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rax, %r11
	addq	%r10, %r11
	movss	%xmm0, (%r11)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	12(%r11), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	%r9d, 4(%r11)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rdi, %r11
	addq	%r10, %r11
	movl	12(%r11), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rdi, %r11
	addq	%r10, %r11
	movl	%r9d, 4(%r11)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rcx, %r11
	addq	%r10, %r11
	movss	12(%r11), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rcx, %r11
	addq	%r10, %r11
	movss	%xmm0, 4(%r11)
	movl	-92(%rbp), %r9d
	subl	-76(%rbp), %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%rax, %r11
	addq	%r10, %r11
	movss	12(%r11), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	movq	%rax, %r11
	addq	%r10, %r11
	movss	%xmm0, 4(%r11)
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r10
	shlq	$4, %r10
	movq	%r8, %r11
	addq	%r10, %r11
	movl	12(%r11), %r9d
	movslq	-92(%rbp), %r10
	shlq	$4, %r10
	addq	%r10, %r8
	movl	%r9d, 8(%r8)
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %r8
	shlq	$4, %r8
	movq	%rdi, %r10
	addq	%r8, %r10
	movl	12(%r10), %r9d
	movslq	-92(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rdi
	movl	%r9d, 8(%rdi)
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %rdi
	shlq	$4, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movss	12(%r8), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movss	%xmm0, 8(%rcx)
	movl	-92(%rbp), %r9d
	subl	$1, %r9d
	movslq	%r9d, %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movss	12(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 8(%rax)
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	movss	-104(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-88(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -2616(%rbp)
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movss	-108(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -2624(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movsd	-2616(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2624(%rbp), %xmm1      # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-2616(%rbp), %rsi
	leaq	-2624(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-2600(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2608(%rbp), %xmm1      # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-2416(%rbp), %rax
	leaq	-1840(%rbp), %rcx
	leaq	-1264(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	cvttsd2si	-2616(%rbp), %r9d
	movslq	-92(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movl	%r9d, 12(%rsi)
	cvttsd2si	-2624(%rbp), %r9d
	movslq	-92(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movl	%r9d, 12(%rdx)
	cvtsi2ssl	-52(%rbp), %xmm0
	movss	-96(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-88(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movslq	-92(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movss	%xmm0, 12(%rcx)
	cvtsi2ssl	-56(%rbp), %xmm0
	movss	-100(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-84(%rbp), %r9d
	addl	$1, %r9d
	cvtsi2ssl	%r9d, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movslq	-92(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 12(%rax)
# BB#24:                                # %for.inc.483
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB7_22
.LBB7_25:                               # %for.end.486
                                        #   in Loop: Header=BB7_20 Depth=1
	jmp	.LBB7_26
.LBB7_26:                               # %for.inc.487
                                        #   in Loop: Header=BB7_20 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_20
.LBB7_27:                               # %for.end.489
	movl	-76(%rbp), %eax
	imull	-80(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	$0, -84(%rbp)
.LBB7_28:                               # %for.cond.491
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB7_31
# BB#29:                                # %for.body.494
                                        #   in Loop: Header=BB7_28 Depth=1
	leaq	-2416(%rbp), %rax
	leaq	-1840(%rbp), %rcx
	leaq	-1264(%rbp), %rdx
	leaq	-688(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-32(%rbp), %r8
	movq	-48(%rbp), %r9
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movslq	-84(%rbp), %rbx
	shlq	$4, %rbx
	addq	%rbx, %rsi
	movslq	-84(%rbp), %rbx
	shlq	$4, %rbx
	addq	%rbx, %rdx
	movslq	-84(%rbp), %rbx
	shlq	$4, %rbx
	addq	%rbx, %rcx
	movslq	-84(%rbp), %rbx
	shlq	$4, %rbx
	addq	%rbx, %rax
	movq	%rsi, -2672(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -2680(%rbp)       # 8-byte Spill
	movq	%r9, %rdx
	movq	%rcx, -2688(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movq	-2672(%rbp), %r9        # 8-byte Reload
	movq	-2680(%rbp), %rbx       # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-2688(%rbp), %rbx       # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movzbl	-2417(%rbp), %r10d
	movl	%r10d, 24(%rsp)
	callq	gimp_canvas_transform_preview_draw_quad
# BB#30:                                # %for.inc.507
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB7_28
.LBB7_31:                               # %for.end.509
	addq	$2712, %rsp             # imm = 0xA98
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_transform_preview_draw, .Lfunc_end7-gimp_canvas_transform_preview_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_preview_get_extents,@function
gimp_canvas_transform_preview_get_extents: # @gimp_canvas_transform_preview_get_extents
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
	leaq	-40(%rbp), %rdx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_canvas_transform_preview_transform
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	leaq	-40(%rbp), %rdi
	callq	cairo_region_create_rectangle
	movq	%rax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	$0, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_transform_preview_get_extents, .Lfunc_end8-gimp_canvas_transform_preview_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_preview_transform,@function
gimp_canvas_transform_preview_transform: # @gimp_canvas_transform_preview_transform
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	gimp_canvas_transform_preview_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	88(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rdi
	movsd	96(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	88(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rdi
	movsd	80(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	104(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rdi
	movsd	96(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	104(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_matrix3_transform_point
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-80(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-88(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-96(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # xmm7 = mem[0],zero
	callq	gimp_transform_polygon_is_convex
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_65
.LBB10_2:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB10_64
# BB#3:                                 # %if.then.11
	leaq	-112(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-144(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	leaq	-160(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_5
# BB#4:                                 # %cond.true
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB10_6:                               # %cond.end
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-160(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jbe	.LBB10_8
# BB#7:                                 # %cond.true.13
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %cond.false.14
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB10_9:                               # %cond.end.15
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_14
# BB#10:                                # %cond.true.18
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_12
# BB#11:                                # %cond.true.20
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB10_13
.LBB10_12:                              # %cond.false.21
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB10_13:                              # %cond.end.22
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB10_18
.LBB10_14:                              # %cond.false.24
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_16
# BB#15:                                # %cond.true.26
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false.27
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB10_17:                              # %cond.end.28
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB10_18:                              # %cond.end.30
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_20
# BB#19:                                # %cond.true.35
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB10_21
.LBB10_20:                              # %cond.false.36
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB10_21:                              # %cond.end.37
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jbe	.LBB10_23
# BB#22:                                # %cond.true.41
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB10_24
.LBB10_23:                              # %cond.false.42
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB10_24:                              # %cond.end.43
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_29
# BB#25:                                # %cond.true.47
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_27
# BB#26:                                # %cond.true.50
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB10_28
.LBB10_27:                              # %cond.false.51
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB10_28:                              # %cond.end.52
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	jmp	.LBB10_33
.LBB10_29:                              # %cond.false.54
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_31
# BB#30:                                # %cond.true.57
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jmp	.LBB10_32
.LBB10_31:                              # %cond.false.58
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB10_32:                              # %cond.end.59
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
.LBB10_33:                              # %cond.end.61
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-128(%rbp), %xmm0
	jbe	.LBB10_35
# BB#34:                                # %cond.true.67
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB10_36
.LBB10_35:                              # %cond.false.68
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB10_36:                              # %cond.end.69
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	-160(%rbp), %xmm1
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jbe	.LBB10_38
# BB#37:                                # %cond.true.73
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB10_39
.LBB10_38:                              # %cond.false.74
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB10_39:                              # %cond.end.75
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_44
# BB#40:                                # %cond.true.79
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-128(%rbp), %xmm0
	jbe	.LBB10_42
# BB#41:                                # %cond.true.82
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB10_43
.LBB10_42:                              # %cond.false.83
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB10_43:                              # %cond.end.84
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jmp	.LBB10_48
.LBB10_44:                              # %cond.false.86
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-160(%rbp), %xmm0
	jbe	.LBB10_46
# BB#45:                                # %cond.true.89
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB10_47
.LBB10_46:                              # %cond.false.90
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB10_47:                              # %cond.end.91
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
.LBB10_48:                              # %cond.end.93
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-136(%rbp), %xmm0
	jbe	.LBB10_50
# BB#49:                                # %cond.true.99
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB10_51
.LBB10_50:                              # %cond.false.100
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
.LBB10_51:                              # %cond.end.101
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	-168(%rbp), %xmm1
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	jbe	.LBB10_53
# BB#52:                                # %cond.true.105
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB10_54
.LBB10_53:                              # %cond.false.106
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
.LBB10_54:                              # %cond.end.107
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_59
# BB#55:                                # %cond.true.111
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-136(%rbp), %xmm0
	jbe	.LBB10_57
# BB#56:                                # %cond.true.114
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	jmp	.LBB10_58
.LBB10_57:                              # %cond.false.115
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
.LBB10_58:                              # %cond.end.116
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	jmp	.LBB10_63
.LBB10_59:                              # %cond.false.118
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-168(%rbp), %xmm0
	jbe	.LBB10_61
# BB#60:                                # %cond.true.121
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	jmp	.LBB10_62
.LBB10_61:                              # %cond.false.122
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
.LBB10_62:                              # %cond.end.123
	movsd	-368(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
.LBB10_63:                              # %cond.end.125
	movsd	-360(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 8(%rcx)
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 12(%rcx)
.LBB10_64:                              # %if.end.134
	movl	$1, -4(%rbp)
.LBB10_65:                              # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_transform_preview_transform, .Lfunc_end10-gimp_canvas_transform_preview_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_preview_draw_quad,@function
gimp_canvas_transform_preview_draw_quad: # @gimp_canvas_transform_preview_draw_quad
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
	movb	40(%rbp), %al
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	leaq	-184(%rbp), %r14
	leaq	-192(%rbp), %r15
	leaq	-200(%rbp), %r12
	leaq	-208(%rbp), %r13
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movb	%al, -105(%rbp)
	movq	-80(%rbp), %rdx
	movl	12(%rdx), %ecx
	movl	%ecx, -120(%rbp)
	movq	-88(%rbp), %rdx
	movl	12(%rdx), %ecx
	movl	%ecx, -132(%rbp)
	movq	-96(%rbp), %rdx
	movss	12(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -144(%rbp)
	movq	-104(%rbp), %rdx
	movss	12(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -156(%rbp)
	movq	-80(%rbp), %rdx
	movl	8(%rdx), %ecx
	movl	%ecx, -116(%rbp)
	movq	-88(%rbp), %rdx
	movl	8(%rdx), %ecx
	movl	%ecx, -128(%rbp)
	movq	-96(%rbp), %rdx
	movss	8(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -140(%rbp)
	movq	-104(%rbp), %rdx
	movss	8(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -152(%rbp)
	movq	-80(%rbp), %rdx
	movl	4(%rdx), %ecx
	movl	%ecx, -112(%rbp)
	movq	-88(%rbp), %rdx
	movl	4(%rdx), %ecx
	movl	%ecx, -124(%rbp)
	movq	-96(%rbp), %rdx
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -136(%rbp)
	movq	-104(%rbp), %rdx
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -148(%rbp)
	movq	-56(%rbp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	cairo_clip_extents
	movq	-80(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -164(%rbp)
	movl	%eax, -160(%rbp)
	movq	-88(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -172(%rbp)
	movl	%eax, -168(%rbp)
	movl	$1, -212(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -212(%rbp)
	jge	.LBB11_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-212(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-160(%rbp), %edx
	jge	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-212(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -160(%rbp)
	jmp	.LBB11_7
.LBB11_4:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-212(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-164(%rbp), %edx
	jle	.LBB11_6
# BB#5:                                 # %if.then.33
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-212(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -164(%rbp)
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.36
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-212(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-168(%rbp), %edx
	jge	.LBB11_9
# BB#8:                                 # %if.then.40
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-212(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -168(%rbp)
	jmp	.LBB11_12
.LBB11_9:                               # %if.else.43
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-212(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-172(%rbp), %edx
	jle	.LBB11_11
# BB#10:                                # %if.then.47
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-212(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -172(%rbp)
.LBB11_11:                              # %if.end.50
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.51
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB11_1
.LBB11_14:                              # %for.end
	cvtsi2sdl	-160(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_16
# BB#15:                                # %if.then.54
	cvttsd2si	-184(%rbp), %eax
	movl	%eax, -160(%rbp)
.LBB11_16:                              # %if.end.56
	cvtsi2sdl	-168(%rbp), %xmm0
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_18
# BB#17:                                # %if.then.60
	cvttsd2si	-192(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB11_18:                              # %if.end.62
	cvtsi2sdl	-164(%rbp), %xmm0
	ucomisd	-200(%rbp), %xmm0
	jbe	.LBB11_20
# BB#19:                                # %if.then.66
	cvttsd2si	-200(%rbp), %eax
	movl	%eax, -164(%rbp)
.LBB11_20:                              # %if.end.68
	cvtsi2sdl	-172(%rbp), %xmm0
	ucomisd	-208(%rbp), %xmm0
	jbe	.LBB11_22
# BB#21:                                # %if.then.72
	cvttsd2si	-208(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB11_22:                              # %if.end.74
	movl	-160(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jg	.LBB11_30
# BB#23:                                # %land.lhs.true
	movl	-168(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jg	.LBB11_30
# BB#24:                                # %if.then.79
	xorl	%edi, %edi
	movl	-164(%rbp), %eax
	subl	-160(%rbp), %eax
	addl	$1, %eax
	movl	-172(%rbp), %ecx
	subl	-168(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	cairo_image_surface_create
	movq	%rax, -224(%rbp)
# BB#25:                                # %do.body
	cmpq	$0, -224(%rbp)
	je	.LBB11_27
# BB#26:                                # %if.then.84
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.85
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_quad, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_30
.LBB11_28:                              # %if.end.86
	jmp	.LBB11_29
.LBB11_29:                              # %do.end
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-224(%rbp), %rdx
	movl	-160(%rbp), %ecx
	movl	-168(%rbp), %r8d
	movq	-64(%rbp), %r9
	movl	-68(%rbp), %eax
	movl	-72(%rbp), %r10d
	movq	-80(%rbp), %r11
	movq	-88(%rbp), %rbx
	movq	-96(%rbp), %r14
	movq	-104(%rbp), %r15
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	%r15, 40(%rsp)
	movzbl	-105(%rbp), %eax
	movl	%eax, 48(%rsp)
	callq	gimp_canvas_transform_preview_draw_tri
	leaq	-156(%rbp), %rdx
	leaq	-144(%rbp), %rsi
	leaq	-132(%rbp), %rdi
	leaq	-120(%rbp), %r9
	movq	-48(%rbp), %r11
	movq	-56(%rbp), %rbx
	movq	-224(%rbp), %r14
	movl	-160(%rbp), %ecx
	movl	-168(%rbp), %r8d
	movq	-64(%rbp), %r15
	movl	-68(%rbp), %eax
	movl	-72(%rbp), %r10d
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%r9, -256(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	-256(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-232(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-240(%rbp), %r14        # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-248(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movzbl	-105(%rbp), %eax
	movl	%eax, 48(%rsp)
	callq	gimp_canvas_transform_preview_draw_tri
	movq	-224(%rbp), %rdi
	callq	cairo_surface_destroy
.LBB11_30:                              # %if.end.90
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_canvas_transform_preview_draw_quad, .Lfunc_end11-gimp_canvas_transform_preview_draw_quad
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_preview_draw_tri,@function
gimp_canvas_transform_preview_draw_tri: # @gimp_canvas_transform_preview_draw_tri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp              # imm = 0x120
.Ltmp50:
	.cfi_offset %rbx, -48
.Ltmp51:
	.cfi_offset %r12, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
	movb	64(%rbp), %al
	movq	56(%rbp), %r10
	movq	48(%rbp), %r11
	movq	40(%rbp), %rbx
	movq	32(%rbp), %r14
	movl	24(%rbp), %r15d
	movl	16(%rbp), %r12d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movq	%r9, -72(%rbp)
	movl	%r12d, -76(%rbp)
	movl	%r15d, -80(%rbp)
	movq	%r14, -88(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%r11, -104(%rbp)
	movq	%r10, -112(%rbp)
	movb	%al, -113(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -252(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -252(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -252(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_76
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -56(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_76
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	jmp	.LBB12_18
.LBB12_18:                              # %do.body.17
	cmpq	$0, -88(%rbp)
	je	.LBB12_23
# BB#19:                                # %land.lhs.true.19
	cmpq	$0, -96(%rbp)
	je	.LBB12_23
# BB#20:                                # %land.lhs.true.21
	cmpq	$0, -104(%rbp)
	je	.LBB12_23
# BB#21:                                # %land.lhs.true.23
	cmpq	$0, -112(%rbp)
	je	.LBB12_23
# BB#22:                                # %if.then.25
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_76
.LBB12_24:                              # %if.end.27
	jmp	.LBB12_25
.LBB12_25:                              # %do.end.28
	leaq	-128(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	leaq	-144(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	-48(%rbp), %rdi
	callq	cairo_clip_extents
	movl	$0, -156(%rbp)
.LBB12_26:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_28 Depth 2
	cmpl	$2, -156(%rbp)
	jge	.LBB12_35
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB12_26 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
.LBB12_28:                              # %for.cond.30
                                        #   Parent Loop BB12_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -160(%rbp)
	jge	.LBB12_33
# BB#29:                                # %for.body.32
                                        #   in Loop: Header=BB12_28 Depth=2
	movslq	-160(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-156(%rbp), %rax
	movq	-96(%rbp), %rcx
	cmpl	(%rcx,%rax,4), %edx
	jge	.LBB12_31
# BB#30:                                # %if.then.36
                                        #   in Loop: Header=BB12_28 Depth=2
	movslq	-160(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -260(%rbp)
	movslq	-156(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-160(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movl	-260(%rbp), %edx
	movslq	-156(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movslq	-160(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -260(%rbp)
	movslq	-156(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-160(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movl	-260(%rbp), %edx
	movslq	-156(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
	movslq	-160(%rbp), %rax
	movq	-104(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -264(%rbp)
	movslq	-156(%rbp), %rax
	movq	-104(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-160(%rbp), %rax
	movq	-104(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movss	-264(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-156(%rbp), %rax
	movq	-104(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movslq	-160(%rbp), %rax
	movq	-112(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -264(%rbp)
	movslq	-156(%rbp), %rax
	movq	-112(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-160(%rbp), %rax
	movq	-112(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movss	-264(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movslq	-156(%rbp), %rax
	movq	-112(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
.LBB12_31:                              # %if.end.72
                                        #   in Loop: Header=BB12_28 Depth=2
	jmp	.LBB12_32
.LBB12_32:                              # %for.inc
                                        #   in Loop: Header=BB12_28 Depth=2
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB12_28
.LBB12_33:                              # %for.end
                                        #   in Loop: Header=BB12_26 Depth=1
	jmp	.LBB12_34
.LBB12_34:                              # %for.inc.73
                                        #   in Loop: Header=BB12_26 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_26
.LBB12_35:                              # %for.end.75
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB12_37
# BB#36:                                # %if.then.79
	jmp	.LBB12_76
.LBB12_37:                              # %if.end.80
	movl	$4, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-96(%rbp), %rcx
	subl	(%rcx), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$4, %edx
	movl	%edx, %esi
	movq	%rax, -176(%rbp)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	subl	(%rax), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	(%rax), %esi
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	8(%rax), %r8d
	callq	gimp_canvas_transform_preview_trace_tri_edge
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-104(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-104(%rbp), %rax
	subss	(%rax), %xmm0
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	subl	(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -204(%rbp)
	movq	-112(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	subss	(%rax), %xmm0
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	subl	(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -208(%rbp)
	movq	-104(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -220(%rbp)
	movq	-112(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -224(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movq	-96(%rbp), %rax
	cmpl	4(%rax), %ecx
	je	.LBB12_56
# BB#38:                                # %if.then.114
	movq	-184(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	(%rax), %esi
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	4(%rax), %r8d
	callq	gimp_canvas_transform_preview_trace_tri_edge
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-104(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-104(%rbp), %rax
	subss	(%rax), %xmm0
	movq	-96(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-96(%rbp), %rax
	subl	(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -212(%rbp)
	movq	-112(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	subss	(%rax), %xmm0
	movq	-96(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-96(%rbp), %rax
	subl	(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -216(%rbp)
	movq	-104(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -228(%rbp)
	movq	-112(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -232(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB12_47
# BB#39:                                # %if.then.138
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -164(%rbp)
.LBB12_40:                              # %for.cond.140
                                        # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB12_46
# BB#41:                                # %for.body.144
                                        #   in Loop: Header=BB12_40 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	ucomisd	-136(%rbp), %xmm0
	jb	.LBB12_44
# BB#42:                                # %land.lhs.true.148
                                        #   in Loop: Header=BB12_40 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_44
# BB#43:                                # %if.then.152
                                        #   in Loop: Header=BB12_40 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-72(%rbp), %r9
	movl	-76(%rbp), %eax
	movl	-80(%rbp), %r10d
	movq	-192(%rbp), %r11
	movl	(%r11), %ebx
	movss	-220(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-224(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movq	-200(%rbp), %r11
	movl	(%r11), %r14d
	movss	-228(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	movl	-164(%rbp), %r15d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movzbl	-113(%rbp), %eax
	movl	%eax, 40(%rsp)
	callq	gimp_canvas_transform_preview_draw_tri_row_mask
.LBB12_44:                              # %if.end.153
                                        #   in Loop: Header=BB12_40 Depth=1
	movq	-192(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -192(%rbp)
	movq	-200(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -200(%rbp)
	movss	-204(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-220(%rbp), %xmm0
	movss	%xmm0, -220(%rbp)
	movss	-208(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-224(%rbp), %xmm0
	movss	%xmm0, -224(%rbp)
	movss	-212(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-228(%rbp), %xmm0
	movss	%xmm0, -228(%rbp)
	movss	-216(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-232(%rbp), %xmm0
	movss	%xmm0, -232(%rbp)
# BB#45:                                # %for.inc.159
                                        #   in Loop: Header=BB12_40 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB12_40
.LBB12_46:                              # %for.end.161
	jmp	.LBB12_55
.LBB12_47:                              # %if.else.162
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -164(%rbp)
.LBB12_48:                              # %for.cond.164
                                        # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB12_54
# BB#49:                                # %for.body.168
                                        #   in Loop: Header=BB12_48 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	ucomisd	-136(%rbp), %xmm0
	jb	.LBB12_52
# BB#50:                                # %land.lhs.true.172
                                        #   in Loop: Header=BB12_48 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_52
# BB#51:                                # %if.then.176
                                        #   in Loop: Header=BB12_48 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-192(%rbp), %rax
	movl	(%rax), %r9d
	movss	-220(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-224(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movq	-200(%rbp), %rax
	movl	(%rax), %r10d
	movss	-228(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	movl	-164(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movzbl	-113(%rbp), %r10d
	movl	%r10d, 16(%rsp)
	callq	gimp_canvas_transform_preview_draw_tri_row
.LBB12_52:                              # %if.end.177
                                        #   in Loop: Header=BB12_48 Depth=1
	movq	-192(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -192(%rbp)
	movq	-200(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -200(%rbp)
	movss	-204(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-220(%rbp), %xmm0
	movss	%xmm0, -220(%rbp)
	movss	-208(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-224(%rbp), %xmm0
	movss	%xmm0, -224(%rbp)
	movss	-212(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-228(%rbp), %xmm0
	movss	%xmm0, -228(%rbp)
	movss	-216(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-232(%rbp), %xmm0
	movss	%xmm0, -232(%rbp)
# BB#53:                                # %for.inc.184
                                        #   in Loop: Header=BB12_48 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB12_48
.LBB12_54:                              # %for.end.186
	jmp	.LBB12_55
.LBB12_55:                              # %if.end.187
	jmp	.LBB12_56
.LBB12_56:                              # %if.end.188
	movq	-96(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-96(%rbp), %rax
	cmpl	8(%rax), %ecx
	je	.LBB12_75
# BB#57:                                # %if.then.193
	movq	-184(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	4(%rax), %esi
	movq	-96(%rbp), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	movl	8(%rax), %r8d
	callq	gimp_canvas_transform_preview_trace_tri_edge
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-104(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-104(%rbp), %rax
	subss	4(%rax), %xmm0
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	subl	4(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -212(%rbp)
	movq	-112(%rbp), %rax
	movss	8(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movq	-112(%rbp), %rax
	subss	4(%rax), %xmm0
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rax
	subl	4(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -216(%rbp)
	movq	-104(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -228(%rbp)
	movq	-112(%rbp), %rax
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -232(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB12_66
# BB#58:                                # %if.then.217
	movq	-96(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -164(%rbp)
.LBB12_59:                              # %for.cond.219
                                        # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB12_65
# BB#60:                                # %for.body.223
                                        #   in Loop: Header=BB12_59 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	ucomisd	-136(%rbp), %xmm0
	jb	.LBB12_63
# BB#61:                                # %land.lhs.true.227
                                        #   in Loop: Header=BB12_59 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_63
# BB#62:                                # %if.then.231
                                        #   in Loop: Header=BB12_59 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-72(%rbp), %r9
	movl	-76(%rbp), %eax
	movl	-80(%rbp), %r10d
	movq	-192(%rbp), %r11
	movl	(%r11), %ebx
	movss	-220(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-224(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movq	-200(%rbp), %r11
	movl	(%r11), %r14d
	movss	-228(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	movl	-164(%rbp), %r15d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movzbl	-113(%rbp), %eax
	movl	%eax, 40(%rsp)
	callq	gimp_canvas_transform_preview_draw_tri_row_mask
.LBB12_63:                              # %if.end.232
                                        #   in Loop: Header=BB12_59 Depth=1
	movq	-192(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -192(%rbp)
	movq	-200(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -200(%rbp)
	movss	-204(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-220(%rbp), %xmm0
	movss	%xmm0, -220(%rbp)
	movss	-208(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-224(%rbp), %xmm0
	movss	%xmm0, -224(%rbp)
	movss	-212(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-228(%rbp), %xmm0
	movss	%xmm0, -228(%rbp)
	movss	-216(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-232(%rbp), %xmm0
	movss	%xmm0, -232(%rbp)
# BB#64:                                # %for.inc.239
                                        #   in Loop: Header=BB12_59 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB12_59
.LBB12_65:                              # %for.end.241
	jmp	.LBB12_74
.LBB12_66:                              # %if.else.242
	movq	-96(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -164(%rbp)
.LBB12_67:                              # %for.cond.244
                                        # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB12_73
# BB#68:                                # %for.body.248
                                        #   in Loop: Header=BB12_67 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	ucomisd	-136(%rbp), %xmm0
	jb	.LBB12_71
# BB#69:                                # %land.lhs.true.252
                                        #   in Loop: Header=BB12_67 Depth=1
	cvtsi2sdl	-164(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_71
# BB#70:                                # %if.then.256
                                        #   in Loop: Header=BB12_67 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-192(%rbp), %rax
	movl	(%rax), %r9d
	movss	-220(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-224(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movq	-200(%rbp), %rax
	movl	(%rax), %r10d
	movss	-228(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	movl	-164(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movzbl	-113(%rbp), %r10d
	movl	%r10d, 16(%rsp)
	callq	gimp_canvas_transform_preview_draw_tri_row
.LBB12_71:                              # %if.end.257
                                        #   in Loop: Header=BB12_67 Depth=1
	movq	-192(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -192(%rbp)
	movq	-200(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -200(%rbp)
	movss	-204(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-220(%rbp), %xmm0
	movss	%xmm0, -220(%rbp)
	movss	-208(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-224(%rbp), %xmm0
	movss	%xmm0, -224(%rbp)
	movss	-212(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-228(%rbp), %xmm0
	movss	%xmm0, -228(%rbp)
	movss	-216(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-232(%rbp), %xmm0
	movss	%xmm0, -232(%rbp)
# BB#72:                                # %for.inc.264
                                        #   in Loop: Header=BB12_67 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB12_67
.LBB12_73:                              # %for.end.266
	jmp	.LBB12_74
.LBB12_74:                              # %if.end.267
	jmp	.LBB12_75
.LBB12_75:                              # %if.end.268
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB12_76:                              # %return
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_canvas_transform_preview_draw_tri, .Lfunc_end12-gimp_canvas_transform_preview_draw_tri
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_transform_preview_trace_tri_edge,@function
gimp_canvas_transform_preview_trace_tri_edge: # @gimp_canvas_transform_preview_trace_tri_edge
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movl	-24(%rbp), %ecx
	subl	-16(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	cmpl	$0, -32(%rbp)
	jg	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_22
.LBB13_2:                               # %if.end
	jmp	.LBB13_3
.LBB13_3:                               # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB13_5
# BB#4:                                 # %if.then.3
	jmp	.LBB13_6
.LBB13_5:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_trace_tri_edge, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_22
.LBB13_6:                               # %if.end.4
	jmp	.LBB13_7
.LBB13_7:                               # %do.end
	cmpl	$0, -28(%rbp)
	jl	.LBB13_15
# BB#8:                                 # %if.then.6
	movl	$0, -52(%rbp)
.LBB13_9:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_11 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB13_14
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movl	%eax, (%rcx)
	movl	-28(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB13_11:                              # %while.cond.7
                                        #   Parent Loop BB13_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB13_13
# BB#12:                                # %while.body.9
                                        #   in Loop: Header=BB13_11 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB13_11
.LBB13_13:                              # %while.end
                                        #   in Loop: Header=BB13_9 Depth=1
	jmp	.LBB13_9
.LBB13_14:                              # %while.end.11
	jmp	.LBB13_22
.LBB13_15:                              # %if.else.12
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB13_16:                              # %while.cond.13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_18 Depth 2
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB13_21
# BB#17:                                # %while.body.16
                                        #   in Loop: Header=BB13_16 Depth=1
	jmp	.LBB13_18
.LBB13_18:                              # %while.cond.17
                                        #   Parent Loop BB13_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB13_20
# BB#19:                                # %while.body.19
                                        #   in Loop: Header=BB13_18 Depth=2
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB13_18
.LBB13_20:                              # %while.end.22
                                        #   in Loop: Header=BB13_16 Depth=1
	movl	-28(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$4, %rsi
	movq	%rsi, -48(%rbp)
	movl	%eax, (%rdx)
	jmp	.LBB13_16
.LBB13_21:                              # %while.end.25
	jmp	.LBB13_22
.LBB13_22:                              # %if.end.26
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_canvas_transform_preview_trace_tri_edge, .Lfunc_end13-gimp_canvas_transform_preview_trace_tri_edge
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_preview_draw_tri_row_mask,@function
gimp_canvas_transform_preview_draw_tri_row_mask: # @gimp_canvas_transform_preview_draw_tri_row_mask
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp60:
	.cfi_offset %rbx, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
	movb	56(%rbp), %al
	movl	48(%rbp), %r10d
	movl	40(%rbp), %r11d
	movl	32(%rbp), %ebx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	%r15d, -68(%rbp)
	movl	%r14d, -72(%rbp)
	movl	%ebx, -76(%rbp)
	movss	%xmm0, -80(%rbp)
	movss	%xmm1, -84(%rbp)
	movl	%r11d, -88(%rbp)
	movss	%xmm2, -92(%rbp)
	movss	%xmm3, -96(%rbp)
	movl	%r10d, -100(%rbp)
	movb	%al, -101(%rbp)
	movl	-88(%rbp), %ecx
	cmpl	-76(%rbp), %ecx
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_89
.LBB14_2:                               # %if.end
	jmp	.LBB14_3
.LBB14_3:                               # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB14_5
# BB#4:                                 # %if.then.1
	movl	$0, -204(%rbp)
	jmp	.LBB14_10
.LBB14_5:                               # %if.else
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_8
# BB#6:                                 # %land.lhs.true
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB14_8
# BB#7:                                 # %if.then.5
	movl	$1, -204(%rbp)
	jmp	.LBB14_9
.LBB14_8:                               # %if.else.6
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB14_9:                               # %if.end.8
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.9
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB14_12
# BB#11:                                # %if.then.11
	jmp	.LBB14_13
.LBB14_12:                              # %if.else.12
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri_row_mask, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_89
.LBB14_13:                              # %if.end.13
	jmp	.LBB14_14
.LBB14_14:                              # %do.end
	jmp	.LBB14_15
.LBB14_15:                              # %do.body.14
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB14_17
# BB#16:                                # %if.then.23
	movl	$0, -228(%rbp)
	jmp	.LBB14_22
.LBB14_17:                              # %if.else.24
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_20
# BB#18:                                # %land.lhs.true.27
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB14_20
# BB#19:                                # %if.then.31
	movl	$1, -228(%rbp)
	jmp	.LBB14_21
.LBB14_20:                              # %if.else.32
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB14_21:                              # %if.end.34
	jmp	.LBB14_22
.LBB14_22:                              # %if.end.35
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB14_24
# BB#23:                                # %if.then.38
	jmp	.LBB14_25
.LBB14_24:                              # %if.else.39
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri_row_mask, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_89
.LBB14_25:                              # %if.end.40
	jmp	.LBB14_26
.LBB14_26:                              # %do.end.41
	jmp	.LBB14_27
.LBB14_27:                              # %do.body.42
	cmpq	$0, -48(%rbp)
	je	.LBB14_29
# BB#28:                                # %if.then.44
	jmp	.LBB14_30
.LBB14_29:                              # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri_row_mask, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_89
.LBB14_30:                              # %if.end.46
	jmp	.LBB14_31
.LBB14_31:                              # %do.end.47
	jmp	.LBB14_32
.LBB14_32:                              # %do.body.48
	movq	-48(%rbp), %rdi
	callq	cairo_image_surface_get_format
	cmpl	$0, %eax
	jne	.LBB14_34
# BB#33:                                # %if.then.51
	jmp	.LBB14_35
.LBB14_34:                              # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri_row_mask, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_89
.LBB14_35:                              # %if.end.53
	jmp	.LBB14_36
.LBB14_36:                              # %do.end.54
	movl	-76(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB14_38
# BB#37:                                # %if.then.56
	movl	-88(%rbp), %eax
	movl	%eax, -236(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-236(%rbp), %eax
	movl	%eax, -76(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -240(%rbp)
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)
	movss	-240(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -80(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -240(%rbp)
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -96(%rbp)
	movss	-240(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
.LBB14_38:                              # %if.end.60
	movss	-80(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -132(%rbp)
	movss	-84(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -136(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-80(%rbp), %xmm0
	movl	-88(%rbp), %eax
	subl	-76(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -148(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-84(%rbp), %xmm0
	movl	-88(%rbp), %eax
	subl	-76(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -152(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB14_40
# BB#39:                                # %if.then.68
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movl	-52(%rbp), %eax
	subl	-76(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	addss	-132(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movl	-52(%rbp), %eax
	subl	-76(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	addss	-136(%rbp), %xmm0
	movss	%xmm0, -136(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB14_43
.LBB14_40:                              # %if.else.75
	movl	-76(%rbp), %eax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_get_width
	movl	-392(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	-388(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB14_42
# BB#41:                                # %if.then.81
	jmp	.LBB14_89
.LBB14_42:                              # %if.end.82
	jmp	.LBB14_43
.LBB14_43:                              # %if.end.83
	movl	-88(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB14_45
# BB#44:                                # %if.then.86
	jmp	.LBB14_89
.LBB14_45:                              # %if.else.87
	movl	-88(%rbp), %eax
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movl	%ecx, -400(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_get_width
	movl	-400(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	-396(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB14_47
# BB#46:                                # %if.then.93
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_get_width
	movl	-404(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -88(%rbp)
.LBB14_47:                              # %if.end.97
	jmp	.LBB14_48
.LBB14_48:                              # %if.end.98
	movl	-88(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	%eax, -156(%rbp)
	cmpl	$0, -156(%rbp)
	jne	.LBB14_50
# BB#49:                                # %if.then.101
	jmp	.LBB14_89
.LBB14_50:                              # %if.end.102
	movss	-132(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-68(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-136(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-72(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -144(%rbp)
	movq	-48(%rbp), %rdi
	callq	cairo_surface_flush
	movq	-48(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movl	-100(%rbp), %ecx
	movl	-56(%rbp), %edx
	subl	%edx, %ecx
	movq	-48(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_get_stride
	movl	-420(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movslq	%ecx, %rdi
	movq	-416(%rbp), %rsi        # 8-byte Reload
	addq	%rdi, %rsi
	movl	-76(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	%ecx, %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -128(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, %ecx
	movl	%ecx, %esi
	subl	$5, %eax
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	movl	%eax, -444(%rbp)        # 4-byte Spill
	ja	.LBB14_87
# BB#90:                                # %if.end.102
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_51:                              # %sw.bb
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -176(%rbp)
.LBB14_52:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$0, %eax
	je	.LBB14_56
# BB#53:                                # %while.body
                                        #   in Loop: Header=BB14_52 Depth=1
	leaq	-160(%rbp), %rcx
	movq	-112(%rbp), %rdi
	cvttss2si	-132(%rbp), %esi
	cvttss2si	-136(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	leaq	-161(%rbp), %rcx
	movq	-120(%rbp), %rdi
	cvttss2si	-140(%rbp), %esi
	cvttss2si	-144(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-160(%rbp), %edx
	movzbl	-160(%rbp), %esi
	addl	%esi, %edx
	movzbl	-160(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -180(%rbp)
	movzbl	-101(%rbp), %edx
	movzbl	-161(%rbp), %esi
	imull	%esi, %edx
	addl	$128, %edx
	movslq	%edx, %rcx
	movq	%rcx, -248(%rbp)
	movq	-248(%rbp), %rcx
	shrq	$8, %rcx
	addq	-248(%rbp), %rcx
	shrq	$8, %rcx
	movb	%cl, %al
	movb	%al, -249(%rbp)
# BB#54:                                # %do.body.144
                                        #   in Loop: Header=BB14_52 Depth=1
	movzbl	-249(%rbp), %eax
	movl	-180(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -256(%rbp)
	movzbl	-249(%rbp), %eax
	movl	-180(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -260(%rbp)
	movzbl	-249(%rbp), %eax
	movl	-180(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -264(%rbp)
	movl	-264(%rbp), %eax
	shrl	$8, %eax
	addl	-264(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-128(%rbp), %rdx
	movb	%dil, (%rdx)
	movl	-260(%rbp), %eax
	shrl	$8, %eax
	addl	-260(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-128(%rbp), %rdx
	movb	%dil, 1(%rdx)
	movl	-256(%rbp), %eax
	shrl	$8, %eax
	addl	-256(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-128(%rbp), %rdx
	movb	%dil, 2(%rdx)
	movb	-249(%rbp), %dil
	movq	-128(%rbp), %rdx
	movb	%dil, 3(%rdx)
# BB#55:                                # %do.end.184
                                        #   in Loop: Header=BB14_52 Depth=1
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-132(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-136(%rbp), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-140(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-144(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	jmp	.LBB14_52
.LBB14_56:                              # %while.end
	jmp	.LBB14_88
.LBB14_57:                              # %sw.bb.190
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -176(%rbp)
.LBB14_58:                              # %while.cond.192
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$0, %eax
	je	.LBB14_62
# BB#59:                                # %while.body.195
                                        #   in Loop: Header=BB14_58 Depth=1
	leaq	-160(%rbp), %rcx
	movq	-112(%rbp), %rdi
	cvttss2si	-132(%rbp), %esi
	cvttss2si	-136(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	leaq	-161(%rbp), %rcx
	movq	-120(%rbp), %rdi
	cvttss2si	-140(%rbp), %esi
	cvttss2si	-144(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-160(%rbp), %edx
	movzbl	-160(%rbp), %esi
	addl	%esi, %edx
	movzbl	-160(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -180(%rbp)
	movzbl	-101(%rbp), %edx
	movzbl	-161(%rbp), %esi
	imull	%esi, %edx
	movzbl	-159(%rbp), %esi
	imull	%esi, %edx
	addl	$32603, %edx            # imm = 0x7F5B
	movslq	%edx, %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	shrq	$7, %rcx
	addq	-272(%rbp), %rcx
	shrq	$16, %rcx
	movb	%cl, %al
	movb	%al, -273(%rbp)
# BB#60:                                # %do.body.225
                                        #   in Loop: Header=BB14_58 Depth=1
	movzbl	-273(%rbp), %eax
	movl	-180(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -280(%rbp)
	movzbl	-273(%rbp), %eax
	movl	-180(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -284(%rbp)
	movzbl	-273(%rbp), %eax
	movl	-180(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-176(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -288(%rbp)
	movl	-288(%rbp), %eax
	shrl	$8, %eax
	addl	-288(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-128(%rbp), %rdx
	movb	%dil, (%rdx)
	movl	-284(%rbp), %eax
	shrl	$8, %eax
	addl	-284(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-128(%rbp), %rdx
	movb	%dil, 1(%rdx)
	movl	-280(%rbp), %eax
	shrl	$8, %eax
	addl	-280(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-128(%rbp), %rdx
	movb	%dil, 2(%rdx)
	movb	-273(%rbp), %dil
	movq	-128(%rbp), %rdx
	movb	%dil, 3(%rdx)
# BB#61:                                # %do.end.269
                                        #   in Loop: Header=BB14_58 Depth=1
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-132(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-136(%rbp), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-140(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-144(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	jmp	.LBB14_58
.LBB14_62:                              # %while.end.275
	jmp	.LBB14_88
.LBB14_63:                              # %sw.bb.276
	jmp	.LBB14_64
.LBB14_64:                              # %while.cond.277
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$0, %eax
	je	.LBB14_68
# BB#65:                                # %while.body.280
                                        #   in Loop: Header=BB14_64 Depth=1
	leaq	-160(%rbp), %rcx
	movq	-112(%rbp), %rdi
	cvttss2si	-132(%rbp), %esi
	cvttss2si	-136(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	leaq	-161(%rbp), %rcx
	movq	-120(%rbp), %rdi
	cvttss2si	-140(%rbp), %esi
	cvttss2si	-144(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-101(%rbp), %edx
	movzbl	-161(%rbp), %esi
	imull	%esi, %edx
	addl	$128, %edx
	movslq	%edx, %rcx
	movq	%rcx, -296(%rbp)
	movq	-296(%rbp), %rcx
	shrq	$8, %rcx
	addq	-296(%rbp), %rcx
	shrq	$8, %rcx
	movb	%cl, %al
	movb	%al, -297(%rbp)
# BB#66:                                # %do.body.299
                                        #   in Loop: Header=BB14_64 Depth=1
	movzbl	-297(%rbp), %eax
	movzbl	-160(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -304(%rbp)
	movzbl	-297(%rbp), %eax
	movzbl	-160(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -308(%rbp)
	movzbl	-297(%rbp), %eax
	movzbl	-160(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -312(%rbp)
	movl	-312(%rbp), %eax
	shrl	$8, %eax
	addl	-312(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-308(%rbp), %eax
	shrl	$8, %eax
	addl	-308(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-304(%rbp), %eax
	shrl	$8, %eax
	addl	-304(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-297(%rbp), %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#67:                                # %do.end.337
                                        #   in Loop: Header=BB14_64 Depth=1
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-132(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-136(%rbp), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-140(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-144(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	jmp	.LBB14_64
.LBB14_68:                              # %while.end.343
	jmp	.LBB14_88
.LBB14_69:                              # %sw.bb.344
	jmp	.LBB14_70
.LBB14_70:                              # %while.cond.345
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$0, %eax
	je	.LBB14_74
# BB#71:                                # %while.body.348
                                        #   in Loop: Header=BB14_70 Depth=1
	leaq	-160(%rbp), %rcx
	movq	-112(%rbp), %rdi
	cvttss2si	-132(%rbp), %esi
	cvttss2si	-136(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	leaq	-161(%rbp), %rcx
	movq	-120(%rbp), %rdi
	cvttss2si	-140(%rbp), %esi
	cvttss2si	-144(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-101(%rbp), %edx
	movzbl	-161(%rbp), %esi
	imull	%esi, %edx
	movzbl	-159(%rbp), %esi
	imull	%esi, %edx
	addl	$32603, %edx            # imm = 0x7F5B
	movslq	%edx, %rcx
	movq	%rcx, -320(%rbp)
	movq	-320(%rbp), %rcx
	shrq	$7, %rcx
	addq	-320(%rbp), %rcx
	shrq	$16, %rcx
	movb	%cl, %al
	movb	%al, -321(%rbp)
# BB#72:                                # %do.body.370
                                        #   in Loop: Header=BB14_70 Depth=1
	movzbl	-321(%rbp), %eax
	movzbl	-160(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -328(%rbp)
	movzbl	-321(%rbp), %eax
	movzbl	-160(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -332(%rbp)
	movzbl	-321(%rbp), %eax
	movzbl	-160(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -336(%rbp)
	movl	-336(%rbp), %eax
	shrl	$8, %eax
	addl	-336(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-332(%rbp), %eax
	shrl	$8, %eax
	addl	-332(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-328(%rbp), %eax
	shrl	$8, %eax
	addl	-328(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-321(%rbp), %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#73:                                # %do.end.408
                                        #   in Loop: Header=BB14_70 Depth=1
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-132(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-136(%rbp), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-140(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-144(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	jmp	.LBB14_70
.LBB14_74:                              # %while.end.414
	jmp	.LBB14_88
.LBB14_75:                              # %sw.bb.415
	jmp	.LBB14_76
.LBB14_76:                              # %while.cond.416
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$0, %eax
	je	.LBB14_80
# BB#77:                                # %while.body.419
                                        #   in Loop: Header=BB14_76 Depth=1
	leaq	-160(%rbp), %rcx
	movq	-112(%rbp), %rdi
	cvttss2si	-132(%rbp), %esi
	cvttss2si	-136(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	leaq	-161(%rbp), %rcx
	movq	-120(%rbp), %rdi
	cvttss2si	-140(%rbp), %esi
	cvttss2si	-144(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-101(%rbp), %edx
	movzbl	-161(%rbp), %esi
	imull	%esi, %edx
	addl	$128, %edx
	movslq	%edx, %rcx
	movq	%rcx, -344(%rbp)
	movq	-344(%rbp), %rcx
	shrq	$8, %rcx
	addq	-344(%rbp), %rcx
	shrq	$8, %rcx
	movb	%cl, %al
	movb	%al, -345(%rbp)
# BB#78:                                # %do.body.438
                                        #   in Loop: Header=BB14_76 Depth=1
	movzbl	-345(%rbp), %eax
	movzbl	-160(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -352(%rbp)
	movzbl	-345(%rbp), %eax
	movzbl	-159(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -356(%rbp)
	movzbl	-345(%rbp), %eax
	movzbl	-158(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -360(%rbp)
	movl	-360(%rbp), %eax
	shrl	$8, %eax
	addl	-360(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-356(%rbp), %eax
	shrl	$8, %eax
	addl	-356(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-352(%rbp), %eax
	shrl	$8, %eax
	addl	-352(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-345(%rbp), %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#79:                                # %do.end.476
                                        #   in Loop: Header=BB14_76 Depth=1
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-132(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-136(%rbp), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-140(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-144(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	jmp	.LBB14_76
.LBB14_80:                              # %while.end.482
	jmp	.LBB14_88
.LBB14_81:                              # %sw.bb.483
	jmp	.LBB14_82
.LBB14_82:                              # %while.cond.484
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$0, %eax
	je	.LBB14_86
# BB#83:                                # %while.body.487
                                        #   in Loop: Header=BB14_82 Depth=1
	leaq	-160(%rbp), %rcx
	movq	-112(%rbp), %rdi
	cvttss2si	-132(%rbp), %esi
	cvttss2si	-136(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	leaq	-161(%rbp), %rcx
	movq	-120(%rbp), %rdi
	cvttss2si	-140(%rbp), %esi
	cvttss2si	-144(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-101(%rbp), %edx
	movzbl	-161(%rbp), %esi
	imull	%esi, %edx
	movzbl	-157(%rbp), %esi
	imull	%esi, %edx
	addl	$32603, %edx            # imm = 0x7F5B
	movslq	%edx, %rcx
	movq	%rcx, -368(%rbp)
	movq	-368(%rbp), %rcx
	shrq	$7, %rcx
	addq	-368(%rbp), %rcx
	shrq	$16, %rcx
	movb	%cl, %al
	movb	%al, -369(%rbp)
# BB#84:                                # %do.body.509
                                        #   in Loop: Header=BB14_82 Depth=1
	movzbl	-369(%rbp), %eax
	movzbl	-160(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -376(%rbp)
	movzbl	-369(%rbp), %eax
	movzbl	-159(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -380(%rbp)
	movzbl	-369(%rbp), %eax
	movzbl	-158(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -384(%rbp)
	movl	-384(%rbp), %eax
	shrl	$8, %eax
	addl	-384(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-380(%rbp), %eax
	shrl	$8, %eax
	addl	-380(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-376(%rbp), %eax
	shrl	$8, %eax
	addl	-376(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-369(%rbp), %dl
	movq	-128(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#85:                                # %do.end.547
                                        #   in Loop: Header=BB14_82 Depth=1
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -128(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-132(%rbp), %xmm0
	movss	%xmm0, -132(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-136(%rbp), %xmm0
	movss	%xmm0, -136(%rbp)
	movss	-148(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-140(%rbp), %xmm0
	movss	%xmm0, -140(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-144(%rbp), %xmm0
	movss	%xmm0, -144(%rbp)
	jmp	.LBB14_82
.LBB14_86:                              # %while.end.553
	jmp	.LBB14_88
.LBB14_87:                              # %sw.default
	jmp	.LBB14_89
.LBB14_88:                              # %sw.epilog
	movq	-48(%rbp), %rdi
	callq	cairo_surface_mark_dirty
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	cvtsi2sdl	-52(%rbp), %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	callq	cairo_set_source_surface
	movsd	.LCPI14_0, %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-76(%rbp), %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	movl	-88(%rbp), %eax
	subl	-76(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	callq	cairo_rectangle
	movq	-40(%rbp), %rdi
	callq	cairo_fill
.LBB14_89:                              # %return
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_canvas_transform_preview_draw_tri_row_mask, .Lfunc_end14-gimp_canvas_transform_preview_draw_tri_row_mask
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_75
	.quad	.LBB14_81
	.quad	.LBB14_63
	.quad	.LBB14_69
	.quad	.LBB14_51
	.quad	.LBB14_57

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_canvas_transform_preview_draw_tri_row,@function
gimp_canvas_transform_preview_draw_tri_row: # @gimp_canvas_transform_preview_draw_tri_row
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
	subq	$336, %rsp              # imm = 0x150
	movb	32(%rbp), %al
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movss	%xmm0, -40(%rbp)
	movss	%xmm1, -44(%rbp)
	movl	%r11d, -48(%rbp)
	movss	%xmm2, -52(%rbp)
	movss	%xmm3, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movb	%al, -61(%rbp)
	movl	-48(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_77
.LBB15_2:                               # %if.end
	jmp	.LBB15_3
.LBB15_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB15_5
# BB#4:                                 # %if.then.1
	movl	$0, -140(%rbp)
	jmp	.LBB15_10
.LBB15_5:                               # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_8
# BB#6:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB15_8
# BB#7:                                 # %if.then.5
	movl	$1, -140(%rbp)
	jmp	.LBB15_9
.LBB15_8:                               # %if.else.6
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB15_9:                               # %if.end.8
	jmp	.LBB15_10
.LBB15_10:                              # %if.end.9
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB15_12
# BB#11:                                # %if.then.11
	jmp	.LBB15_13
.LBB15_12:                              # %if.else.12
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri_row, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_77
.LBB15_13:                              # %if.end.13
	jmp	.LBB15_14
.LBB15_14:                              # %do.end
	jmp	.LBB15_15
.LBB15_15:                              # %do.body.14
	cmpq	$0, -24(%rbp)
	je	.LBB15_17
# BB#16:                                # %if.then.16
	jmp	.LBB15_18
.LBB15_17:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri_row, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_77
.LBB15_18:                              # %if.end.18
	jmp	.LBB15_19
.LBB15_19:                              # %do.end.19
	jmp	.LBB15_20
.LBB15_20:                              # %do.body.20
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_format
	cmpl	$0, %eax
	jne	.LBB15_22
# BB#21:                                # %if.then.23
	jmp	.LBB15_23
.LBB15_22:                              # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_transform_preview_draw_tri_row, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_77
.LBB15_23:                              # %if.end.25
	jmp	.LBB15_24
.LBB15_24:                              # %do.end.26
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB15_26
# BB#25:                                # %if.then.28
	movl	-48(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -36(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -152(%rbp)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -40(%rbp)
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -152(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movss	-152(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
.LBB15_26:                              # %if.end.32
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-40(%rbp), %xmm0
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-44(%rbp), %xmm0
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB15_28
# BB#27:                                # %if.then.40
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_31
.LBB15_28:                              # %if.else.47
	movl	-36(%rbp), %eax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_get_width
	movl	-280(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	-276(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB15_30
# BB#29:                                # %if.then.53
	jmp	.LBB15_77
.LBB15_30:                              # %if.end.54
	jmp	.LBB15_31
.LBB15_31:                              # %if.end.55
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB15_33
# BB#32:                                # %if.then.58
	jmp	.LBB15_77
.LBB15_33:                              # %if.else.59
	movl	-48(%rbp), %eax
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_get_width
	movl	-288(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	-284(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB15_35
# BB#34:                                # %if.then.65
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_get_width
	movl	-292(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -48(%rbp)
.LBB15_35:                              # %if.end.69
	jmp	.LBB15_36
.LBB15_36:                              # %if.end.70
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jne	.LBB15_38
# BB#37:                                # %if.then.73
	jmp	.LBB15_77
.LBB15_38:                              # %if.end.74
	movq	-24(%rbp), %rdi
	callq	cairo_surface_flush
	movq	-24(%rbp), %rdi
	callq	cairo_image_surface_get_data
	movl	-60(%rbp), %ecx
	movl	-32(%rbp), %edx
	subl	%edx, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	callq	cairo_image_surface_get_stride
	movl	-308(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movslq	%ecx, %rdi
	movq	-304(%rbp), %rsi        # 8-byte Reload
	addq	%rdi, %rsi
	movl	-36(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%ecx, %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, %ecx
	movl	%ecx, %esi
	subl	$5, %eax
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movl	%eax, -324(%rbp)        # 4-byte Spill
	ja	.LBB15_75
# BB#78:                                # %if.end.74
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_39:                              # %sw.bb
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -112(%rbp)
.LBB15_40:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB15_44
# BB#41:                                # %while.body
                                        #   in Loop: Header=BB15_40 Depth=1
	leaq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdi
	cvttss2si	-84(%rbp), %esi
	cvttss2si	-88(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-104(%rbp), %edx
	movzbl	-104(%rbp), %esi
	addl	%esi, %edx
	movzbl	-104(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -116(%rbp)
# BB#42:                                # %do.body.96
                                        #   in Loop: Header=BB15_40 Depth=1
	movzbl	-61(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-112(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -156(%rbp)
	movzbl	-61(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-112(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -160(%rbp)
	movzbl	-61(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-112(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -164(%rbp)
	movl	-164(%rbp), %eax
	shrl	$8, %eax
	addl	-164(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-80(%rbp), %rdx
	movb	%dil, (%rdx)
	movl	-160(%rbp), %eax
	shrl	$8, %eax
	addl	-160(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-80(%rbp), %rdx
	movb	%dil, 1(%rdx)
	movl	-156(%rbp), %eax
	shrl	$8, %eax
	addl	-156(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-80(%rbp), %rdx
	movb	%dil, 2(%rdx)
	movb	-61(%rbp), %dil
	movq	-80(%rbp), %rdx
	movb	%dil, 3(%rdx)
# BB#43:                                # %do.end.135
                                        #   in Loop: Header=BB15_40 Depth=1
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	jmp	.LBB15_40
.LBB15_44:                              # %while.end
	jmp	.LBB15_76
.LBB15_45:                              # %sw.bb.139
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -112(%rbp)
.LBB15_46:                              # %while.cond.141
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB15_50
# BB#47:                                # %while.body.144
                                        #   in Loop: Header=BB15_46 Depth=1
	leaq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdi
	cvttss2si	-84(%rbp), %esi
	cvttss2si	-88(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-104(%rbp), %edx
	movzbl	-104(%rbp), %esi
	addl	%esi, %edx
	movzbl	-104(%rbp), %esi
	addl	%esi, %edx
	movl	%edx, -116(%rbp)
	movzbl	-61(%rbp), %edx
	movzbl	-103(%rbp), %esi
	imull	%esi, %edx
	addl	$128, %edx
	movslq	%edx, %rcx
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rcx
	shrq	$8, %rcx
	addq	-176(%rbp), %rcx
	shrq	$8, %rcx
	movb	%cl, %al
	movb	%al, -177(%rbp)
# BB#48:                                # %do.body.169
                                        #   in Loop: Header=BB15_46 Depth=1
	movzbl	-177(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-112(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -184(%rbp)
	movzbl	-177(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-112(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -188(%rbp)
	movzbl	-177(%rbp), %eax
	movl	-116(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-112(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -192(%rbp)
	movl	-192(%rbp), %eax
	shrl	$8, %eax
	addl	-192(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-80(%rbp), %rdx
	movb	%dil, (%rdx)
	movl	-188(%rbp), %eax
	shrl	$8, %eax
	addl	-188(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-80(%rbp), %rdx
	movb	%dil, 1(%rdx)
	movl	-184(%rbp), %eax
	shrl	$8, %eax
	addl	-184(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dil
	movq	-80(%rbp), %rdx
	movb	%dil, 2(%rdx)
	movb	-177(%rbp), %dil
	movq	-80(%rbp), %rdx
	movb	%dil, 3(%rdx)
# BB#49:                                # %do.end.213
                                        #   in Loop: Header=BB15_46 Depth=1
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	jmp	.LBB15_46
.LBB15_50:                              # %while.end.217
	jmp	.LBB15_76
.LBB15_51:                              # %sw.bb.218
	jmp	.LBB15_52
.LBB15_52:                              # %while.cond.219
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB15_56
# BB#53:                                # %while.body.222
                                        #   in Loop: Header=BB15_52 Depth=1
	leaq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdi
	cvttss2si	-84(%rbp), %esi
	cvttss2si	-88(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
# BB#54:                                # %do.body.226
                                        #   in Loop: Header=BB15_52 Depth=1
	movzbl	-61(%rbp), %eax
	movzbl	-104(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -196(%rbp)
	movzbl	-61(%rbp), %eax
	movzbl	-104(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -200(%rbp)
	movzbl	-61(%rbp), %eax
	movzbl	-104(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -204(%rbp)
	movl	-204(%rbp), %eax
	shrl	$8, %eax
	addl	-204(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-200(%rbp), %eax
	shrl	$8, %eax
	addl	-200(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-196(%rbp), %eax
	shrl	$8, %eax
	addl	-196(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-61(%rbp), %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#55:                                # %do.end.264
                                        #   in Loop: Header=BB15_52 Depth=1
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	jmp	.LBB15_52
.LBB15_56:                              # %while.end.268
	jmp	.LBB15_76
.LBB15_57:                              # %sw.bb.269
	jmp	.LBB15_58
.LBB15_58:                              # %while.cond.270
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB15_62
# BB#59:                                # %while.body.273
                                        #   in Loop: Header=BB15_58 Depth=1
	leaq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdi
	cvttss2si	-84(%rbp), %esi
	cvttss2si	-88(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-61(%rbp), %edx
	movzbl	-103(%rbp), %esi
	imull	%esi, %edx
	addl	$128, %edx
	movslq	%edx, %rcx
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rcx
	shrq	$8, %rcx
	addq	-216(%rbp), %rcx
	shrq	$8, %rcx
	movb	%cl, %al
	movb	%al, -217(%rbp)
# BB#60:                                # %do.body.291
                                        #   in Loop: Header=BB15_58 Depth=1
	movzbl	-217(%rbp), %eax
	movzbl	-104(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -224(%rbp)
	movzbl	-217(%rbp), %eax
	movzbl	-104(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -228(%rbp)
	movzbl	-217(%rbp), %eax
	movzbl	-104(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -232(%rbp)
	movl	-232(%rbp), %eax
	shrl	$8, %eax
	addl	-232(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-228(%rbp), %eax
	shrl	$8, %eax
	addl	-228(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-224(%rbp), %eax
	shrl	$8, %eax
	addl	-224(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-217(%rbp), %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#61:                                # %do.end.329
                                        #   in Loop: Header=BB15_58 Depth=1
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	jmp	.LBB15_58
.LBB15_62:                              # %while.end.333
	jmp	.LBB15_76
.LBB15_63:                              # %sw.bb.334
	jmp	.LBB15_64
.LBB15_64:                              # %while.cond.335
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB15_68
# BB#65:                                # %while.body.338
                                        #   in Loop: Header=BB15_64 Depth=1
	leaq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdi
	cvttss2si	-84(%rbp), %esi
	cvttss2si	-88(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
# BB#66:                                # %do.body.342
                                        #   in Loop: Header=BB15_64 Depth=1
	movzbl	-61(%rbp), %eax
	movzbl	-104(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -236(%rbp)
	movzbl	-61(%rbp), %eax
	movzbl	-103(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -240(%rbp)
	movzbl	-61(%rbp), %eax
	movzbl	-102(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -244(%rbp)
	movl	-244(%rbp), %eax
	shrl	$8, %eax
	addl	-244(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-240(%rbp), %eax
	shrl	$8, %eax
	addl	-240(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-236(%rbp), %eax
	shrl	$8, %eax
	addl	-236(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-61(%rbp), %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#67:                                # %do.end.380
                                        #   in Loop: Header=BB15_64 Depth=1
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	jmp	.LBB15_64
.LBB15_68:                              # %while.end.384
	jmp	.LBB15_76
.LBB15_69:                              # %sw.bb.385
	jmp	.LBB15_70
.LBB15_70:                              # %while.cond.386
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$0, %eax
	je	.LBB15_74
# BB#71:                                # %while.body.389
                                        #   in Loop: Header=BB15_70 Depth=1
	leaq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdi
	cvttss2si	-84(%rbp), %esi
	cvttss2si	-88(%rbp), %edx
	callq	tile_manager_read_pixel_data_1
	movzbl	-61(%rbp), %edx
	movzbl	-101(%rbp), %esi
	imull	%esi, %edx
	addl	$128, %edx
	movslq	%edx, %rcx
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rcx
	shrq	$8, %rcx
	addq	-256(%rbp), %rcx
	shrq	$8, %rcx
	movb	%cl, %al
	movb	%al, -257(%rbp)
# BB#72:                                # %do.body.407
                                        #   in Loop: Header=BB15_70 Depth=1
	movzbl	-257(%rbp), %eax
	movzbl	-104(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -264(%rbp)
	movzbl	-257(%rbp), %eax
	movzbl	-103(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -268(%rbp)
	movzbl	-257(%rbp), %eax
	movzbl	-102(%rbp), %ecx
	imull	%ecx, %eax
	addl	$128, %eax
	movl	%eax, -272(%rbp)
	movl	-272(%rbp), %eax
	shrl	$8, %eax
	addl	-272(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, (%rsi)
	movl	-268(%rbp), %eax
	shrl	$8, %eax
	addl	-268(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 1(%rsi)
	movl	-264(%rbp), %eax
	shrl	$8, %eax
	addl	-264(%rbp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 2(%rsi)
	movb	-257(%rbp), %dl
	movq	-80(%rbp), %rsi
	movb	%dl, 3(%rsi)
# BB#73:                                # %do.end.445
                                        #   in Loop: Header=BB15_70 Depth=1
	movq	-80(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -80(%rbp)
	movss	-92(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-84(%rbp), %xmm0
	movss	%xmm0, -84(%rbp)
	movss	-96(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-88(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	jmp	.LBB15_70
.LBB15_74:                              # %while.end.449
	jmp	.LBB15_76
.LBB15_75:                              # %sw.default
	jmp	.LBB15_77
.LBB15_76:                              # %sw.epilog
	movq	-24(%rbp), %rdi
	callq	cairo_surface_mark_dirty
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	cvtsi2sdl	-28(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	callq	cairo_set_source_surface
	movsd	.LCPI15_0, %xmm3        # xmm3 = mem[0],zero
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	movl	-48(%rbp), %eax
	subl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	callq	cairo_rectangle
	movq	-16(%rbp), %rdi
	callq	cairo_fill
.LBB15_77:                              # %return
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_canvas_transform_preview_draw_tri_row, .Lfunc_end15-gimp_canvas_transform_preview_draw_tri_row
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_63
	.quad	.LBB15_69
	.quad	.LBB15_51
	.quad	.LBB15_57
	.quad	.LBB15_39
	.quad	.LBB15_45

	.type	gimp_canvas_transform_preview_get_type.g_define_type_id__volatile,@object # @gimp_canvas_transform_preview_get_type.g_define_type_id__volatile
	.local	gimp_canvas_transform_preview_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_transform_preview_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasTransformPreview"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_transform_preview_new,@object # @__func__.gimp_canvas_transform_preview_new
.L__func__.gimp_canvas_transform_preview_new:
	.asciz	"gimp_canvas_transform_preview_new"
	.size	.L__func__.gimp_canvas_transform_preview_new, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"transform != NULL"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"shell"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"drawable"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"transform"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"x1"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"y1"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"x2"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"y2"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"perspective"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"opacity"
	.size	.L.str.13, 8

	.type	gimp_canvas_transform_preview_parent_class,@object # @gimp_canvas_transform_preview_parent_class
	.local	gimp_canvas_transform_preview_parent_class
	.comm	gimp_canvas_transform_preview_parent_class,8,8
	.type	GimpCanvasTransformPreview_private_offset,@object # @GimpCanvasTransformPreview_private_offset
	.local	GimpCanvasTransformPreview_private_offset
	.comm	GimpCanvasTransformPreview_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.14, 54

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpcanvastransformpreview.c"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"property"
	.size	.L.str.16, 9

	.type	.L__func__.gimp_canvas_transform_preview_draw_quad,@object # @__func__.gimp_canvas_transform_preview_draw_quad
.L__func__.gimp_canvas_transform_preview_draw_quad:
	.asciz	"gimp_canvas_transform_preview_draw_quad"
	.size	.L__func__.gimp_canvas_transform_preview_draw_quad, 40

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"area != NULL"
	.size	.L.str.17, 13

	.type	.L__func__.gimp_canvas_transform_preview_draw_tri,@object # @__func__.gimp_canvas_transform_preview_draw_tri
.L__func__.gimp_canvas_transform_preview_draw_tri:
	.asciz	"gimp_canvas_transform_preview_draw_tri"
	.size	.L__func__.gimp_canvas_transform_preview_draw_tri, 39

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_DRAWABLE (texture)"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"x != NULL && y != NULL && u != NULL && v != NULL"
	.size	.L.str.19, 49

	.type	.L__func__.gimp_canvas_transform_preview_trace_tri_edge,@object # @__func__.gimp_canvas_transform_preview_trace_tri_edge
.L__func__.gimp_canvas_transform_preview_trace_tri_edge:
	.asciz	"gimp_canvas_transform_preview_trace_tri_edge"
	.size	.L__func__.gimp_canvas_transform_preview_trace_tri_edge, 45

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"dest != NULL"
	.size	.L.str.20, 13

	.type	.L__func__.gimp_canvas_transform_preview_draw_tri_row_mask,@object # @__func__.gimp_canvas_transform_preview_draw_tri_row_mask
.L__func__.gimp_canvas_transform_preview_draw_tri_row_mask:
	.asciz	"gimp_canvas_transform_preview_draw_tri_row_mask"
	.size	.L__func__.gimp_canvas_transform_preview_draw_tri_row_mask, 48

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GIMP_IS_CHANNEL (mask)"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"cairo_image_surface_get_format (area) == CAIRO_FORMAT_ARGB32"
	.size	.L.str.22, 61

	.type	.L__func__.gimp_canvas_transform_preview_draw_tri_row,@object # @__func__.gimp_canvas_transform_preview_draw_tri_row
.L__func__.gimp_canvas_transform_preview_draw_tri_row:
	.asciz	"gimp_canvas_transform_preview_draw_tri_row"
	.size	.L__func__.gimp_canvas_transform_preview_draw_tri_row, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
