	.text
	.file	"gimptoolbox-dnd.bc"
	.globl	gimp_toolbox_dnd_init
	.align	16, 0x90
	.type	gimp_toolbox_dnd_init,@function
gimp_toolbox_dnd_init:                  # @gimp_toolbox_dnd_init
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
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_toolbox_get_type
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
	movabsq	$.L__func__.gimp_toolbox_dnd_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_25
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_toolbox_dnd_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_25
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	movq	-8(%rbp), %rdi
	callq	gimp_toolbox_get_context
	xorl	%ecx, %ecx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$6, %r8d
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%ecx, %esi
	callq	gtk_drag_dest_set
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movabsq	$gimp_toolbox_drop_drawable, %rdx
	movq	-24(%rbp), %rdi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rax, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	gimp_dnd_viewable_dest_add
	movq	-16(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movabsq	$gimp_toolbox_drop_drawable, %rdx
	movq	-24(%rbp), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-16(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movabsq	$gimp_toolbox_drop_drawable, %rdx
	movq	-24(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-16(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_tool_info_get_type
	movabsq	$gimp_toolbox_drop_tool, %rdx
	movq	-24(%rbp), %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-16(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movabsq	$gimp_toolbox_drop_buffer, %rdx
	movq	-24(%rbp), %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movabsq	$gimp_toolbox_drop_component, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_dnd_component_dest_add
	movabsq	$gimp_toolbox_drop_uri_list, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	callq	gimp_dnd_uri_list_dest_add
	movabsq	$gimp_toolbox_drop_pixbuf, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	callq	gimp_dnd_pixbuf_dest_add
.LBB0_25:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_toolbox_dnd_init, .Lfunc_end0-gimp_toolbox_dnd_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_toolbox_drop_drawable,@function
gimp_toolbox_drop_drawable:             # @gimp_toolbox_drop_drawable
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_3
.LBB1_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_new_from_drawable
	xorl	%edx, %edx
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_create_display
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_object_unref
.LBB1_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_toolbox_drop_drawable, .Lfunc_end1-gimp_toolbox_drop_drawable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_drop_tool,@function
gimp_toolbox_drop_tool:                 # @gimp_toolbox_drop_tool
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_tool
.LBB2_3:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_toolbox_drop_tool, .Lfunc_end2-gimp_toolbox_drop_tool
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_toolbox_drop_buffer,@function
gimp_toolbox_drop_buffer:               # @gimp_toolbox_drop_buffer
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
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_new_from_buffer
	xorl	%edx, %edx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_create_display
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_object_unref
.LBB3_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_toolbox_drop_buffer, .Lfunc_end3-gimp_toolbox_drop_buffer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_toolbox_drop_component,@function
gimp_toolbox_drop_component:            # @gimp_toolbox_drop_component
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_image_new_from_component
	xorl	%edx, %edx
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_create_display
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_object_unref
.LBB4_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_toolbox_drop_component, .Lfunc_end4-gimp_toolbox_drop_component
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_drop_uri_list,@function
gimp_toolbox_drop_uri_list:             # @gimp_toolbox_drop_uri_list
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_12
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB5_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	leaq	-68(%rbp), %r9
	leaq	-80(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %r10
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	file_open_with_display
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$4, -68(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-56(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-88(%rbp), %r8
	movq	-80(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-80(%rbp), %rdi
	callq	g_clear_error
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB5_7:                                # %if.end.12
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_8
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_11
.LBB5_10:                               # %cond.false
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_11
.LBB5_11:                               # %cond.end
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB5_3
.LBB5_12:                               # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_toolbox_drop_uri_list, .Lfunc_end5-gimp_toolbox_drop_uri_list
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_toolbox_drop_pixbuf,@function
gimp_toolbox_drop_pixbuf:               # @gimp_toolbox_drop_pixbuf
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 308(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movabsq	$.L.str.4, %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_new_from_pixbuf
	xorl	%edx, %edx
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_create_display
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_object_unref
.LBB6_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_toolbox_drop_pixbuf, .Lfunc_end6-gimp_toolbox_drop_pixbuf
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_toolbox_dnd_init,@object # @__func__.gimp_toolbox_dnd_init
.L__func__.gimp_toolbox_dnd_init:
	.asciz	"gimp_toolbox_dnd_init"
	.size	.L__func__.gimp_toolbox_dnd_init, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_TOOLBOX (toolbox)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_BOX (vbox)"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Dropped Buffer"
	.size	.L.str.4, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
