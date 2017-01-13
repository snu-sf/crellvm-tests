	.text
	.file	"gimpdisplayshell-dnd.bc"
	.globl	gimp_display_shell_dnd_init
	.align	16, 0x90
	.type	gimp_display_shell_dnd_init,@function
gimp_display_shell_dnd_init:            # @gimp_display_shell_dnd_init
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_dnd_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movabsq	$gimp_display_shell_drop_drawable, %rdx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	gimp_dnd_viewable_dest_add
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movabsq	$gimp_display_shell_drop_drawable, %rdx
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movabsq	$gimp_display_shell_drop_drawable, %rdx
	movq	-8(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movabsq	$gimp_display_shell_drop_vectors, %rdx
	movq	-8(%rbp), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	movabsq	$gimp_display_shell_drop_pattern, %rdx
	movq	-8(%rbp), %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movabsq	$gimp_display_shell_drop_buffer, %rdx
	movq	-8(%rbp), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movabsq	$gimp_display_shell_drop_color, %rsi
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_dnd_color_dest_add
	movabsq	$gimp_display_shell_drop_component, %rsi
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	callq	gimp_dnd_component_dest_add
	movabsq	$gimp_display_shell_drop_uri_list, %rsi
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	callq	gimp_dnd_uri_list_dest_add
	movabsq	$gimp_display_shell_drop_svg, %rsi
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	callq	gimp_dnd_svg_dest_add
	movabsq	$gimp_display_shell_drop_pixbuf, %rsi
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	callq	gimp_dnd_pixbuf_dest_add
.LBB0_13:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_dnd_init, .Lfunc_end0-gimp_display_shell_dnd_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_display_shell_drop_drawable,@function
gimp_display_shell_drop_drawable:       # @gimp_display_shell_drop_drawable
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_drawable, %rsi
	movl	$219, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %do.end
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB1_6
# BB#5:                                 # %if.then.5
	jmp	.LBB1_20
.LBB1_6:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.8
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_new_from_drawable
	xorl	%edx, %edx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_create_display
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_object_unref
	jmp	.LBB1_20
.LBB1_8:                                # %if.end.17
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB1_15
.LBB1_10:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_13
# BB#11:                                # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB1_13
# BB#12:                                # %if.then.23
	movl	$1, -84(%rbp)
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.24
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB1_14:                               # %if.end.26
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.27
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.29
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_18
.LBB1_17:                               # %if.else.32
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
.LBB1_18:                               # %if.end.34
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_convert
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.39
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rdi
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$29, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_dnd_position_item
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	callq	gimp_item_set_visible
	xorl	%eax, %eax
	movq	-64(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_item_set_linked
	movl	$1, %eax
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-48(%rbp), %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_dnd_flush
.LBB1_20:                               # %if.end.47
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_drop_drawable, .Lfunc_end1-gimp_display_shell_drop_drawable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_drop_vectors,@function
gimp_display_shell_drop_vectors:        # @gimp_display_shell_drop_vectors
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_vectors, %rsi
	movl	$273, %edx              # imm = 0x111
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB2_3:                                # %if.end
	jmp	.LBB2_4
.LBB2_4:                                # %do.end
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB2_6
# BB#5:                                 # %if.then.5
	jmp	.LBB2_10
.LBB2_6:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	jne	.LBB2_8
# BB#7:                                 # %if.then.8
	jmp	.LBB2_10
.LBB2_8:                                # %if.end.9
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_item_convert
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.14
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$29, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	$1, %esi
	movl	%esi, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_image_add_vectors
	movq	-48(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_dnd_flush
.LBB2_10:                               # %if.end.21
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_drop_vectors, .Lfunc_end2-gimp_display_shell_drop_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_drop_pattern,@function
gimp_display_shell_drop_pattern:        # @gimp_display_shell_drop_pattern
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_pattern, %rsi
	movl	$405, %edx              # imm = 0x195
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %do.end
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_pattern_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.2
	movl	$0, -52(%rbp)
	jmp	.LBB3_11
.LBB3_6:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_9
# BB#7:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_9
# BB#8:                                 # %if.then.5
	movl	$1, -52(%rbp)
	jmp	.LBB3_10
.LBB3_9:                                # %if.else.6
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_10:                               # %if.end.8
	jmp	.LBB3_11
.LBB3_11:                               # %if.end.9
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.11
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_display_shell_dnd_bucket_fill
.LBB3_13:                               # %if.end.16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_drop_pattern, .Lfunc_end3-gimp_display_shell_drop_pattern
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_display_shell_drop_buffer,@function
gimp_display_shell_drop_buffer:         # @gimp_display_shell_drop_buffer
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB4_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_buffer, %rsi
	movl	$440, %edx              # imm = 0x1B8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB4_3:                                # %if.end
	jmp	.LBB4_4
.LBB4_4:                                # %do.end
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB4_6
# BB#5:                                 # %if.then.5
	jmp	.LBB4_15
.LBB4_6:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	jne	.LBB4_8
# BB#7:                                 # %if.then.8
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_new_from_buffer
	xorl	%edx, %edx
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_create_display
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_object_unref
	jmp	.LBB4_15
.LBB4_8:                                # %if.end.16
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB4_14
# BB#9:                                 # %if.then.19
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB4_11
# BB#10:                                # %if.then.24
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.30
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB4_13
# BB#12:                                # %if.then.35
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB4_15
.LBB4_13:                               # %if.end.41
	jmp	.LBB4_14
.LBB4_14:                               # %if.end.42
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-76(%rbp), %r10d
	movl	-80(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	gimp_edit_paste
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_dnd_flush
.LBB4_15:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_drop_buffer, .Lfunc_end4-gimp_display_shell_drop_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_drop_color,@function
gimp_display_shell_drop_color:          # @gimp_display_shell_drop_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB5_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_color, %rsi
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB5_3:                                # %if.end
	jmp	.LBB5_4
.LBB5_4:                                # %do.end
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_display_shell_dnd_bucket_fill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_drop_color, .Lfunc_end5-gimp_display_shell_drop_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_display_shell_drop_component,@function
gimp_display_shell_drop_component:      # @gimp_display_shell_drop_component
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_component, %rsi
	movl	$618, %edx              # imm = 0x26A
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %do.end
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.5
	jmp	.LBB6_10
.LBB6_6:                                # %if.end.6
	cmpq	$0, -56(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_image_new_from_component
	xorl	%edx, %edx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_create_display
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_object_unref
	jmp	.LBB6_10
.LBB6_8:                                # %if.end.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	%rcx, %rdx
	callq	gimp_channel_new_from_component
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_convert
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpq	$0, -72(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.20
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	callq	gimp_channel_type_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-80(%rbp), %r8
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-88(%rbp), %rcx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_take_name
	movabsq	$.L.str.2, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$29, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_dnd_position_item
	movl	$1, %eax
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-56(%rbp), %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_dnd_flush
.LBB6_10:                               # %if.end.33
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_drop_component, .Lfunc_end6-gimp_display_shell_drop_component
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_drop_uri_list,@function
gimp_display_shell_drop_uri_list:       # @gimp_display_shell_drop_uri_list
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
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp24:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_37
.LBB7_2:                                # %if.end
	movq	-48(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	%rax, -64(%rbp)
# BB#3:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.7
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_uri_list, %rsi
	movl	$511, %edx              # imm = 0x1FF
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB7_5:                                # %if.end.8
	jmp	.LBB7_6
.LBB7_6:                                # %do.end
	cmpq	$0, -56(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -76(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -72(%rbp)
.LBB7_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB7_35
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB7_10
# BB#9:                                 # %if.then.13
	jmp	.LBB7_37
.LBB7_10:                               # %if.end.14
                                        #   in Loop: Header=BB7_7 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB7_17
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-92(%rbp), %rdi
	leaq	-104(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %r9
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-208(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	callq	file_open_layers
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB7_13
# BB#12:                                # %if.then.24
                                        #   in Loop: Header=BB7_7 Depth=1
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	movabsq	$.L.str.7, %rdi
	movq	-56(%rbp), %rcx
	movq	-120(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	-132(%rbp), %eax
	movl	-136(%rbp), %r10d
	movl	%r10d, -212(%rbp)       # 4-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movl	%r9d, -240(%rbp)        # 4-byte Spill
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$1, %r8d
	movl	%r8d, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	-240(%rbp), %r9d        # 4-byte Reload
	movl	-244(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	-212(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	gimp_image_add_layers
	movq	-120(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB7_16
.LBB7_13:                               # %if.else
                                        #   in Loop: Header=BB7_7 Depth=1
	cmpl	$4, -92(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.30
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$1, -108(%rbp)
.LBB7_15:                               # %if.end.31
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_16
.LBB7_16:                               # %if.end.32
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_27
.LBB7_17:                               # %if.else.33
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-48(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB7_22
# BB#18:                                # %if.then.37
                                        #   in Loop: Header=BB7_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	leaq	-92(%rbp), %r9
	leaq	-104(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	32(%rsi), %rdi
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %r10
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	-256(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	file_open_with_display
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB7_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_7 Depth=1
	cmpl	$4, -92(%rbp)
	je	.LBB7_21
# BB#20:                                # %if.then.44
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$1, -108(%rbp)
.LBB7_21:                               # %if.end.45
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_26
.LBB7_22:                               # %if.else.46
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	leaq	-92(%rbp), %r9
	leaq	-104(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	file_open_with_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_25
# BB#23:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB7_7 Depth=1
	cmpl	$4, -92(%rbp)
	je	.LBB7_25
# BB#24:                                # %if.then.57
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	$1, -108(%rbp)
.LBB7_25:                               # %if.end.58
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_26
.LBB7_26:                               # %if.end.59
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_27
.LBB7_27:                               # %if.end.60
                                        #   in Loop: Header=BB7_7 Depth=1
	cmpl	$0, -108(%rbp)
	je	.LBB7_30
# BB#28:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB7_30
# BB#29:                                # %if.then.65
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-88(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-152(%rbp), %r8
	movq	-104(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-104(%rbp), %rdi
	callq	g_clear_error
	movq	-152(%rbp), %rdi
	callq	g_free
.LBB7_30:                               # %if.end.72
                                        #   in Loop: Header=BB7_7 Depth=1
	jmp	.LBB7_31
.LBB7_31:                               # %for.inc
                                        #   in Loop: Header=BB7_7 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB7_33
# BB#32:                                # %cond.true
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB7_34
.LBB7_33:                               # %cond.false
                                        #   in Loop: Header=BB7_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB7_34
.LBB7_34:                               # %cond.end
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB7_7
.LBB7_35:                               # %for.end
	cmpq	$0, -56(%rbp)
	je	.LBB7_37
# BB#36:                                # %if.then.75
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_display_shell_dnd_flush
.LBB7_37:                               # %if.end.76
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_drop_uri_list, .Lfunc_end7-gimp_display_shell_drop_uri_list
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_drop_svg,@function
gimp_display_shell_drop_svg:            # @gimp_display_shell_drop_svg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_svg, %rsi
	movl	$312, %edx              # imm = 0x138
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB8_3:                                # %if.end
	jmp	.LBB8_4
.LBB8_4:                                # %do.end
	movq	-48(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB8_6
# BB#5:                                 # %if.then.5
	jmp	.LBB8_11
.LBB8_6:                                # %if.end.6
	cmpq	$0, -56(%rbp)
	jne	.LBB8_8
# BB#7:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_8:                                # %if.end.9
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$1, %eax
	movl	%eax, %r9d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-64(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	-24(%rbp), %r11
	movq	-32(%rbp), %rdx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movl	$-1, (%rsp)
	movq	$0, 8(%rsp)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, 16(%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_vectors_import_buffer
	cmpl	$0, %eax
	jne	.LBB8_10
# BB#9:                                 # %if.then.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-64(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB8_11
.LBB8_10:                               # %if.else
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_display_shell_dnd_flush
.LBB8_11:                               # %if.end.17
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_drop_svg, .Lfunc_end8-gimp_display_shell_drop_svg
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_display_shell_drop_pixbuf,@function
gimp_display_shell_drop_pixbuf:         # @gimp_display_shell_drop_pixbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_display_shell_drop_pixbuf, %rsi
	movl	$674, %edx              # imm = 0x2A2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gimp_log
.LBB9_3:                                # %if.end
	jmp	.LBB9_4
.LBB9_4:                                # %do.end
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB9_6
# BB#5:                                 # %if.then.5
	jmp	.LBB9_29
.LBB9_6:                                # %if.end.6
	cmpq	$0, -48(%rbp)
	jne	.LBB9_8
# BB#7:                                 # %if.then.8
	movabsq	$.L.str.10, %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_new_from_pixbuf
	xorl	%edx, %edx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_create_display
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_object_unref
	jmp	.LBB9_29
.LBB9_8:                                # %if.end.15
	movq	-48(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$0, %eax
	jne	.LBB9_10
# BB#9:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB9_14
.LBB9_10:                               # %cond.false
	movq	-48(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$1, %eax
	jne	.LBB9_12
# BB#11:                                # %cond.true.19
	movl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %cond.false.20
	movq	-48(%rbp), %rdi
	callq	gimp_image_base_type
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$4, %edx
	cmpl	$2, %eax
	cmovel	%edx, %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB9_13:                               # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB9_14:                               # %cond.end.24
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels
	cmpl	$2, %eax
	je	.LBB9_16
# BB#15:                                # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels
	cmpl	$4, %eax
	jne	.LBB9_27
.LBB9_16:                               # %if.then.30
	cmpl	$0, -60(%rbp)
	je	.LBB9_18
# BB#17:                                # %lor.lhs.false.32
	cmpl	$1, -60(%rbp)
	jne	.LBB9_19
.LBB9_18:                               # %cond.true.34
	movl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB9_26
.LBB9_19:                               # %cond.false.35
	cmpl	$2, -60(%rbp)
	je	.LBB9_21
# BB#20:                                # %lor.lhs.false.37
	cmpl	$3, -60(%rbp)
	jne	.LBB9_22
.LBB9_21:                               # %cond.true.39
	movl	$3, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB9_25
.LBB9_22:                               # %cond.false.40
	movb	$1, %al
	cmpl	$4, -60(%rbp)
	movb	%al, -121(%rbp)         # 1-byte Spill
	je	.LBB9_24
# BB#23:                                # %lor.rhs
	cmpl	$5, -60(%rbp)
	sete	%al
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB9_24:                               # %lor.end
	movb	-121(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB9_25:                               # %cond.end.44
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB9_26:                               # %cond.end.46
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
.LBB9_27:                               # %if.end.48
	movabsq	$.L.str.10, %rdi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	-128(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_layer_new_from_pixbuf
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB9_29
# BB#28:                                # %if.then.52
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$29, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_dnd_position_item
	movl	$1, %eax
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-48(%rbp), %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_dnd_flush
.LBB9_29:                               # %if.end.59
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_drop_pixbuf, .Lfunc_end9-gimp_display_shell_drop_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_dnd_position_item,@function
gimp_display_shell_dnd_position_item:   # @gimp_display_shell_dnd_position_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-64(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB10_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	$2, %ecx
	subl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	movl	$2, %ecx
	subl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -40(%rbp)
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	movl	$2, %eax
	movl	-44(%rbp), %r9d
	movl	-52(%rbp), %r10d
	subl	-28(%rbp), %r10d
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %eax
	cltd
	movl	-68(%rbp), %r10d        # 4-byte Reload
	idivl	%r10d
	addl	%eax, %r9d
	movl	%r9d, -36(%rbp)
	movl	-48(%rbp), %eax
	movl	-56(%rbp), %r9d
	subl	-32(%rbp), %r9d
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r10d
	movl	-72(%rbp), %r9d         # 4-byte Reload
	addl	%eax, %r9d
	movl	%r9d, -40(%rbp)
.LBB10_4:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_item_get_offset_x
	movl	-84(%rbp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_item_get_offset_y
	xorl	%ecx, %ecx
	movl	-92(%rbp), %edx         # 4-byte Reload
	subl	%eax, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-88(%rbp), %esi         # 4-byte Reload
	callq	gimp_item_translate
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_dnd_position_item, .Lfunc_end10-gimp_display_shell_dnd_position_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_dnd_flush,@function
gimp_display_shell_dnd_flush:           # @gimp_display_shell_dnd_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_present
	movq	-16(%rbp), %rdi
	callq	gimp_image_flush
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	32(%rsi), %rdi
	callq	gimp_get_user_context
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_display
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_dnd_flush, .Lfunc_end11-gimp_display_shell_dnd_flush
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_display_shell_dnd_bucket_fill,@function
gimp_display_shell_dnd_bucket_fill:     # @gimp_display_shell_dnd_bucket_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_15
.LBB12_2:                               # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.3
	jmp	.LBB12_15
.LBB12_4:                               # %if.end.4
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_6
# BB#5:                                 # %if.then.7
	jmp	.LBB12_15
.LBB12_6:                               # %if.end.8
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB12_8
# BB#7:                                 # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB12_15
.LBB12_8:                               # %if.end.19
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	je	.LBB12_10
# BB#9:                                 # %if.then.24
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB12_15
.LBB12_10:                              # %if.end.30
	cmpq	$0, -24(%rbp)
	je	.LBB12_13
# BB#11:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	je	.LBB12_13
# BB#12:                                # %if.then.36
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.6, %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r8         # 8-byte Reload
	movb	$0, %al
	callq	gimp_text_layer_set
	jmp	.LBB12_14
.LBB12_13:                              # %if.else
	xorl	%eax, %eax
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	movl	$0, (%rsp)
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-144(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_drawable_bucket_fill_full
.LBB12_14:                              # %if.end.39
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_display_shell_dnd_flush
.LBB12_15:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_dnd_bucket_fill, .Lfunc_end12-gimp_display_shell_dnd_bucket_fill
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_dnd_init,@object # @__func__.gimp_display_shell_dnd_init
.L__func__.gimp_display_shell_dnd_init:
	.asciz	"gimp_display_shell_dnd_init"
	.size	.L__func__.gimp_display_shell_dnd_init, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L__func__.gimp_display_shell_drop_drawable,@object # @__func__.gimp_display_shell_drop_drawable
.L__func__.gimp_display_shell_drop_drawable:
	.asciz	"gimp_display_shell_drop_drawable"
	.size	.L__func__.gimp_display_shell_drop_drawable, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Drop New Layer"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_display_shell_drop_vectors,@object # @__func__.gimp_display_shell_drop_vectors
.L__func__.gimp_display_shell_drop_vectors:
	.asciz	"gimp_display_shell_drop_vectors"
	.size	.L__func__.gimp_display_shell_drop_vectors, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Drop New Path"
	.size	.L.str.3, 14

	.type	.L__func__.gimp_display_shell_drop_svg,@object # @__func__.gimp_display_shell_drop_svg
.L__func__.gimp_display_shell_drop_svg:
	.asciz	"gimp_display_shell_drop_svg"
	.size	.L__func__.gimp_display_shell_drop_svg, 28

	.type	.L__func__.gimp_display_shell_drop_pattern,@object # @__func__.gimp_display_shell_drop_pattern
.L__func__.gimp_display_shell_drop_pattern:
	.asciz	"gimp_display_shell_drop_pattern"
	.size	.L__func__.gimp_display_shell_drop_pattern, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Cannot modify the pixels of layer groups."
	.size	.L.str.4, 42

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The active layer's pixels are locked."
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"color"
	.size	.L.str.6, 6

	.type	.L__func__.gimp_display_shell_drop_color,@object # @__func__.gimp_display_shell_drop_color
.L__func__.gimp_display_shell_drop_color:
	.asciz	"gimp_display_shell_drop_color"
	.size	.L__func__.gimp_display_shell_drop_color, 30

	.type	.L__func__.gimp_display_shell_drop_buffer,@object # @__func__.gimp_display_shell_drop_buffer
.L__func__.gimp_display_shell_drop_buffer:
	.asciz	"gimp_display_shell_drop_buffer"
	.size	.L__func__.gimp_display_shell_drop_buffer, 31

	.type	.L__func__.gimp_display_shell_drop_uri_list,@object # @__func__.gimp_display_shell_drop_uri_list
.L__func__.gimp_display_shell_drop_uri_list:
	.asciz	"gimp_display_shell_drop_uri_list"
	.size	.L__func__.gimp_display_shell_drop_uri_list, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Drop layers"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str.8, 25

	.type	.L__func__.gimp_display_shell_drop_component,@object # @__func__.gimp_display_shell_drop_component
.L__func__.gimp_display_shell_drop_component:
	.asciz	"gimp_display_shell_drop_component"
	.size	.L__func__.gimp_display_shell_drop_component, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s Channel Copy"
	.size	.L.str.9, 16

	.type	.L__func__.gimp_display_shell_drop_pixbuf,@object # @__func__.gimp_display_shell_drop_pixbuf
.L__func__.gimp_display_shell_drop_pixbuf:
	.asciz	"gimp_display_shell_drop_pixbuf"
	.size	.L__func__.gimp_display_shell_drop_pixbuf, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Dropped Buffer"
	.size	.L.str.10, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
