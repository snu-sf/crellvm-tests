	.text
	.file	"gimptagged.bc"
	.globl	gimp_tagged_interface_get_type
	.align	16, 0x90
	.type	gimp_tagged_interface_get_type,@function
gimp_tagged_interface_get_type:         # @gimp_tagged_interface_get_type
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
	cmpq	$0, gimp_tagged_interface_get_type.tagged_iface_type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_tagged_interface_get_type.tagged_iface_info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_tagged_interface_get_type.tagged_iface_type
.LBB0_2:                                # %if.end
	movq	gimp_tagged_interface_get_type.tagged_iface_type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tagged_interface_get_type, .Lfunc_end0-gimp_tagged_interface_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_base_init,@function
gimp_tagged_base_init:                  # @gimp_tagged_base_init
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp6:
	.cfi_offset %rbx, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	cmpl	$0, gimp_tagged_base_init.initialized
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	gimp_tagged_interface_get_type
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tag_get_type
	movabsq	$.L.str.5, %rdi
	movl	$2, %edx
	movl	$16, %ecx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %esi
	movl	%esi, %r10d
	movl	$1, %esi
	movq	-40(%rbp), %r11         # 8-byte Reload
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%r11, %rsi
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_tagged_signals
	callq	gimp_tagged_interface_get_type
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_tag_get_type
	movabsq	$.L.str.6, %rdi
	movl	$2, %edx
	movl	$24, %ecx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movl	$1, %r15d
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movl	%r15d, -108(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_tagged_signals+4
	movl	$1, gimp_tagged_base_init.initialized
.LBB1_2:                                # %if.end
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tagged_base_init, .Lfunc_end1-gimp_tagged_base_init
	.cfi_endproc

	.globl	gimp_tagged_add_tag
	.align	16, 0x90
	.type	gimp_tagged_add_tag,@function
gimp_tagged_add_tag:                    # @gimp_tagged_add_tag
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tagged_interface_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_add_tag, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_26
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB2_20
.LBB2_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB2_19
.LBB2_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_19:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.35
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_add_tag, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_26
.LBB2_23:                               # %if.end.37
	jmp	.LBB2_24
.LBB2_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB2_26
# BB#25:                                # %if.then.44
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_tagged_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB2_26:                               # %if.end.45
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tagged_add_tag, .Lfunc_end2-gimp_tagged_add_tag
	.cfi_endproc

	.globl	gimp_tagged_remove_tag
	.align	16, 0x90
	.type	gimp_tagged_remove_tag,@function
gimp_tagged_remove_tag:                 # @gimp_tagged_remove_tag
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tagged_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_remove_tag, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_35
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_remove_tag, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_35
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	movq	-8(%rbp), %rdi
	callq	gimp_tagged_get_tags
	movq	%rax, -24(%rbp)
.LBB3_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB3_35
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tag_equals
	cmpl	$0, %eax
	je	.LBB3_30
# BB#27:                                # %if.then.44
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB3_29
# BB#28:                                # %if.then.51
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_tagged_signals+4, %esi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB3_29:                               # %if.end.52
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB3_35
.LBB3_30:                               # %if.end.53
                                        #   in Loop: Header=BB3_25 Depth=1
	jmp	.LBB3_31
.LBB3_31:                               # %for.inc
                                        #   in Loop: Header=BB3_25 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB3_33
# BB#32:                                # %cond.true
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_34
.LBB3_33:                               # %cond.false
                                        #   in Loop: Header=BB3_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_34
.LBB3_34:                               # %cond.end
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB3_25
.LBB3_35:                               # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tagged_remove_tag, .Lfunc_end3-gimp_tagged_remove_tag
	.cfi_endproc

	.globl	gimp_tagged_get_tags
	.align	16, 0x90
	.type	gimp_tagged_get_tags,@function
gimp_tagged_get_tags:                   # @gimp_tagged_get_tags
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
	movq	%rax, -24(%rbp)
	callq	gimp_tagged_interface_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_get_tags, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tagged_get_tags, .Lfunc_end4-gimp_tagged_get_tags
	.cfi_endproc

	.globl	gimp_tagged_set_tags
	.align	16, 0x90
	.type	gimp_tagged_set_tags,@function
gimp_tagged_set_tags:                   # @gimp_tagged_set_tags
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tagged_interface_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_set_tags, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_38
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_tagged_get_tags
	movq	%rax, %rdi
	callq	g_list_copy
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB5_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_tagged_remove_tag
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB5_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false
                                        #   in Loop: Header=BB5_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_18
.LBB5_18:                               # %cond.end
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_13
.LBB5_19:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
.LBB5_20:                               # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_38
# BB#21:                                # %for.body.17
                                        #   in Loop: Header=BB5_20 Depth=1
	jmp	.LBB5_22
.LBB5_22:                               # %do.body.18
                                        #   in Loop: Header=BB5_20 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_24
# BB#23:                                # %if.then.28
                                        #   in Loop: Header=BB5_20 Depth=1
	movl	$0, -76(%rbp)
	jmp	.LBB5_29
.LBB5_24:                               # %if.else.29
                                        #   in Loop: Header=BB5_20 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_27
# BB#25:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB5_20 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_27
# BB#26:                                # %if.then.36
                                        #   in Loop: Header=BB5_20 Depth=1
	movl	$1, -76(%rbp)
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.37
                                        #   in Loop: Header=BB5_20 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_28:                               # %if.end.39
                                        #   in Loop: Header=BB5_20 Depth=1
	jmp	.LBB5_29
.LBB5_29:                               # %if.end.40
                                        #   in Loop: Header=BB5_20 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_31
# BB#30:                                # %if.then.43
                                        #   in Loop: Header=BB5_20 Depth=1
	jmp	.LBB5_32
.LBB5_31:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_set_tags, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_38
.LBB5_32:                               # %if.end.45
                                        #   in Loop: Header=BB5_20 Depth=1
	jmp	.LBB5_33
.LBB5_33:                               # %do.end.46
                                        #   in Loop: Header=BB5_20 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_tagged_add_tag
# BB#34:                                # %for.inc.48
                                        #   in Loop: Header=BB5_20 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_36
# BB#35:                                # %cond.true.50
                                        #   in Loop: Header=BB5_20 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_37
.LBB5_36:                               # %cond.false.52
                                        #   in Loop: Header=BB5_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB5_37
.LBB5_37:                               # %cond.end.53
                                        #   in Loop: Header=BB5_20 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_20
.LBB5_38:                               # %for.end.55
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tagged_set_tags, .Lfunc_end5-gimp_tagged_set_tags
	.cfi_endproc

	.globl	gimp_tagged_get_identifier
	.align	16, 0x90
	.type	gimp_tagged_get_identifier,@function
gimp_tagged_get_identifier:             # @gimp_tagged_get_identifier
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tagged_interface_get_type
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
	movabsq	$.L__func__.gimp_tagged_get_identifier, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tagged_get_identifier, .Lfunc_end6-gimp_tagged_get_identifier
	.cfi_endproc

	.globl	gimp_tagged_get_checksum
	.align	16, 0x90
	.type	gimp_tagged_get_checksum,@function
gimp_tagged_get_checksum:               # @gimp_tagged_get_checksum
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tagged_interface_get_type
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
	movabsq	$.L__func__.gimp_tagged_get_checksum, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movq	64(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tagged_get_checksum, .Lfunc_end7-gimp_tagged_get_checksum
	.cfi_endproc

	.globl	gimp_tagged_has_tag
	.align	16, 0x90
	.type	gimp_tagged_has_tag,@function
gimp_tagged_has_tag:                    # @gimp_tagged_has_tag
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_tagged_interface_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_has_tag, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_34
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_has_tag, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_34
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	callq	gimp_tagged_get_tags
	movq	%rax, -32(%rbp)
.LBB8_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_33
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tag_equals
	cmpl	$0, %eax
	je	.LBB8_28
# BB#27:                                # %if.then.43
	movl	$1, -4(%rbp)
	jmp	.LBB8_34
.LBB8_28:                               # %if.end.44
                                        #   in Loop: Header=BB8_25 Depth=1
	jmp	.LBB8_29
.LBB8_29:                               # %for.inc
                                        #   in Loop: Header=BB8_25 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB8_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_32
.LBB8_31:                               # %cond.false
                                        #   in Loop: Header=BB8_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB8_32
.LBB8_32:                               # %cond.end
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB8_25
.LBB8_33:                               # %for.end
	movl	$0, -4(%rbp)
.LBB8_34:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tagged_has_tag, .Lfunc_end8-gimp_tagged_has_tag
	.cfi_endproc

	.type	gimp_tagged_interface_get_type.tagged_iface_type,@object # @gimp_tagged_interface_get_type.tagged_iface_type
	.local	gimp_tagged_interface_get_type.tagged_iface_type
	.comm	gimp_tagged_interface_get_type.tagged_iface_type,8,8
	.type	gimp_tagged_interface_get_type.tagged_iface_info,@object # @gimp_tagged_interface_get_type.tagged_iface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_tagged_interface_get_type.tagged_iface_info:
	.short	72                      # 0x48
	.zero	6
	.quad	gimp_tagged_base_init
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_tagged_interface_get_type.tagged_iface_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTaggedInterface"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_tagged_add_tag,@object # @__func__.gimp_tagged_add_tag
.L__func__.gimp_tagged_add_tag:
	.asciz	"gimp_tagged_add_tag"
	.size	.L__func__.gimp_tagged_add_tag, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TAGGED (tagged)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_TAG (tag)"
	.size	.L.str.3, 18

	.type	gimp_tagged_signals,@object # @gimp_tagged_signals
	.local	gimp_tagged_signals
	.comm	gimp_tagged_signals,8,4
	.type	.L__func__.gimp_tagged_remove_tag,@object # @__func__.gimp_tagged_remove_tag
.L__func__.gimp_tagged_remove_tag:
	.asciz	"gimp_tagged_remove_tag"
	.size	.L__func__.gimp_tagged_remove_tag, 23

	.type	.L__func__.gimp_tagged_set_tags,@object # @__func__.gimp_tagged_set_tags
.L__func__.gimp_tagged_set_tags:
	.asciz	"gimp_tagged_set_tags"
	.size	.L__func__.gimp_tagged_set_tags, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TAG (list->data)"
	.size	.L.str.4, 25

	.type	.L__func__.gimp_tagged_get_tags,@object # @__func__.gimp_tagged_get_tags
.L__func__.gimp_tagged_get_tags:
	.asciz	"gimp_tagged_get_tags"
	.size	.L__func__.gimp_tagged_get_tags, 21

	.type	.L__func__.gimp_tagged_get_identifier,@object # @__func__.gimp_tagged_get_identifier
.L__func__.gimp_tagged_get_identifier:
	.asciz	"gimp_tagged_get_identifier"
	.size	.L__func__.gimp_tagged_get_identifier, 27

	.type	.L__func__.gimp_tagged_get_checksum,@object # @__func__.gimp_tagged_get_checksum
.L__func__.gimp_tagged_get_checksum:
	.asciz	"gimp_tagged_get_checksum"
	.size	.L__func__.gimp_tagged_get_checksum, 25

	.type	.L__func__.gimp_tagged_has_tag,@object # @__func__.gimp_tagged_has_tag
.L__func__.gimp_tagged_has_tag:
	.asciz	"gimp_tagged_has_tag"
	.size	.L__func__.gimp_tagged_has_tag, 20

	.type	gimp_tagged_base_init.initialized,@object # @gimp_tagged_base_init.initialized
	.local	gimp_tagged_base_init.initialized
	.comm	gimp_tagged_base_init.initialized,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tag-added"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tag-removed"
	.size	.L.str.6, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
