	.text
	.file	"images-commands.bc"
	.globl	images_raise_views_cmd_callback
	.align	16, 0x90
	.type	images_raise_views_cmd_callback,@function
images_raise_views_cmd_callback:        # @images_raise_views_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
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
	callq	gimp_context_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_12
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB0_12
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -56(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_present
.LBB0_6:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_10
.LBB0_10:                               # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB0_3
.LBB0_11:                               # %for.end
	jmp	.LBB0_12
.LBB0_12:                               # %if.end.17
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	images_raise_views_cmd_callback, .Lfunc_end0-images_raise_views_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	images_new_view_cmd_callback
	.align	16, 0x90
	.type	images_new_view_cmd_callback,@function
images_new_view_cmd_callback:           # @images_new_view_cmd_callback
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
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
	callq	gimp_context_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then
	xorl	%edx, %edx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_create_display
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB1_3:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	images_new_view_cmd_callback, .Lfunc_end1-images_new_view_cmd_callback
	.cfi_endproc

	.globl	images_delete_image_cmd_callback
	.align	16, 0x90
	.type	images_delete_image_cmd_callback,@function
images_delete_image_cmd_callback:       # @images_delete_image_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
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
	callq	gimp_context_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB2_5
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB2_5
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_display_count
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.11
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.12
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	images_delete_image_cmd_callback, .Lfunc_end2-images_delete_image_cmd_callback
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
