	.text
	.file	"compose.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movabsq	$.L.str.27, %rdi
	callq	g_string_new
	movl	$34, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	-48(%rbp), %rdi
	movq	compose_dsc, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_string_append
	movl	$34, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movl	$1, -52(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	$11, %rax
	jae	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.28, %rsi
	movq	-48(%rbp), %rdi
	callq	g_string_append
	movl	$34, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movabsq	$compose_dsc, %rdi
	movq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rdi
	movq	(%rdi), %rsi
	movq	%rcx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_string_append
	movl	$34, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.34, %r9
	movabsq	$.L.str.35, %rax
	movabsq	$.L.str.36, %r10
	movl	$1, %r11d
	movl	$7, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	-48(%rbp), %r12
	movq	(%r12), %r12
	movq	%r12, query.args+160
	movq	-48(%rbp), %r12
	movq	(%r12), %r12
	movq	%r12, query.drw_args+160
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r11d, -120(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.37, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.38, %rdi
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.41, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %r10d
	movabsq	$.L.str.36, %r14
	movl	$1, %r11d
	movl	$7, %ebx
	movabsq	$query.drw_args, %r15
	movabsq	$query.drw_return_vals, %r12
	movq	$0, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%r11d, -128(%rbp)       # 4-byte Spill
	movq	%r10, -136(%rbp)        # 8-byte Spill
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movabsq	$.L.str.45, %rcx
	movabsq	$.L.str.46, %r9
	movabsq	$.L.str.47, %r8
	movabsq	$.L.str.36, %r10
	movl	$1, %eax
	movl	$3, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.recompose_args, %r14
	xorl	%r13d, %r13d
	movl	%r13d, %r15d
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %r12        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	-160(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r15, -168(%rbp)        # 8-byte Spill
	movl	%ebx, -172(%rbp)        # 4-byte Spill
	movl	%r11d, -176(%rbp)       # 4-byte Spill
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.37, %rsi
	callq	gimp_plugin_menu_register
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	g_string_free
	movq	%rax, -192(%rbp)        # 8-byte Spill
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$248, %rsp
.Ltmp11:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$3, -52(%rbp)
	movl	$-1, -60(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.101, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.101, %rdi
	movabsq	$.L.str.102, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.101, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -128(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, run_mode
	movq	-16(%rbp), %rdi
	movl	$.L.str.38, %edx
	movl	%edx, %esi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-48(%rbp), %rcx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, (%rcx)
	movl	$21, run.values
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
	movl	$13, run.values+40
	movl	$-1, run.values+48
	movq	-16(%rbp), %rdi
	movl	$.L.str.42, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#3:                                 # %if.then
	movabsq	$.L.str.103, %rsi
	movq	-32(%rbp), %rax
	movl	48(%rax), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then.11
	movabsq	$.L.str.104, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -52(%rbp)
	jmp	.LBB1_13
.LBB1_5:                                # %if.else
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_data
	movabsq	$.L.str.105, %rsi
	movabsq	$composevals, %rdi
	movq	%rdi, %rcx
	addq	$68, %rcx
	movq	%rdi, %rdx
	addq	$32, %rdx
	movq	%rdi, %r8
	addq	$8, %r8
	movq	%rdi, %r9
	addq	$16, %r9
	movq	%rdi, %r10
	addq	$24, %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	%r10, 8(%rsp)
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_free
	movl	$0, -68(%rbp)
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -68(%rbp)
	jge	.LBB1_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	-68(%rbp), %rax
	movl	$1, composevals+4(,%rax,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_6
.LBB1_9:                                # %for.end
	cmpl	$5, -84(%rbp)
	jge	.LBB1_11
# BB#10:                                # %if.then.20
	movabsq	$.L.str.106, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -52(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.22
	movl	$1, composevals+64
	movl	$1, -64(%rbp)
.LBB1_12:                               # %if.end
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.23
	jmp	.LBB1_41
.LBB1_14:                               # %if.else.24
	movl	$0, composevals+64(%rip)
	movl	run_mode(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_55
.LBB1_55:                               # %if.else.24
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	je	.LBB1_24
	jmp	.LBB1_56
.LBB1_56:                               # %if.else.24
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB1_38
	jmp	.LBB1_39
.LBB1_15:                               # %sw.bb
	movabsq	$composevals, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	$1, -64(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.29, %ecx
	movl	%ecx, %esi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#16:                                # %if.then.29
	leaq	-100(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	48(%rax), %edi
	callq	gimp_image_get_layers
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB1_18
# BB#17:                                # %lor.lhs.false
	cmpl	$0, -100(%rbp)
	jg	.LBB1_19
.LBB1_18:                               # %if.then.38
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movl	48(%rdi), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB1_54
.LBB1_19:                               # %if.end.43
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.45
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB1_21:                               # %if.end.49
	movabsq	$composevals, %rax
	addq	$32, %rax
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	compose_dialog
	cmpl	$0, %eax
	jne	.LBB1_23
# BB#22:                                # %if.then.52
	jmp	.LBB1_54
.LBB1_23:                               # %if.end.53
	jmp	.LBB1_40
.LBB1_24:                               # %sw.bb.54
	cmpl	$7, -20(%rbp)
	jge	.LBB1_26
# BB#25:                                # %if.then.57
	movl	$1, -52(%rbp)
	jmp	.LBB1_37
.LBB1_26:                               # %if.else.58
	cmpl	$0, -64(%rbp)
	je	.LBB1_28
# BB#27:                                # %cond.true
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB1_29
.LBB1_28:                               # %cond.false
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
.LBB1_29:                               # %cond.end
	movl	-188(%rbp), %eax        # 4-byte Reload
	movabsq	$composevals, %rcx
	addq	$32, %rcx
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	%eax, composevals
	movq	-32(%rbp), %rsi
	movl	128(%rsi), %eax
	movl	%eax, composevals+8
	movq	-32(%rbp), %rsi
	movl	168(%rsi), %eax
	movl	%eax, composevals+16
	movq	-32(%rbp), %rsi
	movl	208(%rsi), %eax
	movl	%eax, composevals+24
	movq	-32(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movb	$0, composevals+63
	movl	$0, -68(%rbp)
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB1_30:                               # %for.cond.78
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -68(%rbp)
	jge	.LBB1_36
# BB#31:                                # %for.body.81
                                        #   in Loop: Header=BB1_30 Depth=1
	movslq	-68(%rbp), %rax
	cmpl	$-1, composevals(,%rax,8)
	jne	.LBB1_33
# BB#32:                                # %if.then.86
                                        #   in Loop: Header=BB1_30 Depth=1
	movslq	-68(%rbp), %rax
	movl	$0, composevals+4(,%rax,8)
	movslq	-68(%rbp), %rax
	movb	$0, composevals(,%rax,8)
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.93
                                        #   in Loop: Header=BB1_30 Depth=1
	movslq	-68(%rbp), %rax
	movl	$1, composevals+4(,%rax,8)
.LBB1_34:                               # %if.end.97
                                        #   in Loop: Header=BB1_30 Depth=1
	jmp	.LBB1_35
.LBB1_35:                               # %for.inc.98
                                        #   in Loop: Header=BB1_30 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB1_30
.LBB1_36:                               # %for.end.100
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.101
	jmp	.LBB1_40
.LBB1_38:                               # %sw.bb.102
	movabsq	$composevals, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	$1, -64(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB1_40
.LBB1_39:                               # %sw.default
	jmp	.LBB1_40
.LBB1_40:                               # %sw.epilog
	jmp	.LBB1_41
.LBB1_41:                               # %if.end.104
	cmpl	$3, -52(%rbp)
	jne	.LBB1_53
# BB#42:                                # %if.then.107
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movabsq	$composevals, %rdi
	movq	%rdi, %rcx
	addq	$32, %rcx
	movl	-64(%rbp), %edx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	compose
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jge	.LBB1_44
# BB#43:                                # %if.then.113
	movl	$0, -52(%rbp)
	jmp	.LBB1_50
.LBB1_44:                               # %if.else.114
	movl	-56(%rbp), %eax
	movl	%eax, run.values+48
	cmpl	$0, composevals+64
	je	.LBB1_46
# BB#45:                                # %if.then.116
	callq	gimp_displays_flush
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB1_49
.LBB1_46:                               # %if.else.118
	movl	-56(%rbp), %edi
	callq	gimp_image_undo_enable
	movl	-56(%rbp), %edi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_image_clean_all
	cmpl	$1, run_mode
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB1_48
# BB#47:                                # %if.then.123
	movl	-56(%rbp), %edi
	callq	gimp_display_new
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB1_48:                               # %if.end.125
	jmp	.LBB1_49
.LBB1_49:                               # %if.end.126
	jmp	.LBB1_50
.LBB1_50:                               # %if.end.127
	cmpl	$0, run_mode
	jne	.LBB1_52
# BB#51:                                # %if.then.130
	movabsq	$composevals, %rax
	movl	$72, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB1_52:                               # %if.end.132
	jmp	.LBB1_53
.LBB1_53:                               # %if.end.133
	movl	$2, %eax
	movl	$1, %ecx
	cmpl	$0, composevals+64
	cmovnel	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_54:                               # %return
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB3_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB3_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_string_append_c_inline, .Lfunc_end3-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	compose_rgb,@function
compose_rgb:                            # @compose_rgb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
	cmpl	$1, -80(%rbp)
	jne	.LBB4_9
# BB#1:                                 # %land.lhs.true
	cmpl	$1, -84(%rbp)
	jne	.LBB4_9
# BB#2:                                 # %land.lhs.true.7
	cmpl	$1, -88(%rbp)
	jne	.LBB4_9
# BB#3:                                 # %if.then
	jmp	.LBB4_4
.LBB4_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB4_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	(%rax), %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	(%rax), %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, (%rax)
	cmpl	$0, -36(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_4
.LBB4_8:                                # %while.end
	jmp	.LBB4_15
.LBB4_9:                                # %if.else
	jmp	.LBB4_10
.LBB4_10:                               # %while.cond.17
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB4_14
# BB#11:                                # %while.body.20
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%cl, (%rax)
	movl	-80(%rbp), %esi
	movq	-48(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%cl, (%rax)
	movl	-84(%rbp), %esi
	movq	-56(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%cl, (%rax)
	movl	-88(%rbp), %esi
	movq	-64(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.29
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB4_13:                               # %if.end.31
                                        #   in Loop: Header=BB4_10 Depth=1
	jmp	.LBB4_10
.LBB4_14:                               # %while.end.32
	jmp	.LBB4_15
.LBB4_15:                               # %if.end.33
	popq	%rbp
	retq
.Lfunc_end4:
	.size	compose_rgb, .Lfunc_end4-compose_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	compose_rgba,@function
compose_rgba:                           # @compose_rgba
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -88(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -92(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -96(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	movl	%edx, -100(%rbp)
	cmpl	$1, -88(%rbp)
	jne	.LBB5_8
# BB#1:                                 # %land.lhs.true
	cmpl	$1, -92(%rbp)
	jne	.LBB5_8
# BB#2:                                 # %land.lhs.true.9
	cmpl	$1, -96(%rbp)
	jne	.LBB5_8
# BB#3:                                 # %land.lhs.true.11
	cmpl	$1, -100(%rbp)
	jne	.LBB5_8
# BB#4:                                 # %if.then
	jmp	.LBB5_5
.LBB5_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	jle	.LBB5_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	%dl, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	(%rax), %dl
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	(%rax), %dl
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	(%rax), %dl
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB5_5
.LBB5_7:                                # %while.end
	jmp	.LBB5_12
.LBB5_8:                                # %if.else
	jmp	.LBB5_9
.LBB5_9:                                # %while.cond.21
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	jle	.LBB5_11
# BB#10:                                # %while.body.24
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movb	%cl, (%rax)
	movl	-88(%rbp), %esi
	movq	-48(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movb	%cl, (%rax)
	movl	-92(%rbp), %esi
	movq	-56(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movb	%cl, (%rax)
	movl	-96(%rbp), %esi
	movq	-64(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %cl
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movb	%cl, (%rax)
	movl	-100(%rbp), %esi
	movq	-72(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB5_9
.LBB5_11:                               # %while.end.35
	jmp	.LBB5_12
.LBB5_12:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	compose_rgba, .Lfunc_end5-compose_rgba
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	compose_hsv,@function
compose_hsv:                            # @compose_hsv
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB6_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI6_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	divsd	%xmm2, %xmm3
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	callq	gimp_hsv_to_rgb4
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -72(%rbp)
	movl	-80(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -56(%rbp)
	movl	-88(%rbp), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_1
.LBB6_5:                                # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	compose_hsv, .Lfunc_end6-compose_hsv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	compose_hsl,@function
compose_hsl:                            # @compose_hsl
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB7_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-120(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI7_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -112(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)
	callq	gimp_hsl_to_rgb
	leaq	-152(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	-72(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	gimp_rgb_get_uchar
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -72(%rbp)
	movl	-80(%rbp), %r8d
	movq	-48(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %r8d
	movq	-56(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movl	-88(%rbp), %r8d
	movq	-64(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_5:                                # %while.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	compose_hsl, .Lfunc_end7-compose_hsl
	.cfi_endproc

	.align	16, 0x90
	.type	compose_cmy,@function
compose_cmy:                            # @compose_cmy
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
	cmpl	$1, -80(%rbp)
	jne	.LBB8_9
# BB#1:                                 # %land.lhs.true
	cmpl	$1, -84(%rbp)
	jne	.LBB8_9
# BB#2:                                 # %land.lhs.true.7
	cmpl	$1, -88(%rbp)
	jne	.LBB8_9
# BB#3:                                 # %if.then
	jmp	.LBB8_4
.LBB8_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_8
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	$255, %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rcx), %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movb	%dil, %r8b
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%r8b, (%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rcx), %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movb	%dil, %r8b
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%r8b, (%rcx)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movb	%al, %r8b
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	%r8b, (%rcx)
	cmpl	$0, -36(%rbp)
	je	.LBB8_7
# BB#6:                                 # %if.then.22
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_4
.LBB8_8:                                # %while.end
	jmp	.LBB8_15
.LBB8_9:                                # %if.else
	jmp	.LBB8_10
.LBB8_10:                               # %while.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_14
# BB#11:                                # %while.body.28
                                        #   in Loop: Header=BB8_10 Depth=1
	movl	$255, %eax
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movb	%sil, %dil
	movq	-72(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -72(%rbp)
	movb	%dil, (%rcx)
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	movb	%sil, %dil
	movq	-72(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -72(%rbp)
	movb	%dil, (%rcx)
	movq	-64(%rbp), %rcx
	movzbl	(%rcx), %edx
	subl	%edx, %eax
	movb	%al, %dil
	movq	-72(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -72(%rbp)
	movb	%dil, (%rcx)
	movl	-80(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %r8
	addq	%r8, %rcx
	movq	%rcx, -48(%rbp)
	movl	-84(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %r8
	addq	%r8, %rcx
	movq	%rcx, -56(%rbp)
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %r8
	addq	%r8, %rcx
	movq	%rcx, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB8_13
# BB#12:                                # %if.then.46
                                        #   in Loop: Header=BB8_10 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB8_13:                               # %if.end.48
                                        #   in Loop: Header=BB8_10 Depth=1
	jmp	.LBB8_10
.LBB8_14:                               # %while.end.49
	jmp	.LBB8_15
.LBB8_15:                               # %if.end.50
	popq	%rbp
	retq
.Lfunc_end8:
	.size	compose_cmy, .Lfunc_end8-compose_cmy
	.cfi_endproc

	.align	16, 0x90
	.type	compose_cmyk,@function
compose_cmyk:                           # @compose_cmyk
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
	subq	$208, %rsp
	leaq	-136(%rbp), %rax
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -88(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -92(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -96(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	movl	%edx, -100(%rbp)
	movq	%rax, %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-192(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgb_set
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	jle	.LBB9_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-176(%rbp), %rdi
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movq	-56(%rbp), %rax
	movb	(%rax), %dl
	movq	-64(%rbp), %rax
	movb	(%rax), %sil
	movq	-72(%rbp), %rax
	movzbl	%cl, %r8d
	movb	%sil, -193(%rbp)        # 1-byte Spill
	movl	%r8d, %esi
	movzbl	%dl, %edx
	movb	-193(%rbp), %cl         # 1-byte Reload
	movzbl	%cl, %ecx
	movzbl	(%rax), %r8d
	callq	gimp_cmyk_set_uchar
	leaq	-176(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	callq	gimp_cmyk_to_rgb
	leaq	-136(%rbp), %rdi
	leaq	-177(%rbp), %rsi
	leaq	-178(%rbp), %rdx
	leaq	-179(%rbp), %rcx
	callq	gimp_rgb_get_uchar
	movb	-177(%rbp), %r9b
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	%r9b, (%rax)
	movb	-178(%rbp), %r9b
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	%r9b, (%rax)
	movb	-179(%rbp), %r9b
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	%r9b, (%rax)
	movl	-88(%rbp), %r8d
	movq	-48(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	-92(%rbp), %r8d
	movq	-56(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movl	-96(%rbp), %r8d
	movq	-64(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movl	-100(%rbp), %r8d
	movq	-72(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
.LBB9_4:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_1
.LBB9_5:                                # %while.end
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	compose_cmyk, .Lfunc_end9-compose_cmyk
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4576258758203452558     # double 0.0088559999999999993
.LCPI10_1:
	.quad	4637863191261478912     # double 116
.LCPI10_2:
	.quad	4625196817309499392     # double 16
.LCPI10_3:
	.quad	4608398390699407442     # double 1.27
.LCPI10_4:
	.quad	4638707616191610880     # double 128
.LCPI10_5:
	.quad	4612924508324914790     # double 2.5499999999999998
.LCPI10_6:
	.quad	4607583239166853382     # double 1.089
.LCPI10_7:
	.quad	4620453401001971417     # double 7.7869999999999999
.LCPI10_8:
	.quad	4641240890982006784     # double 200
.LCPI10_9:
	.quad	4606741066036535099     # double 0.95099999999999996
.LCPI10_10:
	.quad	4647503709213818880     # double 500
.LCPI10_11:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI10_12:
	.quad	4651156726645941862     # double 903.29999999999995
.LCPI10_13:
	.quad	4607182418800017408     # double 1
.LCPI10_14:
	.quad	4607493167174305972     # double 1.069
.LCPI10_15:
	.quad	4597418614807878173     # double 0.22900000000000001
.LCPI10_16:
	.quad	4589564337057744028     # double 0.068000000000000005
.LCPI10_17:
	.quad	4586213658934980379     # double 0.042000000000000003
.LCPI10_18:
	.quad	4611127572073593962     # double 1.8759999999999999
.LCPI10_19:
	.quad	-4616468841231655371    # double -0.96899999999999997
.LCPI10_20:
	.quad	4602246473608419344     # double 0.47599999999999998
.LCPI10_21:
	.quad	4608952333453574013     # double 1.393
.LCPI10_22:
	.quad	4614079681629335323     # double 3.0630000000000002
.LCPI10_23:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	compose_lab,@function
compose_lab:                            # @compose_lab
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB10_26
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_4, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_5, %xmm5        # xmm5 = mem[0],zero
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm6
	divsd	%xmm5, %xmm6
	movsd	%xmm6, -144(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm5
	subsd	%xmm4, %xmm5
	divsd	%xmm3, %xmm5
	movsd	%xmm5, -152(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm5
	subsd	%xmm4, %xmm5
	divsd	%xmm3, %xmm5
	movsd	%xmm5, -160(%rbp)
	addsd	-144(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -168(%rbp)
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-168(%rbp), %xmm1
	mulsd	-168(%rbp), %xmm1
	movsd	%xmm1, -176(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_6, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_8, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_9, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_10, %xmm3       # xmm3 = mem[0],zero
	movsd	.LCPI10_13, %xmm4       # xmm4 = mem[0],zero
	mulsd	-176(%rbp), %xmm4
	movsd	%xmm4, -128(%rbp)
	movsd	-168(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-152(%rbp), %xmm5       # xmm5 = mem[0],zero
	divsd	%xmm3, %xmm5
	addsd	%xmm5, %xmm4
	movsd	%xmm4, -184(%rbp)
	mulsd	-184(%rbp), %xmm2
	mulsd	-184(%rbp), %xmm2
	mulsd	-184(%rbp), %xmm2
	movsd	%xmm2, -120(%rbp)
	movsd	-168(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm1, %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -192(%rbp)
	mulsd	-192(%rbp), %xmm0
	mulsd	-192(%rbp), %xmm0
	mulsd	-192(%rbp), %xmm0
	movsd	%xmm0, -136(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_11, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI10_12, %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI10_13, %xmm2       # xmm2 = mem[0],zero
	mulsd	-144(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -128(%rbp)
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	pow
	movsd	.LCPI10_6, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_7, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_8, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_9, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_10, %xmm5       # xmm5 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm5, %xmm0
	divsd	%xmm2, %xmm0
	addsd	-200(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)
	mulsd	-184(%rbp), %xmm4
	mulsd	-184(%rbp), %xmm4
	mulsd	-184(%rbp), %xmm4
	movsd	%xmm4, -120(%rbp)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm4       # xmm4 = mem[0],zero
	divsd	%xmm3, %xmm4
	divsd	%xmm2, %xmm4
	subsd	%xmm4, %xmm0
	movsd	%xmm0, -192(%rbp)
	mulsd	-192(%rbp), %xmm1
	mulsd	-192(%rbp), %xmm1
	mulsd	-192(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
.LBB10_5:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_14, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI10_15, %xmm2       # xmm2 = mem[0],zero
	movsd	.LCPI10_16, %xmm3       # xmm3 = mem[0],zero
	movsd	.LCPI10_17, %xmm4       # xmm4 = mem[0],zero
	movsd	.LCPI10_18, %xmm5       # xmm5 = mem[0],zero
	movsd	.LCPI10_19, %xmm6       # xmm6 = mem[0],zero
	movsd	.LCPI10_20, %xmm7       # xmm7 = mem[0],zero
	movsd	.LCPI10_21, %xmm8       # xmm8 = mem[0],zero
	movsd	.LCPI10_22, %xmm9       # xmm9 = mem[0],zero
	mulsd	-120(%rbp), %xmm9
	mulsd	-128(%rbp), %xmm8
	subsd	%xmm8, %xmm9
	mulsd	-136(%rbp), %xmm7
	subsd	%xmm7, %xmm9
	movsd	%xmm9, -96(%rbp)
	mulsd	-120(%rbp), %xmm6
	mulsd	-128(%rbp), %xmm5
	addsd	%xmm5, %xmm6
	mulsd	-136(%rbp), %xmm4
	addsd	%xmm4, %xmm6
	movsd	%xmm6, -104(%rbp)
	mulsd	-120(%rbp), %xmm3
	mulsd	-128(%rbp), %xmm2
	subsd	%xmm2, %xmm3
	mulsd	-136(%rbp), %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -112(%rbp)
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB10_8
.LBB10_7:                               # %cond.false
                                        #   in Loop: Header=BB10_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB10_8
.LBB10_8:                               # %cond.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -96(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_10
# BB#9:                                 # %cond.true.63
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB10_11
.LBB10_10:                              # %cond.false.64
                                        #   in Loop: Header=BB10_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB10_11
.LBB10_11:                              # %cond.end.65
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -104(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB10_13
# BB#12:                                # %cond.true.69
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB10_14
.LBB10_13:                              # %cond.false.70
                                        #   in Loop: Header=BB10_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB10_14
.LBB10_14:                              # %cond.end.71
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI10_13, %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	ucomisd	-96(%rbp), %xmm1
	jbe	.LBB10_16
# BB#15:                                # %cond.true.75
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %cond.false.76
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_13, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB10_17
.LBB10_17:                              # %cond.end.77
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI10_13, %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	ucomisd	-104(%rbp), %xmm1
	jbe	.LBB10_19
# BB#18:                                # %cond.true.81
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB10_20
.LBB10_19:                              # %cond.false.82
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_13, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB10_20
.LBB10_20:                              # %cond.end.83
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI10_13, %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	ucomisd	-112(%rbp), %xmm1
	jbe	.LBB10_22
# BB#21:                                # %cond.true.87
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB10_23
.LBB10_22:                              # %cond.false.88
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_13, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB10_23
.LBB10_23:                              # %cond.end.89
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_23(%rip), %xmm1 # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movb	%cl, (%rdx)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movb	%cl, 2(%rdx)
	movq	-72(%rbp), %rdx
	addq	$3, %rdx
	movq	%rdx, -72(%rbp)
	movl	-80(%rbp), %eax
	movq	-48(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -48(%rbp)
	movl	-84(%rbp), %eax
	movq	-56(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -56(%rbp)
	movl	-88(%rbp), %eax
	movq	-64(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -64(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB10_25
# BB#24:                                # %if.then.105
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB10_25:                              # %if.end.106
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_1
.LBB10_26:                              # %while.end
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end10:
	.size	compose_lab, .Lfunc_end10-compose_lab
	.cfi_endproc

	.align	16, 0x90
	.type	compose_ycbcr470,@function
compose_ycbcr470:                       # @compose_ycbcr470
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB11_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$16, %ecx
	movl	%ecx, -104(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movl	%ecx, -108(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movl	%ecx, -112(%rbp)
	movl	-80(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	-88(%rbp), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	imull	$76309, -104(%rbp), %ecx # imm = 0x12A15
	imull	$104612, -112(%rbp), %esi # imm = 0x198A4
	addl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -92(%rbp)
	imull	$76309, -104(%rbp), %ecx # imm = 0x12A15
	imull	$25784, -108(%rbp), %esi # imm = 0x64B8
	subl	%esi, %ecx
	imull	$53306, -112(%rbp), %esi # imm = 0xD03A
	subl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -96(%rbp)
	imull	$76309, -104(%rbp), %ecx # imm = 0x12A15
	imull	$132127, -108(%rbp), %esi # imm = 0x2041F
	addl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$255, -92(%rbp)
	jbe	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-92(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -92(%rbp)
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$255, -96(%rbp)
	jbe	.LBB11_6
# BB#5:                                 # %if.then.33
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-96(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -96(%rbp)
.LBB11_6:                               # %if.end.37
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$255, -100(%rbp)
	jbe	.LBB11_8
# BB#7:                                 # %if.then.40
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-100(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -100(%rbp)
.LBB11_8:                               # %if.end.44
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-92(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	movl	-96(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	movl	-100(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	cmpl	$0, -36(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.50
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB11_10:                              # %if.end.52
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_1
.LBB11_11:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end11:
	.size	compose_ycbcr470, .Lfunc_end11-compose_ycbcr470
	.cfi_endproc

	.align	16, 0x90
	.type	compose_ycbcr709,@function
compose_ycbcr709:                       # @compose_ycbcr709
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB12_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$16, %ecx
	movl	%ecx, -104(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movl	%ecx, -108(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movl	%ecx, -112(%rbp)
	movl	-80(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	-88(%rbp), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	imull	$76309, -104(%rbp), %ecx # imm = 0x12A15
	imull	$117489, -112(%rbp), %esi # imm = 0x1CAF1
	addl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -92(%rbp)
	imull	$76309, -104(%rbp), %ecx # imm = 0x12A15
	imull	$13974, -108(%rbp), %esi # imm = 0x3696
	subl	%esi, %ecx
	imull	$34923, -112(%rbp), %esi # imm = 0x886B
	subl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -96(%rbp)
	imull	$76309, -104(%rbp), %ecx # imm = 0x12A15
	imull	$138438, -108(%rbp), %esi # imm = 0x21CC6
	addl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$255, -92(%rbp)
	jbe	.LBB12_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-92(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -92(%rbp)
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpl	$255, -96(%rbp)
	jbe	.LBB12_6
# BB#5:                                 # %if.then.33
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-96(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -96(%rbp)
.LBB12_6:                               # %if.end.37
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpl	$255, -100(%rbp)
	jbe	.LBB12_8
# BB#7:                                 # %if.then.40
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-100(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -100(%rbp)
.LBB12_8:                               # %if.end.44
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-92(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	movl	-96(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	movl	-100(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	cmpl	$0, -36(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.50
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB12_10:                              # %if.end.52
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_1
.LBB12_11:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end12:
	.size	compose_ycbcr709, .Lfunc_end12-compose_ycbcr709
	.cfi_endproc

	.align	16, 0x90
	.type	compose_ycbcr470f,@function
compose_ycbcr470f:                      # @compose_ycbcr470f
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB13_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movl	%ecx, -108(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movl	%ecx, -112(%rbp)
	movl	-80(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	-88(%rbp), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movl	-104(%rbp), %ecx
	shll	$16, %ecx
	imull	$91895, -112(%rbp), %esi # imm = 0x166F7
	addl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -92(%rbp)
	movl	-104(%rbp), %ecx
	shll	$16, %ecx
	imull	$22649, -108(%rbp), %esi # imm = 0x5879
	subl	%esi, %ecx
	imull	$46825, -112(%rbp), %esi # imm = 0xB6E9
	subl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -96(%rbp)
	movl	-104(%rbp), %ecx
	shll	$16, %ecx
	imull	$116064, -108(%rbp), %esi # imm = 0x1C560
	addl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$255, -92(%rbp)
	jbe	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-92(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -92(%rbp)
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$255, -96(%rbp)
	jbe	.LBB13_6
# BB#5:                                 # %if.then.32
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-96(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -96(%rbp)
.LBB13_6:                               # %if.end.36
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$255, -100(%rbp)
	jbe	.LBB13_8
# BB#7:                                 # %if.then.39
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-100(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -100(%rbp)
.LBB13_8:                               # %if.end.43
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-92(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	movl	-96(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	movl	-100(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	cmpl	$0, -36(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.49
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB13_10:                              # %if.end.51
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_1
.LBB13_11:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end13:
	.size	compose_ycbcr470f, .Lfunc_end13-compose_ycbcr470f
	.cfi_endproc

	.align	16, 0x90
	.type	compose_ycbcr709f,@function
compose_ycbcr709f:                      # @compose_ycbcr709f
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, -76(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -84(%rbp)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -88(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB14_11
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movl	%ecx, -108(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$128, %ecx
	movl	%ecx, -112(%rbp)
	movl	-80(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	-88(%rbp), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movl	-104(%rbp), %ecx
	shll	$16, %ecx
	imull	$103206, -112(%rbp), %esi # imm = 0x19326
	addl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -92(%rbp)
	movl	-104(%rbp), %ecx
	shll	$16, %ecx
	imull	$12275, -108(%rbp), %esi # imm = 0x2FF3
	subl	%esi, %ecx
	imull	$30677, -112(%rbp), %esi # imm = 0x77D5
	subl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -96(%rbp)
	movl	-104(%rbp), %ecx
	shll	$16, %ecx
	imull	$121609, -108(%rbp), %esi # imm = 0x1DB09
	addl	%esi, %ecx
	addl	$32768, %ecx            # imm = 0x8000
	sarl	$16, %ecx
	movl	%ecx, -100(%rbp)
	cmpl	$255, -92(%rbp)
	jbe	.LBB14_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-92(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -92(%rbp)
.LBB14_4:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$255, -96(%rbp)
	jbe	.LBB14_6
# BB#5:                                 # %if.then.32
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-96(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -96(%rbp)
.LBB14_6:                               # %if.end.36
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$255, -100(%rbp)
	jbe	.LBB14_8
# BB#7:                                 # %if.then.39
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-100(%rbp), %eax
	sarl	$10, %eax
	andl	$255, %eax
	xorl	$255, %eax
	movl	%eax, -100(%rbp)
.LBB14_8:                               # %if.end.43
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-92(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	movl	-96(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	movl	-100(%rbp), %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movb	%cl, (%rdx)
	cmpl	$0, -36(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.49
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB14_10:                              # %if.end.51
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_1
.LBB14_11:                              # %while.end
	popq	%rbp
	retq
.Lfunc_end14:
	.size	compose_ycbcr709f, .Lfunc_end14-compose_ycbcr709f
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end15:
	.size	g_message, .Lfunc_end15-g_message
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI16_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_1:
	.quad	4643176031446892544     # double 255
.LCPI16_2:
	.quad	4607182418800017408     # double 1
.LCPI16_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	compose_dialog,@function
compose_dialog:                         # @compose_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              # imm = 0x2A0
.Ltmp57:
	.cfi_offset %rbx, -32
.Ltmp58:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, composeint+200
	movl	$0, -120(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-120(%rbp), %rax
	cmpq	$11, %rax
	jae	.LBB16_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movabsq	$compose_dsc, %rax
	movq	-24(%rbp), %rdi
	movslq	-120(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB16_4
# BB#3:                                 # %if.then
	movl	-120(%rbp), %eax
	movl	%eax, composeint+200
	jmp	.LBB16_6
.LBB16_4:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_5
.LBB16_5:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB16_1
.LBB16_6:                               # %for.end
	movl	-28(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, composeint
	movl	-28(%rbp), %edi
	callq	gimp_drawable_height
	movabsq	$.L.str.109, %rdi
	movl	$1, %esi
	movl	%eax, composeint+4
	callq	gimp_ui_init
	movl	-28(%rbp), %edi
	callq	gimp_item_get_image
	leaq	-116(%rbp), %rsi
	movl	%eax, %edi
	callq	gimp_image_get_layers
	movabsq	$.L.str.110, %rdi
	movq	%rax, -112(%rbp)
	callq	gettext
	movabsq	$.L.str.111, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.29, %r9
	movabsq	$.L.str.112, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.113, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -244(%rbp)        # 4-byte Spill
	movl	%r10d, -248(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.114, %rsi
	movabsq	$check_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r11
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%r8, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.115, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movabsq	$.L.str.116, %rdi
	movq	%rax, -104(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	callq	gimp_int_combo_box_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -88(%rbp)
	movl	$0, -120(%rbp)
.LBB16_7:                               # %for.cond.40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_9 Depth 2
	movslq	-120(%rbp), %rax
	cmpq	$11, %rax
	jae	.LBB16_17
# BB#8:                                 # %for.body.44
                                        #   in Loop: Header=BB16_7 Depth=1
	movabsq	$compose_dsc, %rax
	movslq	-120(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB16_9:                               # %for.cond.51
                                        #   Parent Loop BB16_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB16_15
# BB#10:                                # %for.body.52
                                        #   in Loop: Header=BB16_9 Depth=2
	movq	-144(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB16_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB16_9 Depth=2
	movq	-144(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB16_13
.LBB16_12:                              # %if.then.59
                                        #   in Loop: Header=BB16_9 Depth=2
	movq	-144(%rbp), %rax
	movb	$32, (%rax)
.LBB16_13:                              # %if.end.60
                                        #   in Loop: Header=BB16_9 Depth=2
	jmp	.LBB16_14
.LBB16_14:                              # %for.inc.61
                                        #   in Loop: Header=BB16_9 Depth=2
	movq	-144(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB16_9
.LBB16_15:                              # %for.end.62
                                        #   in Loop: Header=BB16_7 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-136(%rbp), %rdx
	movl	-120(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_int_combo_box_append
	movq	-136(%rbp), %rdi
	callq	g_free
# BB#16:                                # %for.inc.65
                                        #   in Loop: Header=BB16_7 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB16_7
.LBB16_17:                              # %for.end.67
	movq	-72(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.117, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -120(%rbp)
.LBB16_18:                              # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -120(%rbp)
	jge	.LBB16_26
# BB#19:                                # %for.body.89
                                        #   in Loop: Header=BB16_18 Depth=1
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-72(%rbp), %rsi
	movl	-120(%rbp), %r9d
	movl	-120(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -436(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_size_group_add_widget
	callq	gtk_image_new
	movq	%rax, -152(%rbp)
	movslq	-120(%rbp), %rsi
	movq	%rax, composeint+40(,%rsi,8)
	movq	-72(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.118, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -160(%rbp)
	movslq	-120(%rbp), %rsi
	movq	%rax, composeint+8(,%rsi,8)
	movq	-160(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-72(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	movl	-476(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$0, composeint+200
	jl	.LBB16_23
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB16_18 Depth=1
	movabsq	$compose_dsc, %rax
	movl	-116(%rbp), %ecx
	movslq	composeint+200, %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	8(%rax), %ecx
	jl	.LBB16_23
# BB#21:                                # %land.lhs.true.113
                                        #   in Loop: Header=BB16_18 Depth=1
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB16_23
# BB#22:                                # %if.then.116
                                        #   in Loop: Header=BB16_18 Depth=1
	movslq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-120(%rbp), %rax
	movl	%edx, composeint+168(,%rax,8)
	jmp	.LBB16_24
.LBB16_23:                              # %if.else
                                        #   in Loop: Header=BB16_18 Depth=1
	movl	-28(%rbp), %eax
	movslq	-120(%rbp), %rcx
	movl	%eax, composeint+168(,%rcx,8)
.LBB16_24:                              # %if.end.125
                                        #   in Loop: Header=BB16_18 Depth=1
	movabsq	$check_gray, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-120(%rbp), %rcx
	movl	$1, composeint+172(,%rcx,8)
	callq	gimp_drawable_combo_box_new
	movabsq	$.L.str.119, %rsi
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movslq	-120(%rbp), %rdi
	movq	%rax, composeint+72(,%rdi,8)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_render_icon
	movq	%rax, -224(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-208(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_append
	movq	-216(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.120, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	leaq	-208(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movl	$3, %r9d
	movq	-224(%rbp), %rdi
	movq	-512(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%r9d, -524(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$3, (%rsp)
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	movq	-224(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-96(%rbp), %rsi
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$5, %r8d
	xorl	%r11d, %r11d
	movq	-168(%rbp), %rsi
	movl	-120(%rbp), %ebx
	movl	-120(%rbp), %r14d
	addl	$1, %r14d
	movq	%rax, %rdi
	movl	%r8d, -540(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r14d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -544(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-96(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$100, %r8d
	movl	$4, %r9d
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI16_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI16_3, %xmm4        # xmm4 = mem[0],zero
	xorl	%edx, %edx
	movl	-120(%rbp), %r11d
	movq	%rax, %rdi
	movl	%edx, -564(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movsd	-576(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_color_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.121, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movslq	-120(%rbp), %rcx
	movq	%rax, composeint+104(,%rcx,8)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.122, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	xorl	%esi, %esi
	movslq	-120(%rbp), %rcx
	movq	%rax, composeint+136(,%rcx,8)
	movslq	-120(%rbp), %rax
	movq	composeint+104(,%rax,8), %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movslq	-120(%rbp), %rax
	movq	composeint+136(,%rax,8), %rdi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.123, %rsi
	movabsq	$scale_callback, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movabsq	$composeint, %rcx
	addq	$168, %rcx
	movq	-176(%rbp), %rdi
	movslq	-120(%rbp), %r10
	shlq	$3, %r10
	addq	%r10, %rcx
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-168(%rbp), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$combo_callback, %rcx
	movslq	-120(%rbp), %rdx
	movl	composeint+168(,%rdx,8), %esi
	movslq	-120(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	%rax, -608(%rbp)        # 8-byte Spill
# BB#25:                                # %for.inc.171
                                        #   in Loop: Header=BB16_18 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB16_18
.LBB16_26:                              # %for.end.173
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-88(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$type_combo_callback, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	composeint+200, %edx
	movq	%rax, %rdi
	movq	%rsi, -624(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-624(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-40(%rbp), %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -124(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$0, -124(%rbp)
	je	.LBB16_35
# BB#27:                                # %if.then.183
	movl	$0, -228(%rbp)
.LBB16_28:                              # %for.cond.185
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -228(%rbp)
	jge	.LBB16_34
# BB#29:                                # %for.body.188
                                        #   in Loop: Header=BB16_28 Depth=1
	movslq	-228(%rbp), %rax
	movl	composeint+172(,%rax,8), %ecx
	movslq	-228(%rbp), %rax
	movl	%ecx, composevals+4(,%rax,8)
	movslq	-228(%rbp), %rax
	cmpl	$0, composevals+4(,%rax,8)
	je	.LBB16_31
# BB#30:                                # %if.then.199
                                        #   in Loop: Header=BB16_28 Depth=1
	movslq	-228(%rbp), %rax
	movl	composeint+168(,%rax,8), %ecx
	movslq	-228(%rbp), %rax
	movl	%ecx, composevals(,%rax,8)
	jmp	.LBB16_32
.LBB16_31:                              # %if.else.208
                                        #   in Loop: Header=BB16_28 Depth=1
	movslq	-228(%rbp), %rax
	movb	composeint+168(,%rax,8), %cl
	movslq	-228(%rbp), %rax
	movb	%cl, composevals(,%rax,8)
.LBB16_32:                              # %if.end.216
                                        #   in Loop: Header=BB16_28 Depth=1
	jmp	.LBB16_33
.LBB16_33:                              # %for.inc.217
                                        #   in Loop: Header=BB16_28 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB16_28
.LBB16_34:                              # %for.end.219
	movabsq	$compose_dsc, %rax
	movslq	composeint+200, %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movl	$composevals+32, %edx
	movl	%edx, %edi
	callq	strcpy
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB16_35:                              # %if.end.224
	movl	-124(%rbp), %eax
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	compose_dialog, .Lfunc_end16-compose_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	compose,@function
compose:                                # @compose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$640, %rsp              # imm = 0x280
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$-1, -52(%rbp)
	movl	$0, -88(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-88(%rbp), %rax
	cmpq	$11, %rax
	jae	.LBB17_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movabsq	$compose_dsc, %rax
	movq	-16(%rbp), %rdi
	movslq	-88(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB17_4
# BB#3:                                 # %if.then
	movl	-88(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB17_6
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_5
.LBB17_5:                               # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_1
.LBB17_6:                               # %for.end
	cmpl	$0, -52(%rbp)
	jge	.LBB17_8
# BB#7:                                 # %if.then.7
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_8:                               # %if.end.8
	movabsq	$compose_dsc, %rax
	movslq	-52(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movl	%edx, -48(%rbp)
	movl	$-1, -156(%rbp)
	movl	$0, -84(%rbp)
.LBB17_9:                               # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB17_14
# BB#10:                                # %for.body.15
                                        #   in Loop: Header=BB17_9 Depth=1
	movslq	-84(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx,%rax,8)
	je	.LBB17_12
# BB#11:                                # %if.then.18
	movl	-84(%rbp), %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB17_14
.LBB17_12:                              # %if.end.19
                                        #   in Loop: Header=BB17_9 Depth=1
	jmp	.LBB17_13
.LBB17_13:                              # %for.inc.20
                                        #   in Loop: Header=BB17_9 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB17_9
.LBB17_14:                              # %for.end.22
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	cmpl	-156(%rbp), %eax
	jne	.LBB17_16
# BB#15:                                # %if.then.25
	movabsq	$.L.str.124, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_16:                              # %if.end.27
	callq	gimp_tile_height
	movl	%eax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB17_38
# BB#17:                                # %if.then.30
	movslq	-156(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	gimp_item_is_valid
	cmpl	$0, %eax
	jne	.LBB17_19
# BB#18:                                # %if.then.35
	movabsq	$.L.str.125, %rdi
	callq	gettext
	movslq	-156(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rdi,8), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_19:                              # %if.end.41
	movslq	-156(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	gimp_drawable_width
	movl	%eax, -32(%rbp)
	movslq	-156(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,8), %edi
	callq	gimp_drawable_height
	movl	%eax, -36(%rbp)
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
.LBB17_20:                              # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB17_30
# BB#21:                                # %for.body.55
                                        #   in Loop: Header=BB17_20 Depth=1
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx,%rax,8)
	je	.LBB17_28
# BB#22:                                # %if.then.60
                                        #   in Loop: Header=BB17_20 Depth=1
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	gimp_item_is_valid
	cmpl	$0, %eax
	jne	.LBB17_24
# BB#23:                                # %if.then.67
	movabsq	$.L.str.125, %rdi
	callq	gettext
	movslq	-88(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rdi,8), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_24:                              # %if.end.73
                                        #   in Loop: Header=BB17_20 Depth=1
	movl	-32(%rbp), %eax
	movslq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,8), %edi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	gimp_drawable_width
	movl	-532(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jne	.LBB17_26
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB17_20 Depth=1
	movl	-36(%rbp), %eax
	movslq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,8), %edi
	movl	%eax, -536(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	movl	-536(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	je	.LBB17_27
.LBB17_26:                              # %if.then.88
	movabsq	$.L.str.126, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_27:                              # %if.end.90
                                        #   in Loop: Header=BB17_20 Depth=1
	jmp	.LBB17_28
.LBB17_28:                              # %if.end.91
                                        #   in Loop: Header=BB17_20 Depth=1
	jmp	.LBB17_29
.LBB17_29:                              # %for.inc.92
                                        #   in Loop: Header=BB17_20 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_20
.LBB17_30:                              # %for.end.94
	movl	$0, -88(%rbp)
.LBB17_31:                              # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB17_37
# BB#32:                                # %for.body.98
                                        #   in Loop: Header=BB17_31 Depth=1
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx,%rax,8)
	je	.LBB17_34
# BB#33:                                # %if.then.103
                                        #   in Loop: Header=BB17_31 Depth=1
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	gimp_drawable_get
	movslq	-88(%rbp), %rcx
	movq	%rax, -192(%rbp,%rcx,8)
	jmp	.LBB17_35
.LBB17_34:                              # %if.else
                                        #   in Loop: Header=BB17_31 Depth=1
	movslq	-88(%rbp), %rax
	movq	$0, -192(%rbp,%rax,8)
.LBB17_35:                              # %if.end.113
                                        #   in Loop: Header=BB17_31 Depth=1
	jmp	.LBB17_36
.LBB17_36:                              # %for.inc.114
                                        #   in Loop: Header=BB17_31 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_31
.LBB17_37:                              # %for.end.116
	jmp	.LBB17_57
.LBB17_38:                              # %if.else.117
	movslq	-156(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	gimp_image_width
	movl	%eax, -32(%rbp)
	movslq	-156(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,8), %edi
	callq	gimp_image_height
	movl	%eax, -36(%rbp)
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
.LBB17_39:                              # %for.cond.129
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB17_47
# BB#40:                                # %for.body.132
                                        #   in Loop: Header=BB17_39 Depth=1
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx,%rax,8)
	je	.LBB17_45
# BB#41:                                # %if.then.137
                                        #   in Loop: Header=BB17_39 Depth=1
	movl	-32(%rbp), %eax
	movslq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,8), %edi
	movl	%eax, -540(%rbp)        # 4-byte Spill
	callq	gimp_image_width
	movl	-540(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jne	.LBB17_43
# BB#42:                                # %lor.lhs.false.145
                                        #   in Loop: Header=BB17_39 Depth=1
	movl	-36(%rbp), %eax
	movslq	-88(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rcx,8), %edi
	movl	%eax, -544(%rbp)        # 4-byte Spill
	callq	gimp_image_height
	movl	-544(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	je	.LBB17_44
.LBB17_43:                              # %if.then.153
	movabsq	$.L.str.127, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_44:                              # %if.end.155
                                        #   in Loop: Header=BB17_39 Depth=1
	jmp	.LBB17_45
.LBB17_45:                              # %if.end.156
                                        #   in Loop: Header=BB17_39 Depth=1
	jmp	.LBB17_46
.LBB17_46:                              # %for.inc.157
                                        #   in Loop: Header=BB17_39 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_39
.LBB17_47:                              # %for.end.159
	movl	$0, -88(%rbp)
.LBB17_48:                              # %for.cond.160
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB17_56
# BB#49:                                # %for.body.163
                                        #   in Loop: Header=BB17_48 Depth=1
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx,%rax,8)
	je	.LBB17_54
# BB#50:                                # %if.then.168
                                        #   in Loop: Header=BB17_48 Depth=1
	leaq	-92(%rbp), %rsi
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	gimp_image_get_layers
	movq	%rax, -504(%rbp)
	cmpq	$0, -504(%rbp)
	je	.LBB17_52
# BB#51:                                # %lor.lhs.false.175
                                        #   in Loop: Header=BB17_48 Depth=1
	cmpl	$0, -92(%rbp)
	jg	.LBB17_53
.LBB17_52:                              # %if.then.178
	movabsq	$.L.str.128, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_53:                              # %if.end.180
                                        #   in Loop: Header=BB17_48 Depth=1
	movq	-504(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_get
	movslq	-88(%rbp), %rcx
	movq	%rax, -192(%rbp,%rcx,8)
	movq	-504(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB17_54:                              # %if.end.185
                                        #   in Loop: Header=BB17_48 Depth=1
	jmp	.LBB17_55
.LBB17_55:                              # %for.inc.186
                                        #   in Loop: Header=BB17_48 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_48
.LBB17_56:                              # %for.end.188
	jmp	.LBB17_57
.LBB17_57:                              # %if.end.189
	movl	$0, -88(%rbp)
.LBB17_58:                              # %for.cond.190
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB17_69
# BB#59:                                # %for.body.193
                                        #   in Loop: Header=BB17_58 Depth=1
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx,%rax,8)
	je	.LBB17_64
# BB#60:                                # %if.then.198
                                        #   in Loop: Header=BB17_58 Depth=1
	movslq	-88(%rbp), %rax
	movq	-192(%rbp,%rax,8), %rax
	movl	12(%rax), %ecx
	movslq	-88(%rbp), %rax
	movl	%ecx, -80(%rbp,%rax,4)
	movslq	-88(%rbp), %rax
	cmpl	$1, -80(%rbp,%rax,4)
	je	.LBB17_63
# BB#61:                                # %land.lhs.true
                                        #   in Loop: Header=BB17_58 Depth=1
	movslq	-88(%rbp), %rax
	cmpl	$2, -80(%rbp,%rax,4)
	je	.LBB17_63
# BB#62:                                # %if.then.211
	movabsq	$.L.str.129, %rdi
	callq	gettext
	movslq	-88(%rbp), %rdi
	movl	-80(%rbp,%rdi,4), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_63:                              # %if.end.215
                                        #   in Loop: Header=BB17_58 Depth=1
	xorl	%eax, %eax
	leaq	-400(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	imulq	$48, %rdx, %rdx
	addq	%rdx, %rcx
	movslq	-88(%rbp), %rdx
	movq	-192(%rbp,%rdx,8), %rsi
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movq	%rcx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	jmp	.LBB17_65
.LBB17_64:                              # %if.else.220
                                        #   in Loop: Header=BB17_58 Depth=1
	movslq	-88(%rbp), %rax
	movl	$1, -80(%rbp,%rax,4)
.LBB17_65:                              # %if.end.223
                                        #   in Loop: Header=BB17_58 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	imull	-32(%rbp), %eax
	movslq	-88(%rbp), %rcx
	imull	-80(%rbp,%rcx,4), %eax
	movslq	%eax, %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rdi
	callq	g_malloc_n
	movslq	-88(%rbp), %rcx
	movq	%rax, -144(%rbp,%rcx,8)
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx,%rax,8)
	jne	.LBB17_67
# BB#66:                                # %if.then.235
                                        #   in Loop: Header=BB17_58 Depth=1
	movslq	-88(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rdi
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax,8), %edx
	movb	%dl, %sil
	movq	-512(%rbp), %rdx
	movzbl	%sil, %esi
	callq	memset
.LBB17_67:                              # %if.end.242
                                        #   in Loop: Header=BB17_58 Depth=1
	jmp	.LBB17_68
.LBB17_68:                              # %for.inc.243
                                        #   in Loop: Header=BB17_58 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_58
.LBB17_69:                              # %for.end.245
	cmpl	$0, composevals+64
	je	.LBB17_73
# BB#70:                                # %if.then.247
	movl	composevals+68, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %edi
	callq	gimp_item_is_valid
	cmpl	$0, %eax
	jne	.LBB17_72
# BB#71:                                # %if.then.250
	movabsq	$.L.str.130, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_99
.LBB17_72:                              # %if.end.252
	movl	-96(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-448(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-200(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -548(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-496(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-200(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-200(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-96(%rbp), %edi
	callq	gimp_item_get_image
	movl	%eax, -100(%rbp)
	jmp	.LBB17_74
.LBB17_73:                              # %if.else.259
	leaq	-96(%rbp), %r8
	leaq	-200(%rbp), %r9
	leaq	-448(%rbp), %rax
	movabsq	$compose_dsc, %rcx
	movabsq	$compose_rgba, %rdx
	xorl	%esi, %esi
	movl	$1, %edi
	movslq	-52(%rbp), %r10
	imulq	$96, %r10, %r10
	movq	%rcx, %r11
	addq	%r10, %r11
	cmpq	%rdx, 88(%r11)
	cmovel	%edi, %esi
	movl	%esi, -160(%rbp)
	movslq	-52(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rcx
	movq	80(%rcx), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-160(%rbp), %ecx
	movq	%rax, (%rsp)
	callq	create_new_image
	movl	%eax, -100(%rbp)
.LBB17_74:                              # %if.end.267
	cmpl	$0, -28(%rbp)
	jne	.LBB17_76
# BB#75:                                # %if.then.269
	leaq	-520(%rbp), %rsi
	leaq	-528(%rbp), %rdx
	movslq	-156(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,8), %edi
	callq	gimp_image_get_resolution
	movl	-100(%rbp), %edi
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-528(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, -552(%rbp)        # 4-byte Spill
	callq	gimp_image_set_resolution
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB17_76:                              # %if.end.276
	movl	$1, %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	imull	-32(%rbp), %eax
	movq	-200(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -152(%rbp)
	movl	$0, -84(%rbp)
.LBB17_77:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_82 Depth 2
	movl	-84(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_90
# BB#78:                                # %while.body
                                        #   in Loop: Header=BB17_77 Depth=1
	movl	-84(%rbp), %eax
	addl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB17_80
# BB#79:                                # %cond.true
                                        #   in Loop: Header=BB17_77 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jmp	.LBB17_81
.LBB17_80:                              # %cond.false
                                        #   in Loop: Header=BB17_77 Depth=1
	movl	-36(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB17_81:                              # %cond.end
                                        #   in Loop: Header=BB17_77 Depth=1
	movl	-560(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	$0, -88(%rbp)
.LBB17_82:                              # %for.cond.289
                                        #   Parent Loop BB17_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB17_87
# BB#83:                                # %for.body.292
                                        #   in Loop: Header=BB17_82 Depth=2
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, 4(%rcx,%rax,8)
	je	.LBB17_85
# BB#84:                                # %if.then.297
                                        #   in Loop: Header=BB17_82 Depth=2
	xorl	%edx, %edx
	leaq	-400(%rbp), %rax
	movslq	-88(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-88(%rbp), %rcx
	movq	-144(%rbp,%rcx,8), %rsi
	movl	-84(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_pixel_rgn_get_rect
.LBB17_85:                              # %if.end.302
                                        #   in Loop: Header=BB17_82 Depth=2
	jmp	.LBB17_86
.LBB17_86:                              # %for.inc.303
                                        #   in Loop: Header=BB17_82 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_82
.LBB17_87:                              # %for.end.305
                                        #   in Loop: Header=BB17_77 Depth=1
	cmpl	$0, composevals+64
	je	.LBB17_89
# BB#88:                                # %if.then.307
                                        #   in Loop: Header=BB17_77 Depth=1
	leaq	-496(%rbp), %rdi
	xorl	%edx, %edx
	movq	-152(%rbp), %rsi
	movl	-84(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-44(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
.LBB17_89:                              # %if.end.308
                                        #   in Loop: Header=BB17_77 Depth=1
	leaq	-80(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	movabsq	$compose_dsc, %rax
	movslq	-52(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movq	88(%rax), %rax
	movl	-32(%rbp), %edx
	imull	-40(%rbp), %edx
	movq	-152(%rbp), %rcx
	movl	-96(%rbp), %r8d
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	movq	%rsi, -576(%rbp)        # 8-byte Spill
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movl	%edx, -596(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	-576(%rbp), %rsi        # 8-byte Reload
	movl	-596(%rbp), %edx        # 4-byte Reload
	movq	-584(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movq	-592(%rbp), %r9         # 8-byte Reload
	callq	*%r9
	leaq	-448(%rbp), %rdi
	xorl	%edx, %edx
	movq	-152(%rbp), %rsi
	movl	-84(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-44(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
	movl	-44(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB17_77
.LBB17_90:                              # %while.end
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	$0, -88(%rbp)
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB17_91:                              # %for.cond.320
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB17_96
# BB#92:                                # %for.body.323
                                        #   in Loop: Header=BB17_91 Depth=1
	movslq	-88(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rdi
	callq	g_free
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rdi
	cmpl	$0, 4(%rdi,%rax,8)
	je	.LBB17_94
# BB#93:                                # %if.then.330
                                        #   in Loop: Header=BB17_91 Depth=1
	movslq	-88(%rbp), %rax
	movq	-192(%rbp,%rax,8), %rdi
	callq	gimp_drawable_detach
.LBB17_94:                              # %if.end.333
                                        #   in Loop: Header=BB17_91 Depth=1
	jmp	.LBB17_95
.LBB17_95:                              # %for.inc.334
                                        #   in Loop: Header=BB17_91 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_91
.LBB17_96:                              # %for.end.336
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-200(%rbp), %rdi
	callq	gimp_drawable_detach
	cmpl	$0, composevals+64
	je	.LBB17_98
# BB#97:                                # %if.then.338
	movl	$1, %esi
	movl	-96(%rbp), %edi
	callq	gimp_drawable_merge_shadow
	movl	%eax, -608(%rbp)        # 4-byte Spill
.LBB17_98:                              # %if.end.340
	movl	-96(%rbp), %edi
	movl	-96(%rbp), %eax
	movl	%edi, -612(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	callq	gimp_drawable_width
	movl	-96(%rbp), %edi
	movl	%eax, -616(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	xorl	%edi, %edi
	movl	-612(%rbp), %ecx        # 4-byte Reload
	movl	%edi, -620(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	-620(%rbp), %esi        # 4-byte Reload
	movl	-620(%rbp), %edx        # 4-byte Reload
	movl	-616(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	movl	-100(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -624(%rbp)        # 4-byte Spill
.LBB17_99:                              # %return
	movl	-4(%rbp), %eax
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end17:
	.size	compose, .Lfunc_end17-compose
	.cfi_endproc

	.align	16, 0x90
	.type	check_response,@function
check_response:                         # @check_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	subl	$-5, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	jne	.LBB18_10
	jmp	.LBB18_1
.LBB18_1:                               # %sw.bb
	movabsq	$compose_dsc, %rax
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movslq	composeint+200, %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movl	%edx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB18_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB18_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB18_2 Depth=1
	movslq	-28(%rbp), %rax
	cmpl	$0, composeint+172(,%rax,8)
	je	.LBB18_5
# BB#4:                                 # %if.then
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_5:                               # %if.end
                                        #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_6
.LBB18_6:                               # %for.inc
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB18_2
.LBB18_7:                               # %for.end
	cmpl	$0, -36(%rbp)
	jne	.LBB18_9
# BB#8:                                 # %if.then.4
	movabsq	$.L.str.114, %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.124, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$3, %ecx
	movl	$2, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	gtk_message_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	movq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gtk_widget_destroy
.LBB18_9:                               # %if.end.11
	jmp	.LBB18_11
.LBB18_10:                              # %sw.default
	jmp	.LBB18_11
.LBB18_11:                              # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	check_response, .Lfunc_end18-check_response
	.cfi_endproc

	.align	16, 0x90
	.type	check_gray,@function
check_gray:                             # @check_gray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_base_type
	xorl	%esi, %esi
	movb	%sil, %cl
	cmpl	$1, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB19_3
# BB#1:                                 # %land.lhs.true
	movl	-4(%rbp), %edi
	callq	gimp_image_width
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	composeint, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB19_3
# BB#2:                                 # %land.rhs
	movl	-4(%rbp), %edi
	callq	gimp_image_height
	cmpl	composeint+4, %eax
	sete	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB19_3:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	check_gray, .Lfunc_end19-check_gray
	.cfi_endproc

	.align	16, 0x90
	.type	scale_callback,@function
scale_callback:                         # @scale_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	scale_callback, .Lfunc_end20-scale_callback
	.cfi_endproc

	.align	16, 0x90
	.type	combo_callback,@function
combo_callback:                         # @combo_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movq	-16(%rbp), %rsi
	movl	%esi, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$-1, -20(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movslq	-24(%rbp), %rax
	movq	composeint+104(,%rax,8), %rdi
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	callq	gtk_widget_set_sensitive
	movslq	-24(%rbp), %rax
	movq	composeint+136(,%rax,8), %rdi
	movl	-40(%rbp), %esi         # 4-byte Reload
	callq	gtk_widget_set_sensitive
	movslq	-24(%rbp), %rax
	movl	$0, composeint+172(,%rax,8)
	movslq	-24(%rbp), %rax
	movq	composeint+104(,%rax,8), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_range_get_value
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movslq	-24(%rbp), %rax
	movb	%dl, composeint+168(,%rax,8)
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	xorl	%esi, %esi
	movslq	-24(%rbp), %rax
	movq	composeint+104(,%rax,8), %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movslq	-24(%rbp), %rax
	movq	composeint+136(,%rax,8), %rdi
	callq	gtk_widget_set_sensitive
	movslq	-24(%rbp), %rax
	movl	$1, composeint+172(,%rax,8)
	movl	-20(%rbp), %esi
	movslq	-24(%rbp), %rax
	movl	%esi, composeint+168(,%rax,8)
.LBB21_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	combo_callback, .Lfunc_end21-combo_callback
	.cfi_endproc

	.align	16, 0x90
	.type	type_combo_callback,@function
type_combo_callback:                    # @type_combo_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movabsq	$composeint, %rax
	addq	$200, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB22_14
# BB#1:                                 # %if.then
	movl	composeint+200, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB22_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -32(%rbp)
	jge	.LBB22_11
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB22_2 Depth=1
	movabsq	$compose_dsc, %rax
	movslq	-32(%rbp), %rcx
	movq	composeint+8(,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
	movslq	-32(%rbp), %rcx
	movq	composeint+40(,%rcx,8), %rcx
	movq	%rcx, -48(%rbp)
	movslq	-32(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	16(%rsi,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movslq	-32(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	imulq	$96, %rdx, %rdx
	addq	%rdx, %rax
	movq	48(%rax,%rcx,8), %rax
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, -56(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB22_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	-56(%rbp), %rdi
	callq	gettext
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB22_6
.LBB22_5:                               # %cond.false
                                        #   in Loop: Header=BB22_2 Depth=1
	movabsq	$.L.str.118, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB22_6
.LBB22_6:                               # %cond.end
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text_with_mnemonic
	cmpq	$0, -64(%rbp)
	je	.LBB22_8
# BB#7:                                 # %if.then.16
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_set_from_stock
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	jmp	.LBB22_9
.LBB22_8:                               # %if.else
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_image_clear
	movq	-48(%rbp), %rdi
	callq	gtk_widget_hide
.LBB22_9:                               # %if.end
                                        #   in Loop: Header=BB22_2 Depth=1
	jmp	.LBB22_10
.LBB22_10:                              # %for.inc
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB22_2
.LBB22_11:                              # %for.end
	movabsq	$compose_dsc, %rax
	movslq	-28(%rbp), %rcx
	imulq	$96, %rcx, %rcx
	addq	%rcx, %rax
	cmpq	$0, 40(%rax)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, -20(%rbp)
	movq	composeint+96, %rdi
	movl	-20(%rbp), %esi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movb	%sil, %dl
	cmpl	$0, -20(%rbp)
	movb	%dl, -105(%rbp)         # 1-byte Spill
	je	.LBB22_13
# BB#12:                                # %land.rhs
	cmpl	$0, composeint+196
	setne	%al
	xorb	$-1, %al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB22_13:                              # %land.end
	movb	-105(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -24(%rbp)
	movq	composeint+128, %rdi
	movl	-24(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	composeint+160, %rdi
	movl	-24(%rbp), %esi
	callq	gtk_widget_set_sensitive
.LBB22_14:                              # %if.end.28
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	type_combo_callback, .Lfunc_end22-type_combo_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	create_new_image,@function
create_new_image:                       # @create_new_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%rax, -48(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB23_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$3, -20(%rbp)
	jne	.LBB23_3
.LBB23_2:                               # %if.then
	movl	$1, -56(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	cmpl	$4, -20(%rbp)
	je	.LBB23_5
# BB#4:                                 # %lor.lhs.false.3
	cmpl	$5, -20(%rbp)
	jne	.LBB23_6
.LBB23_5:                               # %if.then.5
	movl	$2, -56(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.6
	movl	$0, -56(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.7
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	gimp_image_undo_disable
	movl	-52(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_image_set_filename
	movabsq	$.L.str.131, %rdi
	movl	-52(%rbp), %edx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%edx, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-52(%rbp), %edi
	movq	-32(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_image_insert_layer
	movq	-32(%rbp), %r10
	movl	(%r10), %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-40(%rbp), %r10
	movq	%rax, (%r10)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %r8d
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %r9d
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-52(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	create_new_image, .Lfunc_end23-create_new_image
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.data
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.12
	.quad	0
	.size	query.args, 168

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image1"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"First input image"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable (not used)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image2"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Second input image"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image3"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Third input image"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image4"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Fourth input image"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"compose-type"
	.size	.L.str.12, 13

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.size	query.return_vals, 24

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"new_image"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Output image"
	.size	.L.str.14, 13

	.type	query.drw_args,@object  # @query.drw_args
	.data
	.align	16
query.drw_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.15
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.12
	.quad	0
	.size	query.drw_args, 168

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"First input image (not used)"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"drawable1"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"First input drawable"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"drawable2"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Second input drawable"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"drawable3"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Third input drawable"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"drawable4"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Fourth input drawable"
	.size	.L.str.23, 22

	.type	query.drw_return_vals,@object # @query.drw_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.drw_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.size	query.drw_return_vals, 24

	.type	query.recompose_args,@object # @query.recompose_args
	.align	16
query.recompose_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.26
	.size	query.recompose_args, 72

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"image"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Image to recompose from"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Not used"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"What to compose: "
	.size	.L.str.27, 18

	.type	compose_dsc,@object     # @compose_dsc
	.data
	.align	16
compose_dsc:
	.quad	.L.str.48
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	0
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	0
	.quad	.L.str.55
	.quad	compose_rgb
	.quad	.L.str.56
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.57
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	compose_rgba
	.quad	.L.str.60
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	0
	.zero	32
	.quad	.L.str.64
	.quad	compose_hsv
	.quad	.L.str.65
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.66
	.quad	0
	.zero	32
	.quad	.L.str.67
	.quad	compose_hsl
	.quad	.L.str.68
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	0
	.zero	32
	.quad	.L.str.72
	.quad	compose_cmy
	.quad	.L.str.73
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.74
	.zero	32
	.quad	.L.str.75
	.quad	compose_cmyk
	.quad	.L.str.76
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	0
	.zero	32
	.quad	.L.str.80
	.quad	compose_lab
	.quad	.L.str.81
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	0
	.zero	32
	.quad	.L.str.85
	.quad	compose_ycbcr470
	.quad	.L.str.86
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	0
	.zero	32
	.quad	.L.str.90
	.quad	compose_ycbcr709
	.quad	.L.str.91
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	0
	.zero	32
	.quad	.L.str.95
	.quad	compose_ycbcr470f
	.quad	.L.str.96
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	0
	.zero	32
	.quad	.L.str.100
	.quad	compose_ycbcr709f
	.size	compose_dsc, 1056

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	", "
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"plug-in-compose"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Create an image using multiple gray images as color channels"
	.size	.L.str.30, 61

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"This function creates a new image from multiple gray images"
	.size	.L.str.31, 60

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Peter Kirchgessner"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Peter Kirchgessner (peter@kirchgessner.net)"
	.size	.L.str.33, 44

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"1997"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"C_ompose..."
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"GRAY*"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"<Image>/Colors/Components"
	.size	.L.str.37, 26

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"plug-in-drawable-compose"
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Compose an image from multiple drawables of gray images"
	.size	.L.str.39, 56

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"This function creates a new image from multiple drawables of gray images"
	.size	.L.str.40, 73

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"1998"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"plug-in-recompose"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Recompose an image that was previously decomposed"
	.size	.L.str.43, 50

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"This function recombines the grayscale layers produced by Decompose into a single RGB or RGBA layer, and replaces the originally decomposed layer with the result."
	.size	.L.str.44, 163

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Bill Skaggs"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"2004"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"R_ecompose"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"RGB"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_Red:"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_Green:"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Blue:"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-channel-red"
	.size	.L.str.52, 17

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-channel-green"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-channel-blue"
	.size	.L.str.54, 18

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"rgb-compose"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"RGBA"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"_Alpha:"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-channel-alpha"
	.size	.L.str.58, 19

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"rgba-compose"
	.size	.L.str.59, 13

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"HSV"
	.size	.L.str.60, 4

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"_Hue:"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"_Saturation:"
	.size	.L.str.62, 13

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"_Value:"
	.size	.L.str.63, 8

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"hsv-compose"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"HSL"
	.size	.L.str.65, 4

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"_Lightness:"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"hsl-compose"
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"CMY"
	.size	.L.str.68, 4

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"_Cyan:"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"_Magenta:"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"_Yellow:"
	.size	.L.str.71, 9

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"cmy-compose"
	.size	.L.str.72, 12

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"CMYK"
	.size	.L.str.73, 5

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"_Black:"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"cmyk-compose"
	.size	.L.str.75, 13

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"LAB"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"_L:"
	.size	.L.str.77, 4

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"_A:"
	.size	.L.str.78, 4

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"_B:"
	.size	.L.str.79, 4

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"lab-compose"
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"YCbCr_ITU_R470"
	.size	.L.str.81, 15

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"_Luma y470:"
	.size	.L.str.82, 12

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"_Blueness cb470:"
	.size	.L.str.83, 17

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"_Redness cr470:"
	.size	.L.str.84, 16

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"ycbcr470-compose"
	.size	.L.str.85, 17

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"YCbCr_ITU_R709"
	.size	.L.str.86, 15

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"_Luma y709:"
	.size	.L.str.87, 12

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"_Blueness cb709:"
	.size	.L.str.88, 17

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"_Redness cr709:"
	.size	.L.str.89, 16

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"ycbcr709-compose"
	.size	.L.str.90, 17

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"YCbCr_ITU_R470_256"
	.size	.L.str.91, 19

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"_Luma y470f:"
	.size	.L.str.92, 13

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"_Blueness cb470f:"
	.size	.L.str.93, 18

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"_Redness cr470f:"
	.size	.L.str.94, 17

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"ycbcr470F-compose"
	.size	.L.str.95, 18

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"YCbCr_ITU_R709_256"
	.size	.L.str.96, 19

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"_Luma y709f:"
	.size	.L.str.97, 13

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"_Blueness cb709f:"
	.size	.L.str.98, 18

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"_Redness cr709f:"
	.size	.L.str.99, 17

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"ycbcr709F-compose"
	.size	.L.str.100, 18

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.101, 20

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"UTF-8"
	.size	.L.str.102, 6

	.type	run_mode,@object        # @run_mode
	.local	run_mode
	.comm	run_mode,4,4
	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"decompose-data"
	.size	.L.str.103, 15

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"You can only run 'Recompose' if the active image was originally produced by 'Decompose'."
	.size	.L.str.104, 89

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"source=%d type=%31s %d %d %d %d"
	.size	.L.str.105, 32

	.type	composevals,@object     # @composevals
	.data
	.align	4
composevals:
	.zero	32
	.asciz	"rgb\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.size	composevals, 72

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"Error scanning 'decompose-data' parasite: too few layers found"
	.size	.L.str.106, 63

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Could not get layers for image %d"
	.size	.L.str.107, 34

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Composing"
	.size	.L.str.108, 10

	.type	composeint,@object      # @composeint
	.local	composeint
	.comm	composeint,208,8
	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"compose"
	.size	.L.str.109, 8

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Compose"
	.size	.L.str.110, 8

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-compose"
	.size	.L.str.111, 13

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gtk-cancel"
	.size	.L.str.112, 11

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gtk-ok"
	.size	.L.str.113, 7

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"response"
	.size	.L.str.114, 9

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Compose Channels"
	.size	.L.str.115, 17

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Color _model:"
	.size	.L.str.116, 14

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Channel Representations"
	.size	.L.str.117, 24

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.zero	1
	.size	.L.str.118, 1

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gimp-channel-gray"
	.size	.L.str.119, 18

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Mask value"
	.size	.L.str.120, 11

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"scale"
	.size	.L.str.121, 6

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"spinbutton"
	.size	.L.str.122, 11

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"value-changed"
	.size	.L.str.123, 14

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"At least one image is needed to compose"
	.size	.L.str.124, 40

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Specified layer %d not found"
	.size	.L.str.125, 29

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Drawables have different size"
	.size	.L.str.126, 30

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Images have different size"
	.size	.L.str.127, 27

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Error in getting layer IDs"
	.size	.L.str.128, 27

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Image is not a gray image (bpp=%d)"
	.size	.L.str.129, 35

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Unable to recompose, source layer not found"
	.size	.L.str.130, 44

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Background"
	.size	.L.str.131, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
