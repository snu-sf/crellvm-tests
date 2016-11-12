	.text
	.file	"gimpstatusbar.bc"
	.globl	gimp_statusbar_get_type
	.align	16, 0x90
	.type	gimp_statusbar_get_type,@function
gimp_statusbar_get_type:                # @gimp_statusbar_get_type
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
	movq	gimp_statusbar_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_statusbar_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_statusbar_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$880, %edx              # imm = 0x370
	movabsq	$gimp_statusbar_class_intern_init, %rdi
	movl	$400, %r8d              # imm = 0x190
	movabsq	$gimp_statusbar_init, %rcx
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
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_statusbar_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_statusbar_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_statusbar_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_statusbar_get_type, .Lfunc_end0-gimp_statusbar_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_class_intern_init,@function
gimp_statusbar_class_intern_init:       # @gimp_statusbar_class_intern_init
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
	movq	%rax, gimp_statusbar_parent_class
	cmpl	$0, GimpStatusbar_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpStatusbar_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_statusbar_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_statusbar_class_intern_init, .Lfunc_end1-gimp_statusbar_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_statusbar_init,@function
gimp_statusbar_init:                    # @gimp_statusbar_init
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
	movabsq	$g_str_hash, %rax
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 184(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 192(%rdi)
	movq	%rax, %rdi
	callq	g_hash_table_new_full
	movabsq	$.L.str.19, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 208(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_get_context_id
	movq	-8(%rbp), %rcx
	movl	%eax, 224(%rcx)
	movq	-8(%rbp), %rcx
	movb	$0, 236(%rcx)
	movq	-8(%rbp), %rcx
	movb	$0, 268(%rcx)
	movq	-8(%rbp), %rcx
	movb	$0, 300(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 384(%rcx)
	movq	-8(%rbp), %rcx
	movl	$0, 388(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_statusbar_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_statusbar_get_message_area
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rcx
	movq	%rax, 360(%rcx)
	movq	-40(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	360(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_statusbar_hbox_size_request, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_new
	movq	-8(%rbp), %rcx
	movq	%rax, 336(%rcx)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	movss	%xmm0, -100(%rbp)       # 4-byte Spill
	movss	-100(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	callq	gimp_unit_store_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_unit_combo_box_new_with_model
	movq	-8(%rbp), %rsi
	movq	%rax, 344(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movabsq	$.L.str.22, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_statusbar_unit_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	344(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_scale_combo_box_new
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 352(%rcx)
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movabsq	$.L.str.22, %rsi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-16(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	352(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_statusbar_scale_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_statusbar_scale_activated, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	352(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movq	-8(%rbp), %rcx
	movq	360(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_statusbar_label_expose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	360(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movabsq	$.L.str.26, %rsi
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.27, %rdx
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movabsq	$.L.str.28, %rcx
	movl	$3, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_new
	movq	-8(%rbp), %rcx
	movq	%rax, 368(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movq	-8(%rbp), %rcx
	movq	368(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	callq	gtk_button_new
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 376(%rdi)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	376(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.29, %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_statusbar_progress_canceled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -240(%rbp)        # 8-byte Spill
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_statusbar_init, .Lfunc_end2-gimp_statusbar_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_iface_init,@function
gimp_statusbar_progress_iface_init:     # @gimp_statusbar_progress_iface_init
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
	movabsq	$gimp_statusbar_progress_message, %rax
	movabsq	$gimp_statusbar_progress_pulse, %rcx
	movabsq	$gimp_statusbar_progress_get_value, %rdx
	movabsq	$gimp_statusbar_progress_set_value, %rsi
	movabsq	$gimp_statusbar_progress_set_text, %r8
	movabsq	$gimp_statusbar_progress_is_active, %r9
	movabsq	$gimp_statusbar_progress_end, %r10
	movabsq	$gimp_statusbar_progress_start, %r11
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r11, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r10, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_statusbar_progress_iface_init, .Lfunc_end3-gimp_statusbar_progress_iface_init
	.cfi_endproc

	.globl	gimp_statusbar_new
	.align	16, 0x90
	.type	gimp_statusbar_new,@function
gimp_statusbar_new:                     # @gimp_statusbar_new
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
	callq	gimp_statusbar_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_statusbar_new, .Lfunc_end4-gimp_statusbar_new
	.cfi_endproc

	.globl	gimp_statusbar_set_shell
	.align	16, 0x90
	.type	gimp_statusbar_set_shell,@function
gimp_statusbar_set_shell:               # @gimp_statusbar_set_shell
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_set_shell, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_29
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_set_shell, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_29
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	184(%rcx), %rax
	jne	.LBB5_26
# BB#25:                                # %if.then.41
	jmp	.LBB5_29
.LBB5_26:                               # %if.end.42
	movq	-8(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB5_28
# BB#27:                                # %if.then.45
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_statusbar_shell_scaled, %rdx
	movq	-8(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_statusbar_shell_status_notify, %rdi
	movq	-8(%rbp), %r9
	movq	184(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB5_28:                               # %if.end.50
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_statusbar_shell_scaled, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 184(%rdx)
	movq	-8(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_statusbar_shell_status_notify, %rcx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	184(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB5_29:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_statusbar_set_shell, .Lfunc_end5-gimp_statusbar_set_shell
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_shell_scaled,@function
gimp_statusbar_shell_scaled:            # @gimp_statusbar_shell_scaled
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rdi
	callq	gimp_display_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_resolution
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	movl	296(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rax
	movl	300(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movsd	496(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movsd	504(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
.LBB6_3:                                # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_statusbar_scale_changed, %rdx
	movq	-16(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	352(%rdi), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_scale_combo_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	256(%rsi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_zoom_model_get_factor
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_scale_combo_box_set_scale
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_statusbar_scale_changed, %rax
	movq	-16(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-16(%rbp), %rdi
	movq	344(%rdi), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movb	$2, %al
	callq	gimp_unit_store_set_resolutions
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_statusbar_unit_changed, %rdi
	movq	-16(%rbp), %r9
	movq	344(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	344(%rdi), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_unit_combo_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	184(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_set_active
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_statusbar_unit_changed, %rax
	movq	-16(%rbp), %rdi
	movq	344(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-8(%rbp), %rdi
	cmpl	$0, 184(%rdi)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jne	.LBB6_5
# BB#4:                                 # %if.then.26
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.32, %rdx
	movq	-16(%rbp), %rcx
	addq	$236, %rcx
	movq	%rcx, %rdi
	movb	$0, %al
	callq	g_snprintf
	movl	$32, %r8d
	movl	%r8d, %esi
	movabsq	$.L.str.33, %rdx
	movq	-16(%rbp), %rcx
	addq	$268, %rcx              # imm = 0x10C
	movq	%rcx, %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_snprintf
	movl	$32, %r8d
	movl	%r8d, %esi
	movabsq	$.L.str.34, %rdx
	movq	-16(%rbp), %rcx
	addq	$300, %rcx              # imm = 0x12C
	movq	%rcx, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.32
	movq	-16(%rbp), %rax
	addq	$236, %rax
	movq	-8(%rbp), %rcx
	movl	184(%rcx), %edi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_digits
	movq	-8(%rbp), %rcx
	movl	184(%rcx), %edi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_digits
	movl	$32, %edi
	movl	%edi, %esi
	movabsq	$.L.str.35, %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	g_snprintf
	movq	-16(%rbp), %rdx
	addq	$268, %rdx              # imm = 0x10C
	movq	-16(%rbp), %rsi
	addq	$236, %rsi
	movq	%rdx, %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	strcpy
	movq	-16(%rbp), %rdx
	addq	$300, %rdx              # imm = 0x12C
	movq	-8(%rbp), %rsi
	movl	184(%rsi), %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_digits
	movl	$32, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.36, %rdx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB6_6:                                # %if.end.50
	movl	$2, %esi
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %ecx
	subl	-44(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	subl	-48(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	gimp_statusbar_update_cursor
	movq	-16(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_label_get_text
	movq	%rax, -40(%rbp)
	cmpq	$0, gimp_statusbar_shell_scaled.layout
	jne	.LBB6_8
# BB#7:                                 # %if.then.57
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	336(%rcx), %rdi
	callq	gtk_widget_create_pango_layout
	movq	%rax, gimp_statusbar_shell_scaled.layout
.LBB6_8:                                # %if.end.60
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	gimp_statusbar_shell_scaled.layout, %rdi
	movq	-40(%rbp), %rsi
	callq	pango_layout_set_text
	leaq	-68(%rbp), %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	gimp_statusbar_shell_scaled.layout, %rdi
	callq	pango_layout_get_pixel_size
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movq	336(%rsi), %rdi
	movl	-68(%rbp), %esi
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rdi
	callq	gimp_statusbar_clear_cursor
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_statusbar_shell_scaled, .Lfunc_end6-gimp_statusbar_shell_scaled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_shell_status_notify,@function
gimp_statusbar_shell_status_notify:     # @gimp_statusbar_shell_status_notify
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
	subq	$32, %rsp
	movabsq	$.L.str.7, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$.L.str.17, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	544(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-32(%rbp), %r8          # 8-byte Reload
	movb	$0, %al
	callq	gimp_statusbar_replace
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_statusbar_shell_status_notify, .Lfunc_end7-gimp_statusbar_shell_status_notify
	.cfi_endproc

	.globl	gimp_statusbar_get_visible
	.align	16, 0x90
	.type	gimp_statusbar_get_visible,@function
gimp_statusbar_get_visible:             # @gimp_statusbar_get_visible
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_get_visible, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 388(%rax)
	je	.LBB8_14
# BB#13:                                # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB8_15
.LBB8_14:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_visible
	movl	%eax, -4(%rbp)
.LBB8_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_statusbar_get_visible, .Lfunc_end8-gimp_statusbar_get_visible
	.cfi_endproc

	.globl	gimp_statusbar_set_visible
	.align	16, 0x90
	.type	gimp_statusbar_set_visible,@function
gimp_statusbar_set_visible:             # @gimp_statusbar_set_visible
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_statusbar_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_set_visible, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_17
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 388(%rax)
	je	.LBB9_16
# BB#13:                                # %if.then.12
	cmpl	$0, -12(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.14
	movq	-8(%rbp), %rax
	movl	$0, 388(%rax)
	jmp	.LBB9_17
.LBB9_15:                               # %if.end.16
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.17
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_visible
.LBB9_17:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_statusbar_set_visible, .Lfunc_end9-gimp_statusbar_set_visible
	.cfi_endproc

	.globl	gimp_statusbar_empty
	.align	16, 0x90
	.type	gimp_statusbar_empty,@function
gimp_statusbar_empty:                   # @gimp_statusbar_empty
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_empty, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gtk_widget_hide
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gtk_widget_hide
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gtk_widget_hide
.LBB10_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_statusbar_empty, .Lfunc_end10-gimp_statusbar_empty
	.cfi_endproc

	.globl	gimp_statusbar_fill
	.align	16, 0x90
	.type	gimp_statusbar_fill,@function
gimp_statusbar_fill:                    # @gimp_statusbar_fill
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_fill, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	344(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdi
	callq	gtk_widget_show
.LBB11_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_statusbar_fill, .Lfunc_end11-gimp_statusbar_fill
	.cfi_endproc

	.globl	gimp_statusbar_override_window_title
	.align	16, 0x90
	.type	gimp_statusbar_override_window_title,@function
gimp_statusbar_override_window_title:   # @gimp_statusbar_override_window_title
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_override_window_title, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_16
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_window_is_iconified
	cmpl	$0, %eax
	je	.LBB12_16
# BB#13:                                # %if.then.18
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_peek
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.22
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
.LBB12_15:                              # %if.end.25
	jmp	.LBB12_16
.LBB12_16:                              # %if.end.26
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_statusbar_override_window_title, .Lfunc_end12-gimp_statusbar_override_window_title
	.cfi_endproc

	.globl	gimp_statusbar_peek
	.align	16, 0x90
	.type	gimp_statusbar_peek,@function
gimp_statusbar_peek:                    # @gimp_statusbar_peek
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_peek, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_24
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_peek, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_24
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_statusbar_get_context_id
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB13_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_23
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB13_21
# BB#20:                                # %if.then.22
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_24
.LBB13_21:                              # %if.end.23
                                        #   in Loop: Header=BB13_18 Depth=1
	jmp	.LBB13_22
.LBB13_22:                              # %for.inc
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_18
.LBB13_23:                              # %for.end
	movq	$0, -8(%rbp)
.LBB13_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_statusbar_peek, .Lfunc_end13-gimp_statusbar_peek
	.cfi_endproc

	.globl	gimp_statusbar_restore_window_title
	.align	16, 0x90
	.type	gimp_statusbar_restore_window_title,@function
gimp_statusbar_restore_window_title:    # @gimp_statusbar_restore_window_title
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_statusbar_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_restore_window_title, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_14
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_window_is_iconified
	cmpl	$0, %eax
	je	.LBB14_14
# BB#13:                                # %if.then.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB14_14:                              # %if.end.20
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_statusbar_restore_window_title, .Lfunc_end14-gimp_statusbar_restore_window_title
	.cfi_endproc

	.globl	gimp_statusbar_push
	.align	16, 0x90
	.type	gimp_statusbar_push,@function
gimp_statusbar_push:                    # @gimp_statusbar_push
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       # 16-byte Spill
	movaps	%xmm6, -304(%rbp)       # 16-byte Spill
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movaps	%xmm4, -336(%rbp)       # 16-byte Spill
	movaps	%xmm3, -352(%rbp)       # 16-byte Spill
	movaps	%xmm2, -368(%rbp)       # 16-byte Spill
	movaps	%xmm1, -384(%rbp)       # 16-byte Spill
	movaps	%xmm0, -400(%rbp)       # 16-byte Spill
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	je	.LBB15_25
# BB#24:                                # %entry
	movaps	-400(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -112(%rbp)
.LBB15_25:                              # %entry
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_23
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_23
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	jmp	.LBB15_18
.LBB15_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB15_20
# BB#19:                                # %if.then.19
	jmp	.LBB15_21
.LBB15_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_23
.LBB15_21:                              # %if.end.21
	jmp	.LBB15_22
.LBB15_22:                              # %do.end.22
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	-272(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$32, (%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %r8
	callq	gimp_statusbar_push_valist
	leaq	-64(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB15_23:                              # %return
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_statusbar_push, .Lfunc_end15-gimp_statusbar_push
	.cfi_endproc

	.globl	gimp_statusbar_push_valist
	.align	16, 0x90
	.type	gimp_statusbar_push_valist,@function
gimp_statusbar_push_valist:             # @gimp_statusbar_push_valist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_valist, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_40
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB16_15
# BB#14:                                # %if.then.13
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_valist, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_40
.LBB16_16:                              # %if.end.15
	jmp	.LBB16_17
.LBB16_17:                              # %do.end.16
	jmp	.LBB16_18
.LBB16_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB16_20
# BB#19:                                # %if.then.19
	jmp	.LBB16_21
.LBB16_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_valist, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_40
.LBB16_21:                              # %if.end.21
	jmp	.LBB16_22
.LBB16_22:                              # %do.end.22
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_statusbar_vprintf
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_statusbar_get_context_id
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 192(%rsi)
	je	.LBB16_27
# BB#23:                                # %if.then.26
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jne	.LBB16_26
# BB#24:                                # %land.lhs.true.30
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_26
# BB#25:                                # %if.then.33
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB16_40
.LBB16_26:                              # %if.end.34
	jmp	.LBB16_27
.LBB16_27:                              # %if.end.35
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB16_28:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB16_36
# BB#29:                                # %for.body
                                        #   in Loop: Header=BB16_28 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jne	.LBB16_31
# BB#30:                                # %if.then.41
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 192(%rsi)
	movq	-48(%rbp), %rdi
	callq	gimp_statusbar_msg_free
	jmp	.LBB16_36
.LBB16_31:                              # %if.end.45
                                        #   in Loop: Header=BB16_28 Depth=1
	jmp	.LBB16_32
.LBB16_32:                              # %for.inc
                                        #   in Loop: Header=BB16_28 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB16_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB16_28 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB16_35
.LBB16_34:                              # %cond.false
                                        #   in Loop: Header=BB16_28 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB16_35
.LBB16_35:                              # %cond.end
                                        #   in Loop: Header=BB16_28 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB16_28
.LBB16_36:                              # %for.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB16_38
# BB#37:                                # %if.then.53
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_insert
	movq	-8(%rbp), %rsi
	movq	%rax, 192(%rsi)
	jmp	.LBB16_39
.LBB16_38:                              # %if.else.57
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 192(%rsi)
.LBB16_39:                              # %if.end.61
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_update
.LBB16_40:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_statusbar_push_valist, .Lfunc_end16-gimp_statusbar_push_valist
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_vprintf,@function
gimp_statusbar_vprintf:                 # @gimp_statusbar_vprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_strdup_vprintf
	movl	$13, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.LBB17_2:                               # %if.end
	movl	$10, %esi
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_4
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.LBB17_4:                               # %if.end.5
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_statusbar_vprintf, .Lfunc_end17-gimp_statusbar_vprintf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_get_context_id,@function
gimp_statusbar_get_context_id:          # @gimp_statusbar_get_context_id
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	200(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 208(%rax)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB18_2:                               # %if.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_statusbar_get_context_id, .Lfunc_end18-gimp_statusbar_get_context_id
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_msg_free,@function
gimp_statusbar_msg_free:                # @gimp_statusbar_msg_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_free
# BB#1:                                 # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_statusbar_msg_free, .Lfunc_end19-gimp_statusbar_msg_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_update,@function
gimp_statusbar_update:                  # @gimp_statusbar_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 192(%rdi)
	je	.LBB20_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 384(%rax)
	je	.LBB20_5
# BB#2:                                 # %if.then.3
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_get_context_id
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rsi
	cmpl	(%rsi), %eax
	je	.LBB20_4
# BB#3:                                 # %if.then.5
	jmp	.LBB20_10
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %if.end.6
	jmp	.LBB20_6
.LBB20_6:                               # %if.end.7
	cmpq	$0, -16(%rbp)
	je	.LBB20_9
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB20_9
# BB#8:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	callq	gimp_statusbar_set_text
	jmp	.LBB20_10
.LBB20_9:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$.L.str.12, %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_set_text
.LBB20_10:                              # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_statusbar_update, .Lfunc_end20-gimp_statusbar_update
	.cfi_endproc

	.globl	gimp_statusbar_push_coords
	.align	16, 0x90
	.type	gimp_statusbar_push_coords,@function
gimp_statusbar_push_coords:             # @gimp_statusbar_push_coords
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
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp66:
	.cfi_offset %rbx, -24
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movq	%r9, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
	movq	%rax, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_34
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	cmpq	$0, -48(%rbp)
	je	.LBB21_15
# BB#14:                                # %if.then.13
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_coords, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_34
.LBB21_16:                              # %if.end.15
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.16
	jmp	.LBB21_18
.LBB21_18:                              # %do.body.17
	cmpq	$0, -64(%rbp)
	je	.LBB21_20
# BB#19:                                # %if.then.19
	jmp	.LBB21_21
.LBB21_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_coords, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_34
.LBB21_21:                              # %if.end.21
	jmp	.LBB21_22
.LBB21_22:                              # %do.end.22
	cmpq	$0, -80(%rbp)
	jne	.LBB21_24
# BB#23:                                # %if.then.24
	movabsq	$.L.str.12, %rax
	movq	%rax, -80(%rbp)
.LBB21_24:                              # %if.end.25
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-36(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	je	.LBB21_25
	jmp	.LBB21_35
.LBB21_35:                              # %if.end.25
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB21_26
	jmp	.LBB21_36
.LBB21_36:                              # %if.end.25
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB21_27
	jmp	.LBB21_28
.LBB21_25:                              # %sw.bb
	cvttsd2si	-56(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -56(%rbp)
	cvttsd2si	-72(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB21_28
.LBB21_26:                              # %sw.bb.30
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movsd	%xmm0, -56(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB21_28
.LBB21_27:                              # %sw.bb.33
	jmp	.LBB21_28
.LBB21_28:                              # %sw.epilog
	movq	-88(%rbp), %rax
	cmpl	$0, 184(%rax)
	jne	.LBB21_33
# BB#29:                                # %if.then.36
	cmpl	$2, -36(%rbp)
	jne	.LBB21_31
# BB#30:                                # %if.then.39
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	$268, %rax              # imm = 0x10C
	movq	-48(%rbp), %r8
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %r9
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-80(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$2, %al
	callq	gimp_statusbar_push
	jmp	.LBB21_32
.LBB21_31:                              # %if.else.40
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	$236, %rax
	movq	-48(%rbp), %r8
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%r8, -192(%rbp)         # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %r9d
	movq	-64(%rbp), %rax
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%r9d, -196(%rbp)        # 4-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %r9d
	movq	-80(%rbp), %rax
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-192(%rbp), %r8         # 8-byte Reload
	movl	-196(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -212(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movl	-212(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	gimp_statusbar_push
.LBB21_32:                              # %if.end.46
	jmp	.LBB21_34
.LBB21_33:                              # %if.else.47
	movq	-88(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	leaq	-120(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_get_resolution
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	$236, %rax
	movq	-48(%rbp), %r8
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rcx
	movl	184(%rcx), %r9d
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movl	%r9d, %edi
	movq	%r8, -232(%rbp)         # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_pixels_to_units
	movq	-64(%rbp), %r9
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-88(%rbp), %rax
	movl	184(%rax), %edi
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movq	%r9, -272(%rbp)         # 8-byte Spill
	callq	gimp_pixels_to_units
	movq	-80(%rbp), %rax
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	-232(%rbp), %r8         # 8-byte Reload
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	-272(%rbp), %r9         # 8-byte Reload
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rax, (%rsp)
	movb	$2, %al
	callq	gimp_statusbar_push
.LBB21_34:                              # %if.end.57
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_statusbar_push_coords, .Lfunc_end21-gimp_statusbar_push_coords
	.cfi_endproc

	.globl	gimp_statusbar_push_length
	.align	16, 0x90
	.type	gimp_statusbar_push_length,@function
gimp_statusbar_push_length:             # @gimp_statusbar_push_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_length, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_27
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB22_15
# BB#14:                                # %if.then.13
	jmp	.LBB22_16
.LBB22_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_length, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_27
.LBB22_16:                              # %if.end.15
	jmp	.LBB22_17
.LBB22_17:                              # %do.end.16
	cmpq	$0, -56(%rbp)
	jne	.LBB22_19
# BB#18:                                # %if.then.18
	movabsq	$.L.str.12, %rax
	movq	%rax, -56(%rbp)
.LBB22_19:                              # %if.end.19
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$0, 184(%rax)
	jne	.LBB22_21
# BB#20:                                # %if.then.22
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	$300, %rax              # imm = 0x12C
	movq	-32(%rbp), %r8
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%r8, -152(%rbp)         # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %r9d
	movq	-56(%rbp), %rax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_statusbar_push
	jmp	.LBB22_27
.LBB22_21:                              # %if.else.24
	movq	-64(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_get_resolution
	movl	-36(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	je	.LBB22_22
	jmp	.LBB22_28
.LBB22_28:                              # %if.else.24
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB22_23
	jmp	.LBB22_24
.LBB22_22:                              # %sw.bb
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB22_26
.LBB22_23:                              # %sw.bb.29
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	jmp	.LBB22_26
.LBB22_24:                              # %sw.default
	jmp	.LBB22_25
.LBB22_25:                              # %do.body.30
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movl	$984, %r8d              # imm = 0x3D8
	movabsq	$.L__func__.gimp_statusbar_push_length, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB22_27
.LBB22_26:                              # %sw.epilog
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	$300, %rax              # imm = 0x12C
	movq	-32(%rbp), %r8
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rcx
	movl	184(%rcx), %r9d
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%r9d, %edi
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_pixels_to_units
	movq	-56(%rbp), %r9
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-176(%rbp), %r8         # 8-byte Reload
	movb	$1, %al
	callq	gimp_statusbar_push
.LBB22_27:                              # %if.end.36
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_statusbar_push_length, .Lfunc_end22-gimp_statusbar_push_length
	.cfi_endproc

	.globl	gimp_statusbar_replace
	.align	16, 0x90
	.type	gimp_statusbar_replace,@function
gimp_statusbar_replace:                 # @gimp_statusbar_replace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       # 16-byte Spill
	movaps	%xmm6, -304(%rbp)       # 16-byte Spill
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movaps	%xmm4, -336(%rbp)       # 16-byte Spill
	movaps	%xmm3, -352(%rbp)       # 16-byte Spill
	movaps	%xmm2, -368(%rbp)       # 16-byte Spill
	movaps	%xmm1, -384(%rbp)       # 16-byte Spill
	movaps	%xmm0, -400(%rbp)       # 16-byte Spill
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	je	.LBB23_25
# BB#24:                                # %entry
	movaps	-400(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -112(%rbp)
.LBB23_25:                              # %entry
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_replace, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_23
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB23_15
# BB#14:                                # %if.then.13
	jmp	.LBB23_16
.LBB23_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_replace, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_23
.LBB23_16:                              # %if.end.15
	jmp	.LBB23_17
.LBB23_17:                              # %do.end.16
	jmp	.LBB23_18
.LBB23_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB23_20
# BB#19:                                # %if.then.19
	jmp	.LBB23_21
.LBB23_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_replace, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_23
.LBB23_21:                              # %if.end.21
	jmp	.LBB23_22
.LBB23_22:                              # %do.end.22
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	-272(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$32, (%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %r8
	callq	gimp_statusbar_replace_valist
	leaq	-64(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB23_23:                              # %return
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_statusbar_replace, .Lfunc_end23-gimp_statusbar_replace
	.cfi_endproc

	.globl	gimp_statusbar_replace_valist
	.align	16, 0x90
	.type	gimp_statusbar_replace_valist,@function
gimp_statusbar_replace_valist:          # @gimp_statusbar_replace_valist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_replace_valist, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_39
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_replace_valist, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_39
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	jmp	.LBB24_18
.LBB24_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB24_20
# BB#19:                                # %if.then.19
	jmp	.LBB24_21
.LBB24_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_replace_valist, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_39
.LBB24_21:                              # %if.end.21
	jmp	.LBB24_22
.LBB24_22:                              # %do.end.22
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_statusbar_vprintf
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_statusbar_get_context_id
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	%rsi, -56(%rbp)
.LBB24_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB24_35
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB24_23 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jne	.LBB24_30
# BB#25:                                # %if.then.28
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB24_27
# BB#26:                                # %if.then.31
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB24_39
.LBB24_27:                              # %if.end.32
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdi
	cmpq	192(%rdi), %rax
	jne	.LBB24_29
# BB#28:                                # %if.then.40
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_update
.LBB24_29:                              # %if.end.41
	jmp	.LBB24_39
.LBB24_30:                              # %if.end.42
                                        #   in Loop: Header=BB24_23 Depth=1
	jmp	.LBB24_31
.LBB24_31:                              # %for.inc
                                        #   in Loop: Header=BB24_23 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB24_33
# BB#32:                                # %cond.true
                                        #   in Loop: Header=BB24_23 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB24_34
.LBB24_33:                              # %cond.false
                                        #   in Loop: Header=BB24_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB24_34
.LBB24_34:                              # %cond.end
                                        #   in Loop: Header=BB24_23 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB24_23
.LBB24_35:                              # %for.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -48(%rbp)
	movl	-60(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB24_37
# BB#36:                                # %if.then.50
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_insert
	movq	-8(%rbp), %rsi
	movq	%rax, 192(%rsi)
	jmp	.LBB24_38
.LBB24_37:                              # %if.else.54
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 192(%rsi)
.LBB24_38:                              # %if.end.58
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_update
.LBB24_39:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_statusbar_replace_valist, .Lfunc_end24-gimp_statusbar_replace_valist
	.cfi_endproc

	.globl	gimp_statusbar_pop
	.align	16, 0x90
	.type	gimp_statusbar_pop,@function
gimp_statusbar_pop:                     # @gimp_statusbar_pop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_pop, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_24
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB25_15
# BB#14:                                # %if.then.13
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_pop, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_24
.LBB25_16:                              # %if.end.15
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.16
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_statusbar_get_context_id
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB25_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB25_23
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB25_18 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB25_21
# BB#20:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 192(%rsi)
	movq	-64(%rbp), %rdi
	callq	gimp_statusbar_msg_free
	jmp	.LBB25_23
.LBB25_21:                              # %if.end.26
                                        #   in Loop: Header=BB25_18 Depth=1
	jmp	.LBB25_22
.LBB25_22:                              # %for.inc
                                        #   in Loop: Header=BB25_18 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_18
.LBB25_23:                              # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_update
.LBB25_24:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_statusbar_pop, .Lfunc_end25-gimp_statusbar_pop
	.cfi_endproc

	.globl	gimp_statusbar_push_temp
	.align	16, 0x90
	.type	gimp_statusbar_push_temp,@function
gimp_statusbar_push_temp:               # @gimp_statusbar_push_temp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movl	%esi, -412(%rbp)        # 4-byte Spill
	je	.LBB26_2
# BB#1:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB26_2:                               # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movl	-412(%rbp), %edi        # 4-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	-240(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	leaq	16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$32, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	-64(%rbp), %r8
	callq	gimp_statusbar_push_temp_valist
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_statusbar_push_temp, .Lfunc_end26-gimp_statusbar_push_temp
	.cfi_endproc

	.globl	gimp_statusbar_push_temp_valist
	.align	16, 0x90
	.type	gimp_statusbar_push_temp_valist,@function
gimp_statusbar_push_temp_valist:        # @gimp_statusbar_push_temp_valist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_temp_valist, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_34
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpl	$1, -12(%rbp)
	ja	.LBB27_15
# BB#14:                                # %if.then.13
	jmp	.LBB27_16
.LBB27_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_temp_valist, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_34
.LBB27_16:                              # %if.end.15
	jmp	.LBB27_17
.LBB27_17:                              # %do.end.16
	jmp	.LBB27_18
.LBB27_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB27_20
# BB#19:                                # %if.then.19
	jmp	.LBB27_21
.LBB27_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_push_temp_valist, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_34
.LBB27_21:                              # %if.end.21
	jmp	.LBB27_22
.LBB27_22:                              # %do.end.22
	movq	-8(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB27_25
# BB#23:                                # %land.lhs.true.24
	movq	-8(%rbp), %rax
	movl	232(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jbe	.LBB27_25
# BB#24:                                # %if.then.26
	jmp	.LBB27_34
.LBB27_25:                              # %if.end.27
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_statusbar_vprintf
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB27_27
# BB#26:                                # %if.then.31
	movq	-8(%rbp), %rax
	movl	228(%rax), %edi
	callq	g_source_remove
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB27_27:                              # %if.end.34
	movl	$8000, %edi             # imm = 0x1F40
	movabsq	$gimp_statusbar_temp_timeout, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_timeout_add
	movq	-8(%rbp), %rcx
	movl	%eax, 228(%rcx)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 232(%rcx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 192(%rcx)
	je	.LBB27_33
# BB#28:                                # %if.then.39
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	224(%rax), %ecx
	jne	.LBB27_32
# BB#29:                                # %if.then.42
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB27_31
# BB#30:                                # %if.then.45
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB27_34
.LBB27_31:                              # %if.end.46
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_update
	jmp	.LBB27_34
.LBB27_32:                              # %if.end.52
	jmp	.LBB27_33
.LBB27_33:                              # %if.end.53
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	224(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 192(%rsi)
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_update
.LBB27_34:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_statusbar_push_temp_valist, .Lfunc_end27-gimp_statusbar_push_temp_valist
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_temp_timeout,@function
gimp_statusbar_temp_timeout:            # @gimp_statusbar_temp_timeout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_pop_temp
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	$0, 228(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_statusbar_temp_timeout, .Lfunc_end28-gimp_statusbar_temp_timeout
	.cfi_endproc

	.globl	gimp_statusbar_pop_temp
	.align	16, 0x90
	.type	gimp_statusbar_pop_temp,@function
gimp_statusbar_pop_temp:                # @gimp_statusbar_pop_temp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_pop_temp, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_18
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB29_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	228(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 228(%rcx)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB29_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB29_18
# BB#15:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	224(%rax), %ecx
	jne	.LBB29_17
# BB#16:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 192(%rsi)
	movq	-40(%rbp), %rdi
	callq	gimp_statusbar_msg_free
	movq	-8(%rbp), %rdi
	callq	gimp_statusbar_update
.LBB29_17:                              # %if.end.26
	jmp	.LBB29_18
.LBB29_18:                              # %if.end.27
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_statusbar_pop_temp, .Lfunc_end29-gimp_statusbar_pop_temp
	.cfi_endproc

	.globl	gimp_statusbar_update_cursor
	.align	16, 0x90
	.type	gimp_statusbar_update_cursor,@function
gimp_statusbar_update_cursor:           # @gimp_statusbar_update_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)
	callq	gimp_statusbar_get_type
	movq	%rax, -320(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -324(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-312(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -324(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -324(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-324(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_statusbar_update_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_30
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB30_17
# BB#13:                                # %lor.lhs.false
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	ja	.LBB30_17
# BB#14:                                # %lor.lhs.false.15
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	ja	.LBB30_17
# BB#15:                                # %lor.lhs.false.17
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB30_17
# BB#16:                                # %lor.lhs.false.21
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB30_18
.LBB30_17:                              # %if.then.26
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB30_19
.LBB30_18:                              # %if.else.27
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB30_19:                              # %if.end.29
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	je	.LBB30_20
	jmp	.LBB30_31
.LBB30_31:                              # %if.end.29
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	je	.LBB30_21
	jmp	.LBB30_32
.LBB30_32:                              # %if.end.29
	movl	-364(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	je	.LBB30_22
	jmp	.LBB30_23
.LBB30_20:                              # %sw.bb
	cvttsd2si	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	cvttsd2si	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB30_23
.LBB30_21:                              # %sw.bb.34
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB30_23
.LBB30_22:                              # %sw.bb.37
	jmp	.LBB30_23
.LBB30_23:                              # %sw.epilog
	movq	-40(%rbp), %rax
	cmpl	$0, 184(%rax)
	jne	.LBB30_28
# BB#24:                                # %if.then.40
	cmpl	$2, -12(%rbp)
	jne	.LBB30_26
# BB#25:                                # %if.then.43
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.16, %r8
	leaq	-304(%rbp), %rdi
	movq	-8(%rbp), %rdx
	addq	$268, %rdx              # imm = 0x10C
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	-384(%rbp), %r9         # 8-byte Reload
	movb	$2, %al
	callq	g_snprintf
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB30_27
.LBB30_26:                              # %if.else.46
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %esi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.16, %r9
	leaq	-304(%rbp), %rdi
	movq	-8(%rbp), %rdx
	addq	$236, %rdx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %r8d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%r8d, -436(%rbp)        # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movl	-436(%rbp), %r8d        # 4-byte Reload
	movq	-416(%rbp), %r9         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	-408(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -440(%rbp)        # 4-byte Spill
.LBB30_27:                              # %if.end.54
	jmp	.LBB30_29
.LBB30_28:                              # %if.else.55
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_unit_store_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	gimp_unit_store_set_pixel_values
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	-344(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	184(%rsi), %esi
	movb	$0, %al
	callq	gimp_unit_store_get_values
	movl	$256, %esi              # imm = 0x100
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.16, %r8
	leaq	-304(%rbp), %rdi
	movq	-8(%rbp), %rdx
	addq	$236, %rdx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	-464(%rbp), %r9         # 8-byte Reload
	movb	$2, %al
	callq	g_snprintf
	movl	%eax, -468(%rbp)        # 4-byte Spill
.LBB30_29:                              # %if.end.68
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-304(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB30_30:                              # %return
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_statusbar_update_cursor, .Lfunc_end30-gimp_statusbar_update_cursor
	.cfi_endproc

	.globl	gimp_statusbar_clear_cursor
	.align	16, 0x90
	.type	gimp_statusbar_clear_cursor,@function
gimp_statusbar_clear_cursor:            # @gimp_statusbar_clear_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gtk_widget_set_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_statusbar_clear_cursor, .Lfunc_end31-gimp_statusbar_clear_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_class_init,@function
gimp_statusbar_class_init:              # @gimp_statusbar_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_statusbar_finalize, %rsi
	movabsq	$gimp_statusbar_dispose, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_statusbar_class_init, .Lfunc_end32-gimp_statusbar_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_dispose,@function
gimp_statusbar_dispose:                 # @gimp_statusbar_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	228(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 228(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB33_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_statusbar_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_statusbar_dispose, .Lfunc_end33-gimp_statusbar_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_finalize,@function
gimp_statusbar_finalize:                # @gimp_statusbar_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 216(%rax)
.LBB34_2:                               # %if.end
	movabsq	$gimp_statusbar_msg_free, %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_slist_free_full
	movq	-16(%rbp), %rax
	movq	$0, 192(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB34_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-16(%rbp), %rax
	movq	$0, 200(%rax)
.LBB34_4:                               # %if.end.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_statusbar_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_statusbar_finalize, .Lfunc_end34-gimp_statusbar_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_start,@function
gimp_statusbar_progress_start:          # @gimp_statusbar_progress_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 384(%rax)
	jne	.LBB35_8
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$.L.str.17, %rcx
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	$1, 384(%rdi)
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 392(%rdi)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %r8
	movb	$0, %al
	callq	gimp_statusbar_push
	movq	-48(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_sensitive
	cmpl	$0, -28(%rbp)
	je	.LBB35_5
# BB#2:                                 # %if.then.6
	cmpq	$0, -24(%rbp)
	je	.LBB35_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_help_set_help_data_with_markup
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB35_4:                               # %if.end
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gtk_widget_show
.LBB35_5:                               # %if.end.13
	movq	-40(%rbp), %rax
	movq	368(%rax), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_hide
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_resize_children
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	jne	.LBB35_7
# BB#6:                                 # %if.then.21
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movl	$1, 388(%rax)
.LBB35_7:                               # %if.end.24
	movq	-48(%rbp), %rdi
	callq	gimp_widget_flush_expose
	movq	-40(%rbp), %rdi
	callq	gimp_statusbar_override_window_title
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB35_9
.LBB35_8:                               # %if.end.25
	movq	$0, -8(%rbp)
.LBB35_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_statusbar_progress_start, .Lfunc_end35-gimp_statusbar_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_end,@function
gimp_statusbar_progress_end:            # @gimp_statusbar_progress_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 384(%rax)
	je	.LBB36_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 388(%rax)
	je	.LBB36_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rax
	movl	$0, 388(%rax)
.LBB36_3:                               # %if.end
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movl	$0, 384(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 392(%rax)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_statusbar_pop
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	gtk_widget_hide
	movq	-16(%rbp), %rdi
	callq	gimp_statusbar_restore_window_title
.LBB36_4:                               # %if.end.11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_statusbar_progress_end, .Lfunc_end36-gimp_statusbar_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_is_active,@function
gimp_statusbar_progress_is_active:      # @gimp_statusbar_progress_is_active
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	384(%rax), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_statusbar_progress_is_active, .Lfunc_end37-gimp_statusbar_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_set_text,@function
gimp_statusbar_progress_set_text:       # @gimp_statusbar_progress_set_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 384(%rax)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$.L.str.17, %rcx
	movq	-24(%rbp), %rdi
	movq	368(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r8
	movb	$0, %al
	callq	gimp_statusbar_replace
	movq	-32(%rbp), %rdi
	callq	gimp_widget_flush_expose
	movq	-24(%rbp), %rdi
	callq	gimp_statusbar_override_window_title
.LBB38_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_statusbar_progress_set_text, .Lfunc_end38-gimp_statusbar_progress_set_text
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI39_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI39_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_statusbar_progress_set_value,@function
gimp_statusbar_progress_set_value:      # @gimp_statusbar_progress_set_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 384(%rax)
	je	.LBB39_4
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 392(%rax)
	cvtsi2sdl	-40(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_progress_bar_get_fraction
	movsd	.LCPI39_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movapd	.LCPI39_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB39_3
# BB#2:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction
	movq	-32(%rbp), %rdi
	callq	gimp_widget_flush_expose
.LBB39_3:                               # %if.end
	jmp	.LBB39_4
.LBB39_4:                               # %if.end.10
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_statusbar_progress_set_value, .Lfunc_end39-gimp_statusbar_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_get_value,@function
gimp_statusbar_progress_get_value:      # @gimp_statusbar_progress_get_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 384(%rax)
	je	.LBB40_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	392(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB40_3
.LBB40_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB40_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_statusbar_progress_get_value, .Lfunc_end40-gimp_statusbar_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_pulse,@function
gimp_statusbar_progress_pulse:          # @gimp_statusbar_progress_pulse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 384(%rax)
	je	.LBB41_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_progress_bar_pulse
	movq	-24(%rbp), %rdi
	callq	gimp_widget_flush_expose
.LBB41_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_statusbar_progress_pulse, .Lfunc_end41-gimp_statusbar_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_message,@function
gimp_statusbar_progress_message:        # @gimp_statusbar_progress_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_statusbar_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	$0, -76(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB42_3
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movl	232(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jbe	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB42_13
.LBB42_3:                               # %if.end
	movq	-56(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_widget_create_pango_layout
	movq	%rax, -64(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_get_message_stock_id
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	pango_layout_get_line_count
	cmpl	$1, %eax
	jne	.LBB42_10
# BB#4:                                 # %if.then.6
	leaq	-96(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_get_allocation
	leaq	-100(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rdi
	callq	pango_layout_get_pixel_size
	movl	-100(%rbp), %ecx
	cmpl	-88(%rbp), %ecx
	jge	.LBB42_9
# BB#5:                                 # %if.then.10
	cmpq	$0, -72(%rbp)
	je	.LBB42_7
# BB#6:                                 # %if.then.12
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rsi
	movq	360(%rsi), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_widget_render_icon
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	addl	$2, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movl	-100(%rbp), %eax
	cmpl	-88(%rbp), %eax
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB42_8
.LBB42_7:                               # %if.else
	movl	$1, -76(%rbp)
.LBB42_8:                               # %if.end.19
	jmp	.LBB42_9
.LBB42_9:                               # %if.end.20
	jmp	.LBB42_10
.LBB42_10:                              # %if.end.21
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpl	$0, -76(%rbp)
	je	.LBB42_12
# BB#11:                                # %if.then.23
	movabsq	$.L.str.17, %rcx
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	gimp_statusbar_push_temp
.LBB42_12:                              # %if.end.24
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB42_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_statusbar_progress_message, .Lfunc_end42-gimp_statusbar_progress_message
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_hbox_size_request,@function
gimp_statusbar_hbox_size_request:       # @gimp_statusbar_hbox_size_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rdx
	movq	336(%rdx), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_size_request
	movl	-32(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jle	.LBB43_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jmp	.LBB43_3
.LBB43_2:                               # %cond.false
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB43_3:                               # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-24(%rbp), %rcx
	movq	344(%rcx), %rdi
	callq	gtk_widget_size_request
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB43_5
# BB#4:                                 # %cond.true.11
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB43_6
.LBB43_5:                               # %cond.false.13
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB43_6:                               # %cond.end.15
	movl	-44(%rbp), %eax         # 4-byte Reload
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-24(%rbp), %rcx
	movq	352(%rcx), %rdi
	callq	gtk_widget_size_request
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB43_8
# BB#7:                                 # %cond.true.23
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB43_9
.LBB43_8:                               # %cond.false.25
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB43_9:                               # %cond.end.27
	movl	-48(%rbp), %eax         # 4-byte Reload
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-24(%rbp), %rcx
	movq	368(%rcx), %rdi
	callq	gtk_widget_size_request
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB43_11
# BB#10:                                # %cond.true.33
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB43_12
.LBB43_11:                              # %cond.false.35
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB43_12:                              # %cond.end.37
	movl	-52(%rbp), %eax         # 4-byte Reload
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-24(%rbp), %rcx
	movq	376(%rcx), %rdi
	callq	gtk_widget_size_request
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB43_14
# BB#13:                                # %cond.true.43
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB43_15
.LBB43_14:                              # %cond.false.45
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB43_15:                              # %cond.end.47
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	movl	-36(%rbp), %edx
	addl	$32, %edx
	cmpl	%edx, %eax
	jle	.LBB43_17
# BB#16:                                # %cond.true.53
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB43_18
.LBB43_17:                              # %cond.false.55
	movl	-36(%rbp), %eax
	addl	$32, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB43_18:                              # %cond.end.57
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_statusbar_hbox_size_request, .Lfunc_end43-gimp_statusbar_hbox_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_unit_changed,@function
gimp_statusbar_unit_changed:            # @gimp_statusbar_unit_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	184(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_unit_combo_box_get_active
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_display_shell_set_unit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_statusbar_unit_changed, .Lfunc_end44-gimp_statusbar_unit_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_scale_changed,@function
gimp_statusbar_scale_changed:           # @gimp_statusbar_scale_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	184(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_scale_combo_box_get_scale
	movl	$6, %esi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	gimp_display_shell_scale
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_statusbar_scale_changed, .Lfunc_end45-gimp_statusbar_scale_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_scale_activated,@function
gimp_statusbar_scale_activated:         # @gimp_statusbar_scale_activated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	328(%rsi), %rdi
	callq	gtk_widget_grab_focus
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_statusbar_scale_activated, .Lfunc_end46-gimp_statusbar_scale_activated
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_label_expose,@function
gimp_statusbar_label_expose:            # @gimp_statusbar_label_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 216(%rdx)
	je	.LBB47_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_cairo_create
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-32(%rbp), %rdi
	callq	cairo_clip
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_label_get_layout_offsets
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_label_get_layout
	xorl	%esi, %esi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	pango_layout_index_to_pos
	movl	-48(%rbp), %esi
	addl	$512, %esi              # imm = 0x200
	sarl	$10, %esi
	cmpl	$0, -40(%rbp)
	movl	%esi, -76(%rbp)         # 4-byte Spill
	jge	.LBB47_3
# BB#2:                                 # %cond.true
	movl	-40(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	sarl	$10, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB47_4
.LBB47_3:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB47_4
.LBB47_4:                               # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-44(%rbp), %eax
	addl	$512, %eax              # imm = 0x200
	sarl	$10, %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	216(%rdx), %rsi
	cvtsi2sdl	-52(%rbp), %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	callq	gdk_cairo_set_source_pixbuf
	movq	-32(%rbp), %rdi
	callq	cairo_paint
	movq	-32(%rbp), %rdi
	callq	cairo_destroy
.LBB47_5:                               # %if.end
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_statusbar_label_expose, .Lfunc_end47-gimp_statusbar_label_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_progress_canceled,@function
gimp_statusbar_progress_canceled:       # @gimp_statusbar_progress_canceled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 384(%rsi)
	je	.LBB48_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_cancel
.LBB48_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_statusbar_progress_canceled, .Lfunc_end48-gimp_statusbar_progress_canceled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_statusbar_set_text,@function
gimp_statusbar_set_text:                # @gimp_statusbar_set_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 384(%rdx)
	je	.LBB49_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text
	jmp	.LBB49_11
.LBB49_2:                               # %if.else
	movq	-8(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB49_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB49_4:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB49_6
# BB#5:                                 # %if.then.6
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	360(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_render_icon
	movq	-8(%rbp), %rcx
	movq	%rax, 216(%rcx)
	jmp	.LBB49_7
.LBB49_6:                               # %if.else.9
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
.LBB49_7:                               # %if.end.11
	movq	-8(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB49_9
# BB#8:                                 # %if.then.14
	movabsq	$.L.str.31, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gdk_pixbuf_get_width
	addl	$2, %eax
	shll	$10, %eax
	movl	%eax, -48(%rbp)
	movl	$0, -44(%rbp)
	callq	pango_attr_list_new
	leaq	-56(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, %rdi
	movq	%rdx, %rsi
	callq	pango_attr_shape_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 12(%rax)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_attributes
	movq	-32(%rbp), %rdi
	callq	pango_attr_list_unref
	jmp	.LBB49_10
.LBB49_9:                               # %if.else.26
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_attributes
.LBB49_10:                              # %if.end.33
	jmp	.LBB49_11
.LBB49_11:                              # %if.end.34
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_statusbar_set_text, .Lfunc_end49-gimp_statusbar_set_text
	.cfi_endproc

	.type	gimp_statusbar_get_type.g_define_type_id__volatile,@object # @gimp_statusbar_get_type.g_define_type_id__volatile
	.local	gimp_statusbar_get_type.g_define_type_id__volatile
	.comm	gimp_statusbar_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpStatusbar"
	.size	.L.str, 14

	.type	gimp_statusbar_get_type.g_implement_interface_info,@object # @gimp_statusbar_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_statusbar_get_type.g_implement_interface_info:
	.quad	gimp_statusbar_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_statusbar_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_statusbar_set_shell,@object # @__func__.gimp_statusbar_set_shell
.L__func__.gimp_statusbar_set_shell:
	.asciz	"gimp_statusbar_set_shell"
	.size	.L__func__.gimp_statusbar_set_shell, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_STATUSBAR (statusbar)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"scaled"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"notify::status"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_statusbar_get_visible,@object # @__func__.gimp_statusbar_get_visible
.L__func__.gimp_statusbar_get_visible:
	.asciz	"gimp_statusbar_get_visible"
	.size	.L__func__.gimp_statusbar_get_visible, 27

	.type	.L__func__.gimp_statusbar_set_visible,@object # @__func__.gimp_statusbar_set_visible
.L__func__.gimp_statusbar_set_visible:
	.asciz	"gimp_statusbar_set_visible"
	.size	.L__func__.gimp_statusbar_set_visible, 27

	.type	.L__func__.gimp_statusbar_empty,@object # @__func__.gimp_statusbar_empty
.L__func__.gimp_statusbar_empty:
	.asciz	"gimp_statusbar_empty"
	.size	.L__func__.gimp_statusbar_empty, 21

	.type	.L__func__.gimp_statusbar_fill,@object # @__func__.gimp_statusbar_fill
.L__func__.gimp_statusbar_fill:
	.asciz	"gimp_statusbar_fill"
	.size	.L__func__.gimp_statusbar_fill, 20

	.type	.L__func__.gimp_statusbar_override_window_title,@object # @__func__.gimp_statusbar_override_window_title
.L__func__.gimp_statusbar_override_window_title:
	.asciz	"gimp_statusbar_override_window_title"
	.size	.L__func__.gimp_statusbar_override_window_title, 37

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"progress"
	.size	.L.str.6, 9

	.type	.L__func__.gimp_statusbar_restore_window_title,@object # @__func__.gimp_statusbar_restore_window_title
.L__func__.gimp_statusbar_restore_window_title:
	.asciz	"gimp_statusbar_restore_window_title"
	.size	.L__func__.gimp_statusbar_restore_window_title, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"title"
	.size	.L.str.7, 6

	.type	.L__func__.gimp_statusbar_push,@object # @__func__.gimp_statusbar_push
.L__func__.gimp_statusbar_push:
	.asciz	"gimp_statusbar_push"
	.size	.L__func__.gimp_statusbar_push, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"context != NULL"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"format != NULL"
	.size	.L.str.9, 15

	.type	.L__func__.gimp_statusbar_push_valist,@object # @__func__.gimp_statusbar_push_valist
.L__func__.gimp_statusbar_push_valist:
	.asciz	"gimp_statusbar_push_valist"
	.size	.L__func__.gimp_statusbar_push_valist, 27

	.type	.L__func__.gimp_statusbar_push_coords,@object # @__func__.gimp_statusbar_push_coords
.L__func__.gimp_statusbar_push_coords:
	.asciz	"gimp_statusbar_push_coords"
	.size	.L__func__.gimp_statusbar_push_coords, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"title != NULL"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"separator != NULL"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1

	.type	.L__func__.gimp_statusbar_push_length,@object # @__func__.gimp_statusbar_push_length
.L__func__.gimp_statusbar_push_length:
	.asciz	"gimp_statusbar_push_length"
	.size	.L__func__.gimp_statusbar_push_length, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.13, 45

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpstatusbar.c"
	.size	.L.str.14, 16

	.type	.L__func__.gimp_statusbar_replace,@object # @__func__.gimp_statusbar_replace
.L__func__.gimp_statusbar_replace:
	.asciz	"gimp_statusbar_replace"
	.size	.L__func__.gimp_statusbar_replace, 23

	.type	.L__func__.gimp_statusbar_replace_valist,@object # @__func__.gimp_statusbar_replace_valist
.L__func__.gimp_statusbar_replace_valist:
	.asciz	"gimp_statusbar_replace_valist"
	.size	.L__func__.gimp_statusbar_replace_valist, 30

	.type	.L__func__.gimp_statusbar_peek,@object # @__func__.gimp_statusbar_peek
.L__func__.gimp_statusbar_peek:
	.asciz	"gimp_statusbar_peek"
	.size	.L__func__.gimp_statusbar_peek, 20

	.type	.L__func__.gimp_statusbar_pop,@object # @__func__.gimp_statusbar_pop
.L__func__.gimp_statusbar_pop:
	.asciz	"gimp_statusbar_pop"
	.size	.L__func__.gimp_statusbar_pop, 19

	.type	.L__func__.gimp_statusbar_push_temp_valist,@object # @__func__.gimp_statusbar_push_temp_valist
.L__func__.gimp_statusbar_push_temp_valist:
	.asciz	"gimp_statusbar_push_temp_valist"
	.size	.L__func__.gimp_statusbar_push_temp_valist, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"severity <= GIMP_MESSAGE_WARNING"
	.size	.L.str.15, 33

	.type	.L__func__.gimp_statusbar_pop_temp,@object # @__func__.gimp_statusbar_pop_temp
.L__func__.gimp_statusbar_pop_temp:
	.asciz	"gimp_statusbar_pop_temp"
	.size	.L__func__.gimp_statusbar_pop_temp, 24

	.type	.L__func__.gimp_statusbar_update_cursor,@object # @__func__.gimp_statusbar_update_cursor
.L__func__.gimp_statusbar_update_cursor:
	.asciz	"gimp_statusbar_update_cursor"
	.size	.L__func__.gimp_statusbar_update_cursor, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	", "
	.size	.L.str.16, 3

	.type	gimp_statusbar_parent_class,@object # @gimp_statusbar_parent_class
	.local	gimp_statusbar_parent_class
	.comm	gimp_statusbar_parent_class,8,8
	.type	GimpStatusbar_private_offset,@object # @GimpStatusbar_private_offset
	.local	GimpStatusbar_private_offset
	.comm	GimpStatusbar_private_offset,4,4
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Cancel <i>%s</i>"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-statusbar-temp"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"size-request"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"8888, 8888"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"focus-on-click"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"changed"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"entry-activated"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"expose-event"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"text-xalign"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"text-yalign"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"ellipsize"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-cancel"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"clicked"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	" "
	.size	.L.str.31, 2

	.type	gimp_statusbar_shell_scaled.layout,@object # @gimp_statusbar_shell_scaled.layout
	.local	gimp_statusbar_shell_scaled.layout
	.comm	gimp_statusbar_shell_scaled.layout,8,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%%s%%d%%s%%d%%s"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%%s%%.1f%%s%%.1f%%s"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%%s%%d%%s"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%%s%%.%df%%s%%.%df%%s"
	.size	.L.str.35, 22

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%%s%%.%df%%s"
	.size	.L.str.36, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
