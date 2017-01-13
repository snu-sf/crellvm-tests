	.text
	.file	"gimpdrawabletreeview.bc"
	.globl	gimp_drawable_tree_view_get_type
	.align	16, 0x90
	.type	gimp_drawable_tree_view_get_type,@function
gimp_drawable_tree_view_get_type:       # @gimp_drawable_tree_view_get_type
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
	movq	gimp_drawable_tree_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_drawable_tree_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_item_tree_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1072, %edx             # imm = 0x430
	movabsq	$gimp_drawable_tree_view_class_intern_init, %rdi
	movl	$336, %r8d              # imm = 0x150
	movabsq	$gimp_drawable_tree_view_init, %rcx
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
	callq	gimp_container_view_interface_get_type
	movabsq	$gimp_drawable_tree_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_drawable_tree_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_drawable_tree_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_tree_view_get_type, .Lfunc_end0-gimp_drawable_tree_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_class_intern_init,@function
gimp_drawable_tree_view_class_intern_init: # @gimp_drawable_tree_view_class_intern_init
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
	movq	%rax, gimp_drawable_tree_view_parent_class
	cmpl	$0, GimpDrawableTreeView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDrawableTreeView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_drawable_tree_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_tree_view_class_intern_init, .Lfunc_end1-gimp_drawable_tree_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_init,@function
gimp_drawable_tree_view_init:           # @gimp_drawable_tree_view_init
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
	.size	gimp_drawable_tree_view_init, .Lfunc_end2-gimp_drawable_tree_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_view_iface_init,@function
gimp_drawable_tree_view_view_iface_init: # @gimp_drawable_tree_view_view_iface_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_interface_peek_parent
	movabsq	$gimp_drawable_tree_view_select_item, %rdi
	movq	%rax, parent_view_iface
	movq	-8(%rbp), %rax
	movq	%rdi, 16(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_tree_view_view_iface_init, .Lfunc_end3-gimp_drawable_tree_view_view_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_class_init,@function
gimp_drawable_tree_view_class_init:     # @gimp_drawable_tree_view_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.1, %rsi
	movabsq	$gimp_drawable_tree_view_set_image, %rcx
	movabsq	$gimp_drawable_tree_view_drop_color, %rdx
	movabsq	$gimp_drawable_tree_view_drop_viewable, %r8
	movabsq	$gimp_drawable_tree_view_drop_possible, %r9
	movabsq	$gimp_drawable_tree_view_constructed, %r10
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 832(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 840(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 848(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 888(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 1048(%rax)
	callq	gettext
	movq	-32(%rbp), %rcx
	movq	%rax, 1056(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_tree_view_class_init, .Lfunc_end4-gimp_drawable_tree_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_constructed,@function
gimp_drawable_tree_view_constructed:    # @gimp_drawable_tree_view_constructed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_drawable_tree_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_drawable_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_item_tree_view_get_new_button
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movabsq	$gimp_drawable_tree_view_new_pattern_dropped, %rdx
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	gimp_dnd_viewable_dest_add
	movq	-24(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_item_tree_view_get_new_button
	movabsq	$gimp_drawable_tree_view_new_color_dropped, %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_color_dest_add
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_color_dest_add
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-16(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movl	%eax, -92(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_tree_view_constructed, .Lfunc_end5-gimp_drawable_tree_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_drop_possible,@function
gimp_drawable_tree_view_drop_possible:  # @gimp_drawable_tree_view_drop_possible
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
	subq	$112, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	gimp_drawable_tree_view_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	832(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	movq	-64(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB6_11
# BB#1:                                 # %if.then
	cmpl	$5, -20(%rbp)
	je	.LBB6_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$16, -20(%rbp)
	jne	.LBB6_10
.LBB6_3:                                # %if.then.4
	cmpq	$0, -40(%rbp)
	je	.LBB6_6
# BB#4:                                 # %lor.lhs.false.6
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	jne	.LBB6_6
# BB#5:                                 # %lor.lhs.false.11
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB6_7
.LBB6_6:                                # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB6_12
.LBB6_7:                                # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.18
	movq	-64(%rbp), %rax
	movl	$3, (%rax)
.LBB6_9:                                # %if.end.19
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.20
	movl	$1, -4(%rbp)
	jmp	.LBB6_12
.LBB6_11:                               # %if.end.21
	movl	$0, -4(%rbp)
.LBB6_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_tree_view_drop_possible, .Lfunc_end6-gimp_drawable_tree_view_drop_possible
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_drawable_tree_view_drop_viewable,@function
gimp_drawable_tree_view_drop_viewable:  # @gimp_drawable_tree_view_drop_viewable
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_10
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_pattern_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true.3
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.5
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.6
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.8
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%ecx, %ecx
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movl	$0, (%rsp)
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	gimp_drawable_bucket_fill_full
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	jmp	.LBB7_11
.LBB7_10:                               # %if.end.18
	movq	gimp_drawable_tree_view_parent_class, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	840(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	*%rax
.LBB7_11:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_drawable_tree_view_drop_viewable, .Lfunc_end7-gimp_drawable_tree_view_drop_viewable
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_drawable_tree_view_drop_color,@function
gimp_drawable_tree_view_drop_color:     # @gimp_drawable_tree_view_drop_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r8d         # 4-byte Reload
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movl	$0, (%rsp)
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_drawable_bucket_fill_full
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
.LBB8_2:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_tree_view_drop_color, .Lfunc_end8-gimp_drawable_tree_view_drop_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_set_image,@function
gimp_drawable_tree_view_set_image:      # @gimp_drawable_tree_view_set_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	cmpq	$0, %rax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_drawable_tree_view_floating_selection_changed, %rdi
	movq	-8(%rbp), %r9
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB9_2:                                # %if.end
	movq	gimp_drawable_tree_view_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	888(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	cmpq	$0, %rax
	je	.LBB9_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_drawable_tree_view_floating_selection_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB9_4:                                # %if.end.10
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_drawable_tree_view_set_image, .Lfunc_end9-gimp_drawable_tree_view_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_new_pattern_dropped,@function
gimp_drawable_tree_view_new_pattern_dropped: # @gimp_drawable_tree_view_new_pattern_dropped
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	gimp_drawable_tree_view_new_dropped
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_drawable_tree_view_new_pattern_dropped, .Lfunc_end10-gimp_drawable_tree_view_new_pattern_dropped
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_new_color_dropped,@function
gimp_drawable_tree_view_new_color_dropped: # @gimp_drawable_tree_view_new_color_dropped
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_drawable_tree_view_new_dropped
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_drawable_tree_view_new_color_dropped, .Lfunc_end11-gimp_drawable_tree_view_new_color_dropped
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_new_dropped,@function
gimp_drawable_tree_view_new_dropped:    # @gimp_drawable_tree_view_new_dropped
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movabsq	$.L.str.3, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$29, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	952(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB12_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movabsq	$.L.str.4, %rsi
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB12_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB12_4
# BB#3:                                 # %if.then.9
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	jmp	.LBB12_5
.LBB12_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -56(%rbp)
.LBB12_5:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	-56(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	callq	gimp_context_get_paint_mode
	movq	-56(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_context_get_opacity
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	-124(%rbp), %esi        # 4-byte Reload
	movl	-128(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movl	$0, (%rsp)
	movsd	-152(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-152(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_drawable_bucket_fill_full
.LBB12_6:                               # %if.end.20
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	callq	gimp_image_undo_group_end
	movq	-8(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_drawable_tree_view_new_dropped, .Lfunc_end12-gimp_drawable_tree_view_new_dropped
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_floating_selection_changed,@function
gimp_drawable_tree_view_floating_selection_changed: # @gimp_drawable_tree_view_floating_selection_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	920(%rsi), %rsi
	movq	-8(%rbp), %rdi
	callq	*%rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_select_item
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_drawable_tree_view_floating_selection_changed, .Lfunc_end13-gimp_drawable_tree_view_floating_selection_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_tree_view_select_item,@function
gimp_drawable_tree_view_select_item:    # @gimp_drawable_tree_view_select_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	cmpq	$0, %rax
	je	.LBB14_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_floating_selection
	movb	$1, %cl
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB14_4
# BB#2:                                 # %lor.lhs.false
	movb	$1, %al
	cmpq	$0, -48(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
	je	.LBB14_4
# BB#3:                                 # %lor.rhs
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -57(%rbp)          # 1-byte Spill
.LBB14_4:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -36(%rbp)
.LBB14_5:                               # %if.end
	cmpl	$0, -36(%rbp)
	je	.LBB14_7
# BB#6:                                 # %if.then.10
	movq	parent_view_iface, %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end.12
	movl	-36(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_drawable_tree_view_select_item, .Lfunc_end14-gimp_drawable_tree_view_select_item
	.cfi_endproc

	.type	gimp_drawable_tree_view_get_type.g_define_type_id__volatile,@object # @gimp_drawable_tree_view_get_type.g_define_type_id__volatile
	.local	gimp_drawable_tree_view_get_type.g_define_type_id__volatile
	.comm	gimp_drawable_tree_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDrawableTreeView"
	.size	.L.str, 21

	.type	gimp_drawable_tree_view_get_type.g_implement_interface_info,@object # @gimp_drawable_tree_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_drawable_tree_view_get_type.g_implement_interface_info:
	.quad	gimp_drawable_tree_view_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_drawable_tree_view_get_type.g_implement_interface_info, 24

	.type	gimp_drawable_tree_view_parent_class,@object # @gimp_drawable_tree_view_parent_class
	.local	gimp_drawable_tree_view_parent_class
	.comm	gimp_drawable_tree_view_parent_class,8,8
	.type	GimpDrawableTreeView_private_offset,@object # @GimpDrawableTreeView_private_offset
	.local	GimpDrawableTreeView_private_offset
	.comm	GimpDrawableTreeView_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Lock pixels"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"New Layer"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-bucket-fill-tool"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"floating-selection-changed"
	.size	.L.str.5, 27

	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
