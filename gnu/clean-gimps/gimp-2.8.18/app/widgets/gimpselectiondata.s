	.text
	.file	"gimpselectiondata.bc"
	.globl	gimp_selection_data_set_uri_list
	.align	16, 0x90
	.type	gimp_selection_data_set_uri_list,@function
gimp_selection_data_set_uri_list:       # @gimp_selection_data_set_uri_list
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_uri_list, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_uri_list, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_21
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB0_11 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB0_14
# BB#13:                                # %if.then.8
                                        #   in Loop: Header=BB0_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.3, %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-24(%rbp), %r8
	cmpq	$0, 8(%r8)
	movq	%rcx, %r8
	cmovneq	%rdx, %r8
	movq	%r8, %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.10
                                        #   in Loop: Header=BB0_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.3, %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	movq	%rcx, %rsi
	cmovneq	%rdx, %rsi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -32(%rbp)
.LBB0_15:                               # %if.end.16
                                        #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               # %for.inc
                                        #   in Loop: Header=BB0_11 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_19
.LBB0_18:                               # %cond.false
                                        #   in Loop: Header=BB0_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_19
.LBB0_19:                               # %cond.end
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_11
.LBB0_20:                               # %for.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_selection_data_set
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB0_21:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_selection_data_set_uri_list, .Lfunc_end0-gimp_selection_data_set_uri_list
	.cfi_endproc

	.globl	gimp_selection_data_get_uri_list
	.align	16, 0x90
	.type	gimp_selection_data_get_uri_list,@function
gimp_selection_data_get_uri_list:       # @gimp_selection_data_get_uri_list
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
	subq	$1232, %rsp             # imm = 0x4D0
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_uri_list, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_69
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_length
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_format
	cmpl	$8, %eax
	jne	.LBB1_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$1, -44(%rbp)
	jge	.LBB1_8
.LBB1_7:                                # %if.then.4
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_69
.LBB1_8:                                # %if.end.5
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_data
	movq	%rax, -64(%rbp)
	movq	%rax, -56(%rbp)
# BB#9:                                 # %do.body.7
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB1_11
# BB#10:                                # %if.then.8
	movl	$4, %edi
	movabsq	$.L__func__.gimp_selection_data_get_uri_list, %rsi
	movl	$126, %edx
	movabsq	$.L.str.5, %rcx
	movq	-64(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB1_11:                               # %if.end.9
	jmp	.LBB1_12
.LBB1_12:                               # %do.end.10
	jmp	.LBB1_13
.LBB1_13:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_17 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -1177(%rbp)        # 1-byte Spill
	je	.LBB1_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -1177(%rbp)        # 1-byte Spill
.LBB1_15:                               # %land.end
                                        #   in Loop: Header=BB1_13 Depth=1
	movb	-1177(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_16
	jmp	.LBB1_31
.LBB1_16:                               # %while.body
                                        #   in Loop: Header=BB1_13 Depth=1
	leaq	-1088(%rbp), %rax
	movq	%rax, -1096(%rbp)
	movl	$0, -1100(%rbp)
.LBB1_17:                               # %while.cond.15
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-1100(%rbp), %rdx
	cmpq	$1024, %rdx             # imm = 0x400
	movb	%cl, -1178(%rbp)        # 1-byte Spill
	jae	.LBB1_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_17 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -1178(%rbp)        # 1-byte Spill
	je	.LBB1_20
# BB#19:                                # %land.rhs.21
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	setne	%dl
	movb	%dl, -1178(%rbp)        # 1-byte Spill
.LBB1_20:                               # %land.end.25
                                        #   in Loop: Header=BB1_17 Depth=2
	movb	-1178(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_21
	jmp	.LBB1_22
.LBB1_21:                               # %while.body.26
                                        #   in Loop: Header=BB1_17 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	(%rax), %dl
	movq	-1096(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1096(%rbp)
	movb	%dl, (%rax)
	movl	-1100(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -1100(%rbp)
	jmp	.LBB1_17
.LBB1_22:                               # %while.end
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	$0, -1100(%rbp)
	jne	.LBB1_24
# BB#23:                                # %if.then.30
	jmp	.LBB1_31
.LBB1_24:                               # %if.end.31
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-1096(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB1_26
# BB#25:                                # %if.then.35
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	-1100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1100(%rbp)
.LBB1_26:                               # %if.end.36
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpl	$2, -1100(%rbp)
	jle	.LBB1_28
# BB#27:                                # %if.then.39
                                        #   in Loop: Header=BB1_13 Depth=1
	leaq	-1088(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	-1100(%rbp), %rsi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	g_strndup
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
.LBB1_28:                               # %if.end.44
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_30
# BB#29:                                # %if.then.46
                                        #   in Loop: Header=BB1_13 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB1_30:                               # %if.end.48
                                        #   in Loop: Header=BB1_13 Depth=1
	jmp	.LBB1_13
.LBB1_31:                               # %while.end.49
	cmpq	$0, -24(%rbp)
	jne	.LBB1_33
# BB#32:                                # %if.then.51
	movq	$0, -8(%rbp)
	jmp	.LBB1_69
.LBB1_33:                               # %if.end.52
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB1_34:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB1_68
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -1112(%rbp)
	movq	$0, -1136(%rbp)
	movq	$0, -1144(%rbp)
# BB#36:                                # %do.body.55
                                        #   in Loop: Header=BB1_34 Depth=1
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB1_38
# BB#37:                                # %if.then.58
                                        #   in Loop: Header=BB1_34 Depth=1
	movl	$4, %edi
	movabsq	$.L__func__.gimp_selection_data_get_uri_list, %rsi
	movl	$169, %edx
	movabsq	$.L.str.6, %rcx
	movq	-1112(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB1_38:                               # %if.end.59
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_39
.LBB1_39:                               # %do.end.60
                                        #   in Loop: Header=BB1_34 Depth=1
	leaq	-1128(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1112(%rbp), %rdi
	callq	g_filename_from_uri
	movq	%rax, -1120(%rbp)
	cmpq	$0, -1120(%rbp)
	je	.LBB1_41
# BB#40:                                # %if.then.63
                                        #   in Loop: Header=BB1_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-1120(%rbp), %rdi
	movq	-1128(%rbp), %rsi
	callq	g_filename_to_uri
	movq	%rax, -1136(%rbp)
	movq	-1128(%rbp), %rdi
	callq	g_free
	movq	-1120(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_63
.LBB1_41:                               # %if.else.65
                                        #   in Loop: Header=BB1_34 Depth=1
	movl	$16, %esi
	movq	-1112(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB1_43
# BB#42:                                # %if.then.68
                                        #   in Loop: Header=BB1_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1112(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_filename_to_uri
	movq	%rax, -1136(%rbp)
	jmp	.LBB1_62
.LBB1_43:                               # %if.else.70
                                        #   in Loop: Header=BB1_34 Depth=1
	movabsq	$.L.str.7, %rsi
	movq	-1112(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movq	-1112(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB1_45
# BB#44:                                # %if.then.73
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1152(%rbp), %rax
	addq	$7, %rax
	movq	%rax, -1152(%rbp)
	jmp	.LBB1_48
.LBB1_45:                               # %if.else.75
                                        #   in Loop: Header=BB1_34 Depth=1
	movabsq	$.L.str.8, %rsi
	movq	-1112(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB1_47
# BB#46:                                # %if.then.78
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1152(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -1152(%rbp)
.LBB1_47:                               # %if.end.80
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_48
.LBB1_48:                               # %if.end.81
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1152(%rbp), %rax
	cmpq	-1112(%rbp), %rax
	je	.LBB1_60
# BB#49:                                # %if.then.84
                                        #   in Loop: Header=BB1_34 Depth=1
	movabsq	$.L.str.9, %rsi
	movq	-1112(%rbp), %rdi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB1_53
# BB#50:                                # %if.then.87
                                        #   in Loop: Header=BB1_34 Depth=1
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movabsq	$.L.str.10, %rdx
	xorl	%ecx, %ecx
	movq	-1152(%rbp), %rdi
	callq	gimp_unescape_uri_string
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -1160(%rbp)
	movq	-1160(%rbp), %rdi
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	movq	-1200(%rbp), %r8        # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, -1168(%rbp)
	cmpq	$0, -1168(%rbp)
	je	.LBB1_52
# BB#51:                                # %if.then.91
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1160(%rbp), %rdi
	callq	g_free
	movq	-1168(%rbp), %rdi
	movq	%rdi, -1160(%rbp)
.LBB1_52:                               # %if.end.92
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_54
.LBB1_53:                               # %if.else.93
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1152(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -1160(%rbp)
.LBB1_54:                               # %if.end.95
                                        #   in Loop: Header=BB1_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-1144(%rbp), %rdx
	movq	-1160(%rbp), %rdi
	callq	g_filename_to_uri
	movq	%rax, -1136(%rbp)
	cmpq	$0, -1136(%rbp)
	jne	.LBB1_59
# BB#55:                                # %if.then.98
                                        #   in Loop: Header=BB1_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-1160(%rbp), %rdi
	callq	g_strescape
	movabsq	$.L.str.11, %rdi
	movq	%rax, -1176(%rbp)
	callq	gettext
	movq	-1176(%rbp), %rsi
	movq	-1144(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	movq	%rsi, -1216(%rbp)       # 8-byte Spill
	je	.LBB1_57
# BB#56:                                # %cond.true
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB1_58
.LBB1_57:                               # %cond.false
                                        #   in Loop: Header=BB1_34 Depth=1
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB1_58:                               # %cond.end
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	-1216(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	-1176(%rbp), %rdi
	callq	g_free
	leaq	-1144(%rbp), %rdi
	callq	g_clear_error
	movq	-1160(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_64
.LBB1_59:                               # %if.end.104
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1160(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_61
.LBB1_60:                               # %if.else.105
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1112(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -1136(%rbp)
.LBB1_61:                               # %if.end.107
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_62
.LBB1_62:                               # %if.end.108
                                        #   in Loop: Header=BB1_34 Depth=1
	jmp	.LBB1_63
.LBB1_63:                               # %if.end.109
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-32(%rbp), %rdi
	movq	-1136(%rbp), %rsi
	callq	g_list_prepend
	movq	%rax, -32(%rbp)
.LBB1_64:                               # %for.inc
                                        #   in Loop: Header=BB1_34 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB1_66
# BB#65:                                # %cond.true.112
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB1_67
.LBB1_66:                               # %cond.false.113
                                        #   in Loop: Header=BB1_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB1_67
.LBB1_67:                               # %cond.end.114
                                        #   in Loop: Header=BB1_34 Depth=1
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB1_34
.LBB1_68:                               # %for.end
	movabsq	$g_free, %rsi
	movq	-24(%rbp), %rdi
	callq	g_list_free_full
	movq	-32(%rbp), %rsi
	movq	%rsi, -8(%rbp)
.LBB1_69:                               # %return
	movq	-8(%rbp), %rax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_selection_data_get_uri_list, .Lfunc_end1-gimp_selection_data_get_uri_list
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB2_2
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
.LBB2_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_warning, .Lfunc_end2-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_unescape_uri_string,@function
gimp_unescape_uri_string:               # @gimp_unescape_uri_string
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_27
.LBB3_2:                                # %if.end
	cmpl	$0, -20(%rbp)
	jge	.LBB3_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB3_4:                                # %if.end.3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, -56(%rbp)
.LBB3_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB3_19
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$37, -76(%rbp)
	jne	.LBB3_17
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$3, %rax
	cmpq	-56(%rbp), %rax
	jbe	.LBB3_9
# BB#8:                                 # %if.then.15
	jmp	.LBB3_19
.LBB3_9:                                # %if.end.16
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	unescape_character
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jg	.LBB3_11
# BB#10:                                # %if.then.21
	jmp	.LBB3_19
.LBB3_11:                               # %if.end.22
                                        #   in Loop: Header=BB3_5 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB3_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_5 Depth=1
	cmpl	$127, -76(%rbp)
	jg	.LBB3_14
# BB#13:                                # %if.then.25
	jmp	.LBB3_19
.LBB3_14:                               # %if.end.26
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-32(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB3_16
# BB#15:                                # %if.then.30
	jmp	.LBB3_19
.LBB3_16:                               # %if.end.31
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB3_17:                               # %if.end.33
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
	movb	%cl, (%rdx)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_5
.LBB3_19:                               # %for.end
	jmp	.LBB3_20
.LBB3_20:                               # %do.body
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB3_22
# BB#21:                                # %if.then.39
	jmp	.LBB3_23
.LBB3_22:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.37, %rsi
	movl	$846, %edx              # imm = 0x34E
	movabsq	$.L__func__.gimp_unescape_uri_string, %rcx
	movabsq	$.L.str.38, %r8
	callq	g_assertion_message_expr
.LBB3_23:                               # %if.end.40
	jmp	.LBB3_24
.LBB3_24:                               # %do.end
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB3_26
# BB#25:                                # %if.then.43
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB3_27
.LBB3_26:                               # %if.end.44
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_unescape_uri_string, .Lfunc_end3-gimp_unescape_uri_string
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_message, .Lfunc_end4-g_message
	.cfi_endproc

	.globl	gimp_selection_data_set_color
	.align	16, 0x90
	.type	gimp_selection_data_set_color,@function
gimp_selection_data_set_color:          # @gimp_selection_data_set_color
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_color, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_11
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_color, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_11
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	leaq	-25(%rbp), %rsi
	leaq	-26(%rbp), %rdx
	leaq	-27(%rbp), %rcx
	leaq	-28(%rbp), %r8
	movq	-16(%rbp), %rdi
	callq	gimp_rgba_get_uchar
	movzbl	-25(%rbp), %eax
	movzbl	-25(%rbp), %r9d
	shll	$8, %r9d
	addl	%r9d, %eax
	movw	%ax, %r10w
	movw	%r10w, -24(%rbp)
	movzbl	-26(%rbp), %eax
	movzbl	-26(%rbp), %r9d
	shll	$8, %r9d
	addl	%r9d, %eax
	movw	%ax, %r10w
	movw	%r10w, -22(%rbp)
	movzbl	-27(%rbp), %eax
	movzbl	-27(%rbp), %r9d
	shll	$8, %r9d
	addl	%r9d, %eax
	movw	%ax, %r10w
	movw	%r10w, -20(%rbp)
	movzbl	-28(%rbp), %eax
	movzbl	-28(%rbp), %r9d
	shll	$8, %r9d
	addl	%r9d, %eax
	movw	%ax, %r10w
	movw	%r10w, -18(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	gtk_selection_data_get_target
	movl	$16, %edx
	movl	$8, %r8d
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_selection_data_set
.LBB5_11:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_selection_data_set_color, .Lfunc_end5-gimp_selection_data_set_color
	.cfi_endproc

	.globl	gimp_selection_data_get_color
	.align	16, 0x90
	.type	gimp_selection_data_get_color,@function
gimp_selection_data_get_color:          # @gimp_selection_data_get_color
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_color, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_14
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_color, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_14
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_format
	cmpl	$16, %eax
	jne	.LBB6_12
# BB#11:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_length
	cmpl	$8, %eax
	je	.LBB6_13
.LBB6_12:                               # %if.then.10
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_14
.LBB6_13:                               # %if.end.11
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_data
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %sil
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rax
	movzwl	6(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %r9b
	movzbl	%dl, %ecx
	movb	%sil, -33(%rbp)         # 1-byte Spill
	movl	%ecx, %esi
	movb	-33(%rbp), %dl          # 1-byte Reload
	movzbl	%dl, %edx
	movzbl	%r8b, %ecx
	movzbl	%r9b, %r8d
	callq	gimp_rgba_set_uchar
	movl	$1, -4(%rbp)
.LBB6_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_selection_data_get_color, .Lfunc_end6-gimp_selection_data_get_color
	.cfi_endproc

	.globl	gimp_selection_data_set_stream
	.align	16, 0x90
	.type	gimp_selection_data_set_stream,@function
gimp_selection_data_set_stream:         # @gimp_selection_data_set_stream
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_stream, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_16
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.3
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_stream, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_16
.LBB7_9:                                # %if.end.5
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.6
	jmp	.LBB7_11
.LBB7_11:                               # %do.body.7
	cmpq	$0, -24(%rbp)
	jbe	.LBB7_13
# BB#12:                                # %if.then.9
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_stream, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_16
.LBB7_14:                               # %if.end.11
	jmp	.LBB7_15
.LBB7_15:                               # %do.end.12
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	%edi, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-36(%rbp), %r8d         # 4-byte Reload
	callq	gtk_selection_data_set
.LBB7_16:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_selection_data_set_stream, .Lfunc_end7-gimp_selection_data_set_stream
	.cfi_endproc

	.globl	gimp_selection_data_get_stream
	.align	16, 0x90
	.type	gimp_selection_data_get_stream,@function
gimp_selection_data_get_stream:         # @gimp_selection_data_get_stream
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_stream, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_14
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.3
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_stream, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_14
.LBB8_9:                                # %if.end.5
	jmp	.LBB8_10
.LBB8_10:                               # %do.end.6
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_length
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_format
	cmpl	$8, %eax
	jne	.LBB8_12
# BB#11:                                # %lor.lhs.false
	cmpl	$1, -28(%rbp)
	jge	.LBB8_13
.LBB8_12:                               # %if.then.10
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_14
.LBB8_13:                               # %if.end.11
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_data
	movq	%rax, -8(%rbp)
.LBB8_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_selection_data_get_stream, .Lfunc_end8-gimp_selection_data_get_stream
	.cfi_endproc

	.globl	gimp_selection_data_set_curve
	.align	16, 0x90
	.type	gimp_selection_data_set_curve,@function
gimp_selection_data_set_curve:          # @gimp_selection_data_set_curve
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_curve, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_18
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curve_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_8
# BB#7:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB9_13
.LBB9_8:                                # %if.else.3
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_11
# BB#10:                                # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB9_12
.LBB9_11:                               # %if.else.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_12:                               # %if.end.10
	jmp	.LBB9_13
.LBB9_13:                               # %if.end.11
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_curve, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_18
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_string
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_selection_data_set
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB9_18:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_selection_data_set_curve, .Lfunc_end9-gimp_selection_data_set_curve
	.cfi_endproc

	.globl	gimp_selection_data_get_curve
	.align	16, 0x90
	.type	gimp_selection_data_get_curve,@function
gimp_selection_data_get_curve:          # @gimp_selection_data_get_curve
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
	movq	%rdi, -16(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_curve, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_11
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_length
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_format
	cmpl	$8, %eax
	jne	.LBB10_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$1, -28(%rbp)
	jge	.LBB10_8
.LBB10_7:                               # %if.then.4
	movabsq	$.L.str.20, %rdi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_11
.LBB10_8:                               # %if.end.5
	movabsq	$.L.str.21, %rdi
	callq	gimp_curve_new
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_selection_data_get_data
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-40(%rbp), %r8
	movl	-28(%rbp), %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_deserialize_string
	cmpl	$0, %eax
	jne	.LBB10_10
# BB#9:                                 # %if.then.13
	movabsq	$.L.str.22, %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	$0, -8(%rbp)
	jmp	.LBB10_11
.LBB10_10:                              # %if.end.14
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_selection_data_get_curve, .Lfunc_end10-gimp_selection_data_get_curve
	.cfi_endproc

	.globl	gimp_selection_data_set_image
	.align	16, 0x90
	.type	gimp_selection_data_set_image,@function
gimp_selection_data_set_image:          # @gimp_selection_data_set_image
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
	cmpq	$0, -8(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_image, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_18
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	jmp	.LBB11_6
.LBB11_6:                               # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_8
# BB#7:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB11_13
.LBB11_8:                               # %if.else.3
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_11
# BB#10:                                # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB11_12
.LBB11_11:                              # %if.else.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_12:                              # %if.end.10
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.11
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_image, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_18
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	callq	get_pid
	movq	-16(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_get_ID
	movabsq	$.L.str.24, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_selection_data_set
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB11_18:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_selection_data_set_image, .Lfunc_end11-gimp_selection_data_set_image
	.cfi_endproc

	.globl	gimp_selection_data_get_image
	.align	16, 0x90
	.type	gimp_selection_data_get_image,@function
gimp_selection_data_get_image:          # @gimp_selection_data_get_image
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_image, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_23
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_image, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_23
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movabsq	$.L__func__.gimp_selection_data_get_image, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_selection_data_get_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_22
# BB#18:                                # %if.then.19
	movabsq	$.L.str.26, %rsi
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB12_21
# BB#19:                                # %land.lhs.true.24
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	get_pid
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB12_21
# BB#20:                                # %if.then.27
	movq	-24(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	gimp_image_get_by_ID
	movq	%rax, -8(%rbp)
	jmp	.LBB12_23
.LBB12_21:                              # %if.end.29
	jmp	.LBB12_22
.LBB12_22:                              # %if.end.30
	movq	$0, -8(%rbp)
.LBB12_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_selection_data_get_image, .Lfunc_end12-gimp_selection_data_get_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_data_get_name,@function
gimp_selection_data_get_name:           # @gimp_selection_data_get_name
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_format
	cmpl	$8, %eax
	jne	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_length
	cmpl	$1, %eax
	jge	.LBB13_3
.LBB13_2:                               # %if.then
	movabsq	$.L.str.32, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_10
.LBB13_3:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_data
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB13_5
# BB#4:                                 # %if.then.5
	movabsq	$.L.str.33, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_10
.LBB13_5:                               # %if.end.6
	jmp	.LBB13_6
.LBB13_6:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB13_8
# BB#7:                                 # %if.then.8
	movl	$4, %edi
	movabsq	$.L__func__.gimp_selection_data_get_name, %rsi
	movl	$727, %edx              # imm = 0x2D7
	movabsq	$.L.str.34, %rcx
	movq	-32(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB13_8:                               # %if.end.9
	jmp	.LBB13_9
.LBB13_9:                               # %do.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_selection_data_get_name, .Lfunc_end13-gimp_selection_data_get_name
	.cfi_endproc

	.globl	gimp_selection_data_set_component
	.align	16, 0x90
	.type	gimp_selection_data_set_component,@function
gimp_selection_data_set_component:      # @gimp_selection_data_set_component
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_component, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_18
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_8
# BB#7:                                 # %if.then.2
	movl	$0, -52(%rbp)
	jmp	.LBB14_13
.LBB14_8:                               # %if.else.3
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_11
# BB#9:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_11
# BB#10:                                # %if.then.7
	movl	$1, -52(%rbp)
	jmp	.LBB14_12
.LBB14_11:                              # %if.else.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_12:                              # %if.end.10
	jmp	.LBB14_13
.LBB14_13:                              # %if.end.11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_15
# BB#14:                                # %if.then.13
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_component, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_18
.LBB14_16:                              # %if.end.15
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.16
	callq	get_pid
	movq	-16(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_image_get_ID
	movabsq	$.L.str.27, %rdi
	movl	-20(%rbp), %ecx
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	-84(%rbp), %r8d         # 4-byte Reload
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_selection_data_set
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB14_18:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_selection_data_set_component, .Lfunc_end14-gimp_selection_data_set_component
	.cfi_endproc

	.globl	gimp_selection_data_get_component
	.align	16, 0x90
	.type	gimp_selection_data_get_component,@function
gimp_selection_data_get_component:      # @gimp_selection_data_get_component
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_component, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_28
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_component, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_28
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	cmpq	$0, -32(%rbp)
	je	.LBB15_19
# BB#18:                                # %if.then.18
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB15_19:                              # %if.end.19
	movabsq	$.L__func__.gimp_selection_data_get_component, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_selection_data_get_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB15_27
# BB#20:                                # %if.then.22
	movabsq	$.L.str.28, %rsi
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-76(%rbp), %r8
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	jne	.LBB15_26
# BB#21:                                # %land.lhs.true.28
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	get_pid
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB15_26
# BB#22:                                # %if.then.31
	movq	-24(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	gimp_image_get_by_ID
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB15_25
# BB#23:                                # %land.lhs.true.35
	cmpq	$0, -32(%rbp)
	je	.LBB15_25
# BB#24:                                # %if.then.37
	movl	-76(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB15_25:                              # %if.end.38
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_28
.LBB15_26:                              # %if.end.39
	jmp	.LBB15_27
.LBB15_27:                              # %if.end.40
	movq	$0, -8(%rbp)
.LBB15_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_selection_data_get_component, .Lfunc_end15-gimp_selection_data_get_component
	.cfi_endproc

	.globl	gimp_selection_data_set_item
	.align	16, 0x90
	.type	gimp_selection_data_set_item,@function
gimp_selection_data_set_item:           # @gimp_selection_data_set_item
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_item, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_18
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	jmp	.LBB16_6
.LBB16_6:                               # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_8
# BB#7:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB16_13
.LBB16_8:                               # %if.else.3
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_11
# BB#10:                                # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB16_12
.LBB16_11:                              # %if.else.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_12:                              # %if.end.10
	jmp	.LBB16_13
.LBB16_13:                              # %if.end.11
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_15
# BB#14:                                # %if.then.13
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_item, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_18
.LBB16_16:                              # %if.end.15
	jmp	.LBB16_17
.LBB16_17:                              # %do.end.16
	callq	get_pid
	movq	-16(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_item_get_ID
	movabsq	$.L.str.24, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_selection_data_set
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB16_18:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_selection_data_set_item, .Lfunc_end16-gimp_selection_data_set_item
	.cfi_endproc

	.globl	gimp_selection_data_get_item
	.align	16, 0x90
	.type	gimp_selection_data_get_item,@function
gimp_selection_data_get_item:           # @gimp_selection_data_get_item
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_item, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_23
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB17_15
# BB#14:                                # %if.then.13
	jmp	.LBB17_16
.LBB17_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_item, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_23
.LBB17_16:                              # %if.end.15
	jmp	.LBB17_17
.LBB17_17:                              # %do.end.16
	movabsq	$.L__func__.gimp_selection_data_get_item, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_selection_data_get_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_22
# BB#18:                                # %if.then.19
	movabsq	$.L.str.26, %rsi
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB17_21
# BB#19:                                # %land.lhs.true.24
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	get_pid
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB17_21
# BB#20:                                # %if.then.27
	movq	-24(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -8(%rbp)
	jmp	.LBB17_23
.LBB17_21:                              # %if.end.29
	jmp	.LBB17_22
.LBB17_22:                              # %if.end.30
	movq	$0, -8(%rbp)
.LBB17_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_selection_data_get_item, .Lfunc_end17-gimp_selection_data_get_item
	.cfi_endproc

	.globl	gimp_selection_data_set_object
	.align	16, 0x90
	.type	gimp_selection_data_set_object,@function
gimp_selection_data_set_object:         # @gimp_selection_data_set_object
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_object, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_19
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	jmp	.LBB18_6
.LBB18_6:                               # %do.body.1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_8
# BB#7:                                 # %if.then.2
	movl	$0, -44(%rbp)
	jmp	.LBB18_13
.LBB18_8:                               # %if.else.3
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_11
# BB#10:                                # %if.then.7
	movl	$1, -44(%rbp)
	jmp	.LBB18_12
.LBB18_11:                              # %if.else.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB18_12:                              # %if.end.10
	jmp	.LBB18_13
.LBB18_13:                              # %if.end.11
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_15
# BB#14:                                # %if.then.13
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_set_object, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_19
.LBB18_16:                              # %if.end.15
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB18_19
# BB#18:                                # %if.then.19
	callq	get_pid
	movabsq	$.L.str.31, %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movq	-56(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_selection_data_set
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB18_19:                              # %if.end.25
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_selection_data_set_object, .Lfunc_end18-gimp_selection_data_set_object
	.cfi_endproc

	.globl	gimp_selection_data_get_brush
	.align	16, 0x90
	.type	gimp_selection_data_get_brush,@function
gimp_selection_data_get_brush:          # @gimp_selection_data_get_brush
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_brush, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_18
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB19_15
# BB#14:                                # %if.then.13
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_brush, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_18
.LBB19_16:                              # %if.end.15
	jmp	.LBB19_17
.LBB19_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_brush_get_standard
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB19_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_selection_data_get_brush, .Lfunc_end19-gimp_selection_data_get_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_data_get_object,@function
gimp_selection_data_get_object:         # @gimp_selection_data_get_object
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
	subq	$112, %rsp
	movabsq	$.L__func__.gimp_selection_data_get_object, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_selection_data_get_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB20_17
# BB#1:                                 # %if.then
	movabsq	$.L.str.35, %rsi
	leaq	-44(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-60(%rbp), %r8
	movl	$0, -60(%rbp)
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jl	.LBB20_16
# BB#2:                                 # %land.lhs.true
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	get_pid
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB20_16
# BB#3:                                 # %land.lhs.true.4
	cmpl	$0, -60(%rbp)
	jle	.LBB20_16
# BB#4:                                 # %if.then.6
	movq	-40(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
# BB#5:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB20_7
# BB#6:                                 # %if.then.8
	movl	$4, %edi
	movabsq	$.L__func__.gimp_selection_data_get_object, %rsi
	movl	$753, %edx              # imm = 0x2F1
	movabsq	$.L.str.36, %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	movq	-72(%rbp), %rax
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_log
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %do.end
	cmpq	$0, -32(%rbp)
	je	.LBB20_12
# BB#9:                                 # %land.lhs.true.10
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_12
# BB#10:                                # %land.lhs.true.14
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB20_12
# BB#11:                                # %if.then.16
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_18
.LBB20_12:                              # %if.else
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rsi
	cmpq	%rsi, %rax
	jne	.LBB20_14
# BB#13:                                # %if.then.19
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_18
.LBB20_14:                              # %if.end.20
	jmp	.LBB20_15
.LBB20_15:                              # %if.end.21
	jmp	.LBB20_16
.LBB20_16:                              # %if.end.22
	jmp	.LBB20_17
.LBB20_17:                              # %if.end.23
	movq	$0, -8(%rbp)
.LBB20_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_selection_data_get_object, .Lfunc_end20-gimp_selection_data_get_object
	.cfi_endproc

	.globl	gimp_selection_data_get_pattern
	.align	16, 0x90
	.type	gimp_selection_data_get_pattern,@function
gimp_selection_data_get_pattern:        # @gimp_selection_data_get_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_pattern, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_18
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	jmp	.LBB21_13
.LBB21_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB21_15
# BB#14:                                # %if.then.13
	jmp	.LBB21_16
.LBB21_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_pattern, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_18
.LBB21_16:                              # %if.end.15
	jmp	.LBB21_17
.LBB21_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_pattern_get_standard
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB21_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_selection_data_get_pattern, .Lfunc_end21-gimp_selection_data_get_pattern
	.cfi_endproc

	.globl	gimp_selection_data_get_gradient
	.align	16, 0x90
	.type	gimp_selection_data_get_gradient,@function
gimp_selection_data_get_gradient:       # @gimp_selection_data_get_gradient
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_gradient, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_18
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB22_15
# BB#14:                                # %if.then.13
	jmp	.LBB22_16
.LBB22_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_gradient, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_18
.LBB22_16:                              # %if.end.15
	jmp	.LBB22_17
.LBB22_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_gradient_get_standard
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB22_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_selection_data_get_gradient, .Lfunc_end22-gimp_selection_data_get_gradient
	.cfi_endproc

	.globl	gimp_selection_data_get_palette
	.align	16, 0x90
	.type	gimp_selection_data_get_palette,@function
gimp_selection_data_get_palette:        # @gimp_selection_data_get_palette
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_palette, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_18
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB23_15
# BB#14:                                # %if.then.13
	jmp	.LBB23_16
.LBB23_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_palette, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_18
.LBB23_16:                              # %if.end.15
	jmp	.LBB23_17
.LBB23_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_data_factory_get_container
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_palette_get_standard
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB23_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_selection_data_get_palette, .Lfunc_end23-gimp_selection_data_get_palette
	.cfi_endproc

	.globl	gimp_selection_data_get_font
	.align	16, 0x90
	.type	gimp_selection_data_get_font,@function
gimp_selection_data_get_font:           # @gimp_selection_data_get_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_font, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_18
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_font, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB24_18
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	456(%rax), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_font_get_standard
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB24_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_selection_data_get_font, .Lfunc_end24-gimp_selection_data_get_font
	.cfi_endproc

	.globl	gimp_selection_data_get_buffer
	.align	16, 0x90
	.type	gimp_selection_data_get_buffer,@function
gimp_selection_data_get_buffer:         # @gimp_selection_data_get_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_buffer, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_18
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB25_15
# BB#14:                                # %if.then.13
	jmp	.LBB25_16
.LBB25_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_buffer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_18
.LBB25_16:                              # %if.end.15
	jmp	.LBB25_17
.LBB25_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	448(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB25_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_selection_data_get_buffer, .Lfunc_end25-gimp_selection_data_get_buffer
	.cfi_endproc

	.globl	gimp_selection_data_get_imagefile
	.align	16, 0x90
	.type	gimp_selection_data_get_imagefile,@function
gimp_selection_data_get_imagefile:      # @gimp_selection_data_get_imagefile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_imagefile, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_18
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	jmp	.LBB26_13
.LBB26_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB26_15
# BB#14:                                # %if.then.13
	jmp	.LBB26_16
.LBB26_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_imagefile, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB26_18
.LBB26_16:                              # %if.end.15
	jmp	.LBB26_17
.LBB26_17:                              # %do.end.16
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	544(%rcx), %rsi
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB26_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_selection_data_get_imagefile, .Lfunc_end26-gimp_selection_data_get_imagefile
	.cfi_endproc

	.globl	gimp_selection_data_get_template
	.align	16, 0x90
	.type	gimp_selection_data_get_template,@function
gimp_selection_data_get_template:       # @gimp_selection_data_get_template
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_template, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB27_18
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB27_15
# BB#14:                                # %if.then.13
	jmp	.LBB27_16
.LBB27_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_template, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB27_18
.LBB27_16:                              # %if.end.15
	jmp	.LBB27_17
.LBB27_17:                              # %do.end.16
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	552(%rcx), %rsi
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB27_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_selection_data_get_template, .Lfunc_end27-gimp_selection_data_get_template
	.cfi_endproc

	.globl	gimp_selection_data_get_tool_info
	.align	16, 0x90
	.type	gimp_selection_data_get_tool_info,@function
gimp_selection_data_get_tool_info:      # @gimp_selection_data_get_tool_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_tool_info, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_18
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB28_15
# BB#14:                                # %if.then.13
	jmp	.LBB28_16
.LBB28_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_selection_data_get_tool_info, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_18
.LBB28_16:                              # %if.end.15
	jmp	.LBB28_17
.LBB28_17:                              # %do.end.16
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	528(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_standard
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_selection_data_get_object
	movq	%rax, -8(%rbp)
.LBB28_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_selection_data_get_tool_info, .Lfunc_end28-gimp_selection_data_get_tool_info
	.cfi_endproc

	.align	16, 0x90
	.type	unescape_character,@function
unescape_character:                     # @unescape_character
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	(%rdi), %edi
	callq	g_ascii_xdigit_value
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB29_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB29_5
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %edi
	callq	g_ascii_xdigit_value
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB29_4
# BB#3:                                 # %if.then.4
	movl	$-1, -4(%rbp)
	jmp	.LBB29_5
.LBB29_4:                               # %if.end.5
	movl	-20(%rbp), %eax
	shll	$4, %eax
	orl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB29_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	unescape_character, .Lfunc_end29-unescape_character
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_selection_data_set_uri_list,@object # @__func__.gimp_selection_data_set_uri_list
.L__func__.gimp_selection_data_set_uri_list:
	.asciz	"gimp_selection_data_set_uri_list"
	.size	.L__func__.gimp_selection_data_set_uri_list, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"selection != NULL"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"uri_list != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	.L__func__.gimp_selection_data_get_uri_list,@object # @__func__.gimp_selection_data_get_uri_list
.L__func__.gimp_selection_data_get_uri_list:
	.asciz	"gimp_selection_data_get_uri_list"
	.size	.L__func__.gimp_selection_data_get_uri_list, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Received invalid file data!"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"raw buffer >>%s<<"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"trying to convert \"%s\" to an uri"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"file://"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file:"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The filename '%s' couldn't be converted to a valid URI:\n\n%s"
	.size	.L.str.11, 60

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Invalid UTF-8"
	.size	.L.str.12, 14

	.type	.L__func__.gimp_selection_data_set_color,@object # @__func__.gimp_selection_data_set_color
.L__func__.gimp_selection_data_set_color:
	.asciz	"gimp_selection_data_set_color"
	.size	.L__func__.gimp_selection_data_set_color, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"color != NULL"
	.size	.L.str.13, 14

	.type	.L__func__.gimp_selection_data_get_color,@object # @__func__.gimp_selection_data_get_color
.L__func__.gimp_selection_data_get_color:
	.asciz	"gimp_selection_data_get_color"
	.size	.L__func__.gimp_selection_data_get_color, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Received invalid color data!"
	.size	.L.str.14, 29

	.type	.L__func__.gimp_selection_data_set_stream,@object # @__func__.gimp_selection_data_set_stream
.L__func__.gimp_selection_data_set_stream:
	.asciz	"gimp_selection_data_set_stream"
	.size	.L__func__.gimp_selection_data_set_stream, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"stream != NULL"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"stream_length > 0"
	.size	.L.str.16, 18

	.type	.L__func__.gimp_selection_data_get_stream,@object # @__func__.gimp_selection_data_get_stream
.L__func__.gimp_selection_data_get_stream:
	.asciz	"gimp_selection_data_get_stream"
	.size	.L__func__.gimp_selection_data_get_stream, 31

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"stream_length != NULL"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Received invalid data stream!"
	.size	.L.str.18, 30

	.type	.L__func__.gimp_selection_data_set_curve,@object # @__func__.gimp_selection_data_set_curve
.L__func__.gimp_selection_data_set_curve:
	.asciz	"gimp_selection_data_set_curve"
	.size	.L__func__.gimp_selection_data_set_curve, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIMP_IS_CURVE (curve)"
	.size	.L.str.19, 22

	.type	.L__func__.gimp_selection_data_get_curve,@object # @__func__.gimp_selection_data_get_curve
.L__func__.gimp_selection_data_get_curve:
	.asciz	"gimp_selection_data_get_curve"
	.size	.L__func__.gimp_selection_data_get_curve, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Received invalid curve data!"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pasted curve"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Received invalid curve data: %s"
	.size	.L.str.22, 32

	.type	.L__func__.gimp_selection_data_set_image,@object # @__func__.gimp_selection_data_set_image
.L__func__.gimp_selection_data_set_image:
	.asciz	"gimp_selection_data_set_image"
	.size	.L__func__.gimp_selection_data_set_image, 30

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%d:%d"
	.size	.L.str.24, 6

	.type	.L__func__.gimp_selection_data_get_image,@object # @__func__.gimp_selection_data_get_image
.L__func__.gimp_selection_data_get_image:
	.asciz	"gimp_selection_data_get_image"
	.size	.L__func__.gimp_selection_data_get_image, 30

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%i:%i"
	.size	.L.str.26, 6

	.type	.L__func__.gimp_selection_data_set_component,@object # @__func__.gimp_selection_data_set_component
.L__func__.gimp_selection_data_set_component:
	.asciz	"gimp_selection_data_set_component"
	.size	.L__func__.gimp_selection_data_set_component, 34

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%d:%d:%d"
	.size	.L.str.27, 9

	.type	.L__func__.gimp_selection_data_get_component,@object # @__func__.gimp_selection_data_get_component
.L__func__.gimp_selection_data_get_component:
	.asciz	"gimp_selection_data_get_component"
	.size	.L__func__.gimp_selection_data_get_component, 34

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%i:%i:%i"
	.size	.L.str.28, 9

	.type	.L__func__.gimp_selection_data_set_item,@object # @__func__.gimp_selection_data_set_item
.L__func__.gimp_selection_data_set_item:
	.asciz	"gimp_selection_data_set_item"
	.size	.L__func__.gimp_selection_data_set_item, 29

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.29, 20

	.type	.L__func__.gimp_selection_data_get_item,@object # @__func__.gimp_selection_data_get_item
.L__func__.gimp_selection_data_get_item:
	.asciz	"gimp_selection_data_get_item"
	.size	.L__func__.gimp_selection_data_get_item, 29

	.type	.L__func__.gimp_selection_data_set_object,@object # @__func__.gimp_selection_data_set_object
.L__func__.gimp_selection_data_set_object:
	.asciz	"gimp_selection_data_set_object"
	.size	.L__func__.gimp_selection_data_set_object, 31

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"GIMP_IS_OBJECT (object)"
	.size	.L.str.30, 24

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%d:%p:%s"
	.size	.L.str.31, 9

	.type	.L__func__.gimp_selection_data_get_brush,@object # @__func__.gimp_selection_data_get_brush
.L__func__.gimp_selection_data_get_brush:
	.asciz	"gimp_selection_data_get_brush"
	.size	.L__func__.gimp_selection_data_get_brush, 30

	.type	.L__func__.gimp_selection_data_get_pattern,@object # @__func__.gimp_selection_data_get_pattern
.L__func__.gimp_selection_data_get_pattern:
	.asciz	"gimp_selection_data_get_pattern"
	.size	.L__func__.gimp_selection_data_get_pattern, 32

	.type	.L__func__.gimp_selection_data_get_gradient,@object # @__func__.gimp_selection_data_get_gradient
.L__func__.gimp_selection_data_get_gradient:
	.asciz	"gimp_selection_data_get_gradient"
	.size	.L__func__.gimp_selection_data_get_gradient, 33

	.type	.L__func__.gimp_selection_data_get_palette,@object # @__func__.gimp_selection_data_get_palette
.L__func__.gimp_selection_data_get_palette:
	.asciz	"gimp_selection_data_get_palette"
	.size	.L__func__.gimp_selection_data_get_palette, 32

	.type	.L__func__.gimp_selection_data_get_font,@object # @__func__.gimp_selection_data_get_font
.L__func__.gimp_selection_data_get_font:
	.asciz	"gimp_selection_data_get_font"
	.size	.L__func__.gimp_selection_data_get_font, 29

	.type	.L__func__.gimp_selection_data_get_buffer,@object # @__func__.gimp_selection_data_get_buffer
.L__func__.gimp_selection_data_get_buffer:
	.asciz	"gimp_selection_data_get_buffer"
	.size	.L__func__.gimp_selection_data_get_buffer, 31

	.type	.L__func__.gimp_selection_data_get_imagefile,@object # @__func__.gimp_selection_data_get_imagefile
.L__func__.gimp_selection_data_get_imagefile:
	.asciz	"gimp_selection_data_get_imagefile"
	.size	.L__func__.gimp_selection_data_get_imagefile, 34

	.type	.L__func__.gimp_selection_data_get_template,@object # @__func__.gimp_selection_data_get_template
.L__func__.gimp_selection_data_get_template:
	.asciz	"gimp_selection_data_get_template"
	.size	.L__func__.gimp_selection_data_get_template, 33

	.type	.L__func__.gimp_selection_data_get_tool_info,@object # @__func__.gimp_selection_data_get_tool_info
.L__func__.gimp_selection_data_get_tool_info:
	.asciz	"gimp_selection_data_get_tool_info"
	.size	.L__func__.gimp_selection_data_get_tool_info, 34

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s: received invalid selection data"
	.size	.L.str.32, 36

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s: received invalid selection data (doesn't validate as UTF-8)"
	.size	.L.str.33, 64

	.type	.L__func__.gimp_selection_data_get_name,@object # @__func__.gimp_selection_data_get_name
.L__func__.gimp_selection_data_get_name:
	.asciz	"gimp_selection_data_get_name"
	.size	.L__func__.gimp_selection_data_get_name, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"name = '%s'"
	.size	.L.str.34, 12

	.type	.L__func__.gimp_selection_data_get_object,@object # @__func__.gimp_selection_data_get_object
.L__func__.gimp_selection_data_get_object:
	.asciz	"gimp_selection_data_get_object"
	.size	.L__func__.gimp_selection_data_get_object, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%i:%p:%n"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"pid = %d, addr = %p, name = '%s'"
	.size	.L.str.36, 33

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimpselectiondata.c"
	.size	.L.str.37, 20

	.type	.L__func__.gimp_unescape_uri_string,@object # @__func__.gimp_unescape_uri_string
.L__func__.gimp_unescape_uri_string:
	.asciz	"gimp_unescape_uri_string"
	.size	.L__func__.gimp_unescape_uri_string, 25

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"out - result <= len"
	.size	.L.str.38, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
