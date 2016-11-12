	.text
	.file	"gimpintstore.bc"
	.globl	gimp_int_store_get_type
	.align	16, 0x90
	.type	gimp_int_store_get_type,@function
gimp_int_store_get_type:                # @gimp_int_store_get_type
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
	movq	gimp_int_store_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_int_store_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_list_store_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$200, %edx
	leaq	gimp_int_store_class_intern_init(%rip), %rdi
	movl	$128, %r8d
	leaq	gimp_int_store_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	leaq	gimp_int_store_get_type.g_implement_interface_info(%rip), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static@PLT
	leaq	gimp_int_store_get_type.g_define_type_id__volatile(%rip), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_int_store_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_int_store_get_type, .Lfunc_end0-gimp_int_store_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_class_intern_init,@function
gimp_int_store_class_intern_init:       # @gimp_int_store_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_int_store_parent_class(%rip)
	cmpl	$0, GimpIntStore_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpIntStore_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_int_store_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_int_store_class_intern_init, .Lfunc_end1-gimp_int_store_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_init,@function
gimp_int_store_init:                    # @gimp_int_store_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_int_store_init, .Lfunc_end2-gimp_int_store_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_tree_model_init,@function
gimp_int_store_tree_model_init:         # @gimp_int_store_tree_model_init
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
	callq	g_type_interface_peek_parent@PLT
	leaq	gimp_int_store_row_deleted(%rip), %rdi
	leaq	gimp_int_store_row_inserted(%rip), %rcx
	movq	%rax, parent_iface(%rip)
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_int_store_tree_model_init, .Lfunc_end3-gimp_int_store_tree_model_init
	.cfi_endproc

	.globl	gimp_int_store_new
	.align	16, 0x90
	.type	gimp_int_store_new,@function
gimp_int_store_new:                     # @gimp_int_store_new
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
	callq	gimp_int_store_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_int_store_new, .Lfunc_end4-gimp_int_store_new
	.cfi_endproc

	.globl	gimp_int_store_lookup_by_value
	.align	16, 0x90
	.type	gimp_int_store_lookup_by_value,@function
gimp_int_store_lookup_by_value:         # @gimp_int_store_lookup_by_value
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_tree_model_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_store_lookup_by_value(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_24
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_store_lookup_by_value(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_24
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -36(%rbp)
.LBB5_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB5_23
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB5_18 Depth=1
	xorl	%edx, %edx
	leaq	-68(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movl	-68(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jne	.LBB5_21
# BB#20:                                # %if.then.21
	jmp	.LBB5_23
.LBB5_21:                               # %if.end.22
                                        #   in Loop: Header=BB5_18 Depth=1
	jmp	.LBB5_22
.LBB5_22:                               # %for.inc
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -36(%rbp)
	jmp	.LBB5_18
.LBB5_23:                               # %for.end
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_int_store_lookup_by_value, .Lfunc_end5-gimp_int_store_lookup_by_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_class_init,@function
gimp_int_store_class_init:              # @gimp_int_store_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$4, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$235, %r8d
	leaq	gimp_int_store_get_property(%rip), %rdx
	leaq	gimp_int_store_set_property(%rip), %r9
	leaq	gimp_int_store_finalize(%rip), %r10
	leaq	gimp_int_store_constructed(%rip), %r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r10, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_param_spec_gtype@PLT
	movl	$1, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movl	$8, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_int_store_class_init, .Lfunc_end6-gimp_int_store_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_constructed,@function
gimp_int_store_constructed:             # @gimp_int_store_constructed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_int_store_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_int_store_parent_class(%rip), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_int_store_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_2:                                # %if.end
	movq	$24, -64(%rbp)
	movq	$64, -56(%rbp)
	movq	$64, -48(%rbp)
	callq	gdk_pixbuf_get_type@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$4, (%rax)
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	movl	$68, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_5:                                # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$5, %esi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_list_store_set_column_types@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_int_store_add_empty
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_int_store_constructed, .Lfunc_end7-gimp_int_store_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_finalize,@function
gimp_int_store_finalize:                # @gimp_int_store_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_store_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gtk_tree_iter_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_int_store_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_int_store_finalize, .Lfunc_end8-gimp_int_store_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_set_property,@function
gimp_int_store_set_property:            # @gimp_int_store_set_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_gtype@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$188, %edx
	leaq	.L.str.10(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_int_store_set_property, .Lfunc_end9-gimp_int_store_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_get_property,@function
gimp_int_store_get_property:            # @gimp_int_store_get_property
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_value_set_gtype@PLT
	jmp	.LBB10_5
.LBB10_2:                               # %sw.default
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movl	$207, %edx
	leaq	.L.str.10(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB10_5
.LBB10_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_int_store_get_property, .Lfunc_end10-gimp_int_store_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_add_empty,@function
gimp_int_store_add_empty:               # @gimp_int_store_add_empty
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
	subq	$80, %rsp
	xorl	%esi, %esi
	movl	$32, %eax
	movl	%eax, %edx
	leaq	-40(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	memset@PLT
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 120(%rax)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_int_store_add_empty(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_6
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_prepend@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	-40(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	leaq	-40(%rbp), %rdi
	callq	gtk_tree_iter_copy@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, 120(%rsi)
.LBB11_6:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_int_store_add_empty, .Lfunc_end11-gimp_int_store_add_empty
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_row_inserted,@function
gimp_int_store_row_inserted:            # @gimp_int_store_row_inserted
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_store_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	parent_iface(%rip), %rax
	cmpq	$0, 24(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	parent_iface(%rip), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB13_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB13_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	120(%rcx), %rcx
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcmp@PLT
	cmpl	$0, %eax
	je	.LBB13_5
# BB#4:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_remove@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB13_5:                               # %if.end.12
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_int_store_row_inserted, .Lfunc_end13-gimp_int_store_row_inserted
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_int_store_row_deleted,@function
gimp_int_store_row_deleted:             # @gimp_int_store_row_deleted
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_store_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	parent_iface(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	parent_iface(%rip), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB14_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	$0, 120(%rax)
.LBB14_4:                               # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_int_store_row_deleted, .Lfunc_end14-gimp_int_store_row_deleted
	.cfi_endproc

	.type	gimp_int_store_get_type.g_define_type_id__volatile,@object # @gimp_int_store_get_type.g_define_type_id__volatile
	.local	gimp_int_store_get_type.g_define_type_id__volatile
	.comm	gimp_int_store_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpIntStore"
	.size	.L.str, 13

	.type	gimp_int_store_get_type.g_implement_interface_info,@object # @gimp_int_store_get_type.g_implement_interface_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_int_store_get_type.g_implement_interface_info:
	.quad	gimp_int_store_tree_model_init
	.quad	0
	.quad	0
	.size	gimp_int_store_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_int_store_lookup_by_value,@object # @__func__.gimp_int_store_lookup_by_value
.L__func__.gimp_int_store_lookup_by_value:
	.asciz	"gimp_int_store_lookup_by_value"
	.size	.L__func__.gimp_int_store_lookup_by_value, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GTK_IS_TREE_MODEL (model)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"iter != NULL"
	.size	.L.str.3, 13

	.type	gimp_int_store_parent_class,@object # @gimp_int_store_parent_class
	.local	gimp_int_store_parent_class
	.comm	gimp_int_store_parent_class,8,8
	.type	GimpIntStore_private_offset,@object # @GimpIntStore_private_offset
	.local	GimpIntStore_private_offset
	.comm	GimpIntStore_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"user-data-type"
	.size	.L.str.4, 15

	.type	.L__func__.gimp_int_store_add_empty,@object # @__func__.gimp_int_store_add_empty
.L__func__.gimp_int_store_add_empty:
	.asciz	"gimp_int_store_add_empty"
	.size	.L__func__.gimp_int_store_add_empty, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"store->empty_iter == NULL"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp20-libgimp"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(Empty)"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpintstore.c"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9

	.type	parent_iface,@object    # @parent_iface
	.local	parent_iface
	.comm	parent_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
