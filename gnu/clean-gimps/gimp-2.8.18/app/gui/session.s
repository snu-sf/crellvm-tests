	.text
	.file	"session.bc"
	.globl	session_init
	.align	16, 0x90
	.type	session_init,@function
session_init:                           # @session_init
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.session_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_73
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	session_filename
	leaq	-40(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_new_file
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_15
# BB#13:                                # %land.lhs.true.14
	movq	-40(%rbp), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB0_15
# BB#14:                                # %if.then.16
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-16(%rbp), %rdi
	callq	g_free
	callq	gimp_sysconf_directory
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_new_file
	movq	%rax, -24(%rbp)
.LBB0_15:                               # %if.end.20
	cmpq	$0, -24(%rbp)
	jne	.LBB0_17
# BB#16:                                # %if.then.22
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-16(%rbp), %rdi
	callq	g_free
	jmp	.LBB0_73
.LBB0_17:                               # %if.end.23
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB0_19
# BB#18:                                # %if.then.25
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.3, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB0_19:                               # %if.end.27
	xorl	%esi, %esi
	movabsq	$.L.str.4, %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	xorl	%esi, %esi
	movabsq	$.L.str.5, %rdx
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	xorl	%esi, %esi
	movabsq	$.L.str.6, %rdx
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	xorl	%esi, %esi
	movabsq	$.L.str.7, %rdx
	movl	$4, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$40, -28(%rbp)
.LBB0_20:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-28(%rbp), %eax
	jne	.LBB0_67
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB0_22
	jmp	.LBB0_74
.LBB0_74:                               # %while.body
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB0_64
	jmp	.LBB0_75
.LBB0_75:                               # %while.body
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB0_23
	jmp	.LBB0_65
.LBB0_22:                               # %sw.bb
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$265, -28(%rbp)         # imm = 0x109
	jmp	.LBB0_66
.LBB0_23:                               # %sw.bb.31
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	cmpq	%rcx, 48(%rdx)
	jne	.LBB0_48
# BB#24:                                # %if.then.33
                                        #   in Loop: Header=BB0_20 Depth=1
	leaq	-88(%rbp), %rsi
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	$264, -28(%rbp)         # imm = 0x108
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB0_26
# BB#25:                                # %if.then.42
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_66
.LBB0_26:                               # %if.end.43
                                        #   in Loop: Header=BB0_20 Depth=1
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -72(%rbp)
	callq	gimp_session_info_new
	leaq	-96(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpq	$0, -96(%rbp)
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB0_31
# BB#27:                                # %if.then.48
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-96(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_29
# BB#28:                                # %if.then.51
                                        #   in Loop: Header=BB0_20 Depth=1
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.10, %rcx
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movl	$.L.str.9, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	cmoveq	%rdx, %rcx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	callq	gimp_dialog_factory_find_entry
	movq	%rax, -104(%rbp)
	jmp	.LBB0_30
.LBB0_29:                               # %if.else.55
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_dialog_factory_find_entry
	movq	%rax, -104(%rbp)
.LBB0_30:                               # %if.end.57
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %if.end.58
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	cmpq	$0, -104(%rbp)
	je	.LBB0_33
# BB#32:                                # %if.then.60
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_session_info_set_factory_entry
.LBB0_33:                               # %if.end.61
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize
	cmpl	$0, %eax
	je	.LBB0_46
# BB#34:                                # %if.then.66
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-80(%rbp), %rdi
	callq	gimp_session_info_get_factory_entry
	cmpq	$0, %rax
	je	.LBB0_40
# BB#35:                                # %if.then.69
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               # %do.body.70
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB0_38
# BB#37:                                # %if.then.72
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$16, %edi
	movabsq	$.L__func__.session_init, %rsi
	movl	$205, %edx
	movabsq	$.L.str.12, %rcx
	movq	-80(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB0_38:                               # %if.end.73
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_39
.LBB0_39:                               # %do.end.74
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_dialog_factory_add_session_info
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.75
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_41
.LBB0_41:                               # %do.body.76
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	gimp_log_flags, %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB0_43
# BB#42:                                # %if.then.79
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$16, %edi
	movabsq	$.L__func__.session_init, %rsi
	movl	$213, %edx
	movabsq	$.L.str.13, %rcx
	movq	-80(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB0_43:                               # %if.end.80
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_44
.LBB0_44:                               # %do.end.81
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.82
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB0_47
.LBB0_46:                               # %if.else.83
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$40, -28(%rbp)
	jmp	.LBB0_68
.LBB0_47:                               # %if.end.84
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_63
.LBB0_48:                               # %if.else.85
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	cmpq	%rcx, 48(%rdx)
	jne	.LBB0_52
# BB#49:                                # %if.then.89
                                        #   in Loop: Header=BB0_20 Depth=1
	leaq	-108(%rbp), %rsi
	movl	$266, -28(%rbp)         # imm = 0x10A
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_boolean
	cmpl	$0, %eax
	jne	.LBB0_51
# BB#50:                                # %if.then.93
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_66
.LBB0_51:                               # %if.end.94
                                        #   in Loop: Header=BB0_20 Depth=1
	movabsq	$.L.str.5, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	-108(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB0_62
.LBB0_52:                               # %if.else.95
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	cmpq	%rcx, 48(%rdx)
	jne	.LBB0_56
# BB#53:                                # %if.then.99
                                        #   in Loop: Header=BB0_20 Depth=1
	leaq	-112(%rbp), %rsi
	movl	$266, -28(%rbp)         # imm = 0x10A
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_boolean
	cmpl	$0, %eax
	jne	.LBB0_55
# BB#54:                                # %if.then.103
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_66
.LBB0_55:                               # %if.end.104
                                        #   in Loop: Header=BB0_20 Depth=1
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	-112(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB0_61
.LBB0_56:                               # %if.else.106
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$4, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	cmpq	%rcx, 48(%rdx)
	jne	.LBB0_60
# BB#57:                                # %if.then.110
                                        #   in Loop: Header=BB0_20 Depth=1
	leaq	-116(%rbp), %rsi
	movl	$261, -28(%rbp)         # imm = 0x105
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB0_59
# BB#58:                                # %if.then.114
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_66
.LBB0_59:                               # %if.end.115
                                        #   in Loop: Header=BB0_20 Depth=1
	movabsq	$.L.str.7, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	-116(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB0_60:                               # %if.end.117
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_61
.LBB0_61:                               # %if.end.118
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_62
.LBB0_62:                               # %if.end.119
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_63
.LBB0_63:                               # %if.end.120
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$41, -28(%rbp)
	jmp	.LBB0_66
.LBB0_64:                               # %sw.bb.121
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$40, -28(%rbp)
	jmp	.LBB0_66
.LBB0_65:                               # %sw.default
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_66
.LBB0_66:                               # %sw.epilog
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_20
.LBB0_67:                               # %while.end
	jmp	.LBB0_68
.LBB0_68:                               # %error.122
	cmpl	$40, -28(%rbp)
	je	.LBB0_70
# BB#69:                                # %if.then.124
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movabsq	$.L.str.14, %rdi
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %esi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%esi, -176(%rbp)        # 4-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$1, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-176(%rbp), %edx        # 4-byte Reload
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token
.LBB0_70:                               # %if.end.127
	cmpq	$0, -40(%rbp)
	je	.LBB0_72
# BB#71:                                # %if.then.129
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movabsq	$.L.str.2, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_config_file_backup_on_error
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB0_72:                               # %if.end.131
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_destroy
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	dialogs_load_recent_docks
.LBB0_73:                               # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	session_init, .Lfunc_end0-session_init
	.cfi_endproc

	.align	16, 0x90
	.type	session_filename,@function
session_filename:                       # @session_filename
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
	subq	$32, %rsp
	movabsq	$.L.str.23, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	g_getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rax
	movq	%rax, -16(%rbp)
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB1_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.24, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB1_4:                                # %if.end.6
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	session_filename, .Lfunc_end1-session_filename
	.cfi_endproc

	.globl	session_exit
	.align	16, 0x90
	.type	session_exit,@function
session_exit:                           # @session_exit
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.session_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_12
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	session_exit, .Lfunc_end2-session_exit
	.cfi_endproc

	.globl	session_restore
	.align	16, 0x90
	.type	session_restore,@function
session_restore:                        # @session_restore
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.session_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_15
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, %rdi
	callq	gimp_dialog_factory_restore
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 728(%rax)
	je	.LBB3_15
# BB#13:                                # %land.lhs.true.15
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 724(%rax)
	je	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB3_15:                               # %if.end.23
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	session_restore, .Lfunc_end3-session_restore
	.cfi_endproc

	.globl	session_save
	.align	16, 0x90
	.type	session_save,@function
session_save:                           # @session_save
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
	movl	%esi, -12(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.session_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_22
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpl	$0, sessionrc_deleted
	je	.LBB4_15
# BB#13:                                # %land.lhs.true.12
	cmpl	$0, -12(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.14
	jmp	.LBB4_22
.LBB4_15:                               # %if.end.15
	movq	-8(%rbp), %rdi
	callq	session_filename
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_17
# BB#16:                                # %if.then.18
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.15, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB4_17:                               # %if.end.20
	movl	$1, %esi
	movabsq	$.L.str.16, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	callq	gimp_config_writer_new_file
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -24(%rbp)
	jne	.LBB4_19
# BB#18:                                # %if.then.23
	jmp	.LBB4_22
.LBB4_19:                               # %if.end.24
	callq	gimp_dialog_factory_get_singleton
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_save
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movabsq	$.L.str.5, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.17, %rdi
	cmpl	$0, 724(%rax)
	cmovneq	%rdi, %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gimp_config_writer_identifier
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.6, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.17, %rdi
	cmpl	$0, 728(%rax)
	cmovneq	%rdi, %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_config_writer_identifier
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.7, %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movl	732(%rax), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.20, %rsi
	leaq	-40(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_finish
	cmpl	$0, %eax
	jne	.LBB4_21
# BB#20:                                # %if.then.39
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB4_21:                               # %if.end.40
	movq	-8(%rbp), %rdi
	callq	dialogs_save_recent_docks
	movl	$0, sessionrc_deleted
.LBB4_22:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	session_save, .Lfunc_end4-session_save
	.cfi_endproc

	.globl	session_clear
	.align	16, 0x90
	.type	session_clear,@function
session_clear:                          # @session_clear
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.session_clear, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_23
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_16
.LBB5_15:                               # %if.then.14
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.session_clear, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_23
.LBB5_17:                               # %if.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.end.17
	movq	-16(%rbp), %rdi
	callq	session_filename
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_unlink
	cmpl	$0, %eax
	je	.LBB5_21
# BB#19:                                # %land.lhs.true.21
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB5_21
# BB#20:                                # %if.then.24
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.22, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -36(%rbp)
	jmp	.LBB5_22
.LBB5_21:                               # %if.else.32
	movl	$1, sessionrc_deleted
.LBB5_22:                               # %if.end.33
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	session_clear, .Lfunc_end5-session_clear
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-GUI"
	.size	.L.str, 9

	.type	.L__func__.session_init,@object # @__func__.session_init
.L__func__.session_init:
	.asciz	"session_init"
	.size	.L__func__.session_init, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sessionrc"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"session-info"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"hide-docks"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"single-window-mode"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"last-tip-shown"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dock"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"toolbox"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-dock-window"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"successfully parsed and added session info %p"
	.size	.L.str.12, 46

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"failed to parse session info %p, not adding"
	.size	.L.str.13, 44

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"fatal parse error"
	.size	.L.str.14, 18

	.type	.L__func__.session_exit,@object # @__func__.session_exit
.L__func__.session_exit:
	.asciz	"session_exit"
	.size	.L__func__.session_exit, 13

	.type	.L__func__.session_restore,@object # @__func__.session_restore
.L__func__.session_restore:
	.asciz	"session_restore"
	.size	.L__func__.session_restore, 16

	.type	.L__func__.session_save,@object # @__func__.session_save
.L__func__.session_save:
	.asciz	"session_save"
	.size	.L__func__.session_save, 13

	.type	sessionrc_deleted,@object # @sessionrc_deleted
	.local	sessionrc_deleted
	.comm	sessionrc_deleted,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Writing '%s'\n"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP sessionrc\n\nThis file takes session-specific info (that is info, you want to keep between two GIMP sessions).  You are not supposed to edit it manually, but of course you can do.  The sessionrc will be entirely rewritten every time you quit GIMP.  If this file isn't found, defaults are used."
	.size	.L.str.16, 297

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"yes"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"no"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%d"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"end of sessionrc"
	.size	.L.str.20, 17

	.type	.L__func__.session_clear,@object # @__func__.session_clear
.L__func__.session_clear:
	.asciz	"session_clear"
	.size	.L__func__.session_clear, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.21, 32

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Deleting \"%s\" failed: %s"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GIMP_TESTING_SESSIONRC_NAME"
	.size	.L.str.23, 28

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"."
	.size	.L.str.24, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
