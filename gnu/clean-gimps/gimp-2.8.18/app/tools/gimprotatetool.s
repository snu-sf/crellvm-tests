	.text
	.file	"gimprotatetool.bc"
	.globl	gimp_rotate_tool_get_type
	.align	16, 0x90
	.type	gimp_rotate_tool_get_type,@function
gimp_rotate_tool_get_type:              # @gimp_rotate_tool_get_type
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
	movq	gimp_rotate_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_rotate_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_transform_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$344, %edx              # imm = 0x158
	movabsq	$gimp_rotate_tool_class_intern_init, %rdi
	movl	$816, %r8d              # imm = 0x330
	movabsq	$gimp_rotate_tool_init, %rcx
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
	movabsq	$gimp_rotate_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_rotate_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rotate_tool_get_type, .Lfunc_end0-gimp_rotate_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rotate_tool_class_intern_init,@function
gimp_rotate_tool_class_intern_init:     # @gimp_rotate_tool_class_intern_init
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
	movq	%rax, gimp_rotate_tool_parent_class
	cmpl	$0, GimpRotateTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpRotateTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_rotate_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rotate_tool_class_intern_init, .Lfunc_end1-gimp_rotate_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rotate_tool_init,@function
gimp_rotate_tool_init:                  # @gimp_rotate_tool_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, 776(%rdi)
	movq	-24(%rbp), %rax
	movl	$1, 668(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 676(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rotate_tool_init, .Lfunc_end2-gimp_rotate_tool_init
	.cfi_endproc

	.globl	gimp_rotate_tool_register
	.align	16, 0x90
	.type	gimp_rotate_tool_register,@function
gimp_rotate_tool_register:              # @gimp_rotate_tool_register
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_rotate_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$gimp_transform_options_gui, %rdx
	movl	$128, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movabsq	$.L.str.6, %r11
	movq	-48(%rbp), %rbx
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	*%r11
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rotate_tool_register, .Lfunc_end3-gimp_rotate_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rotate_tool_class_init,@function
gimp_rotate_tool_class_init:            # @gimp_rotate_tool_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_rotate_tool_get_undo_desc, %rsi
	movabsq	$gimp_rotate_tool_recalc_matrix, %rdi
	movabsq	$gimp_rotate_tool_motion, %rcx
	movabsq	$gimp_rotate_tool_prepare, %rdx
	movabsq	$gimp_rotate_tool_dialog_update, %r8
	movabsq	$gimp_rotate_tool_dialog, %r9
	movabsq	$gimp_rotate_tool_key_press, %r10
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 216(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 288(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 296(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 312(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 320(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 328(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_rotate_tool_class_init, .Lfunc_end4-gimp_rotate_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rotate_tool_key_press,@function
gimp_rotate_tool_key_press:             # @gimp_rotate_tool_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	cmpq	200(%rdx), %rax
	jne	.LBB5_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_rotate_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	800(%rax), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$-65361, %ecx           # imm = 0xFFFFFFFFFFFF00AF
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	ja	.LBB5_6
# BB#10:                                # %if.then
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_2:                                # %sw.bb
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdi
	callq	gtk_spin_button_spin
	movl	$1, -4(%rbp)
	jmp	.LBB5_9
.LBB5_3:                                # %sw.bb.7
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdi
	callq	gtk_spin_button_spin
	movl	$1, -4(%rbp)
	jmp	.LBB5_9
.LBB5_4:                                # %sw.bb.8
	movl	$2, %esi
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdi
	callq	gtk_spin_button_spin
	movl	$1, -4(%rbp)
	jmp	.LBB5_9
.LBB5_5:                                # %sw.bb.9
	movl	$3, %esi
	xorps	%xmm0, %xmm0
	movq	-56(%rbp), %rdi
	callq	gtk_spin_button_spin
	movl	$1, -4(%rbp)
	jmp	.LBB5_9
.LBB5_6:                                # %sw.default
	jmp	.LBB5_7
.LBB5_7:                                # %sw.epilog
	jmp	.LBB5_8
.LBB5_8:                                # %if.end
	movq	gimp_rotate_tool_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB5_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rotate_tool_key_press, .Lfunc_end5-gimp_rotate_tool_key_press
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_5
	.quad	.LBB5_2
	.quad	.LBB5_4
	.quad	.LBB5_3

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_1:
	.quad	-4616189618054758400    # double -1
.LCPI6_2:
	.quad	4607182418800017408     # double 1
.LCPI6_3:
	.quad	4621819117588971520     # double 10
.LCPI6_4:
	.quad	-4582834833314545664    # double -180
.LCPI6_5:
	.quad	4640537203540230144     # double 180
.LCPI6_6:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI6_7:
	.quad	4624633867356078080     # double 15
.LCPI6_8:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_rotate_tool_dialog,@function
gimp_rotate_tool_dialog:                # @gimp_rotate_tool_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$352, %rsp              # imm = 0x160
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_rotate_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-24(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_7, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI6_8, %xmm6         # xmm6 = mem[0],zero
	movl	$2, %esi
	movq	-32(%rbp), %rax
	addq	$792, %rax              # imm = 0x318
	movq	%rax, %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_wrap
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$10, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.8, %rsi
	movabsq	$rotate_angle_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	%rdi, 800(%r10)
	movq	-32(%rbp), %rdi
	movq	792(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	792(%rcx), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_scale_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %r11d
	movl	$5, %ebx
	xorl	%r14d, %r14d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r11d, %ecx
	movl	%r9d, %r8d
	movl	%r11d, %r9d
	movl	$5, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -204(%rbp)       # 4-byte Spill
	movl	%ebx, -208(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-64(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	%xmm2, -224(%rbp)       # 8-byte Spill
	movsd	-224(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-216(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-224(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$10, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$1, %edx
	xorl	%esi, %esi
	movabsq	$.L.str.10, %rcx
	movl	$10, %r9d
	movl	%edx, %edi
	movl	%esi, -252(%rbp)        # 4-byte Spill
	movl	%edx, -256(%rbp)        # 4-byte Spill
	movq	%rcx, %rdx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	movl	-256(%rbp), %r8d        # 4-byte Reload
	movl	-252(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -260(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$10, (%rsp)
	movl	$1, 8(%rsp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_new
	movq	-32(%rbp), %rdx
	movq	%rax, 808(%rdx)
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field
	movq	-32(%rbp), %rax
	movq	808(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_pixel_digits
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-32(%rbp), %rdi
	movq	808(%rdi), %r8
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.8, %rsi
	movabsq	$rotate_center_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	808(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -336(%rbp)        # 8-byte Spill
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_rotate_tool_dialog, .Lfunc_end6-gimp_rotate_tool_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI7_1:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	gimp_rotate_tool_dialog_update,@function
gimp_rotate_tool_dialog_update:         # @gimp_rotate_tool_dialog_update
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_rotate_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	792(%rax), %rdi
	movq	-8(%rbp), %rax
	mulsd	472(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$rotate_center_changed, %rax
	movq	-16(%rbp), %rdi
	movq	808(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	808(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movsd	488(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-16(%rbp), %rax
	movq	808(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movsd	496(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$rotate_center_changed, %rax
	movq	-16(%rbp), %rdi
	movq	808(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rotate_tool_dialog_update, .Lfunc_end7-gimp_rotate_tool_dialog_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4544132024016830464    # double -65536
	.text
	.align	16, 0x90
	.type	gimp_rotate_tool_prepare,@function
gimp_rotate_tool_prepare:               # @gimp_rotate_tool_prepare
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_rotate_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	xorps	%xmm0, %xmm0
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 472(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 480(%rax)
	movq	-8(%rbp), %rax
	movsd	296(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 488(%rax)
	movq	-8(%rbp), %rax
	movsd	304(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 496(%rax)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_resolution
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$rotate_center_changed, %rax
	movq	-16(%rbp), %rdx
	movq	808(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	808(%rdi), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_display_get_shell
	movl	184(%rax), %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gimp_size_entry_set_unit
	movq	-16(%rbp), %rax
	movq	808(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution
	movq	-16(%rbp), %rax
	movq	808(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-16(%rbp), %rax
	movq	808(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	xorl	%esi, %esi
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	addl	$65536, %eax            # imm = 0x10000
	cvtsi2sdl	%eax, %xmm1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval_boundaries
	movq	-16(%rbp), %rdi
	movq	808(%rdi), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	movl	$1, %esi
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	addl	$65536, %eax            # imm = 0x10000
	cvtsi2sdl	%eax, %xmm1
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_size_entry_set_refval_boundaries
	movq	-16(%rbp), %rdi
	movq	808(%rdi), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	cvtsi2sdl	280(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	cvtsi2sdl	288(%rdi), %xmm1
	movq	%rax, %rdi
	callq	gimp_size_entry_set_size
	movq	-16(%rbp), %rax
	movq	808(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	cvtsi2sdl	284(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	cvtsi2sdl	292(%rdi), %xmm1
	movq	%rax, %rdi
	callq	gimp_size_entry_set_size
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$rotate_center_changed, %rax
	movq	-16(%rbp), %rdi
	movq	808(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -172(%rbp)        # 4-byte Spill
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_rotate_tool_prepare, .Lfunc_end8-gimp_rotate_tool_prepare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI9_1:
	.quad	-4609115380302729960    # double -3.1415926535897931
.LCPI9_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI9_3:
	.quad	4598387778419258213     # double 0.26179938779914941
.LCPI9_4:
	.quad	4593884178791887717     # double 0.1308996938995747
	.text
	.align	16, 0x90
	.type	gimp_rotate_tool_motion,@function
gimp_rotate_tool_motion:                # @gimp_rotate_tool_motion
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$10, 664(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 488(%rax)
	movq	-8(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 496(%rax)
	movq	-8(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 296(%rax)
	movq	-8(%rbp), %rax
	movsd	256(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 304(%rax)
	jmp	.LBB9_16
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rax
	movsd	496(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rax
	movsd	264(%rax), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	256(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	272(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -24(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB9_4
# BB#3:                                 # %lor.lhs.false
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB9_8
.LBB9_4:                                # %if.then.25
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	jbe	.LBB9_6
# BB#5:                                 # %cond.true
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %cond.false
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
.LBB9_7:                                # %cond.end
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
.LBB9_8:                                # %if.end.29
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	480(%rax), %xmm1
	movsd	%xmm1, 480(%rax)
	movq	-8(%rbp), %rax
	ucomisd	480(%rax), %xmm0
	jbe	.LBB9_10
# BB#9:                                 # %if.then.36
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	480(%rax), %xmm0
	movsd	%xmm0, 480(%rax)
	jmp	.LBB9_13
.LBB9_10:                               # %if.else
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_12
# BB#11:                                # %if.then.43
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 480(%rax)
.LBB9_12:                               # %if.end.47
	jmp	.LBB9_13
.LBB9_13:                               # %if.end.48
	movq	-16(%rbp), %rax
	cmpl	$0, 392(%rax)
	je	.LBB9_15
# BB#14:                                # %if.then.49
	movsd	.LCPI9_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_4, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	480(%rax), %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 472(%rax)
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.56
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 472(%rax)
.LBB9_16:                               # %if.end.61
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rotate_tool_motion, .Lfunc_end9-gimp_rotate_tool_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rotate_tool_recalc_matrix,@function
gimp_rotate_tool_recalc_matrix:         # @gimp_rotate_tool_recalc_matrix
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	488(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 296(%rdi)
	movq	-8(%rbp), %rdi
	movsd	496(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 304(%rdi)
	movq	-8(%rbp), %rdi
	addq	$400, %rdi              # imm = 0x190
	callq	gimp_matrix3_identity
	movq	-8(%rbp), %rdi
	addq	$400, %rdi              # imm = 0x190
	movq	-8(%rbp), %rax
	movsd	296(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	304(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	472(%rax), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_transform_matrix_rotate_center
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_rotate_tool_recalc_matrix, .Lfunc_end10-gimp_rotate_tool_recalc_matrix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI11_1:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	gimp_rotate_tool_get_undo_desc,@function
gimp_rotate_tool_get_undo_desc:         # @gimp_rotate_tool_get_undo_desc
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.12, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_dpgettext
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	472(%rcx), %xmm1
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rcx
	movsd	488(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	496(%rcx), %xmm2        # xmm2 = mem[0],zero
	movq	%rax, %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$3, %al
	callq	g_strdup_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_rotate_tool_get_undo_desc, .Lfunc_end11-gimp_rotate_tool_get_undo_desc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4645040803167600640     # double 360
.LCPI12_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI12_2:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	rotate_angle_changed,@function
rotate_angle_changed:                   # @rotate_angle_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	xorps	%xmm1, %xmm1
	movsd	.LCPI12_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_1, %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	subsd	472(%rsi), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_2
# BB#1:                                 # %cond.true
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	472(%rax), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	472(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
.LBB12_3:                               # %cond.end
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI12_2, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB12_5
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 472(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 480(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_transform_tool_recalc_matrix
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB12_5:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	rotate_angle_changed, .Lfunc_end12-rotate_angle_changed
	.cfi_endproc

	.align	16, 0x90
	.type	rotate_center_changed,@function
rotate_center_changed:                  # @rotate_center_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	488(%rax), %xmm0
	jne	.LBB13_2
	jp	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	496(%rax), %xmm0
	jne	.LBB13_2
	jp	.LBB13_2
	jmp	.LBB13_3
.LBB13_2:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_pause
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 488(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 496(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 296(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 304(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_transform_tool_recalc_matrix
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_draw_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_draw_tool_resume
.LBB13_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	rotate_center_changed, .Lfunc_end13-rotate_center_changed
	.cfi_endproc

	.type	gimp_rotate_tool_get_type.g_define_type_id__volatile,@object # @gimp_rotate_tool_get_type.g_define_type_id__volatile
	.local	gimp_rotate_tool_get_type.g_define_type_id__volatile
	.comm	gimp_rotate_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRotateTool"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-rotate-tool"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Rotate"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Rotate Tool: Rotate the layer, selection or path"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Rotate"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>R"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-rotate"
	.size	.L.str.6, 17

	.type	gimp_rotate_tool_parent_class,@object # @gimp_rotate_tool_parent_class
	.local	gimp_rotate_tool_parent_class
	.comm	gimp_rotate_tool_parent_class,8,8
	.type	GimpRotateTool_private_offset,@object # @GimpRotateTool_private_offset
	.local	GimpRotateTool_private_offset
	.comm	GimpRotateTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"_Angle:"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"value-changed"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Center _X:"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%a"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Center _Y:"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type\004Rotate by %-3.3g\302\260 around (%g, %g)"
	.size	.L.str.12, 45

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Rotating"
	.size	.L.str.13, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
