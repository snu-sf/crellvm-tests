	.text
	.file	"gimpdrawable-desaturate.bc"
	.globl	gimp_drawable_desaturate
	.align	16, 0x90
	.type	gimp_drawable_desaturate,@function
gimp_drawable_desaturate:               # @gimp_drawable_desaturate
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_desaturate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_38
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_desaturate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_38
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	cmpq	$0, -16(%rbp)
	je	.LBB0_27
# BB#19:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.28
	movl	$0, -68(%rbp)
	jmp	.LBB0_26
.LBB0_21:                               # %if.else.29
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#22:                                # %land.lhs.true.32
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.36
	movl	$1, -68(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.37
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_25:                               # %if.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.40
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_28
.LBB0_27:                               # %if.then.43
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_desaturate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_38
.LBB0_29:                               # %if.end.45
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.46
	jmp	.LBB0_31
.LBB0_31:                               # %do.body.47
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_33
# BB#32:                                # %if.then.52
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.53
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_desaturate, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_38
.LBB0_34:                               # %if.end.54
	jmp	.LBB0_35
.LBB0_35:                               # %do.end.55
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rdi
	callq	gimp_use_gegl
	cmpl	$0, %eax
	je	.LBB0_37
# BB#36:                                # %if.then.61
	callq	gegl_node_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -80(%rbp)
	callq	gimp_desaturate_config_get_type
	movabsq	$.L.str.7, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movabsq	$.L.str.9, %rdi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %r8d
	movq	-80(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB0_38
.LBB0_37:                               # %if.else.69
	movabsq	$.L.str.9, %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$desaturate_region, %rsi
	leaq	-20(%rbp), %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	gimp_drawable_process
.LBB0_38:                               # %if.end.71
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_desaturate, .Lfunc_end0-gimp_drawable_desaturate
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_desaturate,@object # @__func__.gimp_drawable_desaturate
.L__func__.gimp_drawable_desaturate:
	.asciz	"gimp_drawable_desaturate"
	.size	.L__func__.gimp_drawable_desaturate, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_drawable_is_rgb (drawable)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"operation"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp:desaturate"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"mode"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"config"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Desaturate"
	.size	.L.str.9, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
