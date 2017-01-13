	.text
	.file	"select.bc"
	.globl	set_requested_style
	.align	16, 0x90
	.type	set_requested_style,@function
set_requested_style:                    # @set_requested_style
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
# BB#2:                                 # %do.body.1
	cmpq	$0, style_request
	je	.LBB0_4
# BB#3:                                 # %if.then
	movq	style_request, %rdi
	callq	free
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB0_8
# BB#6:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_8
# BB#7:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, style_request
# BB#10:                                # %do.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	set_requested_style, .Lfunc_end0-set_requested_style
	.cfi_endproc

	.globl	pattern_rule_new
	.align	16, 0x90
	.type	pattern_rule_new,@function
pattern_rule_new:                       # @pattern_rule_new
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
	movb	%dl, %al
	movl	$24, %edx
	movl	%edx, %r8d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movb	-13(%rbp), %r9b
	movq	-32(%rbp), %rax
	andb	$1, %r9b
	movb	%r9b, 20(%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pattern_rule_new, .Lfunc_end1-pattern_rule_new
	.cfi_endproc

	.globl	sheets_map_new
	.align	16, 0x90
	.type	sheets_map_new,@function
sheets_map_new:                         # @sheets_map_new
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
	movabsq	$.L.str, %rdi
	movl	$200, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movl	$20, %eax
	movl	%eax, %ecx
	movabsq	$pattern_rule_self_print, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	callq	da_new
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sheets_map_new, .Lfunc_end2-sheets_map_new
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_rule_self_print,@function
pattern_rule_self_print:                # @pattern_rule_self_print
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
	movabsq	$.L.str.2, %rax
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.3, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	cmpl	$0, 16(%rsi)
	cmovneq	%r9, %r8
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %r9
	movq	8(%r9), %r9
	movq	-8(%rbp), %r10
	movb	20(%r10), %r11b
	testb	$1, %r11b
	cmovneq	%rdx, %rcx
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%r8, %rdx
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r9, %r8
	movq	-32(%rbp), %r9          # 8-byte Reload
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pattern_rule_self_print, .Lfunc_end3-pattern_rule_self_print
	.cfi_endproc

	.globl	sheets_map_add
	.align	16, 0x90
	.type	sheets_map_add,@function
sheets_map_add:                         # @sheets_map_add
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
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	andb	$1, %al
	movb	%al, -13(%rbp)
	movq	%rcx, -24(%rbp)
	movq	sheets_map, %rdi
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %esi
	movb	-13(%rbp), %al
	movq	-24(%rbp), %r8
	andb	$1, %al
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movzbl	%al, %edx
	movq	%r8, %rcx
	callq	pattern_rule_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	da_append
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sheets_map_add, .Lfunc_end4-sheets_map_add
	.cfi_endproc

	.globl	shell_escape
	.align	16, 0x90
	.type	shell_escape,@function
shell_escape:                           # @shell_escape
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$39, %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	jne	.LBB5_4
	jmp	.LBB5_3
.LBB5_3:                                # %sw.bb
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_5
.LBB5_4:                                # %sw.default
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB5_5:                                # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_6
.LBB5_6:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_7:                                # %for.end
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -40(%rbp)
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_9
# BB#8:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB5_17
.LBB5_9:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB5_10:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_16
# BB#11:                                # %for.body.7
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$39, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jne	.LBB5_13
	jmp	.LBB5_12
.LBB5_12:                               # %sw.bb.9
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$39, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$92, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$39, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$39, (%rax)
	jmp	.LBB5_14
.LBB5_13:                               # %sw.default.14
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movb	%cl, (%rax)
.LBB5_14:                               # %sw.epilog.16
                                        #   in Loop: Header=BB5_10 Depth=1
	jmp	.LBB5_15
.LBB5_15:                               # %for.inc.17
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_10
.LBB5_16:                               # %for.end.19
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	shell_escape, .Lfunc_end5-shell_escape
	.cfi_endproc

	.globl	get_command
	.align	16, 0x90
	.type	get_command,@function
get_command:                            # @get_command
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	sheets_map, %rsi
	cmpq	$0, 40(%rsi)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	callq	sheets_map_load_main
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	file_verdict_on
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcpylc
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB6_4:                                # %if.end.5
	movq	sheets_map, %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB6_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jl	.LBB6_24
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	movq	sheets_map, %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$0, 16(%rax)
	je	.LBB6_11
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_5 Depth=1
	xorl	%edx, %edx
	movslq	-28(%rbp), %rax
	movq	sheets_map, %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	fnmatch
	cmpl	$0, %eax
	jne	.LBB6_10
# BB#9:                                 # %if.then.17
	movq	-40(%rbp), %rdi
	callq	free
	movslq	-28(%rbp), %rdi
	movq	sheets_map, %rax
	movq	48(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_29
.LBB6_10:                               # %if.end.21
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_22
.LBB6_11:                               # %if.else
                                        #   in Loop: Header=BB6_5 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB6_21
# BB#12:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-28(%rbp), %rax
	movq	sheets_map, %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdi
	movslq	-28(%rbp), %rax
	movq	sheets_map, %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	testb	$1, 20(%rax)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	je	.LBB6_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB6_15
.LBB6_14:                               # %cond.false
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB6_15:                               # %cond.end
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fnmatch
	cmpl	$0, %eax
	jne	.LBB6_21
# BB#16:                                # %if.then.35
	jmp	.LBB6_17
.LBB6_17:                               # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB6_19
# BB#18:                                # %if.then.37
	movq	-40(%rbp), %rdi
	callq	free
.LBB6_19:                               # %if.end.38
	jmp	.LBB6_20
.LBB6_20:                               # %do.end
	movslq	-28(%rbp), %rax
	movq	sheets_map, %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_29
.LBB6_21:                               # %if.end.43
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_22
.LBB6_22:                               # %if.end.44
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_5
.LBB6_24:                               # %for.end
	jmp	.LBB6_25
.LBB6_25:                               # %do.body.45
	cmpq	$0, -40(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.47
	movq	-40(%rbp), %rdi
	callq	free
.LBB6_27:                               # %if.end.48
	jmp	.LBB6_28
.LBB6_28:                               # %do.end.49
	movabsq	$.L.str.1, %rax
	movq	%rax, -8(%rbp)
.LBB6_29:                               # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_command, .Lfunc_end6-get_command
	.cfi_endproc

	.align	16, 0x90
	.type	sheets_map_load_main,@function
sheets_map_load_main:                   # @sheets_map_load_main
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
	movabsq	$.L.str.7, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	job, %rcx
	movq	16(%rcx), %rdi
	callq	pw_find_file
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.8, %rdi
	movl	(%rax), %esi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edi, %edi
	movabsq	$.L.str.7, %rcx
	movl	-20(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
	movabsq	$.L.str.9, %rdi
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
	movl	$0, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	sheets_map_load
	movq	-16(%rbp), %rdi
	callq	free
	movl	$1, -4(%rbp)
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sheets_map_load_main, .Lfunc_end7-sheets_map_load_main
	.cfi_endproc

	.align	16, 0x90
	.type	file_verdict_on,@function
file_verdict_on:                        # @file_verdict_on
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
	subq	$1136, %rsp             # imm = 0x470
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	job, %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	job, %rax
	movq	24(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_38
.LBB8_3:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	shell_escape
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_5
# BB#4:                                 # %if.then.6
	movq	$0, -8(%rbp)
	jmp	.LBB8_38
.LBB8_5:                                # %if.end.7
	movabsq	$.L.str.10, %rsi
	movq	job(%rip), %rax
	movq	24(%rax), %rdi
	movq	%rsi, -1072(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-16(%rbp), %rdi
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	leaq	19(%rsi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	job, %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rcx
	movq	-1072(%rbp), %rsi       # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movq	-16(%rbp), %rdi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	callq	free
# BB#6:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.14
	movabsq	$.L.str.11, %rsi
	movq	stderr, %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -1088(%rbp)       # 4-byte Spill
.LBB8_8:                                # %if.end.16
	jmp	.LBB8_9
.LBB8_9:                                # %do.end
	movabsq	$.L.str.12, %rsi
	movq	-32(%rbp), %rdi
	callq	popen
	movq	%rax, -1064(%rbp)
	cmpq	$0, -1064(%rbp)
	jne	.LBB8_13
# BB#10:                                # %if.then.19
	movl	msg_verbosity, %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB8_12
# BB#11:                                # %if.then.22
	callq	__errno_location
	movabsq	$.L.str.13, %rdi
	movl	(%rax), %esi
	movl	%esi, -1092(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-1092(%rbp), %esi       # 4-byte Reload
	movq	-1104(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB8_12:                               # %if.end.26
	movq	$0, -8(%rbp)
	jmp	.LBB8_38
.LBB8_13:                               # %if.end.27
	movl	$1024, %esi             # imm = 0x400
	leaq	-1056(%rbp), %rdi
	movq	-1064(%rbp), %rdx
	callq	fgets
	movq	-1064(%rbp), %rdi
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	pclose
	movl	%eax, -1116(%rbp)       # 4-byte Spill
# BB#14:                                # %do.body.30
	movl	msg_verbosity, %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB8_16
# BB#15:                                # %if.then.33
	movabsq	$.L.str.14, %rsi
	leaq	-1056(%rbp), %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -1120(%rbp)       # 4-byte Spill
.LBB8_16:                               # %if.end.36
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.37
	leaq	-1056(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB8_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -1121(%rbp)        # 1-byte Spill
	je	.LBB8_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	setne	%dl
	movb	%dl, -1121(%rbp)        # 1-byte Spill
.LBB8_20:                               # %land.end
                                        #   in Loop: Header=BB8_18 Depth=1
	movb	-1121(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_21
	jmp	.LBB8_22
.LBB8_21:                               # %while.body
                                        #   in Loop: Header=BB8_18 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_18
.LBB8_22:                               # %while.end
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB8_23:                               # %while.cond.45
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -1122(%rbp)        # 1-byte Spill
	je	.LBB8_27
# BB#24:                                # %land.rhs.48
                                        #   in Loop: Header=BB8_23 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$32, %edx
	movb	%al, -1123(%rbp)        # 1-byte Spill
	je	.LBB8_26
# BB#25:                                # %lor.rhs
                                        #   in Loop: Header=BB8_23 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	sete	%dl
	movb	%dl, -1123(%rbp)        # 1-byte Spill
.LBB8_26:                               # %lor.end
                                        #   in Loop: Header=BB8_23 Depth=1
	movb	-1123(%rbp), %al        # 1-byte Reload
	movb	%al, -1122(%rbp)        # 1-byte Spill
.LBB8_27:                               # %land.end.55
                                        #   in Loop: Header=BB8_23 Depth=1
	movb	-1122(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_28
	jmp	.LBB8_29
.LBB8_28:                               # %while.body.56
                                        #   in Loop: Header=BB8_23 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_23
.LBB8_29:                               # %while.end.58
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB8_37
# BB#30:                                # %if.then.60
	cmpq	$0, -24(%rbp)
	je	.LBB8_36
# BB#31:                                # %if.then.62
	jmp	.LBB8_32
.LBB8_32:                               # %do.body.63
	movl	msg_verbosity, %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB8_34
# BB#33:                                # %if.then.66
	movabsq	$.L.str.15, %rsi
	movq	stderr, %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -1128(%rbp)       # 4-byte Spill
.LBB8_34:                               # %if.end.68
	jmp	.LBB8_35
.LBB8_35:                               # %do.end.69
	jmp	.LBB8_36
.LBB8_36:                               # %if.end.70
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	subq	$1, %rax
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	xstrndup
	movq	%rax, -8(%rbp)
	jmp	.LBB8_38
.LBB8_37:                               # %if.end.73
	movq	$0, -8(%rbp)
.LBB8_38:                               # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	file_verdict_on, .Lfunc_end8-file_verdict_on
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Sheets map"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"plain"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s/%s: %s/%s\n"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"file"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"i"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"sheets.map"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"cannot find file `%s'"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"automatic style selection cancelled"
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s '%s'"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Reading pipe: `%s'\n"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"r"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"cannot open a pipe on `%s'"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"file(1): %s"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"File's verdict: %s"
	.size	.L.str.15, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
