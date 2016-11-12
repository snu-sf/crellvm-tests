	.text
	.file	"plug-in-rc.bc"
	.globl	plug_in_rc_parse
	.align	16, 0x90
	.type	plug_in_rc_parse,@function
plug_in_rc_parse:                       # @plug_in_rc_parse
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -56(%rbp)
	movl	$20, -60(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_rc_parse, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_48
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_rc_parse, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_48
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB0_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_21
.LBB0_20:                               # %if.then.20
	jmp	.LBB0_22
.LBB0_21:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_rc_parse, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_48
.LBB0_22:                               # %if.end.22
	jmp	.LBB0_23
.LBB0_23:                               # %do.end.23
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_scanner_new_file
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_25
# BB#24:                                # %if.then.26
	movq	$0, -8(%rbp)
	jmp	.LBB0_48
.LBB0_25:                               # %if.end.27
	callq	gimp_icon_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	xorl	%esi, %esi
	movabsq	$.L.str.4, %rdx
	movl	$1, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	xorl	%esi, %esi
	movabsq	$.L.str.5, %rdx
	movl	$2, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.6, %rdx
	movl	$3, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.7, %rdx
	movl	$4, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.8, %rdx
	movl	$5, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.9, %rdx
	movl	$6, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.10, %rdx
	movl	$7, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.11, %rdx
	movl	$8, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.12, %rdx
	movl	$9, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.13, %rdx
	movl	$10, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$2, %esi
	movabsq	$.L.str.14, %rdx
	movl	$11, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$10, %esi
	movabsq	$.L.str.15, %rdx
	movl	$12, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$10, %esi
	movabsq	$.L.str.16, %rdx
	movl	$13, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$10, %esi
	movabsq	$.L.str.17, %rdx
	movl	$14, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$10, %esi
	movabsq	$.L.str.18, %rdx
	movl	$15, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$10, %esi
	movabsq	$.L.str.19, %rdx
	movl	$16, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$11, %esi
	movabsq	$.L.str.15, %rdx
	movl	$12, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$11, %esi
	movabsq	$.L.str.16, %rdx
	movl	$13, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$11, %esi
	movabsq	$.L.str.18, %rdx
	movl	$15, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$40, -64(%rbp)
.LBB0_26:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$20, -60(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB0_28
# BB#27:                                # %land.rhs
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-64(%rbp), %eax
	sete	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB0_28:                               # %land.end
                                        #   in Loop: Header=BB0_26 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_29
	jmp	.LBB0_41
.LBB0_29:                               # %while.body
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -64(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB0_30
	jmp	.LBB0_49
.LBB0_49:                               # %while.body
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB0_38
	jmp	.LBB0_50
.LBB0_50:                               # %while.body
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB0_31
	jmp	.LBB0_39
.LBB0_30:                               # %sw.bb
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$265, -64(%rbp)         # imm = 0x109
	jmp	.LBB0_40
.LBB0_31:                               # %sw.bb.34
                                        #   in Loop: Header=BB0_26 Depth=1
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%edx, -116(%rbp)        # 4-byte Spill
	je	.LBB0_32
	jmp	.LBB0_51
.LBB0_51:                               # %sw.bb.34
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB0_35
	jmp	.LBB0_36
.LBB0_32:                               # %sw.bb.35
                                        #   in Loop: Header=BB0_26 Depth=1
	leaq	-60(%rbp), %rsi
	movl	$261, -64(%rbp)         # imm = 0x105
	movq	-40(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	je	.LBB0_34
# BB#33:                                # %if.then.38
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$41, -64(%rbp)
.LBB0_34:                               # %if.end.39
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_37
.LBB0_35:                               # %sw.bb.40
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$2, %esi
	movq	-40(%rbp), %rdi
	callq	g_scanner_set_scope
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	plug_in_def_deserialize
	xorl	%esi, %esi
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_scanner_set_scope
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB0_37
.LBB0_36:                               # %sw.default
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               # %sw.epilog
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_40
.LBB0_38:                               # %sw.bb.44
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	$40, -64(%rbp)
	jmp	.LBB0_40
.LBB0_39:                               # %sw.default.45
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_40
.LBB0_40:                               # %sw.epilog.46
                                        #   in Loop: Header=BB0_26 Depth=1
	jmp	.LBB0_26
.LBB0_41:                               # %while.end
	cmpl	$20, -60(%rbp)
	jne	.LBB0_43
# BB#42:                                # %lor.lhs.false.49
	cmpl	$40, -64(%rbp)
	je	.LBB0_47
.LBB0_43:                               # %if.then.52
	cmpl	$20, -60(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.55
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark
	movabsq	$.L.str.20, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$4, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.59
	movq	-40(%rbp), %rdi
	callq	g_scanner_get_next_token
	movabsq	$.L.str.21, %rdi
	movq	-40(%rbp), %rcx
	movl	-64(%rbp), %esi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%esi, -160(%rbp)        # 4-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$1, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-160(%rbp), %edx        # 4-byte Reload
	movl	%esi, -172(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token
.LBB0_46:                               # %if.end.62
	movabsq	$g_object_unref, %rsi
	movq	-56(%rbp), %rdi
	callq	g_slist_free_full
	movq	$0, -56(%rbp)
.LBB0_47:                               # %if.end.63
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movq	-40(%rbp), %rdi
	callq	gimp_scanner_destroy
	movq	-56(%rbp), %rdi
	callq	g_slist_reverse
	movq	%rax, -8(%rbp)
.LBB0_48:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	plug_in_rc_parse, .Lfunc_end0-plug_in_rc_parse
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_def_deserialize,@function
plug_in_def_deserialize:                # @plug_in_def_deserialize
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
	subq	$112, %rsp
	leaq	-56(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB1_27
.LBB1_2:                                # %if.end
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	gimp_plug_in_def_new
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	leaq	-68(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB1_27
.LBB1_4:                                # %if.end.6
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movl	$40, -72(%rbp)
.LBB1_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-72(%rbp), %eax
	jne	.LBB1_22
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -72(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_28
.LBB1_28:                               # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_29
.LBB1_29:                               # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_20
.LBB1_7:                                # %sw.bb
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$265, -72(%rbp)         # imm = 0x109
	jmp	.LBB1_21
.LBB1_8:                                # %sw.bb.11
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	addl	$-3, %ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	ja	.LBB1_17
# BB#30:                                # %sw.bb.11
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_9:                                # %sw.bb.13
                                        #   in Loop: Header=BB1_5 Depth=1
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdx
	callq	plug_in_procedure_deserialize
	movl	%eax, -72(%rbp)
	cmpl	$40, -72(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_plug_in_def_add_procedure
.LBB1_11:                               # %if.end.18
                                        #   in Loop: Header=BB1_5 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then.20
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB1_13:                               # %if.end.21
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_18
.LBB1_14:                               # %sw.bb.22
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	plug_in_locale_def_deserialize
	movl	%eax, -72(%rbp)
	jmp	.LBB1_18
.LBB1_15:                               # %sw.bb.24
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	plug_in_help_def_deserialize
	movl	%eax, -72(%rbp)
	jmp	.LBB1_18
.LBB1_16:                               # %sw.bb.26
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	plug_in_has_init_deserialize
	movl	%eax, -72(%rbp)
	jmp	.LBB1_18
.LBB1_17:                               # %sw.default
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_18
.LBB1_18:                               # %sw.epilog
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_21
.LBB1_19:                               # %sw.bb.28
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$40, -72(%rbp)
	jmp	.LBB1_21
.LBB1_20:                               # %sw.default.29
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               # %sw.epilog.30
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_5
.LBB1_22:                               # %while.end
	cmpl	$40, -72(%rbp)
	jne	.LBB1_26
# BB#23:                                # %if.then.33
	movl	$41, -72(%rbp)
	movq	-24(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	je	.LBB1_25
# BB#24:                                # %if.then.36
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$40, -4(%rbp)
	jmp	.LBB1_27
.LBB1_25:                               # %if.end.38
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.39
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	-72(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB1_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	plug_in_def_deserialize, .Lfunc_end1-plug_in_def_deserialize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_9
	.quad	.LBB1_14
	.quad	.LBB1_15
	.quad	.LBB1_16

	.text
	.globl	plug_in_rc_write
	.align	16, 0x90
	.type	plug_in_rc_write,@function
plug_in_rc_write:                       # @plug_in_rc_write
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
	subq	$240, %rsp
	xorl	%eax, %eax
	movabsq	$.L.str.22, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	gimp_config_writer_new_file
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_57
.LBB2_2:                                # %if.end
	callq	gimp_icon_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movabsq	$.L.str.4, %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movabsq	$.L.str.23, %rsi
	movl	$20, %edx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_38 Depth 3
	cmpq	$0, -56(%rbp)
	je	.LBB2_56
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB2_54
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	g_filename_to_utf8
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_55
.LBB2_7:                                # %if.end.9
                                        #   in Loop: Header=BB2_3 Depth=1
	movabsq	$.L.str.5, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_config_writer_string
	movabsq	$.L.str.24, %rsi
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -72(%rbp)
.LBB2_8:                                # %for.cond.11
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_38 Depth 3
	cmpq	$0, -72(%rbp)
	je	.LBB2_43
# BB#9:                                 # %for.body.13
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$0, 216(%rax)
	je	.LBB2_11
# BB#10:                                # %if.then.18
                                        #   in Loop: Header=BB2_8 Depth=2
	jmp	.LBB2_42
.LBB2_11:                               # %if.end.19
                                        #   in Loop: Header=BB2_8 Depth=2
	movabsq	$.L.str.6, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movabsq	$.L.str.25, %rsi
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-96(%rbp), %rax
	movl	32(%rax), %ecx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	48(%rdx), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	56(%rdx), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	64(%rdx), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	72(%rdx), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rdx
	movq	80(%rdx), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	152(%rdx), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	callq	g_list_length
	movabsq	$.L.str.23, %rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-88(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rsi, -112(%rbp)
.LBB2_12:                               # %for.cond.22
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -112(%rbp)
	je	.LBB2_15
# BB#13:                                # %for.body.24
                                        #   in Loop: Header=BB2_12 Depth=3
	movabsq	$.L.str.11, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB2_12 Depth=3
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB2_12
.LBB2_15:                               # %for.end
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-40(%rbp), %rdi
	movl	$.L.str.12, %eax
	movl	%eax, %esi
	callq	gimp_config_writer_open
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	176(%rsi), %esi
	callq	g_enum_get_value
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rdi
	movq	16(%rax), %rsi
	callq	gimp_config_writer_identifier
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	180(%rax), %edx
	movl	$.L.str.23, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	movb	%r8b, %al
	callq	gimp_config_writer_printf
	movq	-88(%rbp), %rsi
	movl	176(%rsi), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	je	.LBB2_16
	jmp	.LBB2_58
.LBB2_58:                               # %for.end
                                        #   in Loop: Header=BB2_8 Depth=2
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB2_17
	jmp	.LBB2_59
.LBB2_59:                               # %for.end
                                        #   in Loop: Header=BB2_8 Depth=2
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jne	.LBB2_18
	jmp	.LBB2_16
.LBB2_16:                               # %sw.bb
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gimp_config_writer_string
	jmp	.LBB2_18
.LBB2_17:                               # %sw.bb.28
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	180(%rax), %esi
	movq	-88(%rbp), %rax
	movq	184(%rax), %rdx
	callq	gimp_config_writer_data
.LBB2_18:                               # %sw.epilog
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-88(%rbp), %rdi
	cmpl	$0, 220(%rdi)
	je	.LBB2_33
# BB#19:                                # %if.then.32
                                        #   in Loop: Header=BB2_8 Depth=2
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %rcx
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rdx
	cmpq	$0, 192(%rdx)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	gimp_config_writer_open
	movq	-88(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB2_22
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-88(%rbp), %rax
	movq	224(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_22
# BB#21:                                # %if.then.37
                                        #   in Loop: Header=BB2_8 Depth=2
	movabsq	$.L.str.15, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	224(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_22:                               # %if.end.39
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-88(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB2_25
# BB#23:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-88(%rbp), %rax
	movq	232(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_25
# BB#24:                                # %if.then.45
                                        #   in Loop: Header=BB2_8 Depth=2
	movabsq	$.L.str.16, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	232(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_25:                               # %if.end.47
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-88(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB2_28
# BB#26:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-88(%rbp), %rax
	movq	240(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_28
# BB#27:                                # %if.then.53
                                        #   in Loop: Header=BB2_8 Depth=2
	movabsq	$.L.str.17, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	240(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_28:                               # %if.end.55
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-88(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB2_30
# BB#29:                                # %if.then.57
                                        #   in Loop: Header=BB2_8 Depth=2
	movabsq	$.L.str.18, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	248(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_30:                               # %if.end.59
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-88(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB2_32
# BB#31:                                # %if.then.61
                                        #   in Loop: Header=BB2_8 Depth=2
	movabsq	$.L.str.19, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	280(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_32:                               # %if.end.63
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_33:                               # %if.end.64
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	192(%rax), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movabsq	$.L.str.26, %rsi
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	96(%rax), %edx
	movq	-96(%rbp), %rax
	movl	112(%rax), %ecx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movl	$0, -116(%rbp)
.LBB2_34:                               # %for.cond.66
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB2_37
# BB#35:                                # %for.body.69
                                        #   in Loop: Header=BB2_34 Depth=3
	movabsq	$.L.str.10, %rsi
	movslq	-116(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movl	$76, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	24(%rax), %rdi
	callq	gimp_pdb_compat_arg_type_from_gtype
	movabsq	$.L.str.23, %rsi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_param_spec_get_name
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_blurb
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
# BB#36:                                # %for.inc.74
                                        #   in Loop: Header=BB2_34 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB2_34
.LBB2_37:                               # %for.end.75
                                        #   in Loop: Header=BB2_8 Depth=2
	movl	$0, -116(%rbp)
.LBB2_38:                               # %for.cond.76
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	112(%rcx), %eax
	jge	.LBB2_41
# BB#39:                                # %for.body.80
                                        #   in Loop: Header=BB2_38 Depth=3
	movabsq	$.L.str.10, %rsi
	movslq	-116(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movl	$76, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	24(%rax), %rdi
	callq	gimp_pdb_compat_arg_type_from_gtype
	movabsq	$.L.str.23, %rsi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-40(%rbp), %rdi
	movq	-136(%rbp), %rcx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_param_spec_get_name
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_param_spec_get_blurb
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
# BB#40:                                # %for.inc.89
                                        #   in Loop: Header=BB2_38 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB2_38
.LBB2_41:                               # %for.end.91
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_42:                               # %for.inc.92
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB2_8
.LBB2_43:                               # %for.end.94
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB2_47
# BB#44:                                # %if.then.96
                                        #   in Loop: Header=BB2_3 Depth=1
	movabsq	$.L.str.7, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	48(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-64(%rbp), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB2_46
# BB#45:                                # %if.then.99
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_config_writer_string
.LBB2_46:                               # %if.end.101
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_47:                               # %if.end.102
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB2_51
# BB#48:                                # %if.then.104
                                        #   in Loop: Header=BB2_3 Depth=1
	movabsq	$.L.str.8, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	64(%rsi), %rsi
	callq	gimp_config_writer_string
	movq	-64(%rbp), %rsi
	cmpq	$0, 72(%rsi)
	je	.LBB2_50
# BB#49:                                # %if.then.107
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	72(%rax), %rsi
	callq	gimp_config_writer_string
.LBB2_50:                               # %if.end.109
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_51:                               # %if.end.110
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$0, 92(%rax)
	je	.LBB2_53
# BB#52:                                # %if.then.112
                                        #   in Loop: Header=BB2_3 Depth=1
	movabsq	$.L.str.9, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_53:                               # %if.end.113
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_54:                               # %if.end.114
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_55
.LBB2_55:                               # %for.inc.115
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_3
.LBB2_56:                               # %for.end.117
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movabsq	$.L.str.27, %rsi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_config_writer_finish
	movl	%eax, -4(%rbp)
.LBB2_57:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	plug_in_rc_write, .Lfunc_end2-plug_in_rc_write
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_procedure_deserialize,@function
plug_in_procedure_deserialize:          # @plug_in_procedure_deserialize
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
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_49
.LBB3_2:                                # %if.end
	leaq	-68(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB3_49
.LBB3_4:                                # %if.end.4
	movl	-68(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	gimp_plug_in_procedure_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_canonicalize_identifier
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_take_name
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_6
# BB#5:                                 # %if.then.13
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_49
.LBB3_6:                                # %if.end.14
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_8
# BB#7:                                 # %if.then.17
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_49
.LBB3_8:                                # %if.end.18
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_10
# BB#9:                                 # %if.then.21
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_49
.LBB3_10:                               # %if.end.22
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_12
# BB#11:                                # %if.then.25
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_49
.LBB3_12:                               # %if.end.26
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_14
# BB#13:                                # %if.then.29
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_49
.LBB3_14:                               # %if.end.30
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$152, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_16
# BB#15:                                # %if.then.33
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_49
.LBB3_16:                               # %if.end.34
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_18
# BB#17:                                # %if.then.37
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB3_49
.LBB3_18:                               # %if.end.38
	movl	$0, -84(%rbp)
.LBB3_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB3_24
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	plug_in_menu_path_deserialize
	movl	%eax, -52(%rbp)
	cmpl	$40, -52(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.41
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_49
.LBB3_22:                               # %if.end.42
                                        #   in Loop: Header=BB3_19 Depth=1
	jmp	.LBB3_23
.LBB3_23:                               # %for.inc
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_19
.LBB3_24:                               # %for.end
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	plug_in_icon_deserialize
	movl	%eax, -52(%rbp)
	cmpl	$40, -52(%rbp)
	je	.LBB3_26
# BB#25:                                # %if.then.45
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_49
.LBB3_26:                               # %if.end.46
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	plug_in_file_proc_deserialize
	movl	%eax, -52(%rbp)
	cmpl	$40, -52(%rbp)
	je	.LBB3_28
# BB#27:                                # %if.then.49
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_49
.LBB3_28:                               # %if.end.50
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_30
# BB#29:                                # %if.then.53
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_49
.LBB3_30:                               # %if.end.54
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_plug_in_procedure_set_image_types
	movq	-64(%rbp), %rdi
	callq	g_free
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_32
# BB#31:                                # %if.then.57
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB3_49
.LBB3_32:                               # %if.end.58
	leaq	-76(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_34
# BB#33:                                # %if.then.61
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB3_49
.LBB3_34:                               # %if.end.62
	movl	$0, -84(%rbp)
.LBB3_35:                               # %for.cond.63
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB3_40
# BB#36:                                # %for.body.65
                                        #   in Loop: Header=BB3_35 Depth=1
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	plug_in_proc_arg_deserialize
	movl	%eax, -52(%rbp)
	cmpl	$40, -52(%rbp)
	je	.LBB3_38
# BB#37:                                # %if.then.68
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_49
.LBB3_38:                               # %if.end.69
                                        #   in Loop: Header=BB3_35 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %for.inc.70
                                        #   in Loop: Header=BB3_35 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_35
.LBB3_40:                               # %for.end.72
	movl	$0, -84(%rbp)
.LBB3_41:                               # %for.cond.73
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB3_46
# BB#42:                                # %for.body.75
                                        #   in Loop: Header=BB3_41 Depth=1
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	plug_in_proc_arg_deserialize
	movl	%eax, -52(%rbp)
	cmpl	$40, -52(%rbp)
	je	.LBB3_44
# BB#43:                                # %if.then.78
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_49
.LBB3_44:                               # %if.end.79
                                        #   in Loop: Header=BB3_41 Depth=1
	jmp	.LBB3_45
.LBB3_45:                               # %for.inc.80
                                        #   in Loop: Header=BB3_41 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_41
.LBB3_46:                               # %for.end.82
	movl	$41, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB3_48
# BB#47:                                # %if.then.85
	movl	$41, -4(%rbp)
	jmp	.LBB3_49
.LBB3_48:                               # %if.end.86
	movl	$40, -4(%rbp)
.LBB3_49:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plug_in_procedure_deserialize, .Lfunc_end3-plug_in_procedure_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_locale_def_deserialize,@function
plug_in_locale_def_deserialize:         # @plug_in_locale_def_deserialize
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
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB4_7
.LBB4_2:                                # %if.end
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	movq	$0, -40(%rbp)
.LBB4_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_plug_in_def_set_locale_domain
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$41, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB4_6
# BB#5:                                 # %if.then.7
	movl	$41, -4(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.end.8
	movl	$40, -4(%rbp)
.LBB4_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	plug_in_locale_def_deserialize, .Lfunc_end4-plug_in_locale_def_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_help_def_deserialize,@function
plug_in_help_def_deserialize:           # @plug_in_help_def_deserialize
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
	leaq	-32(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB5_7
.LBB5_2:                                # %if.end
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	movq	$0, -40(%rbp)
.LBB5_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_plug_in_def_set_help_domain
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$41, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.7
	movl	$41, -4(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.end.8
	movl	$40, -4(%rbp)
.LBB5_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	plug_in_help_def_deserialize, .Lfunc_end5-plug_in_help_def_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_has_init_deserialize,@function
plug_in_has_init_deserialize:           # @plug_in_has_init_deserialize
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
	movl	$1, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_plug_in_def_set_has_init
	movl	$41, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$41, -4(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movl	$40, -4(%rbp)
.LBB6_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	plug_in_has_init_deserialize, .Lfunc_end6-plug_in_has_init_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_menu_path_deserialize,@function
plug_in_menu_path_deserialize:          # @plug_in_menu_path_deserialize
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
	movl	$40, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$40, -4(%rbp)
	jmp	.LBB7_10
.LBB7_2:                                # %if.end
	movl	$265, %esi              # imm = 0x109
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	cmpl	$8, %ecx
	je	.LBB7_5
.LBB7_4:                                # %if.then.4
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB7_10
.LBB7_5:                                # %if.end.5
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB7_7
# BB#6:                                 # %if.then.8
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB7_10
.LBB7_7:                                # %if.end.9
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_list_append
	movl	$41, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, 160(%rdi)
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB7_9
# BB#8:                                 # %if.then.14
	movl	$41, -4(%rbp)
	jmp	.LBB7_10
.LBB7_9:                                # %if.end.15
	movl	$40, -4(%rbp)
.LBB7_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	plug_in_menu_path_deserialize, .Lfunc_end7-plug_in_menu_path_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_icon_deserialize,@function
plug_in_icon_deserialize:               # @plug_in_icon_deserialize
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
	subq	$128, %rsp
	movl	$40, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$40, -4(%rbp)
	jmp	.LBB8_29
.LBB8_2:                                # %if.end
	movl	$265, %esi              # imm = 0x109
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	cmpl	$9, %ecx
	je	.LBB8_5
.LBB8_4:                                # %if.then.4
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB8_29
.LBB8_5:                                # %if.end.5
	callq	gimp_icon_type_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	movl	%eax, %ecx
	subl	$261, %eax              # imm = 0x105
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB8_11
	jmp	.LBB8_30
.LBB8_30:                               # %if.end.5
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$266, %eax              # imm = 0x10A
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_14
	jmp	.LBB8_6
.LBB8_6:                                # %sw.bb
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	$48, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	g_type_check_class_cast
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_enum_get_value_by_nick
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_8
# BB#7:                                 # %if.then.14
	movl	$48, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_enum_get_value_by_name
	movq	%rax, -40(%rbp)
.LBB8_8:                                # %if.end.19
	cmpq	$0, -40(%rbp)
	jne	.LBB8_10
# BB#9:                                 # %if.then.21
	movabsq	$.L.str.28, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB8_29
.LBB8_10:                               # %if.end.25
	jmp	.LBB8_15
.LBB8_11:                               # %sw.bb.26
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_enum_get_value
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_13
# BB#12:                                # %if.then.32
	movabsq	$.L.str.29, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB8_29
.LBB8_13:                               # %if.end.36
	jmp	.LBB8_15
.LBB8_14:                               # %sw.default
	movl	$266, -4(%rbp)          # imm = 0x10A
	jmp	.LBB8_29
.LBB8_15:                               # %sw.epilog
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB8_17
# BB#16:                                # %if.then.40
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB8_29
.LBB8_17:                               # %if.end.41
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB8_18
	jmp	.LBB8_31
.LBB8_31:                               # %if.end.41
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB8_21
	jmp	.LBB8_32
.LBB8_32:                               # %if.end.41
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB8_26
	jmp	.LBB8_18
.LBB8_18:                               # %sw.bb.42
	leaq	-56(%rbp), %rsi
	movl	$-1, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string_no_validate
	cmpl	$0, %eax
	jne	.LBB8_20
# BB#19:                                # %if.then.45
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB8_29
.LBB8_20:                               # %if.end.46
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_26
.LBB8_21:                               # %sw.bb.47
	cmpl	$0, -48(%rbp)
	jge	.LBB8_23
# BB#22:                                # %if.then.50
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB8_29
.LBB8_23:                               # %if.end.51
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_scanner_parse_data
	cmpl	$0, %eax
	jne	.LBB8_25
# BB#24:                                # %if.then.54
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB8_29
.LBB8_25:                               # %if.end.55
	jmp	.LBB8_26
.LBB8_26:                               # %sw.epilog.56
	movl	$41, %esi
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 180(%rcx)
	movq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 184(%rdx)
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB8_28
# BB#27:                                # %if.then.62
	movl	$41, -4(%rbp)
	jmp	.LBB8_29
.LBB8_28:                               # %if.end.63
	movl	$40, -4(%rbp)
.LBB8_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	plug_in_icon_deserialize, .Lfunc_end8-plug_in_icon_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	plug_in_file_proc_deserialize,@function
plug_in_file_proc_deserialize:          # @plug_in_file_proc_deserialize
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
	movl	$40, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$40, -4(%rbp)
	jmp	.LBB9_33
.LBB9_2:                                # %if.end
	movl	$265, %esi              # imm = 0x109
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then.3
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB9_33
.LBB9_4:                                # %if.end.4
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$10, -32(%rbp)
	je	.LBB9_7
# BB#5:                                 # %land.lhs.true
	cmpl	$11, -32(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.9
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB9_33
.LBB9_7:                                # %if.end.10
	movq	-24(%rbp), %rax
	movl	$1, 220(%rax)
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	g_scanner_set_scope
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB9_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	$40, %eax
	jne	.LBB9_30
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$40, -28(%rbp)
	je	.LBB9_11
# BB#10:                                # %if.then.18
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB9_33
.LBB9_11:                               # %if.end.19
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	$265, %esi              # imm = 0x109
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB9_13
# BB#12:                                # %if.then.22
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB9_33
.LBB9_13:                               # %if.end.23
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$14, -32(%rbp)
	jne	.LBB9_17
# BB#14:                                # %if.then.29
                                        #   in Loop: Header=BB9_8 Depth=1
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string_no_validate
	cmpl	$0, %eax
	jne	.LBB9_16
# BB#15:                                # %if.then.32
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB9_33
.LBB9_16:                               # %if.end.33
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_20
.LBB9_17:                               # %if.else
                                        #   in Loop: Header=BB9_8 Depth=1
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB9_19
# BB#18:                                # %if.then.36
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB9_33
.LBB9_19:                               # %if.end.37
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.38
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	-32(%rbp), %eax
	addl	$-12, %eax
	movl	%eax, %ecx
	subl	$4, %eax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB9_26
# BB#34:                                # %if.end.38
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_21:                               # %sw.bb
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 224(%rdi)
	jmp	.LBB9_27
.LBB9_22:                               # %sw.bb.40
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 232(%rdi)
	jmp	.LBB9_27
.LBB9_23:                               # %sw.bb.42
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-24(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 240(%rdi)
	jmp	.LBB9_27
.LBB9_24:                               # %sw.bb.44
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_plug_in_procedure_set_mime_type
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB9_27
.LBB9_25:                               # %sw.bb.45
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_plug_in_procedure_set_thumb_loader
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB9_27
.LBB9_26:                               # %sw.default
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB9_33
.LBB9_27:                               # %sw.epilog
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	$41, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB9_29
# BB#28:                                # %if.then.48
	movl	$41, -4(%rbp)
	jmp	.LBB9_33
.LBB9_29:                               # %if.end.49
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_8
.LBB9_30:                               # %while.end
	movl	$41, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB9_32
# BB#31:                                # %if.then.52
	movl	$41, -4(%rbp)
	jmp	.LBB9_33
.LBB9_32:                               # %if.end.53
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	callq	g_scanner_set_scope
	movl	$40, -4(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB9_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	plug_in_file_proc_deserialize, .Lfunc_end9-plug_in_file_proc_deserialize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_21
	.quad	.LBB9_22
	.quad	.LBB9_23
	.quad	.LBB9_24
	.quad	.LBB9_25

	.text
	.align	16, 0x90
	.type	plug_in_proc_arg_deserialize,@function
plug_in_proc_arg_deserialize:           # @plug_in_proc_arg_deserialize
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
	subq	$64, %rsp
	movl	$40, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$40, -32(%rbp)
	jmp	.LBB10_17
.LBB10_2:                               # %if.end
	movl	$265, %esi              # imm = 0x109
	movq	-8(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	je	.LBB10_5
.LBB10_4:                               # %if.then.4
	movl	$265, -32(%rbp)         # imm = 0x109
	jmp	.LBB10_17
.LBB10_5:                               # %if.end.5
	leaq	-36(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB10_7
# BB#6:                                 # %if.then.8
	movl	$261, -32(%rbp)         # imm = 0x105
	jmp	.LBB10_17
.LBB10_7:                               # %if.end.9
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB10_9
# BB#8:                                 # %if.then.12
	movl	$264, -32(%rbp)         # imm = 0x108
	jmp	.LBB10_17
.LBB10_9:                               # %if.end.13
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB10_11
# BB#10:                                # %if.then.16
	movl	$264, -32(%rbp)         # imm = 0x108
	jmp	.LBB10_17
.LBB10_11:                              # %if.end.17
	movl	$41, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_scanner_parse_token
	cmpl	$0, %eax
	jne	.LBB10_13
# BB#12:                                # %if.then.20
	movl	$41, -32(%rbp)
	jmp	.LBB10_17
.LBB10_13:                              # %if.end.21
	movl	$40, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	gimp_pdb_compat_param_spec
	movq	%rax, -64(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.24
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_procedure_add_return_value
	jmp	.LBB10_16
.LBB10_15:                              # %if.else
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_procedure_add_argument
.LBB10_16:                              # %if.end.25
	jmp	.LBB10_17
.LBB10_17:                              # %error
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	plug_in_proc_arg_deserialize, .Lfunc_end10-plug_in_proc_arg_deserialize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.plug_in_rc_parse,@object # @__func__.plug_in_rc_parse
.L__func__.plug_in_rc_parse:
	.asciz	"plug_in_rc_parse"
	.size	.L__func__.plug_in_rc_parse, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"protocol-version"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"plug-in-def"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"proc-def"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"locale-def"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"help-def"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"has-init"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"proc-arg"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"menu-path"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"icon"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"load-proc"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"save-proc"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"extension"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"prefix"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"magic"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"mime-type"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"thumb-loader"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Skipping '%s': wrong GIMP protocol version."
	.size	.L.str.20, 44

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"fatal parse error"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GIMP pluginrc\n\nThis file can safely be removed and will be automatically regenerated by querying the installed plugins."
	.size	.L.str.22, 120

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%d"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%ld"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\"%s\" %d"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%d %d"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"end of pluginrc"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"invalid value '%s' for icon type"
	.size	.L.str.28, 33

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"invalid value '%ld' for icon type"
	.size	.L.str.29, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
