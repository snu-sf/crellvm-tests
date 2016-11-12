	.text
	.file	"gimpimage.bc"
	.globl	gimp_image_get_type
	.align	16, 0x90
	.type	gimp_image_get_type,@function
gimp_image_get_type:                    # @gimp_image_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_image_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_image_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$504, %edx              # imm = 0x1F8
	movabsq	$gimp_image_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_image_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movabsq	$gimp_image_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movabsq	$gimp_image_get_type.g_implement_interface_info.1, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_image_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_image_get_type.g_define_type_id__volatile, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_get_type, .Lfunc_end0-gimp_image_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_class_intern_init,@function
gimp_image_class_intern_init:           # @gimp_image_class_intern_init
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
	movq	%rax, gimp_image_parent_class
	cmpl	$0, GimpImage_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImage_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_class_intern_init, .Lfunc_end1-gimp_image_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_image_init,@function
gimp_image_init:                        # @gimp_image_init
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 72(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 112(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 120(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 124(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_projection_new
	movq	-16(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_new
	movq	-16(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_new
	movq	-16(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_new
	movabsq	$.L.str.118, %rsi
	movabsq	$gimp_image_active_layer_notify, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 192(%rdi)
	movq	-16(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.118, %rsi
	movabsq	$gimp_image_active_channel_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	184(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.118, %rsi
	movabsq	$gimp_image_active_vectors_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	192(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_image_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.75, %rsi
	movabsq	$gimp_image_layer_alpha_changed, %rcx
	movq	-16(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	32(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_container_add_handler
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_image_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movl	%eax, 208(%rdx)
	movq	-16(%rbp), %rdx
	movq	184(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.119, %rsi
	movabsq	$gimp_image_channel_name_changed, %rcx
	movq	-16(%rbp), %rdx
	movq	184(%rdx), %rdx
	movq	32(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_container_add_handler
	movabsq	$.L.str.120, %rsi
	movabsq	$gimp_image_channel_color_changed, %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, 212(%rdx)
	movq	-16(%rbp), %rdx
	movq	184(%rdx), %rdx
	movq	32(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	gimp_container_add_handler
	movabsq	$.L.str.121, %rsi
	movabsq	$gimp_image_channel_add, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movl	%eax, 216(%rdx)
	movq	-16(%rbp), %rdx
	movq	184(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.122, %rsi
	movabsq	$gimp_image_channel_remove, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	184(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	$0, 224(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 232(%rcx)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_parasite_list_new
	movq	-16(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movl	$0, -20(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$1, 248(%rcx,%rax,4)
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$1, 264(%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI2_1, %xmm3         # xmm3 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	$0, 280(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 284(%rax)
	movq	-16(%rbp), %rax
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rdi
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	movsd	-232(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movq	-8(%rbp), %rdi
	callq	gimp_undo_stack_new
	movq	-16(%rbp), %rdi
	movq	%rax, 320(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_undo_stack_new
	movq	-16(%rbp), %rdi
	movq	%rax, 328(%rdi)
	movq	-16(%rbp), %rax
	movl	$0, 336(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 340(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 352(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 356(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 360(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 364(%rax)
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_init, .Lfunc_end2-gimp_image_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_managed_iface_init,@function
gimp_color_managed_iface_init:          # @gimp_color_managed_iface_init
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
	movabsq	$gimp_image_get_icc_profile, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_managed_iface_init, .Lfunc_end3-gimp_color_managed_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projectable_iface_init,@function
gimp_projectable_iface_init:            # @gimp_projectable_iface_init
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
	movabsq	$gimp_image_get_channel_iter, %rax
	movabsq	$gimp_image_get_layer_iter, %rcx
	movabsq	$gimp_viewable_invalidate_preview, %rdx
	movabsq	$gimp_image_get_graph, %rsi
	movabsq	$gimp_image_get_size, %r8
	movabsq	$gimp_image_get_image_type, %r9
	movabsq	$gimp_image_get_image, %r10
	movabsq	$gimp_image_projectable_flush, %r11
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r11, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r10, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 64(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 80(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 88(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_projectable_iface_init, .Lfunc_end4-gimp_projectable_iface_init
	.cfi_endproc

	.globl	gimp_image_new
	.align	16, 0x90
	.type	gimp_image_new,@function
gimp_image_new:                         # @gimp_image_new
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	callq	gimp_image_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-32(%rbp), %r10
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %r11d
	movl	-44(%rbp), %ebx
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movl	-76(%rbp), %r14d        # 4-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movl	%r14d, %r8d
	movl	%r11d, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
.LBB5_13:                               # %return
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_new, .Lfunc_end5-gimp_image_new
	.cfi_endproc

	.globl	gimp_image_base_type
	.align	16, 0x90
	.type	gimp_image_base_type,@function
gimp_image_base_type:                   # @gimp_image_base_type
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_base_type, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	76(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_base_type, .Lfunc_end6-gimp_image_base_type
	.cfi_endproc

	.globl	gimp_image_base_type_with_alpha
	.align	16, 0x90
	.type	gimp_image_base_type_with_alpha,@function
gimp_image_base_type_with_alpha:        # @gimp_image_base_type_with_alpha
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_base_type_with_alpha, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB7_17
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	76(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	je	.LBB7_13
	jmp	.LBB7_18
.LBB7_18:                               # %do.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB7_14
	jmp	.LBB7_19
.LBB7_19:                               # %do.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB7_15
	jmp	.LBB7_16
.LBB7_13:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB7_17
.LBB7_14:                               # %sw.bb.13
	movl	$3, -4(%rbp)
	jmp	.LBB7_17
.LBB7_15:                               # %sw.bb.14
	movl	$5, -4(%rbp)
	jmp	.LBB7_17
.LBB7_16:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB7_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_base_type_with_alpha, .Lfunc_end7-gimp_image_base_type_with_alpha
	.cfi_endproc

	.globl	gimp_image_get_combination_mode
	.align	16, 0x90
	.type	gimp_image_get_combination_mode,@function
gimp_image_get_combination_mode:        # @gimp_image_get_combination_mode
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
	movabsq	$valid_combinations, %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movslq	-8(%rbp), %rcx
	movl	-4(%rbp), %esi
	movl	%esi, %edx
	imulq	$20, %rdx, %rdx
	addq	%rdx, %rax
	movl	(%rax,%rcx,4), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_get_combination_mode, .Lfunc_end8-gimp_image_get_combination_mode
	.cfi_endproc

	.globl	gimp_image_get_ID
	.align	16, 0x90
	.type	gimp_image_get_ID,@function
gimp_image_get_ID:                      # @gimp_image_get_ID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_ID, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_get_ID, .Lfunc_end9-gimp_image_get_ID
	.cfi_endproc

	.globl	gimp_image_get_by_ID
	.align	16, 0x90
	.type	gimp_image_get_by_ID,@function
gimp_image_get_by_ID:                   # @gimp_image_get_by_ID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_by_ID, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	jne	.LBB10_14
# BB#13:                                # %if.then.12
	movq	$0, -8(%rbp)
	jmp	.LBB10_15
.LBB10_14:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	400(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_id_table_lookup
	movq	%rax, -8(%rbp)
.LBB10_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_get_by_ID, .Lfunc_end10-gimp_image_get_by_ID
	.cfi_endproc

	.globl	gimp_image_set_uri
	.align	16, 0x90
	.type	gimp_image_set_uri,@function
gimp_image_set_uri:                     # @gimp_image_set_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
.LBB11_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_set_uri, .Lfunc_end11-gimp_image_set_uri
	.cfi_endproc

	.globl	gimp_image_get_string_untitled
	.align	16, 0x90
	.type	gimp_image_get_string_untitled,@function
gimp_image_get_string_untitled:         # @gimp_image_get_string_untitled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.9, %rdi
	callq	gettext
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_get_string_untitled, .Lfunc_end12-gimp_image_get_string_untitled
	.cfi_endproc

	.globl	gimp_image_get_uri_or_untitled
	.align	16, 0x90
	.type	gimp_image_get_uri_or_untitled,@function
gimp_image_get_uri_or_untitled:         # @gimp_image_get_uri_or_untitled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_uri_or_untitled, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_16
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_14
# BB#13:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_15
.LBB13_14:                              # %cond.false
	callq	gimp_image_get_string_untitled
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB13_15:                              # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB13_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_get_uri_or_untitled, .Lfunc_end13-gimp_image_get_uri_or_untitled
	.cfi_endproc

	.globl	gimp_image_get_uri
	.align	16, 0x90
	.type	gimp_image_get_uri,@function
gimp_image_get_uri:                     # @gimp_image_get_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -8(%rbp)
.LBB14_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_get_uri, .Lfunc_end14-gimp_image_get_uri
	.cfi_endproc

	.globl	gimp_image_set_filename
	.align	16, 0x90
	.type	gimp_image_set_filename,@function
gimp_image_set_filename:                # @gimp_image_set_filename
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_filename, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_16
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB15_15
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB15_15
# BB#14:                                # %if.then.15
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	file_utils_filename_to_uri
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_take_uri
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.17
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_image_set_uri
.LBB15_16:                              # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_set_filename, .Lfunc_end15-gimp_image_set_filename
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_take_uri,@function
gimp_image_take_uri:                    # @gimp_image_take_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_image_take_uri, .Lfunc_end16-gimp_image_take_uri
	.cfi_endproc

	.globl	gimp_image_get_imported_uri
	.align	16, 0x90
	.type	gimp_image_get_imported_uri,@function
gimp_image_get_imported_uri:            # @gimp_image_get_imported_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_imported_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -8(%rbp)
.LBB17_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_get_imported_uri, .Lfunc_end17-gimp_image_get_imported_uri
	.cfi_endproc

	.globl	gimp_image_get_exported_uri
	.align	16, 0x90
	.type	gimp_image_get_exported_uri,@function
gimp_image_get_exported_uri:            # @gimp_image_get_exported_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_exported_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -8(%rbp)
.LBB18_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_image_get_exported_uri, .Lfunc_end18-gimp_image_get_exported_uri
	.cfi_endproc

	.globl	gimp_image_get_save_a_copy_uri
	.align	16, 0x90
	.type	gimp_image_get_save_a_copy_uri,@function
gimp_image_get_save_a_copy_uri:         # @gimp_image_get_save_a_copy_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_save_a_copy_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -8(%rbp)
.LBB19_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_image_get_save_a_copy_uri, .Lfunc_end19-gimp_image_get_save_a_copy_uri
	.cfi_endproc

	.globl	gimp_image_get_any_uri
	.align	16, 0x90
	.type	gimp_image_get_any_uri,@function
gimp_image_get_any_uri:                 # @gimp_image_get_any_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_any_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB20_17
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_16
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.16
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -24(%rbp)
.LBB20_15:                              # %if.end.18
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.19
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_image_get_any_uri, .Lfunc_end20-gimp_image_get_any_uri
	.cfi_endproc

	.globl	gimp_image_set_imported_uri
	.align	16, 0x90
	.type	gimp_image_set_imported_uri,@function
gimp_image_set_imported_uri:            # @gimp_image_set_imported_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_imported_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_15
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	cmpq	-16(%rbp), %rax
	jne	.LBB21_14
# BB#13:                                # %if.then.13
	jmp	.LBB21_15
.LBB21_14:                              # %if.end.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.10, %rsi
	movabsq	$g_free, %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_object_name_changed
.LBB21_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_image_set_imported_uri, .Lfunc_end21-gimp_image_set_imported_uri
	.cfi_endproc

	.globl	gimp_image_set_exported_uri
	.align	16, 0x90
	.type	gimp_image_set_exported_uri,@function
gimp_image_set_exported_uri:            # @gimp_image_set_exported_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_exported_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_15
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	cmpq	-16(%rbp), %rax
	jne	.LBB22_14
# BB#13:                                # %if.then.13
	jmp	.LBB22_15
.LBB22_14:                              # %if.end.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.11, %rsi
	movabsq	$g_free, %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_object_name_changed
.LBB22_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_image_set_exported_uri, .Lfunc_end22-gimp_image_set_exported_uri
	.cfi_endproc

	.globl	gimp_image_set_save_a_copy_uri
	.align	16, 0x90
	.type	gimp_image_set_save_a_copy_uri,@function
gimp_image_set_save_a_copy_uri:         # @gimp_image_set_save_a_copy_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_save_a_copy_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_15
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_save_a_copy_uri
	cmpq	-16(%rbp), %rax
	jne	.LBB23_14
# BB#13:                                # %if.then.13
	jmp	.LBB23_15
.LBB23_14:                              # %if.end.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.12, %rsi
	movabsq	$g_free, %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
.LBB23_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_image_set_save_a_copy_uri, .Lfunc_end23-gimp_image_set_save_a_copy_uri
	.cfi_endproc

	.globl	gimp_image_get_filename
	.align	16, 0x90
	.type	gimp_image_get_filename,@function
gimp_image_get_filename:                # @gimp_image_get_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_filename, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_15
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_14
# BB#13:                                # %if.then.13
	movq	$0, -8(%rbp)
	jmp	.LBB24_15
.LBB24_14:                              # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_from_uri
	movq	%rax, -8(%rbp)
.LBB24_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_image_get_filename, .Lfunc_end24-gimp_image_get_filename
	.cfi_endproc

	.globl	gimp_image_get_display_name
	.align	16, 0x90
	.type	gimp_image_get_display_name,@function
gimp_image_get_display_name:            # @gimp_image_get_display_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_display_name, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_15
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB25_14
# BB#13:                                # %if.then.14
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_image_format_display_uri
	movq	-24(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB25_14:                              # %if.end.17
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB25_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_image_get_display_name, .Lfunc_end25-gimp_image_get_display_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_format_display_uri,@function
gimp_image_format_display_uri:          # @gimp_image_format_display_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.6
	movl	$1, -116(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.7
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.9
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.12
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.13
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_format_display_uri, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_37
.LBB26_11:                              # %if.end.14
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -68(%rbp)
	cmpq	$0, -64(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -72(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB26_14
# BB#13:                                # %if.then.22
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str.123, %rdi
	movq	%rax, -80(%rbp)
	movq	%rdi, -32(%rbp)
	jmp	.LBB26_30
.LBB26_14:                              # %if.else.24
	cmpl	$0, -68(%rbp)
	je	.LBB26_16
# BB#15:                                # %if.then.26
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
.LBB26_16:                              # %if.end.28
	movq	-16(%rbp), %rdi
	callq	gimp_image_is_export_dirty
	cmpl	$0, %eax
	jne	.LBB26_24
# BB#17:                                # %if.then.31
	cmpl	$0, -72(%rbp)
	je	.LBB26_19
# BB#18:                                # %if.then.33
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str.124, %rdi
	movq	%rax, -80(%rbp)
	callq	gettext
	movq	%rax, -40(%rbp)
	jmp	.LBB26_23
.LBB26_19:                              # %if.else.36
	cmpl	$0, -68(%rbp)
	je	.LBB26_21
# BB#20:                                # %if.then.38
	movabsq	$.L.str.125, %rdi
	callq	gettext
	movq	%rax, -40(%rbp)
	jmp	.LBB26_22
.LBB26_21:                              # %if.else.40
	movabsq	$.L.str.126, %rdi
	movb	$0, %al
	callq	g_warning
.LBB26_22:                              # %if.end.41
	jmp	.LBB26_23
.LBB26_23:                              # %if.end.42
	jmp	.LBB26_27
.LBB26_24:                              # %if.else.43
	cmpl	$0, -68(%rbp)
	je	.LBB26_26
# BB#25:                                # %if.then.45
	movabsq	$.L.str.127, %rdi
	callq	gettext
	movq	%rax, -40(%rbp)
.LBB26_26:                              # %if.end.47
	jmp	.LBB26_27
.LBB26_27:                              # %if.end.48
	cmpq	$0, -80(%rbp)
	je	.LBB26_29
# BB#28:                                # %if.then.50
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	file_utils_uri_with_new_ext
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB26_29:                              # %if.end.54
	movabsq	$.L.str.128, %rax
	movq	%rax, -32(%rbp)
.LBB26_30:                              # %if.end.55
	cmpq	$0, -80(%rbp)
	jne	.LBB26_32
# BB#31:                                # %if.then.57
	callq	gimp_image_get_string_untitled
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
	jmp	.LBB26_36
.LBB26_32:                              # %if.else.60
	cmpl	$0, -20(%rbp)
	je	.LBB26_34
# BB#33:                                # %if.then.62
	movq	-80(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB26_35
.LBB26_34:                              # %if.else.64
	movq	-80(%rbp), %rdi
	callq	file_utils_uri_display_name
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB26_35:                              # %if.end.66
	jmp	.LBB26_36
.LBB26_36:                              # %if.end.67
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB26_37:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_image_format_display_uri, .Lfunc_end26-gimp_image_format_display_uri
	.cfi_endproc

	.globl	gimp_image_get_display_path
	.align	16, 0x90
	.type	gimp_image_get_display_path,@function
gimp_image_get_display_path:            # @gimp_image_get_display_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_display_path, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB27_15
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB27_14
# BB#13:                                # %if.then.14
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_image_format_display_uri
	movq	-24(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB27_14:                              # %if.end.17
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB27_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_image_get_display_path, .Lfunc_end27-gimp_image_get_display_path
	.cfi_endproc

	.globl	gimp_image_set_load_proc
	.align	16, 0x90
	.type	gimp_image_set_load_proc,@function
gimp_image_set_load_proc:               # @gimp_image_set_load_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_load_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_13
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 8(%rax)
.LBB28_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_image_set_load_proc, .Lfunc_end28-gimp_image_set_load_proc
	.cfi_endproc

	.globl	gimp_image_get_load_proc
	.align	16, 0x90
	.type	gimp_image_get_load_proc,@function
gimp_image_get_load_proc:               # @gimp_image_get_load_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_load_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB29_13
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB29_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_image_get_load_proc, .Lfunc_end29-gimp_image_get_load_proc
	.cfi_endproc

	.globl	gimp_image_set_save_proc
	.align	16, 0x90
	.type	gimp_image_set_save_proc,@function
gimp_image_set_save_proc:               # @gimp_image_set_save_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_save_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_13
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 16(%rax)
.LBB30_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_image_set_save_proc, .Lfunc_end30-gimp_image_set_save_proc
	.cfi_endproc

	.globl	gimp_image_get_save_proc
	.align	16, 0x90
	.type	gimp_image_get_save_proc,@function
gimp_image_get_save_proc:               # @gimp_image_get_save_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_save_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB31_13
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB31_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_image_get_save_proc, .Lfunc_end31-gimp_image_get_save_proc
	.cfi_endproc

	.globl	gimp_image_set_export_proc
	.align	16, 0x90
	.type	gimp_image_set_export_proc,@function
gimp_image_set_export_proc:             # @gimp_image_set_export_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_export_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_13
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 24(%rax)
.LBB32_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_image_set_export_proc, .Lfunc_end32-gimp_image_set_export_proc
	.cfi_endproc

	.globl	gimp_image_get_export_proc
	.align	16, 0x90
	.type	gimp_image_get_export_proc,@function
gimp_image_get_export_proc:             # @gimp_image_get_export_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_export_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB33_13
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB33_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_image_get_export_proc, .Lfunc_end33-gimp_image_get_export_proc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI34_1:
	.quad	4679240012837945344     # double 65536
.LCPI34_2:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
	.text
	.globl	gimp_image_set_resolution
	.align	16, 0x90
	.type	gimp_image_set_resolution,@function
gimp_image_set_resolution:              # @gimp_image_set_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_resolution, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB34_26
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -32(%rbp)
	ucomisd	-16(%rbp), %xmm0
	ja	.LBB34_16
# BB#13:                                # %lor.lhs.false
	movsd	.LCPI34_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB34_16
# BB#14:                                # %lor.lhs.false.15
	movsd	.LCPI34_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	ja	.LBB34_16
# BB#15:                                # %lor.lhs.false.17
	movsd	.LCPI34_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB34_17
.LBB34_16:                              # %if.then.19
	jmp	.LBB34_26
.LBB34_17:                              # %if.end.20
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB34_19
# BB#18:                                # %cond.true
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB34_20
.LBB34_19:                              # %cond.false
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB34_20:                              # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI34_2, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jae	.LBB34_25
# BB#21:                                # %lor.lhs.false.29
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB34_23
# BB#22:                                # %cond.true.33
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB34_24
.LBB34_23:                              # %cond.false.37
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB34_24:                              # %cond.end.40
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI34_2, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB34_26
.LBB34_25:                              # %if.then.43
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.13, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_image_resolution
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 56(%rcx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, 64(%rcx)
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_resolution_changed
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_size_changed_detailed
.LBB34_26:                              # %if.end.50
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_image_set_resolution, .Lfunc_end34-gimp_image_set_resolution
	.cfi_endproc

	.globl	gimp_image_resolution_changed
	.align	16, 0x90
	.type	gimp_image_resolution_changed,@function
gimp_image_resolution_changed:          # @gimp_image_resolution_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_resolution_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_13
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+36, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB35_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_image_resolution_changed, .Lfunc_end35-gimp_image_resolution_changed
	.cfi_endproc

	.globl	gimp_image_size_changed_detailed
	.align	16, 0x90
	.type	gimp_image_size_changed_detailed,@function
gimp_image_size_changed_detailed:       # @gimp_image_size_changed_detailed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_size_changed_detailed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB36_13
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+40, %esi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_signal_emit
.LBB36_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_image_size_changed_detailed, .Lfunc_end36-gimp_image_size_changed_detailed
	.cfi_endproc

	.globl	gimp_image_get_width
	.align	16, 0x90
	.type	gimp_image_get_width,@function
gimp_image_get_width:                   # @gimp_image_get_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_width, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB37_13
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	48(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB37_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_image_get_width, .Lfunc_end37-gimp_image_get_width
	.cfi_endproc

	.globl	gimp_image_get_height
	.align	16, 0x90
	.type	gimp_image_get_height,@function
gimp_image_get_height:                  # @gimp_image_get_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_height, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB38_13
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	52(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB38_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_image_get_height, .Lfunc_end38-gimp_image_get_height
	.cfi_endproc

	.globl	gimp_image_get_resolution
	.align	16, 0x90
	.type	gimp_image_get_resolution,@function
gimp_image_get_resolution:              # @gimp_image_get_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_resolution, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB39_19
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	jmp	.LBB39_13
.LBB39_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB39_16
# BB#14:                                # %land.lhs.true.13
	cmpq	$0, -24(%rbp)
	je	.LBB39_16
# BB#15:                                # %if.then.15
	jmp	.LBB39_17
.LBB39_16:                              # %if.else.16
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_resolution, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB39_19
.LBB39_17:                              # %if.end.17
	jmp	.LBB39_18
.LBB39_18:                              # %do.end.18
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB39_19:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_image_get_resolution, .Lfunc_end39-gimp_image_get_resolution
	.cfi_endproc

	.globl	gimp_image_set_unit
	.align	16, 0x90
	.type	gimp_image_set_unit,@function
gimp_image_set_unit:                    # @gimp_image_set_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_unit, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB40_19
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	jmp	.LBB40_13
.LBB40_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jbe	.LBB40_15
# BB#14:                                # %if.then.13
	jmp	.LBB40_16
.LBB40_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_unit, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB40_19
.LBB40_16:                              # %if.end.15
	jmp	.LBB40_17
.LBB40_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	72(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB40_19
# BB#18:                                # %if.then.20
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.16, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_image_resolution
	movl	-12(%rbp), %r8d
	movq	-24(%rbp), %rcx
	movl	%r8d, 72(%rcx)
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_unit_changed
.LBB40_19:                              # %if.end.24
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_image_set_unit, .Lfunc_end40-gimp_image_set_unit
	.cfi_endproc

	.globl	gimp_image_unit_changed
	.align	16, 0x90
	.type	gimp_image_unit_changed,@function
gimp_image_unit_changed:                # @gimp_image_unit_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.8
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_unit_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB41_13
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+44, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB41_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_image_unit_changed, .Lfunc_end41-gimp_image_unit_changed
	.cfi_endproc

	.globl	gimp_image_get_unit
	.align	16, 0x90
	.type	gimp_image_get_unit,@function
gimp_image_get_unit:                    # @gimp_image_get_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB42_8
.LBB42_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB42_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB42_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB42_7:                               # %if.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.8
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_unit, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB42_13
.LBB42_11:                              # %if.end.10
	jmp	.LBB42_12
.LBB42_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	72(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB42_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_image_get_unit, .Lfunc_end42-gimp_image_get_unit
	.cfi_endproc

	.globl	gimp_image_has_alpha
	.align	16, 0x90
	.type	gimp_image_has_alpha,@function
gimp_image_has_alpha:                   # @gimp_image_has_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB43_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB43_8
.LBB43_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB43_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB43_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB43_7
.LBB43_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB43_7:                               # %if.end
	jmp	.LBB43_8
.LBB43_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB43_10
# BB#9:                                 # %if.then.8
	jmp	.LBB43_11
.LBB43_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_has_alpha, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB43_17
.LBB43_11:                              # %if.end.10
	jmp	.LBB43_12
.LBB43_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_container_get_first_child
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_n_layers
	movb	$1, %cl
	cmpl	$1, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	jg	.LBB43_16
# BB#13:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -32(%rbp)
	movb	%cl, -74(%rbp)          # 1-byte Spill
	je	.LBB43_15
# BB#14:                                # %land.rhs
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -74(%rbp)          # 1-byte Spill
.LBB43_15:                              # %land.end
	movb	-74(%rbp), %al          # 1-byte Reload
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB43_16:                              # %lor.end
	movb	-73(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB43_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_image_has_alpha, .Lfunc_end43-gimp_image_has_alpha
	.cfi_endproc

	.globl	gimp_image_get_n_layers
	.align	16, 0x90
	.type	gimp_image_get_n_layers,@function
gimp_image_get_n_layers:                # @gimp_image_get_n_layers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB44_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB44_8
.LBB44_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB44_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB44_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB44_7
.LBB44_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB44_7:                               # %if.end
	jmp	.LBB44_8
.LBB44_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB44_10
# BB#9:                                 # %if.then.8
	jmp	.LBB44_11
.LBB44_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_n_layers, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB44_13
.LBB44_11:                              # %if.end.10
	jmp	.LBB44_12
.LBB44_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_n_items
	movl	%eax, -4(%rbp)
.LBB44_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_image_get_n_layers, .Lfunc_end44-gimp_image_get_n_layers
	.cfi_endproc

	.globl	gimp_image_is_empty
	.align	16, 0x90
	.type	gimp_image_is_empty,@function
gimp_image_is_empty:                    # @gimp_image_is_empty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB45_8
.LBB45_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB45_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB45_7:                               # %if.end
	jmp	.LBB45_8
.LBB45_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB45_10
# BB#9:                                 # %if.then.8
	jmp	.LBB45_11
.LBB45_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_is_empty, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB45_13
.LBB45_11:                              # %if.end.10
	jmp	.LBB45_12
.LBB45_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	176(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_container_is_empty
	movl	%eax, -4(%rbp)
.LBB45_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_image_is_empty, .Lfunc_end45-gimp_image_is_empty
	.cfi_endproc

	.globl	gimp_image_set_floating_selection
	.align	16, 0x90
	.type	gimp_image_set_floating_selection,@function
gimp_image_set_floating_selection:      # @gimp_image_set_floating_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB46_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB46_8
.LBB46_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB46_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB46_7
.LBB46_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB46_7:                               # %if.end
	jmp	.LBB46_8
.LBB46_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB46_10
# BB#9:                                 # %if.then.8
	jmp	.LBB46_11
.LBB46_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_floating_selection, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_27
.LBB46_11:                              # %if.end.10
	jmp	.LBB46_12
.LBB46_12:                              # %do.end
	jmp	.LBB46_13
.LBB46_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB46_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB46_16
# BB#15:                                # %if.then.21
	movl	$0, -68(%rbp)
	jmp	.LBB46_21
.LBB46_16:                              # %if.else.22
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB46_19
# BB#18:                                # %if.then.29
	movl	$1, -68(%rbp)
	jmp	.LBB46_20
.LBB46_19:                              # %if.else.30
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB46_20:                              # %if.end.32
	jmp	.LBB46_21
.LBB46_21:                              # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB46_23
.LBB46_22:                              # %if.then.36
	jmp	.LBB46_24
.LBB46_23:                              # %if.else.37
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_floating_selection, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_27
.LBB46_24:                              # %if.end.38
	jmp	.LBB46_25
.LBB46_25:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB46_27
# BB#26:                                # %if.then.44
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-24(%rbp), %rax
	movl	$1, 360(%rax)
.LBB46_27:                              # %if.end.46
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_image_set_floating_selection, .Lfunc_end46-gimp_image_set_floating_selection
	.cfi_endproc

	.globl	gimp_image_get_floating_selection
	.align	16, 0x90
	.type	gimp_image_get_floating_selection,@function
gimp_image_get_floating_selection:      # @gimp_image_get_floating_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB47_8
.LBB47_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB47_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB47_7
.LBB47_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB47_7:                               # %if.end
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.8
	jmp	.LBB47_11
.LBB47_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_floating_selection, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB47_13
.LBB47_11:                              # %if.end.10
	jmp	.LBB47_12
.LBB47_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	224(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB47_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_image_get_floating_selection, .Lfunc_end47-gimp_image_get_floating_selection
	.cfi_endproc

	.globl	gimp_image_floating_selection_changed
	.align	16, 0x90
	.type	gimp_image_floating_selection_changed,@function
gimp_image_floating_selection_changed:  # @gimp_image_floating_selection_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB48_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB48_8
.LBB48_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB48_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB48_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB48_7
.LBB48_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB48_7:                               # %if.end
	jmp	.LBB48_8
.LBB48_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB48_10
# BB#9:                                 # %if.then.8
	jmp	.LBB48_11
.LBB48_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_floating_selection_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB48_13
.LBB48_11:                              # %if.end.10
	jmp	.LBB48_12
.LBB48_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+8, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB48_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_image_floating_selection_changed, .Lfunc_end48-gimp_image_floating_selection_changed
	.cfi_endproc

	.globl	gimp_image_get_mask
	.align	16, 0x90
	.type	gimp_image_get_mask,@function
gimp_image_get_mask:                    # @gimp_image_get_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB49_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB49_8
.LBB49_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB49_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB49_7
.LBB49_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB49_7:                               # %if.end
	jmp	.LBB49_8
.LBB49_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB49_10
# BB#9:                                 # %if.then.8
	jmp	.LBB49_11
.LBB49_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_mask, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB49_13
.LBB49_11:                              # %if.end.10
	jmp	.LBB49_12
.LBB49_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	232(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB49_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_image_get_mask, .Lfunc_end49-gimp_image_get_mask
	.cfi_endproc

	.globl	gimp_image_mask_changed
	.align	16, 0x90
	.type	gimp_image_mask_changed,@function
gimp_image_mask_changed:                # @gimp_image_mask_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB50_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB50_8
.LBB50_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB50_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB50_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB50_7
.LBB50_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB50_7:                               # %if.end
	jmp	.LBB50_8
.LBB50_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB50_10
# BB#9:                                 # %if.then.8
	jmp	.LBB50_11
.LBB50_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_mask_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB50_13
.LBB50_11:                              # %if.end.10
	jmp	.LBB50_12
.LBB50_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+32, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB50_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_image_mask_changed, .Lfunc_end50-gimp_image_mask_changed
	.cfi_endproc

	.globl	gimp_image_take_mask
	.align	16, 0x90
	.type	gimp_image_take_mask,@function
gimp_image_take_mask:                   # @gimp_image_take_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB51_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB51_8
.LBB51_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB51_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB51_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB51_7
.LBB51_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB51_7:                               # %if.end
	jmp	.LBB51_8
.LBB51_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB51_10
# BB#9:                                 # %if.then.8
	jmp	.LBB51_11
.LBB51_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_take_mask, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB51_27
.LBB51_11:                              # %if.end.10
	jmp	.LBB51_12
.LBB51_12:                              # %do.end
	jmp	.LBB51_13
.LBB51_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB51_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB51_20
.LBB51_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB51_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB51_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB51_19
.LBB51_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB51_19:                              # %if.end.31
	jmp	.LBB51_20
.LBB51_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB51_22
# BB#21:                                # %if.then.35
	jmp	.LBB51_23
.LBB51_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_take_mask, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB51_27
.LBB51_23:                              # %if.end.37
	jmp	.LBB51_24
.LBB51_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB51_26
# BB#25:                                # %if.then.42
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB51_26:                              # %if.end.44
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_image_mask_update, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, 232(%rdx)
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB51_27:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_image_take_mask, .Lfunc_end51-gimp_image_take_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_mask_update,@function
gimp_image_mask_update:                 # @gimp_image_mask_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$1, 356(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_image_mask_update, .Lfunc_end52-gimp_image_mask_update
	.cfi_endproc

	.globl	gimp_image_get_component_index
	.align	16, 0x90
	.type	gimp_image_get_component_index,@function
gimp_image_get_component_index:         # @gimp_image_get_component_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB53_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB53_8
.LBB53_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB53_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB53_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB53_7
.LBB53_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB53_7:                               # %if.end
	jmp	.LBB53_8
.LBB53_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB53_10
# BB#9:                                 # %if.then.8
	jmp	.LBB53_11
.LBB53_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_component_index, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB53_24
.LBB53_11:                              # %if.end.10
	jmp	.LBB53_12
.LBB53_12:                              # %do.end
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB53_23
# BB#25:                                # %do.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI53_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB53_13:                              # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB53_24
.LBB53_14:                              # %sw.bb.11
	movl	$1, -4(%rbp)
	jmp	.LBB53_24
.LBB53_15:                              # %sw.bb.12
	movl	$2, -4(%rbp)
	jmp	.LBB53_24
.LBB53_16:                              # %sw.bb.13
	movl	$0, -4(%rbp)
	jmp	.LBB53_24
.LBB53_17:                              # %sw.bb.14
	movl	$0, -4(%rbp)
	jmp	.LBB53_24
.LBB53_18:                              # %sw.bb.15
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB53_19
	jmp	.LBB53_26
.LBB53_26:                              # %sw.bb.15
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB53_20
	jmp	.LBB53_27
.LBB53_27:                              # %sw.bb.15
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB53_21
	jmp	.LBB53_22
.LBB53_19:                              # %sw.bb.17
	movl	$3, -4(%rbp)
	jmp	.LBB53_24
.LBB53_20:                              # %sw.bb.18
	movl	$1, -4(%rbp)
	jmp	.LBB53_24
.LBB53_21:                              # %sw.bb.19
	movl	$1, -4(%rbp)
	jmp	.LBB53_24
.LBB53_22:                              # %sw.epilog
	jmp	.LBB53_23
.LBB53_23:                              # %sw.epilog.20
	movl	$-1, -4(%rbp)
.LBB53_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_image_get_component_index, .Lfunc_end53-gimp_image_get_component_index
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI53_0:
	.quad	.LBB53_13
	.quad	.LBB53_14
	.quad	.LBB53_15
	.quad	.LBB53_16
	.quad	.LBB53_17
	.quad	.LBB53_18

	.text
	.globl	gimp_image_set_component_active
	.align	16, 0x90
	.type	gimp_image_set_component_active,@function
gimp_image_set_component_active:        # @gimp_image_set_component_active
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$-1, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB54_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB54_8
.LBB54_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB54_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB54_7
.LBB54_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB54_7:                               # %if.end
	jmp	.LBB54_8
.LBB54_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB54_10
# BB#9:                                 # %if.then.8
	jmp	.LBB54_11
.LBB54_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_component_active, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB54_17
.LBB54_11:                              # %if.end.10
	jmp	.LBB54_12
.LBB54_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_image_get_component_index
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	.LBB54_17
# BB#13:                                # %land.lhs.true.15
	movl	-16(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	cmpl	264(%rdx,%rcx,4), %eax
	je	.LBB54_17
# BB#14:                                # %if.then.18
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -64(%rbp)
	cmpl	$0, -16(%rbp)
	cmovnel	%edx, %ecx
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rdi
	movl	%ecx, 264(%rdi,%rax,4)
	cmpq	$0, -64(%rbp)
	je	.LBB54_16
# BB#15:                                # %if.then.26
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-64(%rbp), %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB54_16:                              # %if.end.35
	movq	-8(%rbp), %rdi
	callq	gimp_image_unset_active_channel
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	gimp_image_signals+28, %esi
	movl	-12(%rbp), %ecx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_signal_emit
.LBB54_17:                              # %if.end.37
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_image_set_component_active, .Lfunc_end54-gimp_image_set_component_active
	.cfi_endproc

	.globl	gimp_image_unset_active_channel
	.align	16, 0x90
	.type	gimp_image_unset_active_channel,@function
gimp_image_unset_active_channel:        # @gimp_image_unset_active_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB55_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB55_8
.LBB55_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB55_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB55_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB55_7
.LBB55_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB55_7:                               # %if.end
	jmp	.LBB55_8
.LBB55_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB55_10
# BB#9:                                 # %if.then.8
	jmp	.LBB55_11
.LBB55_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_unset_active_channel, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB55_17
.LBB55_11:                              # %if.end.10
	jmp	.LBB55_12
.LBB55_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB55_16
# BB#13:                                # %if.then.15
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_image_set_active_channel
	movq	-24(%rbp), %rsi
	cmpq	$0, 200(%rsi)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB55_15
# BB#14:                                # %if.then.18
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB55_15:                              # %if.end.21
	jmp	.LBB55_16
.LBB55_16:                              # %if.end.22
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB55_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_image_unset_active_channel, .Lfunc_end55-gimp_image_unset_active_channel
	.cfi_endproc

	.globl	gimp_image_get_component_active
	.align	16, 0x90
	.type	gimp_image_get_component_active,@function
gimp_image_get_component_active:        # @gimp_image_get_component_active
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$-1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB56_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB56_8
.LBB56_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB56_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB56_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB56_7
.LBB56_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB56_7:                               # %if.end
	jmp	.LBB56_8
.LBB56_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB56_10
# BB#9:                                 # %if.then.8
	jmp	.LBB56_11
.LBB56_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_component_active, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB56_15
.LBB56_11:                              # %if.end.10
	jmp	.LBB56_12
.LBB56_12:                              # %do.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_image_get_component_index
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	je	.LBB56_14
# BB#13:                                # %if.then.13
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	264(%rax,%rcx,4), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB56_15
.LBB56_14:                              # %if.end.16
	movl	$0, -4(%rbp)
.LBB56_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_image_get_component_active, .Lfunc_end56-gimp_image_get_component_active
	.cfi_endproc

	.globl	gimp_image_get_active_array
	.align	16, 0x90
	.type	gimp_image_get_active_array,@function
gimp_image_get_active_array:            # @gimp_image_get_active_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB57_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB57_8
.LBB57_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB57_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB57_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB57_7
.LBB57_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB57_7:                               # %if.end
	jmp	.LBB57_8
.LBB57_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB57_10
# BB#9:                                 # %if.then.8
	jmp	.LBB57_11
.LBB57_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_active_array, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB57_21
.LBB57_11:                              # %if.end.10
	jmp	.LBB57_12
.LBB57_12:                              # %do.end
	jmp	.LBB57_13
.LBB57_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB57_15
# BB#14:                                # %if.then.13
	jmp	.LBB57_16
.LBB57_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_active_array, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB57_21
.LBB57_16:                              # %if.end.15
	jmp	.LBB57_17
.LBB57_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB57_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -28(%rbp)
	jge	.LBB57_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB57_18 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	264(%rcx,%rax,4), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB57_18 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB57_18
.LBB57_21:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_image_get_active_array, .Lfunc_end57-gimp_image_get_active_array
	.cfi_endproc

	.globl	gimp_image_set_component_visible
	.align	16, 0x90
	.type	gimp_image_set_component_visible,@function
gimp_image_set_component_visible:       # @gimp_image_set_component_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$-1, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB58_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB58_8
.LBB58_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB58_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB58_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB58_7
.LBB58_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB58_7:                               # %if.end
	jmp	.LBB58_8
.LBB58_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB58_10
# BB#9:                                 # %if.then.8
	jmp	.LBB58_11
.LBB58_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_component_visible, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB58_15
.LBB58_11:                              # %if.end.10
	jmp	.LBB58_12
.LBB58_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_image_get_component_index
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	.LBB58_15
# BB#13:                                # %land.lhs.true.15
	movl	-16(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	cmpl	248(%rdx,%rcx,4), %eax
	je	.LBB58_15
# BB#14:                                # %if.then.18
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -16(%rbp)
	movl	%eax, %edx
	cmovnel	%ecx, %edx
	movslq	-28(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movl	%edx, 248(%rdi,%rsi,4)
	movq	-8(%rbp), %rsi
	movl	gimp_image_signals+24, %ecx
	movl	-12(%rbp), %edx
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	g_signal_emit
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_invalidate
.LBB58_15:                              # %if.end.25
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_image_set_component_visible, .Lfunc_end58-gimp_image_set_component_visible
	.cfi_endproc

	.globl	gimp_image_invalidate
	.align	16, 0x90
	.type	gimp_image_invalidate,@function
gimp_image_invalidate:                  # @gimp_image_invalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB59_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB59_8
.LBB59_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB59_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB59_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB59_7
.LBB59_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB59_7:                               # %if.end
	jmp	.LBB59_8
.LBB59_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB59_10
# BB#9:                                 # %if.then.8
	jmp	.LBB59_11
.LBB59_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_invalidate, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB59_13
.LBB59_11:                              # %if.end.10
	jmp	.LBB59_12
.LBB59_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_projectable_invalidate
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$1, 364(%rax)
.LBB59_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_image_invalidate, .Lfunc_end59-gimp_image_invalidate
	.cfi_endproc

	.globl	gimp_image_get_component_visible
	.align	16, 0x90
	.type	gimp_image_get_component_visible,@function
gimp_image_get_component_visible:       # @gimp_image_get_component_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$-1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB60_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB60_8
.LBB60_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB60_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB60_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB60_7
.LBB60_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB60_7:                               # %if.end
	jmp	.LBB60_8
.LBB60_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB60_10
# BB#9:                                 # %if.then.8
	jmp	.LBB60_11
.LBB60_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_component_visible, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB60_15
.LBB60_11:                              # %if.end.10
	jmp	.LBB60_12
.LBB60_12:                              # %do.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_image_get_component_index
	movl	%eax, -24(%rbp)
	cmpl	$-1, -24(%rbp)
	je	.LBB60_14
# BB#13:                                # %if.then.13
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	248(%rax,%rcx,4), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB60_15
.LBB60_14:                              # %if.end.16
	movl	$0, -4(%rbp)
.LBB60_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_image_get_component_visible, .Lfunc_end60-gimp_image_get_component_visible
	.cfi_endproc

	.globl	gimp_image_get_visible_array
	.align	16, 0x90
	.type	gimp_image_get_visible_array,@function
gimp_image_get_visible_array:           # @gimp_image_get_visible_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB61_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB61_8
.LBB61_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB61_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB61_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB61_7
.LBB61_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB61_7:                               # %if.end
	jmp	.LBB61_8
.LBB61_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB61_10
# BB#9:                                 # %if.then.8
	jmp	.LBB61_11
.LBB61_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_visible_array, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB61_21
.LBB61_11:                              # %if.end.10
	jmp	.LBB61_12
.LBB61_12:                              # %do.end
	jmp	.LBB61_13
.LBB61_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB61_15
# BB#14:                                # %if.then.13
	jmp	.LBB61_16
.LBB61_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_visible_array, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB61_21
.LBB61_16:                              # %if.end.15
	jmp	.LBB61_17
.LBB61_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB61_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -28(%rbp)
	jge	.LBB61_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB61_18 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	248(%rcx,%rax,4), %edx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB61_18 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB61_18
.LBB61_21:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_image_get_visible_array, .Lfunc_end61-gimp_image_get_visible_array
	.cfi_endproc

	.globl	gimp_image_mode_changed
	.align	16, 0x90
	.type	gimp_image_mode_changed,@function
gimp_image_mode_changed:                # @gimp_image_mode_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB62_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB62_8
.LBB62_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB62_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB62_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB62_7
.LBB62_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB62_7:                               # %if.end
	jmp	.LBB62_8
.LBB62_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB62_10
# BB#9:                                 # %if.then.8
	jmp	.LBB62_11
.LBB62_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_mode_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB62_13
.LBB62_11:                              # %if.end.10
	jmp	.LBB62_12
.LBB62_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB62_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_image_mode_changed, .Lfunc_end62-gimp_image_mode_changed
	.cfi_endproc

	.globl	gimp_image_alpha_changed
	.align	16, 0x90
	.type	gimp_image_alpha_changed,@function
gimp_image_alpha_changed:               # @gimp_image_alpha_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB63_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB63_8
.LBB63_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB63_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB63_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB63_7
.LBB63_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB63_7:                               # %if.end
	jmp	.LBB63_8
.LBB63_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB63_10
# BB#9:                                 # %if.then.8
	jmp	.LBB63_11
.LBB63_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_alpha_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB63_13
.LBB63_11:                              # %if.end.10
	jmp	.LBB63_12
.LBB63_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB63_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_image_alpha_changed, .Lfunc_end63-gimp_image_alpha_changed
	.cfi_endproc

	.globl	gimp_image_guide_added
	.align	16, 0x90
	.type	gimp_image_guide_added,@function
gimp_image_guide_added:                 # @gimp_image_guide_added
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB64_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB64_8
.LBB64_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB64_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB64_7
.LBB64_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB64_7:                               # %if.end
	jmp	.LBB64_8
.LBB64_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB64_10
# BB#9:                                 # %if.then.8
	jmp	.LBB64_11
.LBB64_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_guide_added, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB64_25
.LBB64_11:                              # %if.end.10
	jmp	.LBB64_12
.LBB64_12:                              # %do.end
	jmp	.LBB64_13
.LBB64_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_guide_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB64_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB64_20
.LBB64_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB64_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB64_19
.LBB64_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB64_19:                              # %if.end.31
	jmp	.LBB64_20
.LBB64_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB64_22
# BB#21:                                # %if.then.35
	jmp	.LBB64_23
.LBB64_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_guide_added, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB64_25
.LBB64_23:                              # %if.end.37
	jmp	.LBB64_24
.LBB64_24:                              # %do.end.38
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+72, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB64_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_image_guide_added, .Lfunc_end64-gimp_image_guide_added
	.cfi_endproc

	.globl	gimp_image_guide_removed
	.align	16, 0x90
	.type	gimp_image_guide_removed,@function
gimp_image_guide_removed:               # @gimp_image_guide_removed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB65_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB65_8
.LBB65_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB65_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB65_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB65_7
.LBB65_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB65_7:                               # %if.end
	jmp	.LBB65_8
.LBB65_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB65_10
# BB#9:                                 # %if.then.8
	jmp	.LBB65_11
.LBB65_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_guide_removed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB65_25
.LBB65_11:                              # %if.end.10
	jmp	.LBB65_12
.LBB65_12:                              # %do.end
	jmp	.LBB65_13
.LBB65_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_guide_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB65_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB65_20
.LBB65_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB65_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB65_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB65_19
.LBB65_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB65_19:                              # %if.end.31
	jmp	.LBB65_20
.LBB65_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB65_22
# BB#21:                                # %if.then.35
	jmp	.LBB65_23
.LBB65_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_guide_removed, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB65_25
.LBB65_23:                              # %if.end.37
	jmp	.LBB65_24
.LBB65_24:                              # %do.end.38
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+76, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB65_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_image_guide_removed, .Lfunc_end65-gimp_image_guide_removed
	.cfi_endproc

	.globl	gimp_image_guide_moved
	.align	16, 0x90
	.type	gimp_image_guide_moved,@function
gimp_image_guide_moved:                 # @gimp_image_guide_moved
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB66_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB66_8
.LBB66_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB66_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB66_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB66_7
.LBB66_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB66_7:                               # %if.end
	jmp	.LBB66_8
.LBB66_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB66_10
# BB#9:                                 # %if.then.8
	jmp	.LBB66_11
.LBB66_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_guide_moved, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB66_25
.LBB66_11:                              # %if.end.10
	jmp	.LBB66_12
.LBB66_12:                              # %do.end
	jmp	.LBB66_13
.LBB66_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_guide_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB66_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB66_20
.LBB66_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB66_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB66_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB66_19
.LBB66_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB66_19:                              # %if.end.31
	jmp	.LBB66_20
.LBB66_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB66_22
# BB#21:                                # %if.then.35
	jmp	.LBB66_23
.LBB66_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_guide_moved, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB66_25
.LBB66_23:                              # %if.end.37
	jmp	.LBB66_24
.LBB66_24:                              # %do.end.38
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+80, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB66_25:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_image_guide_moved, .Lfunc_end66-gimp_image_guide_moved
	.cfi_endproc

	.globl	gimp_image_sample_point_added
	.align	16, 0x90
	.type	gimp_image_sample_point_added,@function
gimp_image_sample_point_added:          # @gimp_image_sample_point_added
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB67_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB67_8
.LBB67_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB67_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB67_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB67_7
.LBB67_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB67_7:                               # %if.end
	jmp	.LBB67_8
.LBB67_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB67_10
# BB#9:                                 # %if.then.8
	jmp	.LBB67_11
.LBB67_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_sample_point_added, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB67_18
.LBB67_11:                              # %if.end.10
	jmp	.LBB67_12
.LBB67_12:                              # %do.end
	jmp	.LBB67_13
.LBB67_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB67_15
# BB#14:                                # %if.then.13
	jmp	.LBB67_16
.LBB67_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_sample_point_added, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB67_18
.LBB67_16:                              # %if.end.15
	jmp	.LBB67_17
.LBB67_17:                              # %do.end.16
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+84, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB67_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_image_sample_point_added, .Lfunc_end67-gimp_image_sample_point_added
	.cfi_endproc

	.globl	gimp_image_sample_point_removed
	.align	16, 0x90
	.type	gimp_image_sample_point_removed,@function
gimp_image_sample_point_removed:        # @gimp_image_sample_point_removed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB68_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB68_8
.LBB68_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB68_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB68_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB68_7
.LBB68_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB68_7:                               # %if.end
	jmp	.LBB68_8
.LBB68_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB68_10
# BB#9:                                 # %if.then.8
	jmp	.LBB68_11
.LBB68_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_sample_point_removed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB68_18
.LBB68_11:                              # %if.end.10
	jmp	.LBB68_12
.LBB68_12:                              # %do.end
	jmp	.LBB68_13
.LBB68_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB68_15
# BB#14:                                # %if.then.13
	jmp	.LBB68_16
.LBB68_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_sample_point_removed, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB68_18
.LBB68_16:                              # %if.end.15
	jmp	.LBB68_17
.LBB68_17:                              # %do.end.16
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+88, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB68_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_image_sample_point_removed, .Lfunc_end68-gimp_image_sample_point_removed
	.cfi_endproc

	.globl	gimp_image_sample_point_moved
	.align	16, 0x90
	.type	gimp_image_sample_point_moved,@function
gimp_image_sample_point_moved:          # @gimp_image_sample_point_moved
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB69_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB69_8
.LBB69_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB69_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB69_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB69_7
.LBB69_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB69_7:                               # %if.end
	jmp	.LBB69_8
.LBB69_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB69_10
# BB#9:                                 # %if.then.8
	jmp	.LBB69_11
.LBB69_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_sample_point_moved, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB69_18
.LBB69_11:                              # %if.end.10
	jmp	.LBB69_12
.LBB69_12:                              # %do.end
	jmp	.LBB69_13
.LBB69_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB69_15
# BB#14:                                # %if.then.13
	jmp	.LBB69_16
.LBB69_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_sample_point_moved, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB69_18
.LBB69_16:                              # %if.end.15
	jmp	.LBB69_17
.LBB69_17:                              # %do.end.16
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+92, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB69_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	gimp_image_sample_point_moved, .Lfunc_end69-gimp_image_sample_point_moved
	.cfi_endproc

	.globl	gimp_image_colormap_changed
	.align	16, 0x90
	.type	gimp_image_colormap_changed,@function
gimp_image_colormap_changed:            # @gimp_image_colormap_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp214:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB70_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB70_8
.LBB70_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB70_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB70_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB70_7
.LBB70_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB70_7:                               # %if.end
	jmp	.LBB70_8
.LBB70_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB70_10
# BB#9:                                 # %if.then.8
	jmp	.LBB70_11
.LBB70_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_colormap_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB70_19
.LBB70_11:                              # %if.end.10
	jmp	.LBB70_12
.LBB70_12:                              # %do.end
	jmp	.LBB70_13
.LBB70_13:                              # %do.body.11
	cmpl	$-1, -12(%rbp)
	jl	.LBB70_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	88(%rax), %edx
	jge	.LBB70_16
# BB#15:                                # %if.then.17
	jmp	.LBB70_17
.LBB70_16:                              # %if.else.18
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_colormap_changed, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB70_19
.LBB70_17:                              # %if.end.19
	jmp	.LBB70_18
.LBB70_18:                              # %do.end.20
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+104, %esi
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB70_19:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	gimp_image_colormap_changed, .Lfunc_end70-gimp_image_colormap_changed
	.cfi_endproc

	.globl	gimp_image_selection_invalidate
	.align	16, 0x90
	.type	gimp_image_selection_invalidate,@function
gimp_image_selection_invalidate:        # @gimp_image_selection_invalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
.Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp217:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB71_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB71_8
.LBB71_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB71_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB71_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB71_7
.LBB71_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB71_7:                               # %if.end
	jmp	.LBB71_8
.LBB71_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB71_10
# BB#9:                                 # %if.then.8
	jmp	.LBB71_11
.LBB71_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_selection_invalidate, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB71_13
.LBB71_11:                              # %if.end.10
	jmp	.LBB71_12
.LBB71_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+52, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB71_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	gimp_image_selection_invalidate, .Lfunc_end71-gimp_image_selection_invalidate
	.cfi_endproc

	.globl	gimp_image_quick_mask_changed
	.align	16, 0x90
	.type	gimp_image_quick_mask_changed,@function
gimp_image_quick_mask_changed:          # @gimp_image_quick_mask_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp220:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB72_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB72_8
.LBB72_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB72_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB72_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB72_7
.LBB72_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB72_7:                               # %if.end
	jmp	.LBB72_8
.LBB72_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB72_10
# BB#9:                                 # %if.then.8
	jmp	.LBB72_11
.LBB72_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_quick_mask_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB72_13
.LBB72_11:                              # %if.end.10
	jmp	.LBB72_12
.LBB72_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+48, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB72_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	gimp_image_quick_mask_changed, .Lfunc_end72-gimp_image_quick_mask_changed
	.cfi_endproc

	.globl	gimp_image_undo_event
	.align	16, 0x90
	.type	gimp_image_undo_event,@function
gimp_image_undo_event:                  # @gimp_image_undo_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp223:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB73_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB73_8
.LBB73_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB73_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB73_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB73_7
.LBB73_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB73_7:                               # %if.end
	jmp	.LBB73_8
.LBB73_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB73_10
# BB#9:                                 # %if.then.8
	jmp	.LBB73_11
.LBB73_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_undo_event, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB73_29
.LBB73_11:                              # %if.end.10
	jmp	.LBB73_12
.LBB73_12:                              # %do.end
	jmp	.LBB73_13
.LBB73_13:                              # %do.body.11
	cmpl	$5, -12(%rbp)
	je	.LBB73_16
# BB#14:                                # %lor.lhs.false
	cmpl	$6, -12(%rbp)
	je	.LBB73_16
# BB#15:                                # %lor.lhs.false.14
	cmpl	$7, -12(%rbp)
	jne	.LBB73_17
.LBB73_16:                              # %land.lhs.true.16
	cmpq	$0, -24(%rbp)
	je	.LBB73_25
.LBB73_17:                              # %lor.lhs.false.18
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_undo_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB73_19
# BB#18:                                # %if.then.27
	movl	$0, -68(%rbp)
	jmp	.LBB73_24
.LBB73_19:                              # %if.else.28
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB73_22
# BB#20:                                # %land.lhs.true.31
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB73_22
# BB#21:                                # %if.then.35
	movl	$1, -68(%rbp)
	jmp	.LBB73_23
.LBB73_22:                              # %if.else.36
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB73_23:                              # %if.end.38
	jmp	.LBB73_24
.LBB73_24:                              # %if.end.39
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB73_26
.LBB73_25:                              # %if.then.42
	jmp	.LBB73_27
.LBB73_26:                              # %if.else.43
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_undo_event, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB73_29
.LBB73_27:                              # %if.end.44
	jmp	.LBB73_28
.LBB73_28:                              # %do.end.45
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+108, %esi
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB73_29:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gimp_image_undo_event, .Lfunc_end73-gimp_image_undo_event
	.cfi_endproc

	.globl	gimp_image_dirty
	.align	16, 0x90
	.type	gimp_image_dirty,@function
gimp_image_dirty:                       # @gimp_image_dirty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB74_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB74_8
.LBB74_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB74_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB74_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB74_7
.LBB74_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB74_7:                               # %if.end
	jmp	.LBB74_8
.LBB74_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB74_10
# BB#9:                                 # %if.then.8
	jmp	.LBB74_11
.LBB74_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_dirty, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB74_15
.LBB74_11:                              # %if.end.10
	jmp	.LBB74_12
.LBB74_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	104(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 104(%rax)
	movq	-32(%rbp), %rax
	movl	112(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 112(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, 108(%rax)
	jne	.LBB74_14
# BB#13:                                # %if.then.15
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 108(%rax)
.LBB74_14:                              # %if.end.18
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	gimp_image_signals+60, %esi
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-32(%rbp), %rdi
	movl	104(%rdi), %ecx
	movl	%ecx, -4(%rbp)
.LBB74_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	gimp_image_dirty, .Lfunc_end74-gimp_image_dirty
	.cfi_endproc

	.globl	gimp_image_clean
	.align	16, 0x90
	.type	gimp_image_clean,@function
gimp_image_clean:                       # @gimp_image_clean
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB75_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB75_8
.LBB75_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB75_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB75_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB75_7
.LBB75_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB75_7:                               # %if.end
	jmp	.LBB75_8
.LBB75_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB75_10
# BB#9:                                 # %if.then.8
	jmp	.LBB75_11
.LBB75_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_clean, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB75_13
.LBB75_11:                              # %if.end.10
	jmp	.LBB75_12
.LBB75_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	104(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 104(%rax)
	movq	-32(%rbp), %rax
	movl	112(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 112(%rax)
	movq	-16(%rbp), %rax
	movl	gimp_image_signals+56, %esi
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-32(%rbp), %rdi
	movl	104(%rdi), %ecx
	movl	%ecx, -4(%rbp)
.LBB75_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	gimp_image_clean, .Lfunc_end75-gimp_image_clean
	.cfi_endproc

	.globl	gimp_image_clean_all
	.align	16, 0x90
	.type	gimp_image_clean_all,@function
gimp_image_clean_all:                   # @gimp_image_clean_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
.Ltmp231:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp232:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB76_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB76_8
.LBB76_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB76_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB76_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB76_7
.LBB76_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB76_7:                               # %if.end
	jmp	.LBB76_8
.LBB76_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB76_10
# BB#9:                                 # %if.then.8
	jmp	.LBB76_11
.LBB76_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_clean_all, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB76_13
.LBB76_11:                              # %if.end.10
	jmp	.LBB76_12
.LBB76_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%edx, %edx
	movl	$65535, %ecx            # imm = 0xFFFF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+56, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB76_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	gimp_image_clean_all, .Lfunc_end76-gimp_image_clean_all
	.cfi_endproc

	.globl	gimp_image_export_clean_all
	.align	16, 0x90
	.type	gimp_image_export_clean_all,@function
gimp_image_export_clean_all:            # @gimp_image_export_clean_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
.Ltmp234:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp235:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB77_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB77_8
.LBB77_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB77_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB77_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB77_7
.LBB77_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB77_7:                               # %if.end
	jmp	.LBB77_8
.LBB77_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB77_10
# BB#9:                                 # %if.then.8
	jmp	.LBB77_11
.LBB77_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_export_clean_all, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB77_13
.LBB77_11:                              # %if.end.10
	jmp	.LBB77_12
.LBB77_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%edx, %edx
	movl	$65535, %ecx            # imm = 0xFFFF
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+56, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB77_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	gimp_image_export_clean_all, .Lfunc_end77-gimp_image_export_clean_all
	.cfi_endproc

	.globl	gimp_image_is_dirty
	.align	16, 0x90
	.type	gimp_image_is_dirty,@function
gimp_image_is_dirty:                    # @gimp_image_is_dirty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp236:
	.cfi_def_cfa_offset 16
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp238:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB78_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB78_8
.LBB78_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB78_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB78_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB78_7
.LBB78_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB78_7:                               # %if.end
	jmp	.LBB78_8
.LBB78_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB78_10
# BB#9:                                 # %if.then.8
	jmp	.LBB78_11
.LBB78_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_is_dirty, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB78_13
.LBB78_11:                              # %if.end.10
	jmp	.LBB78_12
.LBB78_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	cmpl	$0, 104(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB78_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	gimp_image_is_dirty, .Lfunc_end78-gimp_image_is_dirty
	.cfi_endproc

	.globl	gimp_image_is_export_dirty
	.align	16, 0x90
	.type	gimp_image_is_export_dirty,@function
gimp_image_is_export_dirty:             # @gimp_image_is_export_dirty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp239:
	.cfi_def_cfa_offset 16
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp241:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB79_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB79_8
.LBB79_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB79_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB79_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB79_7
.LBB79_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB79_7:                               # %if.end
	jmp	.LBB79_8
.LBB79_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB79_10
# BB#9:                                 # %if.then.8
	jmp	.LBB79_11
.LBB79_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_is_export_dirty, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB79_13
.LBB79_11:                              # %if.end.10
	jmp	.LBB79_12
.LBB79_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	cmpl	$0, 112(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB79_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	gimp_image_is_export_dirty, .Lfunc_end79-gimp_image_is_export_dirty
	.cfi_endproc

	.globl	gimp_image_get_dirty_time
	.align	16, 0x90
	.type	gimp_image_get_dirty_time,@function
gimp_image_get_dirty_time:              # @gimp_image_get_dirty_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp244:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB80_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB80_8
.LBB80_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB80_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB80_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB80_7
.LBB80_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB80_7:                               # %if.end
	jmp	.LBB80_8
.LBB80_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB80_10
# BB#9:                                 # %if.then.8
	jmp	.LBB80_11
.LBB80_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_dirty_time, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB80_13
.LBB80_11:                              # %if.end.10
	jmp	.LBB80_12
.LBB80_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	108(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB80_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	gimp_image_get_dirty_time, .Lfunc_end80-gimp_image_get_dirty_time
	.cfi_endproc

	.globl	gimp_image_saved
	.align	16, 0x90
	.type	gimp_image_saved,@function
gimp_image_saved:                       # @gimp_image_saved
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
.Ltmp246:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp247:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB81_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB81_8
.LBB81_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB81_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB81_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB81_7
.LBB81_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB81_7:                               # %if.end
	jmp	.LBB81_8
.LBB81_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB81_10
# BB#9:                                 # %if.then.8
	jmp	.LBB81_11
.LBB81_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_saved, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB81_18
.LBB81_11:                              # %if.end.10
	jmp	.LBB81_12
.LBB81_12:                              # %do.end
	jmp	.LBB81_13
.LBB81_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB81_15
# BB#14:                                # %if.then.13
	jmp	.LBB81_16
.LBB81_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_saved, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB81_18
.LBB81_16:                              # %if.end.15
	jmp	.LBB81_17
.LBB81_17:                              # %do.end.16
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+64, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB81_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	gimp_image_saved, .Lfunc_end81-gimp_image_saved
	.cfi_endproc

	.globl	gimp_image_exported
	.align	16, 0x90
	.type	gimp_image_exported,@function
gimp_image_exported:                    # @gimp_image_exported
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp248:
	.cfi_def_cfa_offset 16
.Ltmp249:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp250:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB82_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB82_8
.LBB82_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB82_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB82_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB82_7
.LBB82_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB82_7:                               # %if.end
	jmp	.LBB82_8
.LBB82_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB82_10
# BB#9:                                 # %if.then.8
	jmp	.LBB82_11
.LBB82_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_exported, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB82_18
.LBB82_11:                              # %if.end.10
	jmp	.LBB82_12
.LBB82_12:                              # %do.end
	jmp	.LBB82_13
.LBB82_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB82_15
# BB#14:                                # %if.then.13
	jmp	.LBB82_16
.LBB82_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_exported, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB82_18
.LBB82_16:                              # %if.end.15
	jmp	.LBB82_17
.LBB82_17:                              # %do.end.16
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+68, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB82_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	gimp_image_exported, .Lfunc_end82-gimp_image_exported
	.cfi_endproc

	.globl	gimp_image_flush
	.align	16, 0x90
	.type	gimp_image_flush,@function
gimp_image_flush:                       # @gimp_image_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp251:
	.cfi_def_cfa_offset 16
.Ltmp252:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp253:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB83_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB83_8
.LBB83_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB83_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB83_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB83_7
.LBB83_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB83_7:                               # %if.end
	jmp	.LBB83_8
.LBB83_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB83_10
# BB#9:                                 # %if.then.8
	jmp	.LBB83_11
.LBB83_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_flush, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB83_13
.LBB83_11:                              # %if.end.10
	jmp	.LBB83_12
.LBB83_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	364(%rax), %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	gimp_projectable_flush
.LBB83_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	gimp_image_flush, .Lfunc_end83-gimp_image_flush
	.cfi_endproc

	.globl	gimp_image_get_display_count
	.align	16, 0x90
	.type	gimp_image_get_display_count,@function
gimp_image_get_display_count:           # @gimp_image_get_display_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp256:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB84_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB84_8
.LBB84_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB84_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB84_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB84_7
.LBB84_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB84_7:                               # %if.end
	jmp	.LBB84_8
.LBB84_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB84_10
# BB#9:                                 # %if.then.8
	jmp	.LBB84_11
.LBB84_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_display_count, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB84_13
.LBB84_11:                              # %if.end.10
	jmp	.LBB84_12
.LBB84_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	124(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB84_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	gimp_image_get_display_count, .Lfunc_end84-gimp_image_get_display_count
	.cfi_endproc

	.globl	gimp_image_inc_display_count
	.align	16, 0x90
	.type	gimp_image_inc_display_count,@function
gimp_image_inc_display_count:           # @gimp_image_inc_display_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp257:
	.cfi_def_cfa_offset 16
.Ltmp258:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp259:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB85_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB85_8
.LBB85_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB85_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB85_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB85_7
.LBB85_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB85_7:                               # %if.end
	jmp	.LBB85_8
.LBB85_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB85_10
# BB#9:                                 # %if.then.8
	jmp	.LBB85_11
.LBB85_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_inc_display_count, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB85_13
.LBB85_11:                              # %if.end.10
	jmp	.LBB85_12
.LBB85_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	124(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 124(%rax)
.LBB85_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	gimp_image_inc_display_count, .Lfunc_end85-gimp_image_inc_display_count
	.cfi_endproc

	.globl	gimp_image_dec_display_count
	.align	16, 0x90
	.type	gimp_image_dec_display_count,@function
gimp_image_dec_display_count:           # @gimp_image_dec_display_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp260:
	.cfi_def_cfa_offset 16
.Ltmp261:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp262:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB86_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB86_8
.LBB86_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB86_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB86_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB86_7
.LBB86_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB86_7:                               # %if.end
	jmp	.LBB86_8
.LBB86_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB86_10
# BB#9:                                 # %if.then.8
	jmp	.LBB86_11
.LBB86_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_dec_display_count, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB86_13
.LBB86_11:                              # %if.end.10
	jmp	.LBB86_12
.LBB86_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	124(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 124(%rax)
.LBB86_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	gimp_image_dec_display_count, .Lfunc_end86-gimp_image_dec_display_count
	.cfi_endproc

	.globl	gimp_image_get_instance_count
	.align	16, 0x90
	.type	gimp_image_get_instance_count,@function
gimp_image_get_instance_count:          # @gimp_image_get_instance_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
.Ltmp264:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp265:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB87_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB87_8
.LBB87_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB87_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB87_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB87_7
.LBB87_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB87_7:                               # %if.end
	jmp	.LBB87_8
.LBB87_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB87_10
# BB#9:                                 # %if.then.8
	jmp	.LBB87_11
.LBB87_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_instance_count, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB87_13
.LBB87_11:                              # %if.end.10
	jmp	.LBB87_12
.LBB87_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	120(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB87_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	gimp_image_get_instance_count, .Lfunc_end87-gimp_image_get_instance_count
	.cfi_endproc

	.globl	gimp_image_inc_instance_count
	.align	16, 0x90
	.type	gimp_image_inc_instance_count,@function
gimp_image_inc_instance_count:          # @gimp_image_inc_instance_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp266:
	.cfi_def_cfa_offset 16
.Ltmp267:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp268:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB88_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB88_8
.LBB88_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB88_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB88_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB88_7
.LBB88_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB88_7:                               # %if.end
	jmp	.LBB88_8
.LBB88_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB88_10
# BB#9:                                 # %if.then.8
	jmp	.LBB88_11
.LBB88_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_inc_instance_count, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB88_13
.LBB88_11:                              # %if.end.10
	jmp	.LBB88_12
.LBB88_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	120(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 120(%rax)
.LBB88_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	gimp_image_inc_instance_count, .Lfunc_end88-gimp_image_inc_instance_count
	.cfi_endproc

	.globl	gimp_image_get_foreground
	.align	16, 0x90
	.type	gimp_image_get_foreground,@function
gimp_image_get_foreground:              # @gimp_image_get_foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
.Ltmp270:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp271:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB89_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB89_8
.LBB89_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB89_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB89_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB89_7
.LBB89_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB89_7:                               # %if.end
	jmp	.LBB89_8
.LBB89_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB89_10
# BB#9:                                 # %if.then.8
	jmp	.LBB89_11
.LBB89_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_foreground, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB89_30
.LBB89_11:                              # %if.end.10
	jmp	.LBB89_12
.LBB89_12:                              # %do.end
	jmp	.LBB89_13
.LBB89_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB89_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB89_20
.LBB89_15:                              # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB89_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB89_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB89_19
.LBB89_18:                              # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB89_19:                              # %if.end.31
	jmp	.LBB89_20
.LBB89_20:                              # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB89_22
# BB#21:                                # %if.then.35
	jmp	.LBB89_23
.LBB89_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_foreground, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB89_30
.LBB89_23:                              # %if.end.37
	jmp	.LBB89_24
.LBB89_24:                              # %do.end.38
	jmp	.LBB89_25
.LBB89_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB89_27
# BB#26:                                # %if.then.41
	jmp	.LBB89_28
.LBB89_27:                              # %if.else.42
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_foreground, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB89_30
.LBB89_28:                              # %if.end.43
	jmp	.LBB89_29
.LBB89_29:                              # %do.end.44
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rdi
	leaq	-67(%rbp), %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rsi, %rcx
	addq	$2, %rcx
	movq	%rax, %rdx
	callq	gimp_rgb_get_uchar
	xorl	%ecx, %ecx
	leaq	-67(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	gimp_image_transform_color
.LBB89_30:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	gimp_image_get_foreground, .Lfunc_end89-gimp_image_get_foreground
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI90_0:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI90_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI90_2:
	.quad	4589866978952703325     # double 0.0722
.LCPI90_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_image_transform_color
	.align	16, 0x90
	.type	gimp_image_transform_color,@function
gimp_image_transform_color:             # @gimp_image_transform_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp272:
	.cfi_def_cfa_offset 16
.Ltmp273:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp274:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB90_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB90_8
.LBB90_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB90_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB90_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB90_7
.LBB90_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB90_7:                               # %if.end
	jmp	.LBB90_8
.LBB90_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB90_10
# BB#9:                                 # %if.then.8
	jmp	.LBB90_11
.LBB90_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_transform_color, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB90_29
.LBB90_11:                              # %if.end.10
	jmp	.LBB90_12
.LBB90_12:                              # %do.end
	jmp	.LBB90_13
.LBB90_13:                              # %do.body.11
	cmpl	$2, -28(%rbp)
	je	.LBB90_15
# BB#14:                                # %if.then.13
	jmp	.LBB90_16
.LBB90_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_transform_color, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB90_29
.LBB90_16:                              # %if.end.15
	jmp	.LBB90_17
.LBB90_17:                              # %do.end.16
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB90_18
	jmp	.LBB90_30
.LBB90_30:                              # %do.end.16
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB90_23
	jmp	.LBB90_28
.LBB90_18:                              # %sw.bb
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jb	.LBB90_19
	jmp	.LBB90_33
.LBB90_33:                              # %sw.bb
	movl	-76(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jb	.LBB90_20
	jmp	.LBB90_34
.LBB90_34:                              # %sw.bb
	movl	-76(%rbp), %eax         # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jb	.LBB90_21
	jmp	.LBB90_22
.LBB90_19:                              # %sw.bb.17
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB90_22
.LBB90_20:                              # %sw.bb.23
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI90_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI90_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI90_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI90_3(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.LBB90_22
.LBB90_21:                              # %sw.bb.36
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	callq	gimp_image_color_hash_rgb_to_indexed
	movb	%al, %r8b
	movq	-24(%rbp), %rdi
	movb	%r8b, (%rdi)
.LBB90_22:                              # %sw.epilog
	jmp	.LBB90_29
.LBB90_23:                              # %sw.bb.45
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	jb	.LBB90_24
	jmp	.LBB90_31
.LBB90_31:                              # %sw.bb.45
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jb	.LBB90_25
	jmp	.LBB90_32
.LBB90_32:                              # %sw.bb.45
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB90_26
	jmp	.LBB90_27
.LBB90_24:                              # %sw.bb.46
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB90_27
.LBB90_25:                              # %sw.bb.50
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB90_27
.LBB90_26:                              # %sw.bb.51
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	callq	gimp_image_color_hash_rgb_to_indexed
	movb	%al, %r8b
	movq	-24(%rbp), %rdi
	movb	%r8b, (%rdi)
.LBB90_27:                              # %sw.epilog.60
	jmp	.LBB90_29
.LBB90_28:                              # %sw.default
	jmp	.LBB90_29
.LBB90_29:                              # %sw.epilog.61
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	gimp_image_transform_color, .Lfunc_end90-gimp_image_transform_color
	.cfi_endproc

	.globl	gimp_image_get_background
	.align	16, 0x90
	.type	gimp_image_get_background,@function
gimp_image_get_background:              # @gimp_image_get_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp275:
	.cfi_def_cfa_offset 16
.Ltmp276:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp277:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB91_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB91_8
.LBB91_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB91_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB91_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB91_7
.LBB91_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB91_7:                               # %if.end
	jmp	.LBB91_8
.LBB91_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB91_10
# BB#9:                                 # %if.then.8
	jmp	.LBB91_11
.LBB91_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_background, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB91_30
.LBB91_11:                              # %if.end.10
	jmp	.LBB91_12
.LBB91_12:                              # %do.end
	jmp	.LBB91_13
.LBB91_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB91_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB91_20
.LBB91_15:                              # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB91_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB91_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB91_19
.LBB91_18:                              # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB91_19:                              # %if.end.31
	jmp	.LBB91_20
.LBB91_20:                              # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB91_22
# BB#21:                                # %if.then.35
	jmp	.LBB91_23
.LBB91_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_background, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB91_30
.LBB91_23:                              # %if.end.37
	jmp	.LBB91_24
.LBB91_24:                              # %do.end.38
	jmp	.LBB91_25
.LBB91_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB91_27
# BB#26:                                # %if.then.41
	jmp	.LBB91_28
.LBB91_27:                              # %if.else.42
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_background, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB91_30
.LBB91_28:                              # %if.end.43
	jmp	.LBB91_29
.LBB91_29:                              # %do.end.44
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rdi
	leaq	-67(%rbp), %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rsi, %rcx
	addq	$2, %rcx
	movq	%rax, %rdx
	callq	gimp_rgb_get_uchar
	xorl	%ecx, %ecx
	leaq	-67(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	gimp_image_transform_color
.LBB91_30:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	gimp_image_get_background, .Lfunc_end91-gimp_image_get_background
	.cfi_endproc

	.globl	gimp_image_get_color
	.align	16, 0x90
	.type	gimp_image_get_color,@function
gimp_image_get_color:                   # @gimp_image_get_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
.Ltmp279:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp280:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB92_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB92_8
.LBB92_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB92_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB92_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB92_7
.LBB92_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB92_7:                               # %if.end
	jmp	.LBB92_8
.LBB92_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB92_10
# BB#9:                                 # %if.then.8
	jmp	.LBB92_11
.LBB92_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_color, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB92_22
.LBB92_11:                              # %if.end.10
	jmp	.LBB92_12
.LBB92_12:                              # %do.end
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB92_19
# BB#23:                                # %do.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI92_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB92_13:                              # %sw.bb
	movl	$1, -36(%rbp)
.LBB92_14:                              # %sw.bb.11
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB92_19
.LBB92_15:                              # %sw.bb.17
	movl	$1, -36(%rbp)
.LBB92_16:                              # %sw.bb.18
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%cl, (%rax)
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%cl, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB92_19
.LBB92_17:                              # %sw.bb.23
	movl	$1, -36(%rbp)
.LBB92_18:                              # %sw.bb.24
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movzbl	(%rax), %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rax
	movq	-72(%rbp), %rsi
	movq	80(%rsi), %rsi
	movb	(%rsi,%rax), %r8b
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%r8b, (%rax)
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rax
	movq	-72(%rbp), %rsi
	movq	80(%rsi), %rsi
	movb	(%rsi,%rax), %r8b
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%r8b, (%rax)
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movslq	%ecx, %rax
	movq	-72(%rbp), %rsi
	movq	80(%rsi), %rsi
	movb	(%rsi,%rax), %r8b
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%r8b, (%rax)
.LBB92_19:                              # %sw.epilog
	cmpl	$0, -36(%rbp)
	je	.LBB92_21
# BB#20:                                # %if.then.42
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
	jmp	.LBB92_22
.LBB92_21:                              # %if.else.43
	movq	-32(%rbp), %rax
	movb	$-1, (%rax)
.LBB92_22:                              # %if.end.44
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	gimp_image_get_color, .Lfunc_end92-gimp_image_get_color
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI92_0:
	.quad	.LBB92_14
	.quad	.LBB92_13
	.quad	.LBB92_16
	.quad	.LBB92_15
	.quad	.LBB92_18
	.quad	.LBB92_17

	.text
	.globl	gimp_image_transform_rgb
	.align	16, 0x90
	.type	gimp_image_transform_rgb,@function
gimp_image_transform_rgb:               # @gimp_image_transform_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp281:
	.cfi_def_cfa_offset 16
.Ltmp282:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp283:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB93_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB93_8
.LBB93_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB93_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB93_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB93_7
.LBB93_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB93_7:                               # %if.end
	jmp	.LBB93_8
.LBB93_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB93_10
# BB#9:                                 # %if.then.8
	jmp	.LBB93_11
.LBB93_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_transform_rgb, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB93_23
.LBB93_11:                              # %if.end.10
	jmp	.LBB93_12
.LBB93_12:                              # %do.end
	jmp	.LBB93_13
.LBB93_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB93_15
# BB#14:                                # %if.then.13
	jmp	.LBB93_16
.LBB93_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_transform_rgb, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB93_23
.LBB93_16:                              # %if.end.15
	jmp	.LBB93_17
.LBB93_17:                              # %do.end.16
	jmp	.LBB93_18
.LBB93_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB93_20
# BB#19:                                # %if.then.19
	jmp	.LBB93_21
.LBB93_20:                              # %if.else.20
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_transform_rgb, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB93_23
.LBB93_21:                              # %if.end.21
	jmp	.LBB93_22
.LBB93_22:                              # %do.end.22
	leaq	-35(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rax, %rdx
	addq	$2, %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	gimp_rgb_get_uchar
	xorl	%ecx, %ecx
	leaq	-35(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	gimp_image_transform_color
.LBB93_23:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	gimp_image_transform_rgb, .Lfunc_end93-gimp_image_transform_rgb
	.cfi_endproc

	.globl	gimp_image_transform_temp_buf
	.align	16, 0x90
	.type	gimp_image_transform_temp_buf,@function
gimp_image_transform_temp_buf:          # @gimp_image_transform_temp_buf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp284:
	.cfi_def_cfa_offset 16
.Ltmp285:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp286:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, %rax
	je	.LBB94_3
# BB#2:                                 # %if.then
	jmp	.LBB94_4
.LBB94_3:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_transform_temp_buf, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB94_68
.LBB94_4:                               # %if.end
	jmp	.LBB94_5
.LBB94_5:                               # %do.end
	jmp	.LBB94_6
.LBB94_6:                               # %do.body.2
	cmpq	$0, -32(%rbp)
	je	.LBB94_8
# BB#7:                                 # %if.then.3
	jmp	.LBB94_9
.LBB94_8:                               # %if.else.4
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_transform_temp_buf, %rsi
	movabsq	$.L.str.35, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB94_68
.LBB94_9:                               # %if.end.5
	jmp	.LBB94_10
.LBB94_10:                              # %do.end.6
	jmp	.LBB94_11
.LBB94_11:                              # %do.body.7
	cmpq	$0, -40(%rbp)
	je	.LBB94_13
# BB#12:                                # %if.then.9
	jmp	.LBB94_14
.LBB94_13:                              # %if.else.10
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_transform_temp_buf, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB94_68
.LBB94_14:                              # %if.end.11
	jmp	.LBB94_15
.LBB94_15:                              # %do.end.12
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -64(%rbp)
	cmpl	$2, -64(%rbp)
	movb	%al, -105(%rbp)         # 1-byte Spill
	je	.LBB94_17
# BB#16:                                # %lor.rhs
	cmpl	$4, -64(%rbp)
	sete	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB94_17:                              # %lor.end
	movb	-105(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -56(%rbp)
	cmpl	$3, -64(%rbp)
	movb	%cl, -106(%rbp)         # 1-byte Spill
	je	.LBB94_19
# BB#18:                                # %lor.rhs.16
	cmpl	$4, -64(%rbp)
	sete	%al
	movb	%al, -106(%rbp)         # 1-byte Spill
.LBB94_19:                              # %lor.end.18
	movb	-106(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB94_31
# BB#20:                                # %if.then.21
	cmpl	$0, -20(%rbp)
	je	.LBB94_22
# BB#21:                                # %lor.lhs.false
	cmpl	$1, -20(%rbp)
	jne	.LBB94_23
.LBB94_22:                              # %cond.true
	movl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB94_30
.LBB94_23:                              # %cond.false
	cmpl	$2, -20(%rbp)
	je	.LBB94_25
# BB#24:                                # %lor.lhs.false.25
	cmpl	$3, -20(%rbp)
	jne	.LBB94_26
.LBB94_25:                              # %cond.true.27
	movl	$3, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB94_29
.LBB94_26:                              # %cond.false.28
	movb	$1, %al
	cmpl	$4, -20(%rbp)
	movb	%al, -117(%rbp)         # 1-byte Spill
	je	.LBB94_28
# BB#27:                                # %lor.rhs.30
	cmpl	$5, -20(%rbp)
	sete	%al
	movb	%al, -117(%rbp)         # 1-byte Spill
.LBB94_28:                              # %lor.end.32
	movb	-117(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB94_29:                              # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB94_30:                              # %cond.end.35
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB94_42
.LBB94_31:                              # %if.else.37
	cmpl	$0, -20(%rbp)
	je	.LBB94_33
# BB#32:                                # %lor.lhs.false.39
	cmpl	$1, -20(%rbp)
	jne	.LBB94_34
.LBB94_33:                              # %cond.true.41
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB94_41
.LBB94_34:                              # %cond.false.42
	cmpl	$2, -20(%rbp)
	je	.LBB94_36
# BB#35:                                # %lor.lhs.false.44
	cmpl	$3, -20(%rbp)
	jne	.LBB94_37
.LBB94_36:                              # %cond.true.46
	movl	$2, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB94_40
.LBB94_37:                              # %cond.false.47
	movb	$1, %al
	cmpl	$4, -20(%rbp)
	movb	%al, -129(%rbp)         # 1-byte Spill
	je	.LBB94_39
# BB#38:                                # %lor.rhs.49
	cmpl	$5, -20(%rbp)
	sete	%al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB94_39:                              # %lor.end.51
	movb	-129(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$4, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
.LBB94_40:                              # %cond.end.54
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB94_41:                              # %cond.end.56
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB94_42:                              # %if.end.58
	cmpl	$1, -52(%rbp)
	jne	.LBB94_44
# BB#43:                                # %cond.true.60
	movl	$4, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB94_57
.LBB94_44:                              # %cond.false.61
	cmpl	$0, -52(%rbp)
	jne	.LBB94_46
# BB#45:                                # %cond.true.63
	movl	$3, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB94_56
.LBB94_46:                              # %cond.false.64
	cmpl	$3, -52(%rbp)
	jne	.LBB94_48
# BB#47:                                # %cond.true.66
	movl	$2, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB94_55
.LBB94_48:                              # %cond.false.67
	cmpl	$2, -52(%rbp)
	jne	.LBB94_50
# BB#49:                                # %cond.true.69
	movl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB94_54
.LBB94_50:                              # %cond.false.70
	cmpl	$5, -52(%rbp)
	jne	.LBB94_52
# BB#51:                                # %cond.true.72
	movl	$2, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB94_53
.LBB94_52:                              # %cond.false.73
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -52(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB94_53:                              # %cond.end.76
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB94_54:                              # %cond.end.78
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB94_55:                              # %cond.end.80
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB94_56:                              # %cond.end.82
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB94_57:                              # %cond.end.84
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB94_60
# BB#58:                                # %lor.lhs.false.87
	cmpl	$4, -20(%rbp)
	je	.LBB94_60
# BB#59:                                # %lor.lhs.false.89
	cmpl	$5, -20(%rbp)
	jne	.LBB94_66
.LBB94_60:                              # %if.then.91
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-32(%rbp), %rdx
	movl	4(%rdx), %edi
	movq	-32(%rbp), %rdx
	movl	8(%rdx), %esi
	movl	-68(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	temp_buf_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	temp_buf_get_data
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	imull	8(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB94_61:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -92(%rbp)
	cmpl	$0, %eax
	je	.LBB94_65
# BB#62:                                # %while.body
                                        #   in Loop: Header=BB94_61 Depth=1
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-88(%rbp), %rdx
	cmpl	$0, -60(%rbp)
	cmovnel	%ecx, %eax
	movq	-80(%rbp), %r8
	movl	%eax, %ecx
	callq	gimp_image_transform_color
	cmpl	$0, -56(%rbp)
	je	.LBB94_64
# BB#63:                                # %if.then.101
                                        #   in Loop: Header=BB94_61 Depth=1
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB94_64:                              # %if.end.105
                                        #   in Loop: Header=BB94_61 Depth=1
	movl	-64(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movl	-68(%rbp), %eax
	movq	-88(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)
	jmp	.LBB94_61
.LBB94_65:                              # %while.end
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB94_67
.LBB94_66:                              # %if.else.108
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB94_67:                              # %if.end.109
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB94_68:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	gimp_image_transform_temp_buf, .Lfunc_end94-gimp_image_transform_temp_buf
	.cfi_endproc

	.globl	gimp_image_parasite_find
	.align	16, 0x90
	.type	gimp_image_parasite_find,@function
gimp_image_parasite_find:               # @gimp_image_parasite_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp287:
	.cfi_def_cfa_offset 16
.Ltmp288:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp289:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB95_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB95_8
.LBB95_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB95_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB95_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB95_7
.LBB95_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB95_7:                               # %if.end
	jmp	.LBB95_8
.LBB95_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB95_10
# BB#9:                                 # %if.then.8
	jmp	.LBB95_11
.LBB95_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_parasite_find, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB95_13
.LBB95_11:                              # %if.end.10
	jmp	.LBB95_12
.LBB95_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	240(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_parasite_list_find
	movq	%rax, -8(%rbp)
.LBB95_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	gimp_image_parasite_find, .Lfunc_end95-gimp_image_parasite_find
	.cfi_endproc

	.globl	gimp_image_parasite_list
	.align	16, 0x90
	.type	gimp_image_parasite_list,@function
gimp_image_parasite_list:               # @gimp_image_parasite_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp290:
	.cfi_def_cfa_offset 16
.Ltmp291:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp292:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB96_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB96_8
.LBB96_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB96_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB96_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB96_7
.LBB96_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB96_7:                               # %if.end
	jmp	.LBB96_8
.LBB96_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB96_10
# BB#9:                                 # %if.then.8
	jmp	.LBB96_11
.LBB96_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_parasite_list, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB96_13
.LBB96_11:                              # %if.end.10
	jmp	.LBB96_12
.LBB96_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gimp_parasite_list_length
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-24(%rbp), %rdi
	movslq	(%rdi), %rdi
	callq	g_malloc_n
	movabsq	$list_func, %rsi
	leaq	-48(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	gimp_parasite_list_foreach
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB96_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	gimp_image_parasite_list, .Lfunc_end96-gimp_image_parasite_list
	.cfi_endproc

	.align	16, 0x90
	.type	list_func,@function
list_func:                              # @list_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp293:
	.cfi_def_cfa_offset 16
.Ltmp294:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp295:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$8, %rdi
	movq	%rdi, (%rdx)
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	list_func, .Lfunc_end97-list_func
	.cfi_endproc

	.globl	gimp_image_parasite_attach
	.align	16, 0x90
	.type	gimp_image_parasite_attach,@function
gimp_image_parasite_attach:             # @gimp_image_parasite_attach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp296:
	.cfi_def_cfa_offset 16
.Ltmp297:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp298:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB98_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB98_8
.LBB98_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB98_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB98_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB98_7
.LBB98_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB98_7:                               # %if.end
	jmp	.LBB98_8
.LBB98_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB98_10
# BB#9:                                 # %if.then.8
	jmp	.LBB98_11
.LBB98_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_parasite_attach, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB98_23
.LBB98_11:                              # %if.end.10
	jmp	.LBB98_12
.LBB98_12:                              # %do.end
	jmp	.LBB98_13
.LBB98_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB98_15
# BB#14:                                # %if.then.13
	jmp	.LBB98_16
.LBB98_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_parasite_attach, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB98_23
.LBB98_16:                              # %if.end.15
	jmp	.LBB98_17
.LBB98_17:                              # %do.end.16
	leaq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_parasite_is_undoable
	cmpl	$0, %eax
	je	.LBB98_19
# BB#18:                                # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.38, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_image_parasite
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB98_19:                              # %if.end.22
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-40(%rbp), %rsi
	movq	240(%rax), %rdi
	callq	gimp_parasite_list_add
	leaq	-40(%rbp), %rdi
	movl	$32768, %ecx            # imm = 0x8000
	movl	%ecx, %esi
	callq	gimp_parasite_has_flag
	cmpl	$0, %eax
	je	.LBB98_21
# BB#20:                                # %if.then.27
	leaq	-40(%rbp), %rdi
	callq	gimp_parasite_shift_parent
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_parasite_attach
.LBB98_21:                              # %if.end.28
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+96, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	$.L.str.39, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB98_23
# BB#22:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_managed_profile_changed
.LBB98_23:                              # %if.end.35
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	gimp_image_parasite_attach, .Lfunc_end98-gimp_image_parasite_attach
	.cfi_endproc

	.globl	gimp_image_parasite_detach
	.align	16, 0x90
	.type	gimp_image_parasite_detach,@function
gimp_image_parasite_detach:             # @gimp_image_parasite_detach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp299:
	.cfi_def_cfa_offset 16
.Ltmp300:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp301:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB99_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB99_8
.LBB99_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB99_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB99_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB99_7
.LBB99_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB99_7:                               # %if.end
	jmp	.LBB99_8
.LBB99_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB99_10
# BB#9:                                 # %if.then.8
	jmp	.LBB99_11
.LBB99_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_parasite_detach, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB99_23
.LBB99_11:                              # %if.end.10
	jmp	.LBB99_12
.LBB99_12:                              # %do.end
	jmp	.LBB99_13
.LBB99_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB99_15
# BB#14:                                # %if.then.13
	jmp	.LBB99_16
.LBB99_15:                              # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_parasite_detach, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB99_23
.LBB99_16:                              # %if.end.15
	jmp	.LBB99_17
.LBB99_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_parasite_list_find
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB99_19
# BB#18:                                # %if.then.21
	jmp	.LBB99_23
.LBB99_19:                              # %if.end.22
	movq	-32(%rbp), %rdi
	callq	gimp_parasite_is_undoable
	cmpl	$0, %eax
	je	.LBB99_21
# BB#20:                                # %if.then.25
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.41, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_image_parasite_remove
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB99_21:                              # %if.end.28
	movq	-24(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_parasite_list_remove
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_image_signals+100, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-16(%rbp), %rdi
	movl	$.L.str.39, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB99_23
# BB#22:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_managed_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_managed_profile_changed
.LBB99_23:                              # %if.end.35
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	gimp_image_parasite_detach, .Lfunc_end99-gimp_image_parasite_detach
	.cfi_endproc

	.globl	gimp_image_get_new_tattoo
	.align	16, 0x90
	.type	gimp_image_get_new_tattoo,@function
gimp_image_get_new_tattoo:              # @gimp_image_get_new_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp302:
	.cfi_def_cfa_offset 16
.Ltmp303:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp304:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB100_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB100_8
.LBB100_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB100_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB100_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB100_7
.LBB100_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB100_7:                              # %if.end
	jmp	.LBB100_8
.LBB100_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB100_10
# BB#9:                                 # %if.then.8
	jmp	.LBB100_11
.LBB100_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_new_tattoo, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB100_15
.LBB100_11:                             # %if.end.10
	jmp	.LBB100_12
.LBB100_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 128(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 128(%rax)
	jne	.LBB100_14
# BB#13:                                # %if.then.15
	movabsq	$.L.str.42, %rdi
	movabsq	$.L__func__.gimp_image_get_new_tattoo, %rsi
	movb	$0, %al
	callq	g_warning
.LBB100_14:                             # %if.end.16
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB100_15:                             # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	gimp_image_get_new_tattoo, .Lfunc_end100-gimp_image_get_new_tattoo
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp305:
	.cfi_def_cfa_offset 16
.Ltmp306:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp307:
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
	je	.LBB101_2
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
.LBB101_2:                              # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end101:
	.size	g_warning, .Lfunc_end101-g_warning
	.cfi_endproc

	.globl	gimp_image_get_tattoo_state
	.align	16, 0x90
	.type	gimp_image_get_tattoo_state,@function
gimp_image_get_tattoo_state:            # @gimp_image_get_tattoo_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp308:
	.cfi_def_cfa_offset 16
.Ltmp309:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp310:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB102_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB102_8
.LBB102_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB102_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB102_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB102_7
.LBB102_6:                              # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB102_7:                              # %if.end
	jmp	.LBB102_8
.LBB102_8:                              # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB102_10
# BB#9:                                 # %if.then.8
	jmp	.LBB102_11
.LBB102_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_tattoo_state, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB102_13
.LBB102_11:                             # %if.end.10
	jmp	.LBB102_12
.LBB102_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB102_13:                             # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	gimp_image_get_tattoo_state, .Lfunc_end102-gimp_image_get_tattoo_state
	.cfi_endproc

	.globl	gimp_image_set_tattoo_state
	.align	16, 0x90
	.type	gimp_image_set_tattoo_state,@function
gimp_image_set_tattoo_state:            # @gimp_image_set_tattoo_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp311:
	.cfi_def_cfa_offset 16
.Ltmp312:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp313:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$1, -44(%rbp)
	movl	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB103_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB103_8
.LBB103_3:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB103_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB103_6
# BB#5:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB103_7
.LBB103_6:                              # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB103_7:                              # %if.end
	jmp	.LBB103_8
.LBB103_8:                              # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB103_10
# BB#9:                                 # %if.then.9
	jmp	.LBB103_11
.LBB103_10:                             # %if.else.10
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_tattoo_state, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB103_50
.LBB103_11:                             # %if.end.11
	jmp	.LBB103_12
.LBB103_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB103_13:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB103_25
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB103_13 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jbe	.LBB103_16
# BB#15:                                # %if.then.19
                                        #   in Loop: Header=BB103_13 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB103_16:                             # %if.end.20
                                        #   in Loop: Header=BB103_13 Depth=1
	movq	-16(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_image_get_channel_by_tattoo
	cmpq	$0, %rax
	je	.LBB103_18
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB103_13 Depth=1
	movl	$0, -44(%rbp)
.LBB103_18:                             # %if.end.24
                                        #   in Loop: Header=BB103_13 Depth=1
	movq	-16(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_image_get_vectors_by_tattoo
	cmpq	$0, %rax
	je	.LBB103_20
# BB#19:                                # %if.then.27
                                        #   in Loop: Header=BB103_13 Depth=1
	movl	$0, -44(%rbp)
.LBB103_20:                             # %if.end.28
                                        #   in Loop: Header=BB103_13 Depth=1
	jmp	.LBB103_21
.LBB103_21:                             # %for.inc
                                        #   in Loop: Header=BB103_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB103_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB103_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB103_24
.LBB103_23:                             # %cond.false
                                        #   in Loop: Header=BB103_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB103_24
.LBB103_24:                             # %cond.end
                                        #   in Loop: Header=BB103_13 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB103_13
.LBB103_25:                             # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channel_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB103_26:                             # %for.cond.31
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB103_36
# BB#27:                                # %for.body.33
                                        #   in Loop: Header=BB103_26 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jbe	.LBB103_29
# BB#28:                                # %if.then.40
                                        #   in Loop: Header=BB103_26 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB103_29:                             # %if.end.41
                                        #   in Loop: Header=BB103_26 Depth=1
	movq	-16(%rbp), %rdi
	movl	-80(%rbp), %esi
	callq	gimp_image_get_vectors_by_tattoo
	cmpq	$0, %rax
	je	.LBB103_31
# BB#30:                                # %if.then.44
                                        #   in Loop: Header=BB103_26 Depth=1
	movl	$0, -44(%rbp)
.LBB103_31:                             # %if.end.45
                                        #   in Loop: Header=BB103_26 Depth=1
	jmp	.LBB103_32
.LBB103_32:                             # %for.inc.46
                                        #   in Loop: Header=BB103_26 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB103_34
# BB#33:                                # %cond.true.48
                                        #   in Loop: Header=BB103_26 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB103_35
.LBB103_34:                             # %cond.false.50
                                        #   in Loop: Header=BB103_26 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB103_35
.LBB103_35:                             # %cond.end.51
                                        #   in Loop: Header=BB103_26 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB103_26
.LBB103_36:                             # %for.end.53
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB103_37:                             # %for.cond.55
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB103_45
# BB#38:                                # %for.body.57
                                        #   in Loop: Header=BB103_37 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_tattoo
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jbe	.LBB103_40
# BB#39:                                # %if.then.64
                                        #   in Loop: Header=BB103_37 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB103_40:                             # %if.end.65
                                        #   in Loop: Header=BB103_37 Depth=1
	jmp	.LBB103_41
.LBB103_41:                             # %for.inc.66
                                        #   in Loop: Header=BB103_37 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB103_43
# BB#42:                                # %cond.true.68
                                        #   in Loop: Header=BB103_37 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB103_44
.LBB103_43:                             # %cond.false.70
                                        #   in Loop: Header=BB103_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB103_44
.LBB103_44:                             # %cond.end.71
                                        #   in Loop: Header=BB103_37 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB103_37
.LBB103_45:                             # %for.end.73
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB103_47
# BB#46:                                # %if.then.75
	movl	$0, -44(%rbp)
.LBB103_47:                             # %if.end.76
	cmpl	$1, -44(%rbp)
	jne	.LBB103_49
# BB#48:                                # %if.then.78
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	%edx, 128(%rax)
.LBB103_49:                             # %if.end.81
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB103_50:                             # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	gimp_image_set_tattoo_state, .Lfunc_end103-gimp_image_set_tattoo_state
	.cfi_endproc

	.globl	gimp_image_get_layer_list
	.align	16, 0x90
	.type	gimp_image_get_layer_list,@function
gimp_image_get_layer_list:              # @gimp_image_get_layer_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp314:
	.cfi_def_cfa_offset 16
.Ltmp315:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp316:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB104_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB104_8
.LBB104_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB104_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB104_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB104_7
.LBB104_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB104_7:                              # %if.end
	jmp	.LBB104_8
.LBB104_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB104_10
# BB#9:                                 # %if.then.8
	jmp	.LBB104_11
.LBB104_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_layer_list, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB104_13
.LBB104_11:                             # %if.end.10
	jmp	.LBB104_12
.LBB104_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_item_list
	movq	%rax, -8(%rbp)
.LBB104_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	gimp_image_get_layer_list, .Lfunc_end104-gimp_image_get_layer_list
	.cfi_endproc

	.globl	gimp_image_get_channel_by_tattoo
	.align	16, 0x90
	.type	gimp_image_get_channel_by_tattoo,@function
gimp_image_get_channel_by_tattoo:       # @gimp_image_get_channel_by_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp317:
	.cfi_def_cfa_offset 16
.Ltmp318:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp319:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB105_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB105_8
.LBB105_3:                              # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB105_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB105_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB105_7
.LBB105_6:                              # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB105_7:                              # %if.end
	jmp	.LBB105_8
.LBB105_8:                              # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB105_10
# BB#9:                                 # %if.then.8
	jmp	.LBB105_11
.LBB105_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_channel_by_tattoo, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB105_13
.LBB105_11:                             # %if.end.10
	jmp	.LBB105_12
.LBB105_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_item_stack_get_item_by_tattoo
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB105_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	gimp_image_get_channel_by_tattoo, .Lfunc_end105-gimp_image_get_channel_by_tattoo
	.cfi_endproc

	.globl	gimp_image_get_vectors_by_tattoo
	.align	16, 0x90
	.type	gimp_image_get_vectors_by_tattoo,@function
gimp_image_get_vectors_by_tattoo:       # @gimp_image_get_vectors_by_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp320:
	.cfi_def_cfa_offset 16
.Ltmp321:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp322:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB106_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB106_8
.LBB106_3:                              # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB106_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB106_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB106_7
.LBB106_6:                              # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB106_7:                              # %if.end
	jmp	.LBB106_8
.LBB106_8:                              # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB106_10
# BB#9:                                 # %if.then.8
	jmp	.LBB106_11
.LBB106_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_vectors_by_tattoo, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB106_13
.LBB106_11:                             # %if.end.10
	jmp	.LBB106_12
.LBB106_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_item_stack_get_item_by_tattoo
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB106_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	gimp_image_get_vectors_by_tattoo, .Lfunc_end106-gimp_image_get_vectors_by_tattoo
	.cfi_endproc

	.globl	gimp_image_get_channel_list
	.align	16, 0x90
	.type	gimp_image_get_channel_list,@function
gimp_image_get_channel_list:            # @gimp_image_get_channel_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp323:
	.cfi_def_cfa_offset 16
.Ltmp324:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp325:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB107_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB107_8
.LBB107_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB107_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB107_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB107_7
.LBB107_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB107_7:                              # %if.end
	jmp	.LBB107_8
.LBB107_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB107_10
# BB#9:                                 # %if.then.8
	jmp	.LBB107_11
.LBB107_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_channel_list, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB107_13
.LBB107_11:                             # %if.end.10
	jmp	.LBB107_12
.LBB107_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_item_list
	movq	%rax, -8(%rbp)
.LBB107_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	gimp_image_get_channel_list, .Lfunc_end107-gimp_image_get_channel_list
	.cfi_endproc

	.globl	gimp_image_get_vectors_list
	.align	16, 0x90
	.type	gimp_image_get_vectors_list,@function
gimp_image_get_vectors_list:            # @gimp_image_get_vectors_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp326:
	.cfi_def_cfa_offset 16
.Ltmp327:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp328:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB108_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB108_8
.LBB108_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB108_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB108_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB108_7
.LBB108_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB108_7:                              # %if.end
	jmp	.LBB108_8
.LBB108_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB108_10
# BB#9:                                 # %if.then.8
	jmp	.LBB108_11
.LBB108_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_vectors_list, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB108_13
.LBB108_11:                             # %if.end.10
	jmp	.LBB108_12
.LBB108_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_item_list
	movq	%rax, -8(%rbp)
.LBB108_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	gimp_image_get_vectors_list, .Lfunc_end108-gimp_image_get_vectors_list
	.cfi_endproc

	.globl	gimp_image_get_projection
	.align	16, 0x90
	.type	gimp_image_get_projection,@function
gimp_image_get_projection:              # @gimp_image_get_projection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp329:
	.cfi_def_cfa_offset 16
.Ltmp330:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp331:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB109_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB109_8
.LBB109_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB109_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB109_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB109_7
.LBB109_6:                              # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB109_7:                              # %if.end
	jmp	.LBB109_8
.LBB109_8:                              # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB109_10
# BB#9:                                 # %if.then.8
	jmp	.LBB109_11
.LBB109_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_projection, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB109_13
.LBB109_11:                             # %if.end.10
	jmp	.LBB109_12
.LBB109_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	136(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB109_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	gimp_image_get_projection, .Lfunc_end109-gimp_image_get_projection
	.cfi_endproc

	.globl	gimp_image_get_layer_tree
	.align	16, 0x90
	.type	gimp_image_get_layer_tree,@function
gimp_image_get_layer_tree:              # @gimp_image_get_layer_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp332:
	.cfi_def_cfa_offset 16
.Ltmp333:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp334:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB110_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB110_8
.LBB110_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB110_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB110_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB110_7
.LBB110_6:                              # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB110_7:                              # %if.end
	jmp	.LBB110_8
.LBB110_8:                              # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB110_10
# BB#9:                                 # %if.then.8
	jmp	.LBB110_11
.LBB110_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_layer_tree, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB110_13
.LBB110_11:                             # %if.end.10
	jmp	.LBB110_12
.LBB110_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	176(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB110_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	gimp_image_get_layer_tree, .Lfunc_end110-gimp_image_get_layer_tree
	.cfi_endproc

	.globl	gimp_image_get_channel_tree
	.align	16, 0x90
	.type	gimp_image_get_channel_tree,@function
gimp_image_get_channel_tree:            # @gimp_image_get_channel_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp335:
	.cfi_def_cfa_offset 16
.Ltmp336:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp337:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB111_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB111_8
.LBB111_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB111_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB111_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB111_7
.LBB111_6:                              # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB111_7:                              # %if.end
	jmp	.LBB111_8
.LBB111_8:                              # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB111_10
# BB#9:                                 # %if.then.8
	jmp	.LBB111_11
.LBB111_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_channel_tree, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB111_13
.LBB111_11:                             # %if.end.10
	jmp	.LBB111_12
.LBB111_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	184(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB111_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	gimp_image_get_channel_tree, .Lfunc_end111-gimp_image_get_channel_tree
	.cfi_endproc

	.globl	gimp_image_get_vectors_tree
	.align	16, 0x90
	.type	gimp_image_get_vectors_tree,@function
gimp_image_get_vectors_tree:            # @gimp_image_get_vectors_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp338:
	.cfi_def_cfa_offset 16
.Ltmp339:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp340:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB112_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB112_8
.LBB112_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB112_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB112_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB112_7
.LBB112_6:                              # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB112_7:                              # %if.end
	jmp	.LBB112_8
.LBB112_8:                              # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB112_10
# BB#9:                                 # %if.then.8
	jmp	.LBB112_11
.LBB112_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_vectors_tree, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB112_13
.LBB112_11:                             # %if.end.10
	jmp	.LBB112_12
.LBB112_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	192(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB112_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	gimp_image_get_vectors_tree, .Lfunc_end112-gimp_image_get_vectors_tree
	.cfi_endproc

	.globl	gimp_image_get_layers
	.align	16, 0x90
	.type	gimp_image_get_layers,@function
gimp_image_get_layers:                  # @gimp_image_get_layers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp341:
	.cfi_def_cfa_offset 16
.Ltmp342:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp343:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB113_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB113_8
.LBB113_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB113_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB113_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB113_7
.LBB113_6:                              # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB113_7:                              # %if.end
	jmp	.LBB113_8
.LBB113_8:                              # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB113_10
# BB#9:                                 # %if.then.8
	jmp	.LBB113_11
.LBB113_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_layers, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB113_13
.LBB113_11:                             # %if.end.10
	jmp	.LBB113_12
.LBB113_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	176(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB113_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end113:
	.size	gimp_image_get_layers, .Lfunc_end113-gimp_image_get_layers
	.cfi_endproc

	.globl	gimp_image_get_channels
	.align	16, 0x90
	.type	gimp_image_get_channels,@function
gimp_image_get_channels:                # @gimp_image_get_channels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp344:
	.cfi_def_cfa_offset 16
.Ltmp345:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp346:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB114_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB114_8
.LBB114_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB114_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB114_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB114_7
.LBB114_6:                              # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB114_7:                              # %if.end
	jmp	.LBB114_8
.LBB114_8:                              # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB114_10
# BB#9:                                 # %if.then.8
	jmp	.LBB114_11
.LBB114_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_channels, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB114_13
.LBB114_11:                             # %if.end.10
	jmp	.LBB114_12
.LBB114_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	184(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB114_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	gimp_image_get_channels, .Lfunc_end114-gimp_image_get_channels
	.cfi_endproc

	.globl	gimp_image_get_vectors
	.align	16, 0x90
	.type	gimp_image_get_vectors,@function
gimp_image_get_vectors:                 # @gimp_image_get_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp347:
	.cfi_def_cfa_offset 16
.Ltmp348:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp349:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB115_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB115_8
.LBB115_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB115_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB115_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB115_7
.LBB115_6:                              # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB115_7:                              # %if.end
	jmp	.LBB115_8
.LBB115_8:                              # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB115_10
# BB#9:                                 # %if.then.8
	jmp	.LBB115_11
.LBB115_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB115_13
.LBB115_11:                             # %if.end.10
	jmp	.LBB115_12
.LBB115_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	192(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB115_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	gimp_image_get_vectors, .Lfunc_end115-gimp_image_get_vectors
	.cfi_endproc

	.globl	gimp_image_get_n_channels
	.align	16, 0x90
	.type	gimp_image_get_n_channels,@function
gimp_image_get_n_channels:              # @gimp_image_get_n_channels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp350:
	.cfi_def_cfa_offset 16
.Ltmp351:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp352:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB116_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB116_8
.LBB116_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB116_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB116_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB116_7
.LBB116_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB116_7:                              # %if.end
	jmp	.LBB116_8
.LBB116_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB116_10
# BB#9:                                 # %if.then.8
	jmp	.LBB116_11
.LBB116_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_n_channels, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB116_13
.LBB116_11:                             # %if.end.10
	jmp	.LBB116_12
.LBB116_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_n_items
	movl	%eax, -4(%rbp)
.LBB116_13:                             # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	gimp_image_get_n_channels, .Lfunc_end116-gimp_image_get_n_channels
	.cfi_endproc

	.globl	gimp_image_get_n_vectors
	.align	16, 0x90
	.type	gimp_image_get_n_vectors,@function
gimp_image_get_n_vectors:               # @gimp_image_get_n_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp353:
	.cfi_def_cfa_offset 16
.Ltmp354:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp355:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB117_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB117_8
.LBB117_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB117_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB117_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB117_7
.LBB117_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB117_7:                              # %if.end
	jmp	.LBB117_8
.LBB117_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB117_10
# BB#9:                                 # %if.then.8
	jmp	.LBB117_11
.LBB117_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_n_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB117_13
.LBB117_11:                             # %if.end.10
	jmp	.LBB117_12
.LBB117_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_n_items
	movl	%eax, -4(%rbp)
.LBB117_13:                             # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	gimp_image_get_n_vectors, .Lfunc_end117-gimp_image_get_n_vectors
	.cfi_endproc

	.globl	gimp_image_get_layer_iter
	.align	16, 0x90
	.type	gimp_image_get_layer_iter,@function
gimp_image_get_layer_iter:              # @gimp_image_get_layer_iter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp356:
	.cfi_def_cfa_offset 16
.Ltmp357:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp358:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB118_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB118_8
.LBB118_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB118_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB118_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB118_7
.LBB118_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB118_7:                              # %if.end
	jmp	.LBB118_8
.LBB118_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB118_10
# BB#9:                                 # %if.then.8
	jmp	.LBB118_11
.LBB118_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_layer_iter, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB118_13
.LBB118_11:                             # %if.end.10
	jmp	.LBB118_12
.LBB118_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -8(%rbp)
.LBB118_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	gimp_image_get_layer_iter, .Lfunc_end118-gimp_image_get_layer_iter
	.cfi_endproc

	.globl	gimp_image_get_channel_iter
	.align	16, 0x90
	.type	gimp_image_get_channel_iter,@function
gimp_image_get_channel_iter:            # @gimp_image_get_channel_iter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp359:
	.cfi_def_cfa_offset 16
.Ltmp360:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp361:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB119_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB119_8
.LBB119_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB119_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB119_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB119_7
.LBB119_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB119_7:                              # %if.end
	jmp	.LBB119_8
.LBB119_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB119_10
# BB#9:                                 # %if.then.8
	jmp	.LBB119_11
.LBB119_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_channel_iter, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB119_13
.LBB119_11:                             # %if.end.10
	jmp	.LBB119_12
.LBB119_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -8(%rbp)
.LBB119_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	gimp_image_get_channel_iter, .Lfunc_end119-gimp_image_get_channel_iter
	.cfi_endproc

	.globl	gimp_image_get_vectors_iter
	.align	16, 0x90
	.type	gimp_image_get_vectors_iter,@function
gimp_image_get_vectors_iter:            # @gimp_image_get_vectors_iter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp362:
	.cfi_def_cfa_offset 16
.Ltmp363:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp364:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB120_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB120_8
.LBB120_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB120_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB120_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB120_7
.LBB120_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB120_7:                              # %if.end
	jmp	.LBB120_8
.LBB120_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB120_10
# BB#9:                                 # %if.then.8
	jmp	.LBB120_11
.LBB120_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_vectors_iter, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB120_13
.LBB120_11:                             # %if.end.10
	jmp	.LBB120_12
.LBB120_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -8(%rbp)
.LBB120_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	gimp_image_get_vectors_iter, .Lfunc_end120-gimp_image_get_vectors_iter
	.cfi_endproc

	.globl	gimp_image_get_active_drawable
	.align	16, 0x90
	.type	gimp_image_get_active_drawable,@function
gimp_image_get_active_drawable:         # @gimp_image_get_active_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp365:
	.cfi_def_cfa_offset 16
.Ltmp366:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp367:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB121_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB121_8
.LBB121_3:                              # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB121_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB121_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB121_7
.LBB121_6:                              # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB121_7:                              # %if.end
	jmp	.LBB121_8
.LBB121_8:                              # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB121_10
# BB#9:                                 # %if.then.8
	jmp	.LBB121_11
.LBB121_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_active_drawable, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB121_21
.LBB121_11:                             # %if.end.10
	jmp	.LBB121_12
.LBB121_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gimp_item_tree_get_active_item
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gimp_item_tree_get_active_item
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB121_14
# BB#13:                                # %if.then.16
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB121_21
.LBB121_14:                             # %if.else.19
	cmpq	$0, -40(%rbp)
	je	.LBB121_19
# BB#15:                                # %if.then.21
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB121_18
# BB#16:                                # %land.lhs.true.28
	movq	-80(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	je	.LBB121_18
# BB#17:                                # %if.then.31
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB121_21
.LBB121_18:                             # %if.else.34
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB121_21
.LBB121_19:                             # %if.end.37
	jmp	.LBB121_20
.LBB121_20:                             # %if.end.38
	movq	$0, -8(%rbp)
.LBB121_21:                             # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	gimp_image_get_active_drawable, .Lfunc_end121-gimp_image_get_active_drawable
	.cfi_endproc

	.globl	gimp_image_get_active_layer
	.align	16, 0x90
	.type	gimp_image_get_active_layer,@function
gimp_image_get_active_layer:            # @gimp_image_get_active_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp368:
	.cfi_def_cfa_offset 16
.Ltmp369:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp370:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB122_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB122_8
.LBB122_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB122_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB122_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB122_7
.LBB122_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB122_7:                              # %if.end
	jmp	.LBB122_8
.LBB122_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB122_10
# BB#9:                                 # %if.then.8
	jmp	.LBB122_11
.LBB122_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_active_layer, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB122_13
.LBB122_11:                             # %if.end.10
	jmp	.LBB122_12
.LBB122_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gimp_item_tree_get_active_item
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB122_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	gimp_image_get_active_layer, .Lfunc_end122-gimp_image_get_active_layer
	.cfi_endproc

	.globl	gimp_image_get_active_channel
	.align	16, 0x90
	.type	gimp_image_get_active_channel,@function
gimp_image_get_active_channel:          # @gimp_image_get_active_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp371:
	.cfi_def_cfa_offset 16
.Ltmp372:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp373:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB123_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB123_8
.LBB123_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB123_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB123_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB123_7
.LBB123_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB123_7:                              # %if.end
	jmp	.LBB123_8
.LBB123_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB123_10
# BB#9:                                 # %if.then.8
	jmp	.LBB123_11
.LBB123_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_active_channel, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB123_13
.LBB123_11:                             # %if.end.10
	jmp	.LBB123_12
.LBB123_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gimp_item_tree_get_active_item
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB123_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	gimp_image_get_active_channel, .Lfunc_end123-gimp_image_get_active_channel
	.cfi_endproc

	.globl	gimp_image_get_active_vectors
	.align	16, 0x90
	.type	gimp_image_get_active_vectors,@function
gimp_image_get_active_vectors:          # @gimp_image_get_active_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp374:
	.cfi_def_cfa_offset 16
.Ltmp375:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp376:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB124_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB124_8
.LBB124_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB124_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB124_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB124_7
.LBB124_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB124_7:                              # %if.end
	jmp	.LBB124_8
.LBB124_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB124_10
# BB#9:                                 # %if.then.8
	jmp	.LBB124_11
.LBB124_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_active_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB124_13
.LBB124_11:                             # %if.end.10
	jmp	.LBB124_12
.LBB124_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gimp_item_tree_get_active_item
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB124_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	gimp_image_get_active_vectors, .Lfunc_end124-gimp_image_get_active_vectors
	.cfi_endproc

	.globl	gimp_image_set_active_layer
	.align	16, 0x90
	.type	gimp_image_set_active_layer,@function
gimp_image_set_active_layer:            # @gimp_image_set_active_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp377:
	.cfi_def_cfa_offset 16
.Ltmp378:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp379:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB125_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB125_8
.LBB125_3:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB125_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB125_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB125_7
.LBB125_6:                              # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB125_7:                              # %if.end
	jmp	.LBB125_8
.LBB125_8:                              # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB125_10
# BB#9:                                 # %if.then.8
	jmp	.LBB125_11
.LBB125_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_layer, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB125_40
.LBB125_11:                             # %if.end.10
	jmp	.LBB125_12
.LBB125_12:                             # %do.end
	jmp	.LBB125_13
.LBB125_13:                             # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB125_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB125_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB125_21
.LBB125_16:                             # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB125_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB125_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB125_20
.LBB125_19:                             # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB125_20:                             # %if.end.32
	jmp	.LBB125_21
.LBB125_21:                             # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB125_23
.LBB125_22:                             # %if.then.36
	jmp	.LBB125_24
.LBB125_23:                             # %if.else.37
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_layer, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB125_40
.LBB125_24:                             # %if.end.38
	jmp	.LBB125_25
.LBB125_25:                             # %do.end.39
	jmp	.LBB125_26
.LBB125_26:                             # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB125_29
# BB#27:                                # %lor.lhs.false.42
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB125_30
# BB#28:                                # %land.lhs.true.47
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB125_30
.LBB125_29:                             # %if.then.52
	jmp	.LBB125_31
.LBB125_30:                             # %if.else.53
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_layer, %rsi
	movabsq	$.L.str.44, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB125_40
.LBB125_31:                             # %if.end.54
	jmp	.LBB125_32
.LBB125_32:                             # %do.end.55
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB125_35
# BB#33:                                # %land.lhs.true.60
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB125_35
# BB#34:                                # %if.then.62
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB125_40
.LBB125_35:                             # %if.end.63
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB125_39
# BB#36:                                # %if.then.66
	cmpq	$0, -48(%rbp)
	je	.LBB125_38
# BB#37:                                # %if.then.68
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB125_38:                             # %if.end.71
	movq	-32(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_tree_set_active_item
.LBB125_39:                             # %if.end.74
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -8(%rbp)
.LBB125_40:                             # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	gimp_image_set_active_layer, .Lfunc_end125-gimp_image_set_active_layer
	.cfi_endproc

	.globl	gimp_image_set_active_channel
	.align	16, 0x90
	.type	gimp_image_set_active_channel,@function
gimp_image_set_active_channel:          # @gimp_image_set_active_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp380:
	.cfi_def_cfa_offset 16
.Ltmp381:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp382:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB126_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB126_8
.LBB126_3:                              # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB126_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB126_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB126_7
.LBB126_6:                              # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB126_7:                              # %if.end
	jmp	.LBB126_8
.LBB126_8:                              # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB126_10
# BB#9:                                 # %if.then.8
	jmp	.LBB126_11
.LBB126_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_channel, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB126_38
.LBB126_11:                             # %if.end.10
	jmp	.LBB126_12
.LBB126_12:                             # %do.end
	jmp	.LBB126_13
.LBB126_13:                             # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB126_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB126_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB126_21
.LBB126_16:                             # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB126_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB126_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB126_20
.LBB126_19:                             # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB126_20:                             # %if.end.32
	jmp	.LBB126_21
.LBB126_21:                             # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB126_23
.LBB126_22:                             # %if.then.36
	jmp	.LBB126_24
.LBB126_23:                             # %if.else.37
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_channel, %rsi
	movabsq	$.L.str.45, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB126_38
.LBB126_24:                             # %if.end.38
	jmp	.LBB126_25
.LBB126_25:                             # %do.end.39
	jmp	.LBB126_26
.LBB126_26:                             # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB126_29
# BB#27:                                # %lor.lhs.false.42
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB126_30
# BB#28:                                # %land.lhs.true.47
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB126_30
.LBB126_29:                             # %if.then.52
	jmp	.LBB126_31
.LBB126_30:                             # %if.else.53
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_channel, %rsi
	movabsq	$.L.str.46, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB126_38
.LBB126_31:                             # %if.end.54
	jmp	.LBB126_32
.LBB126_32:                             # %do.end.55
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB126_35
# BB#33:                                # %land.lhs.true.59
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB126_35
# BB#34:                                # %if.then.62
	movq	$0, -8(%rbp)
	jmp	.LBB126_38
.LBB126_35:                             # %if.end.63
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_channel
	movq	-112(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB126_37
# BB#36:                                # %if.then.66
	movq	-32(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_tree_set_active_item
.LBB126_37:                             # %if.end.69
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -8(%rbp)
.LBB126_38:                             # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	gimp_image_set_active_channel, .Lfunc_end126-gimp_image_set_active_channel
	.cfi_endproc

	.globl	gimp_image_set_active_vectors
	.align	16, 0x90
	.type	gimp_image_set_active_vectors,@function
gimp_image_set_active_vectors:          # @gimp_image_set_active_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp383:
	.cfi_def_cfa_offset 16
.Ltmp384:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp385:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB127_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB127_8
.LBB127_3:                              # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB127_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB127_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB127_7
.LBB127_6:                              # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB127_7:                              # %if.end
	jmp	.LBB127_8
.LBB127_8:                              # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB127_10
# BB#9:                                 # %if.then.8
	jmp	.LBB127_11
.LBB127_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB127_35
.LBB127_11:                             # %if.end.10
	jmp	.LBB127_12
.LBB127_12:                             # %do.end
	jmp	.LBB127_13
.LBB127_13:                             # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB127_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB127_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB127_21
.LBB127_16:                             # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB127_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB127_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB127_20
.LBB127_19:                             # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB127_20:                             # %if.end.32
	jmp	.LBB127_21
.LBB127_21:                             # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB127_23
.LBB127_22:                             # %if.then.36
	jmp	.LBB127_24
.LBB127_23:                             # %if.else.37
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_vectors, %rsi
	movabsq	$.L.str.47, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB127_35
.LBB127_24:                             # %if.end.38
	jmp	.LBB127_25
.LBB127_25:                             # %do.end.39
	jmp	.LBB127_26
.LBB127_26:                             # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB127_29
# BB#27:                                # %lor.lhs.false.42
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB127_30
# BB#28:                                # %land.lhs.true.47
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB127_30
.LBB127_29:                             # %if.then.52
	jmp	.LBB127_31
.LBB127_30:                             # %if.else.53
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_set_active_vectors, %rsi
	movabsq	$.L.str.48, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB127_35
.LBB127_31:                             # %if.end.54
	jmp	.LBB127_32
.LBB127_32:                             # %do.end.55
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_vectors
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB127_34
# BB#33:                                # %if.then.60
	movq	-32(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_tree_set_active_item
.LBB127_34:                             # %if.end.64
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -8(%rbp)
.LBB127_35:                             # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	gimp_image_set_active_vectors, .Lfunc_end127-gimp_image_set_active_vectors
	.cfi_endproc

	.globl	gimp_image_get_layer_by_tattoo
	.align	16, 0x90
	.type	gimp_image_get_layer_by_tattoo,@function
gimp_image_get_layer_by_tattoo:         # @gimp_image_get_layer_by_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp386:
	.cfi_def_cfa_offset 16
.Ltmp387:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp388:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB128_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB128_8
.LBB128_3:                              # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB128_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB128_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB128_7
.LBB128_6:                              # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB128_7:                              # %if.end
	jmp	.LBB128_8
.LBB128_8:                              # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB128_10
# BB#9:                                 # %if.then.8
	jmp	.LBB128_11
.LBB128_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_layer_by_tattoo, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB128_13
.LBB128_11:                             # %if.end.10
	jmp	.LBB128_12
.LBB128_12:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_item_stack_get_item_by_tattoo
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB128_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	gimp_image_get_layer_by_tattoo, .Lfunc_end128-gimp_image_get_layer_by_tattoo
	.cfi_endproc

	.globl	gimp_image_get_layer_by_name
	.align	16, 0x90
	.type	gimp_image_get_layer_by_name,@function
gimp_image_get_layer_by_name:           # @gimp_image_get_layer_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp389:
	.cfi_def_cfa_offset 16
.Ltmp390:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp391:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB129_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB129_8
.LBB129_3:                              # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB129_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB129_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB129_7
.LBB129_6:                              # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB129_7:                              # %if.end
	jmp	.LBB129_8
.LBB129_8:                              # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB129_10
# BB#9:                                 # %if.then.8
	jmp	.LBB129_11
.LBB129_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_layer_by_name, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB129_18
.LBB129_11:                             # %if.end.10
	jmp	.LBB129_12
.LBB129_12:                             # %do.end
	jmp	.LBB129_13
.LBB129_13:                             # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB129_15
# BB#14:                                # %if.then.13
	jmp	.LBB129_16
.LBB129_15:                             # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_layer_by_name, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB129_18
.LBB129_16:                             # %if.end.15
	jmp	.LBB129_17
.LBB129_17:                             # %do.end.16
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_tree
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_item_tree_get_item_by_name
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB129_18:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	gimp_image_get_layer_by_name, .Lfunc_end129-gimp_image_get_layer_by_name
	.cfi_endproc

	.globl	gimp_image_get_channel_by_name
	.align	16, 0x90
	.type	gimp_image_get_channel_by_name,@function
gimp_image_get_channel_by_name:         # @gimp_image_get_channel_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp392:
	.cfi_def_cfa_offset 16
.Ltmp393:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp394:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB130_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB130_8
.LBB130_3:                              # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB130_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB130_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB130_7
.LBB130_6:                              # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB130_7:                              # %if.end
	jmp	.LBB130_8
.LBB130_8:                              # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB130_10
# BB#9:                                 # %if.then.8
	jmp	.LBB130_11
.LBB130_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_channel_by_name, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB130_18
.LBB130_11:                             # %if.end.10
	jmp	.LBB130_12
.LBB130_12:                             # %do.end
	jmp	.LBB130_13
.LBB130_13:                             # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB130_15
# BB#14:                                # %if.then.13
	jmp	.LBB130_16
.LBB130_15:                             # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_channel_by_name, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB130_18
.LBB130_16:                             # %if.end.15
	jmp	.LBB130_17
.LBB130_17:                             # %do.end.16
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channel_tree
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_item_tree_get_item_by_name
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB130_18:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end130:
	.size	gimp_image_get_channel_by_name, .Lfunc_end130-gimp_image_get_channel_by_name
	.cfi_endproc

	.globl	gimp_image_get_vectors_by_name
	.align	16, 0x90
	.type	gimp_image_get_vectors_by_name,@function
gimp_image_get_vectors_by_name:         # @gimp_image_get_vectors_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp395:
	.cfi_def_cfa_offset 16
.Ltmp396:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp397:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB131_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB131_8
.LBB131_3:                              # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB131_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB131_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB131_7
.LBB131_6:                              # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB131_7:                              # %if.end
	jmp	.LBB131_8
.LBB131_8:                              # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB131_10
# BB#9:                                 # %if.then.8
	jmp	.LBB131_11
.LBB131_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_vectors_by_name, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB131_18
.LBB131_11:                             # %if.end.10
	jmp	.LBB131_12
.LBB131_12:                             # %do.end
	jmp	.LBB131_13
.LBB131_13:                             # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB131_15
# BB#14:                                # %if.then.13
	jmp	.LBB131_16
.LBB131_15:                             # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_get_vectors_by_name, %rsi
	movabsq	$.L.str.40, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB131_18
.LBB131_16:                             # %if.end.15
	jmp	.LBB131_17
.LBB131_17:                             # %do.end.16
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors_tree
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_item_tree_get_item_by_name
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB131_18:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end131:
	.size	gimp_image_get_vectors_by_name, .Lfunc_end131-gimp_image_get_vectors_by_name
	.cfi_endproc

	.globl	gimp_image_reorder_item
	.align	16, 0x90
	.type	gimp_image_reorder_item,@function
gimp_image_reorder_item:                # @gimp_image_reorder_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp398:
	.cfi_def_cfa_offset 16
.Ltmp399:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp400:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB132_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB132_8
.LBB132_3:                              # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB132_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB132_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB132_7
.LBB132_6:                              # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB132_7:                              # %if.end
	jmp	.LBB132_8
.LBB132_8:                              # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB132_10
# BB#9:                                 # %if.then.8
	jmp	.LBB132_11
.LBB132_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_reorder_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB132_38
.LBB132_11:                             # %if.end.10
	jmp	.LBB132_12
.LBB132_12:                             # %do.end
	jmp	.LBB132_13
.LBB132_13:                             # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB132_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB132_20
.LBB132_15:                             # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB132_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB132_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB132_19
.LBB132_18:                             # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB132_19:                             # %if.end.31
	jmp	.LBB132_20
.LBB132_20:                             # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB132_22
# BB#21:                                # %if.then.35
	jmp	.LBB132_23
.LBB132_22:                             # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_reorder_item, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB132_38
.LBB132_23:                             # %if.end.37
	jmp	.LBB132_24
.LBB132_24:                             # %do.end.38
	jmp	.LBB132_25
.LBB132_25:                             # %do.body.39
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB132_27
# BB#26:                                # %if.then.42
	jmp	.LBB132_28
.LBB132_27:                             # %if.else.43
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_reorder_item, %rsi
	movabsq	$.L.str.50, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB132_38
.LBB132_28:                             # %if.end.44
	jmp	.LBB132_29
.LBB132_29:                             # %do.end.45
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_tree
	movq	%rax, -56(%rbp)
# BB#30:                                # %do.body.47
	cmpq	$0, -56(%rbp)
	je	.LBB132_32
# BB#31:                                # %if.then.49
	jmp	.LBB132_33
.LBB132_32:                             # %if.else.50
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_reorder_item, %rsi
	movabsq	$.L.str.51, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB132_38
.LBB132_33:                             # %if.end.51
	jmp	.LBB132_34
.LBB132_34:                             # %do.end.52
	cmpl	$0, -40(%rbp)
	je	.LBB132_37
# BB#35:                                # %land.lhs.true.54
	cmpq	$0, -48(%rbp)
	jne	.LBB132_37
# BB#36:                                # %if.then.56
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	520(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB132_37:                             # %if.end.58
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-48(%rbp), %r9
	callq	gimp_item_tree_reorder_item
	movl	%eax, -4(%rbp)
.LBB132_38:                             # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end132:
	.size	gimp_image_reorder_item, .Lfunc_end132-gimp_image_reorder_item
	.cfi_endproc

	.globl	gimp_image_raise_item
	.align	16, 0x90
	.type	gimp_image_raise_item,@function
gimp_image_raise_item:                  # @gimp_image_raise_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp401:
	.cfi_def_cfa_offset 16
.Ltmp402:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp403:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB133_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB133_8
.LBB133_3:                              # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB133_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB133_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB133_7
.LBB133_6:                              # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB133_7:                              # %if.end
	jmp	.LBB133_8
.LBB133_8:                              # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB133_10
# BB#9:                                 # %if.then.8
	jmp	.LBB133_11
.LBB133_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_raise_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB133_38
.LBB133_11:                             # %if.end.10
	jmp	.LBB133_12
.LBB133_12:                             # %do.end
	jmp	.LBB133_13
.LBB133_13:                             # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB133_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB133_20
.LBB133_15:                             # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB133_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB133_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB133_19
.LBB133_18:                             # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB133_19:                             # %if.end.31
	jmp	.LBB133_20
.LBB133_20:                             # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB133_22
# BB#21:                                # %if.then.35
	jmp	.LBB133_23
.LBB133_22:                             # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_raise_item, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB133_38
.LBB133_23:                             # %if.end.37
	jmp	.LBB133_24
.LBB133_24:                             # %do.end.38
	jmp	.LBB133_25
.LBB133_25:                             # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB133_27
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB133_28
.LBB133_27:                             # %if.then.42
	jmp	.LBB133_29
.LBB133_28:                             # %if.else.43
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_raise_item, %rsi
	movabsq	$.L.str.52, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB133_38
.LBB133_29:                             # %if.end.44
	jmp	.LBB133_30
.LBB133_30:                             # %do.end.45
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_index
	movl	%eax, -36(%rbp)
# BB#31:                                # %do.body.47
	cmpl	$-1, -36(%rbp)
	je	.LBB133_33
# BB#32:                                # %if.then.49
	jmp	.LBB133_34
.LBB133_33:                             # %if.else.50
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_raise_item, %rsi
	movabsq	$.L.str.53, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB133_38
.LBB133_34:                             # %if.end.51
	jmp	.LBB133_35
.LBB133_35:                             # %do.end.52
	cmpl	$0, -36(%rbp)
	jne	.LBB133_37
# BB#36:                                # %if.then.54
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	560(%rdi), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB133_38
.LBB133_37:                             # %if.end.57
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_parent
	movl	$1, %r8d
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	528(%rsi), %r9
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_reorder_item
	movl	%eax, -4(%rbp)
.LBB133_38:                             # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	gimp_image_raise_item, .Lfunc_end133-gimp_image_raise_item
	.cfi_endproc

	.globl	gimp_image_raise_item_to_top
	.align	16, 0x90
	.type	gimp_image_raise_item_to_top,@function
gimp_image_raise_item_to_top:           # @gimp_image_raise_item_to_top
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp404:
	.cfi_def_cfa_offset 16
.Ltmp405:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp406:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB134_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB134_8
.LBB134_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB134_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB134_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB134_7
.LBB134_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB134_7:                              # %if.end
	jmp	.LBB134_8
.LBB134_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB134_10
# BB#9:                                 # %if.then.8
	jmp	.LBB134_11
.LBB134_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_raise_item_to_top, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB134_25
.LBB134_11:                             # %if.end.10
	jmp	.LBB134_12
.LBB134_12:                             # %do.end
	jmp	.LBB134_13
.LBB134_13:                             # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB134_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB134_20
.LBB134_15:                             # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB134_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB134_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB134_19
.LBB134_18:                             # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB134_19:                             # %if.end.31
	jmp	.LBB134_20
.LBB134_20:                             # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB134_22
# BB#21:                                # %if.then.35
	jmp	.LBB134_23
.LBB134_22:                             # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_raise_item_to_top, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB134_25
.LBB134_23:                             # %if.end.37
	jmp	.LBB134_24
.LBB134_24:                             # %do.end.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_parent
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	536(%rsi), %r9
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_reorder_item
	movl	%eax, -4(%rbp)
.LBB134_25:                             # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	gimp_image_raise_item_to_top, .Lfunc_end134-gimp_image_raise_item_to_top
	.cfi_endproc

	.globl	gimp_image_lower_item
	.align	16, 0x90
	.type	gimp_image_lower_item,@function
gimp_image_lower_item:                  # @gimp_image_lower_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp407:
	.cfi_def_cfa_offset 16
.Ltmp408:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp409:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB135_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB135_8
.LBB135_3:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB135_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB135_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB135_7
.LBB135_6:                              # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB135_7:                              # %if.end
	jmp	.LBB135_8
.LBB135_8:                              # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB135_10
# BB#9:                                 # %if.then.8
	jmp	.LBB135_11
.LBB135_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_lower_item, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB135_38
.LBB135_11:                             # %if.end.10
	jmp	.LBB135_12
.LBB135_12:                             # %do.end
	jmp	.LBB135_13
.LBB135_13:                             # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB135_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB135_20
.LBB135_15:                             # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB135_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB135_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB135_19
.LBB135_18:                             # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB135_19:                             # %if.end.31
	jmp	.LBB135_20
.LBB135_20:                             # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB135_22
# BB#21:                                # %if.then.35
	jmp	.LBB135_23
.LBB135_22:                             # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_lower_item, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB135_38
.LBB135_23:                             # %if.end.37
	jmp	.LBB135_24
.LBB135_24:                             # %do.end.38
	jmp	.LBB135_25
.LBB135_25:                             # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB135_27
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB135_28
.LBB135_27:                             # %if.then.42
	jmp	.LBB135_29
.LBB135_28:                             # %if.else.43
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_lower_item, %rsi
	movabsq	$.L.str.52, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB135_38
.LBB135_29:                             # %if.end.44
	jmp	.LBB135_30
.LBB135_30:                             # %do.end.45
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_container
	movq	%rax, -40(%rbp)
# BB#31:                                # %do.body.47
	cmpq	$0, -40(%rbp)
	je	.LBB135_33
# BB#32:                                # %if.then.49
	jmp	.LBB135_34
.LBB135_33:                             # %if.else.50
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_lower_item, %rsi
	movabsq	$.L.str.54, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB135_38
.LBB135_34:                             # %if.end.51
	jmp	.LBB135_35
.LBB135_35:                             # %do.end.52
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_index
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB135_37
# BB#36:                                # %if.then.56
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	568(%rdi), %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB135_38
.LBB135_37:                             # %if.end.59
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_parent
	movl	$1, %r8d
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	544(%rsi), %r9
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_reorder_item
	movl	%eax, -4(%rbp)
.LBB135_38:                             # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end135:
	.size	gimp_image_lower_item, .Lfunc_end135-gimp_image_lower_item
	.cfi_endproc

	.globl	gimp_image_lower_item_to_bottom
	.align	16, 0x90
	.type	gimp_image_lower_item_to_bottom,@function
gimp_image_lower_item_to_bottom:        # @gimp_image_lower_item_to_bottom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp410:
	.cfi_def_cfa_offset 16
.Ltmp411:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp412:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB136_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB136_8
.LBB136_3:                              # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB136_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB136_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB136_7
.LBB136_6:                              # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB136_7:                              # %if.end
	jmp	.LBB136_8
.LBB136_8:                              # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB136_10
# BB#9:                                 # %if.then.8
	jmp	.LBB136_11
.LBB136_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_lower_item_to_bottom, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB136_30
.LBB136_11:                             # %if.end.10
	jmp	.LBB136_12
.LBB136_12:                             # %do.end
	jmp	.LBB136_13
.LBB136_13:                             # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB136_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB136_20
.LBB136_15:                             # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB136_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB136_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB136_19
.LBB136_18:                             # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB136_19:                             # %if.end.31
	jmp	.LBB136_20
.LBB136_20:                             # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB136_22
# BB#21:                                # %if.then.35
	jmp	.LBB136_23
.LBB136_22:                             # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_lower_item_to_bottom, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB136_30
.LBB136_23:                             # %if.end.37
	jmp	.LBB136_24
.LBB136_24:                             # %do.end.38
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_container
	movq	%rax, -32(%rbp)
# BB#25:                                # %do.body.40
	cmpq	$0, -32(%rbp)
	je	.LBB136_27
# BB#26:                                # %if.then.42
	jmp	.LBB136_28
.LBB136_27:                             # %if.else.43
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_lower_item_to_bottom, %rsi
	movabsq	$.L.str.54, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB136_30
.LBB136_28:                             # %if.end.44
	jmp	.LBB136_29
.LBB136_29:                             # %do.end.45
	movq	-32(%rbp), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_parent
	movl	$1, %r8d
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	552(%rcx), %r9
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	callq	gimp_image_reorder_item
	movl	%eax, -4(%rbp)
.LBB136_30:                             # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	gimp_image_lower_item_to_bottom, .Lfunc_end136-gimp_image_lower_item_to_bottom
	.cfi_endproc

	.globl	gimp_image_add_layer
	.align	16, 0x90
	.type	gimp_image_add_layer,@function
gimp_image_add_layer:                   # @gimp_image_add_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp413:
	.cfi_def_cfa_offset 16
.Ltmp414:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp415:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB137_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB137_8
.LBB137_3:                              # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB137_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB137_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB137_7
.LBB137_6:                              # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB137_7:                              # %if.end
	jmp	.LBB137_8
.LBB137_8:                              # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB137_10
# BB#9:                                 # %if.then.8
	jmp	.LBB137_11
.LBB137_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_add_layer, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB137_25
.LBB137_11:                             # %if.end.10
	jmp	.LBB137_12
.LBB137_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-36(%rbp), %rcx
	leaq	-32(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	gimp_item_tree_get_insert_pos
	cmpl	$0, %eax
	jne	.LBB137_14
# BB#13:                                # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB137_25
.LBB137_14:                             # %if.end.16
	cmpq	$0, -32(%rbp)
	jne	.LBB137_18
# BB#15:                                # %land.lhs.true.18
	cmpl	$0, -36(%rbp)
	jne	.LBB137_18
# BB#16:                                # %land.lhs.true.20
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB137_18
# BB#17:                                # %if.then.23
	movl	$1, -36(%rbp)
.LBB137_18:                             # %if.end.24
	movq	-16(%rbp), %rdi
	callq	gimp_image_has_alpha
	movl	%eax, -52(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB137_20
# BB#19:                                # %if.then.27
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.55, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_layer
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_image_undo_push_layer_add
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB137_20:                             # %if.end.31
	movq	-48(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %ecx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_add_item
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_set_active_layer
	movq	-24(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB137_22
# BB#21:                                # %if.then.40
	movq	-24(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_attach_floating_sel
.LBB137_22:                             # %if.end.42
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_image_has_alpha
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB137_24
# BB#23:                                # %if.then.45
	movq	-48(%rbp), %rax
	movl	$1, 352(%rax)
.LBB137_24:                             # %if.end.46
	movl	$1, -4(%rbp)
.LBB137_25:                             # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	gimp_image_add_layer, .Lfunc_end137-gimp_image_add_layer
	.cfi_endproc

	.globl	gimp_image_remove_layer
	.align	16, 0x90
	.type	gimp_image_remove_layer,@function
gimp_image_remove_layer:                # @gimp_image_remove_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp416:
	.cfi_def_cfa_offset 16
.Ltmp417:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp418:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB138_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB138_8
.LBB138_3:                              # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB138_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB138_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB138_7
.LBB138_6:                              # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB138_7:                              # %if.end
	jmp	.LBB138_8
.LBB138_8:                              # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB138_10
# BB#9:                                 # %if.then.8
	jmp	.LBB138_11
.LBB138_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_layer, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB138_65
.LBB138_11:                             # %if.end.10
	jmp	.LBB138_12
.LBB138_12:                             # %do.end
	jmp	.LBB138_13
.LBB138_13:                             # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB138_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB138_20
.LBB138_15:                             # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB138_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB138_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB138_19
.LBB138_18:                             # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB138_19:                             # %if.end.31
	jmp	.LBB138_20
.LBB138_20:                             # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB138_22
# BB#21:                                # %if.then.35
	jmp	.LBB138_23
.LBB138_22:                             # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_layer, %rsi
	movabsq	$.L.str.56, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB138_65
.LBB138_23:                             # %if.end.37
	jmp	.LBB138_24
.LBB138_24:                             # %do.end.38
	jmp	.LBB138_25
.LBB138_25:                             # %do.body.39
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB138_27
# BB#26:                                # %if.then.44
	jmp	.LBB138_28
.LBB138_27:                             # %if.else.45
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_layer, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB138_65
.LBB138_28:                             # %if.end.46
	jmp	.LBB138_29
.LBB138_29:                             # %do.end.47
	jmp	.LBB138_30
.LBB138_30:                             # %do.body.48
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-8(%rbp), %rax
	jne	.LBB138_32
# BB#31:                                # %if.then.53
	jmp	.LBB138_33
.LBB138_32:                             # %if.else.54
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_layer, %rsi
	movabsq	$.L.str.58, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB138_65
.LBB138_33:                             # %if.end.55
	jmp	.LBB138_34
.LBB138_34:                             # %do.end.56
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_floating_sel
	cmpq	$0, %rax
	je	.LBB138_38
# BB#35:                                # %if.then.63
	cmpl	$0, -20(%rbp)
	jne	.LBB138_37
# BB#36:                                # %if.then.65
	movabsq	$.L.str.59, %rdi
	movabsq	$.L__func__.gimp_image_remove_layer, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB138_65
.LBB138_37:                             # %if.end.66
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.60, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$7, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	$1, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_floating_sel
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_layer
.LBB138_38:                             # %if.end.72
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_has_alpha
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB138_40
# BB#39:                                # %if.then.77
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.61, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, %rdi
	callq	gimp_drawable_detach_floating_sel
	jmp	.LBB138_41
.LBB138_40:                             # %if.else.80
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.60, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -64(%rbp)
.LBB138_41:                             # %if.end.82
	cmpl	$0, -20(%rbp)
	je	.LBB138_43
# BB#42:                                # %if.then.84
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_parent
	movq	-16(%rbp), %rdx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_index
	movq	-48(%rbp), %r9
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_undo_push_layer_remove
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB138_43:                             # %if.end.90
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	cmpq	-48(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB138_45
# BB#44:                                # %if.then.93
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB138_45:                             # %if.end.96
	movq	-40(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-40(%rbp), %rsi
	movq	%rax, 200(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB138_54
# BB#46:                                # %if.then.103
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_list
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB138_47:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB138_53
# BB#48:                                # %for.body
                                        #   in Loop: Header=BB138_47 Depth=1
	movq	-40(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_slist_remove
	movq	-40(%rbp), %rsi
	movq	%rax, 200(%rsi)
# BB#49:                                # %for.inc
                                        #   in Loop: Header=BB138_47 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB138_51
# BB#50:                                # %cond.true
                                        #   in Loop: Header=BB138_47 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB138_52
.LBB138_51:                             # %cond.false
                                        #   in Loop: Header=BB138_47 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB138_52
.LBB138_52:                             # %cond.end
                                        #   in Loop: Header=BB138_47 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	jmp	.LBB138_47
.LBB138_53:                             # %for.end
	movq	-128(%rbp), %rdi
	callq	g_list_free
.LBB138_54:                             # %if.end.118
	movq	-40(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_remove_item
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB138_56
# BB#55:                                # %if.then.128
	movq	-16(%rbp), %rdi
	callq	floating_sel_activate_drawable
	jmp	.LBB138_61
.LBB138_56:                             # %if.else.129
	cmpq	$0, -48(%rbp)
	je	.LBB138_60
# BB#57:                                # %land.lhs.true.131
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB138_59
# BB#58:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_is_ancestor
	cmpl	$0, %eax
	je	.LBB138_60
.LBB138_59:                             # %if.then.139
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB138_60:                             # %if.end.141
	jmp	.LBB138_61
.LBB138_61:                             # %if.end.142
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	callq	gimp_image_has_alpha
	movl	-372(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB138_63
# BB#62:                                # %if.then.145
	movq	-40(%rbp), %rax
	movl	$1, 352(%rax)
.LBB138_63:                             # %if.end.146
	cmpl	$0, -56(%rbp)
	je	.LBB138_65
# BB#64:                                # %if.then.148
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB138_65:                             # %if.end.150
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end138:
	.size	gimp_image_remove_layer, .Lfunc_end138-gimp_image_remove_layer
	.cfi_endproc

	.globl	gimp_image_add_layers
	.align	16, 0x90
	.type	gimp_image_add_layers,@function
gimp_image_add_layers:                  # @gimp_image_add_layers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp419:
	.cfi_def_cfa_offset 16
.Ltmp420:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp421:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r11d, -40(%rbp)
	movl	%r10d, -44(%rbp)
	movq	%rax, -56(%rbp)
	movl	$2147483647, -76(%rbp)  # imm = 0x7FFFFFFF
	movl	$2147483647, -80(%rbp)  # imm = 0x7FFFFFFF
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB139_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB139_8
.LBB139_3:                              # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB139_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB139_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB139_7
.LBB139_6:                              # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB139_7:                              # %if.end
	jmp	.LBB139_8
.LBB139_8:                              # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB139_10
# BB#9:                                 # %if.then.8
	jmp	.LBB139_11
.LBB139_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_add_layers, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB139_48
.LBB139_11:                             # %if.end.10
	jmp	.LBB139_12
.LBB139_12:                             # %do.end
	jmp	.LBB139_13
.LBB139_13:                             # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB139_15
# BB#14:                                # %if.then.13
	jmp	.LBB139_16
.LBB139_15:                             # %if.else.14
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_add_layers, %rsi
	movabsq	$.L.str.62, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB139_48
.LBB139_16:                             # %if.end.15
	jmp	.LBB139_17
.LBB139_17:                             # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-28(%rbp), %rcx
	leaq	-24(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	gimp_item_tree_get_insert_pos
	cmpl	$0, %eax
	jne	.LBB139_19
# BB#18:                                # %if.then.22
	jmp	.LBB139_48
.LBB139_19:                             # %if.end.23
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB139_20:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB139_38
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB139_20 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-76(%rbp), %ecx
	cmpl	-132(%rbp), %ecx
	jge	.LBB139_23
# BB#22:                                # %cond.true
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB139_24
.LBB139_23:                             # %cond.false
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB139_24:                             # %cond.end
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jge	.LBB139_26
# BB#25:                                # %cond.true.33
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB139_27
.LBB139_26:                             # %cond.false.34
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-136(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB139_27:                             # %cond.end.35
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	-84(%rbp), %eax
	movl	-132(%rbp), %ecx
	movq	-128(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-184(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	-76(%rbp), %ecx
	movl	-180(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB139_29
# BB#28:                                # %cond.true.39
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB139_30
.LBB139_29:                             # %cond.false.40
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-132(%rbp), %eax
	movq	-128(%rbp), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-192(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	-76(%rbp), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
.LBB139_30:                             # %cond.end.44
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	movl	-136(%rbp), %ecx
	movq	-128(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-200(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	-80(%rbp), %ecx
	movl	-196(%rbp), %eax        # 4-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB139_32
# BB#31:                                # %cond.true.50
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB139_33
.LBB139_32:                             # %cond.false.51
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-136(%rbp), %eax
	movq	-128(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-208(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	-80(%rbp), %ecx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
.LBB139_33:                             # %cond.end.55
                                        #   in Loop: Header=BB139_20 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB139_20 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB139_36
# BB#35:                                # %cond.true.58
                                        #   in Loop: Header=BB139_20 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB139_37
.LBB139_36:                             # %cond.false.59
                                        #   in Loop: Header=BB139_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB139_37
.LBB139_37:                             # %cond.end.60
                                        #   in Loop: Header=BB139_20 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB139_20
.LBB139_38:                             # %for.end
	movl	$23, %esi
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	-40(%rbp), %edx
	subl	-84(%rbp), %edx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-220(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	addl	%eax, %ecx
	subl	-76(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	-88(%rbp), %ecx
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	-224(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	-80(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%r8, %rdx
	callq	gimp_image_undo_group_start
	movq	-16(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB139_39:                             # %for.cond.70
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB139_45
# BB#40:                                # %for.body.72
                                        #   in Loop: Header=BB139_39 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	gimp_item_translate
	movq	-8(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_add_layer
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
# BB#41:                                # %for.inc.80
                                        #   in Loop: Header=BB139_39 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB139_43
# BB#42:                                # %cond.true.82
                                        #   in Loop: Header=BB139_39 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB139_44
.LBB139_43:                             # %cond.false.84
                                        #   in Loop: Header=BB139_39 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB139_44
.LBB139_44:                             # %cond.end.85
                                        #   in Loop: Header=BB139_39 Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB139_39
.LBB139_45:                             # %for.end.87
	cmpq	$0, -16(%rbp)
	je	.LBB139_47
# BB#46:                                # %if.then.89
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB139_47:                             # %if.end.92
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB139_48:                             # %return
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end139:
	.size	gimp_image_add_layers, .Lfunc_end139-gimp_image_add_layers
	.cfi_endproc

	.globl	gimp_image_add_channel
	.align	16, 0x90
	.type	gimp_image_add_channel,@function
gimp_image_add_channel:                 # @gimp_image_add_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp422:
	.cfi_def_cfa_offset 16
.Ltmp423:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp424:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB140_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB140_8
.LBB140_3:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB140_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB140_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB140_7
.LBB140_6:                              # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB140_7:                              # %if.end
	jmp	.LBB140_8
.LBB140_8:                              # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB140_10
# BB#9:                                 # %if.then.8
	jmp	.LBB140_11
.LBB140_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_add_channel, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB140_17
.LBB140_11:                             # %if.end.10
	jmp	.LBB140_12
.LBB140_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-36(%rbp), %rcx
	leaq	-32(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	gimp_item_tree_get_insert_pos
	cmpl	$0, %eax
	jne	.LBB140_14
# BB#13:                                # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB140_17
.LBB140_14:                             # %if.end.16
	cmpl	$0, -40(%rbp)
	je	.LBB140_16
# BB#15:                                # %if.then.18
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.63, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_channel
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_image_undo_push_channel_add
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB140_16:                             # %if.end.22
	movq	-48(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_add_item
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_set_active_channel
	movl	$1, -4(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB140_17:                             # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	gimp_image_add_channel, .Lfunc_end140-gimp_image_add_channel
	.cfi_endproc

	.globl	gimp_image_remove_channel
	.align	16, 0x90
	.type	gimp_image_remove_channel,@function
gimp_image_remove_channel:              # @gimp_image_remove_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp425:
	.cfi_def_cfa_offset 16
.Ltmp426:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp427:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB141_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB141_8
.LBB141_3:                              # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB141_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB141_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB141_7
.LBB141_6:                              # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB141_7:                              # %if.end
	jmp	.LBB141_8
.LBB141_8:                              # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB141_10
# BB#9:                                 # %if.then.8
	jmp	.LBB141_11
.LBB141_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_channel, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB141_49
.LBB141_11:                             # %if.end.10
	jmp	.LBB141_12
.LBB141_12:                             # %do.end
	jmp	.LBB141_13
.LBB141_13:                             # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB141_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB141_20
.LBB141_15:                             # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB141_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB141_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB141_19
.LBB141_18:                             # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB141_19:                             # %if.end.31
	jmp	.LBB141_20
.LBB141_20:                             # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB141_22
# BB#21:                                # %if.then.35
	jmp	.LBB141_23
.LBB141_22:                             # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_channel, %rsi
	movabsq	$.L.str.64, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB141_49
.LBB141_23:                             # %if.end.37
	jmp	.LBB141_24
.LBB141_24:                             # %do.end.38
	jmp	.LBB141_25
.LBB141_25:                             # %do.body.39
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB141_27
# BB#26:                                # %if.then.44
	jmp	.LBB141_28
.LBB141_27:                             # %if.else.45
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_channel, %rsi
	movabsq	$.L.str.65, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB141_49
.LBB141_28:                             # %if.end.46
	jmp	.LBB141_29
.LBB141_29:                             # %do.end.47
	jmp	.LBB141_30
.LBB141_30:                             # %do.body.48
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-8(%rbp), %rax
	jne	.LBB141_32
# BB#31:                                # %if.then.53
	jmp	.LBB141_33
.LBB141_32:                             # %if.else.54
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_channel, %rsi
	movabsq	$.L.str.66, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB141_49
.LBB141_33:                             # %if.end.55
	jmp	.LBB141_34
.LBB141_34:                             # %do.end.56
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_floating_sel
	cmpq	$0, %rax
	je	.LBB141_38
# BB#35:                                # %if.then.61
	cmpl	$0, -20(%rbp)
	jne	.LBB141_37
# BB#36:                                # %if.then.63
	movabsq	$.L.str.67, %rdi
	movabsq	$.L__func__.gimp_image_remove_channel, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB141_49
.LBB141_37:                             # %if.end.64
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.68, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$7, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	$1, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_floating_sel
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_layer
.LBB141_38:                             # %if.end.70
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB141_40
# BB#39:                                # %if.then.75
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.68, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_parent
	movq	-16(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_index
	movq	-48(%rbp), %r9
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_undo_push_channel_remove
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB141_40:                             # %if.end.82
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_remove_item
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB141_47
# BB#41:                                # %land.lhs.true.92
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB141_43
# BB#42:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_is_ancestor
	cmpl	$0, %eax
	je	.LBB141_47
.LBB141_43:                             # %if.then.100
	cmpq	$0, -32(%rbp)
	je	.LBB141_45
# BB#44:                                # %if.then.102
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_set_active_channel
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB141_46
.LBB141_45:                             # %if.else.104
	movq	-8(%rbp), %rdi
	callq	gimp_image_unset_active_channel
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB141_46:                             # %if.end.106
	jmp	.LBB141_47
.LBB141_47:                             # %if.end.107
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpl	$0, -52(%rbp)
	je	.LBB141_49
# BB#48:                                # %if.then.109
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB141_49:                             # %if.end.111
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end141:
	.size	gimp_image_remove_channel, .Lfunc_end141-gimp_image_remove_channel
	.cfi_endproc

	.globl	gimp_image_add_vectors
	.align	16, 0x90
	.type	gimp_image_add_vectors,@function
gimp_image_add_vectors:                 # @gimp_image_add_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp428:
	.cfi_def_cfa_offset 16
.Ltmp429:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp430:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB142_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB142_8
.LBB142_3:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB142_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB142_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB142_7
.LBB142_6:                              # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB142_7:                              # %if.end
	jmp	.LBB142_8
.LBB142_8:                              # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB142_10
# BB#9:                                 # %if.then.8
	jmp	.LBB142_11
.LBB142_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_add_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB142_17
.LBB142_11:                             # %if.end.10
	jmp	.LBB142_12
.LBB142_12:                             # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-36(%rbp), %rcx
	leaq	-32(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	gimp_item_tree_get_insert_pos
	cmpl	$0, %eax
	jne	.LBB142_14
# BB#13:                                # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB142_17
.LBB142_14:                             # %if.end.17
	cmpl	$0, -40(%rbp)
	je	.LBB142_16
# BB#15:                                # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.69, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_get_active_vectors
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_image_undo_push_vectors_add
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB142_16:                             # %if.end.23
	movq	-48(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_add_item
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	movl	$1, -4(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB142_17:                             # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end142:
	.size	gimp_image_add_vectors, .Lfunc_end142-gimp_image_add_vectors
	.cfi_endproc

	.globl	gimp_image_remove_vectors
	.align	16, 0x90
	.type	gimp_image_remove_vectors,@function
gimp_image_remove_vectors:              # @gimp_image_remove_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp431:
	.cfi_def_cfa_offset 16
.Ltmp432:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp433:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB143_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB143_8
.LBB143_3:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB143_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB143_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB143_7
.LBB143_6:                              # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB143_7:                              # %if.end
	jmp	.LBB143_8
.LBB143_8:                              # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB143_10
# BB#9:                                 # %if.then.8
	jmp	.LBB143_11
.LBB143_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_vectors, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB143_41
.LBB143_11:                             # %if.end.10
	jmp	.LBB143_12
.LBB143_12:                             # %do.end
	jmp	.LBB143_13
.LBB143_13:                             # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB143_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB143_20
.LBB143_15:                             # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB143_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB143_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB143_19
.LBB143_18:                             # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB143_19:                             # %if.end.31
	jmp	.LBB143_20
.LBB143_20:                             # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB143_22
# BB#21:                                # %if.then.35
	jmp	.LBB143_23
.LBB143_22:                             # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_vectors, %rsi
	movabsq	$.L.str.70, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB143_41
.LBB143_23:                             # %if.end.37
	jmp	.LBB143_24
.LBB143_24:                             # %do.end.38
	jmp	.LBB143_25
.LBB143_25:                             # %do.body.39
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB143_27
# BB#26:                                # %if.then.44
	jmp	.LBB143_28
.LBB143_27:                             # %if.else.45
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_vectors, %rsi
	movabsq	$.L.str.71, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB143_41
.LBB143_28:                             # %if.end.46
	jmp	.LBB143_29
.LBB143_29:                             # %do.end.47
	jmp	.LBB143_30
.LBB143_30:                             # %do.body.48
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-8(%rbp), %rax
	jne	.LBB143_32
# BB#31:                                # %if.then.53
	jmp	.LBB143_33
.LBB143_32:                             # %if.else.54
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_remove_vectors, %rsi
	movabsq	$.L.str.72, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB143_41
.LBB143_33:                             # %if.end.55
	jmp	.LBB143_34
.LBB143_34:                             # %do.end.56
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB143_36
# BB#35:                                # %if.then.61
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.73, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_parent
	movq	-16(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_index
	movq	-48(%rbp), %r9
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_undo_push_vectors_remove
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB143_36:                             # %if.end.68
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_tree_remove_item
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB143_40
# BB#37:                                # %land.lhs.true.79
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB143_39
# BB#38:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_is_ancestor
	cmpl	$0, %eax
	je	.LBB143_40
.LBB143_39:                             # %if.then.87
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_set_active_vectors
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB143_40:                             # %if.end.89
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB143_41:                             # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end143:
	.size	gimp_image_remove_vectors, .Lfunc_end143-gimp_image_remove_vectors
	.cfi_endproc

	.globl	gimp_image_coords_in_active_pickable
	.align	16, 0x90
	.type	gimp_image_coords_in_active_pickable,@function
gimp_image_coords_in_active_pickable:   # @gimp_image_coords_in_active_pickable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp434:
	.cfi_def_cfa_offset 16
.Ltmp435:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp436:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB144_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB144_8
.LBB144_3:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB144_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB144_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB144_7
.LBB144_6:                              # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB144_7:                              # %if.end
	jmp	.LBB144_8
.LBB144_8:                              # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB144_10
# BB#9:                                 # %if.then.8
	jmp	.LBB144_11
.LBB144_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_coords_in_active_pickable, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB144_34
.LBB144_11:                             # %if.end.10
	jmp	.LBB144_12
.LBB144_12:                             # %do.end
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB144_19
# BB#13:                                # %if.then.17
	cmpl	$0, -36(%rbp)
	jl	.LBB144_18
# BB#14:                                # %land.lhs.true.20
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB144_18
# BB#15:                                # %land.lhs.true.24
	cmpl	$0, -40(%rbp)
	jl	.LBB144_18
# BB#16:                                # %land.lhs.true.27
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-120(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB144_18
# BB#17:                                # %if.then.31
	movl	$1, -44(%rbp)
.LBB144_18:                             # %if.end.32
	jmp	.LBB144_27
.LBB144_19:                             # %if.else.33
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB144_26
# BB#20:                                # %if.then.37
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_item_get_offset
	movl	-36(%rbp), %ecx
	subl	-92(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movl	-40(%rbp), %ecx
	subl	-96(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	cmpl	$0, -100(%rbp)
	jl	.LBB144_25
# BB#21:                                # %land.lhs.true.48
	movl	-100(%rbp), %eax
	movq	-88(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB144_25
# BB#22:                                # %land.lhs.true.52
	cmpl	$0, -104(%rbp)
	jl	.LBB144_25
# BB#23:                                # %land.lhs.true.55
	movl	-104(%rbp), %eax
	movq	-88(%rbp), %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-136(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB144_25
# BB#24:                                # %if.then.59
	movl	$1, -44(%rbp)
.LBB144_25:                             # %if.end.60
	jmp	.LBB144_26
.LBB144_26:                             # %if.end.61
	jmp	.LBB144_27
.LBB144_27:                             # %if.end.62
	cmpl	$0, -44(%rbp)
	je	.LBB144_33
# BB#28:                                # %land.lhs.true.64
	cmpl	$0, -32(%rbp)
	je	.LBB144_33
# BB#29:                                # %if.then.66
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB144_32
# BB#30:                                # %land.lhs.true.71
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_pickable_get_opacity_at
	cmpl	$0, %eax
	jne	.LBB144_32
# BB#31:                                # %if.then.76
	movl	$0, -44(%rbp)
.LBB144_32:                             # %if.end.77
	jmp	.LBB144_33
.LBB144_33:                             # %if.end.78
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB144_34:                             # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end144:
	.size	gimp_image_coords_in_active_pickable, .Lfunc_end144-gimp_image_coords_in_active_pickable
	.cfi_endproc

	.globl	gimp_image_invalidate_previews
	.align	16, 0x90
	.type	gimp_image_invalidate_previews,@function
gimp_image_invalidate_previews:         # @gimp_image_invalidate_previews
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp437:
	.cfi_def_cfa_offset 16
.Ltmp438:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp439:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB145_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB145_8
.LBB145_3:                              # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB145_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB145_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB145_7
.LBB145_6:                              # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB145_7:                              # %if.end
	jmp	.LBB145_8
.LBB145_8:                              # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB145_10
# BB#9:                                 # %if.then.8
	jmp	.LBB145_11
.LBB145_10:                             # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_image_invalidate_previews, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB145_13
.LBB145_11:                             # %if.end.10
	jmp	.LBB145_12
.LBB145_12:                             # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_channels
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_stack_invalidate_previews
	movq	-24(%rbp), %rdi
	callq	gimp_item_stack_invalidate_previews
.LBB145_13:                             # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end145:
	.size	gimp_image_invalidate_previews, .Lfunc_end145-gimp_image_invalidate_previews
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_class_init,@function
gimp_image_class_init:                  # @gimp_image_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp440:
	.cfi_def_cfa_offset 16
.Ltmp441:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp442:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1144, %rsp             # imm = 0x478
.Ltmp443:
	.cfi_offset %rbx, -56
.Ltmp444:
	.cfi_offset %r12, -48
.Ltmp445:
	.cfi_offset %r13, -40
.Ltmp446:
	.cfi_offset %r14, -32
.Ltmp447:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.74, %rdi
	movl	$1, %edx
	movl	$280, %ecx              # imm = 0x118
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -120(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.75, %rdi
	movl	$1, %edx
	movl	$288, %ecx              # imm = 0x120
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.76, %rdi
	movl	$1, %edx
	movl	$296, %ecx              # imm = 0x128
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+4
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -180(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.77, %rdi
	movl	$1, %edx
	movl	$304, %ecx              # imm = 0x130
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+8
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -212(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.78, %rdi
	movl	$1, %edx
	movl	$312, %ecx              # imm = 0x138
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+12
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%r8, -232(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -240(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -244(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.79, %rdi
	movl	$1, %edx
	movl	$320, %ecx              # imm = 0x140
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+16
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-256(%rbp), %r10        # 8-byte Reload
	movq	%r8, -264(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -272(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-264(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -276(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_image_signals+20
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gimp_channel_type_get_type
	movabsq	$.L.str.80, %rdi
	movl	$1, %edx
	movl	$328, %ecx              # imm = 0x148
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movq	-288(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-296(%rbp), %r11        # 8-byte Reload
	movq	%r8, -304(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -312(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-304(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_image_signals+24
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	gimp_channel_type_get_type
	movabsq	$.L.str.81, %rdi
	movl	$1, %edx
	movl	$336, %ecx              # imm = 0x150
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movq	-320(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-328(%rbp), %r11        # 8-byte Reload
	movq	%r8, -336(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -344(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-336(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$.L.str.82, %rdi
	movl	$1, %edx
	movl	$344, %ecx              # imm = 0x158
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+28
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-360(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -372(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.83, %rdi
	movl	$1, %edx
	movl	$352, %ecx              # imm = 0x160
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+32
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-384(%rbp), %r10        # 8-byte Reload
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -400(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-392(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -404(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.84, %rdi
	movl	$1, %edx
	movl	$360, %ecx              # imm = 0x168
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$gimp_marshal_VOID__INT_INT_INT_INT, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$4, %ebx
	movl	$24, %r15d
	movl	%r15d, %r10d
	movl	%eax, gimp_image_signals+36
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-416(%rbp), %r11        # 8-byte Reload
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -432(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-424(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	$24, 24(%rsp)
	movq	$24, 32(%rsp)
	movq	$24, 40(%rsp)
	movq	$24, 48(%rsp)
	movb	$0, %al
	movq	%r10, -440(%rbp)        # 8-byte Spill
	movl	%ebx, -444(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.85, %rdi
	movl	$1, %edx
	movl	$368, %ecx              # imm = 0x170
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+40
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-456(%rbp), %r10        # 8-byte Reload
	movq	%r8, -464(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -472(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-464(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -476(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.86, %rdi
	movl	$1, %edx
	movl	$376, %ecx              # imm = 0x178
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+44
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-488(%rbp), %r10        # 8-byte Reload
	movq	%r8, -496(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -504(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-496(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -508(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.87, %rdi
	movl	$1, %edx
	movl	$384, %ecx              # imm = 0x180
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_image_signals+48
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-520(%rbp), %r10        # 8-byte Reload
	movq	%r8, -528(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -536(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-528(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -540(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_image_signals+52
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	callq	gimp_dirty_mask_get_type
	movabsq	$.L.str.88, %rdi
	movl	$1, %edx
	movl	$392, %ecx              # imm = 0x188
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__FLAGS, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movq	-552(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-560(%rbp), %r11        # 8-byte Reload
	movq	%r8, -568(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -576(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-568(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_image_signals+56
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	callq	gimp_dirty_mask_get_type
	movabsq	$.L.str.89, %rdi
	movl	$1, %edx
	movl	$400, %ecx              # imm = 0x190
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__FLAGS, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movq	-584(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-592(%rbp), %r11        # 8-byte Reload
	movq	%r8, -600(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -608(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-600(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$.L.str.90, %rdi
	movl	$1, %edx
	movl	$408, %ecx              # imm = 0x198
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__STRING, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$64, %ebx
	movl	%ebx, %r10d
	movl	%eax, gimp_image_signals+60
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -616(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-616(%rbp), %r11        # 8-byte Reload
	movq	%r8, -624(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -632(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-624(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%r10, -640(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.91, %rdi
	movl	$1, %edx
	movl	$416, %ecx              # imm = 0x1A0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__STRING, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$64, %ebx
	movl	%ebx, %r10d
	movl	%eax, gimp_image_signals+64
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-648(%rbp), %r11        # 8-byte Reload
	movq	%r8, -656(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -664(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-656(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%r10, -672(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_image_signals+68
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	callq	gimp_guide_get_type
	movabsq	$.L.str.92, %rdi
	movl	$1, %edx
	movl	$424, %ecx              # imm = 0x1A8
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movq	-680(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -688(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-688(%rbp), %r11        # 8-byte Reload
	movq	%r8, -696(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -704(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-696(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_image_signals+72
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -712(%rbp)        # 8-byte Spill
	callq	gimp_guide_get_type
	movabsq	$.L.str.93, %rdi
	movl	$1, %edx
	movl	$432, %ecx              # imm = 0x1B0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movq	-712(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -720(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-720(%rbp), %r11        # 8-byte Reload
	movq	%r8, -728(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -736(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-728(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_image_signals+76
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -744(%rbp)        # 8-byte Spill
	callq	gimp_guide_get_type
	movabsq	$.L.str.94, %rdi
	movl	$1, %edx
	movl	$440, %ecx              # imm = 0x1B8
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movq	-744(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -752(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-752(%rbp), %r11        # 8-byte Reload
	movq	%r8, -760(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -768(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-760(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$.L.str.95, %rdi
	movl	$1, %edx
	movl	$448, %ecx              # imm = 0x1C0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$68, %ebx
	movl	%ebx, %r10d
	movl	%eax, gimp_image_signals+80
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -776(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-776(%rbp), %r11        # 8-byte Reload
	movq	%r8, -784(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -792(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-784(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r10, -800(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.96, %rdi
	movl	$1, %edx
	movl	$456, %ecx              # imm = 0x1C8
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$68, %ebx
	movl	%ebx, %r10d
	movl	%eax, gimp_image_signals+84
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -808(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-808(%rbp), %r11        # 8-byte Reload
	movq	%r8, -816(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -824(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-816(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r10, -832(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.97, %rdi
	movl	$1, %edx
	movl	$464, %ecx              # imm = 0x1D0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$68, %ebx
	movl	%ebx, %r10d
	movl	%eax, gimp_image_signals+88
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -840(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-840(%rbp), %r11        # 8-byte Reload
	movq	%r8, -848(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -856(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-848(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r10, -864(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.98, %rdi
	movl	$1, %edx
	movl	$472, %ecx              # imm = 0x1D8
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__STRING, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$64, %ebx
	movl	%ebx, %r10d
	movl	%eax, gimp_image_signals+92
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -872(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-872(%rbp), %r11        # 8-byte Reload
	movq	%r8, -880(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -888(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-880(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%r10, -896(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.99, %rdi
	movl	$1, %edx
	movl	$480, %ecx              # imm = 0x1E0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__STRING, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$64, %ebx
	movl	%ebx, %r10d
	movl	%eax, gimp_image_signals+96
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -904(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-904(%rbp), %r11        # 8-byte Reload
	movq	%r8, -912(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -920(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-912(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$64, 24(%rsp)
	movb	$0, %al
	movq	%r10, -928(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.100, %rdi
	movl	$1, %edx
	movl	$488, %ecx              # imm = 0x1E8
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__INT, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$24, %ebx
	movl	%ebx, %r10d
	movl	%eax, gimp_image_signals+100
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -936(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-936(%rbp), %r11        # 8-byte Reload
	movq	%r8, -944(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -952(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-944(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$24, 24(%rsp)
	movb	$0, %al
	movq	%r10, -960(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_image_signals+104
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -968(%rbp)        # 8-byte Spill
	callq	gimp_undo_event_get_type
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gimp_undo_get_type
	movabsq	$.L.str.101, %rdi
	movl	$1, %edx
	movl	$496, %ecx              # imm = 0x1F0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$gimp_marshal_VOID__ENUM_OBJECT, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$2, %ebx
	movq	-968(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -984(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-984(%rbp), %r11        # 8-byte Reload
	movq	%r8, -992(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -1000(%rbp)        # 8-byte Spill
	movq	%r11, %r9
	movq	-992(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	-976(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	%rax, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -1004(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_image_real_colormap_changed, %rsi
	movabsq	$gimp_image_real_size_changed_detailed, %rdi
	movabsq	$gimp_image_real_mode_changed, %r8
	movabsq	$gimp_image_get_description, %r9
	movabsq	$gimp_image_get_new_preview, %r10
	movabsq	$gimp_image_get_preview, %r11
	movabsq	$gimp_image_get_popup_size, %r14
	movabsq	$gimp_image_get_preview_size, %r12
	movabsq	$gimp_image_size_changed, %r13
	movabsq	$gimp_image_invalidate_preview, %r15
	movabsq	$gimp_image_get_size, %rcx
	movabsq	$.L.str.102, %rdx
	movabsq	$gimp_image_get_memsize, %rbx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	movabsq	$gimp_image_name_changed, %rcx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	movabsq	$gimp_image_finalize, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	movabsq	$gimp_image_dispose, %rcx
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	movabsq	$gimp_image_get_property, %rcx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	movabsq	$gimp_image_set_property, %rcx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	movabsq	$gimp_image_constructed, %rcx
	movl	%eax, gimp_image_signals+108
	movq	-56(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-56(%rbp), %rax
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, 144(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-72(%rbp), %rax
	movq	-1016(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, 192(%rax)
	movq	-72(%rbp), %rax
	movq	%r15, 176(%rax)
	movq	-72(%rbp), %rax
	movq	%r13, 184(%rax)
	movq	-72(%rbp), %rax
	movq	%r12, 200(%rax)
	movq	-72(%rbp), %rax
	movq	%r14, 208(%rax)
	movq	-72(%rbp), %rax
	movq	%r11, 216(%rax)
	movq	-72(%rbp), %rax
	movq	%r10, 224(%rax)
	movq	-72(%rbp), %rax
	movq	%r9, 248(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 280(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 288(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 312(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 328(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 336(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 344(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 352(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 360(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 368(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 376(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 384(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 392(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 400(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 408(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 416(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 424(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 432(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 440(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 448(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 456(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 464(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 472(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 480(%rax)
	movq	-48(%rbp), %rax
	movq	%rsi, 488(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 496(%rax)
	movq	-56(%rbp), %rdi
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.103, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%esi, %esi
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$225, %r9d
	movq	-56(%rbp), %rcx
	movl	%esi, -1068(%rbp)       # 4-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movl	-1068(%rbp), %r10d      # 4-byte Reload
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, -1084(%rbp)       # 4-byte Spill
	movl	%r10d, %r9d
	movl	$225, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$231, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -1088(%rbp)       # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -1096(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -1100(%rbp)       # 4-byte Spill
	movl	-1100(%rbp), %r9d       # 4-byte Reload
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$262144, %r8d           # imm = 0x40000
	movl	$231, %esi
	movq	-56(%rbp), %rdx
	movl	%esi, -1104(%rbp)       # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -1116(%rbp)       # 4-byte Spill
	movl	-1116(%rbp), %r9d       # 4-byte Reload
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	callq	gimp_image_base_type_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$231, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$5, %esi
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	callq	gimp_image_color_hash_init
	movl	$368, %esi              # imm = 0x170
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end146:
	.size	gimp_image_class_init, .Lfunc_end146-gimp_image_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_constructed,@function
gimp_image_constructed:                 # @gimp_image_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp448:
	.cfi_def_cfa_offset 16
.Ltmp449:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp450:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_image_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB147_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB147_2:                              # %if.end
	jmp	.LBB147_3
.LBB147_3:                              # %do.body
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB147_5
# BB#4:                                 # %if.then.9
	movl	$0, -68(%rbp)
	jmp	.LBB147_10
.LBB147_5:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB147_8
# BB#6:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB147_8
# BB#7:                                 # %if.then.12
	movl	$1, -68(%rbp)
	jmp	.LBB147_9
.LBB147_8:                              # %if.else.13
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB147_9:                              # %if.end.15
	jmp	.LBB147_10
.LBB147_10:                             # %if.end.16
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB147_12
# BB#11:                                # %if.then.18
	jmp	.LBB147_13
.LBB147_12:                             # %if.else.19
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.104, %rsi
	movl	$750, %edx              # imm = 0x2EE
	movabsq	$.L__func__.gimp_image_constructed, %rcx
	movabsq	$.L.str.105, %r8
	callq	g_assertion_message_expr
.LBB147_13:                             # %if.end.20
	jmp	.LBB147_14
.LBB147_14:                             # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	400(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_id_table_insert
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-40(%rbp), %rsi
	movq	296(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_template_get_resolution_x
	movq	-24(%rbp), %rsi
	movsd	%xmm0, 56(%rsi)
	movq	-48(%rbp), %rdi
	callq	gimp_template_get_resolution_y
	movq	-24(%rbp), %rsi
	movsd	%xmm0, 64(%rsi)
	movq	-48(%rbp), %rdi
	callq	gimp_template_get_resolution_unit
	movq	-24(%rbp), %rsi
	movl	%eax, 72(%rsi)
	movq	-40(%rbp), %rsi
	movq	304(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_duplicate
	movq	-24(%rbp), %rsi
	movq	%rax, 160(%rsi)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	384(%rsi), %rdi
	movq	%rdi, 288(%rax)
	movq	392(%rsi), %rdi
	movq	%rdi, 296(%rax)
	movq	400(%rsi), %rdi
	movq	%rdi, 304(%rax)
	movq	408(%rsi), %rsi
	movq	%rsi, 312(%rax)
	movq	-24(%rbp), %rax
	cmpl	$2, 76(%rax)
	jne	.LBB147_16
# BB#15:                                # %if.then.33
	movq	-16(%rbp), %rdi
	callq	gimp_image_colormap_init
.LBB147_16:                             # %if.end.34
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_selection_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_take_mask
	movabsq	$.L.str.106, %rsi
	movabsq	$gimp_item_stack_invalidate_previews, %rax
	movl	$2, %r8d
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_object
	movabsq	$.L.str.107, %rsi
	movabsq	$gimp_item_stack_invalidate_previews, %rcx
	movl	$2, %r8d
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.108, %rsi
	movabsq	$gimp_viewable_size_changed, %rcx
	movl	$2, %r8d
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	384(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -172(%rbp)        # 4-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end147:
	.size	gimp_image_constructed, .Lfunc_end147-gimp_image_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_set_property,@function
gimp_image_set_property:                # @gimp_image_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp451:
	.cfi_def_cfa_offset 16
.Ltmp452:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp453:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB148_7
# BB#11:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI148_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB148_1:                              # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB148_10
.LBB148_2:                              # %sw.bb.5
	jmp	.LBB148_3
.LBB148_3:                              # %do.body
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.104, %rsi
	movl	$802, %edx              # imm = 0x322
	movabsq	$.L__func__.gimp_image_set_property, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB148_4:                              # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-48(%rbp), %rdi
	movl	%eax, 48(%rdi)
	jmp	.LBB148_10
.LBB148_5:                              # %sw.bb.8
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-48(%rbp), %rdi
	movl	%eax, 52(%rdi)
	jmp	.LBB148_10
.LBB148_6:                              # %sw.bb.10
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, 76(%rdi)
	jmp	.LBB148_10
.LBB148_7:                              # %sw.default
	jmp	.LBB148_8
.LBB148_8:                              # %do.body.12
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
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.109, %rdi
	movabsq	$.L.str.104, %rsi
	movl	$814, %edx              # imm = 0x32E
	movabsq	$.L.str.110, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end.17
	jmp	.LBB148_10
.LBB148_10:                             # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end148:
	.size	gimp_image_set_property, .Lfunc_end148-gimp_image_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI148_0:
	.quad	.LBB148_1
	.quad	.LBB148_2
	.quad	.LBB148_4
	.quad	.LBB148_5
	.quad	.LBB148_6

	.text
	.align	16, 0x90
	.type	gimp_image_get_property,@function
gimp_image_get_property:                # @gimp_image_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp454:
	.cfi_def_cfa_offset 16
.Ltmp455:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp456:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB149_6
# BB#10:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI149_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB149_1:                              # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB149_9
.LBB149_2:                              # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB149_9
.LBB149_3:                              # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	48(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB149_9
.LBB149_4:                              # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	52(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB149_9
.LBB149_5:                              # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	76(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB149_9
.LBB149_6:                              # %sw.default
	jmp	.LBB149_7
.LBB149_7:                              # %do.body
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
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.109, %rdi
	movabsq	$.L.str.104, %rsi
	movl	$846, %edx              # imm = 0x34E
	movabsq	$.L.str.110, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB149_9
.LBB149_9:                              # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end149:
	.size	gimp_image_get_property, .Lfunc_end149-gimp_image_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI149_0:
	.quad	.LBB149_1
	.quad	.LBB149_2
	.quad	.LBB149_3
	.quad	.LBB149_4
	.quad	.LBB149_5

	.text
	.align	16, 0x90
	.type	gimp_image_dispose,@function
gimp_image_dispose:                     # @gimp_image_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp457:
	.cfi_def_cfa_offset 16
.Ltmp458:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp459:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB150_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_image_colormap_dispose
.LBB150_2:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_free
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_image_invalidate, %rdi
	movq	-24(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %r8
	movl	208(%r8), %esi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_container_remove_handler
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_image_invalidate, %rdi
	movq	-24(%rbp), %r9
	movq	184(%r9), %r9
	movq	32(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %r8
	movl	212(%r8), %esi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_container_remove_handler
	movq	-24(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %r8
	movl	216(%r8), %esi
	callq	gimp_container_remove_handler
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_image_channel_add, %rdi
	movq	-24(%rbp), %r9
	movq	184(%r9), %r9
	movq	32(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_image_channel_remove, %rdi
	movq	-24(%rbp), %r9
	movq	184(%r9), %r9
	movq	32(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movabsq	$gimp_item_removed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %r8
	movq	176(%r8), %r8
	movq	32(%r8), %r8
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_container_foreach
	movabsq	$gimp_item_removed, %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	gimp_container_foreach
	movabsq	$gimp_item_removed, %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	gimp_container_foreach
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_parent_class, %rdx
	movq	%rdx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end150:
	.size	gimp_image_dispose, .Lfunc_end150-gimp_image_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_finalize,@function
gimp_image_finalize:                    # @gimp_image_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp460:
	.cfi_def_cfa_offset 16
.Ltmp461:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp462:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB151_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 136(%rax)
.LBB151_2:                              # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB151_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 144(%rax)
.LBB151_4:                              # %if.end.10
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB151_6
# BB#5:                                 # %if.then.12
	movq	-16(%rbp), %rdi
	callq	gimp_image_colormap_free
.LBB151_6:                              # %if.end.13
	movq	-24(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB151_8
# BB#7:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 176(%rax)
.LBB151_8:                              # %if.end.18
	movq	-24(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB151_10
# BB#9:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 184(%rax)
.LBB151_10:                             # %if.end.23
	movq	-24(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB151_12
# BB#11:                                # %if.then.25
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 192(%rax)
.LBB151_12:                             # %if.end.28
	movq	-24(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB151_14
# BB#13:                                # %if.then.30
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	g_slist_free
	movq	-24(%rbp), %rax
	movq	$0, 200(%rax)
.LBB151_14:                             # %if.end.33
	movq	-24(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB151_16
# BB#15:                                # %if.then.35
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 232(%rax)
.LBB151_16:                             # %if.end.38
	movq	-24(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB151_18
# BB#17:                                # %if.then.40
	movq	-24(%rbp), %rax
	movq	344(%rax), %rdi
	callq	temp_buf_free
	movq	-24(%rbp), %rax
	movq	$0, 344(%rax)
.LBB151_18:                             # %if.end.43
	movq	-24(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB151_20
# BB#19:                                # %if.then.45
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 240(%rax)
.LBB151_20:                             # %if.end.48
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB151_22
# BB#21:                                # %if.then.50
	movabsq	$g_object_unref, %rsi
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_list_free_full
	movq	-24(%rbp), %rax
	movq	$0, 152(%rax)
.LBB151_22:                             # %if.end.53
	movq	-24(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB151_24
# BB#23:                                # %if.then.55
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 160(%rax)
.LBB151_24:                             # %if.end.58
	movq	-24(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB151_26
# BB#25:                                # %if.then.60
	movabsq	$gimp_sample_point_unref, %rax
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-24(%rbp), %rax
	movq	$0, 168(%rax)
.LBB151_26:                             # %if.end.63
	movq	-24(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB151_28
# BB#27:                                # %if.then.65
	movq	-24(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 320(%rax)
.LBB151_28:                             # %if.end.68
	movq	-24(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB151_30
# BB#29:                                # %if.then.70
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 328(%rax)
.LBB151_30:                             # %if.end.73
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB151_33
# BB#31:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 400(%rax)
	je	.LBB151_33
# BB#32:                                # %if.then.77
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	400(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_id_table_remove
	movq	-16(%rbp), %rdi
	movq	$0, 32(%rdi)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB151_33:                             # %if.end.82
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB151_35
# BB#34:                                # %if.then.84
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.LBB151_35:                             # %if.end.87
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB151_37
# BB#36:                                # %if.then.89
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
.LBB151_37:                             # %if.end.92
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end151:
	.size	gimp_image_finalize, .Lfunc_end151-gimp_image_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_name_changed,@function
gimp_image_name_changed:                # @gimp_image_name_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp463:
	.cfi_def_cfa_offset 16
.Ltmp464:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp465:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	gimp_image_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 144(%rax)
	je	.LBB152_2
# BB#1:                                 # %if.then
	movq	gimp_image_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB152_2:                              # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB152_4
# BB#3:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.LBB152_4:                              # %if.end.13
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB152_6
# BB#5:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 40(%rax)
.LBB152_6:                              # %if.end.18
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB152_9
# BB#7:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB152_9
# BB#8:                                 # %if.then.22
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_free
.LBB152_9:                              # %if.end.23
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end152:
	.size	gimp_image_name_changed, .Lfunc_end152-gimp_image_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_get_memsize,@function
gimp_image_get_memsize:                 # @gimp_image_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp466:
	.cfi_def_cfa_offset 16
.Ltmp467:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp468:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	je	.LBB153_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$768, %rax              # imm = 0x300
	movq	%rax, -40(%rbp)
.LBB153_2:                              # %if.end
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_guides
	movl	$40, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_g_list_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_sample_points
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_g_list_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gimp_g_slist_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	344(%rax), %rdi
	callq	temp_buf_get_memsize
	movq	-16(%rbp), %rsi
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	movq	gimp_image_parent_class, %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end153:
	.size	gimp_image_get_memsize, .Lfunc_end153-gimp_image_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_get_size,@function
gimp_image_get_size:                    # @gimp_image_get_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp469:
	.cfi_def_cfa_offset 16
.Ltmp470:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp471:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_height
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end154:
	.size	gimp_image_get_size, .Lfunc_end154-gimp_image_get_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_invalidate_preview,@function
gimp_image_invalidate_preview:          # @gimp_image_invalidate_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp472:
	.cfi_def_cfa_offset 16
.Ltmp473:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp474:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	gimp_image_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB155_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	344(%rax), %rdi
	callq	temp_buf_free
	movq	-16(%rbp), %rax
	movq	$0, 344(%rax)
.LBB155_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end155:
	.size	gimp_image_invalidate_preview, .Lfunc_end155-gimp_image_invalidate_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_size_changed,@function
gimp_image_size_changed:                # @gimp_image_size_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp475:
	.cfi_def_cfa_offset 16
.Ltmp476:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp477:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_image_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 184(%rax)
	je	.LBB156_2
# BB#1:                                 # %if.then
	movq	gimp_image_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB156_2:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB156_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB156_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB156_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_size_changed
	cmpq	$0, -40(%rbp)
	je	.LBB156_6
# BB#5:                                 # %if.then.16
                                        #   in Loop: Header=BB156_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_size_changed
.LBB156_6:                              # %if.end.19
                                        #   in Loop: Header=BB156_3 Depth=1
	jmp	.LBB156_7
.LBB156_7:                              # %for.inc
                                        #   in Loop: Header=BB156_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB156_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB156_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB156_10
.LBB156_9:                              # %cond.false
                                        #   in Loop: Header=BB156_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB156_10
.LBB156_10:                             # %cond.end
                                        #   in Loop: Header=BB156_3 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB156_3
.LBB156_11:                             # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channel_list
	movabsq	$gimp_viewable_size_changed, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	g_list_free_full
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_vectors_list
	movabsq	$gimp_viewable_size_changed, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_list_free_full
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_size_changed
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_projectable_structure_changed
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end156:
	.size	gimp_image_size_changed, .Lfunc_end156-gimp_image_size_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_get_description,@function
gimp_image_get_description:             # @gimp_image_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp478:
	.cfi_def_cfa_offset 16
.Ltmp479:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp480:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB157_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_display_path
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB157_2:                              # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_display_name
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_ID
	movabsq	$.L.str.112, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end157:
	.size	gimp_image_get_description, .Lfunc_end157-gimp_image_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_real_mode_changed,@function
gimp_image_real_mode_changed:           # @gimp_image_real_mode_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp481:
	.cfi_def_cfa_offset 16
.Ltmp482:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp483:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_projectable_structure_changed
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end158:
	.size	gimp_image_real_mode_changed, .Lfunc_end158-gimp_image_real_mode_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_real_size_changed_detailed,@function
gimp_image_real_size_changed_detailed:  # @gimp_image_real_size_changed_detailed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp484:
	.cfi_def_cfa_offset 16
.Ltmp485:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp486:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_size_changed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end159:
	.size	gimp_image_real_size_changed_detailed, .Lfunc_end159-gimp_image_real_size_changed_detailed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_real_colormap_changed,@function
gimp_image_real_colormap_changed:       # @gimp_image_real_colormap_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp487:
	.cfi_def_cfa_offset 16
.Ltmp488:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp489:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB160_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_image_color_hash_invalidate
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_invalidate
	movq	-24(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_invalidate_previews
.LBB160_2:                              # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end160:
	.size	gimp_image_real_colormap_changed, .Lfunc_end160-gimp_image_real_colormap_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_channel_add,@function
gimp_image_channel_add:                 # @gimp_image_channel_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp490:
	.cfi_def_cfa_offset 16
.Ltmp491:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp492:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	gimp_object_get_name
	movl	$.L.str.111, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB161_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_image_set_quick_mask_state
.LBB161_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end161:
	.size	gimp_image_channel_add, .Lfunc_end161-gimp_image_channel_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_channel_remove,@function
gimp_image_channel_remove:              # @gimp_image_channel_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp493:
	.cfi_def_cfa_offset 16
.Ltmp494:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp495:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	gimp_object_get_name
	movl	$.L.str.111, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB162_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_image_set_quick_mask_state
.LBB162_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end162:
	.size	gimp_image_channel_remove, .Lfunc_end162-gimp_image_channel_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_get_icc_profile,@function
gimp_image_get_icc_profile:             # @gimp_image_get_icc_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp496:
	.cfi_def_cfa_offset 16
.Ltmp497:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp498:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	%rax, %rdi
	callq	gimp_image_parasite_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB163_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_parasite_data_size
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jbe	.LBB163_3
# BB#2:                                 # %if.then.4
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rdi
	callq	gimp_parasite_data
	movq	%rax, -8(%rbp)
	jmp	.LBB163_5
.LBB163_3:                              # %if.end
	jmp	.LBB163_4
.LBB163_4:                              # %if.end.6
	movq	$0, -8(%rbp)
.LBB163_5:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end163:
	.size	gimp_image_get_icc_profile, .Lfunc_end163-gimp_image_get_icc_profile
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_projectable_flush,@function
gimp_image_projectable_flush:           # @gimp_image_projectable_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp499:
	.cfi_def_cfa_offset 16
.Ltmp500:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp501:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 352(%rax)
	je	.LBB164_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_alpha_changed
	movq	-32(%rbp), %rdi
	movl	$0, 352(%rdi)
.LBB164_2:                              # %if.end
	movq	-32(%rbp), %rax
	cmpl	$0, 356(%rax)
	je	.LBB164_4
# BB#3:                                 # %if.then.8
	movq	-24(%rbp), %rdi
	callq	gimp_image_mask_changed
	movq	-32(%rbp), %rdi
	movl	$0, 356(%rdi)
.LBB164_4:                              # %if.end.11
	movq	-32(%rbp), %rax
	cmpl	$0, 360(%rax)
	je	.LBB164_6
# BB#5:                                 # %if.then.14
	movq	-24(%rbp), %rdi
	callq	gimp_image_floating_selection_changed
	movq	-32(%rbp), %rdi
	movl	$0, 360(%rdi)
.LBB164_6:                              # %if.end.17
	movq	-32(%rbp), %rax
	cmpl	$0, 364(%rax)
	je	.LBB164_8
# BB#7:                                 # %if.then.20
	movq	-32(%rbp), %rax
	movl	$0, 364(%rax)
.LBB164_8:                              # %if.end.23
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end164:
	.size	gimp_image_projectable_flush, .Lfunc_end164-gimp_image_projectable_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_get_image,@function
gimp_image_get_image:                   # @gimp_image_get_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp502:
	.cfi_def_cfa_offset 16
.Ltmp503:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp504:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end165:
	.size	gimp_image_get_image, .Lfunc_end165-gimp_image_get_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_get_image_type,@function
gimp_image_get_image_type:              # @gimp_image_get_image_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp505:
	.cfi_def_cfa_offset 16
.Ltmp506:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp507:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 76(%rax)
	jne	.LBB166_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB166_6
.LBB166_2:                              # %cond.false
	movq	-16(%rbp), %rax
	cmpl	$1, 76(%rax)
	jne	.LBB166_4
# BB#3:                                 # %cond.true.4
	movl	$2, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB166_5
.LBB166_4:                              # %cond.false.5
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$4, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$2, 76(%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB166_5:                              # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB166_6:                              # %cond.end.9
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB166_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$1, -20(%rbp)
	jne	.LBB166_9
.LBB166_8:                              # %cond.true.13
	movl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB166_16
.LBB166_9:                              # %cond.false.14
	cmpl	$2, -20(%rbp)
	je	.LBB166_11
# BB#10:                                # %lor.lhs.false.16
	cmpl	$3, -20(%rbp)
	jne	.LBB166_12
.LBB166_11:                             # %cond.true.18
	movl	$3, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB166_15
.LBB166_12:                             # %cond.false.19
	movb	$1, %al
	cmpl	$4, -20(%rbp)
	movb	%al, -49(%rbp)          # 1-byte Spill
	je	.LBB166_14
# BB#13:                                # %lor.rhs
	cmpl	$5, -20(%rbp)
	sete	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB166_14:                             # %lor.end
	movb	-49(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB166_15:                             # %cond.end.23
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB166_16:                             # %cond.end.25
	movl	-44(%rbp), %eax         # 4-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end166:
	.size	gimp_image_get_image_type, .Lfunc_end166-gimp_image_get_image_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_get_graph,@function
gimp_image_get_graph:                   # @gimp_image_get_graph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp508:
	.cfi_def_cfa_offset 16
.Ltmp509:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp510:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB167_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB167_3
.LBB167_2:                              # %if.end
	callq	gegl_node_new
	movq	-32(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_stack_get_graph
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gegl_node_add_child
	movq	-32(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_stack_get_graph
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gegl_node_add_child
	movabsq	$.L.str.113, %rsi
	movabsq	$.L.str.114, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.116, %rcx
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.117, %rcx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movabsq	$.L.str.115, %rsi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gegl_node_get_output_proxy
	movabsq	$.L.str.115, %rsi
	movabsq	$.L.str.116, %rcx
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	gegl_node_connect_to
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB167_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end167:
	.size	gimp_image_get_graph, .Lfunc_end167-gimp_image_get_graph
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_active_layer_notify,@function
gimp_image_active_layer_notify:         # @gimp_image_active_layer_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp511:
	.cfi_def_cfa_offset 16
.Ltmp512:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp513:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB168_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 200(%rsi)
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-32(%rbp), %rsi
	movq	%rax, 200(%rsi)
.LBB168_2:                              # %if.end
	xorl	%edx, %edx
	movq	-24(%rbp), %rax
	movl	gimp_image_signals+12, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	cmpq	$0, -40(%rbp)
	je	.LBB168_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	cmpq	$0, %rax
	je	.LBB168_5
# BB#4:                                 # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_image_set_active_channel
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB168_5:                              # %if.end.13
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end168:
	.size	gimp_image_active_layer_notify, .Lfunc_end168-gimp_image_active_layer_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_active_channel_notify,@function
gimp_image_active_channel_notify:       # @gimp_image_active_channel_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp514:
	.cfi_def_cfa_offset 16
.Ltmp515:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp516:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	gimp_image_signals+16, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	cmpq	$0, -32(%rbp)
	je	.LBB169_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	cmpq	$0, %rax
	je	.LBB169_3
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_image_set_active_layer
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB169_3:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end169:
	.size	gimp_image_active_channel_notify, .Lfunc_end169-gimp_image_active_channel_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_active_vectors_notify,@function
gimp_image_active_vectors_notify:       # @gimp_image_active_vectors_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp517:
	.cfi_def_cfa_offset 16
.Ltmp518:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp519:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	gimp_image_signals+20, %esi
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_signal_emit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end170:
	.size	gimp_image_active_vectors_notify, .Lfunc_end170-gimp_image_active_vectors_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_layer_alpha_changed,@function
gimp_image_layer_alpha_changed:         # @gimp_image_layer_alpha_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp520:
	.cfi_def_cfa_offset 16
.Ltmp521:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp522:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_container_get_n_children
	cmpl	$1, %eax
	jne	.LBB171_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, 352(%rax)
.LBB171_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end171:
	.size	gimp_image_layer_alpha_changed, .Lfunc_end171-gimp_image_layer_alpha_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_channel_name_changed,@function
gimp_image_channel_name_changed:        # @gimp_image_channel_name_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp523:
	.cfi_def_cfa_offset 16
.Ltmp524:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp525:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movl	$.L.str.111, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB172_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_image_set_quick_mask_state
	jmp	.LBB172_6
.LBB172_2:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_quick_mask_state
	cmpl	$0, %eax
	je	.LBB172_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_quick_mask
	cmpq	$0, %rax
	jne	.LBB172_5
# BB#4:                                 # %if.then.6
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_image_set_quick_mask_state
.LBB172_5:                              # %if.end
	jmp	.LBB172_6
.LBB172_6:                              # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end172:
	.size	gimp_image_channel_name_changed, .Lfunc_end172-gimp_image_channel_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_channel_color_changed,@function
gimp_image_channel_color_changed:       # @gimp_image_channel_color_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp526:
	.cfi_def_cfa_offset 16
.Ltmp527:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp528:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movl	$.L.str.111, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB173_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	%rdi, 288(%rax)
	movq	48(%rsi), %rdi
	movq	%rdi, 296(%rax)
	movq	56(%rsi), %rdi
	movq	%rdi, 304(%rax)
	movq	64(%rsi), %rsi
	movq	%rsi, 312(%rax)
.LBB173_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end173:
	.size	gimp_image_channel_color_changed, .Lfunc_end173-gimp_image_channel_color_changed
	.cfi_endproc

	.type	gimp_image_get_type.g_define_type_id__volatile,@object # @gimp_image_get_type.g_define_type_id__volatile
	.local	gimp_image_get_type.g_define_type_id__volatile
	.comm	gimp_image_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImage"
	.size	.L.str, 10

	.type	gimp_image_get_type.g_implement_interface_info,@object # @gimp_image_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_image_get_type.g_implement_interface_info:
	.quad	gimp_color_managed_iface_init
	.quad	0
	.quad	0
	.size	gimp_image_get_type.g_implement_interface_info, 24

	.type	gimp_image_get_type.g_implement_interface_info.1,@object # @gimp_image_get_type.g_implement_interface_info.1
	.align	8
gimp_image_get_type.g_implement_interface_info.1:
	.quad	gimp_projectable_iface_init
	.quad	0
	.quad	0
	.size	gimp_image_get_type.g_implement_interface_info.1, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gimp-Core"
	.size	.L.str.2, 10

	.type	.L__func__.gimp_image_new,@object # @__func__.gimp_image_new
.L__func__.gimp_image_new:
	.asciz	"gimp_image_new"
	.size	.L__func__.gimp_image_new, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"width"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"height"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"base-type"
	.size	.L.str.7, 10

	.type	.L__func__.gimp_image_base_type,@object # @__func__.gimp_image_base_type
.L__func__.gimp_image_base_type:
	.asciz	"gimp_image_base_type"
	.size	.L__func__.gimp_image_base_type, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.8, 22

	.type	.L__func__.gimp_image_base_type_with_alpha,@object # @__func__.gimp_image_base_type_with_alpha
.L__func__.gimp_image_base_type_with_alpha:
	.asciz	"gimp_image_base_type_with_alpha"
	.size	.L__func__.gimp_image_base_type_with_alpha, 32

	.type	valid_combinations,@object # @valid_combinations
	.section	.rodata,"a",@progbits
	.align	16
valid_combinations:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	4294967295              # 0xffffffff
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	3                       # 0x3
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	valid_combinations, 120

	.type	.L__func__.gimp_image_get_ID,@object # @__func__.gimp_image_get_ID
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_image_get_ID:
	.asciz	"gimp_image_get_ID"
	.size	.L__func__.gimp_image_get_ID, 18

	.type	.L__func__.gimp_image_get_by_ID,@object # @__func__.gimp_image_get_by_ID
.L__func__.gimp_image_get_by_ID:
	.asciz	"gimp_image_get_by_ID"
	.size	.L__func__.gimp_image_get_by_ID, 21

	.type	.L__func__.gimp_image_set_uri,@object # @__func__.gimp_image_set_uri
.L__func__.gimp_image_set_uri:
	.asciz	"gimp_image_set_uri"
	.size	.L__func__.gimp_image_set_uri, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Untitled"
	.size	.L.str.9, 9

	.type	.L__func__.gimp_image_get_uri_or_untitled,@object # @__func__.gimp_image_get_uri_or_untitled
.L__func__.gimp_image_get_uri_or_untitled:
	.asciz	"gimp_image_get_uri_or_untitled"
	.size	.L__func__.gimp_image_get_uri_or_untitled, 31

	.type	.L__func__.gimp_image_get_uri,@object # @__func__.gimp_image_get_uri
.L__func__.gimp_image_get_uri:
	.asciz	"gimp_image_get_uri"
	.size	.L__func__.gimp_image_get_uri, 19

	.type	.L__func__.gimp_image_set_filename,@object # @__func__.gimp_image_set_filename
.L__func__.gimp_image_set_filename:
	.asciz	"gimp_image_set_filename"
	.size	.L__func__.gimp_image_set_filename, 24

	.type	.L__func__.gimp_image_get_imported_uri,@object # @__func__.gimp_image_get_imported_uri
.L__func__.gimp_image_get_imported_uri:
	.asciz	"gimp_image_get_imported_uri"
	.size	.L__func__.gimp_image_get_imported_uri, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-file-import-source-uri"
	.size	.L.str.10, 28

	.type	.L__func__.gimp_image_get_exported_uri,@object # @__func__.gimp_image_get_exported_uri
.L__func__.gimp_image_get_exported_uri:
	.asciz	"gimp_image_get_exported_uri"
	.size	.L__func__.gimp_image_get_exported_uri, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-file-export-uri"
	.size	.L.str.11, 21

	.type	.L__func__.gimp_image_get_save_a_copy_uri,@object # @__func__.gimp_image_get_save_a_copy_uri
.L__func__.gimp_image_get_save_a_copy_uri:
	.asciz	"gimp_image_get_save_a_copy_uri"
	.size	.L__func__.gimp_image_get_save_a_copy_uri, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-file-save-a-copy-uri"
	.size	.L.str.12, 26

	.type	.L__func__.gimp_image_get_any_uri,@object # @__func__.gimp_image_get_any_uri
.L__func__.gimp_image_get_any_uri:
	.asciz	"gimp_image_get_any_uri"
	.size	.L__func__.gimp_image_get_any_uri, 23

	.type	.L__func__.gimp_image_set_imported_uri,@object # @__func__.gimp_image_set_imported_uri
.L__func__.gimp_image_set_imported_uri:
	.asciz	"gimp_image_set_imported_uri"
	.size	.L__func__.gimp_image_set_imported_uri, 28

	.type	.L__func__.gimp_image_set_exported_uri,@object # @__func__.gimp_image_set_exported_uri
.L__func__.gimp_image_set_exported_uri:
	.asciz	"gimp_image_set_exported_uri"
	.size	.L__func__.gimp_image_set_exported_uri, 28

	.type	.L__func__.gimp_image_set_save_a_copy_uri,@object # @__func__.gimp_image_set_save_a_copy_uri
.L__func__.gimp_image_set_save_a_copy_uri:
	.asciz	"gimp_image_set_save_a_copy_uri"
	.size	.L__func__.gimp_image_set_save_a_copy_uri, 31

	.type	.L__func__.gimp_image_get_filename,@object # @__func__.gimp_image_get_filename
.L__func__.gimp_image_get_filename:
	.asciz	"gimp_image_get_filename"
	.size	.L__func__.gimp_image_get_filename, 24

	.type	.L__func__.gimp_image_get_display_name,@object # @__func__.gimp_image_get_display_name
.L__func__.gimp_image_get_display_name:
	.asciz	"gimp_image_get_display_name"
	.size	.L__func__.gimp_image_get_display_name, 28

	.type	.L__func__.gimp_image_get_display_path,@object # @__func__.gimp_image_get_display_path
.L__func__.gimp_image_get_display_path:
	.asciz	"gimp_image_get_display_path"
	.size	.L__func__.gimp_image_get_display_path, 28

	.type	.L__func__.gimp_image_set_load_proc,@object # @__func__.gimp_image_set_load_proc
.L__func__.gimp_image_set_load_proc:
	.asciz	"gimp_image_set_load_proc"
	.size	.L__func__.gimp_image_set_load_proc, 25

	.type	.L__func__.gimp_image_get_load_proc,@object # @__func__.gimp_image_get_load_proc
.L__func__.gimp_image_get_load_proc:
	.asciz	"gimp_image_get_load_proc"
	.size	.L__func__.gimp_image_get_load_proc, 25

	.type	.L__func__.gimp_image_set_save_proc,@object # @__func__.gimp_image_set_save_proc
.L__func__.gimp_image_set_save_proc:
	.asciz	"gimp_image_set_save_proc"
	.size	.L__func__.gimp_image_set_save_proc, 25

	.type	.L__func__.gimp_image_get_save_proc,@object # @__func__.gimp_image_get_save_proc
.L__func__.gimp_image_get_save_proc:
	.asciz	"gimp_image_get_save_proc"
	.size	.L__func__.gimp_image_get_save_proc, 25

	.type	.L__func__.gimp_image_set_export_proc,@object # @__func__.gimp_image_set_export_proc
.L__func__.gimp_image_set_export_proc:
	.asciz	"gimp_image_set_export_proc"
	.size	.L__func__.gimp_image_set_export_proc, 27

	.type	.L__func__.gimp_image_get_export_proc,@object # @__func__.gimp_image_get_export_proc
.L__func__.gimp_image_get_export_proc:
	.asciz	"gimp_image_get_export_proc"
	.size	.L__func__.gimp_image_get_export_proc, 27

	.type	.L__func__.gimp_image_set_resolution,@object # @__func__.gimp_image_set_resolution
.L__func__.gimp_image_set_resolution:
	.asciz	"gimp_image_set_resolution"
	.size	.L__func__.gimp_image_set_resolution, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"undo-type\004Change Image Resolution"
	.size	.L.str.13, 34

	.type	.L__func__.gimp_image_get_resolution,@object # @__func__.gimp_image_get_resolution
.L__func__.gimp_image_get_resolution:
	.asciz	"gimp_image_get_resolution"
	.size	.L__func__.gimp_image_get_resolution, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xresolution != NULL && yresolution != NULL"
	.size	.L.str.14, 43

	.type	.L__func__.gimp_image_resolution_changed,@object # @__func__.gimp_image_resolution_changed
.L__func__.gimp_image_resolution_changed:
	.asciz	"gimp_image_resolution_changed"
	.size	.L__func__.gimp_image_resolution_changed, 30

	.type	gimp_image_signals,@object # @gimp_image_signals
	.local	gimp_image_signals
	.comm	gimp_image_signals,112,16
	.type	.L__func__.gimp_image_set_unit,@object # @__func__.gimp_image_set_unit
.L__func__.gimp_image_set_unit:
	.asciz	"gimp_image_set_unit"
	.size	.L__func__.gimp_image_set_unit, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"unit > GIMP_UNIT_PIXEL"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"undo-type\004Change Image Unit"
	.size	.L.str.16, 28

	.type	.L__func__.gimp_image_get_unit,@object # @__func__.gimp_image_get_unit
.L__func__.gimp_image_get_unit:
	.asciz	"gimp_image_get_unit"
	.size	.L__func__.gimp_image_get_unit, 20

	.type	.L__func__.gimp_image_unit_changed,@object # @__func__.gimp_image_unit_changed
.L__func__.gimp_image_unit_changed:
	.asciz	"gimp_image_unit_changed"
	.size	.L__func__.gimp_image_unit_changed, 24

	.type	.L__func__.gimp_image_get_width,@object # @__func__.gimp_image_get_width
.L__func__.gimp_image_get_width:
	.asciz	"gimp_image_get_width"
	.size	.L__func__.gimp_image_get_width, 21

	.type	.L__func__.gimp_image_get_height,@object # @__func__.gimp_image_get_height
.L__func__.gimp_image_get_height:
	.asciz	"gimp_image_get_height"
	.size	.L__func__.gimp_image_get_height, 22

	.type	.L__func__.gimp_image_has_alpha,@object # @__func__.gimp_image_has_alpha
.L__func__.gimp_image_has_alpha:
	.asciz	"gimp_image_has_alpha"
	.size	.L__func__.gimp_image_has_alpha, 21

	.type	.L__func__.gimp_image_is_empty,@object # @__func__.gimp_image_is_empty
.L__func__.gimp_image_is_empty:
	.asciz	"gimp_image_is_empty"
	.size	.L__func__.gimp_image_is_empty, 20

	.type	.L__func__.gimp_image_set_floating_selection,@object # @__func__.gimp_image_set_floating_selection
.L__func__.gimp_image_set_floating_selection:
	.asciz	"gimp_image_set_floating_selection"
	.size	.L__func__.gimp_image_set_floating_selection, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"floating_sel == NULL || GIMP_IS_LAYER (floating_sel)"
	.size	.L.str.17, 53

	.type	.L__func__.gimp_image_get_floating_selection,@object # @__func__.gimp_image_get_floating_selection
.L__func__.gimp_image_get_floating_selection:
	.asciz	"gimp_image_get_floating_selection"
	.size	.L__func__.gimp_image_get_floating_selection, 34

	.type	.L__func__.gimp_image_floating_selection_changed,@object # @__func__.gimp_image_floating_selection_changed
.L__func__.gimp_image_floating_selection_changed:
	.asciz	"gimp_image_floating_selection_changed"
	.size	.L__func__.gimp_image_floating_selection_changed, 38

	.type	.L__func__.gimp_image_get_mask,@object # @__func__.gimp_image_get_mask
.L__func__.gimp_image_get_mask:
	.asciz	"gimp_image_get_mask"
	.size	.L__func__.gimp_image_get_mask, 20

	.type	.L__func__.gimp_image_mask_changed,@object # @__func__.gimp_image_mask_changed
.L__func__.gimp_image_mask_changed:
	.asciz	"gimp_image_mask_changed"
	.size	.L__func__.gimp_image_mask_changed, 24

	.type	.L__func__.gimp_image_take_mask,@object # @__func__.gimp_image_take_mask
.L__func__.gimp_image_take_mask:
	.asciz	"gimp_image_take_mask"
	.size	.L__func__.gimp_image_take_mask, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_SELECTION (mask)"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"update"
	.size	.L.str.19, 7

	.type	.L__func__.gimp_image_get_component_index,@object # @__func__.gimp_image_get_component_index
.L__func__.gimp_image_get_component_index:
	.asciz	"gimp_image_get_component_index"
	.size	.L__func__.gimp_image_get_component_index, 31

	.type	.L__func__.gimp_image_set_component_active,@object # @__func__.gimp_image_set_component_active
.L__func__.gimp_image_set_component_active:
	.asciz	"gimp_image_set_component_active"
	.size	.L__func__.gimp_image_set_component_active, 32

	.type	.L__func__.gimp_image_get_component_active,@object # @__func__.gimp_image_get_component_active
.L__func__.gimp_image_get_component_active:
	.asciz	"gimp_image_get_component_active"
	.size	.L__func__.gimp_image_get_component_active, 32

	.type	.L__func__.gimp_image_get_active_array,@object # @__func__.gimp_image_get_active_array
.L__func__.gimp_image_get_active_array:
	.asciz	"gimp_image_get_active_array"
	.size	.L__func__.gimp_image_get_active_array, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"components != NULL"
	.size	.L.str.20, 19

	.type	.L__func__.gimp_image_set_component_visible,@object # @__func__.gimp_image_set_component_visible
.L__func__.gimp_image_set_component_visible:
	.asciz	"gimp_image_set_component_visible"
	.size	.L__func__.gimp_image_set_component_visible, 33

	.type	.L__func__.gimp_image_get_component_visible,@object # @__func__.gimp_image_get_component_visible
.L__func__.gimp_image_get_component_visible:
	.asciz	"gimp_image_get_component_visible"
	.size	.L__func__.gimp_image_get_component_visible, 33

	.type	.L__func__.gimp_image_get_visible_array,@object # @__func__.gimp_image_get_visible_array
.L__func__.gimp_image_get_visible_array:
	.asciz	"gimp_image_get_visible_array"
	.size	.L__func__.gimp_image_get_visible_array, 29

	.type	.L__func__.gimp_image_mode_changed,@object # @__func__.gimp_image_mode_changed
.L__func__.gimp_image_mode_changed:
	.asciz	"gimp_image_mode_changed"
	.size	.L__func__.gimp_image_mode_changed, 24

	.type	.L__func__.gimp_image_alpha_changed,@object # @__func__.gimp_image_alpha_changed
.L__func__.gimp_image_alpha_changed:
	.asciz	"gimp_image_alpha_changed"
	.size	.L__func__.gimp_image_alpha_changed, 25

	.type	.L__func__.gimp_image_invalidate,@object # @__func__.gimp_image_invalidate
.L__func__.gimp_image_invalidate:
	.asciz	"gimp_image_invalidate"
	.size	.L__func__.gimp_image_invalidate, 22

	.type	.L__func__.gimp_image_guide_added,@object # @__func__.gimp_image_guide_added
.L__func__.gimp_image_guide_added:
	.asciz	"gimp_image_guide_added"
	.size	.L__func__.gimp_image_guide_added, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GIMP_IS_GUIDE (guide)"
	.size	.L.str.21, 22

	.type	.L__func__.gimp_image_guide_removed,@object # @__func__.gimp_image_guide_removed
.L__func__.gimp_image_guide_removed:
	.asciz	"gimp_image_guide_removed"
	.size	.L__func__.gimp_image_guide_removed, 25

	.type	.L__func__.gimp_image_guide_moved,@object # @__func__.gimp_image_guide_moved
.L__func__.gimp_image_guide_moved:
	.asciz	"gimp_image_guide_moved"
	.size	.L__func__.gimp_image_guide_moved, 23

	.type	.L__func__.gimp_image_sample_point_added,@object # @__func__.gimp_image_sample_point_added
.L__func__.gimp_image_sample_point_added:
	.asciz	"gimp_image_sample_point_added"
	.size	.L__func__.gimp_image_sample_point_added, 30

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"sample_point != NULL"
	.size	.L.str.22, 21

	.type	.L__func__.gimp_image_sample_point_removed,@object # @__func__.gimp_image_sample_point_removed
.L__func__.gimp_image_sample_point_removed:
	.asciz	"gimp_image_sample_point_removed"
	.size	.L__func__.gimp_image_sample_point_removed, 32

	.type	.L__func__.gimp_image_sample_point_moved,@object # @__func__.gimp_image_sample_point_moved
.L__func__.gimp_image_sample_point_moved:
	.asciz	"gimp_image_sample_point_moved"
	.size	.L__func__.gimp_image_sample_point_moved, 30

	.type	.L__func__.gimp_image_size_changed_detailed,@object # @__func__.gimp_image_size_changed_detailed
.L__func__.gimp_image_size_changed_detailed:
	.asciz	"gimp_image_size_changed_detailed"
	.size	.L__func__.gimp_image_size_changed_detailed, 33

	.type	.L__func__.gimp_image_colormap_changed,@object # @__func__.gimp_image_colormap_changed
.L__func__.gimp_image_colormap_changed:
	.asciz	"gimp_image_colormap_changed"
	.size	.L__func__.gimp_image_colormap_changed, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"color_index >= -1 && color_index < GIMP_IMAGE_GET_PRIVATE (image)->n_colors"
	.size	.L.str.23, 76

	.type	.L__func__.gimp_image_selection_invalidate,@object # @__func__.gimp_image_selection_invalidate
.L__func__.gimp_image_selection_invalidate:
	.asciz	"gimp_image_selection_invalidate"
	.size	.L__func__.gimp_image_selection_invalidate, 32

	.type	.L__func__.gimp_image_quick_mask_changed,@object # @__func__.gimp_image_quick_mask_changed
.L__func__.gimp_image_quick_mask_changed:
	.asciz	"gimp_image_quick_mask_changed"
	.size	.L__func__.gimp_image_quick_mask_changed, 30

	.type	.L__func__.gimp_image_undo_event,@object # @__func__.gimp_image_undo_event
.L__func__.gimp_image_undo_event:
	.asciz	"gimp_image_undo_event"
	.size	.L__func__.gimp_image_undo_event, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"((event == GIMP_UNDO_EVENT_UNDO_FREE || event == GIMP_UNDO_EVENT_UNDO_FREEZE || event == GIMP_UNDO_EVENT_UNDO_THAW) && undo == NULL) || GIMP_IS_UNDO (undo)"
	.size	.L.str.24, 156

	.type	.L__func__.gimp_image_dirty,@object # @__func__.gimp_image_dirty
.L__func__.gimp_image_dirty:
	.asciz	"gimp_image_dirty"
	.size	.L__func__.gimp_image_dirty, 17

	.type	.L__func__.gimp_image_clean,@object # @__func__.gimp_image_clean
.L__func__.gimp_image_clean:
	.asciz	"gimp_image_clean"
	.size	.L__func__.gimp_image_clean, 17

	.type	.L__func__.gimp_image_clean_all,@object # @__func__.gimp_image_clean_all
.L__func__.gimp_image_clean_all:
	.asciz	"gimp_image_clean_all"
	.size	.L__func__.gimp_image_clean_all, 21

	.type	.L__func__.gimp_image_export_clean_all,@object # @__func__.gimp_image_export_clean_all
.L__func__.gimp_image_export_clean_all:
	.asciz	"gimp_image_export_clean_all"
	.size	.L__func__.gimp_image_export_clean_all, 28

	.type	.L__func__.gimp_image_is_dirty,@object # @__func__.gimp_image_is_dirty
.L__func__.gimp_image_is_dirty:
	.asciz	"gimp_image_is_dirty"
	.size	.L__func__.gimp_image_is_dirty, 20

	.type	.L__func__.gimp_image_is_export_dirty,@object # @__func__.gimp_image_is_export_dirty
.L__func__.gimp_image_is_export_dirty:
	.asciz	"gimp_image_is_export_dirty"
	.size	.L__func__.gimp_image_is_export_dirty, 27

	.type	.L__func__.gimp_image_get_dirty_time,@object # @__func__.gimp_image_get_dirty_time
.L__func__.gimp_image_get_dirty_time:
	.asciz	"gimp_image_get_dirty_time"
	.size	.L__func__.gimp_image_get_dirty_time, 26

	.type	.L__func__.gimp_image_saved,@object # @__func__.gimp_image_saved
.L__func__.gimp_image_saved:
	.asciz	"gimp_image_saved"
	.size	.L__func__.gimp_image_saved, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"uri != NULL"
	.size	.L.str.25, 12

	.type	.L__func__.gimp_image_exported,@object # @__func__.gimp_image_exported
.L__func__.gimp_image_exported:
	.asciz	"gimp_image_exported"
	.size	.L__func__.gimp_image_exported, 20

	.type	.L__func__.gimp_image_flush,@object # @__func__.gimp_image_flush
.L__func__.gimp_image_flush:
	.asciz	"gimp_image_flush"
	.size	.L__func__.gimp_image_flush, 17

	.type	.L__func__.gimp_image_get_display_count,@object # @__func__.gimp_image_get_display_count
.L__func__.gimp_image_get_display_count:
	.asciz	"gimp_image_get_display_count"
	.size	.L__func__.gimp_image_get_display_count, 29

	.type	.L__func__.gimp_image_inc_display_count,@object # @__func__.gimp_image_inc_display_count
.L__func__.gimp_image_inc_display_count:
	.asciz	"gimp_image_inc_display_count"
	.size	.L__func__.gimp_image_inc_display_count, 29

	.type	.L__func__.gimp_image_dec_display_count,@object # @__func__.gimp_image_dec_display_count
.L__func__.gimp_image_dec_display_count:
	.asciz	"gimp_image_dec_display_count"
	.size	.L__func__.gimp_image_dec_display_count, 29

	.type	.L__func__.gimp_image_get_instance_count,@object # @__func__.gimp_image_get_instance_count
.L__func__.gimp_image_get_instance_count:
	.asciz	"gimp_image_get_instance_count"
	.size	.L__func__.gimp_image_get_instance_count, 30

	.type	.L__func__.gimp_image_inc_instance_count,@object # @__func__.gimp_image_inc_instance_count
.L__func__.gimp_image_inc_instance_count:
	.asciz	"gimp_image_inc_instance_count"
	.size	.L__func__.gimp_image_inc_instance_count, 30

	.type	.L__func__.gimp_image_get_foreground,@object # @__func__.gimp_image_get_foreground
.L__func__.gimp_image_get_foreground:
	.asciz	"gimp_image_get_foreground"
	.size	.L__func__.gimp_image_get_foreground, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"fg != NULL"
	.size	.L.str.27, 11

	.type	.L__func__.gimp_image_get_background,@object # @__func__.gimp_image_get_background
.L__func__.gimp_image_get_background:
	.asciz	"gimp_image_get_background"
	.size	.L__func__.gimp_image_get_background, 26

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"bg != NULL"
	.size	.L.str.28, 11

	.type	.L__func__.gimp_image_get_color,@object # @__func__.gimp_image_get_color
.L__func__.gimp_image_get_color:
	.asciz	"gimp_image_get_color"
	.size	.L__func__.gimp_image_get_color, 21

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GIMP_IS_IMAGE (src_image)"
	.size	.L.str.29, 26

	.type	.L__func__.gimp_image_transform_rgb,@object # @__func__.gimp_image_transform_rgb
.L__func__.gimp_image_transform_rgb:
	.asciz	"gimp_image_transform_rgb"
	.size	.L__func__.gimp_image_transform_rgb, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"GIMP_IS_IMAGE (dest_image)"
	.size	.L.str.30, 27

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"rgb != NULL"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"color != NULL"
	.size	.L.str.32, 14

	.type	.L__func__.gimp_image_transform_color,@object # @__func__.gimp_image_transform_color
.L__func__.gimp_image_transform_color:
	.asciz	"gimp_image_transform_color"
	.size	.L__func__.gimp_image_transform_color, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"src_type != GIMP_INDEXED"
	.size	.L.str.33, 25

	.type	.L__func__.gimp_image_transform_temp_buf,@object # @__func__.gimp_image_transform_temp_buf
.L__func__.gimp_image_transform_temp_buf:
	.asciz	"gimp_image_transform_temp_buf"
	.size	.L__func__.gimp_image_transform_temp_buf, 30

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIMP_IMAGE (dest_image)"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"temp_buf != NULL"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"new_buf != NULL"
	.size	.L.str.36, 16

	.type	.L__func__.gimp_image_parasite_find,@object # @__func__.gimp_image_parasite_find
.L__func__.gimp_image_parasite_find:
	.asciz	"gimp_image_parasite_find"
	.size	.L__func__.gimp_image_parasite_find, 25

	.type	.L__func__.gimp_image_parasite_list,@object # @__func__.gimp_image_parasite_list
.L__func__.gimp_image_parasite_list:
	.asciz	"gimp_image_parasite_list"
	.size	.L__func__.gimp_image_parasite_list, 25

	.type	.L__func__.gimp_image_parasite_attach,@object # @__func__.gimp_image_parasite_attach
.L__func__.gimp_image_parasite_attach:
	.asciz	"gimp_image_parasite_attach"
	.size	.L__func__.gimp_image_parasite_attach, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"parasite != NULL"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"undo-type\004Attach Parasite to Image"
	.size	.L.str.38, 35

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"icc-profile"
	.size	.L.str.39, 12

	.type	.L__func__.gimp_image_parasite_detach,@object # @__func__.gimp_image_parasite_detach
.L__func__.gimp_image_parasite_detach:
	.asciz	"gimp_image_parasite_detach"
	.size	.L__func__.gimp_image_parasite_detach, 27

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"name != NULL"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"undo-type\004Remove Parasite from Image"
	.size	.L.str.41, 37

	.type	.L__func__.gimp_image_get_new_tattoo,@object # @__func__.gimp_image_get_new_tattoo
.L__func__.gimp_image_get_new_tattoo:
	.asciz	"gimp_image_get_new_tattoo"
	.size	.L__func__.gimp_image_get_new_tattoo, 26

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%s: Tattoo state corrupted (integer overflow)."
	.size	.L.str.42, 47

	.type	.L__func__.gimp_image_get_tattoo_state,@object # @__func__.gimp_image_get_tattoo_state
.L__func__.gimp_image_get_tattoo_state:
	.asciz	"gimp_image_get_tattoo_state"
	.size	.L__func__.gimp_image_get_tattoo_state, 28

	.type	.L__func__.gimp_image_set_tattoo_state,@object # @__func__.gimp_image_set_tattoo_state
.L__func__.gimp_image_set_tattoo_state:
	.asciz	"gimp_image_set_tattoo_state"
	.size	.L__func__.gimp_image_set_tattoo_state, 28

	.type	.L__func__.gimp_image_get_projection,@object # @__func__.gimp_image_get_projection
.L__func__.gimp_image_get_projection:
	.asciz	"gimp_image_get_projection"
	.size	.L__func__.gimp_image_get_projection, 26

	.type	.L__func__.gimp_image_get_layer_tree,@object # @__func__.gimp_image_get_layer_tree
.L__func__.gimp_image_get_layer_tree:
	.asciz	"gimp_image_get_layer_tree"
	.size	.L__func__.gimp_image_get_layer_tree, 26

	.type	.L__func__.gimp_image_get_channel_tree,@object # @__func__.gimp_image_get_channel_tree
.L__func__.gimp_image_get_channel_tree:
	.asciz	"gimp_image_get_channel_tree"
	.size	.L__func__.gimp_image_get_channel_tree, 28

	.type	.L__func__.gimp_image_get_vectors_tree,@object # @__func__.gimp_image_get_vectors_tree
.L__func__.gimp_image_get_vectors_tree:
	.asciz	"gimp_image_get_vectors_tree"
	.size	.L__func__.gimp_image_get_vectors_tree, 28

	.type	.L__func__.gimp_image_get_layers,@object # @__func__.gimp_image_get_layers
.L__func__.gimp_image_get_layers:
	.asciz	"gimp_image_get_layers"
	.size	.L__func__.gimp_image_get_layers, 22

	.type	.L__func__.gimp_image_get_channels,@object # @__func__.gimp_image_get_channels
.L__func__.gimp_image_get_channels:
	.asciz	"gimp_image_get_channels"
	.size	.L__func__.gimp_image_get_channels, 24

	.type	.L__func__.gimp_image_get_vectors,@object # @__func__.gimp_image_get_vectors
.L__func__.gimp_image_get_vectors:
	.asciz	"gimp_image_get_vectors"
	.size	.L__func__.gimp_image_get_vectors, 23

	.type	.L__func__.gimp_image_get_n_layers,@object # @__func__.gimp_image_get_n_layers
.L__func__.gimp_image_get_n_layers:
	.asciz	"gimp_image_get_n_layers"
	.size	.L__func__.gimp_image_get_n_layers, 24

	.type	.L__func__.gimp_image_get_n_channels,@object # @__func__.gimp_image_get_n_channels
.L__func__.gimp_image_get_n_channels:
	.asciz	"gimp_image_get_n_channels"
	.size	.L__func__.gimp_image_get_n_channels, 26

	.type	.L__func__.gimp_image_get_n_vectors,@object # @__func__.gimp_image_get_n_vectors
.L__func__.gimp_image_get_n_vectors:
	.asciz	"gimp_image_get_n_vectors"
	.size	.L__func__.gimp_image_get_n_vectors, 25

	.type	.L__func__.gimp_image_get_layer_iter,@object # @__func__.gimp_image_get_layer_iter
.L__func__.gimp_image_get_layer_iter:
	.asciz	"gimp_image_get_layer_iter"
	.size	.L__func__.gimp_image_get_layer_iter, 26

	.type	.L__func__.gimp_image_get_channel_iter,@object # @__func__.gimp_image_get_channel_iter
.L__func__.gimp_image_get_channel_iter:
	.asciz	"gimp_image_get_channel_iter"
	.size	.L__func__.gimp_image_get_channel_iter, 28

	.type	.L__func__.gimp_image_get_vectors_iter,@object # @__func__.gimp_image_get_vectors_iter
.L__func__.gimp_image_get_vectors_iter:
	.asciz	"gimp_image_get_vectors_iter"
	.size	.L__func__.gimp_image_get_vectors_iter, 28

	.type	.L__func__.gimp_image_get_layer_list,@object # @__func__.gimp_image_get_layer_list
.L__func__.gimp_image_get_layer_list:
	.asciz	"gimp_image_get_layer_list"
	.size	.L__func__.gimp_image_get_layer_list, 26

	.type	.L__func__.gimp_image_get_channel_list,@object # @__func__.gimp_image_get_channel_list
.L__func__.gimp_image_get_channel_list:
	.asciz	"gimp_image_get_channel_list"
	.size	.L__func__.gimp_image_get_channel_list, 28

	.type	.L__func__.gimp_image_get_vectors_list,@object # @__func__.gimp_image_get_vectors_list
.L__func__.gimp_image_get_vectors_list:
	.asciz	"gimp_image_get_vectors_list"
	.size	.L__func__.gimp_image_get_vectors_list, 28

	.type	.L__func__.gimp_image_get_active_drawable,@object # @__func__.gimp_image_get_active_drawable
.L__func__.gimp_image_get_active_drawable:
	.asciz	"gimp_image_get_active_drawable"
	.size	.L__func__.gimp_image_get_active_drawable, 31

	.type	.L__func__.gimp_image_get_active_layer,@object # @__func__.gimp_image_get_active_layer
.L__func__.gimp_image_get_active_layer:
	.asciz	"gimp_image_get_active_layer"
	.size	.L__func__.gimp_image_get_active_layer, 28

	.type	.L__func__.gimp_image_get_active_channel,@object # @__func__.gimp_image_get_active_channel
.L__func__.gimp_image_get_active_channel:
	.asciz	"gimp_image_get_active_channel"
	.size	.L__func__.gimp_image_get_active_channel, 30

	.type	.L__func__.gimp_image_get_active_vectors,@object # @__func__.gimp_image_get_active_vectors
.L__func__.gimp_image_get_active_vectors:
	.asciz	"gimp_image_get_active_vectors"
	.size	.L__func__.gimp_image_get_active_vectors, 30

	.type	.L__func__.gimp_image_set_active_layer,@object # @__func__.gimp_image_set_active_layer
.L__func__.gimp_image_set_active_layer:
	.asciz	"gimp_image_set_active_layer"
	.size	.L__func__.gimp_image_set_active_layer, 28

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"layer == NULL || GIMP_IS_LAYER (layer)"
	.size	.L.str.43, 39

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"layer == NULL || (gimp_item_is_attached (GIMP_ITEM (layer)) && gimp_item_get_image (GIMP_ITEM (layer)) == image)"
	.size	.L.str.44, 113

	.type	.L__func__.gimp_image_set_active_channel,@object # @__func__.gimp_image_set_active_channel
.L__func__.gimp_image_set_active_channel:
	.asciz	"gimp_image_set_active_channel"
	.size	.L__func__.gimp_image_set_active_channel, 30

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"channel == NULL || GIMP_IS_CHANNEL (channel)"
	.size	.L.str.45, 45

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"channel == NULL || (gimp_item_is_attached (GIMP_ITEM (channel)) && gimp_item_get_image (GIMP_ITEM (channel)) == image)"
	.size	.L.str.46, 119

	.type	.L__func__.gimp_image_unset_active_channel,@object # @__func__.gimp_image_unset_active_channel
.L__func__.gimp_image_unset_active_channel:
	.asciz	"gimp_image_unset_active_channel"
	.size	.L__func__.gimp_image_unset_active_channel, 32

	.type	.L__func__.gimp_image_set_active_vectors,@object # @__func__.gimp_image_set_active_vectors
.L__func__.gimp_image_set_active_vectors:
	.asciz	"gimp_image_set_active_vectors"
	.size	.L__func__.gimp_image_set_active_vectors, 30

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"vectors == NULL || GIMP_IS_VECTORS (vectors)"
	.size	.L.str.47, 45

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"vectors == NULL || (gimp_item_is_attached (GIMP_ITEM (vectors)) && gimp_item_get_image (GIMP_ITEM (vectors)) == image)"
	.size	.L.str.48, 119

	.type	.L__func__.gimp_image_get_layer_by_tattoo,@object # @__func__.gimp_image_get_layer_by_tattoo
.L__func__.gimp_image_get_layer_by_tattoo:
	.asciz	"gimp_image_get_layer_by_tattoo"
	.size	.L__func__.gimp_image_get_layer_by_tattoo, 31

	.type	.L__func__.gimp_image_get_channel_by_tattoo,@object # @__func__.gimp_image_get_channel_by_tattoo
.L__func__.gimp_image_get_channel_by_tattoo:
	.asciz	"gimp_image_get_channel_by_tattoo"
	.size	.L__func__.gimp_image_get_channel_by_tattoo, 33

	.type	.L__func__.gimp_image_get_vectors_by_tattoo,@object # @__func__.gimp_image_get_vectors_by_tattoo
.L__func__.gimp_image_get_vectors_by_tattoo:
	.asciz	"gimp_image_get_vectors_by_tattoo"
	.size	.L__func__.gimp_image_get_vectors_by_tattoo, 33

	.type	.L__func__.gimp_image_get_layer_by_name,@object # @__func__.gimp_image_get_layer_by_name
.L__func__.gimp_image_get_layer_by_name:
	.asciz	"gimp_image_get_layer_by_name"
	.size	.L__func__.gimp_image_get_layer_by_name, 29

	.type	.L__func__.gimp_image_get_channel_by_name,@object # @__func__.gimp_image_get_channel_by_name
.L__func__.gimp_image_get_channel_by_name:
	.asciz	"gimp_image_get_channel_by_name"
	.size	.L__func__.gimp_image_get_channel_by_name, 31

	.type	.L__func__.gimp_image_get_vectors_by_name,@object # @__func__.gimp_image_get_vectors_by_name
.L__func__.gimp_image_get_vectors_by_name:
	.asciz	"gimp_image_get_vectors_by_name"
	.size	.L__func__.gimp_image_get_vectors_by_name, 31

	.type	.L__func__.gimp_image_reorder_item,@object # @__func__.gimp_image_reorder_item
.L__func__.gimp_image_reorder_item:
	.asciz	"gimp_image_reorder_item"
	.size	.L__func__.gimp_image_reorder_item, 24

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.49, 20

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp_item_get_image (item) == image"
	.size	.L.str.50, 36

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"tree != NULL"
	.size	.L.str.51, 13

	.type	.L__func__.gimp_image_raise_item,@object # @__func__.gimp_image_raise_item
.L__func__.gimp_image_raise_item:
	.asciz	"gimp_image_raise_item"
	.size	.L__func__.gimp_image_raise_item, 22

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.52, 32

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"index != -1"
	.size	.L.str.53, 12

	.type	.L__func__.gimp_image_raise_item_to_top,@object # @__func__.gimp_image_raise_item_to_top
.L__func__.gimp_image_raise_item_to_top:
	.asciz	"gimp_image_raise_item_to_top"
	.size	.L__func__.gimp_image_raise_item_to_top, 29

	.type	.L__func__.gimp_image_lower_item,@object # @__func__.gimp_image_lower_item
.L__func__.gimp_image_lower_item:
	.asciz	"gimp_image_lower_item"
	.size	.L__func__.gimp_image_lower_item, 22

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"container != NULL"
	.size	.L.str.54, 18

	.type	.L__func__.gimp_image_lower_item_to_bottom,@object # @__func__.gimp_image_lower_item_to_bottom
.L__func__.gimp_image_lower_item_to_bottom:
	.asciz	"gimp_image_lower_item_to_bottom"
	.size	.L__func__.gimp_image_lower_item_to_bottom, 32

	.type	.L__func__.gimp_image_add_layer,@object # @__func__.gimp_image_add_layer
.L__func__.gimp_image_add_layer:
	.asciz	"gimp_image_add_layer"
	.size	.L__func__.gimp_image_add_layer, 21

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"undo-type\004Add Layer"
	.size	.L.str.55, 20

	.type	.L__func__.gimp_image_remove_layer,@object # @__func__.gimp_image_remove_layer
.L__func__.gimp_image_remove_layer:
	.asciz	"gimp_image_remove_layer"
	.size	.L__func__.gimp_image_remove_layer, 24

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"GIMP_IS_LAYER (layer)"
	.size	.L.str.56, 22

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (layer))"
	.size	.L.str.57, 42

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp_item_get_image (GIMP_ITEM (layer)) == image"
	.size	.L.str.58, 49

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%s() was called from an undo function while the layer had a floating selection. Please report this at http://www.gimp.org/bugs/"
	.size	.L.str.59, 128

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"undo-type\004Remove Layer"
	.size	.L.str.60, 23

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"undo-type\004Remove Floating Selection"
	.size	.L.str.61, 36

	.type	.L__func__.gimp_image_add_layers,@object # @__func__.gimp_image_add_layers
.L__func__.gimp_image_add_layers:
	.asciz	"gimp_image_add_layers"
	.size	.L__func__.gimp_image_add_layers, 22

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"layers != NULL"
	.size	.L.str.62, 15

	.type	.L__func__.gimp_image_add_channel,@object # @__func__.gimp_image_add_channel
.L__func__.gimp_image_add_channel:
	.asciz	"gimp_image_add_channel"
	.size	.L__func__.gimp_image_add_channel, 23

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"undo-type\004Add Channel"
	.size	.L.str.63, 22

	.type	.L__func__.gimp_image_remove_channel,@object # @__func__.gimp_image_remove_channel
.L__func__.gimp_image_remove_channel:
	.asciz	"gimp_image_remove_channel"
	.size	.L__func__.gimp_image_remove_channel, 26

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"GIMP_IS_CHANNEL (channel)"
	.size	.L.str.64, 26

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (channel))"
	.size	.L.str.65, 44

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp_item_get_image (GIMP_ITEM (channel)) == image"
	.size	.L.str.66, 51

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%s() was called from an undo function while the channel had a floating selection. Please report this at http://www.gimp.org/bugs/"
	.size	.L.str.67, 130

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"undo-type\004Remove Channel"
	.size	.L.str.68, 25

	.type	.L__func__.gimp_image_add_vectors,@object # @__func__.gimp_image_add_vectors
.L__func__.gimp_image_add_vectors:
	.asciz	"gimp_image_add_vectors"
	.size	.L__func__.gimp_image_add_vectors, 23

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"undo-type\004Add Path"
	.size	.L.str.69, 19

	.type	.L__func__.gimp_image_remove_vectors,@object # @__func__.gimp_image_remove_vectors
.L__func__.gimp_image_remove_vectors:
	.asciz	"gimp_image_remove_vectors"
	.size	.L__func__.gimp_image_remove_vectors, 26

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"GIMP_IS_VECTORS (vectors)"
	.size	.L.str.70, 26

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (vectors))"
	.size	.L.str.71, 44

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp_item_get_image (GIMP_ITEM (vectors)) == image"
	.size	.L.str.72, 51

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"undo-type\004Remove Path"
	.size	.L.str.73, 22

	.type	.L__func__.gimp_image_coords_in_active_pickable,@object # @__func__.gimp_image_coords_in_active_pickable
.L__func__.gimp_image_coords_in_active_pickable:
	.asciz	"gimp_image_coords_in_active_pickable"
	.size	.L__func__.gimp_image_coords_in_active_pickable, 37

	.type	.L__func__.gimp_image_invalidate_previews,@object # @__func__.gimp_image_invalidate_previews
.L__func__.gimp_image_invalidate_previews:
	.asciz	"gimp_image_invalidate_previews"
	.size	.L__func__.gimp_image_invalidate_previews, 31

	.type	gimp_image_parent_class,@object # @gimp_image_parent_class
	.local	gimp_image_parent_class
	.comm	gimp_image_parent_class,8,8
	.type	GimpImage_private_offset,@object # @GimpImage_private_offset
	.local	GimpImage_private_offset
	.comm	GimpImage_private_offset,4,4
	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"mode-changed"
	.size	.L.str.74, 13

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"alpha-changed"
	.size	.L.str.75, 14

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"floating-selection-changed"
	.size	.L.str.76, 27

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"active-layer-changed"
	.size	.L.str.77, 21

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"active-channel-changed"
	.size	.L.str.78, 23

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"active-vectors-changed"
	.size	.L.str.79, 23

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"component-visibility-changed"
	.size	.L.str.80, 29

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"component-active-changed"
	.size	.L.str.81, 25

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"mask-changed"
	.size	.L.str.82, 13

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"resolution-changed"
	.size	.L.str.83, 19

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"size-changed-detailed"
	.size	.L.str.84, 22

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"unit-changed"
	.size	.L.str.85, 13

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"quick-mask-changed"
	.size	.L.str.86, 19

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"selection-invalidate"
	.size	.L.str.87, 21

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"clean"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"dirty"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"saved"
	.size	.L.str.90, 6

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"exported"
	.size	.L.str.91, 9

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"guide-added"
	.size	.L.str.92, 12

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"guide-removed"
	.size	.L.str.93, 14

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"guide-moved"
	.size	.L.str.94, 12

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"sample-point-added"
	.size	.L.str.95, 19

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"sample-point-removed"
	.size	.L.str.96, 21

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"sample-point-moved"
	.size	.L.str.97, 19

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"parasite-attached"
	.size	.L.str.98, 18

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"parasite-detached"
	.size	.L.str.99, 18

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"colormap-changed"
	.size	.L.str.100, 17

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"undo-event"
	.size	.L.str.101, 11

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-image"
	.size	.L.str.102, 11

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"id"
	.size	.L.str.103, 3

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimpimage.c"
	.size	.L.str.104, 12

	.type	.L__func__.gimp_image_constructed,@object # @__func__.gimp_image_constructed
.L__func__.gimp_image_constructed:
	.asciz	"gimp_image_constructed"
	.size	.L__func__.gimp_image_constructed, 23

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"GIMP_IS_GIMP (image->gimp)"
	.size	.L.str.105, 27

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"notify::transparency-type"
	.size	.L.str.106, 26

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"notify::transparency-size"
	.size	.L.str.107, 26

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"notify::layer-previews"
	.size	.L.str.108, 23

	.type	.L__func__.gimp_image_set_property,@object # @__func__.gimp_image_set_property
.L__func__.gimp_image_set_property:
	.asciz	"gimp_image_set_property"
	.size	.L__func__.gimp_image_set_property, 24

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.109, 54

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"property"
	.size	.L.str.110, 9

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Qmask"
	.size	.L.str.111, 6

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"%s-%d"
	.size	.L.str.112, 6

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"operation"
	.size	.L.str.113, 10

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"gegl:over"
	.size	.L.str.114, 10

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"output"
	.size	.L.str.115, 7

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"input"
	.size	.L.str.116, 6

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"aux"
	.size	.L.str.117, 4

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"notify::active-item"
	.size	.L.str.118, 20

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"name-changed"
	.size	.L.str.119, 13

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"color-changed"
	.size	.L.str.120, 14

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"add"
	.size	.L.str.121, 4

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"remove"
	.size	.L.str.122, 7

	.type	.L__func__.gimp_image_format_display_uri,@object # @__func__.gimp_image_format_display_uri
.L__func__.gimp_image_format_display_uri:
	.asciz	"gimp_image_format_display_uri"
	.size	.L__func__.gimp_image_format_display_uri, 30

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"%s"
	.size	.L.str.123, 3

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	" (exported)"
	.size	.L.str.124, 12

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	" (overwritten)"
	.size	.L.str.125, 15

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Unexpected code path, Save+export implementation is buggy!"
	.size	.L.str.126, 59

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	" (imported)"
	.size	.L.str.127, 12

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"[%s]"
	.size	.L.str.128, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
