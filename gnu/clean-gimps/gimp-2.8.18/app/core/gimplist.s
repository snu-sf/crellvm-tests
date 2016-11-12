	.text
	.file	"gimplist.bc"
	.globl	gimp_list_get_type
	.align	16, 0x90
	.type	gimp_list_get_type,@function
gimp_list_get_type:                     # @gimp_list_get_type
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
	movq	gimp_list_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_list_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_container_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$248, %edx
	movabsq	$gimp_list_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_list_init, %rcx
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
	movabsq	$gimp_list_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_list_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_list_get_type, .Lfunc_end0-gimp_list_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_class_intern_init,@function
gimp_list_class_intern_init:            # @gimp_list_class_intern_init
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
	movq	%rax, gimp_list_parent_class
	cmpl	$0, GimpList_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpList_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_list_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_list_class_intern_init, .Lfunc_end1-gimp_list_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_init,@function
gimp_list_init:                         # @gimp_list_init
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
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_list_init, .Lfunc_end2-gimp_list_init
	.cfi_endproc

	.globl	gimp_list_new
	.align	16, 0x90
	.type	gimp_list_new,@function
gimp_list_new:                          # @gimp_list_new
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_list_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_list_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	xorl	%edx, %edx
	movabsq	$.L.str.5, %r9
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	$1, %edi
	movq	-24(%rbp), %r10
	cmpl	$0, -28(%rbp)
	movl	%edx, %r11d
	cmovnel	%edi, %r11d
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movl	%ebx, %r8d
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_static_name
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB3_6:                                # %return
	movq	-16(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_list_new, .Lfunc_end3-gimp_list_new
	.cfi_endproc

	.globl	gimp_list_new_weak
	.align	16, 0x90
	.type	gimp_list_new_weak,@function
gimp_list_new_weak:                     # @gimp_list_new_weak
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp16:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_list_new_weak, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	callq	gimp_list_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movl	$1, %edx
	movabsq	$.L.str.5, %r9
	xorl	%edi, %edi
	movl	%edi, %r8d
	xorl	%edi, %edi
	movq	-24(%rbp), %r10
	cmpl	$0, -28(%rbp)
	cmovnel	%edx, %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	-56(%rbp), %r11d        # 4-byte Reload
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movl	%r11d, %r8d
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_static_name
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB4_6:                                # %return
	movq	-16(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_list_new_weak, .Lfunc_end4-gimp_list_new_weak
	.cfi_endproc

	.globl	gimp_list_reverse
	.align	16, 0x90
	.type	gimp_list_reverse,@function
gimp_list_reverse:                      # @gimp_list_reverse
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_list_reverse, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	cmpl	$1, %eax
	jle	.LBB5_14
# BB#13:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_freeze
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_list_reverse
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_thaw
.LBB5_14:                               # %if.end.23
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_list_reverse, .Lfunc_end5-gimp_list_reverse
	.cfi_endproc

	.globl	gimp_list_set_sort_func
	.align	16, 0x90
	.type	gimp_list_set_sort_func,@function
gimp_list_set_sort_func:                # @gimp_list_set_sort_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_list_set_sort_func, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_16
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB6_16
# BB#13:                                # %if.then.13
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.15
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_list_sort
.LBB6_15:                               # %if.end.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 56(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB6_16:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_list_set_sort_func, .Lfunc_end6-gimp_list_set_sort_func
	.cfi_endproc

	.globl	gimp_list_sort
	.align	16, 0x90
	.type	gimp_list_sort,@function
gimp_list_sort:                         # @gimp_list_sort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_list_sort, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_19
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
	movabsq	$.L__func__.gimp_list_sort, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_19
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	cmpl	$1, %eax
	jle	.LBB7_19
# BB#18:                                # %if.then.21
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_freeze
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_sort
	movq	-8(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_thaw
.LBB7_19:                               # %if.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_list_sort, .Lfunc_end7-gimp_list_sort
	.cfi_endproc

	.globl	gimp_list_sort_by_name
	.align	16, 0x90
	.type	gimp_list_sort_by_name,@function
gimp_list_sort_by_name:                 # @gimp_list_sort_by_name
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_list_sort_by_name, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movabsq	$gimp_object_name_collate, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_list_sort
.LBB8_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_list_sort_by_name, .Lfunc_end8-gimp_list_sort_by_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_class_init,@function
gimp_list_class_init:                   # @gimp_list_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$235, %r8d
	movabsq	$gimp_list_get_child_index, %rdx
	movabsq	$gimp_list_get_child_by_index, %r9
	movabsq	$gimp_list_get_child_by_name, %r10
	movabsq	$gimp_list_foreach, %r11
	movabsq	$gimp_list_have, %rbx
	movabsq	$gimp_list_clear, %r14
	movabsq	$gimp_list_reorder, %r15
	movabsq	$gimp_list_remove, %r12
	movabsq	$gimp_list_add, %r13
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_list_get_memsize, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_list_get_property, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$gimp_list_set_property, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	%r13, 160(%rax)
	movq	-72(%rbp), %rax
	movq	%r12, 168(%rax)
	movq	-72(%rbp), %rax
	movq	%r15, 176(%rax)
	movq	-72(%rbp), %rax
	movq	%r14, 200(%rax)
	movq	-72(%rbp), %rax
	movq	%rbx, 208(%rax)
	movq	-72(%rbp), %rax
	movq	%r11, 216(%rax)
	movq	-72(%rbp), %rax
	movq	%r10, 224(%rax)
	movq	-72(%rbp), %rax
	movq	%r9, 232(%rax)
	movq	-72(%rbp), %rax
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r9, 240(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$231, %ecx
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_pointer
	movl	$2, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$231, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_list_class_init, .Lfunc_end9-gimp_list_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_set_property,@function
gimp_list_set_property:                 # @gimp_list_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_8
.LBB10_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_9
.LBB10_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB10_3
	jmp	.LBB10_4
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 48(%rdi)
	jmp	.LBB10_7
.LBB10_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_pointer
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_list_set_sort_func
	jmp	.LBB10_7
.LBB10_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 64(%rdi)
	jmp	.LBB10_7
.LBB10_4:                               # %sw.default
	jmp	.LBB10_5
.LBB10_5:                               # %do.body
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
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$158, %edx
	movabsq	$.L.str.12, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB10_7
.LBB10_7:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_list_set_property, .Lfunc_end10-gimp_list_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_get_property,@function
gimp_list_get_property:                 # @gimp_list_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_8
.LBB11_8:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_9
.LBB11_9:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_4
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	48(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_7
.LBB11_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_pointer
	jmp	.LBB11_7
.LBB11_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	64(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_7
.LBB11_4:                               # %sw.default
	jmp	.LBB11_5
.LBB11_5:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$184, %edx
	movabsq	$.L.str.12, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB11_7
.LBB11_7:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_list_get_property, .Lfunc_end11-gimp_list_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_get_memsize,@function
gimp_list_get_memsize:                  # @gimp_list_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_get_n_children
	movslq	%eax, %rsi
	imulq	$24, %rsi, %rsi
	addq	-32(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_get_policy
	cmpl	$0, %eax
	jne	.LBB12_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB12_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false
                                        #   in Loop: Header=BB12_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB12_7
.LBB12_7:                               # %cond.end
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB12_2
.LBB12_8:                               # %for.end
	jmp	.LBB12_9
.LBB12_9:                               # %if.end
	movq	-32(%rbp), %rax
	movq	gimp_list_parent_class, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_list_get_memsize, .Lfunc_end12-gimp_list_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_add,@function
gimp_list_add:                          # @gimp_list_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_list_uniquefy_name
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB13_4
# BB#3:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB13_5
.LBB13_4:                               # %if.then.5
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_list_object_renamed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB13_5:                               # %if.end.7
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB13_7
# BB#6:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rdx
	movq	%rax, %rsi
	callq	g_list_insert_sorted
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	jmp	.LBB13_11
.LBB13_7:                               # %if.else
	movq	-24(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB13_9
# BB#8:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	jmp	.LBB13_10
.LBB13_9:                               # %if.else.20
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB13_10:                              # %if.end.24
	jmp	.LBB13_11
.LBB13_11:                              # %if.end.25
	movq	gimp_list_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_list_add, .Lfunc_end13-gimp_list_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_remove,@function
gimp_list_remove:                       # @gimp_list_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB14_3
.LBB14_2:                               # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_list_object_renamed, %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB14_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-24(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	gimp_list_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_list_remove, .Lfunc_end14-gimp_list_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_reorder,@function
gimp_list_reorder:                      # @gimp_list_reorder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
	cmpl	$-1, -20(%rbp)
	je	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB15_3
.LBB15_2:                               # %if.then
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	callq	g_list_insert
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB15_4:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_list_reorder, .Lfunc_end15-gimp_list_reorder
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_clear,@function
gimp_list_clear:                        # @gimp_list_clear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB16_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB16_1
.LBB16_3:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_list_clear, .Lfunc_end16-gimp_list_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_have,@function
gimp_list_have:                         # @gimp_list_have
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	xorl	%ecx, %ecx
	movl	$1, %edx
	cmpq	$0, %rax
	cmovnel	%edx, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_list_have, .Lfunc_end17-gimp_list_have
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_foreach,@function
gimp_list_foreach:                      # @gimp_list_foreach
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	g_list_foreach
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_list_foreach, .Lfunc_end18-gimp_list_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_get_child_by_name,@function
gimp_list_get_child_by_name:            # @gimp_list_get_child_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB19_4
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_10
.LBB19_4:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_5
.LBB19_5:                               # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB19_8
.LBB19_7:                               # %cond.false
                                        #   in Loop: Header=BB19_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB19_8
.LBB19_8:                               # %cond.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB19_1
.LBB19_9:                               # %for.end
	movq	$0, -8(%rbp)
.LBB19_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_list_get_child_by_name, .Lfunc_end19-gimp_list_get_child_by_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_get_child_by_index,@function
gimp_list_get_child_by_index:           # @gimp_list_get_child_by_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	g_list_nth
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB20_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_list_get_child_by_index, .Lfunc_end20-gimp_list_get_child_by_index
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_get_child_index,@function
gimp_list_get_child_index:              # @gimp_list_get_child_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_index
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_list_get_child_index, .Lfunc_end21-gimp_list_get_child_index
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
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
	je	.LBB22_2
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
.LBB22_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end22:
	.size	g_warning, .Lfunc_end22-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_uniquefy_name,@function
gimp_list_uniquefy_name:                # @gimp_list_uniquefy_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	jmp	.LBB23_37
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB23_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB23_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB23_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB23_8
# BB#6:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_8
# BB#7:                                 # %if.then.8
	jmp	.LBB23_13
.LBB23_8:                               # %if.end.9
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_9
.LBB23_9:                               # %for.inc
                                        #   in Loop: Header=BB23_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB23_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB23_12
.LBB23_11:                              # %cond.false
                                        #   in Loop: Header=BB23_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB23_12
.LBB23_12:                              # %cond.end
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB23_3
.LBB23_13:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB23_37
# BB#14:                                # %if.then.12
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movl	$35, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	strrchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB23_22
# BB#15:                                # %if.then.16
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.14, %rdx
	leaq	-76(%rbp), %rdi
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	leaq	-76(%rbp), %rdi
	movq	-56(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_20
# BB#16:                                # %if.then.23
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB23_19
# BB#17:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB23_19
# BB#18:                                # %if.then.29
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
.LBB23_19:                              # %if.end.30
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB23_21
.LBB23_20:                              # %if.else
	movl	$0, -68(%rbp)
.LBB23_21:                              # %if.end.31
	jmp	.LBB23_22
.LBB23_22:                              # %if.end.32
	jmp	.LBB23_23
.LBB23_23:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_24 Depth 2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.15, %rdi
	movq	-24(%rbp), %rsi
	movl	-68(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB23_24:                              # %for.cond.35
                                        #   Parent Loop BB23_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB23_34
# BB#25:                                # %for.body.37
                                        #   in Loop: Header=BB23_24 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB23_29
# BB#26:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB23_24 Depth=2
	cmpq	$0, -96(%rbp)
	je	.LBB23_29
# BB#27:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB23_24 Depth=2
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB23_29
# BB#28:                                # %if.then.49
                                        #   in Loop: Header=BB23_23 Depth=1
	jmp	.LBB23_34
.LBB23_29:                              # %if.end.50
                                        #   in Loop: Header=BB23_24 Depth=2
	jmp	.LBB23_30
.LBB23_30:                              # %for.inc.51
                                        #   in Loop: Header=BB23_24 Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB23_32
# BB#31:                                # %cond.true.53
                                        #   in Loop: Header=BB23_24 Depth=2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB23_33
.LBB23_32:                              # %cond.false.55
                                        #   in Loop: Header=BB23_24 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB23_33
.LBB23_33:                              # %cond.end.56
                                        #   in Loop: Header=BB23_24 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB23_24
.LBB23_34:                              # %for.end.58
                                        #   in Loop: Header=BB23_23 Depth=1
	jmp	.LBB23_35
.LBB23_35:                              # %do.cond
                                        #   in Loop: Header=BB23_23 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB23_23
# BB#36:                                # %do.end
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_object_take_name
.LBB23_37:                              # %if.end.60
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_list_uniquefy_name, .Lfunc_end23-gimp_list_uniquefy_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_list_object_renamed,@function
gimp_list_object_renamed:               # @gimp_list_object_renamed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 48(%rsi)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_list_object_renamed, %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_list_uniquefy_name
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_list_object_renamed, %rdi
	movq	-8(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB24_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB24_18
# BB#3:                                 # %if.then.3
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_index
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB24_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB24_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB24_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB24_4 Depth=1
	jmp	.LBB24_11
.LBB24_7:                               # %if.end.11
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	*%rax
	cmpl	$0, %eax
	jle	.LBB24_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB24_4 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB24_10
.LBB24_9:                               # %if.else
	jmp	.LBB24_15
.LBB24_10:                              # %if.end.16
                                        #   in Loop: Header=BB24_4 Depth=1
	jmp	.LBB24_11
.LBB24_11:                              # %for.inc
                                        #   in Loop: Header=BB24_4 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB24_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB24_14
.LBB24_13:                              # %cond.false
                                        #   in Loop: Header=BB24_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB24_14
.LBB24_14:                              # %cond.end
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB24_4
.LBB24_15:                              # %for.end
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB24_17
# BB#16:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	-32(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_container_reorder
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB24_17:                              # %if.end.23
	jmp	.LBB24_18
.LBB24_18:                              # %if.end.24
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_list_object_renamed, .Lfunc_end24-gimp_list_object_renamed
	.cfi_endproc

	.type	gimp_list_get_type.g_define_type_id__volatile,@object # @gimp_list_get_type.g_define_type_id__volatile
	.local	gimp_list_get_type.g_define_type_id__volatile
	.comm	gimp_list_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpList"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_list_new,@object # @__func__.gimp_list_new
.L__func__.gimp_list_new:
	.asciz	"gimp_list_new"
	.size	.L__func__.gimp_list_new, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_type_is_a (children_type, GIMP_TYPE_OBJECT)"
	.size	.L.str.2, 46

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"children-type"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"policy"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"unique-names"
	.size	.L.str.5, 13

	.type	.L__func__.gimp_list_new_weak,@object # @__func__.gimp_list_new_weak
.L__func__.gimp_list_new_weak:
	.asciz	"gimp_list_new_weak"
	.size	.L__func__.gimp_list_new_weak, 19

	.type	.L__func__.gimp_list_reverse,@object # @__func__.gimp_list_reverse
.L__func__.gimp_list_reverse:
	.asciz	"gimp_list_reverse"
	.size	.L__func__.gimp_list_reverse, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_LIST (list)"
	.size	.L.str.6, 20

	.type	.L__func__.gimp_list_set_sort_func,@object # @__func__.gimp_list_set_sort_func
.L__func__.gimp_list_set_sort_func:
	.asciz	"gimp_list_set_sort_func"
	.size	.L__func__.gimp_list_set_sort_func, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"sort-func"
	.size	.L.str.7, 10

	.type	.L__func__.gimp_list_sort,@object # @__func__.gimp_list_sort
.L__func__.gimp_list_sort:
	.asciz	"gimp_list_sort"
	.size	.L__func__.gimp_list_sort, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"sort_func != NULL"
	.size	.L.str.8, 18

	.type	.L__func__.gimp_list_sort_by_name,@object # @__func__.gimp_list_sort_by_name
.L__func__.gimp_list_sort_by_name:
	.asciz	"gimp_list_sort_by_name"
	.size	.L__func__.gimp_list_sort_by_name, 23

	.type	gimp_list_parent_class,@object # @gimp_list_parent_class
	.local	gimp_list_parent_class
	.comm	gimp_list_parent_class,8,8
	.type	GimpList_private_offset,@object # @GimpList_private_offset
	.local	GimpList_private_offset
	.comm	GimpList_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"append"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimplist.c"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"name-changed"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%d"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s #%d"
	.size	.L.str.15, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
