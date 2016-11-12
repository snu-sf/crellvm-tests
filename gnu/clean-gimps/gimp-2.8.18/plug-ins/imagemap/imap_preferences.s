	.text
	.file	"imap_preferences.bc"
	.globl	preferences_load
	.align	16, 0x90
	.type	preferences_load,@function
preferences_load:                       # @preferences_load
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
	subq	$304, %rsp              # imm = 0x130
	movabsq	$.L.str, %rax
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str.1, %rsi
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	movq	-296(%rbp), %rdi
	callq	g_free
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#1:                                 # %if.then
	jmp	.LBB0_2
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$256, %esi              # imm = 0x100
	leaq	-288(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB0_7
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movsbl	-288(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	movsbl	-288(%rbp), %eax
	cmpl	$35, %eax
	je	.LBB0_6
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	-288(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	parse_line
.LBB0_6:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_7:                                # %while.end
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %if.end.13
	movl	$0, -4(%rbp)
.LBB0_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end0:
	.size	preferences_load, .Lfunc_end0-preferences_load
	.cfi_endproc

	.align	16, 0x90
	.type	parse_line,@function
parse_line:                             # @parse_line
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
	movabsq	$.L.str.24, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$48, %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	strtok
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.25, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	parse_map_type
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB1_52
.LBB1_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then.6
	callq	parse_yes_no
	movq	-8(%rbp), %rcx
	movl	%eax, 4(%rcx)
	jmp	.LBB1_51
.LBB1_4:                                # %if.else.8
	movq	-24(%rbp), %rdi
	movl	$.L.str.27, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.11
	callq	parse_yes_no
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB1_50
.LBB1_6:                                # %if.else.13
	movq	-24(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.16
	callq	parse_yes_no
	movq	-8(%rbp), %rcx
	movl	%eax, 12(%rcx)
	jmp	.LBB1_49
.LBB1_8:                                # %if.else.18
	movq	-24(%rbp), %rdi
	movl	$.L.str.29, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.21
	callq	parse_yes_no
	movq	-8(%rbp), %rcx
	movl	%eax, 16(%rcx)
	jmp	.LBB1_48
.LBB1_10:                               # %if.else.23
	movq	-24(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#11:                                # %if.then.26
	callq	parse_yes_no
	movq	-8(%rbp), %rcx
	movl	%eax, 20(%rcx)
	jmp	.LBB1_47
.LBB1_12:                               # %if.else.28
	movq	-24(%rbp), %rdi
	movl	$.L.str.31, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.31
	callq	parse_yes_no
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
	jmp	.LBB1_46
.LBB1_14:                               # %if.else.33
	movq	-24(%rbp), %rdi
	movl	$.L.str.32, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#15:                                # %if.then.36
	callq	parse_int
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-8(%rbp), %rcx
	cmpl	$1, 44(%rcx)
	jge	.LBB1_17
# BB#16:                                # %if.then.39
	movq	-8(%rbp), %rax
	movl	$1, 44(%rax)
.LBB1_17:                               # %if.end
	jmp	.LBB1_45
.LBB1_18:                               # %if.else.41
	movq	-24(%rbp), %rdi
	movl	$.L.str.33, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#19:                                # %if.then.44
	callq	parse_int
	movq	-8(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-8(%rbp), %rcx
	cmpl	$1, 40(%rcx)
	jge	.LBB1_21
# BB#20:                                # %if.then.48
	movq	-8(%rbp), %rax
	movl	$1, 40(%rax)
.LBB1_21:                               # %if.end.50
	jmp	.LBB1_44
.LBB1_22:                               # %if.else.51
	movq	-24(%rbp), %rdi
	movl	$.L.str.34, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_24
# BB#23:                                # %if.then.54
	movq	-32(%rbp), %rdi
	callq	parse_color
	jmp	.LBB1_43
.LBB1_24:                               # %if.else.55
	movq	-24(%rbp), %rdi
	movl	$.L.str.35, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_26
# BB#25:                                # %if.then.58
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	callq	parse_color
	jmp	.LBB1_42
.LBB1_26:                               # %if.else.59
	movq	-24(%rbp), %rdi
	movl	$.L.str.36, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_28
# BB#27:                                # %if.then.62
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	parse_color
	jmp	.LBB1_41
.LBB1_28:                               # %if.else.63
	movq	-24(%rbp), %rdi
	movl	$.L.str.37, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_30
# BB#29:                                # %if.then.66
	movq	-32(%rbp), %rax
	addq	$36, %rax
	movq	%rax, %rdi
	callq	parse_color
	jmp	.LBB1_40
.LBB1_30:                               # %if.else.67
	movq	-24(%rbp), %rdi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_32
# BB#31:                                # %if.then.70
	movq	-32(%rbp), %rax
	addq	$60, %rax
	movq	%rax, %rdi
	callq	parse_color
	jmp	.LBB1_39
.LBB1_32:                               # %if.else.71
	movq	-24(%rbp), %rdi
	movl	$.L.str.39, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_34
# BB#33:                                # %if.then.74
	movq	-32(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	callq	parse_color
	jmp	.LBB1_38
.LBB1_34:                               # %if.else.75
	movq	-24(%rbp), %rdi
	movl	$.L.str.40, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_36
# BB#35:                                # %if.then.78
	callq	parse_mru_entry
	jmp	.LBB1_37
.LBB1_36:                               # %if.else.79
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.80
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.81
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.82
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.83
	jmp	.LBB1_41
.LBB1_41:                               # %if.end.84
	jmp	.LBB1_42
.LBB1_42:                               # %if.end.85
	jmp	.LBB1_43
.LBB1_43:                               # %if.end.86
	jmp	.LBB1_44
.LBB1_44:                               # %if.end.87
	jmp	.LBB1_45
.LBB1_45:                               # %if.end.88
	jmp	.LBB1_46
.LBB1_46:                               # %if.end.89
	jmp	.LBB1_47
.LBB1_47:                               # %if.end.90
	jmp	.LBB1_48
.LBB1_48:                               # %if.end.91
	jmp	.LBB1_49
.LBB1_49:                               # %if.end.92
	jmp	.LBB1_50
.LBB1_50:                               # %if.end.93
	jmp	.LBB1_51
.LBB1_51:                               # %if.end.94
	jmp	.LBB1_52
.LBB1_52:                               # %if.end.95
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	parse_line, .Lfunc_end1-parse_line
	.cfi_endproc

	.globl	preferences_save
	.align	16, 0x90
	.type	preferences_save,@function
preferences_save:                       # @preferences_save
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
	subq	$112, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str.2, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_8
# BB#1:                                 # %if.then
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	cmpl	$0, (%rsi)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB2_3
# BB#2:                                 # %if.then.4
	movabsq	$.L.str.4, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB2_7
.LBB2_3:                                # %if.else
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB2_5
# BB#4:                                 # %if.then.8
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %if.else.10
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB2_6:                                # %if.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end.12
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.8, %rcx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	cmpl	$0, 4(%rdx)
	cmovneq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.8, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r8
	cmpl	$0, 8(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.8, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r8
	cmpl	$0, 12(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.8, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r8
	cmpl	$0, 16(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.8, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r8
	cmpl	$0, 20(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.8, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r8
	cmpl	$0, 24(%r8)
	cmovneq	%rdx, %rcx
	movq	%rcx, %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.15, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %edx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	44(%rcx), %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.17, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movzwl	4(%rcx), %edx
	movq	-32(%rbp), %rcx
	movzwl	6(%rcx), %ecx
	movq	-32(%rbp), %r8
	movzwl	8(%r8), %r8d
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.18, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %r9
	movzwl	16(%r9), %edx
	movq	-32(%rbp), %r9
	movzwl	18(%r9), %ecx
	movq	-32(%rbp), %r9
	movzwl	20(%r9), %r8d
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.19, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %r9
	movzwl	28(%r9), %edx
	movq	-32(%rbp), %r9
	movzwl	30(%r9), %ecx
	movq	-32(%rbp), %r9
	movzwl	32(%r9), %r8d
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.20, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %r9
	movzwl	40(%r9), %edx
	movq	-32(%rbp), %r9
	movzwl	42(%r9), %ecx
	movq	-32(%rbp), %r9
	movzwl	44(%r9), %r8d
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.21, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %r9
	movzwl	64(%r9), %edx
	movq	-32(%rbp), %r9
	movzwl	66(%r9), %ecx
	movq	-32(%rbp), %r9
	movzwl	68(%r9), %r8d
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.22, %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %r9
	movzwl	52(%r9), %edx
	movq	-32(%rbp), %r9
	movzwl	54(%r9), %ecx
	movq	-32(%rbp), %r9
	movzwl	56(%r9), %r8d
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	get_mru
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	mru_write
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.84
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	do_file_error_dialog
.LBB2_9:                                # %if.end.86
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	preferences_save, .Lfunc_end2-preferences_save
	.cfi_endproc

	.globl	do_preferences_dialog
	.align	16, 0x90
	.type	do_preferences_dialog,@function
do_preferences_dialog:                  # @do_preferences_dialog
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
	subq	$96, %rsp
	cmpq	$0, do_preferences_dialog.dialog
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	create_preferences_dialog
	movq	%rax, do_preferences_dialog.dialog
.LBB3_2:                                # %if.end
	movq	do_preferences_dialog.dialog, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	callq	get_preferences
	movq	%rax, -8(%rbp)
	movq	do_preferences_dialog.dialog, %rdi
	movq	%rax, 168(%rdi)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB3_4
# BB#3:                                 # %if.then.5
	movq	do_preferences_dialog.dialog, %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.else
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB3_6
# BB#5:                                 # %if.then.8
	movq	do_preferences_dialog.dialog, %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.9
	movq	do_preferences_dialog.dialog, %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB3_7:                                # %if.end.10
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.11
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_preferences_dialog.dialog, %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_preferences_dialog.dialog, %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	8(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_preferences_dialog.dialog, %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_preferences_dialog.dialog, %rax
	movq	64(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	16(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_preferences_dialog.dialog, %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_preferences_dialog.dialog, %rax
	movq	80(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	do_preferences_dialog.dialog, %rax
	movq	88(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	cvtsi2sdl	40(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	do_preferences_dialog.dialog, %rax
	movq	96(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	cvtsi2sdl	44(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	do_preferences_dialog.dialog, %rdi
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rsi
	callq	set_button_colors
	movq	do_preferences_dialog.dialog, %rax
	movq	(%rax), %rdi
	callq	default_dialog_show
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	do_preferences_dialog, .Lfunc_end3-do_preferences_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	create_preferences_dialog,@function
create_preferences_dialog:              # @create_preferences_dialog
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
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %edi
	movl	$176, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movabsq	$.L.str.44, %rdi
	movq	%rax, -8(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	make_default_dialog
	movabsq	$preferences_ok_cb, %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	default_dialog_set_ok_cb
	callq	gtk_notebook_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	create_general_tab
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	create_menu_tab
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	create_colors_tab
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_preferences_dialog, .Lfunc_end4-create_preferences_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	set_button_colors,@function
set_button_colors:                      # @set_button_colors
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	104(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	set_button_color
	movq	-8(%rbp), %rsi
	movq	112(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$12, %rsi
	callq	set_button_color
	movq	-8(%rbp), %rsi
	movq	120(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	callq	set_button_color
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$36, %rsi
	callq	set_button_color
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$60, %rsi
	callq	set_button_color
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$48, %rsi
	callq	set_button_color
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	set_button_colors, .Lfunc_end5-set_button_colors
	.cfi_endproc

	.align	16, 0x90
	.type	parse_map_type,@function
parse_map_type:                         # @parse_map_type
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.41, %rsi
	callq	strtok
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.42, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_6
.LBB6_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.43, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.4
	movl	$1, -4(%rbp)
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %if.end.5
	movl	$2, -4(%rbp)
.LBB6_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	parse_map_type, .Lfunc_end6-parse_map_type
	.cfi_endproc

	.align	16, 0x90
	.type	parse_yes_no,@function
parse_yes_no:                           # @parse_yes_no
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
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.41, %rsi
	callq	strtok
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	parse_yes_no, .Lfunc_end7-parse_yes_no
	.cfi_endproc

	.align	16, 0x90
	.type	parse_int,@function
parse_int:                              # @parse_int
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
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.41, %rsi
	callq	strtok
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	atoi
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	parse_int, .Lfunc_end8-parse_int
	.cfi_endproc

	.align	16, 0x90
	.type	parse_color,@function
parse_color:                            # @parse_color
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	parse_int
	movw	%ax, %cx
	movq	-8(%rbp), %rdi
	movw	%cx, 4(%rdi)
	callq	parse_int
	movw	%ax, %cx
	movq	-8(%rbp), %rdi
	movw	%cx, 6(%rdi)
	callq	parse_int
	movw	%ax, %cx
	movq	-8(%rbp), %rdi
	movw	%cx, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	parse_color, .Lfunc_end9-parse_color
	.cfi_endproc

	.align	16, 0x90
	.type	parse_mru_entry,@function
parse_mru_entry:                        # @parse_mru_entry
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
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.41, %rsi
	callq	strtok
	movq	%rax, -8(%rbp)
	callq	get_mru
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	mru_add
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	parse_mru_entry, .Lfunc_end10-parse_mru_entry
	.cfi_endproc

	.align	16, 0x90
	.type	preferences_ok_cb,@function
preferences_ok_cb:                      # @preferences_ok_cb
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -32(%rbp)
	callq	get_mru
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB11_6
.LBB11_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB11_5
.LBB11_4:                               # %if.else.12
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
.LBB11_5:                               # %if.end
	jmp	.LBB11_6
.LBB11_6:                               # %if.end.14
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 4(%rsi)
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 8(%rsi)
	movq	-16(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 12(%rsi)
	movq	-16(%rbp), %rsi
	movq	64(%rsi), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 16(%rsi)
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 20(%rsi)
	movq	-16(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 24(%rsi)
	movq	-16(%rbp), %rsi
	movq	96(%rsi), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 44(%rsi)
	movq	-16(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 40(%rsi)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	44(%rsi), %esi
	callq	mru_set_size
	movq	-40(%rbp), %rdi
	callq	menu_build_mru_items
	movq	-24(%rbp), %rdi
	movl	40(%rdi), %edi
	callq	command_list_set_undo_level
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	get_button_colors
	movq	-24(%rbp), %rsi
	movl	24(%rsi), %edi
	callq	set_sash_size
	callq	preview_redraw
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	preferences_ok_cb, .Lfunc_end11-preferences_ok_cb
	.cfi_endproc

	.align	16, 0x90
	.type	create_general_tab,@function
create_general_tab:                     # @create_general_tab
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
	subq	$160, %rsp
	movabsq	$.L.str.45, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movl	$7, %edx
	movl	$2, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	create_tab
	movabsq	$.L.str.46, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-60(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	-64(%rbp), %r8d         # 4-byte Reload
	callq	gtk_table_attach_defaults
	xorl	%edi, %edi
	movl	$1, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.47, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$10, %r8d
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rsi
	movq	%rax, %rdi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movq	-8(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$10, %r8d
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$10, %r8d
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.50, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_check_button_in_table
	movabsq	$.L.str.51, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	xorl	%edx, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_check_button_in_table
	movabsq	$.L.str.52, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	xorl	%edx, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_check_button_in_table
	movabsq	$.L.str.53, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4, %esi
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_check_button_in_table
	movabsq	$.L.str.54, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$5, %esi
	xorl	%edx, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_check_button_in_table
	movabsq	$.L.str.55, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$6, %esi
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_check_button_in_table
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	create_general_tab, .Lfunc_end12-create_general_tab
	.cfi_endproc

	.align	16, 0x90
	.type	create_menu_tab,@function
create_menu_tab:                        # @create_menu_tab
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
	subq	$80, %rsp
	movabsq	$.L.str.56, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movl	$2, %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	create_tab
	movabsq	$.L.str.57, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$1, %esi
	movl	$99, %r8d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	-52(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	$99, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.58, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	movl	$16, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	-72(%rbp), %r8d         # 4-byte Reload
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	$16, (%rsp)
	callq	create_spin_button_in_table
	movq	-8(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	create_menu_tab, .Lfunc_end13-create_menu_tab
	.cfi_endproc

	.align	16, 0x90
	.type	create_colors_tab,@function
create_colors_tab:                      # @create_colors_tab
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
	subq	$96, %rsp
	movabsq	$.L.str.59, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movl	$3, %ecx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	create_tab
	movabsq	$.L.str.60, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	create_color_field
	xorl	%edx, %edx
	movl	$2, %ecx
	movq	-8(%rbp), %rsi
	movq	%rax, 104(%rsi)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	create_color_field
	movabsq	$.L.str.61, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 112(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	create_color_field
	movl	$1, %edx
	movl	$2, %ecx
	movq	-8(%rbp), %rsi
	movq	%rax, 120(%rsi)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	create_color_field
	movabsq	$.L.str.62, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$2, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	create_color_field
	movl	$2, %ecx
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%ecx, %edx
	callq	create_color_field
	movq	-8(%rbp), %rsi
	movq	%rax, 144(%rsi)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	create_colors_tab, .Lfunc_end14-create_colors_tab
	.cfi_endproc

	.align	16, 0x90
	.type	get_button_colors,@function
get_button_colors:                      # @get_button_colors
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	104(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	get_button_color
	movq	-8(%rbp), %rsi
	movq	112(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$12, %rsi
	callq	get_button_color
	movq	-8(%rbp), %rsi
	movq	120(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	callq	get_button_color
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$36, %rsi
	callq	get_button_color
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$60, %rsi
	callq	get_button_color
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$48, %rsi
	callq	get_button_color
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	get_button_colors, .Lfunc_end15-get_button_colors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	get_button_color,@function
get_button_color:                       # @get_button_color
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movq	-16(%rbp), %rax
	movw	%dx, 4(%rax)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movq	-16(%rbp), %rax
	movw	%dx, 6(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movq	-16(%rbp), %rax
	movw	%dx, 8(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	get_button_color, .Lfunc_end16-get_button_color
	.cfi_endproc

	.align	16, 0x90
	.type	create_tab,@function
create_tab:                             # @create_tab
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
	subq	$112, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edx, %edx
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_label_new_with_mnemonic
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-32(%rbp), %rdx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdx, %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	create_tab, .Lfunc_end17-create_tab
	.cfi_endproc

	.align	16, 0x90
	.type	create_color_field,@function
create_color_field:                     # @create_color_field
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
	subq	$80, %rsp
	movabsq	$.L.str.63, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	.Lcreate_color_field.color, %rsi
	movq	%rsi, -56(%rbp)
	movq	.Lcreate_color_field.color+8, %rsi
	movq	%rsi, -48(%rbp)
	movq	.Lcreate_color_field.color+16, %rsi
	movq	%rsi, -40(%rbp)
	movq	.Lcreate_color_field.color+24, %rsi
	movq	%rsi, -32(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movl	$16, %esi
	movl	$8, %edx
	leaq	-56(%rbp), %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_button_set_update
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-24(%rbp), %r8d
	addl	$1, %r8d
	movl	-20(%rbp), %r9d
	movl	-20(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	gtk_table_attach_defaults
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	create_color_field, .Lfunc_end18-create_color_field
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4535124893482614800     # double 1.5259021896696422E-5
	.text
	.align	16, 0x90
	.type	set_button_color,@function
set_button_color:                       # @set_button_color
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
	subq	$64, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movzwl	4(%rsi), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movzwl	6(%rsi), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movzwl	8(%rsi), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	%rax, %rdi
	callq	gimp_rgb_set
	leaq	-48(%rbp), %rdi
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_rgb_multiply
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	set_button_color, .Lfunc_end19-set_button_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"imagemaprc"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"wb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"# Image map plug-in resource file\n\n"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(default-map-type ncsa)\n"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(default-map-type cern)\n"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(default-map-type csim)\n"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(prompt-for-area-info %s)\n"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"yes"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"no"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"(require-default-url %s)\n"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"(show-area-handle %s)\n"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"(keep-circles-round %s)\n"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"(show-url-tip %s)\n"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"(use-doublesized %s)\n"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(undo-levels %d)\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"(mru-size %d)\n"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"(normal-fg-color %d %d %d)\n"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"(normal-bg-color %d %d %d)\n"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"(selected-fg-color %d %d %d)\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"(selected-bg-color %d %d %d)\n"
	.size	.L.str.20, 30

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"(interactive-fg-color %d %d %d)\n"
	.size	.L.str.21, 33

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"(interactive-bg-color %d %d %d)\n"
	.size	.L.str.22, 33

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Couldn't save resource file:"
	.size	.L.str.23, 29

	.type	do_preferences_dialog.dialog,@object # @do_preferences_dialog.dialog
	.local	do_preferences_dialog.dialog
	.comm	do_preferences_dialog.dialog,8,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	" "
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"default-map-type"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"prompt-for-area-info"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"require-default-url"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"show-area-handle"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"keep-circles-round"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"show-url-tip"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"use-doublesized"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"mru-size"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"undo-levels"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"normal-fg-color"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"normal-bg-color"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"selected-fg-color"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"selected-bg-color"
	.size	.L.str.37, 18

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"interactive-fg-color"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"interactive-bg-color"
	.size	.L.str.39, 21

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"mru-entry"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	" )"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"ncsa"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"cern"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"General Preferences"
	.size	.L.str.44, 20

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"General"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Default Map Type"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_NCSA"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"C_ERN"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"C_SIM"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_Prompt for area info"
	.size	.L.str.50, 22

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Require default URL"
	.size	.L.str.51, 21

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Show area _handles"
	.size	.L.str.52, 19

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"_Keep NCSA circles true"
	.size	.L.str.53, 24

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Show area URL _tip"
	.size	.L.str.54, 19

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_Use double-sized grab handles"
	.size	.L.str.55, 31

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Menu"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Number of _undo levels (1 - 99):"
	.size	.L.str.57, 33

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Number of M_RU entries (1 - 16):"
	.size	.L.str.58, 33

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Colors"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Normal:"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Selected:"
	.size	.L.str.61, 10

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Interaction:"
	.size	.L.str.62, 13

	.type	.Lcreate_color_field.color,@object # @create_color_field.color
	.section	.rodata,"a",@progbits
	.align	8
.Lcreate_color_field.color:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lcreate_color_field.color, 32

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"Select Color"
	.size	.L.str.63, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
