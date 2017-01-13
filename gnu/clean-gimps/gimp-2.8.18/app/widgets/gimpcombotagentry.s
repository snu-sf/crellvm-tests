	.text
	.file	"gimpcombotagentry.bc"
	.globl	gimp_combo_tag_entry_get_type
	.align	16, 0x90
	.type	gimp_combo_tag_entry_get_type,@function
gimp_combo_tag_entry_get_type:          # @gimp_combo_tag_entry_get_type
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
	movq	gimp_combo_tag_entry_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_combo_tag_entry_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_tag_entry_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_combo_tag_entry_class_intern_init, %rdi
	movl	$336, %r8d              # imm = 0x150
	movabsq	$gimp_combo_tag_entry_init, %rcx
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
	movabsq	$gimp_combo_tag_entry_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_combo_tag_entry_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_combo_tag_entry_get_type, .Lfunc_end0-gimp_combo_tag_entry_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_class_intern_init,@function
gimp_combo_tag_entry_class_intern_init: # @gimp_combo_tag_entry_class_intern_init
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
	movq	%rax, gimp_combo_tag_entry_parent_class
	cmpl	$0, GimpComboTagEntry_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpComboTagEntry_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_combo_tag_entry_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_combo_tag_entry_class_intern_init, .Lfunc_end1-gimp_combo_tag_entry_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_init,@function
gimp_combo_tag_entry_init:              # @gimp_combo_tag_entry_init
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
	movq	$0, 288(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 296(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 304(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 312(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$260, %esi              # imm = 0x104
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movabsq	$.L.str.6, %rdx
	movq	%rax, %rdi
	callq	gtk_entry_set_icon_from_stock
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_combo_tag_entry_icon_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_combo_tag_entry_init, .Lfunc_end2-gimp_combo_tag_entry_init
	.cfi_endproc

	.globl	gimp_combo_tag_entry_new
	.align	16, 0x90
	.type	gimp_combo_tag_entry_new,@function
gimp_combo_tag_entry_new:               # @gimp_combo_tag_entry_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tagged_container_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_combo_tag_entry_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_combo_tag_entry_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_combo_tag_entry_new, .Lfunc_end3-gimp_combo_tag_entry_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_class_init,@function
gimp_combo_tag_entry_class_init:        # @gimp_combo_tag_entry_class_init
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
	movabsq	$gimp_combo_tag_entry_style_set, %rsi
	movabsq	$gimp_combo_tag_entry_expose, %rdi
	movabsq	$gimp_combo_tag_entry_dispose, %rcx
	movabsq	$gimp_combo_tag_entry_constructed, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 392(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_combo_tag_entry_class_init, .Lfunc_end4-gimp_combo_tag_entry_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_constructed,@function
gimp_combo_tag_entry_constructed:       # @gimp_combo_tag_entry_constructed
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_combo_tag_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_combo_tag_entry_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_combo_tag_entry_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_combo_tag_entry_tag_count_changed, %rdi
	xorl	%r8d, %r8d
	movq	208(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_combo_tag_entry_constructed, .Lfunc_end5-gimp_combo_tag_entry_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_dispose,@function
gimp_combo_tag_entry_dispose:           # @gimp_combo_tag_entry_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_combo_tag_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	296(%rax), %rdi
	callq	pango_attr_list_unref
	movq	-16(%rbp), %rax
	movq	$0, 296(%rax)
.LBB6_4:                                # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	callq	pango_attr_list_unref
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
.LBB6_6:                                # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	312(%rax), %rdi
	callq	pango_attr_list_unref
	movq	-16(%rbp), %rax
	movq	$0, 312(%rax)
.LBB6_8:                                # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_combo_tag_entry_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_combo_tag_entry_dispose, .Lfunc_end6-gimp_combo_tag_entry_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_expose,@function
gimp_combo_tag_entry_expose:            # @gimp_combo_tag_entry_expose
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_combo_tag_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 280(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movl	$8, %ecx
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	callq	gdk_pixmap_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_cairo_create
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-48(%rbp), %rdi
	callq	cairo_paint
	movq	-48(%rbp), %rdi
	callq	cairo_destroy
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$1, %edx
	movl	$8, %r9d
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movq	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	$8, 40(%rsp)
	movl	$8, 48(%rsp)
	callq	gtk_paint_arrow
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$8, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	$8, 8(%rsp)
	movl	$8, 16(%rsp)
	callq	gdk_pixbuf_get_from_drawable
	movq	-24(%rbp), %rdx
	movq	%rax, 280(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	-24(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	%rax, %rdi
	callq	gtk_entry_set_icon_from_pixbuf
.LBB7_2:                                # %if.end
	movq	gimp_combo_tag_entry_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_combo_tag_entry_expose, .Lfunc_end7-gimp_combo_tag_entry_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_style_set,@function
gimp_combo_tag_entry_style_set:         # @gimp_combo_tag_entry_style_set
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_combo_tag_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	gimp_combo_tag_entry_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 280(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	gimp_combo_tag_entry_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	callq	pango_attr_list_unref
.LBB8_4:                                # %if.end.12
	callq	pango_attr_list_new
	movq	-24(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 528(%rax)
	je	.LBB8_6
# BB#5:                                 # %if.then.16
	movq	-32(%rbp), %rax
	movq	528(%rax), %rdi
	callq	pango_attr_font_desc_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_attr_list_insert
.LBB8_6:                                # %if.end.20
	movq	-32(%rbp), %rax
	movq	324(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movl	332(%rax), %edx
	movl	%edx, -40(%rbp)
	movw	-44(%rbp), %si
	movw	-42(%rbp), %di
	movzwl	%si, %edx
	movw	%di, -82(%rbp)          # 2-byte Spill
	movl	%edx, %edi
	movw	-82(%rbp), %si          # 2-byte Reload
	movzwl	%si, %esi
	movzwl	-40(%rbp), %edx
	callq	pango_attr_foreground_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-24(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB8_8
# BB#7:                                 # %if.then.24
	movq	-24(%rbp), %rax
	movq	304(%rax), %rdi
	callq	pango_attr_list_unref
.LBB8_8:                                # %if.end.26
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	callq	pango_attr_list_copy
	movq	-24(%rbp), %rdi
	movq	%rax, 304(%rdi)
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdi
	movq	%rdi, -48(%rbp)
	movl	368(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movw	-44(%rbp), %dx
	movw	-42(%rbp), %si
	movzwl	%dx, %edi
	movzwl	%si, %esi
	movzwl	-40(%rbp), %edx
	callq	pango_attr_foreground_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-32(%rbp), %rax
	movq	420(%rax), %rsi
	movq	%rsi, -48(%rbp)
	movl	428(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movw	-44(%rbp), %r8w
	movw	-42(%rbp), %r9w
	movzwl	%r8w, %edi
	movzwl	%r9w, %esi
	movzwl	-40(%rbp), %edx
	callq	pango_attr_background_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-24(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB8_10
# BB#9:                                 # %if.then.44
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdi
	callq	pango_attr_list_unref
.LBB8_10:                               # %if.end.46
	movq	-24(%rbp), %rax
	movq	296(%rax), %rdi
	callq	pango_attr_list_copy
	movq	-24(%rbp), %rdi
	movq	%rax, 312(%rdi)
	movq	-32(%rbp), %rax
	movq	372(%rax), %rdi
	movq	%rdi, -48(%rbp)
	movl	380(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movw	-44(%rbp), %dx
	movw	-42(%rbp), %si
	movzwl	%dx, %edi
	movzwl	%si, %esi
	movzwl	-40(%rbp), %edx
	callq	pango_attr_foreground_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-32(%rbp), %rax
	movq	432(%rax), %rsi
	movq	%rsi, -48(%rbp)
	movl	440(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movw	-44(%rbp), %r8w
	movw	-42(%rbp), %r9w
	movzwl	%r8w, %edi
	movzwl	%r9w, %esi
	movzwl	-40(%rbp), %edx
	callq	pango_attr_background_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	312(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	420(%rsi), %rdi
	movq	%rdi, 320(%rax)
	movl	428(%rsi), %ecx
	movl	%ecx, 328(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB8_12
# BB#11:                                # %if.then.67
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 280(%rax)
.LBB8_12:                               # %if.end.70
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_combo_tag_entry_style_set, .Lfunc_end8-gimp_combo_tag_entry_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_tag_count_changed,@function
gimp_combo_tag_entry_tag_count_changed: # @gimp_combo_tag_entry_tag_count_changed
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	movb	%cl, -29(%rbp)          # 1-byte Spill
	jle	.LBB9_2
# BB#1:                                 # %land.rhs
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 272(%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -29(%rbp)          # 1-byte Spill
.LBB9_2:                                # %land.end
	movb	-29(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_entry_set_icon_sensitive
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_combo_tag_entry_tag_count_changed, .Lfunc_end9-gimp_combo_tag_entry_tag_count_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_icon_press,@function
gimp_combo_tag_entry_icon_press:        # @gimp_combo_tag_entry_icon_press
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_combo_tag_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 288(%rax)
	jne	.LBB10_5
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	208(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_tagged_container_get_tag_count
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.LBB10_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 272(%rax)
	jne	.LBB10_4
# BB#3:                                 # %if.then.10
	movq	-40(%rbp), %rdi
	callq	gimp_tag_popup_new
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_combo_tag_entry_popup_destroy, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	%rax, 288(%rdx)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_tag_popup_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_popup_show
.LBB10_4:                               # %if.end
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movq	-40(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_widget_destroy
.LBB10_6:                               # %if.end.19
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_combo_tag_entry_icon_press, .Lfunc_end10-gimp_combo_tag_entry_icon_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_combo_tag_entry_popup_destroy,@function
gimp_combo_tag_entry_popup_destroy:     # @gimp_combo_tag_entry_popup_destroy
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	$0, 288(%rsi)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_grab_focus
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_combo_tag_entry_popup_destroy, .Lfunc_end11-gimp_combo_tag_entry_popup_destroy
	.cfi_endproc

	.type	gimp_combo_tag_entry_get_type.g_define_type_id__volatile,@object # @gimp_combo_tag_entry_get_type.g_define_type_id__volatile
	.local	gimp_combo_tag_entry_get_type.g_define_type_id__volatile
	.comm	gimp_combo_tag_entry_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpComboTagEntry"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_combo_tag_entry_new,@object # @__func__.gimp_combo_tag_entry_new
.L__func__.gimp_combo_tag_entry_new:
	.asciz	"gimp_combo_tag_entry_new"
	.size	.L__func__.gimp_combo_tag_entry_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TAGGED_CONTAINER (container)"
	.size	.L.str.2, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"container"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"mode"
	.size	.L.str.4, 5

	.type	gimp_combo_tag_entry_parent_class,@object # @gimp_combo_tag_entry_parent_class
	.local	gimp_combo_tag_entry_parent_class
	.comm	gimp_combo_tag_entry_parent_class,8,8
	.type	GimpComboTagEntry_private_offset,@object # @GimpComboTagEntry_private_offset
	.local	GimpComboTagEntry_private_offset
	.comm	GimpComboTagEntry_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tag-count-changed"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-go-down"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"icon-press"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"destroy"
	.size	.L.str.8, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
