	.text
	.file	"gimpobject.bc"
	.globl	gimp_object_get_type
	.align	16, 0x90
	.type	gimp_object_get_type,@function
gimp_object_get_type:                   # @gimp_object_get_type
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
	cmpq	$0, gimp_object_get_type.object_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_object_get_type.object_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_object_get_type.object_type
.LBB0_2:                                # %if.end
	movq	gimp_object_get_type.object_type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_object_get_type, .Lfunc_end0-gimp_object_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_object_class_init,@function
gimp_object_class_init:                 # @gimp_object_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent
	movabsq	$.L.str.9, %rdi
	movl	$1, %edx
	movl	$136, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, parent_class
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
	callq	g_signal_new
	movabsq	$.L.str.10, %rdi
	movl	$1, %edx
	movl	$144, %ecx
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, object_signals
	movq	-40(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$231, %r8d
	movabsq	$gimp_object_real_get_memsize, %r9
	movabsq	$gimp_object_get_property, %r10
	movabsq	$gimp_object_set_property, %r11
	movabsq	$gimp_object_finalize, %r14
	movabsq	$gimp_object_dispose, %r15
	movl	%eax, object_signals+4
	movq	-48(%rbp), %r12
	movq	%r15, 40(%r12)
	movq	-48(%rbp), %r15
	movq	%r14, 48(%r15)
	movq	-48(%rbp), %r14
	movq	%r11, 24(%r14)
	movq	-48(%rbp), %r11
	movq	%r10, 32(%r11)
	movq	-40(%rbp), %r10
	movq	$0, 136(%r10)
	movq	-40(%rbp), %r10
	movq	$0, 144(%r10)
	movq	-40(%rbp), %r10
	movq	%r9, 152(%r10)
	movq	-48(%rbp), %r9
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%r9, -128(%rbp)         # 8-byte Spill
	callq	g_param_spec_string
	movl	$1, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$24, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_object_class_init, .Lfunc_end1-gimp_object_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_object_init,@function
gimp_object_init:                       # @gimp_object_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_check_class_cast
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_debug_add_instance
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_object_init, .Lfunc_end2-gimp_object_init
	.cfi_endproc

	.globl	gimp_object_set_name
	.align	16, 0x90
	.type	gimp_object_set_name,@function
gimp_object_set_name:                   # @gimp_object_set_name
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_object_set_name, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_strcmp0
	cmpl	$0, %eax
	jne	.LBB3_14
# BB#13:                                # %if.then.14
	jmp	.LBB3_15
.LBB3_14:                               # %if.end.15
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	16(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_changed
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB3_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_object_set_name, .Lfunc_end3-gimp_object_set_name
	.cfi_endproc

	.globl	gimp_object_name_free
	.align	16, 0x90
	.type	gimp_object_name_free,@function
gimp_object_name_free:                  # @gimp_object_name_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB4_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	cmpq	(%rcx), %rax
	je	.LBB4_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdi
	callq	g_free
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, 8(%rax)
.LBB4_4:                                # %if.end.9
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB4_8
# BB#5:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	16(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB4_7
# BB#6:                                 # %if.then.16
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB4_7:                                # %if.end.19
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	16(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 16(%rax)
.LBB4_8:                                # %if.end.26
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_object_name_free, .Lfunc_end4-gimp_object_name_free
	.cfi_endproc

	.globl	gimp_object_name_changed
	.align	16, 0x90
	.type	gimp_object_name_changed,@function
gimp_object_name_changed:               # @gimp_object_name_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_object_get_type
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
	movabsq	$.L__func__.gimp_object_name_changed, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	object_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_object_name_changed, .Lfunc_end5-gimp_object_name_changed
	.cfi_endproc

	.globl	gimp_object_set_name_safe
	.align	16, 0x90
	.type	gimp_object_set_name_safe,@function
gimp_object_set_name_safe:              # @gimp_object_set_name_safe
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_object_get_type
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
	movabsq	$.L__func__.gimp_object_set_name_safe, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_15
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	g_strcmp0
	cmpl	$0, %eax
	jne	.LBB6_14
# BB#13:                                # %if.then.14
	jmp	.LBB6_15
.LBB6_14:                               # %if.end.15
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_free
	movl	$30, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_utf8_strtrim
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	16(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_changed
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB6_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_object_set_name_safe, .Lfunc_end6-gimp_object_set_name_safe
	.cfi_endproc

	.globl	gimp_object_set_static_name
	.align	16, 0x90
	.type	gimp_object_set_static_name,@function
gimp_object_set_static_name:            # @gimp_object_set_static_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_object_get_type
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
	movabsq	$.L__func__.gimp_object_set_static_name, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_free
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdi, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	16(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_changed
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_object_set_static_name, .Lfunc_end7-gimp_object_set_static_name
	.cfi_endproc

	.globl	gimp_object_take_name
	.align	16, 0x90
	.type	gimp_object_take_name,@function
gimp_object_take_name:                  # @gimp_object_take_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_object_get_type
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
	movabsq	$.L__func__.gimp_object_take_name, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_free
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdi, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movb	16(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 16(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_changed
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB8_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_object_take_name, .Lfunc_end8-gimp_object_take_name
	.cfi_endproc

	.globl	gimp_object_get_name
	.align	16, 0x90
	.type	gimp_object_get_name,@function
gimp_object_get_name:                   # @gimp_object_get_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_object_get_type
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
	movabsq	$.L__func__.gimp_object_get_name, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_object_get_name, .Lfunc_end9-gimp_object_get_name
	.cfi_endproc

	.globl	gimp_object_name_collate
	.align	16, 0x90
	.type	gimp_object_name_collate,@function
gimp_object_name_collate:               # @gimp_object_name_collate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	cmpq	$0, 8(%rsi)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_object_name_normalize
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB10_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	gimp_object_name_normalize
.LBB10_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_object_name_collate, .Lfunc_end10-gimp_object_name_collate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_object_name_normalize,@function
gimp_object_name_normalize:             # @gimp_object_name_normalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_object_name_normalize, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_10
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB11_10
# BB#6:                                 # %if.then.2
	movq	$-1, %rsi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	callq	g_utf8_collate_key
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB11_8
# BB#7:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB11_9
.LBB11_8:                               # %if.else.12
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdi, 8(%rax)
.LBB11_9:                               # %if.end.17
	jmp	.LBB11_10
.LBB11_10:                              # %if.end.18
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_object_name_normalize, .Lfunc_end11-gimp_object_name_normalize
	.cfi_endproc

	.globl	gimp_object_get_memsize
	.align	16, 0x90
	.type	gimp_object_get_memsize,@function
gimp_object_get_memsize:                # @gimp_object_get_memsize
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB12_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB12_9
.LBB12_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB12_7
# BB#6:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB12_8
.LBB12_7:                               # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB12_8:                               # %if.end
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB12_11
.LBB12_10:                              # %if.then.9
	jmp	.LBB12_12
.LBB12_11:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_object_get_memsize, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_41
.LBB12_12:                              # %if.end.11
	jmp	.LBB12_13
.LBB12_13:                              # %do.end
	cmpq	$0, -16(%rbp)
	jne	.LBB12_17
# BB#14:                                # %if.then.13
	cmpq	$0, -24(%rbp)
	je	.LBB12_16
# BB#15:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB12_16:                              # %if.end.16
	movq	$0, -8(%rbp)
	jmp	.LBB12_41
.LBB12_17:                              # %if.end.17
	cmpl	$0, gimp_debug_memsize
	je	.LBB12_38
# BB#18:                                # %if.then.19
	leaq	-80(%rbp), %rsi
	movq	$0, -80(%rbp)
	movl	gimp_object_get_memsize.indent_level, %eax
	addl	$1, %eax
	movl	%eax, gimp_object_get_memsize.indent_level
	movl	gimp_object_get_memsize.indent_level, %eax
	movl	%eax, -88(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	152(%rcx), %rcx
	movq	-16(%rbp), %rdi
	callq	*%rcx
	movq	%rax, -72(%rbp)
	movl	gimp_object_get_memsize.indent_level, %edx
	addl	$-1, %edx
	movl	%edx, gimp_object_get_memsize.indent_level
	movl	$0, -84(%rbp)
.LBB12_19:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-84(%rbp), %rax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	cmpq	$255, %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jae	.LBB12_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB12_19 Depth=1
	movl	-88(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB12_22
.LBB12_21:                              # %cond.false
                                        #   in Loop: Header=BB12_19 Depth=1
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB12_22
.LBB12_22:                              # %cond.end
                                        #   in Loop: Header=BB12_19 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jae	.LBB12_25
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB12_19 Depth=1
	movslq	-84(%rbp), %rax
	movb	$32, gimp_object_get_memsize.indent_buf(,%rax)
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB12_19 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB12_19
.LBB12_25:                              # %for.end
	movslq	-84(%rbp), %rax
	movb	$0, gimp_object_get_memsize.indent_buf(,%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	cmpq	$0, (%rdi)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	je	.LBB12_27
# BB#26:                                # %cond.true.41
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_28
.LBB12_27:                              # %cond.false.44
	movabsq	$.L.str.7, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_28
.LBB12_28:                              # %cond.end.45
	movq	-136(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.6, %rdi
	movabsq	$gimp_object_get_memsize.indent_buf, %rsi
	movq	-72(%rbp), %r8
	movq	-80(%rbp), %r9
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	movq	gimp_object_get_memsize.aggregation_tree, %rdi
	movq	-96(%rbp), %rsi
	callq	g_list_prepend
	movq	%rax, gimp_object_get_memsize.aggregation_tree
	cmpl	$0, gimp_object_get_memsize.indent_level
	jne	.LBB12_37
# BB#29:                                # %if.then.51
	movq	gimp_object_get_memsize.aggregation_tree, %rax
	movq	%rax, -104(%rbp)
.LBB12_30:                              # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB12_36
# BB#31:                                # %for.body.55
                                        #   in Loop: Header=BB12_30 Depth=1
	movabsq	$.L.str.8, %rdi
	movq	-104(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_print
	movq	-104(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	g_free
# BB#32:                                # %for.inc.57
                                        #   in Loop: Header=BB12_30 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB12_34
# BB#33:                                # %cond.true.59
                                        #   in Loop: Header=BB12_30 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB12_35
.LBB12_34:                              # %cond.false.60
                                        #   in Loop: Header=BB12_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB12_35
.LBB12_35:                              # %cond.end.61
                                        #   in Loop: Header=BB12_30 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB12_30
.LBB12_36:                              # %for.end.63
	movq	gimp_object_get_memsize.aggregation_tree, %rdi
	callq	g_list_free
	movq	$0, gimp_object_get_memsize.aggregation_tree
.LBB12_37:                              # %if.end.64
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_41
.LBB12_38:                              # %if.end.65
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_40
# BB#39:                                # %if.then.70
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB12_40:                              # %if.end.71
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_41:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_object_get_memsize, .Lfunc_end12-gimp_object_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_object_dispose,@function
gimp_object_dispose:                    # @gimp_object_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movb	16(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB13_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	object_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movb	16(%rdi), %al
	andb	$-3, %al
	orb	$2, %al
	movb	%al, 16(%rdi)
.LBB13_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_object_dispose, .Lfunc_end13-gimp_object_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_object_finalize,@function
gimp_object_finalize:                   # @gimp_object_finalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_object_name_free
	movq	-8(%rbp), %rdi
	callq	gimp_debug_remove_instance
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_object_finalize, .Lfunc_end14-gimp_object_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_object_set_property,@function
gimp_object_set_property:               # @gimp_object_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB15_2
	jmp	.LBB15_1
.LBB15_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_string
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	jmp	.LBB15_5
.LBB15_2:                               # %sw.default
	jmp	.LBB15_3
.LBB15_3:                               # %do.body
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
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$205, %edx
	movabsq	$.L.str.13, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB15_5
.LBB15_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_object_set_property, .Lfunc_end15-gimp_object_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_object_get_property,@function
gimp_object_get_property:               # @gimp_object_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB16_5
	jmp	.LBB16_1
.LBB16_1:                               # %sw.bb
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movb	16(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB16_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rsi
	callq	g_value_set_static_string
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rsi
	callq	g_value_set_string
.LBB16_4:                               # %if.end
	jmp	.LBB16_8
.LBB16_5:                               # %sw.default
	jmp	.LBB16_6
.LBB16_6:                               # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %rsi
	movl	$227, %edx
	movabsq	$.L.str.13, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB16_8
.LBB16_8:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_object_get_property, .Lfunc_end16-gimp_object_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_object_real_get_memsize,@function
gimp_object_real_get_memsize:           # @gimp_object_real_get_memsize
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
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movb	16(%rsi), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_g_object_get_memsize
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_object_real_get_memsize, .Lfunc_end17-gimp_object_real_get_memsize
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.type	gimp_object_get_type.object_type,@object # @gimp_object_get_type.object_type
	.local	gimp_object_get_type.object_type
	.comm	gimp_object_get_type.object_type,8,8
	.type	gimp_object_get_type.object_info,@object # @gimp_object_get_type.object_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_object_get_type.object_info:
	.short	160                     # 0xa0
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_object_class_init
	.quad	0
	.quad	0
	.short	32                      # 0x20
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_object_init
	.quad	0
	.size	gimp_object_get_type.object_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpObject"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_object_set_name,@object # @__func__.gimp_object_set_name
.L__func__.gimp_object_set_name:
	.asciz	"gimp_object_set_name"
	.size	.L__func__.gimp_object_set_name, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_OBJECT (object)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L__func__.gimp_object_set_name_safe,@object # @__func__.gimp_object_set_name_safe
.L__func__.gimp_object_set_name_safe:
	.asciz	"gimp_object_set_name_safe"
	.size	.L__func__.gimp_object_set_name_safe, 26

	.type	.L__func__.gimp_object_set_static_name,@object # @__func__.gimp_object_set_static_name
.L__func__.gimp_object_set_static_name:
	.asciz	"gimp_object_set_static_name"
	.size	.L__func__.gimp_object_set_static_name, 28

	.type	.L__func__.gimp_object_take_name,@object # @__func__.gimp_object_take_name
.L__func__.gimp_object_take_name:
	.asciz	"gimp_object_take_name"
	.size	.L__func__.gimp_object_take_name, 22

	.type	.L__func__.gimp_object_get_name,@object # @__func__.gimp_object_get_name
.L__func__.gimp_object_get_name:
	.asciz	"gimp_object_get_name"
	.size	.L__func__.gimp_object_get_name, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_OBJECT (object_typed)"
	.size	.L.str.4, 30

	.type	.L__func__.gimp_object_name_changed,@object # @__func__.gimp_object_name_changed
.L__func__.gimp_object_name_changed:
	.asciz	"gimp_object_name_changed"
	.size	.L__func__.gimp_object_name_changed, 25

	.type	object_signals,@object  # @object_signals
	.local	object_signals
	.comm	object_signals,8,4
	.type	gimp_debug_memsize,@object # @gimp_debug_memsize
	.bss
	.globl	gimp_debug_memsize
	.align	4
gimp_debug_memsize:
	.long	0                       # 0x0
	.size	gimp_debug_memsize, 4

	.type	.L__func__.gimp_object_get_memsize,@object # @__func__.gimp_object_get_memsize
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_object_get_memsize:
	.asciz	"gimp_object_get_memsize"
	.size	.L__func__.gimp_object_get_memsize, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"object == NULL || GIMP_IS_OBJECT (object)"
	.size	.L.str.5, 42

	.type	gimp_object_get_memsize.indent_level,@object # @gimp_object_get_memsize.indent_level
	.local	gimp_object_get_memsize.indent_level
	.comm	gimp_object_get_memsize.indent_level,4,4
	.type	gimp_object_get_memsize.aggregation_tree,@object # @gimp_object_get_memsize.aggregation_tree
	.local	gimp_object_get_memsize.aggregation_tree
	.comm	gimp_object_get_memsize.aggregation_tree,8,8
	.type	gimp_object_get_memsize.indent_buf,@object # @gimp_object_get_memsize.indent_buf
	.local	gimp_object_get_memsize.indent_buf
	.comm	gimp_object_get_memsize.indent_buf,256,16
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s%s \"%s\": %li(%li)\n"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"anonymous"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s"
	.size	.L.str.8, 3

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"disconnect"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"name-changed"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.11, 54

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimpobject.c"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"property"
	.size	.L.str.13, 9

	.type	.L__func__.gimp_object_name_normalize,@object # @__func__.gimp_object_name_normalize
.L__func__.gimp_object_name_normalize:
	.asciz	"gimp_object_name_normalize"
	.size	.L__func__.gimp_object_name_normalize, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"object->p->normalized == NULL"
	.size	.L.str.14, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
