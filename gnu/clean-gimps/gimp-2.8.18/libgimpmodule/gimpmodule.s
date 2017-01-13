	.text
	.file	"gimpmodule.bc"
	.globl	gimp_module_get_type
	.align	16, 0x90
	.type	gimp_module_get_type,@function
gimp_module_get_type:                   # @gimp_module_get_type
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
	movq	gimp_module_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_module_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	g_type_module_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$224, %edx
	leaq	gimp_module_class_intern_init(%rip), %rdi
	movl	$120, %r8d
	leaq	gimp_module_init(%rip), %rcx
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
	leaq	gimp_module_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_module_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_module_get_type, .Lfunc_end0-gimp_module_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_class_intern_init,@function
gimp_module_class_intern_init:          # @gimp_module_class_intern_init
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
	movq	%rax, gimp_module_parent_class(%rip)
	cmpl	$0, GimpModule_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpModule_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_module_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_module_class_intern_init, .Lfunc_end1-gimp_module_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_init,@function
gimp_module_init:                       # @gimp_module_init
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
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 68(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 76(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 80(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 88(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 96(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_module_init, .Lfunc_end2-gimp_module_init
	.cfi_endproc

	.globl	gimp_module_new
	.align	16, 0x90
	.type	gimp_module_new,@function
gimp_module_new:                        # @gimp_module_new
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
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_module_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, 56(%rsi)
	cmpl	$0, -20(%rbp)
	movl	%ecx, %r8d
	cmovnel	%edx, %r8d
	movq	-32(%rbp), %rax
	movl	%r8d, 76(%rax)
	cmpl	$0, -24(%rbp)
	cmovnel	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 72(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, 76(%rax)
	jne	.LBB3_9
# BB#6:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_type_module_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_module_load
	cmpl	$0, %eax
	je	.LBB3_8
# BB#7:                                 # %if.then.15
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_type_module_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_module_unload
.LBB3_8:                                # %if.end.18
	jmp	.LBB3_12
.LBB3_9:                                # %if.else.19
	cmpl	$0, -24(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8@PLT
	leaq	.L.str.3(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print@PLT
.LBB3_11:                               # %if.end.23
	movq	-32(%rbp), %rax
	movl	$3, 68(%rax)
.LBB3_12:                               # %if.end.24
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_module_new, .Lfunc_end3-gimp_module_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_load,@function
gimp_module_load:                       # @gimp_module_load
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_module_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_load(%rip), %rsi
	leaq	.L.str.19(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_21
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.2
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB4_8
# BB#7:                                 # %if.then.5
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.6
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_load(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_21
.LBB4_9:                                # %if.end.7
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.8
	movq	-24(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB4_12
# BB#11:                                # %if.then.9
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_filename_to_utf8@PLT
	leaq	.L.str.21(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print@PLT
.LBB4_12:                               # %if.end.12
	movq	-24(%rbp), %rdi
	callq	gimp_module_open
	cmpl	$0, %eax
	jne	.LBB4_14
# BB#13:                                # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB4_21
.LBB4_14:                               # %if.end.16
	movq	-24(%rbp), %rdi
	callq	gimp_module_query_module@PLT
	cmpl	$0, %eax
	jne	.LBB4_16
# BB#15:                                # %if.then.19
	movl	$0, -4(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.end.20
	leaq	.L.str.22(%rip), %rsi
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_module_symbol@PLT
	cmpl	$0, %eax
	jne	.LBB4_18
# BB#17:                                # %if.then.24
	leaq	.L.str.23(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_module_set_last_error
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	dgettext@PLT
	movq	-24(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	-24(%rbp), %rsi
	movq	96(%rsi), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-24(%rbp), %rdi
	callq	gimp_module_close
	movq	-24(%rbp), %rdx
	movl	$0, 68(%rdx)
	movl	$0, -4(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB4_21
.LBB4_18:                               # %if.end.29
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB4_20
# BB#19:                                # %if.then.33
	leaq	.L.str.24(%rip), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_module_set_last_error
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	dgettext@PLT
	movq	-24(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	-24(%rbp), %rsi
	movq	96(%rsi), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-24(%rbp), %rdi
	callq	gimp_module_close
	movq	-24(%rbp), %rdx
	movl	$2, 68(%rdx)
	movl	$0, -4(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %if.end.40
	movq	-24(%rbp), %rax
	movl	$1, 68(%rax)
	movl	$1, -4(%rbp)
.LBB4_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_module_load, .Lfunc_end4-gimp_module_load
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_unload,@function
gimp_module_unload:                     # @gimp_module_unload
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_module_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_unload(%rip), %rsi
	leaq	.L.str.25(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_8
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB5_7
# BB#6:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_filename_to_utf8@PLT
	leaq	.L.str.26(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print@PLT
.LBB5_7:                                # %if.end.5
	movq	-16(%rbp), %rdi
	callq	gimp_module_close
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB5_8:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_module_unload, .Lfunc_end5-gimp_module_unload
	.cfi_endproc

	.globl	gimp_module_query_module
	.align	16, 0x90
	.type	gimp_module_query_module,@function
gimp_module_query_module:               # @gimp_module_query_module
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_module_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_query_module(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_26
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB6_16
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_module_open
	cmpl	$0, %eax
	jne	.LBB6_15
# BB#14:                                # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB6_26
.LBB6_15:                               # %if.end.17
	movl	$1, -28(%rbp)
.LBB6_16:                               # %if.end.18
	leaq	.L.str.5(%rip), %rsi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_module_symbol@PLT
	cmpl	$0, %eax
	jne	.LBB6_18
# BB#17:                                # %if.then.22
	leaq	.L.str.6(%rip), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_module_set_last_error
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	-16(%rbp), %rsi
	movq	96(%rsi), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-16(%rbp), %rdi
	callq	gimp_module_close
	movq	-16(%rbp), %rdx
	movl	$0, 68(%rdx)
	movl	$0, -4(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB6_26
.LBB6_18:                               # %if.end.26
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB6_20
# BB#19:                                # %if.then.29
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gimp_module_info_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
.LBB6_20:                               # %if.end.32
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	g_type_module_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_22
# BB#21:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	je	.LBB6_23
.LBB6_22:                               # %if.then.39
	leaq	.L.str.10(%rip), %rax
	leaq	.L.str.9(%rip), %rcx
	movq	-16(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	gimp_module_set_last_error
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	dgettext@PLT
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-16(%rbp), %rdi
	callq	gimp_module_close
	movq	-16(%rbp), %rcx
	movl	$0, 68(%rcx)
	movl	$0, -4(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB6_26
.LBB6_23:                               # %if.end.47
	movq	-24(%rbp), %rdi
	callq	gimp_module_info_copy@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, 88(%rdi)
	cmpl	$0, -28(%rbp)
	je	.LBB6_25
# BB#24:                                # %if.then.51
	movq	-16(%rbp), %rdi
	callq	gimp_module_close
	movl	%eax, -4(%rbp)
	jmp	.LBB6_26
.LBB6_25:                               # %if.end.53
	movl	$1, -4(%rbp)
.LBB6_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_module_query_module, .Lfunc_end6-gimp_module_query_module
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_open,@function
gimp_module_open:                       # @gimp_module_open
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
	xorl	%esi, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	callq	g_module_open@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$0, 68(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	g_module_error@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_module_set_last_error
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	callq	dgettext@PLT
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	movq	-16(%rbp), %rsi
	movq	96(%rsi), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$1, -4(%rbp)
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_module_open, .Lfunc_end7-gimp_module_open
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_set_last_error,@function
gimp_module_set_last_error:             # @gimp_module_set_last_error
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 96(%rsi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free@PLT
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 96(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_module_set_last_error, .Lfunc_end8-gimp_module_set_last_error
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_message, .Lfunc_end9-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_close,@function
gimp_module_close:                      # @gimp_module_close
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	g_module_close@PLT
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	$0, 80(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movl	$3, 68(%rdi)
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_module_close, .Lfunc_end10-gimp_module_close
	.cfi_endproc

	.globl	gimp_module_info_free
	.align	16, 0x90
	.type	gimp_module_info_free,@function
gimp_module_info_free:                  # @gimp_module_info_free
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_info_free(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_7
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free@PLT
# BB#6:                                 # %do.body.1
	movl	$48, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
.LBB11_7:                               # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_module_info_free, .Lfunc_end11-gimp_module_info_free
	.cfi_endproc

	.globl	gimp_module_info_copy
	.align	16, 0x90
	.type	gimp_module_info_copy,@function
gimp_module_info_copy:                  # @gimp_module_info_copy
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_info_copy(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_6
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	32(%rax), %r8
	movq	-16(%rbp), %rax
	movq	40(%rax), %r9
	callq	gimp_module_info_new@PLT
	movq	%rax, -8(%rbp)
.LBB12_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_module_info_copy, .Lfunc_end12-gimp_module_info_copy
	.cfi_endproc

	.globl	gimp_module_modified
	.align	16, 0x90
	.type	gimp_module_modified,@function
gimp_module_modified:                   # @gimp_module_modified
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_module_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_modified(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	module_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB13_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_module_modified, .Lfunc_end13-gimp_module_modified
	.cfi_endproc

	.globl	gimp_module_set_load_inhibit
	.align	16, 0x90
	.type	gimp_module_set_load_inhibit,@function
gimp_module_set_load_inhibit:           # @gimp_module_set_load_inhibit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_module_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_set_load_inhibit(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_14
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	76(%rcx), %eax
	je	.LBB14_14
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 76(%rdx)
	movq	-8(%rbp), %rdi
	callq	gimp_module_modified@PLT
.LBB14_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_module_set_load_inhibit, .Lfunc_end14-gimp_module_set_load_inhibit
	.cfi_endproc

	.globl	gimp_module_state_name
	.align	16, 0x90
	.type	gimp_module_state_name,@function
gimp_module_state_name:                 # @gimp_module_state_name
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jb	.LBB15_4
# BB#2:                                 # %land.lhs.true
	cmpl	$3, -12(%rbp)
	ja	.LBB15_4
# BB#3:                                 # %if.then
	jmp	.LBB15_5
.LBB15_4:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_module_state_name(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB15_7
.LBB15_5:                               # %if.end
	jmp	.LBB15_6
.LBB15_6:                               # %do.end
	leaq	.L.str.7(%rip), %rdi
	leaq	gimp_module_state_name.statenames(%rip), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	movq	(%rax,%rdx,8), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
.LBB15_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_module_state_name, .Lfunc_end15-gimp_module_state_name
	.cfi_endproc

	.globl	gimp_module_register_enum
	.align	16, 0x90
	.type	gimp_module_register_enum,@function
gimp_module_register_enum:              # @gimp_module_register_enum
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	g_type_module_register_enum@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_module_register_enum, .Lfunc_end16-gimp_module_register_enum
	.cfi_endproc

	.globl	gimp_module_error_quark
	.align	16, 0x90
	.type	gimp_module_error_quark,@function
gimp_module_error_quark:                # @gimp_module_error_quark
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
	leaq	.L.str.16(%rip), %rdi
	callq	g_quark_from_static_string@PLT
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_module_error_quark, .Lfunc_end17-gimp_module_error_quark
	.cfi_endproc

	.globl	gimp_module_info_new
	.align	16, 0x90
	.type	gimp_module_info_new,@function
gimp_module_info_new:                   # @gimp_module_info_new
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
	subq	$64, %rsp
	movl	$48, %eax
	movl	%eax, %r10d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, %rdi
	callq	g_slice_alloc0@PLT
	movq	%rax, -56(%rbp)
	movl	-4(%rbp), %r11d
	movq	-56(%rbp), %rax
	movl	%r11d, (%rax)
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-48(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_module_info_new, .Lfunc_end18-gimp_module_info_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_class_init,@function
gimp_module_class_init:                 # @gimp_module_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_module_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.18(%rip), %rdi
	movl	$1, %edx
	movl	$184, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	gimp_module_unload(%rip), %rsi
	leaq	gimp_module_load(%rip), %rdi
	leaq	gimp_module_finalize(%rip), %r8
	movl	%eax, module_signals(%rip)
	movq	-16(%rbp), %r9
	movq	%r8, 48(%r9)
	movq	-24(%rbp), %r8
	movq	%rdi, 136(%r8)
	movq	-24(%rbp), %rdi
	movq	%rsi, 144(%rdi)
	movq	-8(%rbp), %rsi
	movq	$0, 184(%rsi)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_module_class_init, .Lfunc_end19-gimp_module_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_module_finalize,@function
gimp_module_finalize:                   # @gimp_module_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_module_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gimp_module_info_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB20_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
.LBB20_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB20_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB20_6:                               # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_module_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_module_finalize, .Lfunc_end20-gimp_module_finalize
	.cfi_endproc

	.type	gimp_module_get_type.g_define_type_id__volatile,@object # @gimp_module_get_type.g_define_type_id__volatile
	.local	gimp_module_get_type.g_define_type_id__volatile
	.comm	gimp_module_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpModule"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpModule"
	.size	.L.str.1, 14

	.type	.L__func__.gimp_module_new,@object # @__func__.gimp_module_new
.L__func__.gimp_module_new:
	.asciz	"gimp_module_new"
	.size	.L__func__.gimp_module_new, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Skipping module '%s'\n"
	.size	.L.str.3, 22

	.type	.L__func__.gimp_module_query_module,@object # @__func__.gimp_module_query_module
.L__func__.gimp_module_query_module:
	.asciz	"gimp_module_query_module"
	.size	.L__func__.gimp_module_query_module, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_MODULE (module)"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_module_query"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Missing gimp_module_query() symbol"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp20-libgimp"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Module '%s' load error: %s"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"module ABI version does not match"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp_module_query() returned NULL"
	.size	.L.str.10, 34

	.type	.L__func__.gimp_module_modified,@object # @__func__.gimp_module_modified
.L__func__.gimp_module_modified:
	.asciz	"gimp_module_modified"
	.size	.L__func__.gimp_module_modified, 21

	.type	module_signals,@object  # @module_signals
	.local	module_signals
	.comm	module_signals,4,4
	.type	.L__func__.gimp_module_set_load_inhibit,@object # @__func__.gimp_module_set_load_inhibit
.L__func__.gimp_module_set_load_inhibit:
	.asciz	"gimp_module_set_load_inhibit"
	.size	.L__func__.gimp_module_set_load_inhibit, 29

	.type	gimp_module_state_name.statenames,@object # @gimp_module_state_name.statenames
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_module_state_name.statenames:
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.size	gimp_module_state_name.statenames, 32

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"Module error"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Loaded"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Load failed"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Not loaded"
	.size	.L.str.14, 11

	.type	.L__func__.gimp_module_state_name,@object # @__func__.gimp_module_state_name
.L__func__.gimp_module_state_name:
	.asciz	"gimp_module_state_name"
	.size	.L__func__.gimp_module_state_name, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"state >= GIMP_MODULE_STATE_ERROR && state <= GIMP_MODULE_STATE_NOT_LOADED"
	.size	.L.str.15, 74

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-module-error-quark"
	.size	.L.str.16, 24

	.type	.L__func__.gimp_module_info_copy,@object # @__func__.gimp_module_info_copy
.L__func__.gimp_module_info_copy:
	.asciz	"gimp_module_info_copy"
	.size	.L__func__.gimp_module_info_copy, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"info != NULL"
	.size	.L.str.17, 13

	.type	.L__func__.gimp_module_info_free,@object # @__func__.gimp_module_info_free
.L__func__.gimp_module_info_free:
	.asciz	"gimp_module_info_free"
	.size	.L__func__.gimp_module_info_free, 22

	.type	gimp_module_parent_class,@object # @gimp_module_parent_class
	.local	gimp_module_parent_class
	.comm	gimp_module_parent_class,8,8
	.type	GimpModule_private_offset,@object # @GimpModule_private_offset
	.local	GimpModule_private_offset
	.comm	GimpModule_private_offset,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"modified"
	.size	.L.str.18, 9

	.type	.L__func__.gimp_module_load,@object # @__func__.gimp_module_load
.L__func__.gimp_module_load:
	.asciz	"gimp_module_load"
	.size	.L__func__.gimp_module_load, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp_module->filename != NULL"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp_module->module == NULL"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Loading module '%s'\n"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp_module_register"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Missing gimp_module_register() symbol"
	.size	.L.str.23, 38

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp_module_register() returned FALSE"
	.size	.L.str.24, 38

	.type	.L__func__.gimp_module_unload,@object # @__func__.gimp_module_unload
.L__func__.gimp_module_unload:
	.asciz	"gimp_module_unload"
	.size	.L__func__.gimp_module_unload, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp_module->module != NULL"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Unloading module '%s'\n"
	.size	.L.str.26, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
