	.text
	.file	"gimplanguagestore.bc"
	.globl	gimp_language_store_get_type
	.align	16, 0x90
	.type	gimp_language_store_get_type,@function
gimp_language_store_get_type:           # @gimp_language_store_get_type
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
	movq	gimp_language_store_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_language_store_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_list_store_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$176, %edx
	movabsq	$gimp_language_store_class_intern_init, %rdi
	movl	$120, %r8d
	movabsq	$gimp_language_store_init, %rcx
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
	movabsq	$gimp_language_store_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_language_store_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_language_store_get_type, .Lfunc_end0-gimp_language_store_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_language_store_class_intern_init,@function
gimp_language_store_class_intern_init:  # @gimp_language_store_class_intern_init
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
	movq	%rax, gimp_language_store_parent_class
	cmpl	$0, GimpLanguageStore_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpLanguageStore_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_language_store_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_language_store_class_intern_init, .Lfunc_end1-gimp_language_store_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_language_store_init,@function
gimp_language_store_init:               # @gimp_language_store_init
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
	movq	.Lgimp_language_store_init.column_types, %rdi
	movq	%rdi, -32(%rbp)
	movq	.Lgimp_language_store_init.column_types+8, %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_list_store_set_column_types
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_tree_sortable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$gimp_language_store_sort, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	gtk_tree_sortable_set_sort_func
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_sortable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r9d, %edx
	callq	gtk_tree_sortable_set_sort_column_id
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_language_store_init, .Lfunc_end2-gimp_language_store_init
	.cfi_endproc

	.globl	gimp_language_store_new
	.align	16, 0x90
	.type	gimp_language_store_new,@function
gimp_language_store_new:                # @gimp_language_store_new
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
	callq	gimp_language_store_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_language_store_new, .Lfunc_end3-gimp_language_store_new
	.cfi_endproc

	.globl	gimp_language_store_add
	.align	16, 0x90
	.type	gimp_language_store_add,@function
gimp_language_store_add:                # @gimp_language_store_add
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_language_store_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_language_store_add, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_language_store_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB4_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_language_store_add, .Lfunc_end4-gimp_language_store_add
	.cfi_endproc

	.globl	gimp_language_store_lookup
	.align	16, 0x90
	.type	gimp_language_store_lookup,@function
gimp_language_store_lookup:             # @gimp_language_store_lookup
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_language_store_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_language_store_lookup, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_33
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_language_store_lookup, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_33
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.19
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_language_store_lookup, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_33
.LBB5_21:                               # %if.end.21
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.22
	movl	$45, %esi
	movq	-24(%rbp), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_24
# BB#23:                                # %if.then.25
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.26
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
.LBB5_25:                               # %if.end.29
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -56(%rbp)
.LBB5_26:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rbp)
	je	.LBB5_32
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB5_26 Depth=1
	movl	$1, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -88(%rbp)
	je	.LBB5_30
# BB#28:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movslq	-52(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB5_30
# BB#29:                                # %if.then.41
	movq	-88(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_32
.LBB5_30:                               # %if.end.42
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	-88(%rbp), %rdi
	callq	g_free
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB5_26 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_tree_model_iter_next
	movl	%eax, -56(%rbp)
	jmp	.LBB5_26
.LBB5_32:                               # %for.end
	movl	-56(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_language_store_lookup, .Lfunc_end5-gimp_language_store_lookup
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_language_store_class_init,@function
gimp_language_store_class_init:         # @gimp_language_store_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_language_store_real_add, %rsi
	movabsq	$gimp_language_store_constructed, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 72(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 168(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_language_store_class_init, .Lfunc_end6-gimp_language_store_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_language_store_constructed,@function
gimp_language_store_constructed:        # @gimp_language_store_constructed
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_language_store_parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_language_store_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_language_store_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_language_store_parse_iso_codes
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_language_store_constructed, .Lfunc_end7-gimp_language_store_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_language_store_real_add,@function
gimp_language_store_real_add:           # @gimp_language_store_real_add
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_append
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_language_store_real_add, .Lfunc_end8-gimp_language_store_real_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_language_store_sort,@function
gimp_language_store_sort:               # @gimp_language_store_sort
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movl	$1, %eax
	leaq	-72(%rbp), %r8
	xorl	%r9d, %r9d
	movl	$24, %r10d
	movl	%r10d, %r11d
	leaq	-96(%rbp), %rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, %rcx
	movq	%rcx, %rdi
	movl	%r9d, %esi
	movq	%r11, %rdx
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	movq	%r11, -112(%rbp)        # 8-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	memset
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-104(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movl	$0, -100(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-132(%rbp), %edx        # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	gtk_tree_model_get_value
	movl	$1, %edx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_model_get_value
	leaq	-72(%rbp), %rdi
	callq	g_value_get_string
	cmpq	$0, %rax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$-1, -100(%rbp)
.LBB9_2:                                # %if.end
	leaq	-96(%rbp), %rdi
	callq	g_value_get_string
	cmpq	$0, %rax
	jne	.LBB9_4
# BB#3:                                 # %if.then.3
	movl	$1, -100(%rbp)
.LBB9_4:                                # %if.end.4
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
	leaq	-96(%rbp), %rdi
	callq	g_value_unset
	cmpl	$0, -100(%rbp)
	je	.LBB9_6
# BB#5:                                 # %if.then.6
	movl	-100(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.end.7
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_tree_model_get_value
	xorl	%edx, %edx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_model_get_value
	leaq	-72(%rbp), %rdi
	callq	g_value_get_string
	leaq	-96(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_value_get_string
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_utf8_collate
	leaq	-72(%rbp), %rdi
	movl	%eax, -100(%rbp)
	callq	g_value_unset
	leaq	-96(%rbp), %rdi
	callq	g_value_unset
	movl	-100(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB9_7:                                # %return
	movl	-12(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_language_store_sort, .Lfunc_end9-gimp_language_store_sort
	.cfi_endproc

	.type	gimp_language_store_get_type.g_define_type_id__volatile,@object # @gimp_language_store_get_type.g_define_type_id__volatile
	.local	gimp_language_store_get_type.g_define_type_id__volatile
	.comm	gimp_language_store_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpLanguageStore"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_language_store_add,@object # @__func__.gimp_language_store_add
.L__func__.gimp_language_store_add:
	.asciz	"gimp_language_store_add"
	.size	.L__func__.gimp_language_store_add, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_LANGUAGE_STORE (store)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"label != NULL"
	.size	.L.str.3, 14

	.type	.L__func__.gimp_language_store_lookup,@object # @__func__.gimp_language_store_lookup
.L__func__.gimp_language_store_lookup:
	.asciz	"gimp_language_store_lookup"
	.size	.L__func__.gimp_language_store_lookup, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"code != NULL"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"iter != NULL"
	.size	.L.str.5, 13

	.type	gimp_language_store_parent_class,@object # @gimp_language_store_parent_class
	.local	gimp_language_store_parent_class
	.comm	gimp_language_store_parent_class,8,8
	.type	GimpLanguageStore_private_offset,@object # @GimpLanguageStore_private_offset
	.local	GimpLanguageStore_private_offset
	.comm	GimpLanguageStore_private_offset,4,4
	.type	.Lgimp_language_store_init.column_types,@object # @gimp_language_store_init.column_types
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.Lgimp_language_store_init.column_types:
	.quad	64                      # 0x40
	.quad	64                      # 0x40
	.size	.Lgimp_language_store_init.column_types, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
