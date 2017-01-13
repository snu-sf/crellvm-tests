	.text
	.file	"gimpparasitelist.bc"
	.globl	gimp_parasite_list_get_type
	.align	16, 0x90
	.type	gimp_parasite_list_get_type,@function
gimp_parasite_list_get_type:            # @gimp_parasite_list_get_type
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
	movq	gimp_parasite_list_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_parasite_list_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$176, %edx
	movabsq	$gimp_parasite_list_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_parasite_list_init, %rcx
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
	callq	gimp_config_interface_get_type
	movabsq	$gimp_parasite_list_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_parasite_list_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_parasite_list_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_parasite_list_get_type, .Lfunc_end0-gimp_parasite_list_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_parasite_list_class_intern_init,@function
gimp_parasite_list_class_intern_init:   # @gimp_parasite_list_class_intern_init
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
	movq	%rax, gimp_parasite_list_parent_class
	cmpl	$0, GimpParasiteList_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpParasiteList_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_parasite_list_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_parasite_list_class_intern_init, .Lfunc_end1-gimp_parasite_list_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_parasite_list_init,@function
gimp_parasite_list_init:                # @gimp_parasite_list_init
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
	movq	$0, 32(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_parasite_list_init, .Lfunc_end2-gimp_parasite_list_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_parasite_list_config_iface_init,@function
gimp_parasite_list_config_iface_init:   # @gimp_parasite_list_config_iface_init
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
	movabsq	$gimp_parasite_list_deserialize, %rax
	movabsq	$gimp_parasite_list_serialize, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, 16(%rsi)
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_parasite_list_config_iface_init, .Lfunc_end3-gimp_parasite_list_config_iface_init
	.cfi_endproc

	.globl	gimp_parasite_list_new
	.align	16, 0x90
	.type	gimp_parasite_list_new,@function
gimp_parasite_list_new:                 # @gimp_parasite_list_new
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
	subq	$16, %rsp
	callq	gimp_parasite_list_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_parasite_list_new, .Lfunc_end4-gimp_parasite_list_new
	.cfi_endproc

	.globl	gimp_parasite_list_copy
	.align	16, 0x90
	.type	gimp_parasite_list_copy,@function
gimp_parasite_list_copy:                # @gimp_parasite_list_copy
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_parasite_list_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_parasite_list_copy, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	callq	gimp_parasite_list_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.13
	movabsq	$parasite_copy, %rax
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_foreach
.LBB5_14:                               # %if.end.15
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_parasite_list_copy, .Lfunc_end5-gimp_parasite_list_copy
	.cfi_endproc

	.align	16, 0x90
	.type	parasite_copy,@function
parasite_copy:                          # @parasite_copy
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_parasite_list_add
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	parasite_copy, .Lfunc_end6-parasite_copy
	.cfi_endproc

	.globl	gimp_parasite_list_add
	.align	16, 0x90
	.type	gimp_parasite_list_add,@function
gimp_parasite_list_add:                 # @gimp_parasite_list_add
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_parasite_list_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_parasite_list_add, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_parasite_list_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.17
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_20
# BB#19:                                # %if.then.19
	jmp	.LBB7_21
.LBB7_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_parasite_list_add, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_21:                               # %if.end.21
	jmp	.LBB7_22
.LBB7_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB7_24
# BB#23:                                # %if.then.24
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	callq	g_hash_table_new
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
.LBB7_24:                               # %if.end.27
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_parasite_list_remove
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_copy
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_insert
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movl	parasite_list_signals, %ecx
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_signal_emit
.LBB7_25:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_parasite_list_add, .Lfunc_end7-gimp_parasite_list_add
	.cfi_endproc

	.globl	gimp_parasite_list_remove
	.align	16, 0x90
	.type	gimp_parasite_list_remove,@function
gimp_parasite_list_remove:              # @gimp_parasite_list_remove
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_parasite_list_get_type
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
	movabsq	$.L__func__.gimp_parasite_list_remove, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_16
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_16
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_parasite_list_find
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.16
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_remove
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movl	parasite_list_signals+4, %ecx
	movq	-48(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_signal_emit
	movq	-48(%rbp), %rdi
	callq	gimp_parasite_free
.LBB8_15:                               # %if.end.19
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.20
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_parasite_list_remove, .Lfunc_end8-gimp_parasite_list_remove
	.cfi_endproc

	.globl	gimp_parasite_list_find
	.align	16, 0x90
	.type	gimp_parasite_list_find,@function
gimp_parasite_list_find:                # @gimp_parasite_list_find
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_parasite_list_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_parasite_list_find, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_15
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -8(%rbp)
	jmp	.LBB9_15
.LBB9_14:                               # %if.end.15
	movq	$0, -8(%rbp)
.LBB9_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_parasite_list_find, .Lfunc_end9-gimp_parasite_list_find
	.cfi_endproc

	.globl	gimp_parasite_list_length
	.align	16, 0x90
	.type	gimp_parasite_list_length,@function
gimp_parasite_list_length:              # @gimp_parasite_list_length
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_parasite_list_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_parasite_list_length, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB10_14
# BB#13:                                # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB10_15
.LBB10_14:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_hash_table_size
	movl	%eax, -4(%rbp)
.LBB10_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_parasite_list_length, .Lfunc_end10-gimp_parasite_list_length
	.cfi_endproc

	.globl	gimp_parasite_list_persistent_length
	.align	16, 0x90
	.type	gimp_parasite_list_persistent_length,@function
gimp_parasite_list_persistent_length:   # @gimp_parasite_list_persistent_length
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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_parasite_list_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_parasite_list_persistent_length, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_15
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB11_14
# BB#13:                                # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB11_15
.LBB11_14:                              # %if.end.13
	movabsq	$parasite_count_if_persistent, %rax
	leaq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_parasite_list_foreach
	movl	-20(%rbp), %r8d
	movl	%r8d, -4(%rbp)
.LBB11_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_parasite_list_persistent_length, .Lfunc_end11-gimp_parasite_list_persistent_length
	.cfi_endproc

	.globl	gimp_parasite_list_foreach
	.align	16, 0x90
	.type	gimp_parasite_list_foreach,@function
gimp_parasite_list_foreach:             # @gimp_parasite_list_foreach
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_parasite_list_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_parasite_list_foreach, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_15
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB12_14
# BB#13:                                # %if.then.12
	jmp	.LBB12_15
.LBB12_14:                              # %if.end.13
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	g_hash_table_foreach
.LBB12_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_parasite_list_foreach, .Lfunc_end12-gimp_parasite_list_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	parasite_count_if_persistent,@function
parasite_count_if_persistent:           # @parasite_count_if_persistent
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_is_persistent
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB13_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	parasite_count_if_persistent, .Lfunc_end13-parasite_count_if_persistent
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_parasite_list_class_init,@function
gimp_parasite_list_class_init:          # @gimp_parasite_list_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$68, %r8d
	movl	%r8d, %r11d
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r11, -72(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.6, %rdi
	movl	$1, %edx
	movl	$168, %ecx
	xorl	%r14d, %r14d
	movl	%r14d, %esi
	movabsq	$g_cclosure_marshal_VOID__POINTER, %r8
	movl	$4, %r14d
	movl	%r14d, %r9d
	movl	$68, %r14d
	movl	%r14d, %r10d
	movl	%eax, parasite_list_signals
	movq	-24(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$68, 24(%rsp)
	movb	$0, %al
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_parasite_list_get_memsize, %rsi
	movabsq	$gimp_parasite_list_finalize, %rdi
	movl	%eax, parasite_list_signals+4
	movq	-32(%rbp), %r8
	movq	%rdi, 48(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 152(%rdi)
	movq	-24(%rbp), %rsi
	movq	$0, 160(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 168(%rsi)
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_parasite_list_class_init, .Lfunc_end14-gimp_parasite_list_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_parasite_list_finalize,@function
gimp_parasite_list_finalize:            # @gimp_parasite_list_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_parasite_list_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$parasite_free, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	%rax, %rsi
	callq	g_hash_table_foreach_remove
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_hash_table_destroy
	movq	-16(%rbp), %rdx
	movq	$0, 32(%rdx)
.LBB15_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_parasite_list_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_parasite_list_finalize, .Lfunc_end15-gimp_parasite_list_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_parasite_list_get_memsize,@function
gimp_parasite_list_get_memsize:         # @gimp_parasite_list_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_parasite_list_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_parasite_get_memsize, %rsi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_g_hash_table_get_memsize_foreach
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_parasite_list_parent_class, %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_parasite_list_get_memsize, .Lfunc_end16-gimp_parasite_list_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	parasite_free,@function
parasite_free:                          # @parasite_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_free
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	parasite_free, .Lfunc_end17-parasite_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_parasite_list_serialize,@function
gimp_parasite_list_serialize:           # @gimp_parasite_list_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_parasite_list_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 32(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_parasite_list_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$parasite_serialize, %rsi
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_foreach
.LBB18_2:                               # %if.end
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_parasite_list_serialize, .Lfunc_end18-gimp_parasite_list_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_parasite_list_deserialize,@function
gimp_parasite_list_deserialize:         # @gimp_parasite_list_deserialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	movabsq	$parasite_symbol, %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	movq	%r8, %rcx
	callq	g_scanner_scope_add_symbol
	movl	$40, -36(%rbp)
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-36(%rbp), %eax
	jne	.LBB19_32
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -36(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB19_3
	jmp	.LBB19_33
.LBB19_33:                              # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB19_29
	jmp	.LBB19_34
.LBB19_34:                              # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB19_4
	jmp	.LBB19_30
.LBB19_3:                               # %sw.bb
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$265, -36(%rbp)         # imm = 0x109
	jmp	.LBB19_31
.LBB19_4:                               # %sw.bb.2
                                        #   in Loop: Header=BB19_1 Depth=1
	movabsq	$parasite_symbol, %rax
	movq	-16(%rbp), %rcx
	cmpq	%rax, 48(%rcx)
	jne	.LBB19_28
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$264, -36(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-36(%rbp), %eax
	je	.LBB19_7
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_31
.LBB19_7:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB19_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_31
.LBB19_9:                               # %if.end.9
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$261, -36(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-36(%rbp), %eax
	je	.LBB19_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_27
.LBB19_11:                              # %if.end.13
                                        #   in Loop: Header=BB19_1 Depth=1
	leaq	-52(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB19_13
# BB#12:                                # %if.then.16
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_27
.LBB19_13:                              # %if.end.17
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$261, -36(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-36(%rbp), %eax
	je	.LBB19_19
# BB#14:                                # %if.then.20
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	$264, %eax              # imm = 0x108
	je	.LBB19_16
# BB#15:                                # %if.then.23
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_27
.LBB19_16:                              # %if.end.24
                                        #   in Loop: Header=BB19_1 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB19_18
# BB#17:                                # %if.then.27
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_27
.LBB19_18:                              # %if.end.28
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB19_26
.LBB19_19:                              # %if.else
                                        #   in Loop: Header=BB19_1 Depth=1
	leaq	-68(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB19_21
# BB#20:                                # %if.then.32
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_27
.LBB19_21:                              # %if.end.33
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$264, -36(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-36(%rbp), %eax
	je	.LBB19_23
# BB#22:                                # %if.then.37
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_27
.LBB19_23:                              # %if.end.38
                                        #   in Loop: Header=BB19_1 Depth=1
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_scanner_parse_data
	cmpl	$0, %eax
	jne	.LBB19_25
# BB#24:                                # %if.then.41
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_27
.LBB19_25:                              # %if.end.42
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_26
.LBB19_26:                              # %if.end.43
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rcx
	callq	gimp_parasite_new
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_parasite_list_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_parasite_list_add
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_free
	movl	$41, -36(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB19_27:                              # %cleanup
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB19_28:                              # %if.end.47
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_31
.LBB19_29:                              # %sw.bb.48
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$40, -36(%rbp)
	jmp	.LBB19_31
.LBB19_30:                              # %sw.default
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_31
.LBB19_31:                              # %sw.epilog
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_1
.LBB19_32:                              # %while.end
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	gimp_config_deserialize_return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_parasite_list_deserialize, .Lfunc_end19-gimp_parasite_list_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	parasite_serialize,@function
parasite_serialize:                     # @parasite_serialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_is_persistent
	cmpl	$0, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movabsq	$parasite_symbol, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_parasite_name
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_parasite_flags
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data_size
	movabsq	$.L.str.7, %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_parasite_data_size
	movl	%eax, %r9d
	movq	-16(%rbp), %rdi
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	callq	gimp_parasite_data
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_config_writer_data
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_linefeed
.LBB20_3:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	parasite_serialize, .Lfunc_end20-parasite_serialize
	.cfi_endproc

	.type	gimp_parasite_list_get_type.g_define_type_id__volatile,@object # @gimp_parasite_list_get_type.g_define_type_id__volatile
	.local	gimp_parasite_list_get_type.g_define_type_id__volatile
	.comm	gimp_parasite_list_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpParasiteList"
	.size	.L.str, 17

	.type	gimp_parasite_list_get_type.g_implement_interface_info,@object # @gimp_parasite_list_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_parasite_list_get_type.g_implement_interface_info:
	.quad	gimp_parasite_list_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_parasite_list_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_parasite_list_copy,@object # @__func__.gimp_parasite_list_copy
.L__func__.gimp_parasite_list_copy:
	.asciz	"gimp_parasite_list_copy"
	.size	.L__func__.gimp_parasite_list_copy, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PARASITE_LIST (list)"
	.size	.L.str.2, 29

	.type	.L__func__.gimp_parasite_list_add,@object # @__func__.gimp_parasite_list_add
.L__func__.gimp_parasite_list_add:
	.asciz	"gimp_parasite_list_add"
	.size	.L__func__.gimp_parasite_list_add, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"parasite != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"parasite->name != NULL"
	.size	.L.str.4, 23

	.type	parasite_list_signals,@object # @parasite_list_signals
	.local	parasite_list_signals
	.comm	parasite_list_signals,8,4
	.type	.L__func__.gimp_parasite_list_remove,@object # @__func__.gimp_parasite_list_remove
.L__func__.gimp_parasite_list_remove:
	.asciz	"gimp_parasite_list_remove"
	.size	.L__func__.gimp_parasite_list_remove, 26

	.type	.L__func__.gimp_parasite_list_length,@object # @__func__.gimp_parasite_list_length
.L__func__.gimp_parasite_list_length:
	.asciz	"gimp_parasite_list_length"
	.size	.L__func__.gimp_parasite_list_length, 26

	.type	.L__func__.gimp_parasite_list_persistent_length,@object # @__func__.gimp_parasite_list_persistent_length
.L__func__.gimp_parasite_list_persistent_length:
	.asciz	"gimp_parasite_list_persistent_length"
	.size	.L__func__.gimp_parasite_list_persistent_length, 37

	.type	.L__func__.gimp_parasite_list_foreach,@object # @__func__.gimp_parasite_list_foreach
.L__func__.gimp_parasite_list_foreach:
	.asciz	"gimp_parasite_list_foreach"
	.size	.L__func__.gimp_parasite_list_foreach, 27

	.type	.L__func__.gimp_parasite_list_find,@object # @__func__.gimp_parasite_list_find
.L__func__.gimp_parasite_list_find:
	.asciz	"gimp_parasite_list_find"
	.size	.L__func__.gimp_parasite_list_find, 24

	.type	gimp_parasite_list_parent_class,@object # @gimp_parasite_list_parent_class
	.local	gimp_parasite_list_parent_class
	.comm	gimp_parasite_list_parent_class,8,8
	.type	GimpParasiteList_private_offset,@object # @GimpParasiteList_private_offset
	.local	GimpParasiteList_private_offset
	.comm	GimpParasiteList_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"add"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"remove"
	.size	.L.str.6, 7

	.type	parasite_symbol,@object # @parasite_symbol
	.section	.rodata,"a",@progbits
parasite_symbol:
	.asciz	"parasite"
	.size	parasite_symbol, 9

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"\"%s\" %lu %lu"
	.size	.L.str.7, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
