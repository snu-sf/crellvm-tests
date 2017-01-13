	.text
	.file	"ppd.bc"
	.globl	ppd_font_add
	.align	16, 0x90
	.type	ppd_font_add,@function
ppd_font_add:                           # @ppd_font_add
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	string_htable_add
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ppd_font_add, .Lfunc_end0-ppd_font_add
	.cfi_endproc

	.globl	ppd_font_known_p
	.align	16, 0x90
	.type	ppd_font_known_p,@function
ppd_font_known_p:                       # @ppd_font_known_p
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	string_htable_get
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ppd_font_known_p, .Lfunc_end1-ppd_font_known_p
	.cfi_endproc

	.globl	ppd_new
	.align	16, 0x90
	.type	ppd_new,@function
ppd_new:                                # @ppd_new
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
	movl	$32, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -8(%rbp)
	callq	string_htable_new
	movq	-8(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ppd_new, .Lfunc_end2-ppd_new
	.cfi_endproc

	.globl	ppd_free
	.align	16, 0x90
	.type	ppd_free,@function
ppd_free:                               # @ppd_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_14
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	string_htable_free
# BB#2:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.4
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_8
# BB#7:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB3_8:                                # %if.end.8
	jmp	.LBB3_9
.LBB3_9:                                # %do.end.9
	jmp	.LBB3_10
.LBB3_10:                               # %do.body.10
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB3_12
# BB#11:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB3_12:                               # %if.end.14
	jmp	.LBB3_13
.LBB3_13:                               # %do.end.15
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB3_14:                               # %if.end.16
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ppd_free, .Lfunc_end3-ppd_free
	.cfi_endproc

	.globl	_a2ps_ppd_get
	.align	16, 0x90
	.type	_a2ps_ppd_get,@function
_a2ps_ppd_get:                          # @_a2ps_ppd_get
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
	movabsq	$.L.str, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xpw_find_file
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	a2ps_ppd_parse
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	xstrdup
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rdi
	callq	free
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_a2ps_ppd_get, .Lfunc_end4-_a2ps_ppd_get
	.cfi_endproc

	.globl	_a2ps_ppd_list_short
	.align	16, 0x90
	.type	_a2ps_ppd_list_short,@function
_a2ps_ppd_list_short:                   # @_a2ps_ppd_list_short
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
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str, %rdx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	pw_lister_on_suffix
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_a2ps_ppd_list_short, .Lfunc_end5-_a2ps_ppd_list_short
	.cfi_endproc

	.globl	_a2ps_ppd_list_long
	.align	16, 0x90
	.type	_a2ps_ppd_list_long,@function
_a2ps_ppd_list_long:                    # @_a2ps_ppd_list_long
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
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	pw_glob_on_suffix
	movabsq	$.L.str.1, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$61, %esi
	movl	$1, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	$0, -32(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	_a2ps_ppd_get
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	ppd_self_print
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -48(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movabsq	$free, %rsi
	movq	-24(%rbp), %rdi
	callq	da_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_a2ps_ppd_list_long, .Lfunc_end6-_a2ps_ppd_list_long
	.cfi_endproc

	.align	16, 0x90
	.type	ppd_self_print,@function
ppd_self_print:                         # @ppd_self_print
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_6
.LBB7_2:                                # %if.else
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else.5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.6
	movl	$45, %esi
	movl	$1, %edx
	movabsq	$.L.str.2, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	-8(%rbp), %rax
	movq	(%rax), %r9
	movb	$0, %al
	callq	title
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	string_htable_dump_sorted
	movabsq	$.L.str.3, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB7_8
# BB#7:                                 # %if.then.12
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.15
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	$-1, %rcx
	movabsq	$strlen, %r8
	movabsq	$fputs, %rsi
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %r9
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	%r9, %rdx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	lister_fprint_separated
.LBB7_9:                                # %if.end.17
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ppd_self_print, .Lfunc_end7-ppd_self_print
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".ppd"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Known PostScript Printer Descriptions"
	.size	.L.str.1, 38

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s (%s)"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Known Fonts"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n  None.\n"
	.size	.L.str.4, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
