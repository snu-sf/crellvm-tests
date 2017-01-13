	.text
	.file	"buffers-commands.bc"
	.globl	buffers_paste_cmd_callback
	.align	16, 0x90
	.type	buffers_paste_cmd_callback,@function
buffers_paste_cmd_callback:             # @buffers_paste_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_buffer_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	buffers_paste
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	buffers_paste_cmd_callback, .Lfunc_end0-buffers_paste_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	buffers_paste,@function
buffers_paste:                          # @buffers_paste
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_context_get_buffer
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_8
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB1_8
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_context_get_display
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	$-1, -72(%rbp)
	movl	$-1, -76(%rbp)
	movl	$-1, -80(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.13
	movq	-56(%rbp), %rdi
	callq	gimp_display_get_shell
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	movq	-56(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movq	-40(%rbp), %rdi
	callq	gimp_context_get_image
	movq	%rax, -64(%rbp)
.LBB1_5:                                # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.18
	movq	-64(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_active_drawable
	movq	-48(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %r10d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-124(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_edit_paste
	movq	-64(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_flush
.LBB1_7:                                # %if.end.21
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.22
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	buffers_paste, .Lfunc_end1-buffers_paste
	.cfi_endproc

	.globl	buffers_paste_into_cmd_callback
	.align	16, 0x90
	.type	buffers_paste_into_cmd_callback,@function
buffers_paste_into_cmd_callback:        # @buffers_paste_into_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_buffer_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	buffers_paste
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	buffers_paste_into_cmd_callback, .Lfunc_end2-buffers_paste_into_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	buffers_paste_as_new_cmd_callback
	.align	16, 0x90
	.type	buffers_paste_as_new_cmd_callback,@function
buffers_paste_as_new_cmd_callback:      # @buffers_paste_as_new_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_context_get_buffer
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rdx
	callq	gimp_image_new_from_buffer
	xorl	%edx, %edx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_create_display
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_object_unref
.LBB3_3:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	buffers_paste_as_new_cmd_callback, .Lfunc_end3-buffers_paste_as_new_cmd_callback
	.cfi_endproc

	.globl	buffers_delete_cmd_callback
	.align	16, 0x90
	.type	buffers_delete_cmd_callback,@function
buffers_delete_cmd_callback:            # @buffers_delete_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_remove_active
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	buffers_delete_cmd_callback, .Lfunc_end4-buffers_delete_cmd_callback
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
