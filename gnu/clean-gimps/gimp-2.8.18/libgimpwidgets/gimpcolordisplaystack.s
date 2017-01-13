	.text
	.file	"gimpcolordisplaystack.bc"
	.globl	gimp_color_display_stack_get_type
	.align	16, 0x90
	.type	gimp_color_display_stack_get_type,@function
gimp_color_display_stack_get_type:      # @gimp_color_display_stack_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_color_display_stack_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_display_stack_get_type.g_define_type_id__volatile(%rip), %rax
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
	leaq	.L.str(%rip), %rdi
	callq	g_intern_static_string@PLT
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$200, %edx
	leaq	gimp_color_display_stack_class_intern_init(%rip), %rsi
	movl	$32, %r8d
	leaq	gimp_color_display_stack_init(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple@PLT
	leaq	gimp_color_display_stack_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_display_stack_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_display_stack_get_type, .Lfunc_end0-gimp_color_display_stack_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_stack_class_intern_init,@function
gimp_color_display_stack_class_intern_init: # @gimp_color_display_stack_class_intern_init
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
	movq	%rax, gimp_color_display_stack_parent_class(%rip)
	cmpl	$0, GimpColorDisplayStack_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorDisplayStack_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_display_stack_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_display_stack_class_intern_init, .Lfunc_end1-gimp_color_display_stack_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_stack_init,@function
gimp_color_display_stack_init:          # @gimp_color_display_stack_init
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
	movq	$0, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_display_stack_init, .Lfunc_end2-gimp_color_display_stack_init
	.cfi_endproc

	.globl	gimp_color_display_stack_new
	.align	16, 0x90
	.type	gimp_color_display_stack_new,@function
gimp_color_display_stack_new:           # @gimp_color_display_stack_new
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
	callq	gimp_color_display_stack_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_display_stack_new, .Lfunc_end3-gimp_color_display_stack_new
	.cfi_endproc

	.globl	gimp_color_display_stack_clone
	.align	16, 0x90
	.type	gimp_color_display_stack_clone,@function
gimp_color_display_stack_clone:         # @gimp_color_display_stack_clone
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_color_display_stack_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_clone(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_20
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_color_display_stack_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB4_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_color_display_clone@PLT
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_color_display_stack_add@PLT
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false
                                        #   in Loop: Header=BB4_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_18
.LBB4_18:                               # %cond.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_13
.LBB4_19:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_display_stack_clone, .Lfunc_end4-gimp_color_display_stack_clone
	.cfi_endproc

	.globl	gimp_color_display_stack_add
	.align	16, 0x90
	.type	gimp_color_display_stack_add,@function
gimp_color_display_stack_add:           # @gimp_color_display_stack_add
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_display_stack_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_add(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_30
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_add(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_30
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.body.39
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find@PLT
	cmpq	$0, %rax
	jne	.LBB5_27
# BB#26:                                # %if.then.42
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.43
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_add(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_30
.LBB5_28:                               # %if.end.44
	jmp	.LBB5_29
.LBB5_29:                               # %do.end.45
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	leaq	gimp_color_display_stack_display_changed(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_color_display_stack_display_enabled(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_data@PLT
	movq	-8(%rbp), %rcx
	movl	stack_signals+4(%rip), %esi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	g_list_length@PLT
	xorl	%edx, %edx
	subl	$1, %eax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	g_signal_emit@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_color_display_stack_changed@PLT
.LBB5_30:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_display_stack_add, .Lfunc_end5-gimp_color_display_stack_add
	.cfi_endproc

	.globl	gimp_color_display_stack_changed
	.align	16, 0x90
	.type	gimp_color_display_stack_changed,@function
gimp_color_display_stack_changed:       # @gimp_color_display_stack_changed
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_display_stack_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_changed(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	stack_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB6_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_display_stack_changed, .Lfunc_end6-gimp_color_display_stack_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_stack_display_changed,@function
gimp_color_display_stack_display_changed: # @gimp_color_display_stack_display_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 24(%rsi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_color_display_stack_changed@PLT
.LBB7_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_display_stack_display_changed, .Lfunc_end7-gimp_color_display_stack_display_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_stack_display_enabled,@function
gimp_color_display_stack_display_enabled: # @gimp_color_display_stack_display_enabled
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_color_display_stack_changed@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_display_stack_display_enabled, .Lfunc_end8-gimp_color_display_stack_display_enabled
	.cfi_endproc

	.globl	gimp_color_display_stack_remove
	.align	16, 0x90
	.type	gimp_color_display_stack_remove,@function
gimp_color_display_stack_remove:        # @gimp_color_display_stack_remove
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_display_stack_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_remove(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_30
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_remove(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_30
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find@PLT
	cmpq	$0, %rax
	je	.LBB9_27
# BB#26:                                # %if.then.42
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.43
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_remove(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_30
.LBB9_28:                               # %if.end.44
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.45
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_color_display_stack_disconnect
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_remove@PLT
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-8(%rbp), %rax
	movl	stack_signals+8(%rip), %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_color_display_stack_changed@PLT
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref@PLT
.LBB9_30:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_display_stack_remove, .Lfunc_end9-gimp_color_display_stack_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_stack_disconnect,@function
gimp_color_display_stack_disconnect:    # @gimp_color_display_stack_disconnect
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
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_display_stack_display_changed(%rip), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_display_stack_display_enabled(%rip), %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	%eax, -40(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_display_stack_disconnect, .Lfunc_end10-gimp_color_display_stack_disconnect
	.cfi_endproc

	.globl	gimp_color_display_stack_reorder_up
	.align	16, 0x90
	.type	gimp_color_display_stack_reorder_up,@function
gimp_color_display_stack_reorder_up:    # @gimp_color_display_stack_reorder_up
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_display_stack_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_reorder_up(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_31
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_reorder_up(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_31
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find@PLT
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB11_27
# BB#26:                                # %if.then.42
	jmp	.LBB11_28
.LBB11_27:                              # %if.else.43
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_reorder_up(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_31
.LBB11_28:                              # %if.end.44
	jmp	.LBB11_29
.LBB11_29:                              # %do.end.45
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB11_31
# BB#30:                                # %if.then.47
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movl	stack_signals+12(%rip), %esi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rdx, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	g_list_position@PLT
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	g_signal_emit@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_color_display_stack_changed@PLT
.LBB11_31:                              # %if.end.55
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_display_stack_reorder_up, .Lfunc_end11-gimp_color_display_stack_reorder_up
	.cfi_endproc

	.globl	gimp_color_display_stack_reorder_down
	.align	16, 0x90
	.type	gimp_color_display_stack_reorder_down,@function
gimp_color_display_stack_reorder_down:  # @gimp_color_display_stack_reorder_down
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_display_stack_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_reorder_down(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_31
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_color_display_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB12_20
.LBB12_15:                              # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB12_19:                              # %if.end.31
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.35
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_reorder_down(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_31
.LBB12_23:                              # %if.end.37
	jmp	.LBB12_24
.LBB12_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find@PLT
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB12_27
# BB#26:                                # %if.then.42
	jmp	.LBB12_28
.LBB12_27:                              # %if.else.43
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_reorder_down(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_31
.LBB12_28:                              # %if.end.44
	jmp	.LBB12_29
.LBB12_29:                              # %do.end.45
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB12_31
# BB#30:                                # %if.then.47
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movl	stack_signals+12(%rip), %esi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rdx, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	g_list_position@PLT
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	g_signal_emit@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_color_display_stack_changed@PLT
.LBB12_31:                              # %if.end.55
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_display_stack_reorder_down, .Lfunc_end12-gimp_color_display_stack_reorder_down
	.cfi_endproc

	.globl	gimp_color_display_stack_convert_surface
	.align	16, 0x90
	.type	gimp_color_display_stack_convert_surface,@function
gimp_color_display_stack_convert_surface: # @gimp_color_display_stack_convert_surface
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_display_stack_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_convert_surface(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_29
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_convert_surface(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_29
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	jmp	.LBB13_18
.LBB13_18:                              # %do.body.17
	movq	-16(%rbp), %rdi
	callq	cairo_surface_get_type@PLT
	cmpl	$0, %eax
	jne	.LBB13_20
# BB#19:                                # %if.then.20
	jmp	.LBB13_21
.LBB13_20:                              # %if.else.21
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_convert_surface(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_29
.LBB13_21:                              # %if.end.22
	jmp	.LBB13_22
.LBB13_22:                              # %do.end.23
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB13_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB13_29
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB13_23 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_color_display_convert_surface@PLT
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB13_23 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB13_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB13_23 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_28
.LBB13_27:                              # %cond.false
                                        #   in Loop: Header=BB13_23 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_28
.LBB13_28:                              # %cond.end
                                        #   in Loop: Header=BB13_23 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB13_23
.LBB13_29:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_display_stack_convert_surface, .Lfunc_end13-gimp_color_display_stack_convert_surface
	.cfi_endproc

	.globl	gimp_color_display_stack_convert
	.align	16, 0x90
	.type	gimp_color_display_stack_convert,@function
gimp_color_display_stack_convert:       # @gimp_color_display_stack_convert
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_display_stack_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_display_stack_convert(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_19
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB14_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB14_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	gimp_color_display_convert@PLT
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB14_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB14_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB14_18
.LBB14_17:                              # %cond.false
                                        #   in Loop: Header=BB14_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB14_18
.LBB14_18:                              # %cond.end
                                        #   in Loop: Header=BB14_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB14_13
.LBB14_19:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_display_stack_convert, .Lfunc_end14-gimp_color_display_stack_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_stack_class_init,@function
gimp_color_display_stack_class_init:    # @gimp_color_display_stack_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$224, %rsp
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.5(%rip), %rdi
	movl	$1, %edx
	movl	$136, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, stack_signals(%rip)
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	leaq	.L.str.11(%rip), %rdi
	movl	$1, %edx
	movl	$144, %ecx
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movq	_gimp_widgets_marshal_VOID__OBJECT_INT@GOTPCREL(%rip), %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$2, %ebx
	movl	$24, %r14d
	movl	%r14d, %r10d
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	-104(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$24, 32(%rsp)
	movb	$0, %al
	movq	%r10, -120(%rbp)        # 8-byte Spill
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, stack_signals+4(%rip)
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	leaq	.L.str.12(%rip), %rdi
	movl	$1, %edx
	movl	$152, %ecx
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movq	g_cclosure_marshal_VOID__OBJECT@GOTPCREL(%rip), %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new@PLT
	movl	%eax, stack_signals+8(%rip)
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_color_display_get_type@PLT
	leaq	.L.str.13(%rip), %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movq	_gimp_widgets_marshal_VOID__OBJECT_INT@GOTPCREL(%rip), %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$2, %ebx
	movl	$24, %r14d
	movl	%r14d, %r10d
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	-184(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$24, 32(%rsp)
	movb	$0, %al
	movq	%r10, -200(%rbp)        # 8-byte Spill
	movl	%ebx, -204(%rbp)        # 4-byte Spill
	callq	g_signal_new@PLT
	leaq	gimp_color_display_stack_dispose(%rip), %rsi
	movl	%eax, stack_signals+12(%rip)
	movq	-48(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	movq	-40(%rbp), %rsi
	movq	$0, 136(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 144(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 152(%rsi)
	movq	-40(%rbp), %rsi
	movq	$0, 160(%rsi)
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_display_stack_class_init, .Lfunc_end15-gimp_color_display_stack_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_stack_dispose,@function
gimp_color_display_stack_dispose:       # @gimp_color_display_stack_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_display_stack_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB16_9
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB16_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_color_display_stack_disconnect
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB16_7
.LBB16_6:                               # %cond.false
                                        #   in Loop: Header=BB16_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB16_7
.LBB16_7:                               # %cond.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB16_2
.LBB16_8:                               # %for.end
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_list_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB16_9:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_display_stack_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_display_stack_dispose, .Lfunc_end16-gimp_color_display_stack_dispose
	.cfi_endproc

	.type	gimp_color_display_stack_get_type.g_define_type_id__volatile,@object # @gimp_color_display_stack_get_type.g_define_type_id__volatile
	.local	gimp_color_display_stack_get_type.g_define_type_id__volatile
	.comm	gimp_color_display_stack_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorDisplayStack"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_color_display_stack_clone,@object # @__func__.gimp_color_display_stack_clone
.L__func__.gimp_color_display_stack_clone:
	.asciz	"gimp_color_display_stack_clone"
	.size	.L__func__.gimp_color_display_stack_clone, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_DISPLAY_STACK (stack)"
	.size	.L.str.2, 36

	.type	.L__func__.gimp_color_display_stack_changed,@object # @__func__.gimp_color_display_stack_changed
.L__func__.gimp_color_display_stack_changed:
	.asciz	"gimp_color_display_stack_changed"
	.size	.L__func__.gimp_color_display_stack_changed, 33

	.type	stack_signals,@object   # @stack_signals
	.local	stack_signals
	.comm	stack_signals,16,16
	.type	.L__func__.gimp_color_display_stack_add,@object # @__func__.gimp_color_display_stack_add
.L__func__.gimp_color_display_stack_add:
	.asciz	"gimp_color_display_stack_add"
	.size	.L__func__.gimp_color_display_stack_add, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_COLOR_DISPLAY (display)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"g_list_find (stack->filters, display) == NULL"
	.size	.L.str.4, 46

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"changed"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"notify::enabled"
	.size	.L.str.6, 16

	.type	.L__func__.gimp_color_display_stack_remove,@object # @__func__.gimp_color_display_stack_remove
.L__func__.gimp_color_display_stack_remove:
	.asciz	"gimp_color_display_stack_remove"
	.size	.L__func__.gimp_color_display_stack_remove, 32

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"g_list_find (stack->filters, display) != NULL"
	.size	.L.str.7, 46

	.type	.L__func__.gimp_color_display_stack_reorder_up,@object # @__func__.gimp_color_display_stack_reorder_up
.L__func__.gimp_color_display_stack_reorder_up:
	.asciz	"gimp_color_display_stack_reorder_up"
	.size	.L__func__.gimp_color_display_stack_reorder_up, 36

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"list != NULL"
	.size	.L.str.8, 13

	.type	.L__func__.gimp_color_display_stack_reorder_down,@object # @__func__.gimp_color_display_stack_reorder_down
.L__func__.gimp_color_display_stack_reorder_down:
	.asciz	"gimp_color_display_stack_reorder_down"
	.size	.L__func__.gimp_color_display_stack_reorder_down, 38

	.type	.L__func__.gimp_color_display_stack_convert_surface,@object # @__func__.gimp_color_display_stack_convert_surface
.L__func__.gimp_color_display_stack_convert_surface:
	.asciz	"gimp_color_display_stack_convert_surface"
	.size	.L__func__.gimp_color_display_stack_convert_surface, 41

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"surface != NULL"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"cairo_surface_get_type (surface) == CAIRO_SURFACE_TYPE_IMAGE"
	.size	.L.str.10, 61

	.type	.L__func__.gimp_color_display_stack_convert,@object # @__func__.gimp_color_display_stack_convert
.L__func__.gimp_color_display_stack_convert:
	.asciz	"gimp_color_display_stack_convert"
	.size	.L__func__.gimp_color_display_stack_convert, 33

	.type	gimp_color_display_stack_parent_class,@object # @gimp_color_display_stack_parent_class
	.local	gimp_color_display_stack_parent_class
	.comm	gimp_color_display_stack_parent_class,8,8
	.type	GimpColorDisplayStack_private_offset,@object # @GimpColorDisplayStack_private_offset
	.local	GimpColorDisplayStack_private_offset
	.comm	GimpColorDisplayStack_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"added"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"removed"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"reordered"
	.size	.L.str.13, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
