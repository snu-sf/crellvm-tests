	.text
	.file	"gimp-debug.bc"
	.globl	gimp_debug_enable_instances
	.align	16, 0x90
	.type	gimp_debug_enable_instances,@function
gimp_debug_enable_instances:            # @gimp_debug_enable_instances
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
	jmp	.LBB0_1
.LBB0_1:                                # %do.body
	cmpq	$0, class_hash
	jne	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_debug_enable_instances, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$g_hash_table_unref, %rcx
	callq	g_hash_table_new_full
	movq	%rax, class_hash
.LBB0_6:                                # %return
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_debug_enable_instances, .Lfunc_end0-gimp_debug_enable_instances
	.cfi_endproc

	.globl	gimp_debug_add_instance
	.align	16, 0x90
	.type	gimp_debug_add_instance,@function
gimp_debug_add_instance:                # @gimp_debug_add_instance
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, class_hash
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movq	%rax, -32(%rbp)
	movq	class_hash, %rdi
	movq	-32(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then.3
	movabsq	$g_direct_hash, %rdi
	movabsq	$g_direct_equal, %rsi
	callq	g_hash_table_new
	movq	%rax, -24(%rbp)
	movq	class_hash, %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB1_3:                                # %if.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_insert
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB1_4:                                # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_debug_add_instance, .Lfunc_end1-gimp_debug_add_instance
	.cfi_endproc

	.globl	gimp_debug_remove_instance
	.align	16, 0x90
	.type	gimp_debug_remove_instance,@function
gimp_debug_remove_instance:             # @gimp_debug_remove_instance
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, class_hash
	je	.LBB2_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movq	%rax, -24(%rbp)
	movq	class_hash, %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_5
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_remove
	movq	-16(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	g_hash_table_size
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.6
	movq	class_hash, %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_remove
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.8
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.9
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_debug_remove_instance, .Lfunc_end2-gimp_debug_remove_instance
	.cfi_endproc

	.globl	gimp_debug_instances
	.align	16, 0x90
	.type	gimp_debug_instances,@function
gimp_debug_instances:                   # @gimp_debug_instances
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
	cmpq	$0, class_hash
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$gimp_debug_class_foreach, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	class_hash, %rdi
	movq	%rax, %rsi
	callq	g_hash_table_foreach
.LBB3_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_debug_instances, .Lfunc_end3-gimp_debug_instances
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_debug_class_foreach,@function
gimp_debug_class_foreach:               # @gimp_debug_class_foreach
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	g_hash_table_size
	movabsq	$.L.str.2, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_printerr
	movabsq	$gimp_debug_instance_foreach, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-16(%rbp), %rdi
	callq	g_hash_table_foreach
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_debug_class_foreach, .Lfunc_end4-gimp_debug_class_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_debug_instance_foreach,@function
gimp_debug_instance_foreach:            # @gimp_debug_instance_foreach
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
	movq	%rdi, -16(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_5
# BB#4:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_6:                                # %if.end
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_9
# BB#8:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
	movabsq	$.L.str.4, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB5_10
.LBB5_10:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.3, %rdi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_debug_instance_foreach, .Lfunc_end5-gimp_debug_instance_foreach
	.cfi_endproc

	.type	class_hash,@object      # @class_hash
	.local	class_hash
	.comm	class_hash,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp"
	.size	.L.str, 5

	.type	.L__func__.gimp_debug_enable_instances,@object # @__func__.gimp_debug_enable_instances
.L__func__.gimp_debug_enable_instances:
	.asciz	"gimp_debug_enable_instances"
	.size	.L__func__.gimp_debug_enable_instances, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"class_hash == NULL"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Leaked %s instances: %d\n"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"  '%s': ref_count = %d\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GObject"
	.size	.L.str.4, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
