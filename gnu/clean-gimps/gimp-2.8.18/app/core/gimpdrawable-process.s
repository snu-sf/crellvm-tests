	.text
	.file	"gimpdrawable-process.bc"
	.globl	gimp_drawable_process
	.align	16, 0x90
	.type	gimp_drawable_process,@function
gimp_drawable_process:                  # @gimp_drawable_process
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_process, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_37
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L__func__.gimp_drawable_process, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_37
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.20
	cmpq	$0, -16(%rbp)
	je	.LBB0_27
# BB#19:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.30
	movl	$0, -100(%rbp)
	jmp	.LBB0_26
.LBB0_21:                               # %if.else.31
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#22:                                # %land.lhs.true.34
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.38
	movl	$1, -100(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.39
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_25:                               # %if.end.41
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.42
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_28
.LBB0_27:                               # %if.then.45
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.46
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_process, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_37
.LBB0_29:                               # %if.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.48
	jmp	.LBB0_31
.LBB0_31:                               # %do.body.49
	cmpq	$0, -24(%rbp)
	je	.LBB0_33
# BB#32:                                # %if.then.51
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_process, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_37
.LBB0_34:                               # %if.end.53
	jmp	.LBB0_35
.LBB0_35:                               # %do.end.54
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB0_37
# BB#36:                                # %if.then.59
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-168(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%esi, -252(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-252(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_shadow_tiles
	leaq	-232(%rbp), %rdi
	movl	$1, %ecx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$2, %edx
	leaq	-168(%rbp), %rcx
	leaq	-232(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_process_parallel
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_drawable_merge_shadow_tiles
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_free_shadow_tiles
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	callq	gimp_drawable_update
.LBB0_37:                               # %if.end.64
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_process, .Lfunc_end0-gimp_drawable_process
	.cfi_endproc

	.globl	gimp_drawable_process_lut
	.align	16, 0x90
	.type	gimp_drawable_process_lut,@function
gimp_drawable_process_lut:              # @gimp_drawable_process_lut
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
	subq	$48, %rsp
	movabsq	$gimp_lut_process, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gimp_drawable_process
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_process_lut, .Lfunc_end1-gimp_drawable_process_lut
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_process,@object # @__func__.gimp_drawable_process
.L__func__.gimp_drawable_process:
	.asciz	"gimp_drawable_process"
	.size	.L__func__.gimp_drawable_process, 22

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
	.asciz	"undo_desc != NULL"
	.size	.L.str.4, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
