	.text
	.file	"gimpcolorprofilestore.bc"
	.globl	gimp_color_profile_store_get_type
	.align	16, 0x90
	.type	gimp_color_profile_store_get_type,@function
gimp_color_profile_store_get_type:      # @gimp_color_profile_store_get_type
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
	movq	gimp_color_profile_store_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_profile_store_get_type.g_define_type_id__volatile(%rip), %rax
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
	leaq	gimp_color_profile_store_class_intern_init(%rip), %rdi
	movl	$128, %r8d
	leaq	gimp_color_profile_store_init(%rip), %rcx
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
	leaq	gimp_color_profile_store_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_profile_store_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_profile_store_get_type, .Lfunc_end0-gimp_color_profile_store_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_class_intern_init,@function
gimp_color_profile_store_class_intern_init: # @gimp_color_profile_store_class_intern_init
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
	movq	%rax, gimp_color_profile_store_parent_class(%rip)
	cmpl	$0, GimpColorProfileStore_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorProfileStore_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_profile_store_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_profile_store_class_intern_init, .Lfunc_end1-gimp_color_profile_store_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_init,@function
gimp_color_profile_store_init:          # @gimp_color_profile_store_init
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
	movq	.Lgimp_color_profile_store_init.types(%rip), %rdi
	movq	%rdi, -48(%rbp)
	movq	.Lgimp_color_profile_store_init.types+8(%rip), %rdi
	movq	%rdi, -40(%rbp)
	movq	.Lgimp_color_profile_store_init.types+16(%rip), %rdi
	movq	%rdi, -32(%rbp)
	movq	.Lgimp_color_profile_store_init.types+24(%rip), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4, %esi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_list_store_set_column_types@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_profile_store_init, .Lfunc_end2-gimp_color_profile_store_init
	.cfi_endproc

	.globl	gimp_color_profile_store_new
	.align	16, 0x90
	.type	gimp_color_profile_store_new,@function
gimp_color_profile_store_new:           # @gimp_color_profile_store_new
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
	callq	gimp_color_profile_store_get_type@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_profile_store_new, .Lfunc_end3-gimp_color_profile_store_new
	.cfi_endproc

	.globl	gimp_color_profile_store_add
	.align	16, 0x90
	.type	gimp_color_profile_store_add,@function
gimp_color_profile_store_add:           # @gimp_color_profile_store_add
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_color_profile_store_get_type@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -116(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_store_add(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_22
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	jne	.LBB4_15
# BB#14:                                # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	jne	.LBB4_16
.LBB4_15:                               # %if.then.14
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.15
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_store_add(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_22
.LBB4_17:                               # %if.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.17
	cmpq	$0, -24(%rbp)
	jne	.LBB4_21
# BB#19:                                # %land.lhs.true.19
	cmpq	$0, -32(%rbp)
	jne	.LBB4_21
# BB#20:                                # %if.then.21
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	$8, %eax
	movl	%eax, %edx
	callq	g_dpgettext@PLT
	movq	%rax, -32(%rbp)
.LBB4_21:                               # %if.end.23
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_color_profile_store_get_separator
	movq	-16(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-96(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_list_store_insert_before@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-96(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movl	$1, %r9d
	movl	$3, %r10d
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$1, (%rsp)
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$-1, 24(%rsp)
	movl	$-1, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -160(%rbp)       # 4-byte Spill
	movl	%r10d, -164(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set@PLT
.LBB4_22:                               # %return
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_profile_store_add, .Lfunc_end4-gimp_color_profile_store_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_get_separator,@function
gimp_color_profile_store_get_separator: # @gimp_color_profile_store_get_separator
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %edx
	movl	$1, %ecx
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	cmovnel	%ecx, %edx
	movl	%edx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -36(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB5_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%edx, %edx
	leaq	-44(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movl	-44(%rbp), %edx
	cmpl	-40(%rbp), %edx
	jne	.LBB5_4
# BB#3:                                 # %if.then
	jmp	.LBB5_7
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -36(%rbp)
	jmp	.LBB5_1
.LBB5_6:                                # %for.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_color_profile_store_create_separator
.LBB5_7:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_profile_store_get_separator, .Lfunc_end5-gimp_color_profile_store_get_separator
	.cfi_endproc

	.hidden	_gimp_color_profile_store_history_add
	.globl	_gimp_color_profile_store_history_add
	.align	16, 0x90
	.type	_gimp_color_profile_store_history_add,@function
_gimp_color_profile_store_history_add:  # @_gimp_color_profile_store_history_add
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$-1, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_color_profile_store_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__._gimp_color_profile_store_history_add(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_41
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__._gimp_color_profile_store_history_add(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_41
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -52(%rbp)
.LBB6_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB6_34
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB6_18 Depth=1
	xorl	%edx, %edx
	leaq	-84(%rbp), %rcx
	movl	$3, %r8d
	leaq	-88(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	$-1, (%rsp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$0, -84(%rbp)
	je	.LBB6_21
# BB#20:                                # %if.then.25
                                        #   in Loop: Header=BB6_18 Depth=1
	jmp	.LBB6_33
.LBB6_21:                               # %if.end.26
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-88(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB6_23
# BB#22:                                # %if.then.28
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB6_23:                               # %if.end.29
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	$2, %edx
	leaq	-96(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpq	$0, -96(%rbp)
	je	.LBB6_26
# BB#24:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB6_18 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB6_26
# BB#25:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB6_28
.LBB6_26:                               # %lor.lhs.false
                                        #   in Loop: Header=BB6_18 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB6_32
# BB#27:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB6_18 Depth=1
	cmpq	$0, -24(%rbp)
	jne	.LBB6_32
.LBB6_28:                               # %if.then.39
	cmpq	$0, -32(%rbp)
	je	.LBB6_31
# BB#29:                                # %land.lhs.true.41
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_31
# BB#30:                                # %if.then.43
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_list_store_set@PLT
.LBB6_31:                               # %if.end.46
	movq	-96(%rbp), %rdi
	callq	g_free@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB6_41
.LBB6_32:                               # %if.end.47
                                        #   in Loop: Header=BB6_18 Depth=1
	jmp	.LBB6_33
.LBB6_33:                               # %for.inc
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -52(%rbp)
	jmp	.LBB6_18
.LBB6_34:                               # %for.end
	cmpq	$0, -24(%rbp)
	jne	.LBB6_36
# BB#35:                                # %if.then.50
	movl	$0, -4(%rbp)
	jmp	.LBB6_41
.LBB6_36:                               # %if.end.51
	cmpq	$0, -32(%rbp)
	je	.LBB6_39
# BB#37:                                # %land.lhs.true.53
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_39
# BB#38:                                # %if.then.56
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	%eax, %r8d
	callq	gimp_color_profile_store_history_insert
	movl	%eax, -52(%rbp)
	jmp	.LBB6_40
.LBB6_39:                               # %if.else.58
	movq	-24(%rbp), %rdi
	callq	g_filename_display_basename@PLT
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movl	-56(%rbp), %r8d
	addl	$1, %r8d
	movl	%r8d, -56(%rbp)
	callq	gimp_color_profile_store_history_insert
	movl	%eax, -52(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
.LBB6_40:                               # %if.end.63
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_41:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_gimp_color_profile_store_history_add, .Lfunc_end6-_gimp_color_profile_store_history_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_history_insert,@function
gimp_color_profile_store_history_insert: # @gimp_color_profile_store_history_insert
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
	pushq	%rbx
	subq	$216, %rsp
.Ltmp25:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_store_history_insert(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -12(%rbp)
	jmp	.LBB7_30
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.2
	cmpq	$0, -48(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.4
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.5
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_store_history_insert(%rip), %rsi
	leaq	.L.str.19(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -12(%rbp)
	jmp	.LBB7_30
.LBB7_9:                                # %if.end.6
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.7
	jmp	.LBB7_11
.LBB7_11:                               # %do.body.8
	cmpl	$-1, -52(%rbp)
	jle	.LBB7_13
# BB#12:                                # %if.then.10
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.11
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_store_history_insert(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -12(%rbp)
	jmp	.LBB7_30
.LBB7_14:                               # %if.end.12
	jmp	.LBB7_15
.LBB7_15:                               # %do.end.13
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_color_profile_store_get_separator
	leaq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -100(%rbp)
.LBB7_16:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -100(%rbp)
	je	.LBB7_27
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$3, %r8d
	leaq	-108(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$2, -104(%rbp)
	jne	.LBB7_19
# BB#18:                                # %if.then.16
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_insert_before@PLT
	jmp	.LBB7_27
.LBB7_19:                               # %if.end.19
                                        #   in Loop: Header=BB7_16 Depth=1
	cmpl	$0, -104(%rbp)
	jne	.LBB7_25
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_16 Depth=1
	cmpl	$-1, -108(%rbp)
	jle	.LBB7_25
# BB#21:                                # %if.then.22
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	leaq	-120(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpq	$0, -120(%rbp)
	je	.LBB7_24
# BB#22:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-48(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_utf8_collate@PLT
	cmpl	$0, %eax
	jge	.LBB7_24
# BB#23:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_insert_before@PLT
	movq	-120(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB7_27
.LBB7_24:                               # %if.end.30
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-120(%rbp), %rdi
	callq	g_free@PLT
.LBB7_25:                               # %if.end.31
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_26
.LBB7_26:                               # %for.inc
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -100(%rbp)
	jmp	.LBB7_16
.LBB7_27:                               # %for.end
	cmpl	$0, -100(%rbp)
	je	.LBB7_29
# BB#28:                                # %if.then.34
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movl	$1, %edx
	movl	$3, %r9d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r11
	movl	-52(%rbp), %ebx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	%r9d, -176(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$1, (%rsp)
	movq	%r11, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	$-1, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -180(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set@PLT
.LBB7_29:                               # %if.end.37
	movl	-100(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB7_30:                               # %return
	movl	-12(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_profile_store_history_insert, .Lfunc_end7-gimp_color_profile_store_history_insert
	.cfi_endproc

	.hidden	_gimp_color_profile_store_history_reorder
	.globl	_gimp_color_profile_store_history_reorder
	.align	16, 0x90
	.type	_gimp_color_profile_store_history_reorder,@function
_gimp_color_profile_store_history_reorder: # @_gimp_color_profile_store_history_reorder
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_profile_store_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__._gimp_color_profile_store_history_reorder(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_31
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__._gimp_color_profile_store_history_reorder(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_31
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %edx
	leaq	-28(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$0, -28(%rbp)
	jne	.LBB8_19
# BB#18:                                # %if.then.20
	jmp	.LBB8_31
.LBB8_19:                               # %if.end.21
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -32(%rbp)
.LBB8_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB8_31
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB8_20 Depth=1
	xorl	%edx, %edx
	leaq	-60(%rbp), %rcx
	movl	$3, %r8d
	leaq	-64(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	$-1, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$0, -60(%rbp)
	jne	.LBB8_29
# BB#22:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB8_20 Depth=1
	cmpl	$-1, -64(%rbp)
	jle	.LBB8_29
# BB#23:                                # %if.then.29
                                        #   in Loop: Header=BB8_20 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_25
# BB#24:                                # %if.then.31
                                        #   in Loop: Header=BB8_20 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB8_28
.LBB8_25:                               # %if.else.32
                                        #   in Loop: Header=BB8_20 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB8_27
# BB#26:                                # %if.then.34
                                        #   in Loop: Header=BB8_20 Depth=1
	movl	$0, -64(%rbp)
.LBB8_27:                               # %if.end.35
                                        #   in Loop: Header=BB8_20 Depth=1
	jmp	.LBB8_28
.LBB8_28:                               # %if.end.36
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movl	-64(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_list_store_set@PLT
.LBB8_29:                               # %if.end.39
                                        #   in Loop: Header=BB8_20 Depth=1
	jmp	.LBB8_30
.LBB8_30:                               # %for.inc
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -32(%rbp)
	jmp	.LBB8_20
.LBB8_31:                               # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_gimp_color_profile_store_history_reorder, .Lfunc_end8-_gimp_color_profile_store_history_reorder
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_class_init,@function
gimp_color_profile_store_class_init:    # @gimp_color_profile_store_class_init
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp32:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.1(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	leaq	gimp_color_profile_store_get_property(%rip), %rdx
	leaq	gimp_color_profile_store_set_property(%rip), %r9
	leaq	gimp_color_profile_store_finalize(%rip), %r10
	leaq	gimp_color_profile_store_dispose(%rip), %r11
	leaq	gimp_color_profile_store_constructed(%rip), %rbx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_string@PLT
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_profile_store_class_init, .Lfunc_end9-gimp_color_profile_store_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_constructed,@function
gimp_color_profile_store_constructed:   # @gimp_color_profile_store_constructed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_store_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_color_profile_store_parent_class(%rip), %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast@PLT
	cmpq	$0, 72(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_profile_store_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_append@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%r9d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	movq	-16(%rbp), %rsi
	cmpq	$0, 120(%rsi)
	je	.LBB10_4
# BB#3:                                 # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rsi
	callq	gimp_color_profile_store_load
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB10_4:                               # %if.end.14
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_profile_store_constructed, .Lfunc_end10-gimp_color_profile_store_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_dispose,@function
gimp_color_profile_store_dispose:       # @gimp_color_profile_store_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_profile_store_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rsi
	callq	gimp_color_profile_store_save
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB11_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_profile_store_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_profile_store_dispose, .Lfunc_end11-gimp_color_profile_store_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_finalize,@function
gimp_color_profile_store_finalize:      # @gimp_color_profile_store_finalize
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
	callq	gimp_color_profile_store_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB12_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_profile_store_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_profile_store_finalize, .Lfunc_end12-gimp_color_profile_store_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_set_property,@function
gimp_color_profile_store_set_property:  # @gimp_color_profile_store_set_property
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
	callq	gimp_color_profile_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB13_7
	jmp	.LBB13_1
.LBB13_1:                               # %sw.bb
	jmp	.LBB13_2
.LBB13_2:                               # %do.body
	movq	-40(%rbp), %rax
	cmpq	$0, 120(%rax)
	jne	.LBB13_4
# BB#3:                                 # %if.then
	jmp	.LBB13_5
.LBB13_4:                               # %if.else
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_store_set_property(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_10
.LBB13_5:                               # %if.end
	jmp	.LBB13_6
.LBB13_6:                               # %do.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 120(%rdi)
	jmp	.LBB13_10
.LBB13_7:                               # %sw.default
	jmp	.LBB13_8
.LBB13_8:                               # %do.body.4
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
	leaq	.L.str.15(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	movl	$198, %edx
	leaq	.L.str.17(%rip), %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end.9
	jmp	.LBB13_10
.LBB13_10:                              # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_profile_store_set_property, .Lfunc_end13-gimp_color_profile_store_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_get_property,@function
gimp_color_profile_store_get_property:  # @gimp_color_profile_store_get_property
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
	callq	gimp_color_profile_store_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB14_2
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	120(%rax), %rsi
	callq	g_value_set_string@PLT
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
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.15(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	movl	$218, %edx
	leaq	.L.str.17(%rip), %rcx
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
	.size	gimp_color_profile_store_get_property, .Lfunc_end14-gimp_color_profile_store_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_load,@function
gimp_color_profile_store_load:          # @gimp_color_profile_store_load
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_scanner_new_file@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB15_13
.LBB15_2:                               # %if.end
	xorl	%esi, %esi
	leaq	.L.str.9(%rip), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol@PLT
	movl	$40, -44(%rbp)
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	-44(%rbp), %eax
	jne	.LBB15_10
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -44(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB15_5
	jmp	.LBB15_14
.LBB15_14:                              # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB15_7
	jmp	.LBB15_15
.LBB15_15:                              # %while.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB15_6
	jmp	.LBB15_8
.LBB15_5:                               # %sw.bb
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	$265, -44(%rbp)         # imm = 0x109
	jmp	.LBB15_9
.LBB15_6:                               # %sw.bb.3
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp)
	movl	%eax, %edx
	callq	gimp_color_profile_store_load_profile
	movl	%eax, -44(%rbp)
	jmp	.LBB15_9
.LBB15_7:                               # %sw.bb.5
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	$40, -44(%rbp)
	jmp	.LBB15_9
.LBB15_8:                               # %sw.default
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_9
.LBB15_9:                               # %sw.epilog
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_3
.LBB15_10:                              # %while.end
	cmpl	$40, -44(%rbp)
	je	.LBB15_12
# BB#11:                                # %if.then.7
	movq	-40(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	leaq	.L.str.5(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$1, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-72(%rbp), %esi         # 4-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token@PLT
.LBB15_12:                              # %if.end.10
	movq	-40(%rbp), %rdi
	callq	gimp_scanner_destroy@PLT
	movl	$1, -4(%rbp)
.LBB15_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_profile_store_load, .Lfunc_end15-gimp_color_profile_store_load
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_load_profile,@function
gimp_color_profile_store_load_profile:  # @gimp_color_profile_store_load_profile
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
	subq	$96, %rsp
	leaq	-72(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string@PLT
	cmpl	$0, %eax
	je	.LBB16_6
# BB#1:                                 # %land.lhs.true
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_string@PLT
	cmpl	$0, %eax
	je	.LBB16_6
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_from_uri@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB16_5
# BB#3:                                 # %land.lhs.true.5
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	callq	g_file_test@PLT
	cmpl	$0, %eax
	je	.LBB16_5
# BB#4:                                 # %if.then.8
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-28(%rbp), %r8d
	callq	gimp_color_profile_store_history_insert
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB16_5:                               # %if.end
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
	movl	$41, -4(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.end.10
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
	movl	$264, -4(%rbp)          # imm = 0x108
.LBB16_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_profile_store_load_profile, .Lfunc_end16-gimp_color_profile_store_load_profile
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_save,@function
gimp_color_profile_store_save:          # @gimp_color_profile_store_save
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp57:
	.cfi_offset %rbx, -24
	movl	$1, %eax
	leaq	.L.str.11(%rip), %rcx
	xorl	%r8d, %r8d
	movl	$64, %r9d
	movl	%r9d, %r10d
	leaq	-224(%rbp), %r11
	leaq	-160(%rbp), %rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rbx, %rdi
	movl	%r8d, %esi
	movq	%r10, %rdx
	movq	%r11, -256(%rbp)        # 8-byte Spill
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	movq	%r10, -272(%rbp)        # 8-byte Spill
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	memset@PLT
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdi
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	memset@PLT
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	-276(%rbp), %esi        # 4-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	callq	gimp_config_writer_new_file@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
	jmp	.LBB17_23
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-88(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -228(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -228(%rbp)
	je	.LBB17_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-236(%rbp), %rcx
	movl	$3, %r8d
	leaq	-240(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$0, -236(%rbp)
	jne	.LBB17_11
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_3 Depth=1
	cmpl	$0, -240(%rbp)
	jl	.LBB17_11
# BB#6:                                 # %land.lhs.true.6
                                        #   in Loop: Header=BB17_3 Depth=1
	cmpl	$8, -240(%rbp)
	jge	.LBB17_11
# BB#7:                                 # %if.then.8
                                        #   in Loop: Header=BB17_3 Depth=1
	movslq	-240(%rbp), %rax
	cmpq	$0, -160(%rbp,%rax,8)
	jne	.LBB17_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB17_3 Depth=1
	movslq	-240(%rbp), %rax
	cmpq	$0, -224(%rbp,%rax,8)
	je	.LBB17_10
.LBB17_9:                               # %if.then.13
                                        #   in Loop: Header=BB17_3 Depth=1
	leaq	.L.str.12(%rip), %rdi
	leaq	.L__func__.gimp_color_profile_store_save(%rip), %rsi
	movl	-240(%rbp), %edx
	movb	$0, %al
	callq	g_warning
.LBB17_10:                              # %if.end.14
                                        #   in Loop: Header=BB17_3 Depth=1
	leaq	-88(%rbp), %rsi
	movl	$1, %edx
	movl	$2, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leaq	-224(%rbp), %rcx
	leaq	-160(%rbp), %rdi
	movq	-56(%rbp), %r9
	movslq	-240(%rbp), %r10
	shlq	$3, %r10
	addq	%r10, %rdi
	movslq	-240(%rbp), %r10
	shlq	$3, %r10
	addq	%r10, %rcx
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-312(%rbp), %r9         # 8-byte Reload
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-320(%rbp), %r9         # 8-byte Reload
	movl	$-1, (%rsp)
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
.LBB17_11:                              # %if.end.19
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_12
.LBB17_12:                              # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -228(%rbp)
	jmp	.LBB17_3
.LBB17_13:                              # %for.end
	movl	$0, -232(%rbp)
.LBB17_14:                              # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -232(%rbp)
	jge	.LBB17_22
# BB#15:                                # %for.body.23
                                        #   in Loop: Header=BB17_14 Depth=1
	movslq	-232(%rbp), %rax
	cmpq	$0, -224(%rbp,%rax,8)
	je	.LBB17_20
# BB#16:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB17_14 Depth=1
	movslq	-232(%rbp), %rax
	cmpq	$0, -160(%rbp,%rax,8)
	je	.LBB17_20
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB17_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movslq	-232(%rbp), %rdx
	movq	-224(%rbp,%rdx,8), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_to_uri@PLT
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB17_19
# BB#18:                                # %if.then.36
                                        #   in Loop: Header=BB17_14 Depth=1
	leaq	.L.str.9(%rip), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_config_writer_open@PLT
	movq	-48(%rbp), %rdi
	movslq	-232(%rbp), %rsi
	movq	-160(%rbp,%rsi,8), %rsi
	callq	gimp_config_writer_string@PLT
	movq	-48(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	gimp_config_writer_string@PLT
	movq	-48(%rbp), %rdi
	callq	gimp_config_writer_close@PLT
	movq	-248(%rbp), %rdi
	callq	g_free@PLT
.LBB17_19:                              # %if.end.39
                                        #   in Loop: Header=BB17_14 Depth=1
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.40
                                        #   in Loop: Header=BB17_14 Depth=1
	movslq	-232(%rbp), %rax
	movq	-224(%rbp,%rax,8), %rdi
	callq	g_free@PLT
	movslq	-232(%rbp), %rax
	movq	-160(%rbp,%rax,8), %rdi
	callq	g_free@PLT
# BB#21:                                # %for.inc.45
                                        #   in Loop: Header=BB17_14 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB17_14
.LBB17_22:                              # %for.end.46
	leaq	.L.str.13(%rip), %rsi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_config_writer_finish@PLT
	movl	%eax, -12(%rbp)
.LBB17_23:                              # %return
	movl	-12(%rbp), %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_profile_store_save, .Lfunc_end17-gimp_color_profile_store_save
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
	leaq	.L.str.2(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_profile_store_create_separator,@function
gimp_color_profile_store_create_separator: # @gimp_color_profile_store_create_separator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_prepend@PLT
	jmp	.LBB19_11
.LBB19_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -68(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB19_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$3, -72(%rbp)
	jne	.LBB19_6
# BB#5:                                 # %if.then.6
	jmp	.LBB19_8
.LBB19_6:                               # %if.end
                                        #   in Loop: Header=BB19_3 Depth=1
	jmp	.LBB19_7
.LBB19_7:                               # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -68(%rbp)
	jmp	.LBB19_3
.LBB19_8:                               # %for.end
	cmpl	$0, -68(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.9
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_insert_before@PLT
.LBB19_10:                              # %if.end.12
	jmp	.LBB19_11
.LBB19_11:                              # %if.end.13
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$3, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$2, %ecx
	movl	$1, %r10d
	movq	-16(%rbp), %rsi
	cmpl	$0, -20(%rbp)
	cmovnel	%r10d, %ecx
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_color_profile_store_create_separator, .Lfunc_end19-gimp_color_profile_store_create_separator
	.cfi_endproc

	.type	gimp_color_profile_store_get_type.g_define_type_id__volatile,@object # @gimp_color_profile_store_get_type.g_define_type_id__volatile
	.local	gimp_color_profile_store_get_type.g_define_type_id__volatile
	.comm	gimp_color_profile_store_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorProfileStore"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"history"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimpWidgets"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_color_profile_store_add,@object # @__func__.gimp_color_profile_store_add
.L__func__.gimp_color_profile_store_add:
	.asciz	"gimp_color_profile_store_add"
	.size	.L__func__.gimp_color_profile_store_add, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_COLOR_PROFILE_STORE (store)"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"label != NULL || filename == NULL"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp20-libgimp"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"profile\004None"
	.size	.L.str.6, 13

	.type	.L__func__._gimp_color_profile_store_history_add,@object # @__func__._gimp_color_profile_store_history_add
.L__func__._gimp_color_profile_store_history_add:
	.asciz	"_gimp_color_profile_store_history_add"
	.size	.L__func__._gimp_color_profile_store_history_add, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"iter != NULL"
	.size	.L.str.7, 13

	.type	.L__func__._gimp_color_profile_store_history_reorder,@object # @__func__._gimp_color_profile_store_history_reorder
.L__func__._gimp_color_profile_store_history_reorder:
	.asciz	"_gimp_color_profile_store_history_reorder"
	.size	.L__func__._gimp_color_profile_store_history_reorder, 42

	.type	gimp_color_profile_store_parent_class,@object # @gimp_color_profile_store_parent_class
	.local	gimp_color_profile_store_parent_class
	.comm	gimp_color_profile_store_parent_class,8,8
	.type	GimpColorProfileStore_private_offset,@object # @GimpColorProfileStore_private_offset
	.local	GimpColorProfileStore_private_offset
	.comm	GimpColorProfileStore_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Select color profile from disk..."
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"color-profile"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fatal parse error"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP color profile history"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s: double index %d"
	.size	.L.str.12, 20

	.type	.L__func__.gimp_color_profile_store_save,@object # @__func__.gimp_color_profile_store_save
.L__func__.gimp_color_profile_store_save:
	.asciz	"gimp_color_profile_store_save"
	.size	.L__func__.gimp_color_profile_store_save, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"end of color profile history"
	.size	.L.str.13, 29

	.type	.L__func__.gimp_color_profile_store_set_property,@object # @__func__.gimp_color_profile_store_set_property
.L__func__.gimp_color_profile_store_set_property:
	.asciz	"gimp_color_profile_store_set_property"
	.size	.L__func__.gimp_color_profile_store_set_property, 38

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"store->history == NULL"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimpcolorprofilestore.c"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9

	.type	.Lgimp_color_profile_store_init.types,@object # @gimp_color_profile_store_init.types
	.section	.rodata,"a",@progbits
	.align	16
.Lgimp_color_profile_store_init.types:
	.quad	24                      # 0x18
	.quad	64                      # 0x40
	.quad	64                      # 0x40
	.quad	24                      # 0x18
	.size	.Lgimp_color_profile_store_init.types, 32

	.type	.L__func__.gimp_color_profile_store_history_insert,@object # @__func__.gimp_color_profile_store_history_insert
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_color_profile_store_history_insert:
	.asciz	"gimp_color_profile_store_history_insert"
	.size	.L__func__.gimp_color_profile_store_history_insert, 40

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"filename != NULL"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"label != NULL"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"index > -1"
	.size	.L.str.20, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
