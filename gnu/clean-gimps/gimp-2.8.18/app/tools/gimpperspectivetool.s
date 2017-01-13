	.text
	.file	"gimpperspectivetool.bc"
	.globl	gimp_perspective_tool_get_type
	.align	16, 0x90
	.type	gimp_perspective_tool_get_type,@function
gimp_perspective_tool_get_type:         # @gimp_perspective_tool_get_type
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
	movq	gimp_perspective_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_perspective_tool_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_perspective_tool_class_intern_init, %rdi
	movl	$864, %r8d              # imm = 0x360
	movabsq	$gimp_perspective_tool_init, %rcx
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
	movabsq	$gimp_perspective_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_perspective_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_perspective_tool_get_type, .Lfunc_end0-gimp_perspective_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_tool_class_intern_init,@function
gimp_perspective_tool_class_intern_init: # @gimp_perspective_tool_class_intern_init
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
	movq	%rax, gimp_perspective_tool_parent_class
	cmpl	$0, GimpPerspectiveTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPerspectiveTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_perspective_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_perspective_tool_class_intern_init, .Lfunc_end1-gimp_perspective_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_tool_init,@function
gimp_perspective_tool_init:             # @gimp_perspective_tool_init
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
	movl	$17, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_set_tool_cursor
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, 776(%rdi)
	movq	-24(%rbp), %rax
	movl	$1, 668(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 672(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 676(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_perspective_tool_init, .Lfunc_end2-gimp_perspective_tool_init
	.cfi_endproc

	.globl	gimp_perspective_tool_register
	.align	16, 0x90
	.type	gimp_perspective_tool_register,@function
gimp_perspective_tool_register:         # @gimp_perspective_tool_register
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
	callq	gimp_perspective_tool_get_type
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
	.size	gimp_perspective_tool_register, .Lfunc_end3-gimp_perspective_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_tool_class_init,@function
gimp_perspective_tool_class_init:       # @gimp_perspective_tool_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_transform_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_perspective_tool_get_undo_desc, %rsi
	movabsq	$gimp_perspective_tool_recalc_matrix, %rdi
	movabsq	$gimp_perspective_tool_motion, %rcx
	movabsq	$gimp_perspective_tool_prepare, %rdx
	movabsq	$gimp_perspective_tool_dialog_update, %r8
	movabsq	$gimp_perspective_tool_dialog, %r9
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 288(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 296(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 312(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 320(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 328(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_perspective_tool_class_init, .Lfunc_end4-gimp_perspective_tool_class_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_perspective_tool_dialog,@function
gimp_perspective_tool_dialog:           # @gimp_perspective_tool_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_perspective_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movabsq	$.L.str.7, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -64(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	cmpl	$3, -64(%rbp)
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -60(%rbp)
.LBB5_3:                                # %for.cond.18
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -60(%rbp)
	jge	.LBB5_6
# BB#4:                                 # %for.body.20
                                        #   in Loop: Header=BB5_3 Depth=2
	movabsq	$.L.str.8, %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_width_chars
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$4, %edx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movl	-60(%rbp), %r9d
	movl	-60(%rbp), %r10d
	addl	$1, %r10d
	movl	-64(%rbp), %r11d
	movl	-64(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r8d, -172(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	$1, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movslq	-60(%rbp), %rsi
	movslq	-64(%rbp), %rdi
	movq	-32(%rbp), %r14
	addq	$792, %r14              # imm = 0x318
	imulq	$24, %rdi, %rdi
	addq	%rdi, %r14
	movq	%rax, (%r14,%rsi,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc.32
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.34
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_perspective_tool_dialog, .Lfunc_end5-gimp_perspective_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_tool_dialog_update,@function
gimp_perspective_tool_dialog_update:    # @gimp_perspective_tool_dialog_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_perspective_tool_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	cmpl	$3, -24(%rbp)
	jge	.LBB6_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -20(%rbp)
.LBB6_3:                                # %for.cond.2
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -20(%rbp)
	jge	.LBB6_6
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movslq	-24(%rbp), %r8
	movq	-8(%rbp), %r9
	addq	$400, %r9               # imm = 0x190
	imulq	$24, %r8, %r8
	addq	%r8, %r9
	movsd	(%r9,%rcx,8), %xmm0     # xmm0 = mem[0],zero
	movb	$1, %al
	callq	g_snprintf
	movslq	-20(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	addq	$792, %rsi              # imm = 0x318
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rsi
	movq	(%rsi,%rcx,8), %rcx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc.15
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end.17
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_perspective_tool_dialog_update, .Lfunc_end6-gimp_perspective_tool_dialog_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_tool_prepare,@function
gimp_perspective_tool_prepare:          # @gimp_perspective_tool_prepare
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	280(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 472(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	284(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 480(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	288(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 488(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	284(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 496(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	280(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 504(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	292(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 512(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	288(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 520(%rdi)
	movq	-8(%rbp), %rdi
	cvtsi2sdl	292(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 528(%rdi)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_perspective_tool_prepare, .Lfunc_end7-gimp_perspective_tool_prepare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_tool_motion,@function
gimp_perspective_tool_motion:           # @gimp_perspective_tool_motion
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
	movq	%rdi, -8(%rbp)
	movsd	248(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	264(%rdi), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movsd	256(%rdi), %xmm0        # xmm0 = mem[0],zero
	movsd	272(%rdi), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	664(%rdi), %eax
	addl	$-2, %eax
	movl	%eax, %edi
	subl	$8, %eax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	ja	.LBB8_6
# BB#8:                                 # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	472(%rax), %xmm0
	movsd	%xmm0, 472(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	480(%rax), %xmm0
	movsd	%xmm0, 480(%rax)
	jmp	.LBB8_7
.LBB8_2:                                # %sw.bb.5
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	488(%rax), %xmm0
	movsd	%xmm0, 488(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	496(%rax), %xmm0
	movsd	%xmm0, 496(%rax)
	jmp	.LBB8_7
.LBB8_3:                                # %sw.bb.12
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	504(%rax), %xmm0
	movsd	%xmm0, 504(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	512(%rax), %xmm0
	movsd	%xmm0, 512(%rax)
	jmp	.LBB8_7
.LBB8_4:                                # %sw.bb.19
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	520(%rax), %xmm0
	movsd	%xmm0, 520(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	528(%rax), %xmm0
	movsd	%xmm0, 528(%rax)
	jmp	.LBB8_7
.LBB8_5:                                # %sw.bb.26
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	472(%rax), %xmm0
	movsd	%xmm0, 472(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	480(%rax), %xmm0
	movsd	%xmm0, 480(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	488(%rax), %xmm0
	movsd	%xmm0, 488(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	496(%rax), %xmm0
	movsd	%xmm0, 496(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	504(%rax), %xmm0
	movsd	%xmm0, 504(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	512(%rax), %xmm0
	movsd	%xmm0, 512(%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	520(%rax), %xmm0
	movsd	%xmm0, 520(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	528(%rax), %xmm0
	movsd	%xmm0, 528(%rax)
	jmp	.LBB8_7
.LBB8_6:                                # %sw.default
	jmp	.LBB8_7
.LBB8_7:                                # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_perspective_tool_motion, .Lfunc_end8-gimp_perspective_tool_motion
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_2
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_6
	.quad	.LBB8_6
	.quad	.LBB8_6
	.quad	.LBB8_6
	.quad	.LBB8_5

	.text
	.align	16, 0x90
	.type	gimp_perspective_tool_recalc_matrix,@function
gimp_perspective_tool_recalc_matrix:    # @gimp_perspective_tool_recalc_matrix
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$400, %rdi              # imm = 0x190
	callq	gimp_matrix3_identity
	movq	-8(%rbp), %rdi
	addq	$400, %rdi              # imm = 0x190
	movq	-8(%rbp), %rax
	movl	280(%rax), %esi
	movq	-8(%rbp), %rax
	movl	284(%rax), %edx
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	280(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	292(%rax), %r8d
	movq	-8(%rbp), %rax
	subl	284(%rax), %r8d
	movq	-8(%rbp), %rax
	movsd	472(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	480(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	488(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	496(%rax), %xmm3        # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	504(%rax), %xmm4        # xmm4 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	512(%rax), %xmm5        # xmm5 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	520(%rax), %xmm6        # xmm6 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	528(%rax), %xmm7        # xmm7 = mem[0],zero
	callq	gimp_transform_matrix_perspective
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_perspective_tool_recalc_matrix, .Lfunc_end9-gimp_perspective_tool_recalc_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_perspective_tool_get_undo_desc,@function
gimp_perspective_tool_get_undo_desc:    # @gimp_perspective_tool_get_undo_desc
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_dpgettext
	movq	%rax, %rdi
	callq	g_strdup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_perspective_tool_get_undo_desc, .Lfunc_end10-gimp_perspective_tool_get_undo_desc
	.cfi_endproc

	.type	gimp_perspective_tool_get_type.g_define_type_id__volatile,@object # @gimp_perspective_tool_get_type.g_define_type_id__volatile
	.local	gimp_perspective_tool_get_type.g_define_type_id__volatile
	.comm	gimp_perspective_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPerspectiveTool"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-perspective-tool"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Perspective"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Perspective Tool: Change perspective of the layer, selection or path"
	.size	.L.str.3, 69

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_Perspective"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<shift>P"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tool-perspective"
	.size	.L.str.6, 22

	.type	gimp_perspective_tool_parent_class,@object # @gimp_perspective_tool_parent_class
	.local	gimp_perspective_tool_parent_class
	.comm	gimp_perspective_tool_parent_class,8,8
	.type	GimpPerspectiveTool_private_offset,@object # @GimpPerspectiveTool_private_offset
	.local	GimpPerspectiveTool_private_offset
	.comm	GimpPerspectiveTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Transformation Matrix"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" "
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%10.5f"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Perspective"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Perspective transformation"
	.size	.L.str.11, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
