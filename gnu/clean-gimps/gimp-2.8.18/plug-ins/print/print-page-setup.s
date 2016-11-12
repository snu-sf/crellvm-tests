	.text
	.file	"print-page-setup.bc"
	.globl	print_page_setup_load
	.align	16, 0x90
	.type	print_page_setup_load,@function
print_page_setup_load:                  # @print_page_setup_load
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_print_operation_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_page_setup_load, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$.L.str.1, %rsi
	movl	-12(%rbp), %edi
	callq	print_utils_key_file_load_from_parasite
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.13
	movabsq	$.L.str.1, %rdi
	callq	print_utils_key_file_load_from_rcfile
	movq	%rax, -24(%rbp)
.LBB0_14:                               # %if.end.15
	cmpq	$0, -24(%rbp)
	je	.LBB0_18
# BB#15:                                # %if.then.17
	movabsq	$.L.str.1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	gtk_page_setup_new_from_key_file
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_17
# BB#16:                                # %if.then.21
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_print_operation_set_default_page_setup
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
.LBB0_17:                               # %if.end.22
	movq	-24(%rbp), %rdi
	callq	g_key_file_free
.LBB0_18:                               # %if.end.23
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_page_setup_load, .Lfunc_end0-print_page_setup_load
	.cfi_endproc

	.globl	print_page_setup_save
	.align	16, 0x90
	.type	print_page_setup_save,@function
print_page_setup_save:                  # @print_page_setup_save
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_print_operation_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.print_page_setup_save, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	callq	g_key_file_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_print_operation_get_default_page_setup
	movabsq	$.L.str.1, %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_page_setup_to_key_file
	movabsq	$.L.str.1, %rdx
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	print_utils_key_file_save_as_parasite
	movabsq	$.L.str.1, %rsi
	movq	-32(%rbp), %rdi
	callq	print_utils_key_file_save_as_rcfile
	movq	-32(%rbp), %rdi
	callq	g_key_file_free
.LBB1_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_page_setup_save, .Lfunc_end1-print_page_setup_save
	.cfi_endproc

	.type	.L__func__.print_page_setup_load,@object # @__func__.print_page_setup_load
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.print_page_setup_load:
	.asciz	"print_page_setup_load"
	.size	.L__func__.print_page_setup_load, 22

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"GTK_IS_PRINT_OPERATION (operation)"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"print-page-setup"
	.size	.L.str.1, 17

	.type	.L__func__.print_page_setup_save,@object # @__func__.print_page_setup_save
.L__func__.print_page_setup_save:
	.asciz	"print_page_setup_save"
	.size	.L__func__.print_page_setup_save, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
