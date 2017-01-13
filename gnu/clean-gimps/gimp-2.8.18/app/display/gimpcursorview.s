	.text
	.file	"gimpcursorview.bc"
	.globl	gimp_cursor_view_get_type
	.align	16, 0x90
	.type	gimp_cursor_view_get_type,@function
gimp_cursor_view_get_type:              # @gimp_cursor_view_get_type
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
	movq	gimp_cursor_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_cursor_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_cursor_view_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_cursor_view_init, %rcx
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
	callq	gimp_docked_interface_get_type
	movabsq	$gimp_cursor_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_cursor_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_cursor_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cursor_view_get_type, .Lfunc_end0-gimp_cursor_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_class_intern_init,@function
gimp_cursor_view_class_intern_init:     # @gimp_cursor_view_class_intern_init
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
	movq	%rax, gimp_cursor_view_parent_class
	cmpl	$0, GimpCursorView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCursorView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_cursor_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cursor_view_class_intern_init, .Lfunc_end1-gimp_cursor_view_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
.LCPI2_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_cursor_view_init,@function
gimp_cursor_view_init:                  # @gimp_cursor_view_init
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
	subq	$656, %rsp              # imm = 0x290
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movl	$1, 240(%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 248(%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 264(%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movl	$0, 272(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	leaq	-36(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	xorl	%edi, %edi
	movl	-36(%rbp), %esi
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 136(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	136(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	-36(%rbp), %esi
	callq	gtk_box_new
	movq	-8(%rbp), %r9
	movq	136(%r9), %r9
	movq	%rax, 144(%r9)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	144(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 160(%rsi)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	160(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	160(%rsi), %r8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movss	%xmm0, -156(%rbp)       # 4-byte Spill
	movss	-156(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.12, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 168(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	168(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	168(%rcx), %r8
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movss	%xmm0, -200(%rbp)       # 4-byte Spill
	movss	-200(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	-196(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.20, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 176(%rsi)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	176(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	176(%rsi), %r8
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movss	%xmm0, -276(%rbp)       # 4-byte Spill
	movss	-276(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.12, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 184(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	184(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	184(%rcx), %r8
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movss	%xmm0, -320(%rbp)       # 4-byte Spill
	movss	-320(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	-316(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.21, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 192(%rsi)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	192(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	192(%rsi), %r8
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movss	%xmm0, -396(%rbp)       # 4-byte Spill
	movss	-396(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.12, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 200(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	200(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	200(%rcx), %r8
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -436(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movss	%xmm0, -440(%rbp)       # 4-byte Spill
	movss	-440(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	-436(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.22, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_frame_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -460(%rbp)        # 4-byte Spill
	movl	-460(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 208(%rsi)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	208(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	208(%rsi), %r8
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movss	%xmm0, -516(%rbp)       # 4-byte Spill
	movss	-516(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.12, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 216(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	216(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movss	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	216(%rcx), %r8
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -556(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movss	%xmm0, -560(%rbp)       # 4-byte Spill
	movss	-560(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	-556(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	xorl	%edi, %edi
	movl	-36(%rbp), %esi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 152(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-8(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	152(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %ecx        # 4-byte Reload
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_color_frame_new
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 224(%rsi)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	224(%rax), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_color_frame_set_mode
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_color_frame_new
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 232(%rsi)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	232(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_frame_set_mode
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	232(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rsi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	movl	-644(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cursor_view_init, .Lfunc_end2-gimp_cursor_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_docked_iface_init,@function
gimp_cursor_view_docked_iface_init:     # @gimp_cursor_view_docked_iface_init
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
	movq	%rax, parent_docked_iface
	cmpq	$0, parent_docked_iface
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_docked_interface_get_type
	movq	%rax, %rdi
	callq	g_type_default_interface_peek
	movq	%rax, parent_docked_iface
.LBB3_2:                                # %if.end
	movabsq	$gimp_cursor_view_set_context, %rax
	movabsq	$gimp_cursor_view_get_aux_info, %rcx
	movabsq	$gimp_cursor_view_set_aux_info, %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_cursor_view_docked_iface_init, .Lfunc_end3-gimp_cursor_view_docked_iface_init
	.cfi_endproc

	.globl	gimp_cursor_view_new
	.align	16, 0x90
	.type	gimp_cursor_view_new,@function
gimp_cursor_view_new:                   # @gimp_cursor_view_new
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cursor_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_cursor_view_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-16(%rbp), %r11
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cursor_view_new, .Lfunc_end4-gimp_cursor_view_new
	.cfi_endproc

	.globl	gimp_cursor_view_set_sample_merged
	.align	16, 0x90
	.type	gimp_cursor_view_set_sample_merged,@function
gimp_cursor_view_set_sample_merged:     # @gimp_cursor_view_set_sample_merged
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_cursor_view_get_type
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
	movabsq	$.L__func__.gimp_cursor_view_set_sample_merged, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	movq	136(%rdx), %rdx
	movl	240(%rdx), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB5_14
# BB#13:                                # %if.then.14
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	%eax, 240(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB5_14:                               # %if.end.18
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_cursor_view_set_sample_merged, .Lfunc_end5-gimp_cursor_view_set_sample_merged
	.cfi_endproc

	.globl	gimp_cursor_view_get_sample_merged
	.align	16, 0x90
	.type	gimp_cursor_view_get_sample_merged,@function
gimp_cursor_view_get_sample_merged:     # @gimp_cursor_view_get_sample_merged
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_cursor_view_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cursor_view_get_sample_merged, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movl	240(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cursor_view_get_sample_merged, .Lfunc_end6-gimp_cursor_view_get_sample_merged
	.cfi_endproc

	.globl	gimp_cursor_view_update_cursor
	.align	16, 0x90
	.type	gimp_cursor_view_update_cursor,@function
gimp_cursor_view_update_cursor:         # @gimp_cursor_view_update_cursor
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_cursor_view_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -164(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cursor_view_update_cursor, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_34
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -188(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -188(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cursor_view_update_cursor, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_34
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	cmpl	$0, -44(%rbp)
	jne	.LBB7_26
# BB#25:                                # %if.then.40
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_unit
	movl	%eax, -44(%rbp)
.LBB7_26:                               # %if.end.42
	leaq	-136(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	xorl	%eax, %eax
	movb	%al, %cl
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -193(%rbp)         # 1-byte Spill
	jb	.LBB7_30
# BB#27:                                # %land.lhs.true.44
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	callq	gimp_image_get_width
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cvtsi2sdl	%eax, %xmm0
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movb	%dl, -193(%rbp)         # 1-byte Spill
	jbe	.LBB7_30
# BB#28:                                # %land.lhs.true.48
	xorl	%eax, %eax
	movb	%al, %cl
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -193(%rbp)         # 1-byte Spill
	jb	.LBB7_30
# BB#29:                                # %land.rhs
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	seta	%cl
	movb	%cl, -193(%rbp)         # 1-byte Spill
.LBB7_30:                               # %land.end
	movb	-193(%rbp), %al         # 1-byte Reload
	movl	$32, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.11, %rdx
	leaq	-80(%rbp), %rdi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -48(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	160(%rdx), %rdx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	160(%rax), %rdi
	cmpl	$0, -48(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gimp_cursor_view_set_label_italic
	movl	$32, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.11, %rdx
	leaq	-80(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	168(%rdx), %rdx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	168(%rax), %rdi
	cmpl	$0, -48(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gimp_cursor_view_set_label_italic
	movl	$32, %edx
	leaq	-80(%rbp), %rsi
	movl	-44(%rbp), %edi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_cursor_view_format_as_unit
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	176(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	176(%rax), %rdi
	cmpl	$0, -48(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gimp_cursor_view_set_label_italic
	movl	$32, %edx
	leaq	-80(%rbp), %rsi
	movl	-44(%rbp), %edi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_cursor_view_format_as_unit
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	184(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	184(%rax), %rdi
	cmpl	$0, -48(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gimp_cursor_view_set_label_italic
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	leaq	-84(%rbp), %rax
	leaq	-120(%rbp), %rdi
	leaq	-124(%rbp), %r10
	movq	-16(%rbp), %r11
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%r9d, -332(%rbp)        # 4-byte Spill
	movq	%r11, -344(%rbp)        # 8-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r10, -368(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%edx, -372(%rbp)        # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movl	240(%rax), %r8d
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movl	-372(%rbp), %edx        # 4-byte Reload
	movl	-332(%rbp), %r9d        # 4-byte Reload
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-360(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-368(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	callq	gimp_image_pick_color
	cmpl	$0, %eax
	je	.LBB7_32
# BB#31:                                # %if.then.104
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	224(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rdx
	movl	-84(%rbp), %esi
	movl	-124(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_color_frame_set_color
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	232(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rdx
	movl	-84(%rbp), %esi
	movl	-124(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_color_frame_set_color
	jmp	.LBB7_33
.LBB7_32:                               # %if.else.111
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	224(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_frame_set_invalid
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	232(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_frame_set_invalid
.LBB7_33:                               # %if.end.120
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_cursor_view_update_selection_info
.LBB7_34:                               # %return
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_cursor_view_update_cursor, .Lfunc_end7-gimp_cursor_view_update_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_set_label_italic,@function
gimp_cursor_view_set_label_italic:      # @gimp_cursor_view_set_label_italic
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_cursor_view_set_label_italic, .Lfunc_end8-gimp_cursor_view_set_label_italic
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_format_as_unit,@function
gimp_cursor_view_format_as_unit:        # @gimp_cursor_view_format_as_unit
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
	subq	$112, %rsp
	movabsq	$.L.str.22, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	$0, -92(%rbp)
	movq	%rax, -104(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-4(%rbp), %edi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movsd	%xmm0, -88(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %edi
	callq	gimp_unit_get_digits
	movl	%eax, -92(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_unit_get_abbreviation
	movq	%rax, -104(%rbp)
.LBB9_2:                                # %if.end
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.32, %rdx
	leaq	-80(%rbp), %rdi
	movl	-92(%rbp), %ecx
	movq	-104(%rbp), %r8
	movb	$0, %al
	callq	g_snprintf
	leaq	-80(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	g_snprintf
	movl	%eax, -112(%rbp)        # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_cursor_view_format_as_unit, .Lfunc_end9-gimp_cursor_view_format_as_unit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_update_selection_info,@function
gimp_cursor_view_update_selection_info: # @gimp_cursor_view_update_selection_info
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_mask
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	movl	%eax, -24(%rbp)
.LBB10_2:                               # %if.end
	cmpl	$0, -24(%rbp)
	je	.LBB10_4
# BB#3:                                 # %if.then.3
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movl	-36(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	movl	$32, %edx
	leaq	-96(%rbp), %rsi
	movl	-20(%rbp), %edi
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_cursor_view_format_as_unit
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	192(%rsi), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	$32, %edx
	leaq	-96(%rbp), %rsi
	movl	-20(%rbp), %edi
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_cursor_view_format_as_unit
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	200(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	$32, %edx
	leaq	-96(%rbp), %rsi
	movl	-20(%rbp), %edi
	cvtsi2sdl	-44(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_cursor_view_format_as_unit
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	208(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	$32, %edx
	leaq	-96(%rbp), %rsi
	movl	-20(%rbp), %edi
	cvtsi2sdl	-48(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_cursor_view_format_as_unit
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	216(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	192(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	200(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	208(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	216(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
.LBB10_5:                               # %if.end.46
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_cursor_view_update_selection_info, .Lfunc_end10-gimp_cursor_view_update_selection_info
	.cfi_endproc

	.globl	gimp_cursor_view_clear_cursor
	.align	16, 0x90
	.type	gimp_cursor_view_clear_cursor,@function
gimp_cursor_view_clear_cursor:          # @gimp_cursor_view_clear_cursor
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_cursor_view_get_type
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
	movabsq	$.L__func__.gimp_cursor_view_clear_cursor, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	160(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	168(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	176(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	184(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	224(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_frame_set_invalid
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	232(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_frame_set_invalid
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	264(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movl	272(%rax), %edx
	callq	gimp_cursor_view_update_selection_info
.LBB11_13:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_cursor_view_clear_cursor, .Lfunc_end11-gimp_cursor_view_clear_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_class_init,@function
gimp_cursor_view_class_init:            # @gimp_cursor_view_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	$231, %r8d
	movabsq	$gimp_cursor_view_style_set, %rdx
	movabsq	$gimp_cursor_view_set_property, %r9
	movabsq	$gimp_cursor_view_get_property, %r10
	movabsq	$gimp_cursor_view_dispose, %r11
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 280(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$280, %ecx              # imm = 0x118
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_cursor_view_class_init, .Lfunc_end12-gimp_cursor_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_dispose,@function
gimp_cursor_view_dispose:               # @gimp_cursor_view_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 248(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_docked_set_context
.LBB13_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_cursor_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_cursor_view_dispose, .Lfunc_end13-gimp_cursor_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_get_property,@function
gimp_cursor_view_get_property:          # @gimp_cursor_view_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB14_2
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movl	240(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB14_5
.LBB14_2:                               # %sw.default
	jmp	.LBB14_3
.LBB14_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$392, %edx              # imm = 0x188
	movabsq	$.L.str.15, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB14_5
.LBB14_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_cursor_view_get_property, .Lfunc_end14-gimp_cursor_view_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_set_property,@function
gimp_cursor_view_set_property:          # @gimp_cursor_view_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB15_2
	jmp	.LBB15_1
.LBB15_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, 240(%rdi)
	jmp	.LBB15_5
.LBB15_2:                               # %sw.default
	jmp	.LBB15_3
.LBB15_3:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$373, %edx              # imm = 0x175
	movabsq	$.L.str.15, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB15_5
.LBB15_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_cursor_view_set_property, .Lfunc_end15-gimp_cursor_view_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_style_set,@function
gimp_cursor_view_style_set:             # @gimp_cursor_view_style_set
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_cursor_view_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	leaq	-28(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	136(%rcx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_cursor_view_style_set, .Lfunc_end16-gimp_cursor_view_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end17:
	.size	g_warning, .Lfunc_end17-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_set_aux_info,@function
gimp_cursor_view_set_aux_info:          # @gimp_cursor_view_set_aux_info
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_docked_iface, %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB18_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.26, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	224(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB18_7
.LBB18_4:                               # %if.else
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.27, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	232(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB18_6:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_7
.LBB18_7:                               # %if.end.9
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB18_11
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB18_1 Depth=1
	callq	gimp_color_frame_mode_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_enum_get_value_by_nick
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.16
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movl	(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_color_frame_set_mode
.LBB18_10:                              # %if.end.20
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.21
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_12
.LBB18_12:                              # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB18_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_15
.LBB18_14:                              # %cond.false
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_15
.LBB18_15:                              # %cond.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB18_1
.LBB18_16:                              # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_cursor_view_set_aux_info, .Lfunc_end18-gimp_cursor_view_set_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_get_aux_info,@function
gimp_cursor_view_get_aux_info:          # @gimp_cursor_view_get_aux_info
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	parent_docked_iface, %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_frame_mode_get_type
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-32(%rbp), %rcx
	movl	204(%rax), %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	gimp_enum_get_value
	cmpl	$0, %eax
	je	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_session_info_aux_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB19_2:                               # %if.end
	callq	gimp_color_frame_mode_get_type
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	232(%rcx), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_frame_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %ecx
	leaq	-32(%rbp), %rsi
	movl	204(%rax), %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	cmpl	$0, %eax
	je	.LBB19_4
# BB#3:                                 # %if.then.16
	movabsq	$.L.str.27, %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_session_info_aux_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB19_4:                               # %if.end.19
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_cursor_view_get_aux_info, .Lfunc_end19-gimp_cursor_view_get_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_set_context,@function
gimp_cursor_view_set_context:           # @gimp_cursor_view_set_context
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	136(%rsi), %rsi
	cmpq	248(%rsi), %rax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_7
.LBB20_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 248(%rax)
	je	.LBB20_4
# BB#3:                                 # %if.then.5
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_cursor_view_diplay_changed, %rdx
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	248(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_cursor_view_image_changed, %rdi
	movq	-24(%rbp), %r9
	movq	136(%r9), %r9
	movq	248(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	248(%rdi), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB20_4:                               # %if.end.14
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 248(%rcx)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 248(%rax)
	je	.LBB20_6
# BB#5:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_cursor_view_diplay_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	248(%rdx), %rdx
	movq	-24(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_cursor_view_image_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	248(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_display
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_image
	movq	%rax, -40(%rbp)
.LBB20_6:                               # %if.end.32
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	248(%rax), %rdx
	callq	gimp_cursor_view_diplay_changed
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	248(%rax), %rdx
	callq	gimp_cursor_view_image_changed
.LBB20_7:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_cursor_view_set_context, .Lfunc_end20-gimp_cursor_view_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_diplay_changed,@function
gimp_cursor_view_diplay_changed:        # @gimp_cursor_view_diplay_changed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
.LBB21_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 256(%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.3
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_cursor_view_shell_unit_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	256(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB21_4:                               # %if.end.7
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 256(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 256(%rax)
	je	.LBB21_6
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_cursor_view_shell_unit_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	256(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB21_6:                               # %if.end.17
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	256(%rcx), %rdx
	callq	gimp_cursor_view_shell_unit_changed
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_cursor_view_diplay_changed, .Lfunc_end21-gimp_cursor_view_diplay_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_image_changed,@function
gimp_cursor_view_image_changed:         # @gimp_cursor_view_image_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_cursor_view_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cursor_view_image_changed, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_19
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	cmpq	264(%rcx), %rax
	jne	.LBB22_14
# BB#13:                                # %if.then.13
	jmp	.LBB22_19
.LBB22_14:                              # %if.end.14
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 264(%rax)
	je	.LBB22_16
# BB#15:                                # %if.then.18
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_cursor_view_mask_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	264(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB22_16:                              # %if.end.22
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 264(%rcx)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 264(%rax)
	je	.LBB22_18
# BB#17:                                # %if.then.28
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_cursor_view_mask_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-8(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	264(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB22_18:                              # %if.end.32
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	264(%rax), %rsi
	callq	gimp_cursor_view_mask_changed
.LBB22_19:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_cursor_view_image_changed, .Lfunc_end22-gimp_cursor_view_image_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_shell_unit_changed,@function
gimp_cursor_view_shell_unit_changed:    # @gimp_cursor_view_shell_unit_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_get_unit
	movl	%eax, -28(%rbp)
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movl	272(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	je	.LBB23_4
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	264(%rax), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_cursor_view_update_selection_info
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movl	%edx, 272(%rax)
.LBB23_4:                               # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_cursor_view_shell_unit_changed, .Lfunc_end23-gimp_cursor_view_shell_unit_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cursor_view_mask_changed,@function
gimp_cursor_view_mask_changed:          # @gimp_cursor_view_mask_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	264(%rsi), %rsi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movl	272(%rax), %edx
	callq	gimp_cursor_view_update_selection_info
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_cursor_view_mask_changed, .Lfunc_end24-gimp_cursor_view_mask_changed
	.cfi_endproc

	.type	gimp_cursor_view_get_type.g_define_type_id__volatile,@object # @gimp_cursor_view_get_type.g_define_type_id__volatile
	.local	gimp_cursor_view_get_type.g_define_type_id__volatile
	.comm	gimp_cursor_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCursorView"
	.size	.L.str, 15

	.type	gimp_cursor_view_get_type.g_implement_interface_info,@object # @gimp_cursor_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_cursor_view_get_type.g_implement_interface_info:
	.quad	gimp_cursor_view_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_cursor_view_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_cursor_view_new,@object # @__func__.gimp_cursor_view_new
.L__func__.gimp_cursor_view_new:
	.asciz	"gimp_cursor_view_new"
	.size	.L__func__.gimp_cursor_view_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"menu-factory"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu-identifier"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<CursorInfo>"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ui-path"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/cursor-info-popup"
	.size	.L.str.7, 19

	.type	.L__func__.gimp_cursor_view_set_sample_merged,@object # @__func__.gimp_cursor_view_set_sample_merged
.L__func__.gimp_cursor_view_set_sample_merged:
	.asciz	"gimp_cursor_view_set_sample_merged"
	.size	.L__func__.gimp_cursor_view_set_sample_merged, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_CURSOR_VIEW (view)"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sample-merged"
	.size	.L.str.9, 14

	.type	.L__func__.gimp_cursor_view_get_sample_merged,@object # @__func__.gimp_cursor_view_get_sample_merged
.L__func__.gimp_cursor_view_get_sample_merged:
	.asciz	"gimp_cursor_view_get_sample_merged"
	.size	.L__func__.gimp_cursor_view_get_sample_merged, 35

	.type	.L__func__.gimp_cursor_view_update_cursor,@object # @__func__.gimp_cursor_view_update_cursor
.L__func__.gimp_cursor_view_update_cursor:
	.asciz	"gimp_cursor_view_update_cursor"
	.size	.L__func__.gimp_cursor_view_update_cursor, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%d"
	.size	.L.str.11, 3

	.type	.L__func__.gimp_cursor_view_clear_cursor,@object # @__func__.gimp_cursor_view_clear_cursor
.L__func__.gimp_cursor_view_clear_cursor:
	.asciz	"gimp_cursor_view_clear_cursor"
	.size	.L__func__.gimp_cursor_view_clear_cursor, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"n/a"
	.size	.L.str.12, 4

	.type	gimp_cursor_view_parent_class,@object # @gimp_cursor_view_parent_class
	.local	gimp_cursor_view_parent_class
	.comm	gimp_cursor_view_parent_class,8,8
	.type	GimpCursorView_private_offset,@object # @GimpCursorView_private_offset
	.local	GimpCursorView_private_offset
	.comm	GimpCursorView_private_offset,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpcursorview.c"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"property"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"content-spacing"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Pixels"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"X"
	.size	.L.str.18, 2

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Y"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Units"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Selection Bounding Box"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.zero	1
	.size	.L.str.22, 1

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"W"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"H"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"_Sample Merged"
	.size	.L.str.25, 15

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"frame-1-mode"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"frame-2-mode"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"display-changed"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"image-changed"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"notify::unit"
	.size	.L.str.30, 13

	.type	.L__func__.gimp_cursor_view_image_changed,@object # @__func__.gimp_cursor_view_image_changed
.L__func__.gimp_cursor_view_image_changed:
	.asciz	"gimp_cursor_view_image_changed"
	.size	.L__func__.gimp_cursor_view_image_changed, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"mask-changed"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%%.%df %s"
	.size	.L.str.32, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
