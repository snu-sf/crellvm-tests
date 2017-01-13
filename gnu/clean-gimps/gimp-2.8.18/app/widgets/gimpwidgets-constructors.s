	.text
	.file	"gimpwidgets-constructors.bc"
	.globl	gimp_paint_mode_menu_new
	.align	16, 0x90
	.type	gimp_paint_mode_menu_new,@function
gimp_paint_mode_menu_new:               # @gimp_paint_mode_menu_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	callq	gimp_layer_mode_effects_get_type
	movl	$21, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$10, %r8d
	movl	$4, %r9d
	movl	$16, %edi
	movl	$7, %r10d
	movl	$9, %r11d
	movl	$3, %ebx
	movl	$17, %r14d
	movl	$5, %r15d
	movl	$19, %r12d
	movl	$18, %r13d
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	$6, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	$8, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	$20, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movl	$15, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	$11, %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	$12, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	$13, %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	$14, %ecx
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$16, (%rsp)
	movl	$7, 8(%rsp)
	movl	$9, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$17, 32(%rsp)
	movl	$5, 40(%rsp)
	movl	$19, 48(%rsp)
	movl	$18, 56(%rsp)
	movl	$6, 64(%rsp)
	movl	$8, 72(%rsp)
	movl	$20, 80(%rsp)
	movl	$21, 88(%rsp)
	movl	$15, 96(%rsp)
	movl	$11, 104(%rsp)
	movl	$12, 112(%rsp)
	movl	$13, 120(%rsp)
	movl	$14, 128(%rsp)
	movb	$0, %al
	movl	%r13d, -108(%rbp)       # 4-byte Spill
	movl	%r15d, -112(%rbp)       # 4-byte Spill
	movl	%r14d, -116(%rbp)       # 4-byte Spill
	movl	%r10d, -120(%rbp)       # 4-byte Spill
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	movl	%r11d, -128(%rbp)       # 4-byte Spill
	movl	%r12d, -132(%rbp)       # 4-byte Spill
	callq	gimp_enum_store_new_with_values
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_int_store_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_int_store_insert_separator_after
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_int_store_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$7, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_int_store_insert_separator_after
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_int_store_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$17, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_int_store_insert_separator_after
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_int_store_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$18, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_int_store_insert_separator_after
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_int_store_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_int_store_insert_separator_after
	cmpl	$0, -44(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gimp_enum_store_insert_value_after
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$22, %edx
	movq	%rax, %rdi
	callq	gimp_enum_store_insert_value_after
.LBB0_2:                                # %if.end
	cmpl	$0, -48(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.17
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%rax, %rdi
	callq	gimp_enum_store_insert_value_after
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$22, %esi
	movl	$23, %edx
	movq	%rax, %rdi
	callq	gimp_enum_store_insert_value_after
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$23, %esi
	movl	$25, %edx
	movq	%rax, %rdi
	callq	gimp_enum_store_insert_value_after
.LBB0_4:                                # %if.end.24
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_enum_store_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_new_with_model
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_paint_mode_menu_separator_func, %rsi
	movq	$-1, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	callq	gtk_combo_box_set_row_separator_func
	movq	-64(%rbp), %rax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_paint_mode_menu_new, .Lfunc_end0-gimp_paint_mode_menu_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_insert_separator_after,@function
gimp_int_store_insert_separator_after:  # @gimp_int_store_insert_separator_after
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_int_store_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_int_store_insert_separator_after, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_14
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_store_lookup_by_value
	cmpl	$0, %eax
	je	.LBB1_14
# BB#13:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_list_store_insert_after
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	-16(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_list_store_set
.LBB1_14:                               # %if.end.21
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_int_store_insert_separator_after, .Lfunc_end1-gimp_int_store_insert_separator_after
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_enum_store_insert_value_after,@function
gimp_enum_store_insert_value_after:     # @gimp_enum_store_insert_value_after
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_enum_store_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_enum_store_insert_value_after, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_16
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_store_lookup_by_value
	cmpl	$0, %eax
	je	.LBB2_16
# BB#13:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-16(%rbp), %esi
	callq	g_enum_get_value
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_list_store_insert_after
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_enum_value_get_desc
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-112(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi
	movl	(%rdi), %r9d
	movq	-120(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movq	-152(%rbp), %r9         # 8-byte Reload
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
.LBB2_15:                               # %if.end.28
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.29
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_enum_store_insert_value_after, .Lfunc_end2-gimp_enum_store_insert_value_after
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_paint_mode_menu_separator_func,@function
gimp_paint_mode_menu_separator_func:    # @gimp_paint_mode_menu_separator_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	leaq	-28(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movb	$0, %al
	callq	gtk_tree_model_get
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	%ecx, %r8d
	cmpl	%r8d, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_paint_mode_menu_separator_func, .Lfunc_end3-gimp_paint_mode_menu_separator_func
	.cfi_endproc

	.globl	gimp_stock_button_new
	.align	16, 0x90
	.type	gimp_stock_button_new,@function
gimp_stock_button_new:                  # @gimp_stock_button_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gtk_button_new
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movl	$4, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
.LBB4_3:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_stock_button_new, .Lfunc_end4-gimp_stock_button_new
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_int_store_insert_separator_after,@object # @__func__.gimp_int_store_insert_separator_after
.L__func__.gimp_int_store_insert_separator_after:
	.asciz	"gimp_int_store_insert_separator_after"
	.size	.L__func__.gimp_int_store_insert_separator_after, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_INT_STORE (store)"
	.size	.L.str.1, 26

	.type	.L__func__.gimp_enum_store_insert_value_after,@object # @__func__.gimp_enum_store_insert_value_after
.L__func__.gimp_enum_store_insert_value_after:
	.asciz	"gimp_enum_store_insert_value_after"
	.size	.L__func__.gimp_enum_store_insert_value_after, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_ENUM_STORE (store)"
	.size	.L.str.2, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
