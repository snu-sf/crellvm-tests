	.text
	.file	"gimpdrawable-invert.bc"
	.globl	gimp_drawable_invert
	.align	16, 0x90
	.type	gimp_drawable_invert,@function
gimp_drawable_invert:                   # @gimp_drawable_invert
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_invert, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_33
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
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
	movabsq	$.L__func__.gimp_drawable_invert, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_33
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.20
	cmpq	$0, -16(%rbp)
	je	.LBB0_27
# BB#19:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.30
	movl	$0, -60(%rbp)
	jmp	.LBB0_26
.LBB0_21:                               # %if.else.31
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#22:                                # %land.lhs.true.34
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.38
	movl	$1, -60(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.39
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_25:                               # %if.end.41
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.42
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_28
.LBB0_27:                               # %if.then.45
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.46
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_invert, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_33
.LBB0_29:                               # %if.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.48
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rdi
	callq	gimp_use_gegl
	cmpl	$0, %eax
	je	.LBB0_32
# BB#31:                                # %if.then.54
	callq	gegl_node_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movabsq	$.L.str.6, %rdi
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %r8d
	movq	-72(%rbp), %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.59
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_bytes
	movl	%eax, %edi
	callq	invert_lut_new
	movabsq	$.L.str.6, %rdi
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_process_lut
	movq	-80(%rbp), %rdi
	callq	gimp_lut_free
.LBB0_33:                               # %if.end.64
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_invert, .Lfunc_end0-gimp_drawable_invert
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_invert,@object # @__func__.gimp_drawable_invert
.L__func__.gimp_drawable_invert:
	.asciz	"gimp_drawable_invert"
	.size	.L__func__.gimp_drawable_invert, 21

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
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"operation"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gegl:invert"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invert"
	.size	.L.str.6, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
