	.text
	.file	"gimprc-deserialize.bc"
	.globl	gimp_rc_deserialize
	.align	16, 0x90
	.type	gimp_rc_deserialize,@function
gimp_rc_deserialize:                    # @gimp_rc_deserialize
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_config_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rc_deserialize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_38
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	leaq	-60(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_object_class_list_properties
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.14
	movl	$1, -4(%rbp)
	jmp	.LBB0_38
.LBB0_14:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_qname
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	g_scanner_set_scope
	movl	%eax, -72(%rbp)
	movl	$0, -64(%rbp)
.LBB0_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB0_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_18
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	callq	g_scanner_scope_add_symbol
.LBB0_18:                               # %if.end.24
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               # %for.inc
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_15
.LBB0_20:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$40, -76(%rbp)
.LBB0_21:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB0_25
# BB#22:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB0_21 Depth=1
	cmpl	$265, -76(%rbp)         # imm = 0x109
	jne	.LBB0_24
# BB#23:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB0_21 Depth=1
	cmpl	$266, -80(%rbp)         # imm = 0x10A
	je	.LBB0_25
.LBB0_24:                               # %if.then.32
	jmp	.LBB0_32
.LBB0_25:                               # %if.end.33
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -76(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB0_26
	jmp	.LBB0_39
.LBB0_39:                               # %if.end.33
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_40
.LBB0_40:                               # %if.end.33
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB0_28
	jmp	.LBB0_41
.LBB0_41:                               # %if.end.33
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$266, %eax              # imm = 0x10A
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB0_27
	jmp	.LBB0_30
.LBB0_26:                               # %sw.bb
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	$265, -76(%rbp)         # imm = 0x109
	jmp	.LBB0_31
.LBB0_27:                               # %sw.bb.35
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rc_deserialize_unknown
	movl	%eax, -76(%rbp)
	jmp	.LBB0_31
.LBB0_28:                               # %sw.bb.37
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_config_deserialize_property
	movl	%eax, -76(%rbp)
	jmp	.LBB0_31
.LBB0_29:                               # %sw.bb.39
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	$40, -76(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %sw.default
                                        #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %sw.epilog
                                        #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_21
.LBB0_32:                               # %while.end
	movq	-24(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	g_scanner_set_scope
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	cmpl	$256, -76(%rbp)         # imm = 0x100
	jne	.LBB0_34
# BB#33:                                # %if.then.43
	movl	$0, -4(%rbp)
	jmp	.LBB0_38
.LBB0_34:                               # %if.end.44
	cmpl	$264, -76(%rbp)         # imm = 0x108
	jne	.LBB0_37
# BB#35:                                # %land.lhs.true.46
	cmpl	$266, -80(%rbp)         # imm = 0x10A
	jne	.LBB0_37
# BB#36:                                # %if.then.48
	movabsq	$.L.str.2, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$265, %esi              # imm = 0x109
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$1, %ecx
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token
	movl	$0, -4(%rbp)
	jmp	.LBB0_38
.LBB0_37:                               # %if.end.50
	movq	-24(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	gimp_config_deserialize_return
	movl	%eax, -4(%rbp)
.LBB0_38:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rc_deserialize, .Lfunc_end0-gimp_rc_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rc_deserialize_unknown,@function
gimp_rc_deserialize_unknown:            # @gimp_rc_deserialize_unknown
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	g_scanner_set_scope
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	$264, %eax              # imm = 0x108
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB1_5
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	g_scanner_set_scope
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB1_5
.LBB1_4:                                # %if.end.9
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	callq	gimp_rc_add_unknown_token
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$41, -4(%rbp)
.LBB1_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rc_deserialize_unknown, .Lfunc_end1-gimp_rc_deserialize_unknown
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Config"
	.size	.L.str, 12

	.type	.L__func__.gimp_rc_deserialize,@object # @__func__.gimp_rc_deserialize
.L__func__.gimp_rc_deserialize:
	.asciz	"gimp_rc_deserialize"
	.size	.L__func__.gimp_rc_deserialize, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CONFIG (config)"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"fatal parse error"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"value for token %s is not a valid UTF-8 string"
	.size	.L.str.3, 47


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
