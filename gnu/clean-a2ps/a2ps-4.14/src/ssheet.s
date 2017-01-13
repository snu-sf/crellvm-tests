	.text
	.file	"ssheet.bc"
	.globl	new_pattern
	.align	16, 0x90
	.type	new_pattern,@function
new_pattern:                            # @new_pattern
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
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	new_pattern, .Lfunc_end0-new_pattern
	.cfi_endproc

	.globl	faced_string_new
	.align	16, 0x90
	.type	faced_string_new,@function
faced_string_new:                       # @faced_string_new
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
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdx, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	%esi, 8(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 12(%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	faced_string_new, .Lfunc_end1-faced_string_new
	.cfi_endproc

	.globl	style_sheet_set_version
	.align	16, 0x90
	.type	style_sheet_set_version,@function
style_sheet_set_version:                # @style_sheet_set_version
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$24, %rsi
	callq	string_to_version
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	style_sheet_set_version, .Lfunc_end2-style_sheet_set_version
	.cfi_endproc

	.globl	style_sheet_set_requirement
	.align	16, 0x90
	.type	style_sheet_set_requirement,@function
style_sheet_set_requirement:            # @style_sheet_set_requirement
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$40, %rsi
	callq	string_to_version
	movabsq	$.L.str, %rdi
	leaq	-48(%rbp), %rsi
	callq	string_to_version
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	addq	$40, %rdi
	callq	version_cmp
	cmpl	$0, %eax
	jle	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movl	$1, -4(%rbp)
.LBB3_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	style_sheet_set_requirement, .Lfunc_end3-style_sheet_set_requirement
	.cfi_endproc

	.globl	rhs_new
	.align	16, 0x90
	.type	rhs_new,@function
rhs_new:                                # @rhs_new
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
	movabsq	$.L.str.1, %rdi
	movl	$2, %eax
	movl	%eax, %ecx
	movl	$2, %edx
	movabsq	$faced_string_self_print, %rsi
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	da_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rhs_new, .Lfunc_end4-rhs_new
	.cfi_endproc

	.align	16, 0x90
	.type	faced_string_self_print,@function
faced_string_self_print:                # @faced_string_self_print
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.54, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movabsq	$.L.str.55, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB5_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	12(%rax), %rdi
	callq	fface_self_print
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	faced_string_self_print, .Lfunc_end5-faced_string_self_print
	.cfi_endproc

	.globl	rhs_new_single
	.align	16, 0x90
	.type	rhs_new_single,@function
rhs_new_single:                         # @rhs_new_single
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
	movabsq	$.L.str.1, %rax
	movl	$2, %ecx
	movl	%ecx, %r8d
	movl	$2, %ecx
	movabsq	$faced_string_self_print, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdx, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	movl	%ecx, %edx
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r11, %r9
	callq	da_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	faced_string_new
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	da_append
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rhs_new_single, .Lfunc_end6-rhs_new_single
	.cfi_endproc

	.globl	rhs_add
	.align	16, 0x90
	.type	rhs_add,@function
rhs_add:                                # @rhs_add
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
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	da_append
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	rhs_add, .Lfunc_end7-rhs_add
	.cfi_endproc

	.globl	rhs_self_print
	.align	16, 0x90
	.type	rhs_self_print,@function
rhs_self_print:                         # @rhs_self_print
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
	movl	$40, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movq	$0, -24(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	faced_string_self_print
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	movl	$41, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -32(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rhs_self_print, .Lfunc_end8-rhs_self_print
	.cfi_endproc

	.globl	rule_new
	.align	16, 0x90
	.type	rule_new,@function
rule_new:                               # @rule_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	rule_new_internal_regexp
	movq	%rax, -8(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	rule_new_internal_word
	movq	%rax, -8(%rbp)
.LBB9_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rule_new, .Lfunc_end9-rule_new
	.cfi_endproc

	.align	16, 0x90
	.type	rule_new_internal_regexp,@function
rule_new_internal_regexp:               # @rule_new_internal_regexp
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
	subq	$96, %rsp
	movl	$24, %eax
	movl	%eax, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, %rdi
	callq	xmalloc
	movl	$64, %edx
	movl	%edx, %edi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	xmalloc
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 40(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	callq	re_compile_pattern
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.56, %rdi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-16(%rbp), %r9
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	error_at_line
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-56(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	rule_new_internal_regexp, .Lfunc_end10-rule_new_internal_regexp
	.cfi_endproc

	.align	16, 0x90
	.type	rule_new_internal_word,@function
rule_new_internal_word:                 # @rule_new_internal_word
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
	subq	$32, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	rule_new_internal_word, .Lfunc_end11-rule_new_internal_word
	.cfi_endproc

	.globl	keyword_rule_new
	.align	16, 0x90
	.type	keyword_rule_new,@function
keyword_rule_new:                       # @keyword_rule_new
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
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rsi
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %edx
	addl	$6, %edx
	movl	%edx, -52(%rbp)
	addl	$7, %ecx
	movslq	%ecx, %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	sprintf
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	rule_new_internal_regexp
	movq	%rax, -8(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	rule_new_internal_word
	movq	%rax, -8(%rbp)
.LBB12_3:                               # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	keyword_rule_new, .Lfunc_end12-keyword_rule_new
	.cfi_endproc

	.globl	words_new
	.align	16, 0x90
	.type	words_new,@function
words_new:                              # @words_new
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
	movl	$4112, %eax             # imm = 0x1010
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	xmalloc
	movl	$1, %edx
	movabsq	$rule_self_print, %rcx
	movabsq	$rule_cmp, %rsi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	da_new
	movl	$1, %edx
	movabsq	$rule_self_print, %rcx
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	da_new
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$0, -36(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	$0, 2064(%rcx,%rax,8)
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	$0, 16(%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	words_new, .Lfunc_end13-words_new
	.cfi_endproc

	.align	16, 0x90
	.type	rule_self_print,@function
rule_self_print:                        # @rule_self_print
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.57, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movabsq	$.L.str.58, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB14_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	rhs_self_print
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	rule_self_print, .Lfunc_end14-rule_self_print
	.cfi_endproc

	.align	16, 0x90
	.type	rule_cmp,@function
rule_cmp:                               # @rule_cmp
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
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	rule_cmp, .Lfunc_end15-rule_cmp
	.cfi_endproc

	.globl	words_free
	.align	16, 0x90
	.type	words_free,@function
words_free:                             # @words_free
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
	subq	$16, %rsp
	movabsq	$free_rule, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, %rsi
	callq	da_free
	movabsq	$free_rule, %rax
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, %rsi
	callq	da_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	words_free, .Lfunc_end16-words_free
	.cfi_endproc

	.align	16, 0x90
	.type	free_rule,@function
free_rule:                              # @free_rule
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB17_3:                               # %if.end
	jmp	.LBB17_4
.LBB17_4:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB17_6
# BB#5:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	regfree
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB17_6:                               # %if.end.6
	movabsq	$faced_string_free, %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, %rsi
	callq	da_free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	free_rule, .Lfunc_end17-free_rule
	.cfi_endproc

	.globl	words_add_string
	.align	16, 0x90
	.type	words_add_string,@function
words_add_string:                       # @words_add_string
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	da_append
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	words_add_string, .Lfunc_end18-words_add_string
	.cfi_endproc

	.globl	words_add_regex
	.align	16, 0x90
	.type	words_add_regex,@function
words_add_regex:                        # @words_add_regex
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	da_append
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	words_add_regex, .Lfunc_end19-words_add_regex
	.cfi_endproc

	.globl	words_set_no_face
	.align	16, 0x90
	.type	words_set_no_face,@function
words_set_no_face:                      # @words_set_no_face
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
	subq	$16, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-8(%rbp), %rsi
	callq	rules_set_no_faces
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	-8(%rbp), %rsi
	callq	rules_set_no_faces
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	words_set_no_face, .Lfunc_end20-words_set_no_face
	.cfi_endproc

	.align	16, 0x90
	.type	rules_set_no_faces,@function
rules_set_no_faces:                     # @rules_set_no_faces
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
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB21_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	rule_set_no_face
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB21_1
.LBB21_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	rules_set_no_faces, .Lfunc_end21-rules_set_no_faces
	.cfi_endproc

	.globl	words_merge_rules_unique
	.align	16, 0x90
	.type	words_merge_rules_unique,@function
words_merge_rules_unique:               # @words_merge_rules_unique
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	callq	da_concat
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	da_qsort
	movabsq	$free_rule, %rsi
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	da_merge
	movq	-16(%rbp), %rdi
	callq	words_erase
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	words_merge_rules_unique, .Lfunc_end22-words_merge_rules_unique
	.cfi_endproc

	.align	16, 0x90
	.type	words_erase,@function
words_erase:                            # @words_erase
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	da_erase
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	da_erase
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	words_erase, .Lfunc_end23-words_erase
	.cfi_endproc

	.globl	sequence_new
	.align	16, 0x90
	.type	sequence_new,@function
sequence_new:                           # @sequence_new
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
	subq	$48, %rsp
	movl	$32, %eax
	movl	%eax, %r8d
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, %rdi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	rule_set_no_face
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	words_set_no_face
	movq	-32(%rbp), %rdi
	callq	words_finalize
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	words_set_no_face
	movq	-24(%rbp), %rdi
	callq	words_finalize
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	sequence_new, .Lfunc_end24-sequence_new
	.cfi_endproc

	.align	16, 0x90
	.type	rule_set_no_face,@function
rule_set_no_face:                       # @rule_set_no_face
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
	subq	$16, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-8(%rbp), %rsi
	callq	rhs_set_no_face
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	rule_set_no_face, .Lfunc_end25-rule_set_no_face
	.cfi_endproc

	.align	16, 0x90
	.type	words_finalize,@function
words_finalize:                         # @words_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	da_qsort
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB26_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	-8(%rbp), %rcx
	cmpq	$0, 16(%rcx,%rax,8)
	jne	.LBB26_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx,%rcx,8)
.LBB26_4:                               # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdx
	movq	%rax, 2064(%rdx,%rcx,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB26_1
.LBB26_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	words_finalize, .Lfunc_end26-words_finalize
	.cfi_endproc

	.globl	free_sequence
	.align	16, 0x90
	.type	free_sequence,@function
free_sequence:                          # @free_sequence
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	free_rule
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	words_free
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	words_free
	movq	-8(%rbp), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	free_sequence, .Lfunc_end27-free_sequence
	.cfi_endproc

	.globl	new_C_string_sequence
	.align	16, 0x90
	.type	new_C_string_sequence,@function
new_C_string_sequence:                  # @new_C_string_sequence
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
	subq	$48, %rsp
	movl	$32, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	xstrdup
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%esi, %esi
	movq	Plain_fface, %rdx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.3, %rcx
	movl	$686, %r8d              # imm = 0x2AE
                                        # kill: R8<def> R8D<kill>
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	String_fface, %rcx
	movq	%rcx, 8(%rax)
	callq	new_C_exceptions
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movl	$5, %r9d
	movl	%r9d, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rcx, %rdx
	callq	words_new
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	xstrdup
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	xorl	%esi, %esi
	movq	Plain_fface, %rdx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.3, %rcx
	movl	$693, %r9d              # imm = 0x2B5
	movl	%r9d, %r8d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	words_add_string
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	words_finalize
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	new_C_string_sequence, .Lfunc_end28-new_C_string_sequence
	.cfi_endproc

	.align	16, 0x90
	.type	new_C_exceptions,@function
new_C_exceptions:                       # @new_C_exceptions
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
	subq	$64, %rsp
	movabsq	$.L.str.59, %rdi
	movabsq	$.L.str.60, %rsi
	movl	$3, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	words_new
	movabsq	$.L.str.61, %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	xstrdup
	movabsq	$.L.str.61, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	xstrdup
	xorl	%esi, %esi
	movq	String_fface, %rdx
	movq	%rax, %rdi
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.3, %rcx
	movl	$672, %r8d              # imm = 0x2A0
                                        # kill: R8<def> R8D<kill>
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	words_add_string
	movabsq	$.L.str.62, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	xstrdup
	movabsq	$.L.str.62, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	xstrdup
	xorl	%esi, %esi
	movq	String_fface, %rdx
	movq	%rax, %rdi
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.3, %rcx
	movl	$673, %r9d              # imm = 0x2A1
	movl	%r9d, %r8d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	words_add_string
	movabsq	$.L.str.63, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	xstrdup
	movabsq	$.L.str.63, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	xstrdup
	xorl	%esi, %esi
	movq	String_fface, %rdx
	movq	%rax, %rdi
	callq	rhs_new_single
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.3, %rcx
	movl	$674, %r9d              # imm = 0x2A2
	movl	%r9d, %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	rule_new
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	words_add_string
	movq	-8(%rbp), %rdi
	callq	words_finalize
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	new_C_exceptions, .Lfunc_end29-new_C_exceptions
	.cfi_endproc

	.globl	sequence_self_print
	.align	16, 0x90
	.type	sequence_self_print,@function
sequence_self_print:                    # @sequence_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	rule_self_print
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rsi), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	fface_self_print
	movabsq	$.L.str.7, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	words_self_print
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	words_self_print
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	sequence_self_print, .Lfunc_end30-sequence_self_print
	.cfi_endproc

	.align	16, 0x90
	.type	words_self_print,@function
words_self_print:                       # @words_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	cmpq	$0, 40(%rsi)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	da_self_print
.LBB31_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB31_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	da_self_print
.LBB31_4:                               # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	words_self_print, .Lfunc_end31-words_self_print
	.cfi_endproc

	.globl	new_style_sheet
	.align	16, 0x90
	.type	new_style_sheet,@function
new_style_sheet:                        # @new_style_sheet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$616, %eax              # imm = 0x268
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	version_set_to_null
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	version_set_to_null
	callq	ancestors_new
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$100, %edx
	movl	%edx, %ecx
	movq	-16(%rbp), %r8
	movq	%rax, 64(%r8)
	movq	-16(%rbp), %rax
	movl	$2, 72(%rax)
	movq	-16(%rbp), %rax
	movb	$127, 76(%rax)
	movq	-16(%rbp), %rax
	movb	$127, 332(%rax)
	movq	%rcx, %rdx
	callq	words_new
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$100, %r9d
	movl	%r9d, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, 592(%rdx)
	movq	%rcx, %rdx
	callq	words_new
	movabsq	$.L.str.12, %rdi
	movl	$100, %r9d
	movl	%r9d, %ecx
	movl	$1, %edx
	movabsq	$sequence_self_print, %rsi
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-16(%rbp), %r8
	movq	%rax, 600(%r8)
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-24(%rbp), %r8          # 8-byte Reload
	callq	da_new
	movq	-16(%rbp), %rcx
	movq	%rax, 608(%rcx)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	new_style_sheet, .Lfunc_end32-new_style_sheet
	.cfi_endproc

	.align	16, 0x90
	.type	ancestors_new,@function
ancestors_new:                          # @ancestors_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.64, %rdi
	movl	$2, %eax
	movl	%eax, %ecx
	movl	$1, %edx
	movabsq	$da_str_print, %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rcx, %rsi
	callq	da_new
	popq	%rbp
	retq
.Lfunc_end33:
	.size	ancestors_new, .Lfunc_end33-ancestors_new
	.cfi_endproc

	.globl	style_sheet_finalize
	.align	16, 0x90
	.type	style_sheet_finalize,@function
style_sheet_finalize:                   # @style_sheet_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	msg_verbosity, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB34_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.13, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB34_3:                               # %if.end
	jmp	.LBB34_4
.LBB34_4:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	ancestors_finalize
	movq	-8(%rbp), %rdi
	movzbl	76(%rdi), %eax
	cmpl	$127, %eax
	jne	.LBB34_6
# BB#5:                                 # %if.then.2
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rax
	addq	$76, %rax
	movq	%rax, %rdi
	callq	string_to_array
.LBB34_6:                               # %if.end.4
	movq	-8(%rbp), %rax
	movzbl	332(%rax), %ecx
	cmpl	$127, %ecx
	jne	.LBB34_8
# BB#7:                                 # %if.then.9
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rax
	addq	$332, %rax              # imm = 0x14C
	movq	%rax, %rdi
	callq	string_to_array
.LBB34_8:                               # %if.end.12
	movq	-8(%rbp), %rax
	cmpl	$2, 72(%rax)
	jne	.LBB34_10
# BB#9:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movl	$1, 72(%rax)
.LBB34_10:                              # %if.end.17
	movq	-8(%rbp), %rax
	movq	592(%rax), %rdi
	callq	words_finalize
	movq	-8(%rbp), %rax
	movq	600(%rax), %rdi
	callq	words_finalize
	movl	msg_verbosity, %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB34_27
# BB#11:                                # %if.then.20
	movabsq	$.L.str.16, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rdi
	movq	stderr, %rsi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	style_sheet_self_print
# BB#12:                                # %do.body.23
	movl	msg_verbosity, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB34_14
# BB#13:                                # %if.then.26
	movabsq	$.L.str.17, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB34_14:                              # %if.end.30
	jmp	.LBB34_15
.LBB34_15:                              # %do.end.31
	movq	-8(%rbp), %rdi
	callq	style_sheet_check
	testb	$1, %al
	jne	.LBB34_16
	jmp	.LBB34_21
.LBB34_16:                              # %if.then.33
	jmp	.LBB34_17
.LBB34_17:                              # %do.body.34
	movl	msg_verbosity, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB34_19
# BB#18:                                # %if.then.37
	movabsq	$.L.str.18, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB34_19:                              # %if.end.41
	jmp	.LBB34_20
.LBB34_20:                              # %do.end.42
	jmp	.LBB34_26
.LBB34_21:                              # %if.else
	jmp	.LBB34_22
.LBB34_22:                              # %do.body.43
	movl	msg_verbosity, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB34_24
# BB#23:                                # %if.then.46
	movabsq	$.L.str.19, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB34_24:                              # %if.end.50
	jmp	.LBB34_25
.LBB34_25:                              # %do.end.51
	jmp	.LBB34_26
.LBB34_26:                              # %if.end.52
	movabsq	$.L.str.20, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB34_27:                              # %if.end.55
	movq	style_sheets, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	hash_insert
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	style_sheet_finalize, .Lfunc_end34-style_sheet_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	ancestors_finalize,@function
ancestors_finalize:                     # @ancestors_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_20
.LBB35_2:                               # %if.end
	movl	$0, -12(%rbp)
.LBB35_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	40(%rcx), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jge	.LBB35_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB35_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	get_style_sheet
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB35_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB35_3 Depth=1
	jmp	.LBB35_7
.LBB35_6:                               # %if.end.7
                                        #   in Loop: Header=BB35_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	592(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rbp), %rsi
	movq	592(%rsi), %rsi
	movq	(%rsi), %rsi
	callq	da_merge
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	600(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rbp), %rsi
	movq	600(%rsi), %rsi
	movq	(%rsi), %rsi
	callq	da_merge
.LBB35_7:                               # %for.inc
                                        #   in Loop: Header=BB35_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB35_3
.LBB35_8:                               # %for.end
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	40(%rax), %rax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -12(%rbp)
.LBB35_9:                               # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jl	.LBB35_20
# BB#10:                                # %for.body.19
                                        #   in Loop: Header=BB35_9 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	get_style_sheet
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB35_12
# BB#11:                                # %if.then.26
                                        #   in Loop: Header=BB35_9 Depth=1
	jmp	.LBB35_19
.LBB35_12:                              # %if.end.27
                                        #   in Loop: Header=BB35_9 Depth=1
	movq	-8(%rbp), %rax
	movzbl	76(%rax), %ecx
	cmpl	$127, %ecx
	jne	.LBB35_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB35_9 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$76, %rcx
	movq	-24(%rbp), %rsi
	addq	$76, %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB35_14:                              # %if.end.35
                                        #   in Loop: Header=BB35_9 Depth=1
	movq	-8(%rbp), %rax
	movzbl	332(%rax), %ecx
	cmpl	$127, %ecx
	jne	.LBB35_16
# BB#15:                                # %if.then.40
                                        #   in Loop: Header=BB35_9 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$332, %rcx              # imm = 0x14C
	movq	-24(%rbp), %rsi
	addq	$332, %rsi              # imm = 0x14C
	movq	%rcx, %rdi
	callq	memcpy
.LBB35_16:                              # %if.end.43
                                        #   in Loop: Header=BB35_9 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 72(%rax)
	jne	.LBB35_18
# BB#17:                                # %if.then.46
                                        #   in Loop: Header=BB35_9 Depth=1
	movq	-24(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 72(%rax)
.LBB35_18:                              # %if.end.49
                                        #   in Loop: Header=BB35_9 Depth=1
	movq	-8(%rbp), %rax
	movq	592(%rax), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	592(%rax), %rax
	movq	8(%rax), %rsi
	callq	da_prefix
	movq	-8(%rbp), %rax
	movq	600(%rax), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	600(%rax), %rax
	movq	8(%rax), %rsi
	callq	da_prefix
	movq	-8(%rbp), %rax
	movq	608(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	608(%rax), %rsi
	callq	da_prefix
.LBB35_19:                              # %for.inc.58
                                        #   in Loop: Header=BB35_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB35_9
.LBB35_20:                              # %for.end.59
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	ancestors_finalize, .Lfunc_end35-ancestors_finalize
	.cfi_endproc

	.globl	style_sheet_self_print
	.align	16, 0x90
	.type	style_sheet_self_print,@function
style_sheet_self_print:                 # @style_sheet_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.21, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rcx
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rcx
	addq	$24, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	version_self_print
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB36_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB36_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.22, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB36_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	$0, 40(%rax)
	jbe	.LBB36_9
# BB#4:                                 # %if.then.9
	movabsq	$.L.str.23, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	$0, -24(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB36_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB36_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB36_5 Depth=1
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.25, %rcx
	movq	-16(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	cmovneq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB36_5 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB36_5
.LBB36_8:                               # %for.end
	movabsq	$.L.str.27, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB36_9:                               # %if.end.18
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.29, %rcx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	cmpl	$1, 72(%rdx)
	cmoveq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.30, %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	fputs
	movq	-8(%rbp), %rcx
	addq	$76, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	alphabet_self_print
	movabsq	$.L.str.31, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movq	-8(%rbp), %rcx
	addq	$332, %rcx              # imm = 0x14C
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	alphabet_self_print
	movq	-8(%rbp), %rcx
	movq	592(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	words_self_print
	movq	-8(%rbp), %rcx
	movq	600(%rcx), %rdi
	movq	-16(%rbp), %rsi
	callq	words_self_print
	movq	-8(%rbp), %rcx
	movq	608(%rcx), %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB36_11
# BB#10:                                # %if.then.30
	movq	-8(%rbp), %rax
	movq	608(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	da_self_print
.LBB36_11:                              # %if.end.32
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	style_sheet_self_print, .Lfunc_end36-style_sheet_self_print
	.cfi_endproc

	.align	16, 0x90
	.type	style_sheet_check,@function
style_sheet_check:                      # @style_sheet_check
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_doubles
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jne	.LBB37_1
	jmp	.LBB37_2
.LBB37_1:                               # %land.rhs
	movq	-8(%rbp), %rdi
	callq	check_sensitivity
	movb	%al, -9(%rbp)           # 1-byte Spill
.LBB37_2:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	style_sheet_check, .Lfunc_end37-style_sheet_check
	.cfi_endproc

	.align	16, 0x90
	.type	alphabet_self_print,@function
alphabet_self_print:                    # @alphabet_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$127, %eax
	jne	.LBB38_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.65, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB38_9
.LBB38_2:                               # %if.else
	movl	$34, %edi
	movq	-16(%rbp), %rsi
	callq	fputc
	movl	$0, -20(%rbp)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB38_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB38_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB38_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB38_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	fputc
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB38_6:                               # %if.end
                                        #   in Loop: Header=BB38_3 Depth=1
	jmp	.LBB38_7
.LBB38_7:                               # %for.inc
                                        #   in Loop: Header=BB38_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB38_3
.LBB38_8:                               # %for.end
	movabsq	$.L.str.66, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB38_9:                               # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	alphabet_self_print, .Lfunc_end38-alphabet_self_print
	.cfi_endproc

	.globl	list_style_sheets_short
	.align	16, 0x90
	.type	list_style_sheets_short,@function
list_style_sheets_short:                # @list_style_sheets_short
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.32, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.33, %rdx
	movq	-8(%rbp), %rdi
	movq	job, %rsi
	movq	16(%rsi), %rsi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	pw_lister_on_suffix
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	list_style_sheets_short, .Lfunc_end39-list_style_sheets_short
	.cfi_endproc

	.globl	list_style_sheets_long
	.align	16, 0x90
	.type	list_style_sheets_long,@function
list_style_sheets_long:                 # @list_style_sheets_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.33, %rsi
	movq	%rdi, -8(%rbp)
	movq	job, %rdi
	movq	16(%rdi), %rdi
	callq	pw_glob_on_suffix
	movabsq	$sheet_name_cmp, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rsi, 64(%rax)
	movq	-24(%rbp), %rdi
	callq	da_qsort
	movabsq	$.L.str.32, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$61, %esi
	movl	$1, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movq	$0, -32(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB40_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB40_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	get_style_sheet
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	style_sheet_print_signature
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB40_1
.LBB40_4:                               # %for.end
	movabsq	$free, %rsi
	movq	-24(%rbp), %rdi
	callq	da_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	list_style_sheets_long, .Lfunc_end40-list_style_sheets_long
	.cfi_endproc

	.align	16, 0x90
	.type	sheet_name_cmp,@function
sheet_name_cmp:                         # @sheet_name_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_style_sheet
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	get_style_sheet
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	strcasecmp
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	sheet_name_cmp, .Lfunc_end41-sheet_name_cmp
	.cfi_endproc

	.globl	get_style_sheet
	.align	16, 0x90
	.type	get_style_sheet,@function
get_style_sheet:                        # @get_style_sheet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$640, %rsp              # imm = 0x280
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.52, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB42_8
.LBB42_2:                               # %if.end
	movabsq	$.L.str.53, %rsi
	movq	-16(%rbp), %rdi
	callq	strpbrk
	cmpq	$0, %rax
	je	.LBB42_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	style_sheet_mixed_new
	movq	%rax, -16(%rbp)
	jmp	.LBB42_5
.LBB42_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	require_style_sheet
.LBB42_5:                               # %if.end.4
	leaq	-640(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, -640(%rbp)
	movq	style_sheets, %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB42_7
# BB#6:                                 # %if.then.8
	movq	$0, -8(%rbp)
	jmp	.LBB42_8
.LBB42_7:                               # %if.end.9
	movq	-24(%rbp), %rax
	addq	$76, %rax
	movq	%rax, re_syntax_table
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB42_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end42:
	.size	get_style_sheet, .Lfunc_end42-get_style_sheet
	.cfi_endproc

	.align	16, 0x90
	.type	style_sheet_print_signature,@function
style_sheet_print_signature:            # @style_sheet_print_signature
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	movq	%rsi, %rdi
	callq	version_null_p
	testb	$1, %al
	jne	.LBB43_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	strlen
	addq	$16, %rax
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-32(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	version_length
	movabsq	$.L.str.67, %rsi
	movslq	%eax, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	%rdi, %rcx
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.68, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB43_3
.LBB43_2:                               # %if.else
	movabsq	$.L.str.69, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	strlen
	addq	$7, %rax
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	fprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB43_3:                               # %if.end
	movl	$0, -20(%rbp)
.LBB43_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB43_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB43_4 Depth=1
	movl	$45, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -72(%rbp)         # 4-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB43_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB43_4
.LBB43_7:                               # %for.end
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movabsq	$.L.str.70, %rdx
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	authors_print_plain
	movabsq	$.L.str.71, %rsi
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rdi
	movq	-8(%rbp), %rdx
	callq	documentation_print_plain
	movabsq	$.L.str.72, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -80(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	style_sheet_print_signature, .Lfunc_end43-style_sheet_print_signature
	.cfi_endproc

	.globl	list_style_sheets_html
	.align	16, 0x90
	.type	list_style_sheets_html,@function
list_style_sheets_html:                 # @list_style_sheets_html
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movabsq	$.L.str.33, %rsi
	movq	%rdi, -8(%rbp)
	movq	job, %rdi
	movq	16(%rdi), %rdi
	callq	pw_glob_on_suffix
	leaq	-56(%rbp), %rdx
	leaq	-44(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	style_sheets_versions
	movabsq	$sheet_name_cmp, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rdi
	callq	da_qsort
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.35, %rcx
	movq	job, %rdi
	movq	job, %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	job, %rsi
	movq	1632(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rax,8), %rax
	movq	%rax, %rsi
	callq	expand_user_string
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.36, %rcx
	movq	job, %rdi
	movq	job, %rsi
	movq	1632(%rsi), %rsi
	movq	40(%rsi), %rsi
	subq	$1, %rsi
	movq	job, %r8
	movq	1632(%r8), %r8
	movq	48(%r8), %r8
	movq	(%r8,%rsi,8), %rsi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	expand_user_string
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	leaq	-44(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.37, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	leaq	-56(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.38, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movabsq	$.L.str.39, %rdi
	movl	$3, %r9d
	movl	%r9d, %ecx
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	divq	%rcx
	addq	$1, %rax
	movl	%eax, %r9d
	movl	%r9d, -60(%rbp)
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	$0, -32(%rbp)
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB44_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_3 Depth 2
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB44_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movabsq	$.L.str.40, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB44_3:                               # %do.body
                                        #   Parent Loop BB44_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	get_style_sheet
	movabsq	$.L.str.41, %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.42, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -92(%rbp)         # 4-byte Spill
# BB#4:                                 # %do.cond
                                        #   in Loop: Header=BB44_3 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movslq	-60(%rbp), %rsi
	movq	%rdx, %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	%rsi
	cmpq	$0, %rdx
	movb	%cl, -93(%rbp)          # 1-byte Spill
	je	.LBB44_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB44_3 Depth=2
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	40(%rcx), %rax
	setb	%dl
	movb	%dl, -93(%rbp)          # 1-byte Spill
.LBB44_6:                               # %land.end
                                        #   in Loop: Header=BB44_3 Depth=2
	movb	-93(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB44_3
# BB#7:                                 # %do.end
                                        #   in Loop: Header=BB44_1 Depth=1
	movabsq	$.L.str.43, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB44_1
.LBB44_8:                               # %for.end
	movabsq	$.L.str.44, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.45, %rcx
	movq	job, %rdi
	movq	job, %rsi
	movq	1632(%rsi), %rsi
	movq	40(%rsi), %rsi
	subq	$1, %rsi
	movq	job, %r8
	movq	1632(%r8), %r8
	movq	48(%r8), %r8
	movq	(%r8,%rsi,8), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	expand_user_string
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.46, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	fputs
	movabsq	$.L.str.47, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	fputs
	movq	$0, -32(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB44_9:                               # %for.cond.45
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB44_12
# BB#10:                                # %for.body.49
                                        #   in Loop: Header=BB44_9 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	get_style_sheet
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	style_sheet_html_print_signature
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB44_9 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB44_9
.LBB44_12:                              # %for.end.54
	movabsq	$.L.str.48, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.49, %rcx
	movq	job, %rdi
	movq	job, %rsi
	movq	1632(%rsi), %rsi
	movq	40(%rsi), %rsi
	subq	$1, %rsi
	movq	job, %r8
	movq	1632(%r8), %r8
	movq	48(%r8), %r8
	movq	(%r8,%rsi,8), %rsi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	expand_user_string
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$free, %rsi
	movq	-24(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	da_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	list_style_sheets_html, .Lfunc_end44-list_style_sheets_html
	.cfi_endproc

	.align	16, 0x90
	.type	style_sheets_versions,@function
style_sheets_versions:                  # @style_sheets_versions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	version_set_to_null
	movq	-24(%rbp), %rdi
	callq	version_set_to_null
	movq	$0, -32(%rbp)
.LBB45_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB45_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	get_style_sheet
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	version_add
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	version_cmp
	cmpl	$0, %eax
	jle	.LBB45_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	version_cpy
.LBB45_4:                               # %if.end
                                        #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_5
.LBB45_5:                               # %for.inc
                                        #   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB45_1
.LBB45_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	style_sheets_versions, .Lfunc_end45-style_sheets_versions
	.cfi_endproc

	.align	16, 0x90
	.type	style_sheet_html_print_signature,@function
style_sheet_html_print_signature:       # @style_sheet_html_print_signature
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	addq	$24, %rsi
	movq	%rsi, %rdi
	callq	version_null_p
	testb	$1, %al
	jne	.LBB46_1
	jmp	.LBB46_2
.LBB46_1:                               # %if.then
	movabsq	$.L.str.73, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %r8
	movb	$0, %al
	callq	fprintf
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB46_3
.LBB46_2:                               # %if.else
	movabsq	$.L.str.74, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	8(%rax), %r8
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	addq	$24, %rcx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.75, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB46_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB46_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB46_7
.LBB46_5:                               # %lor.lhs.false.13
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	version_null_p
	testb	$1, %al
	jne	.LBB46_6
	jmp	.LBB46_7
.LBB46_6:                               # %lor.lhs.false.16
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	$0, 40(%rax)
	jbe	.LBB46_16
.LBB46_7:                               # %if.then.19
	movabsq	$.L.str.76, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movabsq	$.L.str.70, %rdx
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	authors_print_html
	movq	-16(%rbp), %rdx
	addq	$40, %rdx
	movq	%rdx, %rdi
	callq	version_null_p
	testb	$1, %al
	jne	.LBB46_9
# BB#8:                                 # %if.then.25
	movabsq	$.L.str.77, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	-16(%rbp), %rsi
	addq	$40, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.27, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB46_9:                               # %if.end.30
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	$0, 40(%rax)
	jbe	.LBB46_15
# BB#10:                                # %if.then.35
	movabsq	$.L.str.23, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	$0, -24(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB46_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB46_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB46_11 Depth=1
	movabsq	$.L.str.78, %rsi
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.25, %rcx
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	cmovneq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	64(%r8), %r8
	movq	48(%r8), %r8
	movq	(%r8,%rdx,8), %r8
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -64(%rbp)         # 4-byte Spill
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB46_11 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB46_11
.LBB46_14:                              # %for.end
	movabsq	$.L.str.27, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB46_15:                              # %if.end.47
	movabsq	$.L.str.79, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB46_16:                              # %if.end.49
	movabsq	$.L.str.80, %rsi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rdx
	callq	documentation_print_html
	movabsq	$.L.str.81, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -76(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	style_sheet_html_print_signature, .Lfunc_end46-style_sheet_html_print_signature
	.cfi_endproc

	.globl	list_style_sheets_texinfo
	.align	16, 0x90
	.type	list_style_sheets_texinfo,@function
list_style_sheets_texinfo:              # @list_style_sheets_texinfo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.33, %rsi
	movq	%rdi, -8(%rbp)
	movq	job, %rdi
	movq	16(%rdi), %rdi
	callq	pw_glob_on_suffix
	movabsq	$sheet_name_cmp, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rsi, 64(%rax)
	movq	-24(%rbp), %rdi
	callq	da_qsort
	leaq	-56(%rbp), %rdx
	leaq	-44(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	style_sheets_versions
	movl	msg_verbosity, %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB47_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.50, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	leaq	-44(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.51, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	leaq	-56(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.27, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB47_2:                               # %if.end
	movq	$0, -32(%rbp)
.LBB47_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB47_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB47_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	get_style_sheet
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	style_sheet_texinfo_print_signature
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB47_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB47_3
.LBB47_6:                               # %for.end
	movabsq	$free, %rsi
	movq	-24(%rbp), %rdi
	callq	da_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	list_style_sheets_texinfo, .Lfunc_end47-list_style_sheets_texinfo
	.cfi_endproc

	.align	16, 0x90
	.type	style_sheet_texinfo_print_signature,@function
style_sheet_texinfo_print_signature:    # @style_sheet_texinfo_print_signature
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$.L.str.82, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rcx
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB48_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB48_5
.LBB48_2:                               # %lor.lhs.false.4
	movl	msg_verbosity, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB48_16
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	version_null_p
	testb	$1, %al
	jne	.LBB48_4
	jmp	.LBB48_5
.LBB48_4:                               # %lor.lhs.false.6
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	$0, 40(%rax)
	jbe	.LBB48_16
.LBB48_5:                               # %if.then
	movabsq	$.L.str.70, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	authors_print_texinfo
	movl	msg_verbosity, %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB48_15
# BB#6:                                 # %if.then.12
	movq	-16(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	version_null_p
	testb	$1, %al
	jne	.LBB48_8
# BB#7:                                 # %if.then.16
	movabsq	$.L.str.83, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	-16(%rbp), %rsi
	addq	$40, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	version_self_print
	movabsq	$.L.str.84, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB48_8:                               # %if.end
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	$0, 40(%rax)
	jbe	.LBB48_14
# BB#9:                                 # %if.then.25
	movabsq	$.L.str.23, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movq	$0, -24(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB48_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB48_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB48_10 Depth=1
	movabsq	$.L.str.85, %rsi
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.25, %rcx
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	cmovneq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB48_10 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB48_10
.LBB48_13:                              # %for.end
	movabsq	$.L.str.84, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB48_14:                              # %if.end.35
	jmp	.LBB48_15
.LBB48_15:                              # %if.end.36
	jmp	.LBB48_16
.LBB48_16:                              # %if.end.37
	movabsq	$.L.str.71, %rsi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rdx
	callq	documentation_print_texinfo
	movabsq	$.L.str.86, %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	style_sheet_texinfo_print_signature, .Lfunc_end48-style_sheet_texinfo_print_signature
	.cfi_endproc

	.globl	new_style_sheets
	.align	16, 0x90
	.type	new_style_sheets,@function
new_style_sheets:                       # @new_style_sheets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$sheet_hash_1, %rdx
	movabsq	$sheet_hash_2, %rcx
	movabsq	$sheet_hash_cmp, %r8
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	hash_init
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	new_style_sheets, .Lfunc_end49-new_style_sheets
	.cfi_endproc

	.align	16, 0x90
	.type	sheet_hash_1,@function
sheet_hash_1:                           # @sheet_hash_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB50_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB50_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB50_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$15, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB50_3
.LBB50_5:                               # %while.end
	jmp	.LBB50_6
.LBB50_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end50:
	.size	sheet_hash_1, .Lfunc_end50-sheet_hash_1
	.cfi_endproc

	.align	16, 0x90
	.type	sheet_hash_2,@function
sheet_hash_2:                           # @sheet_hash_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	$0, -16(%rbp)
# BB#2:                                 # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
.LBB51_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB51_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB51_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$7, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movslq	%edx, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB51_3
.LBB51_5:                               # %while.end
	jmp	.LBB51_6
.LBB51_6:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
# BB#7:                                 # %do.end.5
	movq	-40(%rbp), %rax         # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end51:
	.size	sheet_hash_2, .Lfunc_end51-sheet_hash_2
	.cfi_endproc

	.align	16, 0x90
	.type	sheet_hash_cmp,@function
sheet_hash_cmp:                         # @sheet_hash_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB52_2
.LBB52_2:                               # %do.body.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.LBB52_3:                               # %do.body.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB52_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB52_7
.LBB52_5:                               # %if.end
                                        #   in Loop: Header=BB52_3 Depth=1
	jmp	.LBB52_6
.LBB52_6:                               # %do.cond
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movzbl	1(%rax), %esi
	cmpl	%esi, %ecx
	je	.LBB52_3
.LBB52_7:                               # %do.end
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -20(%rbp)
# BB#8:                                 # %do.end.15
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#9:                                 # %do.end.17
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end52:
	.size	sheet_hash_cmp, .Lfunc_end52-sheet_hash_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	style_sheet_mixed_new,@function
style_sheet_mixed_new:                  # @style_sheet_mixed_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	strcpy
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	callq	ancestors_new
	movabsq	$.L.str.53, %rsi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	strtok
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	da_append
	movq	-32(%rbp), %rdi
	callq	get_style_sheet
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	stpcpy
	movq	%rax, -48(%rbp)
.LBB53_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.53, %rsi
	callq	strtok
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB53_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB53_3 Depth=1
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	da_append
	movq	-32(%rbp), %rdi
	callq	get_style_sheet
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	$44, (%rax)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	stpcpy
	movq	%rax, -48(%rbp)
	jmp	.LBB53_3
.LBB53_5:                               # %while.end
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -40(%rbp)
# BB#6:                                 # %do.body.15
	movl	msg_verbosity, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB53_8
# BB#7:                                 # %if.then
	movabsq	$.L.str.89, %rsi
	movq	stderr, %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB53_8:                               # %if.end
	jmp	.LBB53_9
.LBB53_9:                               # %do.end.18
	movq	-40(%rbp), %rdi
	callq	new_style_sheet
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rdi
	callq	strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	da_concat
	movq	-64(%rbp), %rdi
	callq	da_erase
	movq	-16(%rbp), %rdi
	callq	style_sheet_finalize
	movq	-40(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	style_sheet_mixed_new, .Lfunc_end53-style_sheet_mixed_new
	.cfi_endproc

	.align	16, 0x90
	.type	require_style_sheet,@function
require_style_sheet:                    # @require_style_sheet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$640, %rsp              # imm = 0x280
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.52, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB54_2
# BB#1:                                 # %if.then
	jmp	.LBB54_7
.LBB54_2:                               # %if.end
	leaq	-632(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, -632(%rbp)
	movq	style_sheets, %rdi
	movq	%rax, %rsi
	callq	hash_find_item
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB54_6
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	load_style_sheet
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB54_5
# BB#4:                                 # %if.then.7
	movabsq	$.L.str.90, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	%rax, %rdx
	movq	-640(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	error
.LBB54_5:                               # %if.end.9
	jmp	.LBB54_6
.LBB54_6:                               # %if.end.10
	jmp	.LBB54_7
.LBB54_7:                               # %return
	addq	$640, %rsp              # imm = 0x280
	popq	%rbp
	retq
.Lfunc_end54:
	.size	require_style_sheet, .Lfunc_end54-require_style_sheet
	.cfi_endproc

	.align	16, 0x90
	.type	faced_string_free,@function
faced_string_free:                      # @faced_string_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB55_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB55_3:                               # %if.end
	jmp	.LBB55_4
.LBB55_4:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	faced_string_free, .Lfunc_end55-faced_string_free
	.cfi_endproc

	.align	16, 0x90
	.type	rhs_set_no_face,@function
rhs_set_no_face:                        # @rhs_set_no_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB56_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB56_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	12(%rax), %edx
	cmpl	No_fface, %edx
	jne	.LBB56_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	cmpl	No_fface+4, %edx
	jne	.LBB56_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 12(%rax)
.LBB56_5:                               # %if.end
                                        #   in Loop: Header=BB56_1 Depth=1
	jmp	.LBB56_6
.LBB56_6:                               # %for.inc
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB56_1
.LBB56_7:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end56:
	.size	rhs_set_no_face, .Lfunc_end56-rhs_set_no_face
	.cfi_endproc

	.align	16, 0x90
	.type	check_doubles,@function
check_doubles:                          # @check_doubles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	$1, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	592(%rax), %rsi
	callq	check_words_doubles
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	andl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	600(%rsi), %rsi
	callq	check_words_doubles
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	andl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -9(%rbp)
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	check_doubles, .Lfunc_end57-check_doubles
	.cfi_endproc

	.align	16, 0x90
	.type	check_sensitivity,@function
check_sensitivity:                      # @check_sensitivity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movb	$1, -17(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 72(%rdi)
	jne	.LBB58_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB58_3
.LBB58_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	592(%rax), %rsi
	callq	check_words_lower_case
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	andl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	600(%rsi), %rsi
	callq	check_words_lower_case
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	andl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	608(%rsi), %rsi
	callq	check_sequences_lower_case
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	andl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -17(%rbp)
	movb	-17(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB58_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	check_sensitivity, .Lfunc_end58-check_sensitivity
	.cfi_endproc

	.align	16, 0x90
	.type	check_words_doubles,@function
check_words_doubles:                    # @check_words_doubles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	check_rules_doubles
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB59_1
	jmp	.LBB59_2
.LBB59_1:                               # %land.rhs
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	check_rules_doubles
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB59_2:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	check_words_doubles, .Lfunc_end59-check_words_doubles
	.cfi_endproc

	.align	16, 0x90
	.type	check_rules_doubles,@function
check_rules_doubles:                    # @check_rules_doubles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$1, -25(%rbp)
	movq	$1, -24(%rbp)
.LBB60_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB60_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB60_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB60_1 Depth=1
	xorl	%eax, %eax
	movabsq	$.L.str.87, %rdx
	movb	$0, -25(%rbp)
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	(%rsi), %r8
	movl	%eax, %edi
	movl	%eax, %esi
	movb	$0, %al
	callq	error
.LBB60_4:                               # %if.end
                                        #   in Loop: Header=BB60_1 Depth=1
	jmp	.LBB60_5
.LBB60_5:                               # %for.inc
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB60_1
.LBB60_6:                               # %for.end
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	check_rules_doubles, .Lfunc_end60-check_rules_doubles
	.cfi_endproc

	.align	16, 0x90
	.type	check_words_lower_case,@function
check_words_lower_case:                 # @check_words_lower_case
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	check_rules_lower_case
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB61_1
	jmp	.LBB61_2
.LBB61_1:                               # %land.rhs
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	check_rules_lower_case
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB61_2:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	check_words_lower_case, .Lfunc_end61-check_words_lower_case
	.cfi_endproc

	.align	16, 0x90
	.type	check_sequences_lower_case,@function
check_sequences_lower_case:             # @check_sequences_lower_case
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$1, -25(%rbp)
	movq	$0, -24(%rbp)
.LBB62_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB62_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rsi
	callq	check_sequence_lower_case
	andb	$1, %al
	movzbl	%al, %edx
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r8d
	andl	%edx, %r8d
	cmpl	$0, %r8d
	setne	%al
	andb	$1, %al
	movb	%al, -25(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB62_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB62_1
.LBB62_4:                               # %for.end
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	check_sequences_lower_case, .Lfunc_end62-check_sequences_lower_case
	.cfi_endproc

	.align	16, 0x90
	.type	check_rules_lower_case,@function
check_rules_lower_case:                 # @check_rules_lower_case
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$1, -25(%rbp)
	movq	$0, -24(%rbp)
.LBB63_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB63_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %rdi
	callq	is_strlower
	cmpl	$0, %eax
	jne	.LBB63_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB63_1 Depth=1
	xorl	%eax, %eax
	movabsq	$.L.str.88, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	(%rsi), %r8
	movl	%eax, %edi
	movl	%eax, %esi
	movb	$0, %al
	callq	error
	movb	$0, -25(%rbp)
.LBB63_4:                               # %if.end
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_5
.LBB63_5:                               # %for.inc
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB63_1
.LBB63_6:                               # %for.end
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	check_rules_lower_case, .Lfunc_end63-check_rules_lower_case
	.cfi_endproc

	.align	16, 0x90
	.type	check_sequence_lower_case,@function
check_sequence_lower_case:              # @check_sequence_lower_case
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$1, -17(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rdi
	callq	is_strlower
	cmpl	$0, %eax
	jne	.LBB64_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movabsq	$.L.str.88, %rdx
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %r8
	movl	%eax, %edi
	movl	%eax, %esi
	movb	$0, %al
	callq	error
	movb	$0, -17(%rbp)
.LBB64_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	check_words_lower_case
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	andl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	callq	check_words_lower_case
	andb	$1, %al
	movzbl	%al, %ecx
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	andl	%ecx, %edx
	cmpl	$0, %edx
	setne	%al
	andb	$1, %al
	movb	%al, -17(%rbp)
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	check_sequence_lower_case, .Lfunc_end64-check_sequence_lower_case
	.cfi_endproc

	.align	16, 0x90
	.type	load_style_sheet,@function
load_style_sheet:                       # @load_style_sheet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$4, %rax
	jae	.LBB65_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_3
	jmp	.LBB65_4
.LBB65_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-64(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	addq	$-4, %rdi
	movl	$.L.str.33, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB65_4
.LBB65_3:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	parse_style_sheet
	movq	%rax, -24(%rbp)
	jmp	.LBB65_11
.LBB65_4:                               # %if.else
	movabsq	$.L.str.33, %rdx
	movq	job, %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	pw_find_file
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB65_10
# BB#5:                                 # %if.then.8
	jmp	.LBB65_6
.LBB65_6:                               # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$.L.str.33, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	-56(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-72(%rbp), %rdi         # 8-byte Reload
	leaq	16(%rdi,%rax), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -40(%rbp)
# BB#7:                                 # %do.body.12
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	stpcpy
	movl	$.L.str.33, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	stpcpy
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#8:                                 # %do.end
	jmp	.LBB65_9
.LBB65_9:                               # %do.end.15
	movabsq	$.L.str.91, %rdi
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	quotearg
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	movq	$0, -8(%rbp)
	jmp	.LBB65_12
.LBB65_10:                              # %if.end
	movq	-32(%rbp), %rdi
	callq	parse_style_sheet
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	free
.LBB65_11:                              # %if.end.19
	movq	-16(%rbp), %rdi
	callq	strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	callq	style_sheet_finalize
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB65_12:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	load_style_sheet, .Lfunc_end65-load_style_sheet
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"4.14"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Rhs"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\\b(%s)\\b"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ssheet.c"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"C Close: strings"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"C Close: regex"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" ->"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	":\n"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Keywords: Strings"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Keywords: Regexps"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Operators: Strings"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Operators: Regexps"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Sequences"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Finalizing style sheet \"%s\" (%s)\n"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_"
	.size	.L.str.14, 54

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_0123456789"
	.size	.L.str.15, 64

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"---------- After Finalization of %s\n"
	.size	.L.str.16, 37

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Checking coherence of \"%s\" (%s)\n"
	.size	.L.str.17, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\"%s\" (%s) is sane.\n"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\"%s\" (%s) is corrupted.\n"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"---------- End of Finalization of %s\n"
	.size	.L.str.20, 38

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Style sheet \"%s\" (%s), version "
	.size	.L.str.21, 32

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Written by %s\n"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"It inherits from: "
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s%s"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	", "
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.zero	1
	.size	.L.str.26, 1

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	".\n"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Case %ssensitive\n"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"in"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"First alphabet is "
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Second alphabet is "
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Known Style Sheets"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	".ssh"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"sheets.html generation"
	.size	.L.str.34, 23

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<html>\n#{html.begin.hook}\n<head>\n   <title>#{html.title:-GNU a2ps language support}</title>\n</head>\n\n<h1 align=\\\"CENTER\\\">\n#{html.title.1:-GNU a2ps language support}\n</h1>\n#{html.hline:-<hline>}\n<h2>Current <a href=\"sheets.mp\">sheets.map</a></h2>\n<p>It is the list of rules to decide what style sheet to use.</p>\n"
	.size	.L.str.35, 314

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"#{html.hline:-<hline>}\n<h2>Sumary of current style sheets</h2>\n<p>There is a <a href=\"sheets.tar.gz\">package</a> which contains them all.  Its index (sum of the style sheets version number) is <strong>"
	.size	.L.str.36, 202

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"</strong>, and the highest requirement is a2ps version "
	.size	.L.str.37, 56

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	".  Links point to their detailed exposure.</p>\n"
	.size	.L.str.38, 48

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"<table border=\"0\" cellpadding=\"0\"><tr>\n"
	.size	.L.str.39, 40

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"<td valign=\"top\"><ul>\n"
	.size	.L.str.40, 23

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"<li><a href=\"#%s\">%s <code>"
	.size	.L.str.41, 28

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"</a></code></li>\n"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"</ul></td>\n"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"</tr></table>\n"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"#{html.hline:-<hline>}\n<h2>Detailed list of current style sheets</h2>\n"
	.size	.L.str.45, 71

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Links point to their files.</p>\n"
	.size	.L.str.46, 33

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"<ul>\n"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"</ul>\n"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"#{html.end.hook}\n</body>\n</html>\n"
	.size	.L.str.49, 34

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"The current index (sum of all the style sheets version number) is "
	.size	.L.str.50, 67

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	" and the highest requirement is a2ps version "
	.size	.L.str.51, 46

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"plain"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	",;+"
	.size	.L.str.53, 4

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\"%s\": "
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\\%d: "
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"cannot compile regular expression `%s': %s"
	.size	.L.str.56, 43

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"/%s/ -> "
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"\"%s\" -> "
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"C usual exceptions: strings"
	.size	.L.str.59, 28

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"C usual exceptions: regexps"
	.size	.L.str.60, 28

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\\'"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"\\\\"
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"\\\""
	.size	.L.str.63, 3

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Ancestors"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"<undefined>\n"
	.size	.L.str.65, 13

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"\"\n"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%s (%s.ssh version "
	.size	.L.str.67, 20

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	")\n"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"%s (%s.ssh)\n"
	.size	.L.str.69, 13

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Written by "
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"%s\n"
	.size	.L.str.71, 4

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"\n"
	.size	.L.str.72, 2

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"<li><p><strong><a href=\"%s.ssh\" name=\"%s\">%s</a></strong>.</p>\n"
	.size	.L.str.73, 64

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"<li><p><strong><a href=\"%s.ssh\" name=\"%s\">%s</a></strong> version "
	.size	.L.str.74, 67

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	".</p>\n"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"<p>"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"It requires a2ps version "
	.size	.L.str.77, 26

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"%s<a href=\"#%s\">%s.ssh</a>"
	.size	.L.str.78, 27

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"</p>"
	.size	.L.str.79, 5

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"<p>%s</p>\n"
	.size	.L.str.80, 11

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"</li>\n\n"
	.size	.L.str.81, 8

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"@deftp {Style Sheet} {%s} (@file{%s.ssh})\n"
	.size	.L.str.82, 43

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"It requires @code{a2ps} version "
	.size	.L.str.83, 33

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	".  \n"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%s@file{%s.ssh}"
	.size	.L.str.85, 16

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"@end deftp\n\n"
	.size	.L.str.86, 13

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"%s.ssh:`%s' is defined twice"
	.size	.L.str.87, 29

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"%s.ssh:`%s' uses upper case characters"
	.size	.L.str.88, 39

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Creating a mixed style sheet \"%s\"\n"
	.size	.L.str.89, 35

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"cannot find style sheet `%s': using plain style"
	.size	.L.str.90, 48

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"cannot find file `%s'"
	.size	.L.str.91, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
