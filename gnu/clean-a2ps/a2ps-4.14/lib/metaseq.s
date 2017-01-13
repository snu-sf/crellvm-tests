	.text
	.file	"metaseq.bc"
	.globl	macro_meta_sequence_table_new
	.align	16, 0x90
	.type	macro_meta_sequence_table_new,@function
macro_meta_sequence_table_new:          # @macro_meta_sequence_table_new
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
	callq	pair_table_new
	popq	%rbp
	retq
.Lfunc_end0:
	.size	macro_meta_sequence_table_new, .Lfunc_end0-macro_meta_sequence_table_new
	.cfi_endproc

	.globl	macro_meta_sequence_table_free
	.align	16, 0x90
	.type	macro_meta_sequence_table_free,@function
macro_meta_sequence_table_free:         # @macro_meta_sequence_table_free
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
	movq	-8(%rbp), %rdi
	callq	pair_table_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	macro_meta_sequence_table_free, .Lfunc_end1-macro_meta_sequence_table_free
	.cfi_endproc

	.globl	macro_meta_sequence_add
	.align	16, 0x90
	.type	macro_meta_sequence_add,@function
macro_meta_sequence_add:                # @macro_meta_sequence_add
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
	subq	$64, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	strpbrk
	cmpq	$0, %rax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rax
	movq	1520(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	strspn
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	callq	pair_add
	movb	$1, -1(%rbp)
.LBB2_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	macro_meta_sequence_add, .Lfunc_end2-macro_meta_sequence_add
	.cfi_endproc

	.globl	macro_meta_sequence_delete
	.align	16, 0x90
	.type	macro_meta_sequence_delete,@function
macro_meta_sequence_delete:             # @macro_meta_sequence_delete
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1520(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	pair_delete
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	macro_meta_sequence_delete, .Lfunc_end3-macro_meta_sequence_delete
	.cfi_endproc

	.globl	macro_meta_sequence_get
	.align	16, 0x90
	.type	macro_meta_sequence_get,@function
macro_meta_sequence_get:                # @macro_meta_sequence_get
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	1520(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	pair_get
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	macro_meta_sequence_get, .Lfunc_end4-macro_meta_sequence_get
	.cfi_endproc

	.globl	macro_meta_sequences_list_short
	.align	16, 0x90
	.type	macro_meta_sequences_list_short,@function
macro_meta_sequences_list_short:        # @macro_meta_sequences_list_short
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
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	-8(%rbp), %rsi
	movq	1520(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	pair_table_list_short
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	macro_meta_sequences_list_short, .Lfunc_end5-macro_meta_sequences_list_short
	.cfi_endproc

	.globl	macro_meta_sequences_list_long
	.align	16, 0x90
	.type	macro_meta_sequences_list_long,@function
macro_meta_sequences_list_long:         # @macro_meta_sequences_list_long
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
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movl	$61, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rcx
	movq	1520(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	pair_table_list_long
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	macro_meta_sequences_list_long, .Lfunc_end6-macro_meta_sequences_list_long
	.cfi_endproc

	.globl	expand_user_string
	.align	16, 0x90
	.type	expand_user_string,@function
expand_user_string:                     # @expand_user_string
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	cmpl	$0, expand_user_string.first_time
	je	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$expand_user_string.user_string_stack, %rdi
	xorl	%eax, %eax
	movabsq	$xmalloc, %rcx
	movabsq	$free, %r8
	movl	$0, expand_user_string.first_time
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_obstack_begin
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB7_2:                                # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.2
	movq	$0, -8(%rbp)
	jmp	.LBB7_23
.LBB7_4:                                # %if.end.3
	jmp	.LBB7_5
.LBB7_5:                                # %do.body
	movl	msg_verbosity, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB7_7
# BB#6:                                 # %if.then.5
	movabsq	$.L.str.3, %rsi
	movq	stderr, %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB7_7:                                # %if.end.7
	jmp	.LBB7_8
.LBB7_8:                                # %do.end
	movabsq	$expand_user_string.user_string_stack, %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	grow_user_string_obstack
	movabsq	$expand_user_string.user_string_stack, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rcx
	addq	$1, %rcx
	movq	-56(%rbp), %rdx
	cmpq	32(%rdx), %rcx
	jbe	.LBB7_10
# BB#9:                                 # %if.then.8
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	_obstack_newchunk
.LBB7_10:                               # %if.end.9
	movabsq	$expand_user_string.user_string_stack, %rax
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	$0, (%rdx)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB7_12
# BB#11:                                # %if.then.13
	movq	-64(%rbp), %rax
	movb	80(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 80(%rax)
.LBB7_12:                               # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	$0, %rdx
	movq	-64(%rbp), %rsi
	movslq	48(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-64(%rbp), %rsi
	movl	48(%rsi), %eax
	xorl	$-1, %eax
	movslq	%eax, %rsi
	andq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	%rdx, %rcx
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-64(%rbp), %rsi
	movq	8(%rsi), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB7_14
# BB#13:                                # %if.then.31
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB7_14:                               # %if.end.34
	movabsq	$expand_user_string.user_string_stack, %rax
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-72(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB7_17
# BB#15:                                # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jae	.LBB7_17
# BB#16:                                # %if.then.46
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-88(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB7_18
.LBB7_17:                               # %if.else
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	obstack_free
.LBB7_18:                               # %if.end.49
	jmp	.LBB7_19
.LBB7_19:                               # %do.body.50
	movl	msg_verbosity, %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB7_21
# BB#20:                                # %if.then.53
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	fprintf
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB7_21:                               # %if.end.55
	jmp	.LBB7_22
.LBB7_22:                               # %do.end.56
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_23:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	expand_user_string, .Lfunc_end7-expand_user_string
	.cfi_endproc

	.align	16, 0x90
	.type	grow_user_string_obstack,@function
grow_user_string_obstack:               # @grow_user_string_obstack
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
	subq	$7552, %rsp             # imm = 0x1D80
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -64(%rbp)
	movb	$32, -73(%rbp)
	movq	$0, -1368(%rbp)
	movl	$1, -1372(%rbp)
	movq	$0, -64(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_2537 Depth 2
                                        #     Child Loop BB8_15 Depth 2
                                        #     Child Loop BB8_64 Depth 2
                                        #     Child Loop BB8_45 Depth 2
                                        #     Child Loop BB8_26 Depth 2
                                        #     Child Loop BB8_644 Depth 2
                                        #     Child Loop BB8_655 Depth 2
                                        #     Child Loop BB8_594 Depth 2
                                        #     Child Loop BB8_605 Depth 2
                                        #     Child Loop BB8_620 Depth 2
                                        #     Child Loop BB8_541 Depth 2
                                        #     Child Loop BB8_552 Depth 2
                                        #     Child Loop BB8_494 Depth 2
                                        #     Child Loop BB8_505 Depth 2
                                        #     Child Loop BB8_520 Depth 2
                                        #     Child Loop BB8_441 Depth 2
                                        #     Child Loop BB8_452 Depth 2
                                        #     Child Loop BB8_389 Depth 2
                                        #     Child Loop BB8_400 Depth 2
                                        #     Child Loop BB8_309 Depth 2
                                        #     Child Loop BB8_320 Depth 2
                                        #     Child Loop BB8_241 Depth 2
                                        #     Child Loop BB8_252 Depth 2
                                        #     Child Loop BB8_183 Depth 2
                                        #     Child Loop BB8_194 Depth 2
                                        #     Child Loop BB8_123 Depth 2
                                        #     Child Loop BB8_134 Depth 2
                                        #     Child Loop BB8_748 Depth 2
                                        #     Child Loop BB8_759 Depth 2
                                        #     Child Loop BB8_722 Depth 2
                                        #     Child Loop BB8_733 Depth 2
                                        #     Child Loop BB8_670 Depth 2
                                        #     Child Loop BB8_681 Depth 2
                                        #     Child Loop BB8_567 Depth 2
                                        #     Child Loop BB8_578 Depth 2
                                        #     Child Loop BB8_467 Depth 2
                                        #     Child Loop BB8_478 Depth 2
                                        #     Child Loop BB8_415 Depth 2
                                        #     Child Loop BB8_426 Depth 2
                                        #     Child Loop BB8_361 Depth 2
                                        #     Child Loop BB8_372 Depth 2
                                        #     Child Loop BB8_335 Depth 2
                                        #     Child Loop BB8_346 Depth 2
                                        #     Child Loop BB8_266 Depth 2
                                        #     Child Loop BB8_283 Depth 2
                                        #     Child Loop BB8_294 Depth 2
                                        #     Child Loop BB8_213 Depth 2
                                        #     Child Loop BB8_224 Depth 2
                                        #     Child Loop BB8_152 Depth 2
                                        #     Child Loop BB8_163 Depth 2
                                        #     Child Loop BB8_696 Depth 2
                                        #     Child Loop BB8_707 Depth 2
                                        #     Child Loop BB8_85 Depth 2
                                        #     Child Loop BB8_104 Depth 2
                                        #     Child Loop BB8_855 Depth 2
                                        #     Child Loop BB8_906 Depth 2
                                        #     Child Loop BB8_917 Depth 2
                                        #     Child Loop BB8_932 Depth 2
                                        #     Child Loop BB8_943 Depth 2
                                        #     Child Loop BB8_961 Depth 2
                                        #     Child Loop BB8_972 Depth 2
                                        #     Child Loop BB8_876 Depth 2
                                        #     Child Loop BB8_887 Depth 2
                                        #     Child Loop BB8_1944 Depth 2
                                        #     Child Loop BB8_1955 Depth 2
                                        #     Child Loop BB8_1918 Depth 2
                                        #     Child Loop BB8_1929 Depth 2
                                        #     Child Loop BB8_1892 Depth 2
                                        #     Child Loop BB8_1903 Depth 2
                                        #     Child Loop BB8_1866 Depth 2
                                        #     Child Loop BB8_1877 Depth 2
                                        #     Child Loop BB8_1973 Depth 2
                                        #     Child Loop BB8_1984 Depth 2
                                        #     Child Loop BB8_1770 Depth 2
                                        #     Child Loop BB8_1781 Depth 2
                                        #     Child Loop BB8_1796 Depth 2
                                        #     Child Loop BB8_1717 Depth 2
                                        #     Child Loop BB8_1728 Depth 2
                                        #     Child Loop BB8_1743 Depth 2
                                        #     Child Loop BB8_1754 Depth 2
                                        #     Child Loop BB8_1817 Depth 2
                                        #     Child Loop BB8_1828 Depth 2
                                        #     Child Loop BB8_1843 Depth 2
                                        #     Child Loop BB8_1661 Depth 2
                                        #     Child Loop BB8_1672 Depth 2
                                        #     Child Loop BB8_1458 Depth 2
                                        #     Child Loop BB8_1469 Depth 2
                                        #     Child Loop BB8_1566 Depth 2
                                        #     Child Loop BB8_1577 Depth 2
                                        #     Child Loop BB8_1592 Depth 2
                                        #     Child Loop BB8_1513 Depth 2
                                        #     Child Loop BB8_1524 Depth 2
                                        #     Child Loop BB8_1539 Depth 2
                                        #     Child Loop BB8_1550 Depth 2
                                        #     Child Loop BB8_1487 Depth 2
                                        #     Child Loop BB8_1498 Depth 2
                                        #     Child Loop BB8_1613 Depth 2
                                        #     Child Loop BB8_1624 Depth 2
                                        #     Child Loop BB8_1639 Depth 2
                                        #     Child Loop BB8_1431 Depth 2
                                        #     Child Loop BB8_1442 Depth 2
                                        #     Child Loop BB8_1270 Depth 2
                                        #     Child Loop BB8_1281 Depth 2
                                        #     Child Loop BB8_1296 Depth 2
                                        #     Child Loop BB8_1307 Depth 2
                                        #     Child Loop BB8_1323 Depth 2
                                        #     Child Loop BB8_1334 Depth 2
                                        #     Child Loop BB8_1349 Depth 2
                                        #     Child Loop BB8_1217 Depth 2
                                        #     Child Loop BB8_1228 Depth 2
                                        #     Child Loop BB8_1165 Depth 2
                                        #     Child Loop BB8_1176 Depth 2
                                        #     Child Loop BB8_1081 Depth 2
                                        #     Child Loop BB8_1092 Depth 2
                                        #     Child Loop BB8_1107 Depth 2
                                        #     Child Loop BB8_987 Depth 2
                                        #     Child Loop BB8_1001 Depth 2
                                        #     Child Loop BB8_1012 Depth 2
                                        #     Child Loop BB8_2026 Depth 2
                                        #     Child Loop BB8_2037 Depth 2
                                        #     Child Loop BB8_2000 Depth 2
                                        #     Child Loop BB8_2011 Depth 2
                                        #     Child Loop BB8_1690 Depth 2
                                        #     Child Loop BB8_1701 Depth 2
                                        #     Child Loop BB8_1375 Depth 2
                                        #     Child Loop BB8_1386 Depth 2
                                        #     Child Loop BB8_1401 Depth 2
                                        #     Child Loop BB8_1412 Depth 2
                                        #     Child Loop BB8_1243 Depth 2
                                        #     Child Loop BB8_1254 Depth 2
                                        #     Child Loop BB8_1191 Depth 2
                                        #     Child Loop BB8_1202 Depth 2
                                        #     Child Loop BB8_1122 Depth 2
                                        #     Child Loop BB8_1139 Depth 2
                                        #     Child Loop BB8_1150 Depth 2
                                        #     Child Loop BB8_1054 Depth 2
                                        #     Child Loop BB8_1065 Depth 2
                                        #     Child Loop BB8_796 Depth 2
                                        #     Child Loop BB8_807 Depth 2
                                        #     Child Loop BB8_816 Depth 2
                                        #     Child Loop BB8_834 Depth 2
                                        #     Child Loop BB8_845 Depth 2
                                        #     Child Loop BB8_777 Depth 2
                                        #     Child Loop BB8_1028 Depth 2
                                        #     Child Loop BB8_1039 Depth 2
                                        #     Child Loop BB8_2082 Depth 2
                                        #     Child Loop BB8_2109 Depth 2
                                        #     Child Loop BB8_2120 Depth 2
                                        #     Child Loop BB8_2138 Depth 2
                                        #     Child Loop BB8_2149 Depth 2
                                        #     Child Loop BB8_2508 Depth 2
                                        #     Child Loop BB8_2519 Depth 2
                                        #     Child Loop BB8_2482 Depth 2
                                        #     Child Loop BB8_2493 Depth 2
                                        #     Child Loop BB8_2456 Depth 2
                                        #     Child Loop BB8_2467 Depth 2
                                        #     Child Loop BB8_2401 Depth 2
                                        #     Child Loop BB8_2412 Depth 2
                                        #     Child Loop BB8_2375 Depth 2
                                        #     Child Loop BB8_2386 Depth 2
                                        #     Child Loop BB8_2349 Depth 2
                                        #     Child Loop BB8_2360 Depth 2
                                        #     Child Loop BB8_2429 Depth 2
                                        #     Child Loop BB8_2440 Depth 2
                                        #     Child Loop BB8_2168 Depth 2
                                        #     Child Loop BB8_2179 Depth 2
                                        #     Child Loop BB8_2068 Depth 2
                                        #     Child Loop BB8_2055 Depth 2
                                        #     Child Loop BB8_2310 Depth 2
                                        #     Child Loop BB8_2326 Depth 2
                                        #     Child Loop BB8_2286 Depth 2
                                        #     Child Loop BB8_2303 Depth 2
                                        #     Child Loop BB8_2244 Depth 2
                                        #       Child Loop BB8_2252 Depth 3
                                        #       Child Loop BB8_2263 Depth 3
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB8_2551
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -1376(%rbp)
	cmpl	$37, -1376(%rbp)
	je	.LBB8_6
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$36, -1376(%rbp)
	je	.LBB8_6
# BB#4:                                 # %lor.lhs.false.8
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$35, -1376(%rbp)
	je	.LBB8_6
# BB#5:                                 # %lor.lhs.false.11
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$92, -1376(%rbp)
	jne	.LBB8_2530
.LBB8_6:                                # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	$0, -1368(%rbp)
	movl	$1, -1372(%rbp)
	movb	$32, -73(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$45, %edx
	jne	.LBB8_10
# BB#7:                                 # %if.then.18
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	$-1, -1372(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	%edx, %rax
	movq	%rax, -5560(%rbp)       # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-5560(%rbp), %rcx       # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	jne	.LBB8_9
# BB#8:                                 # %if.then.24
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -73(%rbp)
.LBB8_9:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.27
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$43, %edx
	jne	.LBB8_14
# BB#11:                                # %if.then.32
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	$1, -1372(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	%edx, %rax
	movq	%rax, -5568(%rbp)       # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-5568(%rbp), %rcx       # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	jne	.LBB8_13
# BB#12:                                # %if.then.42
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -73(%rbp)
.LBB8_13:                               # %if.end.45
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_14
.LBB8_14:                               # %if.end.46
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_15
.LBB8_15:                               # %while.cond
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	%edx, %rax
	movq	%rax, -5576(%rbp)       # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-5576(%rbp), %rcx       # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	je	.LBB8_17
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB8_15 Depth=2
	imulq	$10, -1368(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	addq	%rcx, %rax
	subq	$48, %rax
	movq	%rax, -1368(%rbp)
	jmp	.LBB8_15
.LBB8_17:                               # %while.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-1376(%rbp), %eax
	movl	%eax, %ecx
	subl	$35, %ecx
	movl	%eax, -5580(%rbp)       # 4-byte Spill
	movl	%ecx, -5584(%rbp)       # 4-byte Spill
	je	.LBB8_2047
	jmp	.LBB8_2552
.LBB8_2552:                             # %while.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5580(%rbp), %eax       # 4-byte Reload
	subl	$36, %eax
	movl	%eax, -5588(%rbp)       # 4-byte Spill
	je	.LBB8_769
	jmp	.LBB8_2553
.LBB8_2553:                             # %while.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5580(%rbp), %eax       # 4-byte Reload
	subl	$37, %eax
	movl	%eax, -5592(%rbp)       # 4-byte Spill
	je	.LBB8_77
	jmp	.LBB8_2554
.LBB8_2554:                             # %while.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5580(%rbp), %eax       # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -5596(%rbp)       # 4-byte Spill
	jne	.LBB8_2529
	jmp	.LBB8_18
.LBB8_18:                               # %sw.bb
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$102, %esi
	movl	%edx, -5600(%rbp)       # 4-byte Spill
	movl	%esi, -5604(%rbp)       # 4-byte Spill
	je	.LBB8_19
	jmp	.LBB8_2644
.LBB8_2644:                             # %sw.bb
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5600(%rbp), %eax       # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -5608(%rbp)       # 4-byte Spill
	je	.LBB8_38
	jmp	.LBB8_57
.LBB8_19:                               # %sw.bb.60
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_20
.LBB8_20:                               # %do.body
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_25
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_25
# BB#22:                                # %if.then.64
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1392(%rbp)
	movq	-1392(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1392(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_24
# BB#23:                                # %if.then.67
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1392(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_24:                               # %if.end.68
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1392(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$12, (%rcx)
.LBB8_25:                               # %if.end.70
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -1380(%rbp)
.LBB8_26:                               # %for.cond.71
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1380(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_31
# BB#27:                                # %for.body.76
                                        #   in Loop: Header=BB8_26 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1400(%rbp)
	movq	-1400(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1400(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_29
# BB#28:                                # %if.then.83
                                        #   in Loop: Header=BB8_26 Depth=2
	movl	$1, %esi
	movq	-1400(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_29:                               # %if.end.84
                                        #   in Loop: Header=BB8_26 Depth=2
	movb	-73(%rbp), %al
	movq	-1400(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB8_26 Depth=2
	movl	-1380(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1380(%rbp)
	jmp	.LBB8_26
.LBB8_31:                               # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_33
# BB#32:                                # %lor.lhs.false.89
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_36
.LBB8_33:                               # %if.then.92
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	-1408(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1408(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_35
# BB#34:                                # %if.then.99
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1408(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_35:                               # %if.end.100
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1408(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$12, (%rcx)
.LBB8_36:                               # %if.end.103
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_37
.LBB8_37:                               # %do.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_76
.LBB8_38:                               # %sw.bb.104
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_39
.LBB8_39:                               # %do.body.105
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_44
# BB#40:                                # %land.lhs.true.108
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_44
# BB#41:                                # %if.then.111
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1424(%rbp)
	movq	-1424(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1424(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_43
# BB#42:                                # %if.then.118
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1424(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_43:                               # %if.end.119
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1424(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$10, (%rcx)
.LBB8_44:                               # %if.end.122
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -1412(%rbp)
.LBB8_45:                               # %for.cond.123
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1412(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_50
# BB#46:                                # %for.body.128
                                        #   in Loop: Header=BB8_45 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1432(%rbp)
	movq	-1432(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1432(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_48
# BB#47:                                # %if.then.135
                                        #   in Loop: Header=BB8_45 Depth=2
	movl	$1, %esi
	movq	-1432(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_48:                               # %if.end.136
                                        #   in Loop: Header=BB8_45 Depth=2
	movb	-73(%rbp), %al
	movq	-1432(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#49:                                # %for.inc.139
                                        #   in Loop: Header=BB8_45 Depth=2
	movl	-1412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1412(%rbp)
	jmp	.LBB8_45
.LBB8_50:                               # %for.end.141
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_52
# BB#51:                                # %lor.lhs.false.143
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_55
.LBB8_52:                               # %if.then.146
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1440(%rbp)
	movq	-1440(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1440(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_54
# BB#53:                                # %if.then.153
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1440(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_54:                               # %if.end.154
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1440(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$10, (%rcx)
.LBB8_55:                               # %if.end.157
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_56
.LBB8_56:                               # %do.end.158
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_76
.LBB8_57:                               # %sw.default
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_58
.LBB8_58:                               # %do.body.159
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_63
# BB#59:                                # %land.lhs.true.162
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_63
# BB#60:                                # %if.then.165
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1456(%rbp)
	movq	-1456(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1456(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_62
# BB#61:                                # %if.then.172
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1456(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_62:                               # %if.end.173
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-1456(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rax)
	movb	%dl, (%rcx)
.LBB8_63:                               # %if.end.177
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -1444(%rbp)
.LBB8_64:                               # %for.cond.178
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1444(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_69
# BB#65:                                # %for.body.183
                                        #   in Loop: Header=BB8_64 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1464(%rbp)
	movq	-1464(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1464(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_67
# BB#66:                                # %if.then.190
                                        #   in Loop: Header=BB8_64 Depth=2
	movl	$1, %esi
	movq	-1464(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_67:                               # %if.end.191
                                        #   in Loop: Header=BB8_64 Depth=2
	movb	-73(%rbp), %al
	movq	-1464(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#68:                                # %for.inc.194
                                        #   in Loop: Header=BB8_64 Depth=2
	movl	-1444(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1444(%rbp)
	jmp	.LBB8_64
.LBB8_69:                               # %for.end.196
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_71
# BB#70:                                # %lor.lhs.false.198
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_74
.LBB8_71:                               # %if.then.201
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1472(%rbp)
	movq	-1472(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1472(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_73
# BB#72:                                # %if.then.208
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1472(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_73:                               # %if.end.209
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-1472(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rax)
	movb	%dl, (%rcx)
.LBB8_74:                               # %if.end.213
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_75
.LBB8_75:                               # %do.end.214
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_76
.LBB8_76:                               # %sw.epilog
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2529
.LBB8_77:                               # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -5612(%rbp)       # 4-byte Spill
	movl	%esi, -5616(%rbp)       # 4-byte Spill
	je	.LBB8_97
	jmp	.LBB8_2619
.LBB8_2619:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$37, %eax
	movl	%eax, -5620(%rbp)       # 4-byte Spill
	je	.LBB8_78
	jmp	.LBB8_2620
.LBB8_2620:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -5624(%rbp)       # 4-byte Spill
	je	.LBB8_689
	jmp	.LBB8_2621
.LBB8_2621:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$65, %eax
	movl	%eax, -5628(%rbp)       # 4-byte Spill
	je	.LBB8_142
	jmp	.LBB8_2622
.LBB8_2622:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -5632(%rbp)       # 4-byte Spill
	je	.LBB8_206
	jmp	.LBB8_2623
.LBB8_2623:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -5636(%rbp)       # 4-byte Spill
	je	.LBB8_264
	jmp	.LBB8_2624
.LBB8_2624:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$69, %eax
	movl	%eax, -5640(%rbp)       # 4-byte Spill
	je	.LBB8_328
	jmp	.LBB8_2625
.LBB8_2625:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$70, %eax
	movl	%eax, -5644(%rbp)       # 4-byte Spill
	je	.LBB8_354
	jmp	.LBB8_2626
.LBB8_2626:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -5648(%rbp)       # 4-byte Spill
	je	.LBB8_408
	jmp	.LBB8_2627
.LBB8_2627:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$78, %eax
	movl	%eax, -5652(%rbp)       # 4-byte Spill
	je	.LBB8_460
	jmp	.LBB8_2628
.LBB8_2628:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$81, %eax
	movl	%eax, -5656(%rbp)       # 4-byte Spill
	je	.LBB8_560
	jmp	.LBB8_2629
.LBB8_2629:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -5660(%rbp)       # 4-byte Spill
	je	.LBB8_663
	jmp	.LBB8_2630
.LBB8_2630:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$86, %eax
	movl	%eax, -5664(%rbp)       # 4-byte Spill
	je	.LBB8_715
	jmp	.LBB8_2631
.LBB8_2631:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$87, %eax
	movl	%eax, -5668(%rbp)       # 4-byte Spill
	je	.LBB8_741
	jmp	.LBB8_2632
.LBB8_2632:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -5672(%rbp)       # 4-byte Spill
	je	.LBB8_116
	jmp	.LBB8_2633
.LBB8_2633:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -5676(%rbp)       # 4-byte Spill
	je	.LBB8_171
	jmp	.LBB8_2634
.LBB8_2634:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -5680(%rbp)       # 4-byte Spill
	je	.LBB8_232
	jmp	.LBB8_2635
.LBB8_2635:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -5684(%rbp)       # 4-byte Spill
	je	.LBB8_302
	jmp	.LBB8_2636
.LBB8_2636:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -5688(%rbp)       # 4-byte Spill
	je	.LBB8_380
	jmp	.LBB8_2637
.LBB8_2637:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -5692(%rbp)       # 4-byte Spill
	je	.LBB8_434
	jmp	.LBB8_2638
.LBB8_2638:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -5696(%rbp)       # 4-byte Spill
	je	.LBB8_486
	jmp	.LBB8_2639
.LBB8_2639:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$113, %eax
	movl	%eax, -5700(%rbp)       # 4-byte Spill
	je	.LBB8_534
	jmp	.LBB8_2640
.LBB8_2640:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -5704(%rbp)       # 4-byte Spill
	je	.LBB8_586
	jmp	.LBB8_2641
.LBB8_2641:                             # %sw.bb.215
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-5612(%rbp), %eax       # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -5708(%rbp)       # 4-byte Spill
	je	.LBB8_634
	jmp	.LBB8_767
.LBB8_78:                               # %sw.bb.218
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_79
.LBB8_79:                               # %do.body.219
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_84
# BB#80:                                # %land.lhs.true.222
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_84
# BB#81:                                # %if.then.225
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1488(%rbp)
	movq	-1488(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1488(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_83
# BB#82:                                # %if.then.232
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1488(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_83:                               # %if.end.233
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1488(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$37, (%rcx)
.LBB8_84:                               # %if.end.236
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -1476(%rbp)
.LBB8_85:                               # %for.cond.237
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1476(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_90
# BB#86:                                # %for.body.242
                                        #   in Loop: Header=BB8_85 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1496(%rbp)
	movq	-1496(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1496(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_88
# BB#87:                                # %if.then.249
                                        #   in Loop: Header=BB8_85 Depth=2
	movl	$1, %esi
	movq	-1496(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_88:                               # %if.end.250
                                        #   in Loop: Header=BB8_85 Depth=2
	movb	-73(%rbp), %al
	movq	-1496(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#89:                                # %for.inc.253
                                        #   in Loop: Header=BB8_85 Depth=2
	movl	-1476(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1476(%rbp)
	jmp	.LBB8_85
.LBB8_90:                               # %for.end.255
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_92
# BB#91:                                # %lor.lhs.false.257
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_95
.LBB8_92:                               # %if.then.260
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1504(%rbp)
	movq	-1504(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1504(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_94
# BB#93:                                # %if.then.267
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1504(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_94:                               # %if.end.268
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1504(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$37, (%rcx)
.LBB8_95:                               # %if.end.271
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_96
.LBB8_96:                               # %do.end.272
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_97:                               # %sw.bb.273
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_98
.LBB8_98:                               # %do.body.274
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_103
# BB#99:                                # %land.lhs.true.277
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_103
# BB#100:                               # %if.then.280
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1520(%rbp)
	movq	-1520(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1520(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_102
# BB#101:                               # %if.then.287
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1520(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_102:                              # %if.end.288
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1520(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$3, (%rcx)
.LBB8_103:                              # %if.end.291
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -1508(%rbp)
.LBB8_104:                              # %for.cond.292
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1508(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_109
# BB#105:                               # %for.body.297
                                        #   in Loop: Header=BB8_104 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1528(%rbp)
	movq	-1528(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1528(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_107
# BB#106:                               # %if.then.304
                                        #   in Loop: Header=BB8_104 Depth=2
	movl	$1, %esi
	movq	-1528(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_107:                              # %if.end.305
                                        #   in Loop: Header=BB8_104 Depth=2
	movb	-73(%rbp), %al
	movq	-1528(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#108:                               # %for.inc.308
                                        #   in Loop: Header=BB8_104 Depth=2
	movl	-1508(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1508(%rbp)
	jmp	.LBB8_104
.LBB8_109:                              # %for.end.310
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_111
# BB#110:                               # %lor.lhs.false.312
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_114
.LBB8_111:                              # %if.then.315
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1536(%rbp)
	movq	-1536(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1536(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_113
# BB#112:                               # %if.then.322
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-1536(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_113:                              # %if.end.323
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1536(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$3, (%rcx)
.LBB8_114:                              # %if.end.326
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_115
.LBB8_115:                              # %do.end.327
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_116:                              # %sw.bb.328
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.5, %rdi
	leaq	-1104(%rbp), %rax
	movq	%rax, -5720(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -5728(%rbp)       # 8-byte Spill
	callq	macro_meta_sequence_get
	movq	-5720(%rbp), %rdi       # 8-byte Reload
	movq	-5728(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -5732(%rbp)       # 4-byte Spill
# BB#117:                               # %do.body.332
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-1104(%rbp), %rdi
	callq	strlen
	movq	%rax, -1544(%rbp)
	movq	-1544(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_119
# BB#118:                               # %cond.true
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5744(%rbp)       # 8-byte Spill
	jmp	.LBB8_120
.LBB8_119:                              # %cond.false
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1544(%rbp), %rax
	movq	%rax, -5744(%rbp)       # 8-byte Spill
.LBB8_120:                              # %cond.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5744(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1552(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_129
# BB#121:                               # %land.lhs.true.339
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_129
# BB#122:                               # %if.then.342
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_123
.LBB8_123:                              # %for.cond.343
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1552(%rbp)
	je	.LBB8_128
# BB#124:                               # %for.body.345
                                        #   in Loop: Header=BB8_123 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1560(%rbp)
	movq	-1560(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1560(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_126
# BB#125:                               # %if.then.352
                                        #   in Loop: Header=BB8_123 Depth=2
	movl	$1, %esi
	movq	-1560(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_126:                              # %if.end.353
                                        #   in Loop: Header=BB8_123 Depth=2
	movb	-73(%rbp), %al
	movq	-1560(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#127:                               # %for.inc.356
                                        #   in Loop: Header=BB8_123 Depth=2
	movq	-1552(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1552(%rbp)
	jmp	.LBB8_123
.LBB8_128:                              # %for.end.357
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_129
.LBB8_129:                              # %if.end.358
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1568(%rbp)
	movq	-1544(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1572(%rbp)
	movq	-1568(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1572(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1568(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_131
# BB#130:                               # %if.then.366
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1568(%rbp), %rdi
	movl	-1572(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_131:                              # %if.end.367
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-1104(%rbp), %rsi
	movq	-1568(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-1572(%rbp), %rdx
	callq	memcpy
	movl	-1572(%rbp), %ecx
	movq	-1568(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_140
# BB#132:                               # %land.lhs.true.375
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_140
# BB#133:                               # %if.then.378
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_134
.LBB8_134:                              # %for.cond.379
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1552(%rbp)
	je	.LBB8_139
# BB#135:                               # %for.body.381
                                        #   in Loop: Header=BB8_134 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1584(%rbp)
	movq	-1584(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1584(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_137
# BB#136:                               # %if.then.388
                                        #   in Loop: Header=BB8_134 Depth=2
	movl	$1, %esi
	movq	-1584(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_137:                              # %if.end.389
                                        #   in Loop: Header=BB8_134 Depth=2
	movb	-73(%rbp), %al
	movq	-1584(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#138:                               # %for.inc.392
                                        #   in Loop: Header=BB8_134 Depth=2
	movq	-1552(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1552(%rbp)
	jmp	.LBB8_134
.LBB8_139:                              # %for.end.394
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_140
.LBB8_140:                              # %if.end.395
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_141
.LBB8_141:                              # %do.end.396
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_142:                              # %sw.bb.397
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	callq	macro_meta_sequence_get
	movabsq	$.L.str.7, %rsi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	macro_meta_sequence_get
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_144
# BB#143:                               # %if.then.401
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.8, %rdi
	leaq	-1360(%rbp), %rax
	movq	%rax, -5752(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-5752(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -5756(%rbp)       # 4-byte Spill
	jmp	.LBB8_145
.LBB8_144:                              # %if.else
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.5, %rdi
	leaq	-1360(%rbp), %rax
	movq	%rax, -5768(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdx
	movq	-5768(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -5772(%rbp)       # 4-byte Spill
.LBB8_145:                              # %if.end.408
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_146
.LBB8_146:                              # %do.body.409
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-1360(%rbp), %rdi
	callq	strlen
	movq	%rax, -1592(%rbp)
	movq	-1592(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_148
# BB#147:                               # %cond.true.416
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5784(%rbp)       # 8-byte Spill
	jmp	.LBB8_149
.LBB8_148:                              # %cond.false.417
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1592(%rbp), %rax
	movq	%rax, -5784(%rbp)       # 8-byte Spill
.LBB8_149:                              # %cond.end.419
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5784(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1600(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_158
# BB#150:                               # %land.lhs.true.422
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_158
# BB#151:                               # %if.then.425
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_152
.LBB8_152:                              # %for.cond.426
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1600(%rbp)
	je	.LBB8_157
# BB#153:                               # %for.body.428
                                        #   in Loop: Header=BB8_152 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1608(%rbp)
	movq	-1608(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1608(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_155
# BB#154:                               # %if.then.435
                                        #   in Loop: Header=BB8_152 Depth=2
	movl	$1, %esi
	movq	-1608(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_155:                              # %if.end.436
                                        #   in Loop: Header=BB8_152 Depth=2
	movb	-73(%rbp), %al
	movq	-1608(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#156:                               # %for.inc.439
                                        #   in Loop: Header=BB8_152 Depth=2
	movq	-1600(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1600(%rbp)
	jmp	.LBB8_152
.LBB8_157:                              # %for.end.441
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_158
.LBB8_158:                              # %if.end.442
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1616(%rbp)
	movq	-1592(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1620(%rbp)
	movq	-1616(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1620(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1616(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_160
# BB#159:                               # %if.then.452
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1616(%rbp), %rdi
	movl	-1620(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_160:                              # %if.end.453
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-1360(%rbp), %rsi
	movq	-1616(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-1620(%rbp), %rdx
	callq	memcpy
	movl	-1620(%rbp), %ecx
	movq	-1616(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_169
# BB#161:                               # %land.lhs.true.461
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_169
# BB#162:                               # %if.then.464
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_163
.LBB8_163:                              # %for.cond.465
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1600(%rbp)
	je	.LBB8_168
# BB#164:                               # %for.body.467
                                        #   in Loop: Header=BB8_163 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1632(%rbp)
	movq	-1632(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1632(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_166
# BB#165:                               # %if.then.474
                                        #   in Loop: Header=BB8_163 Depth=2
	movl	$1, %esi
	movq	-1632(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_166:                              # %if.end.475
                                        #   in Loop: Header=BB8_163 Depth=2
	movb	-73(%rbp), %al
	movq	-1632(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#167:                               # %for.inc.478
                                        #   in Loop: Header=BB8_163 Depth=2
	movq	-1600(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1600(%rbp)
	jmp	.LBB8_163
.LBB8_168:                              # %for.end.480
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_169
.LBB8_169:                              # %if.end.481
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_170
.LBB8_170:                              # %do.end.482
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_171:                              # %sw.bb.483
                                        #   in Loop: Header=BB8_1 Depth=1
	callq	xgetcwd
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_173
# BB#172:                               # %if.then.486
                                        #   in Loop: Header=BB8_1 Depth=1
	callq	__errno_location
	movabsq	$.L.str.9, %rdi
	movl	(%rax), %esi
	movl	%esi, -5788(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$1, %edi
	movl	-5788(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_173:                              # %if.end.489
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$47, %esi
	movq	-48(%rbp), %rdi
	callq	strrchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_175
# BB#174:                               # %if.then.492
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_176
.LBB8_175:                              # %if.else.494
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB8_176:                              # %if.end.495
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_177
.LBB8_177:                              # %do.body.496
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	movq	%rax, -1640(%rbp)
	movq	-1640(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_179
# BB#178:                               # %cond.true.502
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5800(%rbp)       # 8-byte Spill
	jmp	.LBB8_180
.LBB8_179:                              # %cond.false.503
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1640(%rbp), %rax
	movq	%rax, -5800(%rbp)       # 8-byte Spill
.LBB8_180:                              # %cond.end.505
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5800(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1648(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_189
# BB#181:                               # %land.lhs.true.508
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_189
# BB#182:                               # %if.then.511
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_183
.LBB8_183:                              # %for.cond.512
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1648(%rbp)
	je	.LBB8_188
# BB#184:                               # %for.body.514
                                        #   in Loop: Header=BB8_183 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1656(%rbp)
	movq	-1656(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1656(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_186
# BB#185:                               # %if.then.521
                                        #   in Loop: Header=BB8_183 Depth=2
	movl	$1, %esi
	movq	-1656(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_186:                              # %if.end.522
                                        #   in Loop: Header=BB8_183 Depth=2
	movb	-73(%rbp), %al
	movq	-1656(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#187:                               # %for.inc.525
                                        #   in Loop: Header=BB8_183 Depth=2
	movq	-1648(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1648(%rbp)
	jmp	.LBB8_183
.LBB8_188:                              # %for.end.527
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_189
.LBB8_189:                              # %if.end.528
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1664(%rbp)
	movq	-1640(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1668(%rbp)
	movq	-1664(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1668(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1664(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_191
# BB#190:                               # %if.then.538
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1664(%rbp), %rdi
	movl	-1668(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_191:                              # %if.end.539
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1664(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rsi
	movslq	-1668(%rbp), %rdx
	callq	memcpy
	movl	-1668(%rbp), %ecx
	movq	-1664(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_200
# BB#192:                               # %land.lhs.true.546
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_200
# BB#193:                               # %if.then.549
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_194
.LBB8_194:                              # %for.cond.550
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1648(%rbp)
	je	.LBB8_199
# BB#195:                               # %for.body.552
                                        #   in Loop: Header=BB8_194 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1680(%rbp)
	movq	-1680(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1680(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_197
# BB#196:                               # %if.then.559
                                        #   in Loop: Header=BB8_194 Depth=2
	movl	$1, %esi
	movq	-1680(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_197:                              # %if.end.560
                                        #   in Loop: Header=BB8_194 Depth=2
	movb	-73(%rbp), %al
	movq	-1680(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#198:                               # %for.inc.563
                                        #   in Loop: Header=BB8_194 Depth=2
	movq	-1648(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1648(%rbp)
	jmp	.LBB8_194
.LBB8_199:                              # %for.end.565
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_200
.LBB8_200:                              # %if.end.566
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_201
.LBB8_201:                              # %do.end.567
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_202
.LBB8_202:                              # %do.body.568
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB8_204
# BB#203:                               # %if.then.570
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	free
.LBB8_204:                              # %if.end.571
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_205
.LBB8_205:                              # %do.end.572
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_206:                              # %sw.bb.573
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.10, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	56(%rax), %edx
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	48(%rax), %r8d
	movb	$0, %al
	callq	sprintf
	movl	%eax, -5804(%rbp)       # 4-byte Spill
# BB#207:                               # %do.body.578
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -1688(%rbp)
	movq	-1688(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_209
# BB#208:                               # %cond.true.585
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5816(%rbp)       # 8-byte Spill
	jmp	.LBB8_210
.LBB8_209:                              # %cond.false.586
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1688(%rbp), %rax
	movq	%rax, -5816(%rbp)       # 8-byte Spill
.LBB8_210:                              # %cond.end.588
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5816(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1696(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_219
# BB#211:                               # %land.lhs.true.591
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_219
# BB#212:                               # %if.then.594
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_213
.LBB8_213:                              # %for.cond.595
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1696(%rbp)
	je	.LBB8_218
# BB#214:                               # %for.body.597
                                        #   in Loop: Header=BB8_213 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1704(%rbp)
	movq	-1704(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1704(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_216
# BB#215:                               # %if.then.604
                                        #   in Loop: Header=BB8_213 Depth=2
	movl	$1, %esi
	movq	-1704(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_216:                              # %if.end.605
                                        #   in Loop: Header=BB8_213 Depth=2
	movb	-73(%rbp), %al
	movq	-1704(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#217:                               # %for.inc.608
                                        #   in Loop: Header=BB8_213 Depth=2
	movq	-1696(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1696(%rbp)
	jmp	.LBB8_213
.LBB8_218:                              # %for.end.610
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_219
.LBB8_219:                              # %if.end.611
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1712(%rbp)
	movq	-1688(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1716(%rbp)
	movq	-1712(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1716(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1712(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_221
# BB#220:                               # %if.then.621
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1712(%rbp), %rdi
	movl	-1716(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_221:                              # %if.end.622
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-1712(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-1716(%rbp), %rdx
	callq	memcpy
	movl	-1716(%rbp), %ecx
	movq	-1712(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_230
# BB#222:                               # %land.lhs.true.630
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_230
# BB#223:                               # %if.then.633
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_224
.LBB8_224:                              # %for.cond.634
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1696(%rbp)
	je	.LBB8_229
# BB#225:                               # %for.body.636
                                        #   in Loop: Header=BB8_224 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1728(%rbp)
	movq	-1728(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1728(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_227
# BB#226:                               # %if.then.643
                                        #   in Loop: Header=BB8_224 Depth=2
	movl	$1, %esi
	movq	-1728(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_227:                              # %if.end.644
                                        #   in Loop: Header=BB8_224 Depth=2
	movb	-73(%rbp), %al
	movq	-1728(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#228:                               # %for.inc.647
                                        #   in Loop: Header=BB8_224 Depth=2
	movq	-1696(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1696(%rbp)
	jmp	.LBB8_224
.LBB8_229:                              # %for.end.649
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_230
.LBB8_230:                              # %if.end.650
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_231
.LBB8_231:                              # %do.end.651
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_232:                              # %sw.bb.652
                                        #   in Loop: Header=BB8_1 Depth=1
	callq	xgetcwd
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_234
# BB#233:                               # %if.then.655
                                        #   in Loop: Header=BB8_1 Depth=1
	callq	__errno_location
	movabsq	$.L.str.9, %rdi
	movl	(%rax), %esi
	movl	%esi, -5820(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$1, %edi
	movl	-5820(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_234:                              # %if.end.658
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_235
.LBB8_235:                              # %do.body.659
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	%rax, -1736(%rbp)
	movq	-1736(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_237
# BB#236:                               # %cond.true.665
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5832(%rbp)       # 8-byte Spill
	jmp	.LBB8_238
.LBB8_237:                              # %cond.false.666
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1736(%rbp), %rax
	movq	%rax, -5832(%rbp)       # 8-byte Spill
.LBB8_238:                              # %cond.end.668
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5832(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1744(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_247
# BB#239:                               # %land.lhs.true.671
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_247
# BB#240:                               # %if.then.674
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_241
.LBB8_241:                              # %for.cond.675
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1744(%rbp)
	je	.LBB8_246
# BB#242:                               # %for.body.677
                                        #   in Loop: Header=BB8_241 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1752(%rbp)
	movq	-1752(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1752(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_244
# BB#243:                               # %if.then.684
                                        #   in Loop: Header=BB8_241 Depth=2
	movl	$1, %esi
	movq	-1752(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_244:                              # %if.end.685
                                        #   in Loop: Header=BB8_241 Depth=2
	movb	-73(%rbp), %al
	movq	-1752(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#245:                               # %for.inc.688
                                        #   in Loop: Header=BB8_241 Depth=2
	movq	-1744(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1744(%rbp)
	jmp	.LBB8_241
.LBB8_246:                              # %for.end.690
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_247
.LBB8_247:                              # %if.end.691
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1760(%rbp)
	movq	-1736(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1764(%rbp)
	movq	-1760(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1764(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1760(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_249
# BB#248:                               # %if.then.701
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1760(%rbp), %rdi
	movl	-1764(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_249:                              # %if.end.702
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1760(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rsi
	movslq	-1764(%rbp), %rdx
	callq	memcpy
	movl	-1764(%rbp), %ecx
	movq	-1760(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_258
# BB#250:                               # %land.lhs.true.709
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_258
# BB#251:                               # %if.then.712
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_252
.LBB8_252:                              # %for.cond.713
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1744(%rbp)
	je	.LBB8_257
# BB#253:                               # %for.body.715
                                        #   in Loop: Header=BB8_252 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1776(%rbp)
	movq	-1776(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1776(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_255
# BB#254:                               # %if.then.722
                                        #   in Loop: Header=BB8_252 Depth=2
	movl	$1, %esi
	movq	-1776(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_255:                              # %if.end.723
                                        #   in Loop: Header=BB8_252 Depth=2
	movb	-73(%rbp), %al
	movq	-1776(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#256:                               # %for.inc.726
                                        #   in Loop: Header=BB8_252 Depth=2
	movq	-1744(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1744(%rbp)
	jmp	.LBB8_252
.LBB8_257:                              # %for.end.728
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_258
.LBB8_258:                              # %if.end.729
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_259
.LBB8_259:                              # %do.end.730
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_260
.LBB8_260:                              # %do.body.731
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB8_262
# BB#261:                               # %if.then.733
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	free
.LBB8_262:                              # %if.end.734
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_263
.LBB8_263:                              # %do.end.735
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_264:                              # %sw.bb.736
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx,%rax), %edx
	cmpl	$123, %edx
	jne	.LBB8_275
# BB#265:                               # %if.then.742
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB8_266:                              # %for.cond.744
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$512, -72(%rbp)         # imm = 0x200
	movb	%cl, -5833(%rbp)        # 1-byte Spill
	jae	.LBB8_269
# BB#267:                               # %land.lhs.true.747
                                        #   in Loop: Header=BB8_266 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -5833(%rbp)        # 1-byte Spill
	je	.LBB8_269
# BB#268:                               # %land.rhs
                                        #   in Loop: Header=BB8_266 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$125, %edx
	setne	%sil
	movb	%sil, -5833(%rbp)       # 1-byte Spill
.LBB8_269:                              # %land.end
                                        #   in Loop: Header=BB8_266 Depth=2
	movb	-5833(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_270
	jmp	.LBB8_272
.LBB8_270:                              # %for.body.755
                                        #   in Loop: Header=BB8_266 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-72(%rbp), %rax
	movb	%dl, -1104(%rbp,%rax)
# BB#271:                               # %for.inc.758
                                        #   in Loop: Header=BB8_266 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB8_266
.LBB8_272:                              # %for.end.761
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$125, %edx
	je	.LBB8_274
# BB#273:                               # %if.then.766
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.12, %r8
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_274:                              # %if.end.768
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %esi
	leaq	-1104(%rbp), %rdx
	leaq	-592(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movb	$0, -1104(%rbp,%rcx)
	movq	-16(%rbp), %rcx
	addq	$48, %rcx
	callq	strftime
	movq	%rax, -5848(%rbp)       # 8-byte Spill
	jmp	.LBB8_276
.LBB8_275:                              # %if.else.774
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.13, %rsi
	movl	$100, %eax
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %edx
	movl	%eax, -5852(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-5852(%rbp), %r8d       # 4-byte Reload
	idivl	%r8d
	movq	-16(%rbp), %rcx
	movl	64(%rcx), %r9d
	addl	$1, %r9d
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %r8d
	movl	%r9d, %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -5856(%rbp)       # 4-byte Spill
.LBB8_276:                              # %if.end.781
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_277
.LBB8_277:                              # %do.body.782
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -1784(%rbp)
	movq	-1784(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_279
# BB#278:                               # %cond.true.789
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5864(%rbp)       # 8-byte Spill
	jmp	.LBB8_280
.LBB8_279:                              # %cond.false.790
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1784(%rbp), %rax
	movq	%rax, -5864(%rbp)       # 8-byte Spill
.LBB8_280:                              # %cond.end.792
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5864(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1792(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_289
# BB#281:                               # %land.lhs.true.795
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_289
# BB#282:                               # %if.then.798
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_283
.LBB8_283:                              # %for.cond.799
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1792(%rbp)
	je	.LBB8_288
# BB#284:                               # %for.body.801
                                        #   in Loop: Header=BB8_283 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1800(%rbp)
	movq	-1800(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1800(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_286
# BB#285:                               # %if.then.808
                                        #   in Loop: Header=BB8_283 Depth=2
	movl	$1, %esi
	movq	-1800(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_286:                              # %if.end.809
                                        #   in Loop: Header=BB8_283 Depth=2
	movb	-73(%rbp), %al
	movq	-1800(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#287:                               # %for.inc.812
                                        #   in Loop: Header=BB8_283 Depth=2
	movq	-1792(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1792(%rbp)
	jmp	.LBB8_283
.LBB8_288:                              # %for.end.814
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_289
.LBB8_289:                              # %if.end.815
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1808(%rbp)
	movq	-1784(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1812(%rbp)
	movq	-1808(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1812(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1808(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_291
# BB#290:                               # %if.then.825
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1808(%rbp), %rdi
	movl	-1812(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_291:                              # %if.end.826
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-1808(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-1812(%rbp), %rdx
	callq	memcpy
	movl	-1812(%rbp), %ecx
	movq	-1808(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_300
# BB#292:                               # %land.lhs.true.834
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_300
# BB#293:                               # %if.then.837
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_294
.LBB8_294:                              # %for.cond.838
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1792(%rbp)
	je	.LBB8_299
# BB#295:                               # %for.body.840
                                        #   in Loop: Header=BB8_294 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1824(%rbp)
	movq	-1824(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1824(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_297
# BB#296:                               # %if.then.847
                                        #   in Loop: Header=BB8_294 Depth=2
	movl	$1, %esi
	movq	-1824(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_297:                              # %if.end.848
                                        #   in Loop: Header=BB8_294 Depth=2
	movb	-73(%rbp), %al
	movq	-1824(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#298:                               # %for.inc.851
                                        #   in Loop: Header=BB8_294 Depth=2
	movq	-1792(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1792(%rbp)
	jmp	.LBB8_294
.LBB8_299:                              # %for.end.853
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_300
.LBB8_300:                              # %if.end.854
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_301
.LBB8_301:                              # %do.end.855
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_302:                              # %sw.bb.856
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.14, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -5872(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$512, %ecx              # imm = 0x200
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	addq	$48, %rdi
	movq	-5872(%rbp), %rdx       # 8-byte Reload
	movq	%rdi, -5880(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-5880(%rbp), %rcx       # 8-byte Reload
	callq	strftime
	movq	%rax, -5888(%rbp)       # 8-byte Spill
# BB#303:                               # %do.body.861
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -1832(%rbp)
	movq	-1832(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_305
# BB#304:                               # %cond.true.868
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5896(%rbp)       # 8-byte Spill
	jmp	.LBB8_306
.LBB8_305:                              # %cond.false.869
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1832(%rbp), %rax
	movq	%rax, -5896(%rbp)       # 8-byte Spill
.LBB8_306:                              # %cond.end.871
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5896(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1840(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_315
# BB#307:                               # %land.lhs.true.874
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_315
# BB#308:                               # %if.then.877
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_309
.LBB8_309:                              # %for.cond.878
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1840(%rbp)
	je	.LBB8_314
# BB#310:                               # %for.body.880
                                        #   in Loop: Header=BB8_309 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1848(%rbp)
	movq	-1848(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1848(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_312
# BB#311:                               # %if.then.887
                                        #   in Loop: Header=BB8_309 Depth=2
	movl	$1, %esi
	movq	-1848(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_312:                              # %if.end.888
                                        #   in Loop: Header=BB8_309 Depth=2
	movb	-73(%rbp), %al
	movq	-1848(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#313:                               # %for.inc.891
                                        #   in Loop: Header=BB8_309 Depth=2
	movq	-1840(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1840(%rbp)
	jmp	.LBB8_309
.LBB8_314:                              # %for.end.893
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_315
.LBB8_315:                              # %if.end.894
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1856(%rbp)
	movq	-1832(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1860(%rbp)
	movq	-1856(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1860(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1856(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_317
# BB#316:                               # %if.then.904
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1856(%rbp), %rdi
	movl	-1860(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_317:                              # %if.end.905
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-1856(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-1860(%rbp), %rdx
	callq	memcpy
	movl	-1860(%rbp), %ecx
	movq	-1856(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_326
# BB#318:                               # %land.lhs.true.913
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_326
# BB#319:                               # %if.then.916
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_320
.LBB8_320:                              # %for.cond.917
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1840(%rbp)
	je	.LBB8_325
# BB#321:                               # %for.body.919
                                        #   in Loop: Header=BB8_320 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1872(%rbp)
	movq	-1872(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1872(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_323
# BB#322:                               # %if.then.926
                                        #   in Loop: Header=BB8_320 Depth=2
	movl	$1, %esi
	movq	-1872(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_323:                              # %if.end.927
                                        #   in Loop: Header=BB8_320 Depth=2
	movb	-73(%rbp), %al
	movq	-1872(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#324:                               # %for.inc.930
                                        #   in Loop: Header=BB8_320 Depth=2
	movq	-1840(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1840(%rbp)
	jmp	.LBB8_320
.LBB8_325:                              # %for.end.932
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_326
.LBB8_326:                              # %if.end.933
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_327
.LBB8_327:                              # %do.end.934
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_328:                              # %sw.bb.935
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.15, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -5904(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$512, %ecx              # imm = 0x200
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	addq	$48, %rdi
	movq	-5904(%rbp), %rdx       # 8-byte Reload
	movq	%rdi, -5912(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-5912(%rbp), %rcx       # 8-byte Reload
	callq	strftime
	movq	%rax, -5920(%rbp)       # 8-byte Spill
# BB#329:                               # %do.body.940
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -1880(%rbp)
	movq	-1880(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_331
# BB#330:                               # %cond.true.947
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5928(%rbp)       # 8-byte Spill
	jmp	.LBB8_332
.LBB8_331:                              # %cond.false.948
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1880(%rbp), %rax
	movq	%rax, -5928(%rbp)       # 8-byte Spill
.LBB8_332:                              # %cond.end.950
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5928(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1888(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_341
# BB#333:                               # %land.lhs.true.953
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_341
# BB#334:                               # %if.then.956
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_335
.LBB8_335:                              # %for.cond.957
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1888(%rbp)
	je	.LBB8_340
# BB#336:                               # %for.body.959
                                        #   in Loop: Header=BB8_335 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1896(%rbp)
	movq	-1896(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1896(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_338
# BB#337:                               # %if.then.966
                                        #   in Loop: Header=BB8_335 Depth=2
	movl	$1, %esi
	movq	-1896(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_338:                              # %if.end.967
                                        #   in Loop: Header=BB8_335 Depth=2
	movb	-73(%rbp), %al
	movq	-1896(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#339:                               # %for.inc.970
                                        #   in Loop: Header=BB8_335 Depth=2
	movq	-1888(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1888(%rbp)
	jmp	.LBB8_335
.LBB8_340:                              # %for.end.972
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_341
.LBB8_341:                              # %if.end.973
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1904(%rbp)
	movq	-1880(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1908(%rbp)
	movq	-1904(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1908(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1904(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_343
# BB#342:                               # %if.then.983
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1904(%rbp), %rdi
	movl	-1908(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_343:                              # %if.end.984
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-1904(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-1908(%rbp), %rdx
	callq	memcpy
	movl	-1908(%rbp), %ecx
	movq	-1904(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_352
# BB#344:                               # %land.lhs.true.992
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_352
# BB#345:                               # %if.then.995
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_346
.LBB8_346:                              # %for.cond.996
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1888(%rbp)
	je	.LBB8_351
# BB#347:                               # %for.body.998
                                        #   in Loop: Header=BB8_346 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1920(%rbp)
	movq	-1920(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1920(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_349
# BB#348:                               # %if.then.1005
                                        #   in Loop: Header=BB8_346 Depth=2
	movl	$1, %esi
	movq	-1920(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_349:                              # %if.end.1006
                                        #   in Loop: Header=BB8_346 Depth=2
	movb	-73(%rbp), %al
	movq	-1920(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#350:                               # %for.inc.1009
                                        #   in Loop: Header=BB8_346 Depth=2
	movq	-1888(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1888(%rbp)
	jmp	.LBB8_346
.LBB8_351:                              # %for.end.1011
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_352
.LBB8_352:                              # %if.end.1012
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_353
.LBB8_353:                              # %do.end.1013
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_354:                              # %sw.bb.1014
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.16, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	60(%rax), %edx
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	68(%rax), %r8d
	addl	$1900, %r8d             # imm = 0x76C
	movb	$0, %al
	callq	sprintf
	movl	%eax, -5932(%rbp)       # 4-byte Spill
# BB#355:                               # %do.body.1025
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -1928(%rbp)
	movq	-1928(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_357
# BB#356:                               # %cond.true.1032
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5944(%rbp)       # 8-byte Spill
	jmp	.LBB8_358
.LBB8_357:                              # %cond.false.1033
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1928(%rbp), %rax
	movq	%rax, -5944(%rbp)       # 8-byte Spill
.LBB8_358:                              # %cond.end.1035
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5944(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1936(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_367
# BB#359:                               # %land.lhs.true.1038
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_367
# BB#360:                               # %if.then.1041
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_361
.LBB8_361:                              # %for.cond.1042
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1936(%rbp)
	je	.LBB8_366
# BB#362:                               # %for.body.1044
                                        #   in Loop: Header=BB8_361 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1944(%rbp)
	movq	-1944(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1944(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_364
# BB#363:                               # %if.then.1051
                                        #   in Loop: Header=BB8_361 Depth=2
	movl	$1, %esi
	movq	-1944(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_364:                              # %if.end.1052
                                        #   in Loop: Header=BB8_361 Depth=2
	movb	-73(%rbp), %al
	movq	-1944(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#365:                               # %for.inc.1055
                                        #   in Loop: Header=BB8_361 Depth=2
	movq	-1936(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1936(%rbp)
	jmp	.LBB8_361
.LBB8_366:                              # %for.end.1057
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_367
.LBB8_367:                              # %if.end.1058
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -1952(%rbp)
	movq	-1928(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -1956(%rbp)
	movq	-1952(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-1956(%rbp), %rdx
	addq	%rdx, %rax
	movq	-1952(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_369
# BB#368:                               # %if.then.1068
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1952(%rbp), %rdi
	movl	-1956(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_369:                              # %if.end.1069
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-1952(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-1956(%rbp), %rdx
	callq	memcpy
	movl	-1956(%rbp), %ecx
	movq	-1952(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_378
# BB#370:                               # %land.lhs.true.1077
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_378
# BB#371:                               # %if.then.1080
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_372
.LBB8_372:                              # %for.cond.1081
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1936(%rbp)
	je	.LBB8_377
# BB#373:                               # %for.body.1083
                                        #   in Loop: Header=BB8_372 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1968(%rbp)
	movq	-1968(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1968(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_375
# BB#374:                               # %if.then.1090
                                        #   in Loop: Header=BB8_372 Depth=2
	movl	$1, %esi
	movq	-1968(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_375:                              # %if.end.1091
                                        #   in Loop: Header=BB8_372 Depth=2
	movb	-73(%rbp), %al
	movq	-1968(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#376:                               # %for.inc.1094
                                        #   in Loop: Header=BB8_372 Depth=2
	movq	-1936(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1936(%rbp)
	jmp	.LBB8_372
.LBB8_377:                              # %for.end.1096
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_378
.LBB8_378:                              # %if.end.1097
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_379
.LBB8_379:                              # %do.end.1098
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_380:                              # %sw.bb.1099
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$46, %esi
	movq	-16(%rbp), %rdi
	movl	$.L.str.7, %eax
	movl	%eax, %ecx
	movl	%esi, -5948(%rbp)       # 4-byte Spill
	movq	%rcx, %rsi
	callq	macro_meta_sequence_get
	movq	%rax, -48(%rbp)
	movq	%rax, %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	strcpy
	movq	-56(%rbp), %rdi
	movl	-5948(%rbp), %esi       # 4-byte Reload
	movq	%rax, -5960(%rbp)       # 8-byte Spill
	callq	strchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_382
# BB#381:                               # %if.then.1107
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
.LBB8_382:                              # %if.end.1108
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_383
.LBB8_383:                              # %do.body.1109
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	movq	%rax, -1976(%rbp)
	movq	-1976(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_385
# BB#384:                               # %cond.true.1115
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5968(%rbp)       # 8-byte Spill
	jmp	.LBB8_386
.LBB8_385:                              # %cond.false.1116
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-1976(%rbp), %rax
	movq	%rax, -5968(%rbp)       # 8-byte Spill
.LBB8_386:                              # %cond.end.1118
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5968(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1984(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_395
# BB#387:                               # %land.lhs.true.1121
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_395
# BB#388:                               # %if.then.1124
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_389
.LBB8_389:                              # %for.cond.1125
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1984(%rbp)
	je	.LBB8_394
# BB#390:                               # %for.body.1127
                                        #   in Loop: Header=BB8_389 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -1992(%rbp)
	movq	-1992(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-1992(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_392
# BB#391:                               # %if.then.1134
                                        #   in Loop: Header=BB8_389 Depth=2
	movl	$1, %esi
	movq	-1992(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_392:                              # %if.end.1135
                                        #   in Loop: Header=BB8_389 Depth=2
	movb	-73(%rbp), %al
	movq	-1992(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#393:                               # %for.inc.1138
                                        #   in Loop: Header=BB8_389 Depth=2
	movq	-1984(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1984(%rbp)
	jmp	.LBB8_389
.LBB8_394:                              # %for.end.1140
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_395
.LBB8_395:                              # %if.end.1141
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2000(%rbp)
	movq	-1976(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2004(%rbp)
	movq	-2000(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2004(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2000(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_397
# BB#396:                               # %if.then.1151
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2000(%rbp), %rdi
	movl	-2004(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_397:                              # %if.end.1152
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2000(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rsi
	movslq	-2004(%rbp), %rdx
	callq	memcpy
	movl	-2004(%rbp), %ecx
	movq	-2000(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_406
# BB#398:                               # %land.lhs.true.1159
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_406
# BB#399:                               # %if.then.1162
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_400
.LBB8_400:                              # %for.cond.1163
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -1984(%rbp)
	je	.LBB8_405
# BB#401:                               # %for.body.1165
                                        #   in Loop: Header=BB8_400 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2016(%rbp)
	movq	-2016(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2016(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_403
# BB#402:                               # %if.then.1172
                                        #   in Loop: Header=BB8_400 Depth=2
	movl	$1, %esi
	movq	-2016(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_403:                              # %if.end.1173
                                        #   in Loop: Header=BB8_400 Depth=2
	movb	-73(%rbp), %al
	movq	-2016(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#404:                               # %for.inc.1176
                                        #   in Loop: Header=BB8_400 Depth=2
	movq	-1984(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -1984(%rbp)
	jmp	.LBB8_400
.LBB8_405:                              # %for.end.1178
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_406
.LBB8_406:                              # %if.end.1179
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_407
.LBB8_407:                              # %do.end.1180
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_408:                              # %sw.bb.1181
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_409
.LBB8_409:                              # %do.body.1182
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdi
	callq	macro_meta_sequence_get
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -2024(%rbp)
	movq	-2024(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_411
# BB#410:                               # %cond.true.1189
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5976(%rbp)       # 8-byte Spill
	jmp	.LBB8_412
.LBB8_411:                              # %cond.false.1190
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2024(%rbp), %rax
	movq	%rax, -5976(%rbp)       # 8-byte Spill
.LBB8_412:                              # %cond.end.1192
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5976(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2032(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_421
# BB#413:                               # %land.lhs.true.1195
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_421
# BB#414:                               # %if.then.1198
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_415
.LBB8_415:                              # %for.cond.1199
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2032(%rbp)
	je	.LBB8_420
# BB#416:                               # %for.body.1201
                                        #   in Loop: Header=BB8_415 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2040(%rbp)
	movq	-2040(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2040(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_418
# BB#417:                               # %if.then.1208
                                        #   in Loop: Header=BB8_415 Depth=2
	movl	$1, %esi
	movq	-2040(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_418:                              # %if.end.1209
                                        #   in Loop: Header=BB8_415 Depth=2
	movb	-73(%rbp), %al
	movq	-2040(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#419:                               # %for.inc.1212
                                        #   in Loop: Header=BB8_415 Depth=2
	movq	-2032(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2032(%rbp)
	jmp	.LBB8_415
.LBB8_420:                              # %for.end.1214
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_421
.LBB8_421:                              # %if.end.1215
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2048(%rbp)
	movq	-2024(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2052(%rbp)
	movq	-2048(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2052(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2048(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_423
# BB#422:                               # %if.then.1225
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2048(%rbp), %rdi
	movl	-2052(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_423:                              # %if.end.1226
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.7, %rsi
	movq	-2048(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -5984(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	macro_meta_sequence_get
	movslq	-2052(%rbp), %rdx
	movq	-5984(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movl	-2052(%rbp), %ecx
	movq	-2048(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_432
# BB#424:                               # %land.lhs.true.1234
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_432
# BB#425:                               # %if.then.1237
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_426
.LBB8_426:                              # %for.cond.1238
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2032(%rbp)
	je	.LBB8_431
# BB#427:                               # %for.body.1240
                                        #   in Loop: Header=BB8_426 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2064(%rbp)
	movq	-2064(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2064(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_429
# BB#428:                               # %if.then.1247
                                        #   in Loop: Header=BB8_426 Depth=2
	movl	$1, %esi
	movq	-2064(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_429:                              # %if.end.1248
                                        #   in Loop: Header=BB8_426 Depth=2
	movb	-73(%rbp), %al
	movq	-2064(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#430:                               # %for.inc.1251
                                        #   in Loop: Header=BB8_426 Depth=2
	movq	-2032(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2032(%rbp)
	jmp	.LBB8_426
.LBB8_431:                              # %for.end.1253
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_432
.LBB8_432:                              # %if.end.1254
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_433
.LBB8_433:                              # %do.end.1255
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_434:                              # %sw.bb.1256
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_435
.LBB8_435:                              # %do.body.1257
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.17, %rsi
	movq	-16(%rbp), %rdi
	callq	macro_meta_sequence_get
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -2072(%rbp)
	movq	-2072(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_437
# BB#436:                               # %cond.true.1264
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -5992(%rbp)       # 8-byte Spill
	jmp	.LBB8_438
.LBB8_437:                              # %cond.false.1265
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2072(%rbp), %rax
	movq	%rax, -5992(%rbp)       # 8-byte Spill
.LBB8_438:                              # %cond.end.1267
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5992(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2080(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_447
# BB#439:                               # %land.lhs.true.1270
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_447
# BB#440:                               # %if.then.1273
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_441
.LBB8_441:                              # %for.cond.1274
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2080(%rbp)
	je	.LBB8_446
# BB#442:                               # %for.body.1276
                                        #   in Loop: Header=BB8_441 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2088(%rbp)
	movq	-2088(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2088(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_444
# BB#443:                               # %if.then.1283
                                        #   in Loop: Header=BB8_441 Depth=2
	movl	$1, %esi
	movq	-2088(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_444:                              # %if.end.1284
                                        #   in Loop: Header=BB8_441 Depth=2
	movb	-73(%rbp), %al
	movq	-2088(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#445:                               # %for.inc.1287
                                        #   in Loop: Header=BB8_441 Depth=2
	movq	-2080(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2080(%rbp)
	jmp	.LBB8_441
.LBB8_446:                              # %for.end.1289
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_447
.LBB8_447:                              # %if.end.1290
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2096(%rbp)
	movq	-2072(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2100(%rbp)
	movq	-2096(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2100(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2096(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_449
# BB#448:                               # %if.then.1300
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2096(%rbp), %rdi
	movl	-2100(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_449:                              # %if.end.1301
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.17, %rsi
	movq	-2096(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -6000(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	macro_meta_sequence_get
	movslq	-2100(%rbp), %rdx
	movq	-6000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movl	-2100(%rbp), %ecx
	movq	-2096(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_458
# BB#450:                               # %land.lhs.true.1309
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_458
# BB#451:                               # %if.then.1312
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_452
.LBB8_452:                              # %for.cond.1313
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2080(%rbp)
	je	.LBB8_457
# BB#453:                               # %for.body.1315
                                        #   in Loop: Header=BB8_452 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2112(%rbp)
	movq	-2112(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2112(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_455
# BB#454:                               # %if.then.1322
                                        #   in Loop: Header=BB8_452 Depth=2
	movl	$1, %esi
	movq	-2112(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_455:                              # %if.end.1323
                                        #   in Loop: Header=BB8_452 Depth=2
	movb	-73(%rbp), %al
	movq	-2112(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#456:                               # %for.inc.1326
                                        #   in Loop: Header=BB8_452 Depth=2
	movq	-2080(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2080(%rbp)
	jmp	.LBB8_452
.LBB8_457:                              # %for.end.1328
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_458
.LBB8_458:                              # %if.end.1329
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_459
.LBB8_459:                              # %do.end.1330
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_460:                              # %sw.bb.1331
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_461
.LBB8_461:                              # %do.body.1332
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	callq	macro_meta_sequence_get
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -2120(%rbp)
	movq	-2120(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_463
# BB#462:                               # %cond.true.1339
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6008(%rbp)       # 8-byte Spill
	jmp	.LBB8_464
.LBB8_463:                              # %cond.false.1340
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2120(%rbp), %rax
	movq	%rax, -6008(%rbp)       # 8-byte Spill
.LBB8_464:                              # %cond.end.1342
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6008(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2128(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_473
# BB#465:                               # %land.lhs.true.1345
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_473
# BB#466:                               # %if.then.1348
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_467
.LBB8_467:                              # %for.cond.1349
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2128(%rbp)
	je	.LBB8_472
# BB#468:                               # %for.body.1351
                                        #   in Loop: Header=BB8_467 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2136(%rbp)
	movq	-2136(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2136(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_470
# BB#469:                               # %if.then.1358
                                        #   in Loop: Header=BB8_467 Depth=2
	movl	$1, %esi
	movq	-2136(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_470:                              # %if.end.1359
                                        #   in Loop: Header=BB8_467 Depth=2
	movb	-73(%rbp), %al
	movq	-2136(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#471:                               # %for.inc.1362
                                        #   in Loop: Header=BB8_467 Depth=2
	movq	-2128(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2128(%rbp)
	jmp	.LBB8_467
.LBB8_472:                              # %for.end.1364
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_473
.LBB8_473:                              # %if.end.1365
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2144(%rbp)
	movq	-2120(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2148(%rbp)
	movq	-2144(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2148(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2144(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_475
# BB#474:                               # %if.then.1375
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2144(%rbp), %rdi
	movl	-2148(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_475:                              # %if.end.1376
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.6, %rsi
	movq	-2144(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -6016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	macro_meta_sequence_get
	movslq	-2148(%rbp), %rdx
	movq	-6016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movl	-2148(%rbp), %ecx
	movq	-2144(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_484
# BB#476:                               # %land.lhs.true.1384
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_484
# BB#477:                               # %if.then.1387
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_478
.LBB8_478:                              # %for.cond.1388
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2128(%rbp)
	je	.LBB8_483
# BB#479:                               # %for.body.1390
                                        #   in Loop: Header=BB8_478 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2160(%rbp)
	movq	-2160(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2160(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_481
# BB#480:                               # %if.then.1397
                                        #   in Loop: Header=BB8_478 Depth=2
	movl	$1, %esi
	movq	-2160(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_481:                              # %if.end.1398
                                        #   in Loop: Header=BB8_478 Depth=2
	movb	-73(%rbp), %al
	movq	-2160(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#482:                               # %for.inc.1401
                                        #   in Loop: Header=BB8_478 Depth=2
	movq	-2128(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2128(%rbp)
	jmp	.LBB8_478
.LBB8_483:                              # %for.end.1403
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_484
.LBB8_484:                              # %if.end.1404
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_485
.LBB8_485:                              # %do.end.1405
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_486:                              # %sw.bb.1406
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -6020(%rbp)       # 4-byte Spill
	movl	%esi, -6024(%rbp)       # 4-byte Spill
	je	.LBB8_513
	jmp	.LBB8_2643
.LBB8_2643:                             # %sw.bb.1406
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6020(%rbp), %eax       # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -6028(%rbp)       # 4-byte Spill
	jne	.LBB8_532
	jmp	.LBB8_487
.LBB8_487:                              # %sw.bb.1410
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	112(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6032(%rbp)       # 4-byte Spill
# BB#488:                               # %do.body.1413
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2168(%rbp)
	movq	-2168(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_490
# BB#489:                               # %cond.true.1420
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6040(%rbp)       # 8-byte Spill
	jmp	.LBB8_491
.LBB8_490:                              # %cond.false.1421
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2168(%rbp), %rax
	movq	%rax, -6040(%rbp)       # 8-byte Spill
.LBB8_491:                              # %cond.end.1423
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6040(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2176(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_500
# BB#492:                               # %land.lhs.true.1426
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_500
# BB#493:                               # %if.then.1429
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_494
.LBB8_494:                              # %for.cond.1430
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2176(%rbp)
	je	.LBB8_499
# BB#495:                               # %for.body.1432
                                        #   in Loop: Header=BB8_494 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2184(%rbp)
	movq	-2184(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2184(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_497
# BB#496:                               # %if.then.1439
                                        #   in Loop: Header=BB8_494 Depth=2
	movl	$1, %esi
	movq	-2184(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_497:                              # %if.end.1440
                                        #   in Loop: Header=BB8_494 Depth=2
	movb	-73(%rbp), %al
	movq	-2184(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#498:                               # %for.inc.1443
                                        #   in Loop: Header=BB8_494 Depth=2
	movq	-2176(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2176(%rbp)
	jmp	.LBB8_494
.LBB8_499:                              # %for.end.1445
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_500
.LBB8_500:                              # %if.end.1446
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2192(%rbp)
	movq	-2168(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2196(%rbp)
	movq	-2192(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2196(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2192(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_502
# BB#501:                               # %if.then.1456
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2192(%rbp), %rdi
	movl	-2196(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_502:                              # %if.end.1457
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2192(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2196(%rbp), %rdx
	callq	memcpy
	movl	-2196(%rbp), %ecx
	movq	-2192(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_511
# BB#503:                               # %land.lhs.true.1465
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_511
# BB#504:                               # %if.then.1468
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_505
.LBB8_505:                              # %for.cond.1469
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2176(%rbp)
	je	.LBB8_510
# BB#506:                               # %for.body.1471
                                        #   in Loop: Header=BB8_505 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2208(%rbp)
	movq	-2208(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2208(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_508
# BB#507:                               # %if.then.1478
                                        #   in Loop: Header=BB8_505 Depth=2
	movl	$1, %esi
	movq	-2208(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_508:                              # %if.end.1479
                                        #   in Loop: Header=BB8_505 Depth=2
	movb	-73(%rbp), %al
	movq	-2208(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#509:                               # %for.inc.1482
                                        #   in Loop: Header=BB8_505 Depth=2
	movq	-2176(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2176(%rbp)
	jmp	.LBB8_505
.LBB8_510:                              # %for.end.1484
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_511
.LBB8_511:                              # %if.end.1485
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_512
.LBB8_512:                              # %do.end.1486
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_533
.LBB8_513:                              # %sw.bb.1487
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_514
.LBB8_514:                              # %do.body.1488
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_519
# BB#515:                               # %land.lhs.true.1491
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_519
# BB#516:                               # %if.then.1494
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2224(%rbp)
	movq	-2224(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2224(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_518
# BB#517:                               # %if.then.1501
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-2224(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_518:                              # %if.end.1502
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2224(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$1, (%rcx)
.LBB8_519:                              # %if.end.1505
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -2212(%rbp)
.LBB8_520:                              # %for.cond.1506
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2212(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_525
# BB#521:                               # %for.body.1511
                                        #   in Loop: Header=BB8_520 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2232(%rbp)
	movq	-2232(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2232(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_523
# BB#522:                               # %if.then.1518
                                        #   in Loop: Header=BB8_520 Depth=2
	movl	$1, %esi
	movq	-2232(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_523:                              # %if.end.1519
                                        #   in Loop: Header=BB8_520 Depth=2
	movb	-73(%rbp), %al
	movq	-2232(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#524:                               # %for.inc.1522
                                        #   in Loop: Header=BB8_520 Depth=2
	movl	-2212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2212(%rbp)
	jmp	.LBB8_520
.LBB8_525:                              # %for.end.1524
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_527
# BB#526:                               # %lor.lhs.false.1526
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_530
.LBB8_527:                              # %if.then.1529
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2240(%rbp)
	movq	-2240(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2240(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_529
# BB#528:                               # %if.then.1536
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-2240(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_529:                              # %if.end.1537
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2240(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$1, (%rcx)
.LBB8_530:                              # %if.end.1540
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_531
.LBB8_531:                              # %do.end.1541
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_533
.LBB8_532:                              # %sw.default.1542
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.20, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_533:                              # %sw.epilog.1548
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_534:                              # %sw.bb.1549
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.21, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -6048(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movl	112(%rdi), %edx
	movq	-6048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6052(%rbp)       # 4-byte Spill
# BB#535:                               # %do.body.1554
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2248(%rbp)
	movq	-2248(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_537
# BB#536:                               # %cond.true.1561
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6064(%rbp)       # 8-byte Spill
	jmp	.LBB8_538
.LBB8_537:                              # %cond.false.1562
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2248(%rbp), %rax
	movq	%rax, -6064(%rbp)       # 8-byte Spill
.LBB8_538:                              # %cond.end.1564
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6064(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2256(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_547
# BB#539:                               # %land.lhs.true.1567
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_547
# BB#540:                               # %if.then.1570
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_541
.LBB8_541:                              # %for.cond.1571
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2256(%rbp)
	je	.LBB8_546
# BB#542:                               # %for.body.1573
                                        #   in Loop: Header=BB8_541 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2264(%rbp)
	movq	-2264(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2264(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_544
# BB#543:                               # %if.then.1580
                                        #   in Loop: Header=BB8_541 Depth=2
	movl	$1, %esi
	movq	-2264(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_544:                              # %if.end.1581
                                        #   in Loop: Header=BB8_541 Depth=2
	movb	-73(%rbp), %al
	movq	-2264(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#545:                               # %for.inc.1584
                                        #   in Loop: Header=BB8_541 Depth=2
	movq	-2256(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2256(%rbp)
	jmp	.LBB8_541
.LBB8_546:                              # %for.end.1586
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_547
.LBB8_547:                              # %if.end.1587
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2272(%rbp)
	movq	-2248(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2276(%rbp)
	movq	-2272(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2276(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2272(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_549
# BB#548:                               # %if.then.1597
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2272(%rbp), %rdi
	movl	-2276(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_549:                              # %if.end.1598
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2272(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2276(%rbp), %rdx
	callq	memcpy
	movl	-2276(%rbp), %ecx
	movq	-2272(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_558
# BB#550:                               # %land.lhs.true.1606
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_558
# BB#551:                               # %if.then.1609
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_552
.LBB8_552:                              # %for.cond.1610
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2256(%rbp)
	je	.LBB8_557
# BB#553:                               # %for.body.1612
                                        #   in Loop: Header=BB8_552 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2288(%rbp)
	movq	-2288(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2288(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_555
# BB#554:                               # %if.then.1619
                                        #   in Loop: Header=BB8_552 Depth=2
	movl	$1, %esi
	movq	-2288(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_555:                              # %if.end.1620
                                        #   in Loop: Header=BB8_552 Depth=2
	movb	-73(%rbp), %al
	movq	-2288(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#556:                               # %for.inc.1623
                                        #   in Loop: Header=BB8_552 Depth=2
	movq	-2256(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2256(%rbp)
	jmp	.LBB8_552
.LBB8_557:                              # %for.end.1625
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_558
.LBB8_558:                              # %if.end.1626
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_559
.LBB8_559:                              # %do.end.1627
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_560:                              # %sw.bb.1628
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.22, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -6072(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movl	112(%rdi), %edx
	movq	-6072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6076(%rbp)       # 4-byte Spill
# BB#561:                               # %do.body.1633
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2296(%rbp)
	movq	-2296(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_563
# BB#562:                               # %cond.true.1640
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6088(%rbp)       # 8-byte Spill
	jmp	.LBB8_564
.LBB8_563:                              # %cond.false.1641
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2296(%rbp), %rax
	movq	%rax, -6088(%rbp)       # 8-byte Spill
.LBB8_564:                              # %cond.end.1643
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6088(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2304(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_573
# BB#565:                               # %land.lhs.true.1646
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_573
# BB#566:                               # %if.then.1649
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_567
.LBB8_567:                              # %for.cond.1650
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2304(%rbp)
	je	.LBB8_572
# BB#568:                               # %for.body.1652
                                        #   in Loop: Header=BB8_567 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2312(%rbp)
	movq	-2312(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2312(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_570
# BB#569:                               # %if.then.1659
                                        #   in Loop: Header=BB8_567 Depth=2
	movl	$1, %esi
	movq	-2312(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_570:                              # %if.end.1660
                                        #   in Loop: Header=BB8_567 Depth=2
	movb	-73(%rbp), %al
	movq	-2312(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#571:                               # %for.inc.1663
                                        #   in Loop: Header=BB8_567 Depth=2
	movq	-2304(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2304(%rbp)
	jmp	.LBB8_567
.LBB8_572:                              # %for.end.1665
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_573
.LBB8_573:                              # %if.end.1666
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2320(%rbp)
	movq	-2296(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2324(%rbp)
	movq	-2320(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2324(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2320(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_575
# BB#574:                               # %if.then.1676
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2320(%rbp), %rdi
	movl	-2324(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_575:                              # %if.end.1677
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2320(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2324(%rbp), %rdx
	callq	memcpy
	movl	-2324(%rbp), %ecx
	movq	-2320(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_584
# BB#576:                               # %land.lhs.true.1685
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_584
# BB#577:                               # %if.then.1688
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_578
.LBB8_578:                              # %for.cond.1689
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2304(%rbp)
	je	.LBB8_583
# BB#579:                               # %for.body.1691
                                        #   in Loop: Header=BB8_578 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2336(%rbp)
	movq	-2336(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2336(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_581
# BB#580:                               # %if.then.1698
                                        #   in Loop: Header=BB8_578 Depth=2
	movl	$1, %esi
	movq	-2336(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_581:                              # %if.end.1699
                                        #   in Loop: Header=BB8_578 Depth=2
	movb	-73(%rbp), %al
	movq	-2336(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#582:                               # %for.inc.1702
                                        #   in Loop: Header=BB8_578 Depth=2
	movq	-2304(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2304(%rbp)
	jmp	.LBB8_578
.LBB8_583:                              # %for.end.1704
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_584
.LBB8_584:                              # %if.end.1705
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_585
.LBB8_585:                              # %do.end.1706
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_586:                              # %sw.bb.1707
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -6092(%rbp)       # 4-byte Spill
	movl	%esi, -6096(%rbp)       # 4-byte Spill
	je	.LBB8_613
	jmp	.LBB8_2642
.LBB8_2642:                             # %sw.bb.1707
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6092(%rbp), %eax       # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -6100(%rbp)       # 4-byte Spill
	jne	.LBB8_632
	jmp	.LBB8_587
.LBB8_587:                              # %sw.bb.1711
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	108(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6104(%rbp)       # 4-byte Spill
# BB#588:                               # %do.body.1714
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2344(%rbp)
	movq	-2344(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_590
# BB#589:                               # %cond.true.1721
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6112(%rbp)       # 8-byte Spill
	jmp	.LBB8_591
.LBB8_590:                              # %cond.false.1722
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2344(%rbp), %rax
	movq	%rax, -6112(%rbp)       # 8-byte Spill
.LBB8_591:                              # %cond.end.1724
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6112(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2352(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_600
# BB#592:                               # %land.lhs.true.1727
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_600
# BB#593:                               # %if.then.1730
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_594
.LBB8_594:                              # %for.cond.1731
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2352(%rbp)
	je	.LBB8_599
# BB#595:                               # %for.body.1733
                                        #   in Loop: Header=BB8_594 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2360(%rbp)
	movq	-2360(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2360(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_597
# BB#596:                               # %if.then.1740
                                        #   in Loop: Header=BB8_594 Depth=2
	movl	$1, %esi
	movq	-2360(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_597:                              # %if.end.1741
                                        #   in Loop: Header=BB8_594 Depth=2
	movb	-73(%rbp), %al
	movq	-2360(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#598:                               # %for.inc.1744
                                        #   in Loop: Header=BB8_594 Depth=2
	movq	-2352(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2352(%rbp)
	jmp	.LBB8_594
.LBB8_599:                              # %for.end.1746
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_600
.LBB8_600:                              # %if.end.1747
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2368(%rbp)
	movq	-2344(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2372(%rbp)
	movq	-2368(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2372(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2368(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_602
# BB#601:                               # %if.then.1757
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2368(%rbp), %rdi
	movl	-2372(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_602:                              # %if.end.1758
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2368(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2372(%rbp), %rdx
	callq	memcpy
	movl	-2372(%rbp), %ecx
	movq	-2368(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_611
# BB#603:                               # %land.lhs.true.1766
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_611
# BB#604:                               # %if.then.1769
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_605
.LBB8_605:                              # %for.cond.1770
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2352(%rbp)
	je	.LBB8_610
# BB#606:                               # %for.body.1772
                                        #   in Loop: Header=BB8_605 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2384(%rbp)
	movq	-2384(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2384(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_608
# BB#607:                               # %if.then.1779
                                        #   in Loop: Header=BB8_605 Depth=2
	movl	$1, %esi
	movq	-2384(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_608:                              # %if.end.1780
                                        #   in Loop: Header=BB8_605 Depth=2
	movb	-73(%rbp), %al
	movq	-2384(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#609:                               # %for.inc.1783
                                        #   in Loop: Header=BB8_605 Depth=2
	movq	-2352(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2352(%rbp)
	jmp	.LBB8_605
.LBB8_610:                              # %for.end.1785
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_611
.LBB8_611:                              # %if.end.1786
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_612
.LBB8_612:                              # %do.end.1787
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_633
.LBB8_613:                              # %sw.bb.1788
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_614
.LBB8_614:                              # %do.body.1789
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_619
# BB#615:                               # %land.lhs.true.1792
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_619
# BB#616:                               # %if.then.1795
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2400(%rbp)
	movq	-2400(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2400(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_618
# BB#617:                               # %if.then.1802
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-2400(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_618:                              # %if.end.1803
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2400(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$2, (%rcx)
.LBB8_619:                              # %if.end.1806
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -2388(%rbp)
.LBB8_620:                              # %for.cond.1807
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2388(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_625
# BB#621:                               # %for.body.1812
                                        #   in Loop: Header=BB8_620 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2408(%rbp)
	movq	-2408(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2408(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_623
# BB#622:                               # %if.then.1819
                                        #   in Loop: Header=BB8_620 Depth=2
	movl	$1, %esi
	movq	-2408(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_623:                              # %if.end.1820
                                        #   in Loop: Header=BB8_620 Depth=2
	movb	-73(%rbp), %al
	movq	-2408(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#624:                               # %for.inc.1823
                                        #   in Loop: Header=BB8_620 Depth=2
	movl	-2388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2388(%rbp)
	jmp	.LBB8_620
.LBB8_625:                              # %for.end.1825
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_627
# BB#626:                               # %lor.lhs.false.1827
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_630
.LBB8_627:                              # %if.then.1830
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2416(%rbp)
	movq	-2416(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2416(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_629
# BB#628:                               # %if.then.1837
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-2416(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_629:                              # %if.end.1838
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2416(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$2, (%rcx)
.LBB8_630:                              # %if.end.1841
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_631
.LBB8_631:                              # %do.end.1842
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_633
.LBB8_632:                              # %sw.default.1843
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.23, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_633:                              # %sw.epilog.1849
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_634:                              # %sw.bb.1850
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	cmpl	$12, 56(%rax)
	movq	%rdi, -6120(%rbp)       # 8-byte Spill
	jle	.LBB8_636
# BB#635:                               # %cond.true.1856
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	subl	$12, %ecx
	movl	%ecx, -6124(%rbp)       # 4-byte Spill
	jmp	.LBB8_637
.LBB8_636:                              # %cond.false.1860
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -6124(%rbp)       # 4-byte Spill
.LBB8_637:                              # %cond.end.1863
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6124(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.26, %rcx
	movabsq	$.L.str.25, %rdx
	movq	-16(%rbp), %rdi
	movl	52(%rdi), %r8d
	movq	-16(%rbp), %rdi
	cmpl	$12, 56(%rdi)
	cmovgq	%rdx, %rcx
	movq	-6120(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movq	%rcx, -6136(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movq	-6136(%rbp), %r8        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6140(%rbp)       # 4-byte Spill
# BB#638:                               # %do.body.1873
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2424(%rbp)
	movq	-2424(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_640
# BB#639:                               # %cond.true.1880
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6152(%rbp)       # 8-byte Spill
	jmp	.LBB8_641
.LBB8_640:                              # %cond.false.1881
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2424(%rbp), %rax
	movq	%rax, -6152(%rbp)       # 8-byte Spill
.LBB8_641:                              # %cond.end.1883
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6152(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2432(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_650
# BB#642:                               # %land.lhs.true.1886
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_650
# BB#643:                               # %if.then.1889
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_644
.LBB8_644:                              # %for.cond.1890
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2432(%rbp)
	je	.LBB8_649
# BB#645:                               # %for.body.1892
                                        #   in Loop: Header=BB8_644 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2440(%rbp)
	movq	-2440(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2440(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_647
# BB#646:                               # %if.then.1899
                                        #   in Loop: Header=BB8_644 Depth=2
	movl	$1, %esi
	movq	-2440(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_647:                              # %if.end.1900
                                        #   in Loop: Header=BB8_644 Depth=2
	movb	-73(%rbp), %al
	movq	-2440(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#648:                               # %for.inc.1903
                                        #   in Loop: Header=BB8_644 Depth=2
	movq	-2432(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2432(%rbp)
	jmp	.LBB8_644
.LBB8_649:                              # %for.end.1905
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_650
.LBB8_650:                              # %if.end.1906
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2448(%rbp)
	movq	-2424(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2452(%rbp)
	movq	-2448(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2452(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2448(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_652
# BB#651:                               # %if.then.1916
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2448(%rbp), %rdi
	movl	-2452(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_652:                              # %if.end.1917
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2448(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2452(%rbp), %rdx
	callq	memcpy
	movl	-2452(%rbp), %ecx
	movq	-2448(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_661
# BB#653:                               # %land.lhs.true.1925
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_661
# BB#654:                               # %if.then.1928
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_655
.LBB8_655:                              # %for.cond.1929
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2432(%rbp)
	je	.LBB8_660
# BB#656:                               # %for.body.1931
                                        #   in Loop: Header=BB8_655 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2464(%rbp)
	movq	-2464(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2464(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_658
# BB#657:                               # %if.then.1938
                                        #   in Loop: Header=BB8_655 Depth=2
	movl	$1, %esi
	movq	-2464(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_658:                              # %if.end.1939
                                        #   in Loop: Header=BB8_655 Depth=2
	movb	-73(%rbp), %al
	movq	-2464(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#659:                               # %for.inc.1942
                                        #   in Loop: Header=BB8_655 Depth=2
	movq	-2432(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2432(%rbp)
	jmp	.LBB8_655
.LBB8_660:                              # %for.end.1944
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_661
.LBB8_661:                              # %if.end.1945
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_662
.LBB8_662:                              # %do.end.1946
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_663:                              # %sw.bb.1947
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.27, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	56(%rax), %edx
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6156(%rbp)       # 4-byte Spill
# BB#664:                               # %do.body.1954
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2472(%rbp)
	movq	-2472(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_666
# BB#665:                               # %cond.true.1961
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6168(%rbp)       # 8-byte Spill
	jmp	.LBB8_667
.LBB8_666:                              # %cond.false.1962
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2472(%rbp), %rax
	movq	%rax, -6168(%rbp)       # 8-byte Spill
.LBB8_667:                              # %cond.end.1964
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6168(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2480(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_676
# BB#668:                               # %land.lhs.true.1967
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_676
# BB#669:                               # %if.then.1970
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_670
.LBB8_670:                              # %for.cond.1971
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2480(%rbp)
	je	.LBB8_675
# BB#671:                               # %for.body.1973
                                        #   in Loop: Header=BB8_670 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2488(%rbp)
	movq	-2488(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2488(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_673
# BB#672:                               # %if.then.1980
                                        #   in Loop: Header=BB8_670 Depth=2
	movl	$1, %esi
	movq	-2488(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_673:                              # %if.end.1981
                                        #   in Loop: Header=BB8_670 Depth=2
	movb	-73(%rbp), %al
	movq	-2488(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#674:                               # %for.inc.1984
                                        #   in Loop: Header=BB8_670 Depth=2
	movq	-2480(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2480(%rbp)
	jmp	.LBB8_670
.LBB8_675:                              # %for.end.1986
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_676
.LBB8_676:                              # %if.end.1987
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2496(%rbp)
	movq	-2472(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2500(%rbp)
	movq	-2496(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2500(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2496(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_678
# BB#677:                               # %if.then.1997
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2496(%rbp), %rdi
	movl	-2500(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_678:                              # %if.end.1998
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2496(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2500(%rbp), %rdx
	callq	memcpy
	movl	-2500(%rbp), %ecx
	movq	-2496(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_687
# BB#679:                               # %land.lhs.true.2006
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_687
# BB#680:                               # %if.then.2009
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_681
.LBB8_681:                              # %for.cond.2010
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2480(%rbp)
	je	.LBB8_686
# BB#682:                               # %for.body.2012
                                        #   in Loop: Header=BB8_681 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2512(%rbp)
	movq	-2512(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2512(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_684
# BB#683:                               # %if.then.2019
                                        #   in Loop: Header=BB8_681 Depth=2
	movl	$1, %esi
	movq	-2512(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_684:                              # %if.end.2020
                                        #   in Loop: Header=BB8_681 Depth=2
	movb	-73(%rbp), %al
	movq	-2512(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#685:                               # %for.inc.2023
                                        #   in Loop: Header=BB8_681 Depth=2
	movq	-2480(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2480(%rbp)
	jmp	.LBB8_681
.LBB8_686:                              # %for.end.2025
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_687
.LBB8_687:                              # %if.end.2026
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_688
.LBB8_688:                              # %do.end.2027
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_689:                              # %sw.bb.2028
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.10, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	56(%rax), %edx
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	48(%rax), %r8d
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6172(%rbp)       # 4-byte Spill
# BB#690:                               # %do.body.2037
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2520(%rbp)
	movq	-2520(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_692
# BB#691:                               # %cond.true.2044
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6184(%rbp)       # 8-byte Spill
	jmp	.LBB8_693
.LBB8_692:                              # %cond.false.2045
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2520(%rbp), %rax
	movq	%rax, -6184(%rbp)       # 8-byte Spill
.LBB8_693:                              # %cond.end.2047
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6184(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2528(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_702
# BB#694:                               # %land.lhs.true.2050
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_702
# BB#695:                               # %if.then.2053
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_696
.LBB8_696:                              # %for.cond.2054
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2528(%rbp)
	je	.LBB8_701
# BB#697:                               # %for.body.2056
                                        #   in Loop: Header=BB8_696 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2536(%rbp)
	movq	-2536(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2536(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_699
# BB#698:                               # %if.then.2063
                                        #   in Loop: Header=BB8_696 Depth=2
	movl	$1, %esi
	movq	-2536(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_699:                              # %if.end.2064
                                        #   in Loop: Header=BB8_696 Depth=2
	movb	-73(%rbp), %al
	movq	-2536(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#700:                               # %for.inc.2067
                                        #   in Loop: Header=BB8_696 Depth=2
	movq	-2528(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2528(%rbp)
	jmp	.LBB8_696
.LBB8_701:                              # %for.end.2069
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_702
.LBB8_702:                              # %if.end.2070
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2544(%rbp)
	movq	-2520(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2548(%rbp)
	movq	-2544(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2548(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2544(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_704
# BB#703:                               # %if.then.2080
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2544(%rbp), %rdi
	movl	-2548(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_704:                              # %if.end.2081
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2544(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2548(%rbp), %rdx
	callq	memcpy
	movl	-2548(%rbp), %ecx
	movq	-2544(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_713
# BB#705:                               # %land.lhs.true.2089
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_713
# BB#706:                               # %if.then.2092
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_707
.LBB8_707:                              # %for.cond.2093
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2528(%rbp)
	je	.LBB8_712
# BB#708:                               # %for.body.2095
                                        #   in Loop: Header=BB8_707 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2560(%rbp)
	movq	-2560(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2560(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_710
# BB#709:                               # %if.then.2102
                                        #   in Loop: Header=BB8_707 Depth=2
	movl	$1, %esi
	movq	-2560(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_710:                              # %if.end.2103
                                        #   in Loop: Header=BB8_707 Depth=2
	movb	-73(%rbp), %al
	movq	-2560(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#711:                               # %for.inc.2106
                                        #   in Loop: Header=BB8_707 Depth=2
	movq	-2528(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2528(%rbp)
	jmp	.LBB8_707
.LBB8_712:                              # %for.end.2108
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_713
.LBB8_713:                              # %if.end.2109
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_714
.LBB8_714:                              # %do.end.2110
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_715:                              # %sw.bb.2111
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.30, %rcx
	leaq	-592(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6188(%rbp)       # 4-byte Spill
# BB#716:                               # %do.body.2114
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2568(%rbp)
	movq	-2568(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_718
# BB#717:                               # %cond.true.2121
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6200(%rbp)       # 8-byte Spill
	jmp	.LBB8_719
.LBB8_718:                              # %cond.false.2122
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2568(%rbp), %rax
	movq	%rax, -6200(%rbp)       # 8-byte Spill
.LBB8_719:                              # %cond.end.2124
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6200(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2576(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_728
# BB#720:                               # %land.lhs.true.2127
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_728
# BB#721:                               # %if.then.2130
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_722
.LBB8_722:                              # %for.cond.2131
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2576(%rbp)
	je	.LBB8_727
# BB#723:                               # %for.body.2133
                                        #   in Loop: Header=BB8_722 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2584(%rbp)
	movq	-2584(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2584(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_725
# BB#724:                               # %if.then.2140
                                        #   in Loop: Header=BB8_722 Depth=2
	movl	$1, %esi
	movq	-2584(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_725:                              # %if.end.2141
                                        #   in Loop: Header=BB8_722 Depth=2
	movb	-73(%rbp), %al
	movq	-2584(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#726:                               # %for.inc.2144
                                        #   in Loop: Header=BB8_722 Depth=2
	movq	-2576(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2576(%rbp)
	jmp	.LBB8_722
.LBB8_727:                              # %for.end.2146
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_728
.LBB8_728:                              # %if.end.2147
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2592(%rbp)
	movq	-2568(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2596(%rbp)
	movq	-2592(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2596(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2592(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_730
# BB#729:                               # %if.then.2157
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2592(%rbp), %rdi
	movl	-2596(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_730:                              # %if.end.2158
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2592(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2596(%rbp), %rdx
	callq	memcpy
	movl	-2596(%rbp), %ecx
	movq	-2592(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_739
# BB#731:                               # %land.lhs.true.2166
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_739
# BB#732:                               # %if.then.2169
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_733
.LBB8_733:                              # %for.cond.2170
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2576(%rbp)
	je	.LBB8_738
# BB#734:                               # %for.body.2172
                                        #   in Loop: Header=BB8_733 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2608(%rbp)
	movq	-2608(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2608(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_736
# BB#735:                               # %if.then.2179
                                        #   in Loop: Header=BB8_733 Depth=2
	movl	$1, %esi
	movq	-2608(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_736:                              # %if.end.2180
                                        #   in Loop: Header=BB8_733 Depth=2
	movb	-73(%rbp), %al
	movq	-2608(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#737:                               # %for.inc.2183
                                        #   in Loop: Header=BB8_733 Depth=2
	movq	-2576(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2576(%rbp)
	jmp	.LBB8_733
.LBB8_738:                              # %for.end.2185
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_739
.LBB8_739:                              # %if.end.2186
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_740
.LBB8_740:                              # %do.end.2187
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_741:                              # %sw.bb.2188
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.31, %rsi
	movl	$100, %eax
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	64(%rcx), %edx
	addl	$1, %edx
	movq	-16(%rbp), %rcx
	movl	60(%rcx), %ecx
	movq	-16(%rbp), %r8
	movl	68(%r8), %r9d
	movl	%eax, -6204(%rbp)       # 4-byte Spill
	movl	%r9d, %eax
	movl	%edx, -6208(%rbp)       # 4-byte Spill
	cltd
	movl	-6204(%rbp), %r9d       # 4-byte Reload
	idivl	%r9d
	movl	-6208(%rbp), %r10d      # 4-byte Reload
	movl	%edx, -6212(%rbp)       # 4-byte Spill
	movl	%r10d, %edx
	movl	-6212(%rbp), %r8d       # 4-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6216(%rbp)       # 4-byte Spill
# BB#742:                               # %do.body.2199
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2616(%rbp)
	movq	-2616(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_744
# BB#743:                               # %cond.true.2206
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6224(%rbp)       # 8-byte Spill
	jmp	.LBB8_745
.LBB8_744:                              # %cond.false.2207
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2616(%rbp), %rax
	movq	%rax, -6224(%rbp)       # 8-byte Spill
.LBB8_745:                              # %cond.end.2209
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6224(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2624(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_754
# BB#746:                               # %land.lhs.true.2212
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_754
# BB#747:                               # %if.then.2215
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_748
.LBB8_748:                              # %for.cond.2216
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2624(%rbp)
	je	.LBB8_753
# BB#749:                               # %for.body.2218
                                        #   in Loop: Header=BB8_748 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2632(%rbp)
	movq	-2632(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2632(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_751
# BB#750:                               # %if.then.2225
                                        #   in Loop: Header=BB8_748 Depth=2
	movl	$1, %esi
	movq	-2632(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_751:                              # %if.end.2226
                                        #   in Loop: Header=BB8_748 Depth=2
	movb	-73(%rbp), %al
	movq	-2632(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#752:                               # %for.inc.2229
                                        #   in Loop: Header=BB8_748 Depth=2
	movq	-2624(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2624(%rbp)
	jmp	.LBB8_748
.LBB8_753:                              # %for.end.2231
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_754
.LBB8_754:                              # %if.end.2232
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2640(%rbp)
	movq	-2616(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2644(%rbp)
	movq	-2640(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2644(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2640(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_756
# BB#755:                               # %if.then.2242
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2640(%rbp), %rdi
	movl	-2644(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_756:                              # %if.end.2243
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2640(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2644(%rbp), %rdx
	callq	memcpy
	movl	-2644(%rbp), %ecx
	movq	-2640(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_765
# BB#757:                               # %land.lhs.true.2251
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_765
# BB#758:                               # %if.then.2254
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_759
.LBB8_759:                              # %for.cond.2255
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2624(%rbp)
	je	.LBB8_764
# BB#760:                               # %for.body.2257
                                        #   in Loop: Header=BB8_759 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2656(%rbp)
	movq	-2656(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2656(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_762
# BB#761:                               # %if.then.2264
                                        #   in Loop: Header=BB8_759 Depth=2
	movl	$1, %esi
	movq	-2656(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_762:                              # %if.end.2265
                                        #   in Loop: Header=BB8_759 Depth=2
	movb	-73(%rbp), %al
	movq	-2656(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#763:                               # %for.inc.2268
                                        #   in Loop: Header=BB8_759 Depth=2
	movq	-2624(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2624(%rbp)
	jmp	.LBB8_759
.LBB8_764:                              # %for.end.2270
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_765
.LBB8_765:                              # %if.end.2271
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_766
.LBB8_766:                              # %do.end.2272
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_768
.LBB8_767:                              # %sw.default.2273
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.32, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_768:                              # %sw.epilog.2279
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2529
.LBB8_769:                              # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -6228(%rbp)       # 4-byte Spill
	movl	%esi, -6232(%rbp)       # 4-byte Spill
	je	.LBB8_1021
	jmp	.LBB8_2584
.LBB8_2584:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$36, %eax
	movl	%eax, -6236(%rbp)       # 4-byte Spill
	je	.LBB8_770
	jmp	.LBB8_2585
.LBB8_2585:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -6240(%rbp)       # 4-byte Spill
	je	.LBB8_815
	jmp	.LBB8_2586
.LBB8_2586:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -6244(%rbp)       # 4-byte Spill
	je	.LBB8_789
	jmp	.LBB8_2587
.LBB8_2587:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -6248(%rbp)       # 4-byte Spill
	je	.LBB8_1047
	jmp	.LBB8_2588
.LBB8_2588:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -6252(%rbp)       # 4-byte Spill
	je	.LBB8_1120
	jmp	.LBB8_2589
.LBB8_2589:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$69, %eax
	movl	%eax, -6256(%rbp)       # 4-byte Spill
	je	.LBB8_1184
	jmp	.LBB8_2590
.LBB8_2590:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$70, %eax
	movl	%eax, -6260(%rbp)       # 4-byte Spill
	je	.LBB8_1236
	jmp	.LBB8_2591
.LBB8_2591:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$78, %eax
	movl	%eax, -6264(%rbp)       # 4-byte Spill
	je	.LBB8_1364
	jmp	.LBB8_2592
.LBB8_2592:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$81, %eax
	movl	%eax, -6268(%rbp)       # 4-byte Spill
	je	.LBB8_1680
	jmp	.LBB8_2593
.LBB8_2593:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -6272(%rbp)       # 4-byte Spill
	je	.LBB8_1993
	jmp	.LBB8_2594
.LBB8_2594:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$87, %eax
	movl	%eax, -6276(%rbp)       # 4-byte Spill
	je	.LBB8_2019
	jmp	.LBB8_2595
.LBB8_2595:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -6280(%rbp)       # 4-byte Spill
	je	.LBB8_984
	jmp	.LBB8_2596
.LBB8_2596:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -6284(%rbp)       # 4-byte Spill
	je	.LBB8_1073
	jmp	.LBB8_2597
.LBB8_2597:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -6288(%rbp)       # 4-byte Spill
	je	.LBB8_1158
	jmp	.LBB8_2598
.LBB8_2598:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -6292(%rbp)       # 4-byte Spill
	je	.LBB8_1210
	jmp	.LBB8_2599
.LBB8_2599:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -6296(%rbp)       # 4-byte Spill
	je	.LBB8_1262
	jmp	.LBB8_2600
.LBB8_2600:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -6300(%rbp)       # 4-byte Spill
	je	.LBB8_1421
	jmp	.LBB8_2601
.LBB8_2601:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -6304(%rbp)       # 4-byte Spill
	je	.LBB8_1450
	jmp	.LBB8_2602
.LBB8_2602:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$113, %eax
	movl	%eax, -6308(%rbp)       # 4-byte Spill
	je	.LBB8_1654
	jmp	.LBB8_2603
.LBB8_2603:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -6312(%rbp)       # 4-byte Spill
	je	.LBB8_1709
	jmp	.LBB8_2604
.LBB8_2604:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -6316(%rbp)       # 4-byte Spill
	je	.LBB8_1858
	jmp	.LBB8_2605
.LBB8_2605:                             # %sw.bb.2280
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6228(%rbp), %eax       # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -6320(%rbp)       # 4-byte Spill
	je	.LBB8_854
	jmp	.LBB8_2045
.LBB8_770:                              # %sw.bb.2283
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_771
.LBB8_771:                              # %do.body.2284
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_776
# BB#772:                               # %land.lhs.true.2287
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_776
# BB#773:                               # %if.then.2290
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2672(%rbp)
	movq	-2672(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2672(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_775
# BB#774:                               # %if.then.2297
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-2672(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_775:                              # %if.end.2298
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2672(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$36, (%rcx)
.LBB8_776:                              # %if.end.2301
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -2660(%rbp)
.LBB8_777:                              # %for.cond.2302
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-2660(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_782
# BB#778:                               # %for.body.2307
                                        #   in Loop: Header=BB8_777 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2680(%rbp)
	movq	-2680(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2680(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_780
# BB#779:                               # %if.then.2314
                                        #   in Loop: Header=BB8_777 Depth=2
	movl	$1, %esi
	movq	-2680(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_780:                              # %if.end.2315
                                        #   in Loop: Header=BB8_777 Depth=2
	movb	-73(%rbp), %al
	movq	-2680(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#781:                               # %for.inc.2318
                                        #   in Loop: Header=BB8_777 Depth=2
	movl	-2660(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2660(%rbp)
	jmp	.LBB8_777
.LBB8_782:                              # %for.end.2320
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_784
# BB#783:                               # %lor.lhs.false.2322
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_787
.LBB8_784:                              # %if.then.2325
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2688(%rbp)
	movq	-2688(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2688(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_786
# BB#785:                               # %if.then.2332
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-2688(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_786:                              # %if.end.2333
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2688(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$36, (%rcx)
.LBB8_787:                              # %if.end.2336
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_788
.LBB8_788:                              # %do.end.2337
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_789:                              # %sw.bb.2338
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.10, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	40(%rax), %r8d
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6324(%rbp)       # 4-byte Spill
# BB#790:                               # %do.body.2346
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -2696(%rbp)
	movq	-2696(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_792
# BB#791:                               # %cond.true.2353
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6336(%rbp)       # 8-byte Spill
	jmp	.LBB8_793
.LBB8_792:                              # %cond.false.2354
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2696(%rbp), %rax
	movq	%rax, -6336(%rbp)       # 8-byte Spill
.LBB8_793:                              # %cond.end.2356
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6336(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2704(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_802
# BB#794:                               # %land.lhs.true.2359
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_802
# BB#795:                               # %if.then.2362
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_796
.LBB8_796:                              # %for.cond.2363
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2704(%rbp)
	je	.LBB8_801
# BB#797:                               # %for.body.2365
                                        #   in Loop: Header=BB8_796 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2712(%rbp)
	movq	-2712(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2712(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_799
# BB#798:                               # %if.then.2372
                                        #   in Loop: Header=BB8_796 Depth=2
	movl	$1, %esi
	movq	-2712(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_799:                              # %if.end.2373
                                        #   in Loop: Header=BB8_796 Depth=2
	movb	-73(%rbp), %al
	movq	-2712(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#800:                               # %for.inc.2376
                                        #   in Loop: Header=BB8_796 Depth=2
	movq	-2704(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2704(%rbp)
	jmp	.LBB8_796
.LBB8_801:                              # %for.end.2378
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_802
.LBB8_802:                              # %if.end.2379
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2720(%rbp)
	movq	-2696(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2724(%rbp)
	movq	-2720(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2724(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2720(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_804
# BB#803:                               # %if.then.2389
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2720(%rbp), %rdi
	movl	-2724(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_804:                              # %if.end.2390
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-2720(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-2724(%rbp), %rdx
	callq	memcpy
	movl	-2724(%rbp), %ecx
	movq	-2720(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_813
# BB#805:                               # %land.lhs.true.2398
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_813
# BB#806:                               # %if.then.2401
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_807
.LBB8_807:                              # %for.cond.2402
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2704(%rbp)
	je	.LBB8_812
# BB#808:                               # %for.body.2404
                                        #   in Loop: Header=BB8_807 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2736(%rbp)
	movq	-2736(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2736(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_810
# BB#809:                               # %if.then.2411
                                        #   in Loop: Header=BB8_807 Depth=2
	movl	$1, %esi
	movq	-2736(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_810:                              # %if.end.2412
                                        #   in Loop: Header=BB8_807 Depth=2
	movb	-73(%rbp), %al
	movq	-2736(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#811:                               # %for.inc.2415
                                        #   in Loop: Header=BB8_807 Depth=2
	movq	-2704(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2704(%rbp)
	jmp	.LBB8_807
.LBB8_812:                              # %for.end.2417
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_813
.LBB8_813:                              # %if.end.2418
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_814
.LBB8_814:                              # %do.end.2419
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_815:                              # %sw.bb.2420
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB8_816:                              # %for.cond.2422
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -6337(%rbp)        # 1-byte Spill
	je	.LBB8_819
# BB#817:                               # %land.lhs.true.2426
                                        #   in Loop: Header=BB8_816 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$41, %eax
	movb	%cl, -6337(%rbp)        # 1-byte Spill
	je	.LBB8_819
# BB#818:                               # %land.rhs.2431
                                        #   in Loop: Header=BB8_816 Depth=2
	cmpq	$511, -72(%rbp)         # imm = 0x1FF
	setb	%al
	movb	%al, -6337(%rbp)        # 1-byte Spill
.LBB8_819:                              # %land.end.2434
                                        #   in Loop: Header=BB8_816 Depth=2
	movb	-6337(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_820
	jmp	.LBB8_822
.LBB8_820:                              # %for.body.2435
                                        #   in Loop: Header=BB8_816 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, -592(%rbp,%rax)
# BB#821:                               # %for.inc.2439
                                        #   in Loop: Header=BB8_816 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_816
.LBB8_822:                              # %for.end.2441
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB8_824
# BB#823:                               # %if.then.2446
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movl	$41, %r8d
	movabsq	$.L.str.34, %r9
	movq	-32(%rbp), %rcx
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	$41, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_824:                              # %if.end.2448
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$41, %edx
	je	.LBB8_826
# BB#825:                               # %if.then.2453
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.35, %r8
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_826:                              # %if.end.2455
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	movq	-72(%rbp), %rax
	movb	$0, -592(%rbp,%rax)
	callq	getenv
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_853
# BB#827:                               # %if.then.2460
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_828
.LBB8_828:                              # %do.body.2461
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	%rax, -2744(%rbp)
	movq	-2744(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_830
# BB#829:                               # %cond.true.2467
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6352(%rbp)       # 8-byte Spill
	jmp	.LBB8_831
.LBB8_830:                              # %cond.false.2468
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2744(%rbp), %rax
	movq	%rax, -6352(%rbp)       # 8-byte Spill
.LBB8_831:                              # %cond.end.2470
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6352(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2752(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_840
# BB#832:                               # %land.lhs.true.2473
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_840
# BB#833:                               # %if.then.2476
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_834
.LBB8_834:                              # %for.cond.2477
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2752(%rbp)
	je	.LBB8_839
# BB#835:                               # %for.body.2479
                                        #   in Loop: Header=BB8_834 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2760(%rbp)
	movq	-2760(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2760(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_837
# BB#836:                               # %if.then.2486
                                        #   in Loop: Header=BB8_834 Depth=2
	movl	$1, %esi
	movq	-2760(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_837:                              # %if.end.2487
                                        #   in Loop: Header=BB8_834 Depth=2
	movb	-73(%rbp), %al
	movq	-2760(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#838:                               # %for.inc.2490
                                        #   in Loop: Header=BB8_834 Depth=2
	movq	-2752(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2752(%rbp)
	jmp	.LBB8_834
.LBB8_839:                              # %for.end.2492
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_840
.LBB8_840:                              # %if.end.2493
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2768(%rbp)
	movq	-2744(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2772(%rbp)
	movq	-2768(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2772(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2768(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_842
# BB#841:                               # %if.then.2503
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2768(%rbp), %rdi
	movl	-2772(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_842:                              # %if.end.2504
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2768(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rsi
	movslq	-2772(%rbp), %rdx
	callq	memcpy
	movl	-2772(%rbp), %ecx
	movq	-2768(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_851
# BB#843:                               # %land.lhs.true.2511
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_851
# BB#844:                               # %if.then.2514
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_845
.LBB8_845:                              # %for.cond.2515
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2752(%rbp)
	je	.LBB8_850
# BB#846:                               # %for.body.2517
                                        #   in Loop: Header=BB8_845 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2784(%rbp)
	movq	-2784(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2784(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_848
# BB#847:                               # %if.then.2524
                                        #   in Loop: Header=BB8_845 Depth=2
	movl	$1, %esi
	movq	-2784(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_848:                              # %if.end.2525
                                        #   in Loop: Header=BB8_845 Depth=2
	movb	-73(%rbp), %al
	movq	-2784(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#849:                               # %for.inc.2528
                                        #   in Loop: Header=BB8_845 Depth=2
	movq	-2752(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2752(%rbp)
	jmp	.LBB8_845
.LBB8_850:                              # %for.end.2530
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_851
.LBB8_851:                              # %if.end.2531
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_852
.LBB8_852:                              # %do.end.2532
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_853
.LBB8_853:                              # %if.end.2533
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_854:                              # %sw.bb.2534
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB8_855:                              # %for.cond.2536
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$125, %eax
	movb	%cl, -6353(%rbp)        # 1-byte Spill
	je	.LBB8_857
# BB#856:                               # %land.rhs.2541
                                        #   in Loop: Header=BB8_855 Depth=2
	cmpq	$511, -72(%rbp)         # imm = 0x1FF
	setb	%al
	movb	%al, -6353(%rbp)        # 1-byte Spill
.LBB8_857:                              # %land.end.2544
                                        #   in Loop: Header=BB8_855 Depth=2
	movb	-6353(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_858
	jmp	.LBB8_864
.LBB8_858:                              # %for.body.2545
                                        #   in Loop: Header=BB8_855 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	testl	%edx, %edx
	movl	%edx, -6360(%rbp)       # 4-byte Spill
	je	.LBB8_859
	jmp	.LBB8_2618
.LBB8_2618:                             # %for.body.2545
                                        #   in Loop: Header=BB8_855 Depth=2
	movl	-6360(%rbp), %eax       # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -6364(%rbp)       # 4-byte Spill
	je	.LBB8_860
	jmp	.LBB8_861
.LBB8_859:                              # %sw.bb.2548
                                        #   in Loop: Header=BB8_855 Depth=2
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movl	$125, %r8d
	movabsq	$.L.str.36, %r9
	movq	-32(%rbp), %rcx
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	$125, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
	jmp	.LBB8_862
.LBB8_860:                              # %sw.bb.2550
                                        #   in Loop: Header=BB8_855 Depth=2
	leaq	-592(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	$0, -592(%rbp,%rcx)
	addq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_862
.LBB8_861:                              # %sw.default.2555
                                        #   in Loop: Header=BB8_855 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, -592(%rbp,%rax)
.LBB8_862:                              # %sw.epilog.2559
                                        #   in Loop: Header=BB8_855 Depth=2
	jmp	.LBB8_863
.LBB8_863:                              # %for.inc.2560
                                        #   in Loop: Header=BB8_855 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_855
.LBB8_864:                              # %for.end.2562
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$125, %edx
	je	.LBB8_866
# BB#865:                               # %if.then.2567
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.37, %r8
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_866:                              # %if.end.2569
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	movq	-72(%rbp), %rax
	movb	$0, -592(%rbp,%rax)
	callq	getenv
	movq	%rax, -48(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_868
# BB#867:                               # %lor.lhs.false.2575
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB8_896
.LBB8_868:                              # %if.then.2579
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB8_895
# BB#869:                               # %if.then.2581
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_870
.LBB8_870:                              # %do.body.2582
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	%rax, -2792(%rbp)
	movq	-2792(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_872
# BB#871:                               # %cond.true.2588
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6376(%rbp)       # 8-byte Spill
	jmp	.LBB8_873
.LBB8_872:                              # %cond.false.2589
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2792(%rbp), %rax
	movq	%rax, -6376(%rbp)       # 8-byte Spill
.LBB8_873:                              # %cond.end.2591
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6376(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2800(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_882
# BB#874:                               # %land.lhs.true.2594
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_882
# BB#875:                               # %if.then.2597
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_876
.LBB8_876:                              # %for.cond.2598
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2800(%rbp)
	je	.LBB8_881
# BB#877:                               # %for.body.2600
                                        #   in Loop: Header=BB8_876 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2808(%rbp)
	movq	-2808(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2808(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_879
# BB#878:                               # %if.then.2607
                                        #   in Loop: Header=BB8_876 Depth=2
	movl	$1, %esi
	movq	-2808(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_879:                              # %if.end.2608
                                        #   in Loop: Header=BB8_876 Depth=2
	movb	-73(%rbp), %al
	movq	-2808(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#880:                               # %for.inc.2611
                                        #   in Loop: Header=BB8_876 Depth=2
	movq	-2800(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2800(%rbp)
	jmp	.LBB8_876
.LBB8_881:                              # %for.end.2613
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_882
.LBB8_882:                              # %if.end.2614
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2816(%rbp)
	movq	-2792(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2820(%rbp)
	movq	-2816(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2820(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2816(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_884
# BB#883:                               # %if.then.2624
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2816(%rbp), %rdi
	movl	-2820(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_884:                              # %if.end.2625
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2816(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rsi
	movslq	-2820(%rbp), %rdx
	callq	memcpy
	movl	-2820(%rbp), %ecx
	movq	-2816(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_893
# BB#885:                               # %land.lhs.true.2632
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_893
# BB#886:                               # %if.then.2635
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_887
.LBB8_887:                              # %for.cond.2636
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2800(%rbp)
	je	.LBB8_892
# BB#888:                               # %for.body.2638
                                        #   in Loop: Header=BB8_887 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2832(%rbp)
	movq	-2832(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2832(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_890
# BB#889:                               # %if.then.2645
                                        #   in Loop: Header=BB8_887 Depth=2
	movl	$1, %esi
	movq	-2832(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_890:                              # %if.end.2646
                                        #   in Loop: Header=BB8_887 Depth=2
	movb	-73(%rbp), %al
	movq	-2832(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#891:                               # %for.inc.2649
                                        #   in Loop: Header=BB8_887 Depth=2
	movq	-2800(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2800(%rbp)
	jmp	.LBB8_887
.LBB8_892:                              # %for.end.2651
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_893
.LBB8_893:                              # %if.end.2652
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_894
.LBB8_894:                              # %do.end.2653
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_895
.LBB8_895:                              # %if.end.2654
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_983
.LBB8_896:                              # %if.else.2655
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$43, %edx
	movl	%ecx, -6380(%rbp)       # 4-byte Spill
	movl	%edx, -6384(%rbp)       # 4-byte Spill
	je	.LBB8_952
	jmp	.LBB8_2617
.LBB8_2617:                             # %if.else.2655
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6380(%rbp), %eax       # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -6388(%rbp)       # 4-byte Spill
	jne	.LBB8_981
	jmp	.LBB8_897
.LBB8_897:                              # %sw.bb.2657
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB8_925
# BB#898:                               # %lor.lhs.false.2660
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_925
# BB#899:                               # %if.then.2664
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_900
.LBB8_900:                              # %do.body.2665
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	%rax, -2840(%rbp)
	movq	-2840(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_902
# BB#901:                               # %cond.true.2671
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6400(%rbp)       # 8-byte Spill
	jmp	.LBB8_903
.LBB8_902:                              # %cond.false.2672
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2840(%rbp), %rax
	movq	%rax, -6400(%rbp)       # 8-byte Spill
.LBB8_903:                              # %cond.end.2674
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6400(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2848(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_912
# BB#904:                               # %land.lhs.true.2677
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_912
# BB#905:                               # %if.then.2680
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_906
.LBB8_906:                              # %for.cond.2681
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2848(%rbp)
	je	.LBB8_911
# BB#907:                               # %for.body.2683
                                        #   in Loop: Header=BB8_906 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2856(%rbp)
	movq	-2856(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2856(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_909
# BB#908:                               # %if.then.2690
                                        #   in Loop: Header=BB8_906 Depth=2
	movl	$1, %esi
	movq	-2856(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_909:                              # %if.end.2691
                                        #   in Loop: Header=BB8_906 Depth=2
	movb	-73(%rbp), %al
	movq	-2856(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#910:                               # %for.inc.2694
                                        #   in Loop: Header=BB8_906 Depth=2
	movq	-2848(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2848(%rbp)
	jmp	.LBB8_906
.LBB8_911:                              # %for.end.2696
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_912
.LBB8_912:                              # %if.end.2697
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2864(%rbp)
	movq	-2840(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2868(%rbp)
	movq	-2864(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2868(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2864(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_914
# BB#913:                               # %if.then.2707
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2864(%rbp), %rdi
	movl	-2868(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_914:                              # %if.end.2708
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2864(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rsi
	movslq	-2868(%rbp), %rdx
	callq	memcpy
	movl	-2868(%rbp), %ecx
	movq	-2864(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_923
# BB#915:                               # %land.lhs.true.2715
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_923
# BB#916:                               # %if.then.2718
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_917
.LBB8_917:                              # %for.cond.2719
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2848(%rbp)
	je	.LBB8_922
# BB#918:                               # %for.body.2721
                                        #   in Loop: Header=BB8_917 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2880(%rbp)
	movq	-2880(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2880(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_920
# BB#919:                               # %if.then.2728
                                        #   in Loop: Header=BB8_917 Depth=2
	movl	$1, %esi
	movq	-2880(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_920:                              # %if.end.2729
                                        #   in Loop: Header=BB8_917 Depth=2
	movb	-73(%rbp), %al
	movq	-2880(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#921:                               # %for.inc.2732
                                        #   in Loop: Header=BB8_917 Depth=2
	movq	-2848(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2848(%rbp)
	jmp	.LBB8_917
.LBB8_922:                              # %for.end.2734
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_923
.LBB8_923:                              # %if.end.2735
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_924
.LBB8_924:                              # %do.end.2736
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_951
.LBB8_925:                              # %if.else.2737
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_926
.LBB8_926:                              # %do.body.2738
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -2888(%rbp)
	movq	-2888(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_928
# BB#927:                               # %cond.true.2745
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6408(%rbp)       # 8-byte Spill
	jmp	.LBB8_929
.LBB8_928:                              # %cond.false.2746
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2888(%rbp), %rax
	movq	%rax, -6408(%rbp)       # 8-byte Spill
.LBB8_929:                              # %cond.end.2748
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6408(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2896(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_938
# BB#930:                               # %land.lhs.true.2751
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_938
# BB#931:                               # %if.then.2754
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_932
.LBB8_932:                              # %for.cond.2755
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2896(%rbp)
	je	.LBB8_937
# BB#933:                               # %for.body.2757
                                        #   in Loop: Header=BB8_932 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2904(%rbp)
	movq	-2904(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2904(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_935
# BB#934:                               # %if.then.2764
                                        #   in Loop: Header=BB8_932 Depth=2
	movl	$1, %esi
	movq	-2904(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_935:                              # %if.end.2765
                                        #   in Loop: Header=BB8_932 Depth=2
	movb	-73(%rbp), %al
	movq	-2904(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#936:                               # %for.inc.2768
                                        #   in Loop: Header=BB8_932 Depth=2
	movq	-2896(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2896(%rbp)
	jmp	.LBB8_932
.LBB8_937:                              # %for.end.2770
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_938
.LBB8_938:                              # %if.end.2771
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2912(%rbp)
	movq	-2888(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2916(%rbp)
	movq	-2912(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2916(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2912(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_940
# BB#939:                               # %if.then.2781
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2912(%rbp), %rdi
	movl	-2916(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_940:                              # %if.end.2782
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2912(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movslq	-2916(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-2916(%rbp), %ecx
	movq	-2912(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_949
# BB#941:                               # %land.lhs.true.2790
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_949
# BB#942:                               # %if.then.2793
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_943
.LBB8_943:                              # %for.cond.2794
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2896(%rbp)
	je	.LBB8_948
# BB#944:                               # %for.body.2796
                                        #   in Loop: Header=BB8_943 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2928(%rbp)
	movq	-2928(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2928(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_946
# BB#945:                               # %if.then.2803
                                        #   in Loop: Header=BB8_943 Depth=2
	movl	$1, %esi
	movq	-2928(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_946:                              # %if.end.2804
                                        #   in Loop: Header=BB8_943 Depth=2
	movb	-73(%rbp), %al
	movq	-2928(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#947:                               # %for.inc.2807
                                        #   in Loop: Header=BB8_943 Depth=2
	movq	-2896(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2896(%rbp)
	jmp	.LBB8_943
.LBB8_948:                              # %for.end.2809
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_949
.LBB8_949:                              # %if.end.2810
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_950
.LBB8_950:                              # %do.end.2811
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_951
.LBB8_951:                              # %if.end.2812
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_982
.LBB8_952:                              # %sw.bb.2813
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB8_980
# BB#953:                               # %lor.lhs.false.2816
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_980
# BB#954:                               # %if.then.2820
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_955
.LBB8_955:                              # %do.body.2821
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -2936(%rbp)
	movq	-2936(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_957
# BB#956:                               # %cond.true.2828
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6416(%rbp)       # 8-byte Spill
	jmp	.LBB8_958
.LBB8_957:                              # %cond.false.2829
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2936(%rbp), %rax
	movq	%rax, -6416(%rbp)       # 8-byte Spill
.LBB8_958:                              # %cond.end.2831
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6416(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2944(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_967
# BB#959:                               # %land.lhs.true.2834
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_967
# BB#960:                               # %if.then.2837
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_961
.LBB8_961:                              # %for.cond.2838
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2944(%rbp)
	je	.LBB8_966
# BB#962:                               # %for.body.2840
                                        #   in Loop: Header=BB8_961 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2952(%rbp)
	movq	-2952(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2952(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_964
# BB#963:                               # %if.then.2847
                                        #   in Loop: Header=BB8_961 Depth=2
	movl	$1, %esi
	movq	-2952(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_964:                              # %if.end.2848
                                        #   in Loop: Header=BB8_961 Depth=2
	movb	-73(%rbp), %al
	movq	-2952(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#965:                               # %for.inc.2851
                                        #   in Loop: Header=BB8_961 Depth=2
	movq	-2944(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2944(%rbp)
	jmp	.LBB8_961
.LBB8_966:                              # %for.end.2853
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_967
.LBB8_967:                              # %if.end.2854
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -2960(%rbp)
	movq	-2936(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -2964(%rbp)
	movq	-2960(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-2964(%rbp), %rdx
	addq	%rdx, %rax
	movq	-2960(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_969
# BB#968:                               # %if.then.2864
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2960(%rbp), %rdi
	movl	-2964(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_969:                              # %if.end.2865
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2960(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movslq	-2964(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-2964(%rbp), %ecx
	movq	-2960(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_978
# BB#970:                               # %land.lhs.true.2873
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_978
# BB#971:                               # %if.then.2876
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_972
.LBB8_972:                              # %for.cond.2877
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -2944(%rbp)
	je	.LBB8_977
# BB#973:                               # %for.body.2879
                                        #   in Loop: Header=BB8_972 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -2976(%rbp)
	movq	-2976(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-2976(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_975
# BB#974:                               # %if.then.2886
                                        #   in Loop: Header=BB8_972 Depth=2
	movl	$1, %esi
	movq	-2976(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_975:                              # %if.end.2887
                                        #   in Loop: Header=BB8_972 Depth=2
	movb	-73(%rbp), %al
	movq	-2976(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#976:                               # %for.inc.2890
                                        #   in Loop: Header=BB8_972 Depth=2
	movq	-2944(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -2944(%rbp)
	jmp	.LBB8_972
.LBB8_977:                              # %for.end.2892
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_978
.LBB8_978:                              # %if.end.2893
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_979
.LBB8_979:                              # %do.end.2894
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_980
.LBB8_980:                              # %if.end.2895
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_982
.LBB8_981:                              # %sw.default.2896
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.39, %r8
	movabsq	$.L.str.37, %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %r9
	movzbl	(%r9), %r9d
	subq	$16, %rsp
	movq	%rdx, -6424(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-6424(%rbp), %rax       # 8-byte Reload
	movq	%rcx, -6432(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-6432(%rbp), %r10       # 8-byte Reload
	movq	%r10, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_982:                              # %sw.epilog.2899
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_983
.LBB8_983:                              # %if.end.2900
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_984:                              # %sw.bb.2901
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	%edx, %rax
	movq	%rax, -6440(%rbp)       # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-6440(%rbp), %rcx       # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	jne	.LBB8_986
# BB#985:                               # %if.then.2910
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.41, %r8
	movl	$93, %r9d
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_986:                              # %if.end.2912
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$0, -2984(%rbp)
.LBB8_987:                              # %while.cond.2913
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	%edx, %rax
	movq	%rax, -6448(%rbp)       # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-6448(%rbp), %rcx       # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$2048, %edx             # imm = 0x800
	cmpl	$0, %edx
	je	.LBB8_989
# BB#988:                               # %while.body.2922
                                        #   in Loop: Header=BB8_987 Depth=2
	imulq	$10, -2984(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -64(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	addq	%rcx, %rax
	subq	$48, %rax
	movq	%rax, -2984(%rbp)
	jmp	.LBB8_987
.LBB8_989:                              # %while.end.2929
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB8_991
# BB#990:                               # %if.then.2934
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movl	$93, %r8d
	movabsq	$.L.str.41, %r9
	movq	-32(%rbp), %rcx
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	$93, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_991:                              # %if.end.2936
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$93, %edx
	je	.LBB8_993
# BB#992:                               # %if.then.2941
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.41, %r8
	movl	$93, %r9d
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_993:                              # %if.end.2943
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2984(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB8_1020
# BB#994:                               # %if.then.2946
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_995
.LBB8_995:                              # %do.body.2947
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-2984(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	movq	%rax, -2992(%rbp)
	movq	-2992(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_997
# BB#996:                               # %cond.true.2954
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6456(%rbp)       # 8-byte Spill
	jmp	.LBB8_998
.LBB8_997:                              # %cond.false.2955
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-2992(%rbp), %rax
	movq	%rax, -6456(%rbp)       # 8-byte Spill
.LBB8_998:                              # %cond.end.2957
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6456(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3000(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1007
# BB#999:                               # %land.lhs.true.2960
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1007
# BB#1000:                              # %if.then.2963
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1001
.LBB8_1001:                             # %for.cond.2964
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3000(%rbp)
	je	.LBB8_1006
# BB#1002:                              # %for.body.2966
                                        #   in Loop: Header=BB8_1001 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3008(%rbp)
	movq	-3008(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3008(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1004
# BB#1003:                              # %if.then.2973
                                        #   in Loop: Header=BB8_1001 Depth=2
	movl	$1, %esi
	movq	-3008(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1004:                             # %if.end.2974
                                        #   in Loop: Header=BB8_1001 Depth=2
	movb	-73(%rbp), %al
	movq	-3008(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1005:                              # %for.inc.2977
                                        #   in Loop: Header=BB8_1001 Depth=2
	movq	-3000(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3000(%rbp)
	jmp	.LBB8_1001
.LBB8_1006:                             # %for.end.2979
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1007
.LBB8_1007:                             # %if.end.2980
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3016(%rbp)
	movq	-2992(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3020(%rbp)
	movq	-3016(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3020(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3016(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1009
# BB#1008:                              # %if.then.2990
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3016(%rbp), %rdi
	movl	-3020(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1009:                             # %if.end.2991
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3016(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-2984(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movslq	-3020(%rbp), %rdx
	callq	memcpy
	movl	-3020(%rbp), %r8d
	movq	-3016(%rbp), %rax
	movq	24(%rax), %rcx
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1018
# BB#1010:                              # %land.lhs.true.3000
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1018
# BB#1011:                              # %if.then.3003
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1012
.LBB8_1012:                             # %for.cond.3004
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3000(%rbp)
	je	.LBB8_1017
# BB#1013:                              # %for.body.3006
                                        #   in Loop: Header=BB8_1012 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3032(%rbp)
	movq	-3032(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3032(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1015
# BB#1014:                              # %if.then.3013
                                        #   in Loop: Header=BB8_1012 Depth=2
	movl	$1, %esi
	movq	-3032(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1015:                             # %if.end.3014
                                        #   in Loop: Header=BB8_1012 Depth=2
	movb	-73(%rbp), %al
	movq	-3032(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1016:                              # %for.inc.3017
                                        #   in Loop: Header=BB8_1012 Depth=2
	movq	-3000(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3000(%rbp)
	jmp	.LBB8_1012
.LBB8_1017:                             # %for.end.3019
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1018
.LBB8_1018:                             # %if.end.3020
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1019
.LBB8_1019:                             # %do.end.3021
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1020
.LBB8_1020:                             # %if.end.3022
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1021:                             # %sw.bb.3023
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	124(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6460(%rbp)       # 4-byte Spill
# BB#1022:                              # %do.body.3026
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3040(%rbp)
	movq	-3040(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1024
# BB#1023:                              # %cond.true.3033
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6472(%rbp)       # 8-byte Spill
	jmp	.LBB8_1025
.LBB8_1024:                             # %cond.false.3034
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3040(%rbp), %rax
	movq	%rax, -6472(%rbp)       # 8-byte Spill
.LBB8_1025:                             # %cond.end.3036
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6472(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3048(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1034
# BB#1026:                              # %land.lhs.true.3039
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1034
# BB#1027:                              # %if.then.3042
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1028
.LBB8_1028:                             # %for.cond.3043
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3048(%rbp)
	je	.LBB8_1033
# BB#1029:                              # %for.body.3045
                                        #   in Loop: Header=BB8_1028 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3056(%rbp)
	movq	-3056(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3056(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1031
# BB#1030:                              # %if.then.3052
                                        #   in Loop: Header=BB8_1028 Depth=2
	movl	$1, %esi
	movq	-3056(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1031:                             # %if.end.3053
                                        #   in Loop: Header=BB8_1028 Depth=2
	movb	-73(%rbp), %al
	movq	-3056(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1032:                              # %for.inc.3056
                                        #   in Loop: Header=BB8_1028 Depth=2
	movq	-3048(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3048(%rbp)
	jmp	.LBB8_1028
.LBB8_1033:                             # %for.end.3058
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1034
.LBB8_1034:                             # %if.end.3059
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3064(%rbp)
	movq	-3040(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3068(%rbp)
	movq	-3064(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3068(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3064(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1036
# BB#1035:                              # %if.then.3069
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3064(%rbp), %rdi
	movl	-3068(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1036:                             # %if.end.3070
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3064(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3068(%rbp), %rdx
	callq	memcpy
	movl	-3068(%rbp), %ecx
	movq	-3064(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1045
# BB#1037:                              # %land.lhs.true.3078
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1045
# BB#1038:                              # %if.then.3081
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1039
.LBB8_1039:                             # %for.cond.3082
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3048(%rbp)
	je	.LBB8_1044
# BB#1040:                              # %for.body.3084
                                        #   in Loop: Header=BB8_1039 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3080(%rbp)
	movq	-3080(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3080(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1042
# BB#1041:                              # %if.then.3091
                                        #   in Loop: Header=BB8_1039 Depth=2
	movl	$1, %esi
	movq	-3080(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1042:                             # %if.end.3092
                                        #   in Loop: Header=BB8_1039 Depth=2
	movb	-73(%rbp), %al
	movq	-3080(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1043:                              # %for.inc.3095
                                        #   in Loop: Header=BB8_1039 Depth=2
	movq	-3048(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3048(%rbp)
	jmp	.LBB8_1039
.LBB8_1044:                             # %for.end.3097
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1045
.LBB8_1045:                             # %if.end.3098
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1046
.LBB8_1046:                             # %do.end.3099
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1047:                             # %sw.bb.3100
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.10, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	40(%rax), %r8d
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6476(%rbp)       # 4-byte Spill
# BB#1048:                              # %do.body.3109
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3088(%rbp)
	movq	-3088(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1050
# BB#1049:                              # %cond.true.3116
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6488(%rbp)       # 8-byte Spill
	jmp	.LBB8_1051
.LBB8_1050:                             # %cond.false.3117
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3088(%rbp), %rax
	movq	%rax, -6488(%rbp)       # 8-byte Spill
.LBB8_1051:                             # %cond.end.3119
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6488(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3096(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1060
# BB#1052:                              # %land.lhs.true.3122
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1060
# BB#1053:                              # %if.then.3125
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1054
.LBB8_1054:                             # %for.cond.3126
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3096(%rbp)
	je	.LBB8_1059
# BB#1055:                              # %for.body.3128
                                        #   in Loop: Header=BB8_1054 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3104(%rbp)
	movq	-3104(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3104(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1057
# BB#1056:                              # %if.then.3135
                                        #   in Loop: Header=BB8_1054 Depth=2
	movl	$1, %esi
	movq	-3104(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1057:                             # %if.end.3136
                                        #   in Loop: Header=BB8_1054 Depth=2
	movb	-73(%rbp), %al
	movq	-3104(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1058:                              # %for.inc.3139
                                        #   in Loop: Header=BB8_1054 Depth=2
	movq	-3096(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3096(%rbp)
	jmp	.LBB8_1054
.LBB8_1059:                             # %for.end.3141
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1060
.LBB8_1060:                             # %if.end.3142
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3112(%rbp)
	movq	-3088(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3116(%rbp)
	movq	-3112(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3116(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3112(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1062
# BB#1061:                              # %if.then.3152
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3112(%rbp), %rdi
	movl	-3116(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1062:                             # %if.end.3153
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3112(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3116(%rbp), %rdx
	callq	memcpy
	movl	-3116(%rbp), %ecx
	movq	-3112(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1071
# BB#1063:                              # %land.lhs.true.3161
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1071
# BB#1064:                              # %if.then.3164
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1065
.LBB8_1065:                             # %for.cond.3165
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3096(%rbp)
	je	.LBB8_1070
# BB#1066:                              # %for.body.3167
                                        #   in Loop: Header=BB8_1065 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3128(%rbp)
	movq	-3128(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3128(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1068
# BB#1067:                              # %if.then.3174
                                        #   in Loop: Header=BB8_1065 Depth=2
	movl	$1, %esi
	movq	-3128(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1068:                             # %if.end.3175
                                        #   in Loop: Header=BB8_1065 Depth=2
	movb	-73(%rbp), %al
	movq	-3128(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1069:                              # %for.inc.3178
                                        #   in Loop: Header=BB8_1065 Depth=2
	movq	-3096(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3096(%rbp)
	jmp	.LBB8_1065
.LBB8_1070:                             # %for.end.3180
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1071
.LBB8_1071:                             # %if.end.3181
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1072
.LBB8_1072:                             # %do.end.3182
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1073:                             # %sw.bb.3183
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$47, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	strrchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_1100
# BB#1074:                              # %if.then.3186
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	strncpy
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movb	$0, -592(%rbp,%rcx)
	movq	%rax, -6496(%rbp)       # 8-byte Spill
# BB#1075:                              # %do.body.3196
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3136(%rbp)
	movq	-3136(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1077
# BB#1076:                              # %cond.true.3203
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6504(%rbp)       # 8-byte Spill
	jmp	.LBB8_1078
.LBB8_1077:                             # %cond.false.3204
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3136(%rbp), %rax
	movq	%rax, -6504(%rbp)       # 8-byte Spill
.LBB8_1078:                             # %cond.end.3206
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6504(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3144(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1087
# BB#1079:                              # %land.lhs.true.3209
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1087
# BB#1080:                              # %if.then.3212
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1081
.LBB8_1081:                             # %for.cond.3213
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3144(%rbp)
	je	.LBB8_1086
# BB#1082:                              # %for.body.3215
                                        #   in Loop: Header=BB8_1081 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3152(%rbp)
	movq	-3152(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3152(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1084
# BB#1083:                              # %if.then.3222
                                        #   in Loop: Header=BB8_1081 Depth=2
	movl	$1, %esi
	movq	-3152(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1084:                             # %if.end.3223
                                        #   in Loop: Header=BB8_1081 Depth=2
	movb	-73(%rbp), %al
	movq	-3152(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1085:                              # %for.inc.3226
                                        #   in Loop: Header=BB8_1081 Depth=2
	movq	-3144(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3144(%rbp)
	jmp	.LBB8_1081
.LBB8_1086:                             # %for.end.3228
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1087
.LBB8_1087:                             # %if.end.3229
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3160(%rbp)
	movq	-3136(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3164(%rbp)
	movq	-3160(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3164(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3160(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1089
# BB#1088:                              # %if.then.3239
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3160(%rbp), %rdi
	movl	-3164(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1089:                             # %if.end.3240
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3160(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3164(%rbp), %rdx
	callq	memcpy
	movl	-3164(%rbp), %ecx
	movq	-3160(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1098
# BB#1090:                              # %land.lhs.true.3248
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1098
# BB#1091:                              # %if.then.3251
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1092
.LBB8_1092:                             # %for.cond.3252
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3144(%rbp)
	je	.LBB8_1097
# BB#1093:                              # %for.body.3254
                                        #   in Loop: Header=BB8_1092 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3176(%rbp)
	movq	-3176(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3176(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1095
# BB#1094:                              # %if.then.3261
                                        #   in Loop: Header=BB8_1092 Depth=2
	movl	$1, %esi
	movq	-3176(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1095:                             # %if.end.3262
                                        #   in Loop: Header=BB8_1092 Depth=2
	movb	-73(%rbp), %al
	movq	-3176(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1096:                              # %for.inc.3265
                                        #   in Loop: Header=BB8_1092 Depth=2
	movq	-3144(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3144(%rbp)
	jmp	.LBB8_1092
.LBB8_1097:                             # %for.end.3267
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1098
.LBB8_1098:                             # %if.end.3268
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1099
.LBB8_1099:                             # %do.end.3269
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1119
.LBB8_1100:                             # %if.else.3270
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1101
.LBB8_1101:                             # %do.body.3271
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1106
# BB#1102:                              # %land.lhs.true.3274
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1106
# BB#1103:                              # %if.then.3277
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3192(%rbp)
	movq	-3192(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3192(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1105
# BB#1104:                              # %if.then.3284
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-3192(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1105:                             # %if.end.3285
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3192(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$46, (%rcx)
.LBB8_1106:                             # %if.end.3288
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -3180(%rbp)
.LBB8_1107:                             # %for.cond.3289
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-3180(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_1112
# BB#1108:                              # %for.body.3294
                                        #   in Loop: Header=BB8_1107 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3200(%rbp)
	movq	-3200(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3200(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1110
# BB#1109:                              # %if.then.3301
                                        #   in Loop: Header=BB8_1107 Depth=2
	movl	$1, %esi
	movq	-3200(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1110:                             # %if.end.3302
                                        #   in Loop: Header=BB8_1107 Depth=2
	movb	-73(%rbp), %al
	movq	-3200(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1111:                              # %for.inc.3305
                                        #   in Loop: Header=BB8_1107 Depth=2
	movl	-3180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3180(%rbp)
	jmp	.LBB8_1107
.LBB8_1112:                             # %for.end.3307
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1114
# BB#1113:                              # %lor.lhs.false.3309
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1117
.LBB8_1114:                             # %if.then.3312
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3208(%rbp)
	movq	-3208(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3208(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1116
# BB#1115:                              # %if.then.3319
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-3208(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1116:                             # %if.end.3320
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3208(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$46, (%rcx)
.LBB8_1117:                             # %if.end.3323
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1118
.LBB8_1118:                             # %do.end.3324
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1119
.LBB8_1119:                             # %if.end.3325
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1120:                             # %sw.bb.3326
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx,%rax), %edx
	cmpl	$123, %edx
	jne	.LBB8_1131
# BB#1121:                              # %if.then.3332
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB8_1122:                             # %for.cond.3334
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$512, -72(%rbp)         # imm = 0x200
	movb	%cl, -6505(%rbp)        # 1-byte Spill
	jae	.LBB8_1125
# BB#1123:                              # %land.lhs.true.3337
                                        #   in Loop: Header=BB8_1122 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -6505(%rbp)        # 1-byte Spill
	je	.LBB8_1125
# BB#1124:                              # %land.rhs.3341
                                        #   in Loop: Header=BB8_1122 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$125, %edx
	setne	%sil
	movb	%sil, -6505(%rbp)       # 1-byte Spill
.LBB8_1125:                             # %land.end.3346
                                        #   in Loop: Header=BB8_1122 Depth=2
	movb	-6505(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_1126
	jmp	.LBB8_1128
.LBB8_1126:                             # %for.body.3347
                                        #   in Loop: Header=BB8_1122 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-72(%rbp), %rax
	movb	%dl, -1104(%rbp,%rax)
# BB#1127:                              # %for.inc.3350
                                        #   in Loop: Header=BB8_1122 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB8_1122
.LBB8_1128:                             # %for.end.3353
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$125, %edx
	je	.LBB8_1130
# BB#1129:                              # %if.then.3358
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.42, %r8
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_1130:                             # %if.end.3360
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %esi
	leaq	-1104(%rbp), %rdx
	leaq	-592(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movb	$0, -1104(%rbp,%rcx)
	movq	-24(%rbp), %rcx
	addq	$40, %rcx
	callq	strftime
	movq	%rax, -6520(%rbp)       # 8-byte Spill
	jmp	.LBB8_1132
.LBB8_1131:                             # %if.else.3366
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.13, %rsi
	movl	$100, %eax
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	60(%rcx), %edx
	movl	%eax, -6524(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-6524(%rbp), %r8d       # 4-byte Reload
	idivl	%r8d
	movq	-24(%rbp), %rcx
	movl	56(%rcx), %r9d
	addl	$1, %r9d
	movq	-24(%rbp), %rcx
	movl	52(%rcx), %r8d
	movl	%r9d, %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6528(%rbp)       # 4-byte Spill
.LBB8_1132:                             # %if.end.3377
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1133
.LBB8_1133:                             # %do.body.3378
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3216(%rbp)
	movq	-3216(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1135
# BB#1134:                              # %cond.true.3385
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6536(%rbp)       # 8-byte Spill
	jmp	.LBB8_1136
.LBB8_1135:                             # %cond.false.3386
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3216(%rbp), %rax
	movq	%rax, -6536(%rbp)       # 8-byte Spill
.LBB8_1136:                             # %cond.end.3388
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6536(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3224(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1145
# BB#1137:                              # %land.lhs.true.3391
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1145
# BB#1138:                              # %if.then.3394
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1139
.LBB8_1139:                             # %for.cond.3395
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3224(%rbp)
	je	.LBB8_1144
# BB#1140:                              # %for.body.3397
                                        #   in Loop: Header=BB8_1139 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3232(%rbp)
	movq	-3232(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3232(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1142
# BB#1141:                              # %if.then.3404
                                        #   in Loop: Header=BB8_1139 Depth=2
	movl	$1, %esi
	movq	-3232(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1142:                             # %if.end.3405
                                        #   in Loop: Header=BB8_1139 Depth=2
	movb	-73(%rbp), %al
	movq	-3232(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1143:                              # %for.inc.3408
                                        #   in Loop: Header=BB8_1139 Depth=2
	movq	-3224(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3224(%rbp)
	jmp	.LBB8_1139
.LBB8_1144:                             # %for.end.3410
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1145
.LBB8_1145:                             # %if.end.3411
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3240(%rbp)
	movq	-3216(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3244(%rbp)
	movq	-3240(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3244(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3240(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1147
# BB#1146:                              # %if.then.3421
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3240(%rbp), %rdi
	movl	-3244(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1147:                             # %if.end.3422
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3240(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3244(%rbp), %rdx
	callq	memcpy
	movl	-3244(%rbp), %ecx
	movq	-3240(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1156
# BB#1148:                              # %land.lhs.true.3430
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1156
# BB#1149:                              # %if.then.3433
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1150
.LBB8_1150:                             # %for.cond.3434
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3224(%rbp)
	je	.LBB8_1155
# BB#1151:                              # %for.body.3436
                                        #   in Loop: Header=BB8_1150 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3256(%rbp)
	movq	-3256(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3256(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1153
# BB#1152:                              # %if.then.3443
                                        #   in Loop: Header=BB8_1150 Depth=2
	movl	$1, %esi
	movq	-3256(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1153:                             # %if.end.3444
                                        #   in Loop: Header=BB8_1150 Depth=2
	movb	-73(%rbp), %al
	movq	-3256(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1154:                              # %for.inc.3447
                                        #   in Loop: Header=BB8_1150 Depth=2
	movq	-3224(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3224(%rbp)
	jmp	.LBB8_1150
.LBB8_1155:                             # %for.end.3449
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1156
.LBB8_1156:                             # %if.end.3450
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1157
.LBB8_1157:                             # %do.end.3451
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1158:                             # %sw.bb.3452
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.14, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -6544(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$512, %ecx              # imm = 0x200
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	addq	$40, %rdi
	movq	-6544(%rbp), %rdx       # 8-byte Reload
	movq	%rdi, -6552(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-6552(%rbp), %rcx       # 8-byte Reload
	callq	strftime
	movq	%rax, -6560(%rbp)       # 8-byte Spill
# BB#1159:                              # %do.body.3457
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3264(%rbp)
	movq	-3264(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1161
# BB#1160:                              # %cond.true.3464
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6568(%rbp)       # 8-byte Spill
	jmp	.LBB8_1162
.LBB8_1161:                             # %cond.false.3465
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3264(%rbp), %rax
	movq	%rax, -6568(%rbp)       # 8-byte Spill
.LBB8_1162:                             # %cond.end.3467
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6568(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3272(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1171
# BB#1163:                              # %land.lhs.true.3470
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1171
# BB#1164:                              # %if.then.3473
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1165
.LBB8_1165:                             # %for.cond.3474
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3272(%rbp)
	je	.LBB8_1170
# BB#1166:                              # %for.body.3476
                                        #   in Loop: Header=BB8_1165 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3280(%rbp)
	movq	-3280(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3280(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1168
# BB#1167:                              # %if.then.3483
                                        #   in Loop: Header=BB8_1165 Depth=2
	movl	$1, %esi
	movq	-3280(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1168:                             # %if.end.3484
                                        #   in Loop: Header=BB8_1165 Depth=2
	movb	-73(%rbp), %al
	movq	-3280(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1169:                              # %for.inc.3487
                                        #   in Loop: Header=BB8_1165 Depth=2
	movq	-3272(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3272(%rbp)
	jmp	.LBB8_1165
.LBB8_1170:                             # %for.end.3489
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1171
.LBB8_1171:                             # %if.end.3490
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3288(%rbp)
	movq	-3264(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3292(%rbp)
	movq	-3288(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3292(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3288(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1173
# BB#1172:                              # %if.then.3500
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3288(%rbp), %rdi
	movl	-3292(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1173:                             # %if.end.3501
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3288(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3292(%rbp), %rdx
	callq	memcpy
	movl	-3292(%rbp), %ecx
	movq	-3288(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1182
# BB#1174:                              # %land.lhs.true.3509
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1182
# BB#1175:                              # %if.then.3512
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1176
.LBB8_1176:                             # %for.cond.3513
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3272(%rbp)
	je	.LBB8_1181
# BB#1177:                              # %for.body.3515
                                        #   in Loop: Header=BB8_1176 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3304(%rbp)
	movq	-3304(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3304(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1179
# BB#1178:                              # %if.then.3522
                                        #   in Loop: Header=BB8_1176 Depth=2
	movl	$1, %esi
	movq	-3304(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1179:                             # %if.end.3523
                                        #   in Loop: Header=BB8_1176 Depth=2
	movb	-73(%rbp), %al
	movq	-3304(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1180:                              # %for.inc.3526
                                        #   in Loop: Header=BB8_1176 Depth=2
	movq	-3272(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3272(%rbp)
	jmp	.LBB8_1176
.LBB8_1181:                             # %for.end.3528
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1182
.LBB8_1182:                             # %if.end.3529
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1183
.LBB8_1183:                             # %do.end.3530
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1184:                             # %sw.bb.3531
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.15, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -6576(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$512, %ecx              # imm = 0x200
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	addq	$40, %rdi
	movq	-6576(%rbp), %rdx       # 8-byte Reload
	movq	%rdi, -6584(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-6584(%rbp), %rcx       # 8-byte Reload
	callq	strftime
	movq	%rax, -6592(%rbp)       # 8-byte Spill
# BB#1185:                              # %do.body.3536
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3312(%rbp)
	movq	-3312(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1187
# BB#1186:                              # %cond.true.3543
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6600(%rbp)       # 8-byte Spill
	jmp	.LBB8_1188
.LBB8_1187:                             # %cond.false.3544
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3312(%rbp), %rax
	movq	%rax, -6600(%rbp)       # 8-byte Spill
.LBB8_1188:                             # %cond.end.3546
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6600(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3320(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1197
# BB#1189:                              # %land.lhs.true.3549
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1197
# BB#1190:                              # %if.then.3552
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1191
.LBB8_1191:                             # %for.cond.3553
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3320(%rbp)
	je	.LBB8_1196
# BB#1192:                              # %for.body.3555
                                        #   in Loop: Header=BB8_1191 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3328(%rbp)
	movq	-3328(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3328(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1194
# BB#1193:                              # %if.then.3562
                                        #   in Loop: Header=BB8_1191 Depth=2
	movl	$1, %esi
	movq	-3328(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1194:                             # %if.end.3563
                                        #   in Loop: Header=BB8_1191 Depth=2
	movb	-73(%rbp), %al
	movq	-3328(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1195:                              # %for.inc.3566
                                        #   in Loop: Header=BB8_1191 Depth=2
	movq	-3320(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3320(%rbp)
	jmp	.LBB8_1191
.LBB8_1196:                             # %for.end.3568
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1197
.LBB8_1197:                             # %if.end.3569
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3336(%rbp)
	movq	-3312(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3340(%rbp)
	movq	-3336(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3340(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3336(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1199
# BB#1198:                              # %if.then.3579
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3336(%rbp), %rdi
	movl	-3340(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1199:                             # %if.end.3580
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3336(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3340(%rbp), %rdx
	callq	memcpy
	movl	-3340(%rbp), %ecx
	movq	-3336(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1208
# BB#1200:                              # %land.lhs.true.3588
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1208
# BB#1201:                              # %if.then.3591
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1202
.LBB8_1202:                             # %for.cond.3592
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3320(%rbp)
	je	.LBB8_1207
# BB#1203:                              # %for.body.3594
                                        #   in Loop: Header=BB8_1202 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3352(%rbp)
	movq	-3352(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3352(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1205
# BB#1204:                              # %if.then.3601
                                        #   in Loop: Header=BB8_1202 Depth=2
	movl	$1, %esi
	movq	-3352(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1205:                             # %if.end.3602
                                        #   in Loop: Header=BB8_1202 Depth=2
	movb	-73(%rbp), %al
	movq	-3352(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1206:                              # %for.inc.3605
                                        #   in Loop: Header=BB8_1202 Depth=2
	movq	-3320(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3320(%rbp)
	jmp	.LBB8_1202
.LBB8_1207:                             # %for.end.3607
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1208
.LBB8_1208:                             # %if.end.3608
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1209
.LBB8_1209:                             # %do.end.3609
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1210:                             # %sw.bb.3610
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1211
.LBB8_1211:                             # %do.body.3611
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movq	%rax, -3360(%rbp)
	movq	-3360(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1213
# BB#1212:                              # %cond.true.3618
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6608(%rbp)       # 8-byte Spill
	jmp	.LBB8_1214
.LBB8_1213:                             # %cond.false.3619
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3360(%rbp), %rax
	movq	%rax, -6608(%rbp)       # 8-byte Spill
.LBB8_1214:                             # %cond.end.3621
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6608(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3368(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1223
# BB#1215:                              # %land.lhs.true.3624
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1223
# BB#1216:                              # %if.then.3627
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1217
.LBB8_1217:                             # %for.cond.3628
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3368(%rbp)
	je	.LBB8_1222
# BB#1218:                              # %for.body.3630
                                        #   in Loop: Header=BB8_1217 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3376(%rbp)
	movq	-3376(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3376(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1220
# BB#1219:                              # %if.then.3637
                                        #   in Loop: Header=BB8_1217 Depth=2
	movl	$1, %esi
	movq	-3376(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1220:                             # %if.end.3638
                                        #   in Loop: Header=BB8_1217 Depth=2
	movb	-73(%rbp), %al
	movq	-3376(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1221:                              # %for.inc.3641
                                        #   in Loop: Header=BB8_1217 Depth=2
	movq	-3368(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3368(%rbp)
	jmp	.LBB8_1217
.LBB8_1222:                             # %for.end.3643
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1223
.LBB8_1223:                             # %if.end.3644
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3384(%rbp)
	movq	-3360(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3388(%rbp)
	movq	-3384(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3388(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3384(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1225
# BB#1224:                              # %if.then.3654
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3384(%rbp), %rdi
	movl	-3388(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1225:                             # %if.end.3655
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3384(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movslq	-3388(%rbp), %rdx
	callq	memcpy
	movl	-3388(%rbp), %ecx
	movq	-3384(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1234
# BB#1226:                              # %land.lhs.true.3663
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1234
# BB#1227:                              # %if.then.3666
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1228
.LBB8_1228:                             # %for.cond.3667
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3368(%rbp)
	je	.LBB8_1233
# BB#1229:                              # %for.body.3669
                                        #   in Loop: Header=BB8_1228 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3400(%rbp)
	movq	-3400(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3400(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1231
# BB#1230:                              # %if.then.3676
                                        #   in Loop: Header=BB8_1228 Depth=2
	movl	$1, %esi
	movq	-3400(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1231:                             # %if.end.3677
                                        #   in Loop: Header=BB8_1228 Depth=2
	movb	-73(%rbp), %al
	movq	-3400(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1232:                              # %for.inc.3680
                                        #   in Loop: Header=BB8_1228 Depth=2
	movq	-3368(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3368(%rbp)
	jmp	.LBB8_1228
.LBB8_1233:                             # %for.end.3682
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1234
.LBB8_1234:                             # %if.end.3683
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1235
.LBB8_1235:                             # %do.end.3684
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1236:                             # %sw.bb.3685
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.16, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	52(%rax), %edx
	movq	-24(%rbp), %rax
	movl	56(%rax), %ecx
	addl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	60(%rax), %r8d
	addl	$1900, %r8d             # imm = 0x76C
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6612(%rbp)       # 4-byte Spill
# BB#1237:                              # %do.body.3696
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3408(%rbp)
	movq	-3408(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1239
# BB#1238:                              # %cond.true.3703
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6624(%rbp)       # 8-byte Spill
	jmp	.LBB8_1240
.LBB8_1239:                             # %cond.false.3704
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3408(%rbp), %rax
	movq	%rax, -6624(%rbp)       # 8-byte Spill
.LBB8_1240:                             # %cond.end.3706
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6624(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3416(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1249
# BB#1241:                              # %land.lhs.true.3709
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1249
# BB#1242:                              # %if.then.3712
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1243
.LBB8_1243:                             # %for.cond.3713
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3416(%rbp)
	je	.LBB8_1248
# BB#1244:                              # %for.body.3715
                                        #   in Loop: Header=BB8_1243 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3424(%rbp)
	movq	-3424(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3424(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1246
# BB#1245:                              # %if.then.3722
                                        #   in Loop: Header=BB8_1243 Depth=2
	movl	$1, %esi
	movq	-3424(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1246:                             # %if.end.3723
                                        #   in Loop: Header=BB8_1243 Depth=2
	movb	-73(%rbp), %al
	movq	-3424(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1247:                              # %for.inc.3726
                                        #   in Loop: Header=BB8_1243 Depth=2
	movq	-3416(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3416(%rbp)
	jmp	.LBB8_1243
.LBB8_1248:                             # %for.end.3728
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1249
.LBB8_1249:                             # %if.end.3729
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3432(%rbp)
	movq	-3408(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3436(%rbp)
	movq	-3432(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3436(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3432(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1251
# BB#1250:                              # %if.then.3739
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3432(%rbp), %rdi
	movl	-3436(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1251:                             # %if.end.3740
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3432(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3436(%rbp), %rdx
	callq	memcpy
	movl	-3436(%rbp), %ecx
	movq	-3432(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1260
# BB#1252:                              # %land.lhs.true.3748
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1260
# BB#1253:                              # %if.then.3751
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1254
.LBB8_1254:                             # %for.cond.3752
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3416(%rbp)
	je	.LBB8_1259
# BB#1255:                              # %for.body.3754
                                        #   in Loop: Header=BB8_1254 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3448(%rbp)
	movq	-3448(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3448(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1257
# BB#1256:                              # %if.then.3761
                                        #   in Loop: Header=BB8_1254 Depth=2
	movl	$1, %esi
	movq	-3448(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1257:                             # %if.end.3762
                                        #   in Loop: Header=BB8_1254 Depth=2
	movb	-73(%rbp), %al
	movq	-3448(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1258:                              # %for.inc.3765
                                        #   in Loop: Header=BB8_1254 Depth=2
	movq	-3416(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3416(%rbp)
	jmp	.LBB8_1254
.LBB8_1259:                             # %for.end.3767
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1260
.LBB8_1260:                             # %if.end.3768
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1261
.LBB8_1261:                             # %do.end.3769
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1262:                             # %sw.bb.3770
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -6628(%rbp)       # 4-byte Spill
	movl	%esi, -6632(%rbp)       # 4-byte Spill
	je	.LBB8_1315
	jmp	.LBB8_2615
.LBB8_2615:                             # %sw.bb.3770
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6628(%rbp), %eax       # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -6636(%rbp)       # 4-byte Spill
	je	.LBB8_1289
	jmp	.LBB8_2616
.LBB8_2616:                             # %sw.bb.3770
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6628(%rbp), %eax       # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -6640(%rbp)       # 4-byte Spill
	jne	.LBB8_1362
	jmp	.LBB8_1263
.LBB8_1263:                             # %sw.bb.3774
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	128(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6644(%rbp)       # 4-byte Spill
# BB#1264:                              # %do.body.3777
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3456(%rbp)
	movq	-3456(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1266
# BB#1265:                              # %cond.true.3784
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6656(%rbp)       # 8-byte Spill
	jmp	.LBB8_1267
.LBB8_1266:                             # %cond.false.3785
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3456(%rbp), %rax
	movq	%rax, -6656(%rbp)       # 8-byte Spill
.LBB8_1267:                             # %cond.end.3787
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6656(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3464(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1276
# BB#1268:                              # %land.lhs.true.3790
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1276
# BB#1269:                              # %if.then.3793
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1270
.LBB8_1270:                             # %for.cond.3794
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3464(%rbp)
	je	.LBB8_1275
# BB#1271:                              # %for.body.3796
                                        #   in Loop: Header=BB8_1270 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3472(%rbp)
	movq	-3472(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3472(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1273
# BB#1272:                              # %if.then.3803
                                        #   in Loop: Header=BB8_1270 Depth=2
	movl	$1, %esi
	movq	-3472(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1273:                             # %if.end.3804
                                        #   in Loop: Header=BB8_1270 Depth=2
	movb	-73(%rbp), %al
	movq	-3472(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1274:                              # %for.inc.3807
                                        #   in Loop: Header=BB8_1270 Depth=2
	movq	-3464(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3464(%rbp)
	jmp	.LBB8_1270
.LBB8_1275:                             # %for.end.3809
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1276
.LBB8_1276:                             # %if.end.3810
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3480(%rbp)
	movq	-3456(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3484(%rbp)
	movq	-3480(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3484(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3480(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1278
# BB#1277:                              # %if.then.3820
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3480(%rbp), %rdi
	movl	-3484(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1278:                             # %if.end.3821
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3480(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3484(%rbp), %rdx
	callq	memcpy
	movl	-3484(%rbp), %ecx
	movq	-3480(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1287
# BB#1279:                              # %land.lhs.true.3829
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1287
# BB#1280:                              # %if.then.3832
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1281
.LBB8_1281:                             # %for.cond.3833
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3464(%rbp)
	je	.LBB8_1286
# BB#1282:                              # %for.body.3835
                                        #   in Loop: Header=BB8_1281 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3496(%rbp)
	movq	-3496(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3496(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1284
# BB#1283:                              # %if.then.3842
                                        #   in Loop: Header=BB8_1281 Depth=2
	movl	$1, %esi
	movq	-3496(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1284:                             # %if.end.3843
                                        #   in Loop: Header=BB8_1281 Depth=2
	movb	-73(%rbp), %al
	movq	-3496(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1285:                              # %for.inc.3846
                                        #   in Loop: Header=BB8_1281 Depth=2
	movq	-3464(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3464(%rbp)
	jmp	.LBB8_1281
.LBB8_1286:                             # %for.end.3848
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1287
.LBB8_1287:                             # %if.end.3849
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1288
.LBB8_1288:                             # %do.end.3850
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1363
.LBB8_1289:                             # %sw.bb.3851
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6660(%rbp)       # 4-byte Spill
# BB#1290:                              # %do.body.3855
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3504(%rbp)
	movq	-3504(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1292
# BB#1291:                              # %cond.true.3862
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6672(%rbp)       # 8-byte Spill
	jmp	.LBB8_1293
.LBB8_1292:                             # %cond.false.3863
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3504(%rbp), %rax
	movq	%rax, -6672(%rbp)       # 8-byte Spill
.LBB8_1293:                             # %cond.end.3865
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6672(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3512(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1302
# BB#1294:                              # %land.lhs.true.3868
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1302
# BB#1295:                              # %if.then.3871
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1296
.LBB8_1296:                             # %for.cond.3872
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3512(%rbp)
	je	.LBB8_1301
# BB#1297:                              # %for.body.3874
                                        #   in Loop: Header=BB8_1296 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3520(%rbp)
	movq	-3520(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3520(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1299
# BB#1298:                              # %if.then.3881
                                        #   in Loop: Header=BB8_1296 Depth=2
	movl	$1, %esi
	movq	-3520(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1299:                             # %if.end.3882
                                        #   in Loop: Header=BB8_1296 Depth=2
	movb	-73(%rbp), %al
	movq	-3520(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1300:                              # %for.inc.3885
                                        #   in Loop: Header=BB8_1296 Depth=2
	movq	-3512(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3512(%rbp)
	jmp	.LBB8_1296
.LBB8_1301:                             # %for.end.3887
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1302
.LBB8_1302:                             # %if.end.3888
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3528(%rbp)
	movq	-3504(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3532(%rbp)
	movq	-3528(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3532(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3528(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1304
# BB#1303:                              # %if.then.3898
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3528(%rbp), %rdi
	movl	-3532(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1304:                             # %if.end.3899
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3528(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3532(%rbp), %rdx
	callq	memcpy
	movl	-3532(%rbp), %ecx
	movq	-3528(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1313
# BB#1305:                              # %land.lhs.true.3907
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1313
# BB#1306:                              # %if.then.3910
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1307
.LBB8_1307:                             # %for.cond.3911
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3512(%rbp)
	je	.LBB8_1312
# BB#1308:                              # %for.body.3913
                                        #   in Loop: Header=BB8_1307 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3544(%rbp)
	movq	-3544(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3544(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1310
# BB#1309:                              # %if.then.3920
                                        #   in Loop: Header=BB8_1307 Depth=2
	movl	$1, %esi
	movq	-3544(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1310:                             # %if.end.3921
                                        #   in Loop: Header=BB8_1307 Depth=2
	movb	-73(%rbp), %al
	movq	-3544(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1311:                              # %for.inc.3924
                                        #   in Loop: Header=BB8_1307 Depth=2
	movq	-3512(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3512(%rbp)
	jmp	.LBB8_1307
.LBB8_1312:                             # %for.end.3926
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1313
.LBB8_1313:                             # %if.end.3927
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1314
.LBB8_1314:                             # %do.end.3928
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1363
.LBB8_1315:                             # %sw.bb.3929
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_1342
# BB#1316:                              # %if.then.3936
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	136(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6676(%rbp)       # 4-byte Spill
# BB#1317:                              # %do.body.3940
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3552(%rbp)
	movq	-3552(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1319
# BB#1318:                              # %cond.true.3947
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6688(%rbp)       # 8-byte Spill
	jmp	.LBB8_1320
.LBB8_1319:                             # %cond.false.3948
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3552(%rbp), %rax
	movq	%rax, -6688(%rbp)       # 8-byte Spill
.LBB8_1320:                             # %cond.end.3950
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6688(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3560(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1329
# BB#1321:                              # %land.lhs.true.3953
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1329
# BB#1322:                              # %if.then.3956
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1323
.LBB8_1323:                             # %for.cond.3957
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3560(%rbp)
	je	.LBB8_1328
# BB#1324:                              # %for.body.3959
                                        #   in Loop: Header=BB8_1323 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3568(%rbp)
	movq	-3568(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3568(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1326
# BB#1325:                              # %if.then.3966
                                        #   in Loop: Header=BB8_1323 Depth=2
	movl	$1, %esi
	movq	-3568(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1326:                             # %if.end.3967
                                        #   in Loop: Header=BB8_1323 Depth=2
	movb	-73(%rbp), %al
	movq	-3568(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1327:                              # %for.inc.3970
                                        #   in Loop: Header=BB8_1323 Depth=2
	movq	-3560(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3560(%rbp)
	jmp	.LBB8_1323
.LBB8_1328:                             # %for.end.3972
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1329
.LBB8_1329:                             # %if.end.3973
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3576(%rbp)
	movq	-3552(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3580(%rbp)
	movq	-3576(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3580(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3576(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1331
# BB#1330:                              # %if.then.3983
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3576(%rbp), %rdi
	movl	-3580(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1331:                             # %if.end.3984
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3576(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3580(%rbp), %rdx
	callq	memcpy
	movl	-3580(%rbp), %ecx
	movq	-3576(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1340
# BB#1332:                              # %land.lhs.true.3992
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1340
# BB#1333:                              # %if.then.3995
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1334
.LBB8_1334:                             # %for.cond.3996
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3560(%rbp)
	je	.LBB8_1339
# BB#1335:                              # %for.body.3998
                                        #   in Loop: Header=BB8_1334 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3592(%rbp)
	movq	-3592(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3592(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1337
# BB#1336:                              # %if.then.4005
                                        #   in Loop: Header=BB8_1334 Depth=2
	movl	$1, %esi
	movq	-3592(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1337:                             # %if.end.4006
                                        #   in Loop: Header=BB8_1334 Depth=2
	movb	-73(%rbp), %al
	movq	-3592(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1338:                              # %for.inc.4009
                                        #   in Loop: Header=BB8_1334 Depth=2
	movq	-3560(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3560(%rbp)
	jmp	.LBB8_1334
.LBB8_1339:                             # %for.end.4011
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1340
.LBB8_1340:                             # %if.end.4012
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1341
.LBB8_1341:                             # %do.end.4013
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1361
.LBB8_1342:                             # %if.else.4014
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1343
.LBB8_1343:                             # %do.body.4015
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1348
# BB#1344:                              # %land.lhs.true.4018
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1348
# BB#1345:                              # %if.then.4021
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3608(%rbp)
	movq	-3608(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3608(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1347
# BB#1346:                              # %if.then.4028
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-3608(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1347:                             # %if.end.4029
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3608(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$6, (%rcx)
.LBB8_1348:                             # %if.end.4032
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -3596(%rbp)
.LBB8_1349:                             # %for.cond.4033
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-3596(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_1354
# BB#1350:                              # %for.body.4038
                                        #   in Loop: Header=BB8_1349 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3616(%rbp)
	movq	-3616(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3616(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1352
# BB#1351:                              # %if.then.4045
                                        #   in Loop: Header=BB8_1349 Depth=2
	movl	$1, %esi
	movq	-3616(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1352:                             # %if.end.4046
                                        #   in Loop: Header=BB8_1349 Depth=2
	movb	-73(%rbp), %al
	movq	-3616(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1353:                              # %for.inc.4049
                                        #   in Loop: Header=BB8_1349 Depth=2
	movl	-3596(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3596(%rbp)
	jmp	.LBB8_1349
.LBB8_1354:                             # %for.end.4051
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1356
# BB#1355:                              # %lor.lhs.false.4053
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1359
.LBB8_1356:                             # %if.then.4056
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3624(%rbp)
	movq	-3624(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3624(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1358
# BB#1357:                              # %if.then.4063
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-3624(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1358:                             # %if.end.4064
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3624(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$6, (%rcx)
.LBB8_1359:                             # %if.end.4067
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1360
.LBB8_1360:                             # %do.end.4068
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1361
.LBB8_1361:                             # %if.end.4069
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1363
.LBB8_1362:                             # %sw.default.4070
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.43, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_1363:                             # %sw.epilog.4076
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1364:                             # %sw.bb.4077
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$47, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	strrchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_1366
# BB#1365:                              # %if.then.4082
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB8_1367
.LBB8_1366:                             # %if.else.4084
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB8_1367:                             # %if.end.4086
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$46, %esi
	movq	-48(%rbp), %rdi
	callq	strrchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_1394
# BB#1368:                              # %if.then.4089
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	strncpy
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	%rdx, %rcx
	movb	$0, -592(%rbp,%rcx)
	movq	%rax, -6696(%rbp)       # 8-byte Spill
# BB#1369:                              # %do.body.4099
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3632(%rbp)
	movq	-3632(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1371
# BB#1370:                              # %cond.true.4106
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6704(%rbp)       # 8-byte Spill
	jmp	.LBB8_1372
.LBB8_1371:                             # %cond.false.4107
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3632(%rbp), %rax
	movq	%rax, -6704(%rbp)       # 8-byte Spill
.LBB8_1372:                             # %cond.end.4109
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6704(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3640(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1381
# BB#1373:                              # %land.lhs.true.4112
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1381
# BB#1374:                              # %if.then.4115
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1375
.LBB8_1375:                             # %for.cond.4116
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3640(%rbp)
	je	.LBB8_1380
# BB#1376:                              # %for.body.4118
                                        #   in Loop: Header=BB8_1375 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3648(%rbp)
	movq	-3648(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3648(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1378
# BB#1377:                              # %if.then.4125
                                        #   in Loop: Header=BB8_1375 Depth=2
	movl	$1, %esi
	movq	-3648(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1378:                             # %if.end.4126
                                        #   in Loop: Header=BB8_1375 Depth=2
	movb	-73(%rbp), %al
	movq	-3648(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1379:                              # %for.inc.4129
                                        #   in Loop: Header=BB8_1375 Depth=2
	movq	-3640(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3640(%rbp)
	jmp	.LBB8_1375
.LBB8_1380:                             # %for.end.4131
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1381
.LBB8_1381:                             # %if.end.4132
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3656(%rbp)
	movq	-3632(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3660(%rbp)
	movq	-3656(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3660(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3656(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1383
# BB#1382:                              # %if.then.4142
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3656(%rbp), %rdi
	movl	-3660(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1383:                             # %if.end.4143
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3656(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3660(%rbp), %rdx
	callq	memcpy
	movl	-3660(%rbp), %ecx
	movq	-3656(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1392
# BB#1384:                              # %land.lhs.true.4151
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1392
# BB#1385:                              # %if.then.4154
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1386
.LBB8_1386:                             # %for.cond.4155
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3640(%rbp)
	je	.LBB8_1391
# BB#1387:                              # %for.body.4157
                                        #   in Loop: Header=BB8_1386 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3672(%rbp)
	movq	-3672(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3672(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1389
# BB#1388:                              # %if.then.4164
                                        #   in Loop: Header=BB8_1386 Depth=2
	movl	$1, %esi
	movq	-3672(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1389:                             # %if.end.4165
                                        #   in Loop: Header=BB8_1386 Depth=2
	movb	-73(%rbp), %al
	movq	-3672(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1390:                              # %for.inc.4168
                                        #   in Loop: Header=BB8_1386 Depth=2
	movq	-3640(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3640(%rbp)
	jmp	.LBB8_1386
.LBB8_1391:                             # %for.end.4170
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1392
.LBB8_1392:                             # %if.end.4171
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1393
.LBB8_1393:                             # %do.end.4172
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1420
.LBB8_1394:                             # %if.else.4173
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1395
.LBB8_1395:                             # %do.body.4174
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	%rax, -3680(%rbp)
	movq	-3680(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1397
# BB#1396:                              # %cond.true.4180
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6712(%rbp)       # 8-byte Spill
	jmp	.LBB8_1398
.LBB8_1397:                             # %cond.false.4181
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3680(%rbp), %rax
	movq	%rax, -6712(%rbp)       # 8-byte Spill
.LBB8_1398:                             # %cond.end.4183
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6712(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3688(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1407
# BB#1399:                              # %land.lhs.true.4186
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1407
# BB#1400:                              # %if.then.4189
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1401
.LBB8_1401:                             # %for.cond.4190
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3688(%rbp)
	je	.LBB8_1406
# BB#1402:                              # %for.body.4192
                                        #   in Loop: Header=BB8_1401 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3696(%rbp)
	movq	-3696(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3696(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1404
# BB#1403:                              # %if.then.4199
                                        #   in Loop: Header=BB8_1401 Depth=2
	movl	$1, %esi
	movq	-3696(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1404:                             # %if.end.4200
                                        #   in Loop: Header=BB8_1401 Depth=2
	movb	-73(%rbp), %al
	movq	-3696(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1405:                              # %for.inc.4203
                                        #   in Loop: Header=BB8_1401 Depth=2
	movq	-3688(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3688(%rbp)
	jmp	.LBB8_1401
.LBB8_1406:                             # %for.end.4205
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1407
.LBB8_1407:                             # %if.end.4206
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3704(%rbp)
	movq	-3680(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3708(%rbp)
	movq	-3704(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3708(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3704(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1409
# BB#1408:                              # %if.then.4216
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3704(%rbp), %rdi
	movl	-3708(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1409:                             # %if.end.4217
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3704(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rsi
	movslq	-3708(%rbp), %rdx
	callq	memcpy
	movl	-3708(%rbp), %ecx
	movq	-3704(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1418
# BB#1410:                              # %land.lhs.true.4224
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1418
# BB#1411:                              # %if.then.4227
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1412
.LBB8_1412:                             # %for.cond.4228
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3688(%rbp)
	je	.LBB8_1417
# BB#1413:                              # %for.body.4230
                                        #   in Loop: Header=BB8_1412 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3720(%rbp)
	movq	-3720(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3720(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1415
# BB#1414:                              # %if.then.4237
                                        #   in Loop: Header=BB8_1412 Depth=2
	movl	$1, %esi
	movq	-3720(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1415:                             # %if.end.4238
                                        #   in Loop: Header=BB8_1412 Depth=2
	movb	-73(%rbp), %al
	movq	-3720(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1416:                              # %for.inc.4241
                                        #   in Loop: Header=BB8_1412 Depth=2
	movq	-3688(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3688(%rbp)
	jmp	.LBB8_1412
.LBB8_1417:                             # %for.end.4243
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1418
.LBB8_1418:                             # %if.end.4244
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1419
.LBB8_1419:                             # %do.end.4245
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1420
.LBB8_1420:                             # %if.end.4246
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1421:                             # %sw.bb.4247
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$47, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	strrchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_1423
# BB#1422:                              # %if.then.4252
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB8_1424
.LBB8_1423:                             # %if.else.4254
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB8_1424:                             # %if.end.4256
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1425
.LBB8_1425:                             # %do.body.4257
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	%rax, -3728(%rbp)
	movq	-3728(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1427
# BB#1426:                              # %cond.true.4263
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6720(%rbp)       # 8-byte Spill
	jmp	.LBB8_1428
.LBB8_1427:                             # %cond.false.4264
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3728(%rbp), %rax
	movq	%rax, -6720(%rbp)       # 8-byte Spill
.LBB8_1428:                             # %cond.end.4266
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6720(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3736(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1437
# BB#1429:                              # %land.lhs.true.4269
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1437
# BB#1430:                              # %if.then.4272
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1431
.LBB8_1431:                             # %for.cond.4273
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3736(%rbp)
	je	.LBB8_1436
# BB#1432:                              # %for.body.4275
                                        #   in Loop: Header=BB8_1431 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3744(%rbp)
	movq	-3744(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3744(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1434
# BB#1433:                              # %if.then.4282
                                        #   in Loop: Header=BB8_1431 Depth=2
	movl	$1, %esi
	movq	-3744(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1434:                             # %if.end.4283
                                        #   in Loop: Header=BB8_1431 Depth=2
	movb	-73(%rbp), %al
	movq	-3744(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1435:                              # %for.inc.4286
                                        #   in Loop: Header=BB8_1431 Depth=2
	movq	-3736(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3736(%rbp)
	jmp	.LBB8_1431
.LBB8_1436:                             # %for.end.4288
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1437
.LBB8_1437:                             # %if.end.4289
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3752(%rbp)
	movq	-3728(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3756(%rbp)
	movq	-3752(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3756(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3752(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1439
# BB#1438:                              # %if.then.4299
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3752(%rbp), %rdi
	movl	-3756(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1439:                             # %if.end.4300
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3752(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rsi
	movslq	-3756(%rbp), %rdx
	callq	memcpy
	movl	-3756(%rbp), %ecx
	movq	-3752(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1448
# BB#1440:                              # %land.lhs.true.4307
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1448
# BB#1441:                              # %if.then.4310
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1442
.LBB8_1442:                             # %for.cond.4311
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3736(%rbp)
	je	.LBB8_1447
# BB#1443:                              # %for.body.4313
                                        #   in Loop: Header=BB8_1442 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3768(%rbp)
	movq	-3768(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3768(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1445
# BB#1444:                              # %if.then.4320
                                        #   in Loop: Header=BB8_1442 Depth=2
	movl	$1, %esi
	movq	-3768(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1445:                             # %if.end.4321
                                        #   in Loop: Header=BB8_1442 Depth=2
	movb	-73(%rbp), %al
	movq	-3768(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1446:                              # %for.inc.4324
                                        #   in Loop: Header=BB8_1442 Depth=2
	movq	-3736(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3736(%rbp)
	jmp	.LBB8_1442
.LBB8_1447:                             # %for.end.4326
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1448
.LBB8_1448:                             # %if.end.4327
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1449
.LBB8_1449:                             # %do.end.4328
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1450:                             # %sw.bb.4329
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -6724(%rbp)       # 4-byte Spill
	movl	%esi, -6728(%rbp)       # 4-byte Spill
	je	.LBB8_1605
	jmp	.LBB8_2610
.LBB8_2610:                             # %sw.bb.4329
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6724(%rbp), %eax       # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -6732(%rbp)       # 4-byte Spill
	je	.LBB8_1477
	jmp	.LBB8_2611
.LBB8_2611:                             # %sw.bb.4329
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6724(%rbp), %eax       # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -6736(%rbp)       # 4-byte Spill
	je	.LBB8_1532
	jmp	.LBB8_2612
.LBB8_2612:                             # %sw.bb.4329
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6724(%rbp), %eax       # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -6740(%rbp)       # 4-byte Spill
	je	.LBB8_1506
	jmp	.LBB8_2613
.LBB8_2613:                             # %sw.bb.4329
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6724(%rbp), %eax       # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -6744(%rbp)       # 4-byte Spill
	je	.LBB8_1558
	jmp	.LBB8_2614
.LBB8_2614:                             # %sw.bb.4329
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6724(%rbp), %eax       # 4-byte Reload
	subl	$94, %eax
	movl	%eax, -6748(%rbp)       # 4-byte Spill
	jne	.LBB8_1652
	jmp	.LBB8_1451
.LBB8_1451:                             # %sw.bb.4333
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	132(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6752(%rbp)       # 4-byte Spill
# BB#1452:                              # %do.body.4336
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3776(%rbp)
	movq	-3776(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1454
# BB#1453:                              # %cond.true.4343
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6760(%rbp)       # 8-byte Spill
	jmp	.LBB8_1455
.LBB8_1454:                             # %cond.false.4344
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3776(%rbp), %rax
	movq	%rax, -6760(%rbp)       # 8-byte Spill
.LBB8_1455:                             # %cond.end.4346
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6760(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3784(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1464
# BB#1456:                              # %land.lhs.true.4349
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1464
# BB#1457:                              # %if.then.4352
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1458
.LBB8_1458:                             # %for.cond.4353
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3784(%rbp)
	je	.LBB8_1463
# BB#1459:                              # %for.body.4355
                                        #   in Loop: Header=BB8_1458 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3792(%rbp)
	movq	-3792(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3792(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1461
# BB#1460:                              # %if.then.4362
                                        #   in Loop: Header=BB8_1458 Depth=2
	movl	$1, %esi
	movq	-3792(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1461:                             # %if.end.4363
                                        #   in Loop: Header=BB8_1458 Depth=2
	movb	-73(%rbp), %al
	movq	-3792(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1462:                              # %for.inc.4366
                                        #   in Loop: Header=BB8_1458 Depth=2
	movq	-3784(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3784(%rbp)
	jmp	.LBB8_1458
.LBB8_1463:                             # %for.end.4368
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1464
.LBB8_1464:                             # %if.end.4369
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3800(%rbp)
	movq	-3776(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3804(%rbp)
	movq	-3800(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3804(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3800(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1466
# BB#1465:                              # %if.then.4379
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3800(%rbp), %rdi
	movl	-3804(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1466:                             # %if.end.4380
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3800(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3804(%rbp), %rdx
	callq	memcpy
	movl	-3804(%rbp), %ecx
	movq	-3800(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1475
# BB#1467:                              # %land.lhs.true.4388
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1475
# BB#1468:                              # %if.then.4391
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1469
.LBB8_1469:                             # %for.cond.4392
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3784(%rbp)
	je	.LBB8_1474
# BB#1470:                              # %for.body.4394
                                        #   in Loop: Header=BB8_1469 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3816(%rbp)
	movq	-3816(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3816(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1472
# BB#1471:                              # %if.then.4401
                                        #   in Loop: Header=BB8_1469 Depth=2
	movl	$1, %esi
	movq	-3816(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1472:                             # %if.end.4402
                                        #   in Loop: Header=BB8_1469 Depth=2
	movb	-73(%rbp), %al
	movq	-3816(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1473:                              # %for.inc.4405
                                        #   in Loop: Header=BB8_1469 Depth=2
	movq	-3784(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3784(%rbp)
	jmp	.LBB8_1469
.LBB8_1474:                             # %for.end.4407
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1475
.LBB8_1475:                             # %if.end.4408
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1476
.LBB8_1476:                             # %do.end.4409
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1653
.LBB8_1477:                             # %sw.bb.4410
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movl	132(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	116(%rax), %ecx
	jne	.LBB8_1479
# BB#1478:                              # %if.then.4415
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	132(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6764(%rbp)       # 4-byte Spill
	jmp	.LBB8_1480
.LBB8_1479:                             # %if.else.4419
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.44, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	132(%rax), %edx
	movq	-24(%rbp), %rax
	movl	116(%rax), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6768(%rbp)       # 4-byte Spill
.LBB8_1480:                             # %if.end.4424
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1481
.LBB8_1481:                             # %do.body.4425
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3824(%rbp)
	movq	-3824(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1483
# BB#1482:                              # %cond.true.4432
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6776(%rbp)       # 8-byte Spill
	jmp	.LBB8_1484
.LBB8_1483:                             # %cond.false.4433
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3824(%rbp), %rax
	movq	%rax, -6776(%rbp)       # 8-byte Spill
.LBB8_1484:                             # %cond.end.4435
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6776(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3832(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1493
# BB#1485:                              # %land.lhs.true.4438
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1493
# BB#1486:                              # %if.then.4441
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1487
.LBB8_1487:                             # %for.cond.4442
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3832(%rbp)
	je	.LBB8_1492
# BB#1488:                              # %for.body.4444
                                        #   in Loop: Header=BB8_1487 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3840(%rbp)
	movq	-3840(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3840(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1490
# BB#1489:                              # %if.then.4451
                                        #   in Loop: Header=BB8_1487 Depth=2
	movl	$1, %esi
	movq	-3840(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1490:                             # %if.end.4452
                                        #   in Loop: Header=BB8_1487 Depth=2
	movb	-73(%rbp), %al
	movq	-3840(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1491:                              # %for.inc.4455
                                        #   in Loop: Header=BB8_1487 Depth=2
	movq	-3832(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3832(%rbp)
	jmp	.LBB8_1487
.LBB8_1492:                             # %for.end.4457
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1493
.LBB8_1493:                             # %if.end.4458
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3848(%rbp)
	movq	-3824(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3852(%rbp)
	movq	-3848(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3852(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3848(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1495
# BB#1494:                              # %if.then.4468
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3848(%rbp), %rdi
	movl	-3852(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1495:                             # %if.end.4469
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3848(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3852(%rbp), %rdx
	callq	memcpy
	movl	-3852(%rbp), %ecx
	movq	-3848(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1504
# BB#1496:                              # %land.lhs.true.4477
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1504
# BB#1497:                              # %if.then.4480
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1498
.LBB8_1498:                             # %for.cond.4481
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3832(%rbp)
	je	.LBB8_1503
# BB#1499:                              # %for.body.4483
                                        #   in Loop: Header=BB8_1498 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3864(%rbp)
	movq	-3864(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3864(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1501
# BB#1500:                              # %if.then.4490
                                        #   in Loop: Header=BB8_1498 Depth=2
	movl	$1, %esi
	movq	-3864(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1501:                             # %if.end.4491
                                        #   in Loop: Header=BB8_1498 Depth=2
	movb	-73(%rbp), %al
	movq	-3864(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1502:                              # %for.inc.4494
                                        #   in Loop: Header=BB8_1498 Depth=2
	movq	-3832(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3832(%rbp)
	jmp	.LBB8_1498
.LBB8_1503:                             # %for.end.4496
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1504
.LBB8_1504:                             # %if.end.4497
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1505
.LBB8_1505:                             # %do.end.4498
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1653
.LBB8_1506:                             # %sw.bb.4499
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	108(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6780(%rbp)       # 4-byte Spill
# BB#1507:                              # %do.body.4502
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3872(%rbp)
	movq	-3872(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1509
# BB#1508:                              # %cond.true.4509
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6792(%rbp)       # 8-byte Spill
	jmp	.LBB8_1510
.LBB8_1509:                             # %cond.false.4510
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3872(%rbp), %rax
	movq	%rax, -6792(%rbp)       # 8-byte Spill
.LBB8_1510:                             # %cond.end.4512
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6792(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3880(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1519
# BB#1511:                              # %land.lhs.true.4515
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1519
# BB#1512:                              # %if.then.4518
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1513
.LBB8_1513:                             # %for.cond.4519
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3880(%rbp)
	je	.LBB8_1518
# BB#1514:                              # %for.body.4521
                                        #   in Loop: Header=BB8_1513 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3888(%rbp)
	movq	-3888(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3888(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1516
# BB#1515:                              # %if.then.4528
                                        #   in Loop: Header=BB8_1513 Depth=2
	movl	$1, %esi
	movq	-3888(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1516:                             # %if.end.4529
                                        #   in Loop: Header=BB8_1513 Depth=2
	movb	-73(%rbp), %al
	movq	-3888(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1517:                              # %for.inc.4532
                                        #   in Loop: Header=BB8_1513 Depth=2
	movq	-3880(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3880(%rbp)
	jmp	.LBB8_1513
.LBB8_1518:                             # %for.end.4534
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1519
.LBB8_1519:                             # %if.end.4535
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3896(%rbp)
	movq	-3872(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3900(%rbp)
	movq	-3896(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3900(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3896(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1521
# BB#1520:                              # %if.then.4545
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3896(%rbp), %rdi
	movl	-3900(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1521:                             # %if.end.4546
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3896(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3900(%rbp), %rdx
	callq	memcpy
	movl	-3900(%rbp), %ecx
	movq	-3896(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1530
# BB#1522:                              # %land.lhs.true.4554
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1530
# BB#1523:                              # %if.then.4557
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1524
.LBB8_1524:                             # %for.cond.4558
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3880(%rbp)
	je	.LBB8_1529
# BB#1525:                              # %for.body.4560
                                        #   in Loop: Header=BB8_1524 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3912(%rbp)
	movq	-3912(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3912(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1527
# BB#1526:                              # %if.then.4567
                                        #   in Loop: Header=BB8_1524 Depth=2
	movl	$1, %esi
	movq	-3912(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1527:                             # %if.end.4568
                                        #   in Loop: Header=BB8_1524 Depth=2
	movb	-73(%rbp), %al
	movq	-3912(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1528:                              # %for.inc.4571
                                        #   in Loop: Header=BB8_1524 Depth=2
	movq	-3880(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3880(%rbp)
	jmp	.LBB8_1524
.LBB8_1529:                             # %for.end.4573
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1530
.LBB8_1530:                             # %if.end.4574
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1531
.LBB8_1531:                             # %do.end.4575
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1653
.LBB8_1532:                             # %sw.bb.4576
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	116(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6796(%rbp)       # 4-byte Spill
# BB#1533:                              # %do.body.4580
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3920(%rbp)
	movq	-3920(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1535
# BB#1534:                              # %cond.true.4587
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6808(%rbp)       # 8-byte Spill
	jmp	.LBB8_1536
.LBB8_1535:                             # %cond.false.4588
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3920(%rbp), %rax
	movq	%rax, -6808(%rbp)       # 8-byte Spill
.LBB8_1536:                             # %cond.end.4590
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6808(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3928(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1545
# BB#1537:                              # %land.lhs.true.4593
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1545
# BB#1538:                              # %if.then.4596
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1539
.LBB8_1539:                             # %for.cond.4597
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3928(%rbp)
	je	.LBB8_1544
# BB#1540:                              # %for.body.4599
                                        #   in Loop: Header=BB8_1539 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3936(%rbp)
	movq	-3936(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3936(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1542
# BB#1541:                              # %if.then.4606
                                        #   in Loop: Header=BB8_1539 Depth=2
	movl	$1, %esi
	movq	-3936(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1542:                             # %if.end.4607
                                        #   in Loop: Header=BB8_1539 Depth=2
	movb	-73(%rbp), %al
	movq	-3936(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1543:                              # %for.inc.4610
                                        #   in Loop: Header=BB8_1539 Depth=2
	movq	-3928(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3928(%rbp)
	jmp	.LBB8_1539
.LBB8_1544:                             # %for.end.4612
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1545
.LBB8_1545:                             # %if.end.4613
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3944(%rbp)
	movq	-3920(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3948(%rbp)
	movq	-3944(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3948(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3944(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1547
# BB#1546:                              # %if.then.4623
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3944(%rbp), %rdi
	movl	-3948(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1547:                             # %if.end.4624
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3944(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3948(%rbp), %rdx
	callq	memcpy
	movl	-3948(%rbp), %ecx
	movq	-3944(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1556
# BB#1548:                              # %land.lhs.true.4632
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1556
# BB#1549:                              # %if.then.4635
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1550
.LBB8_1550:                             # %for.cond.4636
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3928(%rbp)
	je	.LBB8_1555
# BB#1551:                              # %for.body.4638
                                        #   in Loop: Header=BB8_1550 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3960(%rbp)
	movq	-3960(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3960(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1553
# BB#1552:                              # %if.then.4645
                                        #   in Loop: Header=BB8_1550 Depth=2
	movl	$1, %esi
	movq	-3960(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1553:                             # %if.end.4646
                                        #   in Loop: Header=BB8_1550 Depth=2
	movb	-73(%rbp), %al
	movq	-3960(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1554:                              # %for.inc.4649
                                        #   in Loop: Header=BB8_1550 Depth=2
	movq	-3928(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3928(%rbp)
	jmp	.LBB8_1550
.LBB8_1555:                             # %for.end.4651
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1556
.LBB8_1556:                             # %if.end.4652
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1557
.LBB8_1557:                             # %do.end.4653
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1653
.LBB8_1558:                             # %sw.bb.4654
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_1585
# BB#1559:                              # %if.then.4663
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	112(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6812(%rbp)       # 4-byte Spill
# BB#1560:                              # %do.body.4666
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -3968(%rbp)
	movq	-3968(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1562
# BB#1561:                              # %cond.true.4673
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6824(%rbp)       # 8-byte Spill
	jmp	.LBB8_1563
.LBB8_1562:                             # %cond.false.4674
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-3968(%rbp), %rax
	movq	%rax, -6824(%rbp)       # 8-byte Spill
.LBB8_1563:                             # %cond.end.4676
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6824(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3976(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1572
# BB#1564:                              # %land.lhs.true.4679
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1572
# BB#1565:                              # %if.then.4682
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1566
.LBB8_1566:                             # %for.cond.4683
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3976(%rbp)
	je	.LBB8_1571
# BB#1567:                              # %for.body.4685
                                        #   in Loop: Header=BB8_1566 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -3984(%rbp)
	movq	-3984(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-3984(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1569
# BB#1568:                              # %if.then.4692
                                        #   in Loop: Header=BB8_1566 Depth=2
	movl	$1, %esi
	movq	-3984(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1569:                             # %if.end.4693
                                        #   in Loop: Header=BB8_1566 Depth=2
	movb	-73(%rbp), %al
	movq	-3984(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1570:                              # %for.inc.4696
                                        #   in Loop: Header=BB8_1566 Depth=2
	movq	-3976(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3976(%rbp)
	jmp	.LBB8_1566
.LBB8_1571:                             # %for.end.4698
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1572
.LBB8_1572:                             # %if.end.4699
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -3992(%rbp)
	movq	-3968(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -3996(%rbp)
	movq	-3992(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-3996(%rbp), %rdx
	addq	%rdx, %rax
	movq	-3992(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1574
# BB#1573:                              # %if.then.4709
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-3992(%rbp), %rdi
	movl	-3996(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1574:                             # %if.end.4710
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-3992(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-3996(%rbp), %rdx
	callq	memcpy
	movl	-3996(%rbp), %ecx
	movq	-3992(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1583
# BB#1575:                              # %land.lhs.true.4718
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1583
# BB#1576:                              # %if.then.4721
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1577
.LBB8_1577:                             # %for.cond.4722
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -3976(%rbp)
	je	.LBB8_1582
# BB#1578:                              # %for.body.4724
                                        #   in Loop: Header=BB8_1577 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4008(%rbp)
	movq	-4008(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4008(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1580
# BB#1579:                              # %if.then.4731
                                        #   in Loop: Header=BB8_1577 Depth=2
	movl	$1, %esi
	movq	-4008(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1580:                             # %if.end.4732
                                        #   in Loop: Header=BB8_1577 Depth=2
	movb	-73(%rbp), %al
	movq	-4008(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1581:                              # %for.inc.4735
                                        #   in Loop: Header=BB8_1577 Depth=2
	movq	-3976(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -3976(%rbp)
	jmp	.LBB8_1577
.LBB8_1582:                             # %for.end.4737
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1583
.LBB8_1583:                             # %if.end.4738
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1584
.LBB8_1584:                             # %do.end.4739
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1604
.LBB8_1585:                             # %if.else.4740
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1586
.LBB8_1586:                             # %do.body.4741
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1591
# BB#1587:                              # %land.lhs.true.4744
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1591
# BB#1588:                              # %if.then.4747
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4024(%rbp)
	movq	-4024(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4024(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1590
# BB#1589:                              # %if.then.4754
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4024(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1590:                             # %if.end.4755
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4024(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$7, (%rcx)
.LBB8_1591:                             # %if.end.4758
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -4012(%rbp)
.LBB8_1592:                             # %for.cond.4759
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4012(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_1597
# BB#1593:                              # %for.body.4764
                                        #   in Loop: Header=BB8_1592 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4032(%rbp)
	movq	-4032(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4032(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1595
# BB#1594:                              # %if.then.4771
                                        #   in Loop: Header=BB8_1592 Depth=2
	movl	$1, %esi
	movq	-4032(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1595:                             # %if.end.4772
                                        #   in Loop: Header=BB8_1592 Depth=2
	movb	-73(%rbp), %al
	movq	-4032(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1596:                              # %for.inc.4775
                                        #   in Loop: Header=BB8_1592 Depth=2
	movl	-4012(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4012(%rbp)
	jmp	.LBB8_1592
.LBB8_1597:                             # %for.end.4777
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1599
# BB#1598:                              # %lor.lhs.false.4779
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1602
.LBB8_1599:                             # %if.then.4782
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4040(%rbp)
	movq	-4040(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4040(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1601
# BB#1600:                              # %if.then.4789
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4040(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1601:                             # %if.end.4790
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4040(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$7, (%rcx)
.LBB8_1602:                             # %if.end.4793
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1603
.LBB8_1603:                             # %do.end.4794
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1604
.LBB8_1604:                             # %if.end.4795
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1653
.LBB8_1605:                             # %sw.bb.4796
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_1632
# BB#1606:                              # %if.then.4805
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	116(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6828(%rbp)       # 4-byte Spill
# BB#1607:                              # %do.body.4809
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4048(%rbp)
	movq	-4048(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1609
# BB#1608:                              # %cond.true.4816
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6840(%rbp)       # 8-byte Spill
	jmp	.LBB8_1610
.LBB8_1609:                             # %cond.false.4817
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4048(%rbp), %rax
	movq	%rax, -6840(%rbp)       # 8-byte Spill
.LBB8_1610:                             # %cond.end.4819
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6840(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4056(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1619
# BB#1611:                              # %land.lhs.true.4822
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1619
# BB#1612:                              # %if.then.4825
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1613
.LBB8_1613:                             # %for.cond.4826
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4056(%rbp)
	je	.LBB8_1618
# BB#1614:                              # %for.body.4828
                                        #   in Loop: Header=BB8_1613 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4064(%rbp)
	movq	-4064(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4064(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1616
# BB#1615:                              # %if.then.4835
                                        #   in Loop: Header=BB8_1613 Depth=2
	movl	$1, %esi
	movq	-4064(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1616:                             # %if.end.4836
                                        #   in Loop: Header=BB8_1613 Depth=2
	movb	-73(%rbp), %al
	movq	-4064(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1617:                              # %for.inc.4839
                                        #   in Loop: Header=BB8_1613 Depth=2
	movq	-4056(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4056(%rbp)
	jmp	.LBB8_1613
.LBB8_1618:                             # %for.end.4841
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1619
.LBB8_1619:                             # %if.end.4842
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4072(%rbp)
	movq	-4048(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4076(%rbp)
	movq	-4072(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4076(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4072(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1621
# BB#1620:                              # %if.then.4852
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4072(%rbp), %rdi
	movl	-4076(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1621:                             # %if.end.4853
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4072(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4076(%rbp), %rdx
	callq	memcpy
	movl	-4076(%rbp), %ecx
	movq	-4072(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1630
# BB#1622:                              # %land.lhs.true.4861
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1630
# BB#1623:                              # %if.then.4864
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1624
.LBB8_1624:                             # %for.cond.4865
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4056(%rbp)
	je	.LBB8_1629
# BB#1625:                              # %for.body.4867
                                        #   in Loop: Header=BB8_1624 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4088(%rbp)
	movq	-4088(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4088(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1627
# BB#1626:                              # %if.then.4874
                                        #   in Loop: Header=BB8_1624 Depth=2
	movl	$1, %esi
	movq	-4088(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1627:                             # %if.end.4875
                                        #   in Loop: Header=BB8_1624 Depth=2
	movb	-73(%rbp), %al
	movq	-4088(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1628:                              # %for.inc.4878
                                        #   in Loop: Header=BB8_1624 Depth=2
	movq	-4056(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4056(%rbp)
	jmp	.LBB8_1624
.LBB8_1629:                             # %for.end.4880
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1630
.LBB8_1630:                             # %if.end.4881
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1631
.LBB8_1631:                             # %do.end.4882
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1651
.LBB8_1632:                             # %if.else.4883
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1633
.LBB8_1633:                             # %do.body.4884
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1638
# BB#1634:                              # %land.lhs.true.4887
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1638
# BB#1635:                              # %if.then.4890
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4104(%rbp)
	movq	-4104(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4104(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1637
# BB#1636:                              # %if.then.4897
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4104(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1637:                             # %if.end.4898
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4104(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$4, (%rcx)
.LBB8_1638:                             # %if.end.4901
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -4092(%rbp)
.LBB8_1639:                             # %for.cond.4902
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4092(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_1644
# BB#1640:                              # %for.body.4907
                                        #   in Loop: Header=BB8_1639 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4112(%rbp)
	movq	-4112(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4112(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1642
# BB#1641:                              # %if.then.4914
                                        #   in Loop: Header=BB8_1639 Depth=2
	movl	$1, %esi
	movq	-4112(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1642:                             # %if.end.4915
                                        #   in Loop: Header=BB8_1639 Depth=2
	movb	-73(%rbp), %al
	movq	-4112(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1643:                              # %for.inc.4918
                                        #   in Loop: Header=BB8_1639 Depth=2
	movl	-4092(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4092(%rbp)
	jmp	.LBB8_1639
.LBB8_1644:                             # %for.end.4920
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1646
# BB#1645:                              # %lor.lhs.false.4922
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1649
.LBB8_1646:                             # %if.then.4925
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4120(%rbp)
	movq	-4120(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4120(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1648
# BB#1647:                              # %if.then.4932
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4120(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1648:                             # %if.end.4933
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4120(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$4, (%rcx)
.LBB8_1649:                             # %if.end.4936
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1650
.LBB8_1650:                             # %do.end.4937
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1651
.LBB8_1651:                             # %if.end.4938
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1653
.LBB8_1652:                             # %sw.default.4939
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.45, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_1653:                             # %sw.epilog.4945
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1654:                             # %sw.bb.4946
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.21, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -6848(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movl	116(%rdi), %edx
	movq	-6848(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6852(%rbp)       # 4-byte Spill
# BB#1655:                              # %do.body.4951
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4128(%rbp)
	movq	-4128(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1657
# BB#1656:                              # %cond.true.4958
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6864(%rbp)       # 8-byte Spill
	jmp	.LBB8_1658
.LBB8_1657:                             # %cond.false.4959
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4128(%rbp), %rax
	movq	%rax, -6864(%rbp)       # 8-byte Spill
.LBB8_1658:                             # %cond.end.4961
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6864(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4136(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1667
# BB#1659:                              # %land.lhs.true.4964
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1667
# BB#1660:                              # %if.then.4967
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1661
.LBB8_1661:                             # %for.cond.4968
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4136(%rbp)
	je	.LBB8_1666
# BB#1662:                              # %for.body.4970
                                        #   in Loop: Header=BB8_1661 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4144(%rbp)
	movq	-4144(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4144(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1664
# BB#1663:                              # %if.then.4977
                                        #   in Loop: Header=BB8_1661 Depth=2
	movl	$1, %esi
	movq	-4144(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1664:                             # %if.end.4978
                                        #   in Loop: Header=BB8_1661 Depth=2
	movb	-73(%rbp), %al
	movq	-4144(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1665:                              # %for.inc.4981
                                        #   in Loop: Header=BB8_1661 Depth=2
	movq	-4136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4136(%rbp)
	jmp	.LBB8_1661
.LBB8_1666:                             # %for.end.4983
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1667
.LBB8_1667:                             # %if.end.4984
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4152(%rbp)
	movq	-4128(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4156(%rbp)
	movq	-4152(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4156(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4152(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1669
# BB#1668:                              # %if.then.4994
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4152(%rbp), %rdi
	movl	-4156(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1669:                             # %if.end.4995
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4152(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4156(%rbp), %rdx
	callq	memcpy
	movl	-4156(%rbp), %ecx
	movq	-4152(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1678
# BB#1670:                              # %land.lhs.true.5003
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1678
# BB#1671:                              # %if.then.5006
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1672
.LBB8_1672:                             # %for.cond.5007
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4136(%rbp)
	je	.LBB8_1677
# BB#1673:                              # %for.body.5009
                                        #   in Loop: Header=BB8_1672 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4168(%rbp)
	movq	-4168(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4168(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1675
# BB#1674:                              # %if.then.5016
                                        #   in Loop: Header=BB8_1672 Depth=2
	movl	$1, %esi
	movq	-4168(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1675:                             # %if.end.5017
                                        #   in Loop: Header=BB8_1672 Depth=2
	movb	-73(%rbp), %al
	movq	-4168(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1676:                              # %for.inc.5020
                                        #   in Loop: Header=BB8_1672 Depth=2
	movq	-4136(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4136(%rbp)
	jmp	.LBB8_1672
.LBB8_1677:                             # %for.end.5022
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1678
.LBB8_1678:                             # %if.end.5023
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1679
.LBB8_1679:                             # %do.end.5024
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1680:                             # %sw.bb.5025
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_1682
# BB#1681:                              # %if.then.5034
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.46, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -6872(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movl	116(%rdi), %edx
	movq	-24(%rbp), %rdi
	movl	116(%rdi), %ecx
	movq	-6872(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6876(%rbp)       # 4-byte Spill
	jmp	.LBB8_1683
.LBB8_1682:                             # %if.else.5040
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.22, %rdi
	leaq	-592(%rbp), %rax
	movq	%rax, -6888(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$4, %ecx
	movq	-24(%rbp), %rdi
	movl	116(%rdi), %edx
	movq	-6888(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6892(%rbp)       # 4-byte Spill
.LBB8_1683:                             # %if.end.5045
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1684
.LBB8_1684:                             # %do.body.5046
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4176(%rbp)
	movq	-4176(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1686
# BB#1685:                              # %cond.true.5053
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6904(%rbp)       # 8-byte Spill
	jmp	.LBB8_1687
.LBB8_1686:                             # %cond.false.5054
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4176(%rbp), %rax
	movq	%rax, -6904(%rbp)       # 8-byte Spill
.LBB8_1687:                             # %cond.end.5056
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6904(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4184(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1696
# BB#1688:                              # %land.lhs.true.5059
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1696
# BB#1689:                              # %if.then.5062
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1690
.LBB8_1690:                             # %for.cond.5063
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4184(%rbp)
	je	.LBB8_1695
# BB#1691:                              # %for.body.5065
                                        #   in Loop: Header=BB8_1690 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4192(%rbp)
	movq	-4192(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4192(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1693
# BB#1692:                              # %if.then.5072
                                        #   in Loop: Header=BB8_1690 Depth=2
	movl	$1, %esi
	movq	-4192(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1693:                             # %if.end.5073
                                        #   in Loop: Header=BB8_1690 Depth=2
	movb	-73(%rbp), %al
	movq	-4192(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1694:                              # %for.inc.5076
                                        #   in Loop: Header=BB8_1690 Depth=2
	movq	-4184(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4184(%rbp)
	jmp	.LBB8_1690
.LBB8_1695:                             # %for.end.5078
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1696
.LBB8_1696:                             # %if.end.5079
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4200(%rbp)
	movq	-4176(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4204(%rbp)
	movq	-4200(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4204(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4200(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1698
# BB#1697:                              # %if.then.5089
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4200(%rbp), %rdi
	movl	-4204(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1698:                             # %if.end.5090
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4200(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4204(%rbp), %rdx
	callq	memcpy
	movl	-4204(%rbp), %ecx
	movq	-4200(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1707
# BB#1699:                              # %land.lhs.true.5098
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1707
# BB#1700:                              # %if.then.5101
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1701
.LBB8_1701:                             # %for.cond.5102
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4184(%rbp)
	je	.LBB8_1706
# BB#1702:                              # %for.body.5104
                                        #   in Loop: Header=BB8_1701 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4216(%rbp)
	movq	-4216(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4216(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1704
# BB#1703:                              # %if.then.5111
                                        #   in Loop: Header=BB8_1701 Depth=2
	movl	$1, %esi
	movq	-4216(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1704:                             # %if.end.5112
                                        #   in Loop: Header=BB8_1701 Depth=2
	movb	-73(%rbp), %al
	movq	-4216(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1705:                              # %for.inc.5115
                                        #   in Loop: Header=BB8_1701 Depth=2
	movq	-4184(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4184(%rbp)
	jmp	.LBB8_1701
.LBB8_1706:                             # %for.end.5117
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1707
.LBB8_1707:                             # %if.end.5118
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1708
.LBB8_1708:                             # %do.end.5119
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1709:                             # %sw.bb.5120
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$35, %esi
	movl	%edx, -6908(%rbp)       # 4-byte Spill
	movl	%esi, -6912(%rbp)       # 4-byte Spill
	je	.LBB8_1809
	jmp	.LBB8_2607
.LBB8_2607:                             # %sw.bb.5120
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6908(%rbp), %eax       # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -6916(%rbp)       # 4-byte Spill
	je	.LBB8_1736
	jmp	.LBB8_2608
.LBB8_2608:                             # %sw.bb.5120
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6908(%rbp), %eax       # 4-byte Reload
	subl	$60, %eax
	movl	%eax, -6920(%rbp)       # 4-byte Spill
	je	.LBB8_1710
	jmp	.LBB8_2609
.LBB8_2609:                             # %sw.bb.5120
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-6908(%rbp), %eax       # 4-byte Reload
	subl	$62, %eax
	movl	%eax, -6924(%rbp)       # 4-byte Spill
	je	.LBB8_1762
	jmp	.LBB8_1856
.LBB8_1710:                             # %sw.bb.5124
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	100(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6928(%rbp)       # 4-byte Spill
# BB#1711:                              # %do.body.5127
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4224(%rbp)
	movq	-4224(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1713
# BB#1712:                              # %cond.true.5134
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6936(%rbp)       # 8-byte Spill
	jmp	.LBB8_1714
.LBB8_1713:                             # %cond.false.5135
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4224(%rbp), %rax
	movq	%rax, -6936(%rbp)       # 8-byte Spill
.LBB8_1714:                             # %cond.end.5137
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6936(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4232(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1723
# BB#1715:                              # %land.lhs.true.5140
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1723
# BB#1716:                              # %if.then.5143
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1717
.LBB8_1717:                             # %for.cond.5144
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4232(%rbp)
	je	.LBB8_1722
# BB#1718:                              # %for.body.5146
                                        #   in Loop: Header=BB8_1717 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4240(%rbp)
	movq	-4240(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4240(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1720
# BB#1719:                              # %if.then.5153
                                        #   in Loop: Header=BB8_1717 Depth=2
	movl	$1, %esi
	movq	-4240(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1720:                             # %if.end.5154
                                        #   in Loop: Header=BB8_1717 Depth=2
	movb	-73(%rbp), %al
	movq	-4240(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1721:                              # %for.inc.5157
                                        #   in Loop: Header=BB8_1717 Depth=2
	movq	-4232(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4232(%rbp)
	jmp	.LBB8_1717
.LBB8_1722:                             # %for.end.5159
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1723
.LBB8_1723:                             # %if.end.5160
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4248(%rbp)
	movq	-4224(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4252(%rbp)
	movq	-4248(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4252(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4248(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1725
# BB#1724:                              # %if.then.5170
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4248(%rbp), %rdi
	movl	-4252(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1725:                             # %if.end.5171
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4248(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4252(%rbp), %rdx
	callq	memcpy
	movl	-4252(%rbp), %ecx
	movq	-4248(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1734
# BB#1726:                              # %land.lhs.true.5179
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1734
# BB#1727:                              # %if.then.5182
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1728
.LBB8_1728:                             # %for.cond.5183
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4232(%rbp)
	je	.LBB8_1733
# BB#1729:                              # %for.body.5185
                                        #   in Loop: Header=BB8_1728 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4264(%rbp)
	movq	-4264(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4264(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1731
# BB#1730:                              # %if.then.5192
                                        #   in Loop: Header=BB8_1728 Depth=2
	movl	$1, %esi
	movq	-4264(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1731:                             # %if.end.5193
                                        #   in Loop: Header=BB8_1728 Depth=2
	movb	-73(%rbp), %al
	movq	-4264(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1732:                              # %for.inc.5196
                                        #   in Loop: Header=BB8_1728 Depth=2
	movq	-4232(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4232(%rbp)
	jmp	.LBB8_1728
.LBB8_1733:                             # %for.end.5198
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1734
.LBB8_1734:                             # %if.end.5199
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1735
.LBB8_1735:                             # %do.end.5200
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1857
.LBB8_1736:                             # %sw.bb.5201
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	120(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6940(%rbp)       # 4-byte Spill
# BB#1737:                              # %do.body.5205
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4272(%rbp)
	movq	-4272(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1739
# BB#1738:                              # %cond.true.5212
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6952(%rbp)       # 8-byte Spill
	jmp	.LBB8_1740
.LBB8_1739:                             # %cond.false.5213
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4272(%rbp), %rax
	movq	%rax, -6952(%rbp)       # 8-byte Spill
.LBB8_1740:                             # %cond.end.5215
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6952(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4280(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1749
# BB#1741:                              # %land.lhs.true.5218
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1749
# BB#1742:                              # %if.then.5221
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1743
.LBB8_1743:                             # %for.cond.5222
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4280(%rbp)
	je	.LBB8_1748
# BB#1744:                              # %for.body.5224
                                        #   in Loop: Header=BB8_1743 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4288(%rbp)
	movq	-4288(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4288(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1746
# BB#1745:                              # %if.then.5231
                                        #   in Loop: Header=BB8_1743 Depth=2
	movl	$1, %esi
	movq	-4288(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1746:                             # %if.end.5232
                                        #   in Loop: Header=BB8_1743 Depth=2
	movb	-73(%rbp), %al
	movq	-4288(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1747:                              # %for.inc.5235
                                        #   in Loop: Header=BB8_1743 Depth=2
	movq	-4280(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4280(%rbp)
	jmp	.LBB8_1743
.LBB8_1748:                             # %for.end.5237
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1749
.LBB8_1749:                             # %if.end.5238
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4296(%rbp)
	movq	-4272(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4300(%rbp)
	movq	-4296(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4300(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4296(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1751
# BB#1750:                              # %if.then.5248
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4296(%rbp), %rdi
	movl	-4300(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1751:                             # %if.end.5249
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4296(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4300(%rbp), %rdx
	callq	memcpy
	movl	-4300(%rbp), %ecx
	movq	-4296(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1760
# BB#1752:                              # %land.lhs.true.5257
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1760
# BB#1753:                              # %if.then.5260
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1754
.LBB8_1754:                             # %for.cond.5261
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4280(%rbp)
	je	.LBB8_1759
# BB#1755:                              # %for.body.5263
                                        #   in Loop: Header=BB8_1754 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4312(%rbp)
	movq	-4312(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4312(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1757
# BB#1756:                              # %if.then.5270
                                        #   in Loop: Header=BB8_1754 Depth=2
	movl	$1, %esi
	movq	-4312(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1757:                             # %if.end.5271
                                        #   in Loop: Header=BB8_1754 Depth=2
	movb	-73(%rbp), %al
	movq	-4312(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1758:                              # %for.inc.5274
                                        #   in Loop: Header=BB8_1754 Depth=2
	movq	-4280(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4280(%rbp)
	jmp	.LBB8_1754
.LBB8_1759:                             # %for.end.5276
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1760
.LBB8_1760:                             # %if.end.5277
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1761
.LBB8_1761:                             # %do.end.5278
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1857
.LBB8_1762:                             # %sw.bb.5279
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_1789
# BB#1763:                              # %if.then.5288
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	104(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6956(%rbp)       # 4-byte Spill
# BB#1764:                              # %do.body.5291
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4320(%rbp)
	movq	-4320(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1766
# BB#1765:                              # %cond.true.5298
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6968(%rbp)       # 8-byte Spill
	jmp	.LBB8_1767
.LBB8_1766:                             # %cond.false.5299
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4320(%rbp), %rax
	movq	%rax, -6968(%rbp)       # 8-byte Spill
.LBB8_1767:                             # %cond.end.5301
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6968(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4328(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1776
# BB#1768:                              # %land.lhs.true.5304
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1776
# BB#1769:                              # %if.then.5307
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1770
.LBB8_1770:                             # %for.cond.5308
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4328(%rbp)
	je	.LBB8_1775
# BB#1771:                              # %for.body.5310
                                        #   in Loop: Header=BB8_1770 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4336(%rbp)
	movq	-4336(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4336(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1773
# BB#1772:                              # %if.then.5317
                                        #   in Loop: Header=BB8_1770 Depth=2
	movl	$1, %esi
	movq	-4336(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1773:                             # %if.end.5318
                                        #   in Loop: Header=BB8_1770 Depth=2
	movb	-73(%rbp), %al
	movq	-4336(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1774:                              # %for.inc.5321
                                        #   in Loop: Header=BB8_1770 Depth=2
	movq	-4328(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4328(%rbp)
	jmp	.LBB8_1770
.LBB8_1775:                             # %for.end.5323
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1776
.LBB8_1776:                             # %if.end.5324
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4344(%rbp)
	movq	-4320(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4348(%rbp)
	movq	-4344(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4348(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4344(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1778
# BB#1777:                              # %if.then.5334
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4344(%rbp), %rdi
	movl	-4348(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1778:                             # %if.end.5335
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4344(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4348(%rbp), %rdx
	callq	memcpy
	movl	-4348(%rbp), %ecx
	movq	-4344(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1787
# BB#1779:                              # %land.lhs.true.5343
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1787
# BB#1780:                              # %if.then.5346
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1781
.LBB8_1781:                             # %for.cond.5347
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4328(%rbp)
	je	.LBB8_1786
# BB#1782:                              # %for.body.5349
                                        #   in Loop: Header=BB8_1781 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4360(%rbp)
	movq	-4360(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4360(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1784
# BB#1783:                              # %if.then.5356
                                        #   in Loop: Header=BB8_1781 Depth=2
	movl	$1, %esi
	movq	-4360(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1784:                             # %if.end.5357
                                        #   in Loop: Header=BB8_1781 Depth=2
	movb	-73(%rbp), %al
	movq	-4360(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1785:                              # %for.inc.5360
                                        #   in Loop: Header=BB8_1781 Depth=2
	movq	-4328(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4328(%rbp)
	jmp	.LBB8_1781
.LBB8_1786:                             # %for.end.5362
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1787
.LBB8_1787:                             # %if.end.5363
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1788
.LBB8_1788:                             # %do.end.5364
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1808
.LBB8_1789:                             # %if.else.5365
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1790
.LBB8_1790:                             # %do.body.5366
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1795
# BB#1791:                              # %land.lhs.true.5369
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1795
# BB#1792:                              # %if.then.5372
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4376(%rbp)
	movq	-4376(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4376(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1794
# BB#1793:                              # %if.then.5379
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4376(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1794:                             # %if.end.5380
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4376(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$8, (%rcx)
.LBB8_1795:                             # %if.end.5383
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -4364(%rbp)
.LBB8_1796:                             # %for.cond.5384
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4364(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_1801
# BB#1797:                              # %for.body.5389
                                        #   in Loop: Header=BB8_1796 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4384(%rbp)
	movq	-4384(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4384(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1799
# BB#1798:                              # %if.then.5396
                                        #   in Loop: Header=BB8_1796 Depth=2
	movl	$1, %esi
	movq	-4384(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1799:                             # %if.end.5397
                                        #   in Loop: Header=BB8_1796 Depth=2
	movb	-73(%rbp), %al
	movq	-4384(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1800:                              # %for.inc.5400
                                        #   in Loop: Header=BB8_1796 Depth=2
	movl	-4364(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4364(%rbp)
	jmp	.LBB8_1796
.LBB8_1801:                             # %for.end.5402
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1803
# BB#1802:                              # %lor.lhs.false.5404
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1806
.LBB8_1803:                             # %if.then.5407
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4392(%rbp)
	movq	-4392(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4392(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1805
# BB#1804:                              # %if.then.5414
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4392(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1805:                             # %if.end.5415
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4392(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$8, (%rcx)
.LBB8_1806:                             # %if.end.5418
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1807
.LBB8_1807:                             # %do.end.5419
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1808
.LBB8_1808:                             # %if.end.5420
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1857
.LBB8_1809:                             # %sw.bb.5421
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	40(%rcx), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	movq	1632(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpq	%rcx, %rax
	je	.LBB8_1836
# BB#1810:                              # %if.then.5430
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	120(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -6972(%rbp)       # 4-byte Spill
# BB#1811:                              # %do.body.5434
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4400(%rbp)
	movq	-4400(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1813
# BB#1812:                              # %cond.true.5441
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -6984(%rbp)       # 8-byte Spill
	jmp	.LBB8_1814
.LBB8_1813:                             # %cond.false.5442
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4400(%rbp), %rax
	movq	%rax, -6984(%rbp)       # 8-byte Spill
.LBB8_1814:                             # %cond.end.5444
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6984(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4408(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1823
# BB#1815:                              # %land.lhs.true.5447
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1823
# BB#1816:                              # %if.then.5450
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1817
.LBB8_1817:                             # %for.cond.5451
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4408(%rbp)
	je	.LBB8_1822
# BB#1818:                              # %for.body.5453
                                        #   in Loop: Header=BB8_1817 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4416(%rbp)
	movq	-4416(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4416(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1820
# BB#1819:                              # %if.then.5460
                                        #   in Loop: Header=BB8_1817 Depth=2
	movl	$1, %esi
	movq	-4416(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1820:                             # %if.end.5461
                                        #   in Loop: Header=BB8_1817 Depth=2
	movb	-73(%rbp), %al
	movq	-4416(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1821:                              # %for.inc.5464
                                        #   in Loop: Header=BB8_1817 Depth=2
	movq	-4408(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4408(%rbp)
	jmp	.LBB8_1817
.LBB8_1822:                             # %for.end.5466
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1823
.LBB8_1823:                             # %if.end.5467
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4424(%rbp)
	movq	-4400(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4428(%rbp)
	movq	-4424(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4428(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4424(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1825
# BB#1824:                              # %if.then.5477
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4424(%rbp), %rdi
	movl	-4428(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1825:                             # %if.end.5478
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4424(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4428(%rbp), %rdx
	callq	memcpy
	movl	-4428(%rbp), %ecx
	movq	-4424(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1834
# BB#1826:                              # %land.lhs.true.5486
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1834
# BB#1827:                              # %if.then.5489
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1828
.LBB8_1828:                             # %for.cond.5490
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4408(%rbp)
	je	.LBB8_1833
# BB#1829:                              # %for.body.5492
                                        #   in Loop: Header=BB8_1828 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4440(%rbp)
	movq	-4440(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4440(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1831
# BB#1830:                              # %if.then.5499
                                        #   in Loop: Header=BB8_1828 Depth=2
	movl	$1, %esi
	movq	-4440(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1831:                             # %if.end.5500
                                        #   in Loop: Header=BB8_1828 Depth=2
	movb	-73(%rbp), %al
	movq	-4440(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1832:                              # %for.inc.5503
                                        #   in Loop: Header=BB8_1828 Depth=2
	movq	-4408(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4408(%rbp)
	jmp	.LBB8_1828
.LBB8_1833:                             # %for.end.5505
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1834
.LBB8_1834:                             # %if.end.5506
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1835
.LBB8_1835:                             # %do.end.5507
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1855
.LBB8_1836:                             # %if.else.5508
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1837
.LBB8_1837:                             # %do.body.5509
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1842
# BB#1838:                              # %land.lhs.true.5512
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1842
# BB#1839:                              # %if.then.5515
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4456(%rbp)
	movq	-4456(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4456(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1841
# BB#1840:                              # %if.then.5522
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4456(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1841:                             # %if.end.5523
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4456(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$5, (%rcx)
.LBB8_1842:                             # %if.end.5526
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -4444(%rbp)
.LBB8_1843:                             # %for.cond.5527
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4444(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_1848
# BB#1844:                              # %for.body.5532
                                        #   in Loop: Header=BB8_1843 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4464(%rbp)
	movq	-4464(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4464(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1846
# BB#1845:                              # %if.then.5539
                                        #   in Loop: Header=BB8_1843 Depth=2
	movl	$1, %esi
	movq	-4464(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1846:                             # %if.end.5540
                                        #   in Loop: Header=BB8_1843 Depth=2
	movb	-73(%rbp), %al
	movq	-4464(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1847:                              # %for.inc.5543
                                        #   in Loop: Header=BB8_1843 Depth=2
	movl	-4444(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4444(%rbp)
	jmp	.LBB8_1843
.LBB8_1848:                             # %for.end.5545
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1850
# BB#1849:                              # %lor.lhs.false.5547
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1853
.LBB8_1850:                             # %if.then.5550
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4472(%rbp)
	movq	-4472(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4472(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1852
# BB#1851:                              # %if.then.5557
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4472(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1852:                             # %if.end.5558
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4472(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$5, (%rcx)
.LBB8_1853:                             # %if.end.5561
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1854
.LBB8_1854:                             # %do.end.5562
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1855
.LBB8_1855:                             # %if.end.5563
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1857
.LBB8_1856:                             # %sw.default.5564
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.47, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_1857:                             # %sw.epilog.5570
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1858:                             # %sw.bb.5571
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	1(%rax,%rcx), %edx
	addl	$-49, %edx
	movl	%edx, %eax
	subl	$3, %edx
	movq	%rax, -6992(%rbp)       # 8-byte Spill
	movl	%edx, -6996(%rbp)       # 4-byte Spill
	ja	.LBB8_1963
# BB#2606:                              # %sw.bb.5571
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-6992(%rbp), %rax       # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1859:                             # %sw.bb.5575
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
# BB#1860:                              # %do.body.5577
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$496, %rax              # imm = 0x1F0
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -4480(%rbp)
	movq	-4480(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1862
# BB#1861:                              # %cond.true.5584
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7008(%rbp)       # 8-byte Spill
	jmp	.LBB8_1863
.LBB8_1862:                             # %cond.false.5585
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4480(%rbp), %rax
	movq	%rax, -7008(%rbp)       # 8-byte Spill
.LBB8_1863:                             # %cond.end.5587
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7008(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4488(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1872
# BB#1864:                              # %land.lhs.true.5590
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1872
# BB#1865:                              # %if.then.5593
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1866
.LBB8_1866:                             # %for.cond.5594
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4488(%rbp)
	je	.LBB8_1871
# BB#1867:                              # %for.body.5596
                                        #   in Loop: Header=BB8_1866 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4496(%rbp)
	movq	-4496(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4496(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1869
# BB#1868:                              # %if.then.5603
                                        #   in Loop: Header=BB8_1866 Depth=2
	movl	$1, %esi
	movq	-4496(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1869:                             # %if.end.5604
                                        #   in Loop: Header=BB8_1866 Depth=2
	movb	-73(%rbp), %al
	movq	-4496(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1870:                              # %for.inc.5607
                                        #   in Loop: Header=BB8_1866 Depth=2
	movq	-4488(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4488(%rbp)
	jmp	.LBB8_1866
.LBB8_1871:                             # %for.end.5609
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1872
.LBB8_1872:                             # %if.end.5610
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4504(%rbp)
	movq	-4480(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4508(%rbp)
	movq	-4504(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4508(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4504(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1874
# BB#1873:                              # %if.then.5620
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4504(%rbp), %rdi
	movl	-4508(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1874:                             # %if.end.5621
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4504(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$496, %rax              # imm = 0x1F0
	movslq	-4508(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-4508(%rbp), %ecx
	movq	-4504(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1883
# BB#1875:                              # %land.lhs.true.5630
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1883
# BB#1876:                              # %if.then.5633
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1877
.LBB8_1877:                             # %for.cond.5634
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4488(%rbp)
	je	.LBB8_1882
# BB#1878:                              # %for.body.5636
                                        #   in Loop: Header=BB8_1877 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4520(%rbp)
	movq	-4520(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4520(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1880
# BB#1879:                              # %if.then.5643
                                        #   in Loop: Header=BB8_1877 Depth=2
	movl	$1, %esi
	movq	-4520(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1880:                             # %if.end.5644
                                        #   in Loop: Header=BB8_1877 Depth=2
	movb	-73(%rbp), %al
	movq	-4520(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1881:                              # %for.inc.5647
                                        #   in Loop: Header=BB8_1877 Depth=2
	movq	-4488(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4488(%rbp)
	jmp	.LBB8_1877
.LBB8_1882:                             # %for.end.5649
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1883
.LBB8_1883:                             # %if.end.5650
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1884
.LBB8_1884:                             # %do.end.5651
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1992
.LBB8_1885:                             # %sw.bb.5652
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
# BB#1886:                              # %do.body.5654
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$752, %rax              # imm = 0x2F0
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -4528(%rbp)
	movq	-4528(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1888
# BB#1887:                              # %cond.true.5661
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7016(%rbp)       # 8-byte Spill
	jmp	.LBB8_1889
.LBB8_1888:                             # %cond.false.5662
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4528(%rbp), %rax
	movq	%rax, -7016(%rbp)       # 8-byte Spill
.LBB8_1889:                             # %cond.end.5664
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7016(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4536(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1898
# BB#1890:                              # %land.lhs.true.5667
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1898
# BB#1891:                              # %if.then.5670
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1892
.LBB8_1892:                             # %for.cond.5671
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4536(%rbp)
	je	.LBB8_1897
# BB#1893:                              # %for.body.5673
                                        #   in Loop: Header=BB8_1892 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4544(%rbp)
	movq	-4544(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4544(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1895
# BB#1894:                              # %if.then.5680
                                        #   in Loop: Header=BB8_1892 Depth=2
	movl	$1, %esi
	movq	-4544(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1895:                             # %if.end.5681
                                        #   in Loop: Header=BB8_1892 Depth=2
	movb	-73(%rbp), %al
	movq	-4544(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1896:                              # %for.inc.5684
                                        #   in Loop: Header=BB8_1892 Depth=2
	movq	-4536(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4536(%rbp)
	jmp	.LBB8_1892
.LBB8_1897:                             # %for.end.5686
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1898
.LBB8_1898:                             # %if.end.5687
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4552(%rbp)
	movq	-4528(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4556(%rbp)
	movq	-4552(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4556(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4552(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1900
# BB#1899:                              # %if.then.5697
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4552(%rbp), %rdi
	movl	-4556(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1900:                             # %if.end.5698
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4552(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$752, %rax              # imm = 0x2F0
	movslq	-4556(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-4556(%rbp), %ecx
	movq	-4552(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1909
# BB#1901:                              # %land.lhs.true.5707
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1909
# BB#1902:                              # %if.then.5710
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1903
.LBB8_1903:                             # %for.cond.5711
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4536(%rbp)
	je	.LBB8_1908
# BB#1904:                              # %for.body.5713
                                        #   in Loop: Header=BB8_1903 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4568(%rbp)
	movq	-4568(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4568(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1906
# BB#1905:                              # %if.then.5720
                                        #   in Loop: Header=BB8_1903 Depth=2
	movl	$1, %esi
	movq	-4568(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1906:                             # %if.end.5721
                                        #   in Loop: Header=BB8_1903 Depth=2
	movb	-73(%rbp), %al
	movq	-4568(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1907:                              # %for.inc.5724
                                        #   in Loop: Header=BB8_1903 Depth=2
	movq	-4536(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4536(%rbp)
	jmp	.LBB8_1903
.LBB8_1908:                             # %for.end.5726
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1909
.LBB8_1909:                             # %if.end.5727
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1910
.LBB8_1910:                             # %do.end.5728
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1992
.LBB8_1911:                             # %sw.bb.5729
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
# BB#1912:                              # %do.body.5731
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1008, %rax             # imm = 0x3F0
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -4576(%rbp)
	movq	-4576(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1914
# BB#1913:                              # %cond.true.5738
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7024(%rbp)       # 8-byte Spill
	jmp	.LBB8_1915
.LBB8_1914:                             # %cond.false.5739
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4576(%rbp), %rax
	movq	%rax, -7024(%rbp)       # 8-byte Spill
.LBB8_1915:                             # %cond.end.5741
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7024(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4584(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1924
# BB#1916:                              # %land.lhs.true.5744
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1924
# BB#1917:                              # %if.then.5747
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1918
.LBB8_1918:                             # %for.cond.5748
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4584(%rbp)
	je	.LBB8_1923
# BB#1919:                              # %for.body.5750
                                        #   in Loop: Header=BB8_1918 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4592(%rbp)
	movq	-4592(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4592(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1921
# BB#1920:                              # %if.then.5757
                                        #   in Loop: Header=BB8_1918 Depth=2
	movl	$1, %esi
	movq	-4592(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1921:                             # %if.end.5758
                                        #   in Loop: Header=BB8_1918 Depth=2
	movb	-73(%rbp), %al
	movq	-4592(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1922:                              # %for.inc.5761
                                        #   in Loop: Header=BB8_1918 Depth=2
	movq	-4584(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4584(%rbp)
	jmp	.LBB8_1918
.LBB8_1923:                             # %for.end.5763
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1924
.LBB8_1924:                             # %if.end.5764
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4600(%rbp)
	movq	-4576(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4604(%rbp)
	movq	-4600(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4604(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4600(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1926
# BB#1925:                              # %if.then.5774
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4600(%rbp), %rdi
	movl	-4604(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1926:                             # %if.end.5775
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4600(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$1008, %rax             # imm = 0x3F0
	movslq	-4604(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-4604(%rbp), %ecx
	movq	-4600(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1935
# BB#1927:                              # %land.lhs.true.5784
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1935
# BB#1928:                              # %if.then.5787
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1929
.LBB8_1929:                             # %for.cond.5788
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4584(%rbp)
	je	.LBB8_1934
# BB#1930:                              # %for.body.5790
                                        #   in Loop: Header=BB8_1929 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4616(%rbp)
	movq	-4616(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4616(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1932
# BB#1931:                              # %if.then.5797
                                        #   in Loop: Header=BB8_1929 Depth=2
	movl	$1, %esi
	movq	-4616(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1932:                             # %if.end.5798
                                        #   in Loop: Header=BB8_1929 Depth=2
	movb	-73(%rbp), %al
	movq	-4616(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1933:                              # %for.inc.5801
                                        #   in Loop: Header=BB8_1929 Depth=2
	movq	-4584(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4584(%rbp)
	jmp	.LBB8_1929
.LBB8_1934:                             # %for.end.5803
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1935
.LBB8_1935:                             # %if.end.5804
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1936
.LBB8_1936:                             # %do.end.5805
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1992
.LBB8_1937:                             # %sw.bb.5806
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
# BB#1938:                              # %do.body.5808
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1264, %rax             # imm = 0x4F0
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -4624(%rbp)
	movq	-4624(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1940
# BB#1939:                              # %cond.true.5815
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7032(%rbp)       # 8-byte Spill
	jmp	.LBB8_1941
.LBB8_1940:                             # %cond.false.5816
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4624(%rbp), %rax
	movq	%rax, -7032(%rbp)       # 8-byte Spill
.LBB8_1941:                             # %cond.end.5818
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7032(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4632(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1950
# BB#1942:                              # %land.lhs.true.5821
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1950
# BB#1943:                              # %if.then.5824
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1944
.LBB8_1944:                             # %for.cond.5825
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4632(%rbp)
	je	.LBB8_1949
# BB#1945:                              # %for.body.5827
                                        #   in Loop: Header=BB8_1944 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4640(%rbp)
	movq	-4640(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4640(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1947
# BB#1946:                              # %if.then.5834
                                        #   in Loop: Header=BB8_1944 Depth=2
	movl	$1, %esi
	movq	-4640(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1947:                             # %if.end.5835
                                        #   in Loop: Header=BB8_1944 Depth=2
	movb	-73(%rbp), %al
	movq	-4640(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1948:                              # %for.inc.5838
                                        #   in Loop: Header=BB8_1944 Depth=2
	movq	-4632(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4632(%rbp)
	jmp	.LBB8_1944
.LBB8_1949:                             # %for.end.5840
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1950
.LBB8_1950:                             # %if.end.5841
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4648(%rbp)
	movq	-4624(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4652(%rbp)
	movq	-4648(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4652(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4648(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1952
# BB#1951:                              # %if.then.5851
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4648(%rbp), %rdi
	movl	-4652(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1952:                             # %if.end.5852
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4648(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$1264, %rax             # imm = 0x4F0
	movslq	-4652(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-4652(%rbp), %ecx
	movq	-4648(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1961
# BB#1953:                              # %land.lhs.true.5861
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1961
# BB#1954:                              # %if.then.5864
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1955
.LBB8_1955:                             # %for.cond.5865
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4632(%rbp)
	je	.LBB8_1960
# BB#1956:                              # %for.body.5867
                                        #   in Loop: Header=BB8_1955 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4664(%rbp)
	movq	-4664(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4664(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1958
# BB#1957:                              # %if.then.5874
                                        #   in Loop: Header=BB8_1955 Depth=2
	movl	$1, %esi
	movq	-4664(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1958:                             # %if.end.5875
                                        #   in Loop: Header=BB8_1955 Depth=2
	movb	-73(%rbp), %al
	movq	-4664(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1959:                              # %for.inc.5878
                                        #   in Loop: Header=BB8_1955 Depth=2
	movq	-4632(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4632(%rbp)
	jmp	.LBB8_1955
.LBB8_1960:                             # %for.end.5880
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1961
.LBB8_1961:                             # %if.end.5881
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1962
.LBB8_1962:                             # %do.end.5882
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1992
.LBB8_1963:                             # %sw.default.5883
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	cmpl	$12, 48(%rax)
	movq	%rdi, -7040(%rbp)       # 8-byte Spill
	jle	.LBB8_1965
# BB#1964:                              # %cond.true.5889
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	subl	$12, %ecx
	movl	%ecx, -7044(%rbp)       # 4-byte Spill
	jmp	.LBB8_1966
.LBB8_1965:                             # %cond.false.5893
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -7044(%rbp)       # 4-byte Spill
.LBB8_1966:                             # %cond.end.5896
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7044(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str.24, %rsi
	movabsq	$.L.str.26, %rcx
	movabsq	$.L.str.25, %rdx
	movq	-24(%rbp), %rdi
	movl	44(%rdi), %r8d
	movq	-24(%rbp), %rdi
	cmpl	$12, 48(%rdi)
	cmovgq	%rdx, %rcx
	movq	-7040(%rbp), %rdi       # 8-byte Reload
	movl	%eax, %edx
	movq	%rcx, -7056(%rbp)       # 8-byte Spill
	movl	%r8d, %ecx
	movq	-7056(%rbp), %r8        # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -7060(%rbp)       # 4-byte Spill
# BB#1967:                              # %do.body.5906
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4672(%rbp)
	movq	-4672(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1969
# BB#1968:                              # %cond.true.5913
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7072(%rbp)       # 8-byte Spill
	jmp	.LBB8_1970
.LBB8_1969:                             # %cond.false.5914
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4672(%rbp), %rax
	movq	%rax, -7072(%rbp)       # 8-byte Spill
.LBB8_1970:                             # %cond.end.5916
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7072(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4680(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1979
# BB#1971:                              # %land.lhs.true.5919
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_1979
# BB#1972:                              # %if.then.5922
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1973
.LBB8_1973:                             # %for.cond.5923
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4680(%rbp)
	je	.LBB8_1978
# BB#1974:                              # %for.body.5925
                                        #   in Loop: Header=BB8_1973 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4688(%rbp)
	movq	-4688(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4688(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1976
# BB#1975:                              # %if.then.5932
                                        #   in Loop: Header=BB8_1973 Depth=2
	movl	$1, %esi
	movq	-4688(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1976:                             # %if.end.5933
                                        #   in Loop: Header=BB8_1973 Depth=2
	movb	-73(%rbp), %al
	movq	-4688(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1977:                              # %for.inc.5936
                                        #   in Loop: Header=BB8_1973 Depth=2
	movq	-4680(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4680(%rbp)
	jmp	.LBB8_1973
.LBB8_1978:                             # %for.end.5938
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1979
.LBB8_1979:                             # %if.end.5939
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4696(%rbp)
	movq	-4672(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4700(%rbp)
	movq	-4696(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4700(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4696(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_1981
# BB#1980:                              # %if.then.5949
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4696(%rbp), %rdi
	movl	-4700(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_1981:                             # %if.end.5950
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4696(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4700(%rbp), %rdx
	callq	memcpy
	movl	-4700(%rbp), %ecx
	movq	-4696(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_1990
# BB#1982:                              # %land.lhs.true.5958
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_1990
# BB#1983:                              # %if.then.5961
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1984
.LBB8_1984:                             # %for.cond.5962
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4680(%rbp)
	je	.LBB8_1989
# BB#1985:                              # %for.body.5964
                                        #   in Loop: Header=BB8_1984 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4712(%rbp)
	movq	-4712(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4712(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_1987
# BB#1986:                              # %if.then.5971
                                        #   in Loop: Header=BB8_1984 Depth=2
	movl	$1, %esi
	movq	-4712(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_1987:                             # %if.end.5972
                                        #   in Loop: Header=BB8_1984 Depth=2
	movb	-73(%rbp), %al
	movq	-4712(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#1988:                              # %for.inc.5975
                                        #   in Loop: Header=BB8_1984 Depth=2
	movq	-4680(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4680(%rbp)
	jmp	.LBB8_1984
.LBB8_1989:                             # %for.end.5977
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1990
.LBB8_1990:                             # %if.end.5978
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1991
.LBB8_1991:                             # %do.end.5979
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1992
.LBB8_1992:                             # %sw.epilog.5980
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_1993:                             # %sw.bb.5981
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.27, %rsi
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movl	44(%rax), %ecx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -7076(%rbp)       # 4-byte Spill
# BB#1994:                              # %do.body.5988
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4720(%rbp)
	movq	-4720(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_1996
# BB#1995:                              # %cond.true.5995
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7088(%rbp)       # 8-byte Spill
	jmp	.LBB8_1997
.LBB8_1996:                             # %cond.false.5996
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4720(%rbp), %rax
	movq	%rax, -7088(%rbp)       # 8-byte Spill
.LBB8_1997:                             # %cond.end.5998
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7088(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4728(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2006
# BB#1998:                              # %land.lhs.true.6001
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2006
# BB#1999:                              # %if.then.6004
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2000
.LBB8_2000:                             # %for.cond.6005
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4728(%rbp)
	je	.LBB8_2005
# BB#2001:                              # %for.body.6007
                                        #   in Loop: Header=BB8_2000 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4736(%rbp)
	movq	-4736(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4736(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2003
# BB#2002:                              # %if.then.6014
                                        #   in Loop: Header=BB8_2000 Depth=2
	movl	$1, %esi
	movq	-4736(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2003:                             # %if.end.6015
                                        #   in Loop: Header=BB8_2000 Depth=2
	movb	-73(%rbp), %al
	movq	-4736(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2004:                              # %for.inc.6018
                                        #   in Loop: Header=BB8_2000 Depth=2
	movq	-4728(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4728(%rbp)
	jmp	.LBB8_2000
.LBB8_2005:                             # %for.end.6020
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2006
.LBB8_2006:                             # %if.end.6021
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4744(%rbp)
	movq	-4720(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4748(%rbp)
	movq	-4744(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4748(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4744(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2008
# BB#2007:                              # %if.then.6031
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4744(%rbp), %rdi
	movl	-4748(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2008:                             # %if.end.6032
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4744(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4748(%rbp), %rdx
	callq	memcpy
	movl	-4748(%rbp), %ecx
	movq	-4744(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2017
# BB#2009:                              # %land.lhs.true.6040
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2017
# BB#2010:                              # %if.then.6043
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2011
.LBB8_2011:                             # %for.cond.6044
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4728(%rbp)
	je	.LBB8_2016
# BB#2012:                              # %for.body.6046
                                        #   in Loop: Header=BB8_2011 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4760(%rbp)
	movq	-4760(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4760(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2014
# BB#2013:                              # %if.then.6053
                                        #   in Loop: Header=BB8_2011 Depth=2
	movl	$1, %esi
	movq	-4760(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2014:                             # %if.end.6054
                                        #   in Loop: Header=BB8_2011 Depth=2
	movb	-73(%rbp), %al
	movq	-4760(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2015:                              # %for.inc.6057
                                        #   in Loop: Header=BB8_2011 Depth=2
	movq	-4728(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4728(%rbp)
	jmp	.LBB8_2011
.LBB8_2016:                             # %for.end.6059
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2017
.LBB8_2017:                             # %if.end.6060
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2018
.LBB8_2018:                             # %do.end.6061
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_2019:                             # %sw.bb.6062
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.31, %rsi
	movl	$100, %eax
	leaq	-592(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	56(%rcx), %edx
	addl	$1, %edx
	movq	-24(%rbp), %rcx
	movl	52(%rcx), %ecx
	movq	-24(%rbp), %r8
	movl	60(%r8), %r9d
	movl	%eax, -7092(%rbp)       # 4-byte Spill
	movl	%r9d, %eax
	movl	%edx, -7096(%rbp)       # 4-byte Spill
	cltd
	movl	-7092(%rbp), %r9d       # 4-byte Reload
	idivl	%r9d
	movl	-7096(%rbp), %r10d      # 4-byte Reload
	movl	%edx, -7100(%rbp)       # 4-byte Spill
	movl	%r10d, %edx
	movl	-7100(%rbp), %r8d       # 4-byte Reload
	movb	$0, %al
	callq	sprintf
	movl	%eax, -7104(%rbp)       # 4-byte Spill
# BB#2020:                              # %do.body.6073
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -4768(%rbp)
	movq	-4768(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2022
# BB#2021:                              # %cond.true.6080
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7112(%rbp)       # 8-byte Spill
	jmp	.LBB8_2023
.LBB8_2022:                             # %cond.false.6081
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4768(%rbp), %rax
	movq	%rax, -7112(%rbp)       # 8-byte Spill
.LBB8_2023:                             # %cond.end.6083
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7112(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4776(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2032
# BB#2024:                              # %land.lhs.true.6086
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2032
# BB#2025:                              # %if.then.6089
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2026
.LBB8_2026:                             # %for.cond.6090
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4776(%rbp)
	je	.LBB8_2031
# BB#2027:                              # %for.body.6092
                                        #   in Loop: Header=BB8_2026 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4784(%rbp)
	movq	-4784(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4784(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2029
# BB#2028:                              # %if.then.6099
                                        #   in Loop: Header=BB8_2026 Depth=2
	movl	$1, %esi
	movq	-4784(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2029:                             # %if.end.6100
                                        #   in Loop: Header=BB8_2026 Depth=2
	movb	-73(%rbp), %al
	movq	-4784(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2030:                              # %for.inc.6103
                                        #   in Loop: Header=BB8_2026 Depth=2
	movq	-4776(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4776(%rbp)
	jmp	.LBB8_2026
.LBB8_2031:                             # %for.end.6105
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2032
.LBB8_2032:                             # %if.end.6106
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4792(%rbp)
	movq	-4768(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4796(%rbp)
	movq	-4792(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4796(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4792(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2034
# BB#2033:                              # %if.then.6116
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4792(%rbp), %rdi
	movl	-4796(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2034:                             # %if.end.6117
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-4792(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4796(%rbp), %rdx
	callq	memcpy
	movl	-4796(%rbp), %ecx
	movq	-4792(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2043
# BB#2035:                              # %land.lhs.true.6125
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2043
# BB#2036:                              # %if.then.6128
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2037
.LBB8_2037:                             # %for.cond.6129
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4776(%rbp)
	je	.LBB8_2042
# BB#2038:                              # %for.body.6131
                                        #   in Loop: Header=BB8_2037 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4808(%rbp)
	movq	-4808(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4808(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2040
# BB#2039:                              # %if.then.6138
                                        #   in Loop: Header=BB8_2037 Depth=2
	movl	$1, %esi
	movq	-4808(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2040:                             # %if.end.6139
                                        #   in Loop: Header=BB8_2037 Depth=2
	movb	-73(%rbp), %al
	movq	-4808(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2041:                              # %for.inc.6142
                                        #   in Loop: Header=BB8_2037 Depth=2
	movq	-4776(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4776(%rbp)
	jmp	.LBB8_2037
.LBB8_2042:                             # %for.end.6144
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2043
.LBB8_2043:                             # %if.end.6145
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2044
.LBB8_2044:                             # %do.end.6146
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2046
.LBB8_2045:                             # %sw.default.6147
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.48, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2046:                             # %sw.epilog.6153
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2529
.LBB8_2047:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %esi
	subl	$33, %esi
	movl	%edx, -7116(%rbp)       # 4-byte Spill
	movl	%esi, -7120(%rbp)       # 4-byte Spill
	je	.LBB8_2224
	jmp	.LBB8_2555
.LBB8_2555:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$35, %eax
	movl	%eax, -7124(%rbp)       # 4-byte Spill
	je	.LBB8_2048
	jmp	.LBB8_2556
.LBB8_2556:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -7128(%rbp)       # 4-byte Spill
	je	.LBB8_2067
	jmp	.LBB8_2557
.LBB8_2557:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$46, %eax
	movl	%eax, -7132(%rbp)       # 4-byte Spill
	je	.LBB8_2161
	jmp	.LBB8_2558
.LBB8_2558:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -7136(%rbp)       # 4-byte Spill
	je	.LBB8_2187
	jmp	.LBB8_2559
.LBB8_2559:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$79, %eax
	movl	%eax, -7140(%rbp)       # 4-byte Spill
	je	.LBB8_2420
	jmp	.LBB8_2560
.LBB8_2560:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -7144(%rbp)       # 4-byte Spill
	je	.LBB8_2334
	jmp	.LBB8_2561
.LBB8_2561:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$104, %eax
	movl	%eax, -7148(%rbp)       # 4-byte Spill
	je	.LBB8_2368
	jmp	.LBB8_2562
.LBB8_2562:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$111, %eax
	movl	%eax, -7152(%rbp)       # 4-byte Spill
	je	.LBB8_2394
	jmp	.LBB8_2563
.LBB8_2563:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -7156(%rbp)       # 4-byte Spill
	je	.LBB8_2449
	jmp	.LBB8_2564
.LBB8_2564:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -7160(%rbp)       # 4-byte Spill
	je	.LBB8_2475
	jmp	.LBB8_2565
.LBB8_2565:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -7164(%rbp)       # 4-byte Spill
	je	.LBB8_2501
	jmp	.LBB8_2566
.LBB8_2566:                             # %sw.bb.6154
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7116(%rbp), %eax       # 4-byte Reload
	subl	$123, %eax
	movl	%eax, -7168(%rbp)       # 4-byte Spill
	je	.LBB8_2081
	jmp	.LBB8_2527
.LBB8_2048:                             # %sw.bb.6157
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2049
.LBB8_2049:                             # %do.body.6158
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2054
# BB#2050:                              # %land.lhs.true.6161
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2054
# BB#2051:                              # %if.then.6164
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4824(%rbp)
	movq	-4824(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4824(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2053
# BB#2052:                              # %if.then.6171
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4824(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2053:                             # %if.end.6172
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4824(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$35, (%rcx)
.LBB8_2054:                             # %if.end.6175
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -4812(%rbp)
.LBB8_2055:                             # %for.cond.6176
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4812(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_2060
# BB#2056:                              # %for.body.6181
                                        #   in Loop: Header=BB8_2055 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4832(%rbp)
	movq	-4832(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4832(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2058
# BB#2057:                              # %if.then.6188
                                        #   in Loop: Header=BB8_2055 Depth=2
	movl	$1, %esi
	movq	-4832(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2058:                             # %if.end.6189
                                        #   in Loop: Header=BB8_2055 Depth=2
	movb	-73(%rbp), %al
	movq	-4832(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2059:                              # %for.inc.6192
                                        #   in Loop: Header=BB8_2055 Depth=2
	movl	-4812(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4812(%rbp)
	jmp	.LBB8_2055
.LBB8_2060:                             # %for.end.6194
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2062
# BB#2061:                              # %lor.lhs.false.6196
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2065
.LBB8_2062:                             # %if.then.6199
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4840(%rbp)
	movq	-4840(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4840(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2064
# BB#2063:                              # %if.then.6206
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-4840(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2064:                             # %if.end.6207
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4840(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	$35, (%rcx)
.LBB8_2065:                             # %if.end.6210
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2066
.LBB8_2066:                             # %do.end.6211
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2067:                             # %sw.bb.6212
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB8_2068:                             # %for.cond.6214
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -7169(%rbp)        # 1-byte Spill
	je	.LBB8_2071
# BB#2069:                              # %land.lhs.true.6218
                                        #   in Loop: Header=BB8_2068 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$41, %eax
	movb	%cl, -7169(%rbp)        # 1-byte Spill
	je	.LBB8_2071
# BB#2070:                              # %land.rhs.6223
                                        #   in Loop: Header=BB8_2068 Depth=2
	cmpq	$511, -72(%rbp)         # imm = 0x1FF
	setb	%al
	movb	%al, -7169(%rbp)        # 1-byte Spill
.LBB8_2071:                             # %land.end.6226
                                        #   in Loop: Header=BB8_2068 Depth=2
	movb	-7169(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_2072
	jmp	.LBB8_2074
.LBB8_2072:                             # %for.body.6227
                                        #   in Loop: Header=BB8_2068 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, -592(%rbp,%rax)
# BB#2073:                              # %for.inc.6231
                                        #   in Loop: Header=BB8_2068 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_2068
.LBB8_2074:                             # %for.end.6233
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB8_2076
# BB#2075:                              # %if.then.6238
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movl	$41, %r8d
	movabsq	$.L.str.49, %r9
	movq	-32(%rbp), %rcx
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	$41, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2076:                             # %if.end.6240
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$41, %edx
	je	.LBB8_2078
# BB#2077:                              # %if.then.6245
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.50, %r8
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_2078:                             # %if.end.6247
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-72(%rbp), %rax
	movb	$0, -592(%rbp,%rax)
	movq	-16(%rbp), %rdi
	callq	macro_meta_sequence_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_2080
# BB#2079:                              # %if.then.6252
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	grow_user_string_obstack
.LBB8_2080:                             # %if.end.6253
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2081:                             # %sw.bb.6254
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
.LBB8_2082:                             # %for.cond.6256
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$125, %eax
	movb	%cl, -7170(%rbp)        # 1-byte Spill
	je	.LBB8_2084
# BB#2083:                              # %land.rhs.6261
                                        #   in Loop: Header=BB8_2082 Depth=2
	cmpq	$511, -72(%rbp)         # imm = 0x1FF
	setb	%al
	movb	%al, -7170(%rbp)        # 1-byte Spill
.LBB8_2084:                             # %land.end.6264
                                        #   in Loop: Header=BB8_2082 Depth=2
	movb	-7170(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_2085
	jmp	.LBB8_2091
.LBB8_2085:                             # %for.body.6265
                                        #   in Loop: Header=BB8_2082 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	testl	%edx, %edx
	movl	%edx, -7176(%rbp)       # 4-byte Spill
	je	.LBB8_2086
	jmp	.LBB8_2583
.LBB8_2583:                             # %for.body.6265
                                        #   in Loop: Header=BB8_2082 Depth=2
	movl	-7176(%rbp), %eax       # 4-byte Reload
	subl	$58, %eax
	movl	%eax, -7180(%rbp)       # 4-byte Spill
	je	.LBB8_2087
	jmp	.LBB8_2088
.LBB8_2086:                             # %sw.bb.6268
                                        #   in Loop: Header=BB8_2082 Depth=2
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movl	$125, %r8d
	movabsq	$.L.str.51, %r9
	movq	-32(%rbp), %rcx
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	$125, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
	jmp	.LBB8_2089
.LBB8_2087:                             # %sw.bb.6270
                                        #   in Loop: Header=BB8_2082 Depth=2
	leaq	-592(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movb	$0, -592(%rbp,%rcx)
	addq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_2089
.LBB8_2088:                             # %sw.default.6275
                                        #   in Loop: Header=BB8_2082 Depth=2
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movb	%dl, -592(%rbp,%rax)
.LBB8_2089:                             # %sw.epilog.6279
                                        #   in Loop: Header=BB8_2082 Depth=2
	jmp	.LBB8_2090
.LBB8_2090:                             # %for.inc.6280
                                        #   in Loop: Header=BB8_2082 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_2082
.LBB8_2091:                             # %for.end.6282
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$125, %edx
	je	.LBB8_2093
# BB#2092:                              # %if.then.6287
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.52, %r8
	movq	-32(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB8_2093:                             # %if.end.6289
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-72(%rbp), %rax
	movb	$0, -592(%rbp,%rax)
	movq	-16(%rbp), %rdi
	callq	macro_meta_sequence_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_2095
# BB#2094:                              # %lor.lhs.false.6295
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB8_2098
.LBB8_2095:                             # %if.then.6299
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB8_2097
# BB#2096:                              # %if.then.6301
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	grow_user_string_obstack
.LBB8_2097:                             # %if.end.6302
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2160
.LBB8_2098:                             # %if.else.6303
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$43, %edx
	movl	%ecx, -7184(%rbp)       # 4-byte Spill
	movl	%edx, -7188(%rbp)       # 4-byte Spill
	je	.LBB8_2129
	jmp	.LBB8_2582
.LBB8_2582:                             # %if.else.6303
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7184(%rbp), %eax       # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -7192(%rbp)       # 4-byte Spill
	jne	.LBB8_2158
	jmp	.LBB8_2099
.LBB8_2099:                             # %sw.bb.6305
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB8_2102
# BB#2100:                              # %lor.lhs.false.6308
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_2102
# BB#2101:                              # %if.then.6312
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	grow_user_string_obstack
	jmp	.LBB8_2128
.LBB8_2102:                             # %if.else.6313
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2103
.LBB8_2103:                             # %do.body.6314
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -4848(%rbp)
	movq	-4848(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2105
# BB#2104:                              # %cond.true.6321
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7200(%rbp)       # 8-byte Spill
	jmp	.LBB8_2106
.LBB8_2105:                             # %cond.false.6322
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4848(%rbp), %rax
	movq	%rax, -7200(%rbp)       # 8-byte Spill
.LBB8_2106:                             # %cond.end.6324
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7200(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4856(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2115
# BB#2107:                              # %land.lhs.true.6327
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2115
# BB#2108:                              # %if.then.6330
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2109
.LBB8_2109:                             # %for.cond.6331
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4856(%rbp)
	je	.LBB8_2114
# BB#2110:                              # %for.body.6333
                                        #   in Loop: Header=BB8_2109 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4864(%rbp)
	movq	-4864(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4864(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2112
# BB#2111:                              # %if.then.6340
                                        #   in Loop: Header=BB8_2109 Depth=2
	movl	$1, %esi
	movq	-4864(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2112:                             # %if.end.6341
                                        #   in Loop: Header=BB8_2109 Depth=2
	movb	-73(%rbp), %al
	movq	-4864(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2113:                              # %for.inc.6344
                                        #   in Loop: Header=BB8_2109 Depth=2
	movq	-4856(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4856(%rbp)
	jmp	.LBB8_2109
.LBB8_2114:                             # %for.end.6346
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2115
.LBB8_2115:                             # %if.end.6347
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4872(%rbp)
	movq	-4848(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4876(%rbp)
	movq	-4872(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4876(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4872(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2117
# BB#2116:                              # %if.then.6357
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4872(%rbp), %rdi
	movl	-4876(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2117:                             # %if.end.6358
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4872(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movslq	-4876(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-4876(%rbp), %ecx
	movq	-4872(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2126
# BB#2118:                              # %land.lhs.true.6366
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2126
# BB#2119:                              # %if.then.6369
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2120
.LBB8_2120:                             # %for.cond.6370
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4856(%rbp)
	je	.LBB8_2125
# BB#2121:                              # %for.body.6372
                                        #   in Loop: Header=BB8_2120 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4888(%rbp)
	movq	-4888(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4888(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2123
# BB#2122:                              # %if.then.6379
                                        #   in Loop: Header=BB8_2120 Depth=2
	movl	$1, %esi
	movq	-4888(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2123:                             # %if.end.6380
                                        #   in Loop: Header=BB8_2120 Depth=2
	movb	-73(%rbp), %al
	movq	-4888(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2124:                              # %for.inc.6383
                                        #   in Loop: Header=BB8_2120 Depth=2
	movq	-4856(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4856(%rbp)
	jmp	.LBB8_2120
.LBB8_2125:                             # %for.end.6385
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2126
.LBB8_2126:                             # %if.end.6386
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2127
.LBB8_2127:                             # %do.end.6387
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2128
.LBB8_2128:                             # %if.end.6388
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2159
.LBB8_2129:                             # %sw.bb.6389
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB8_2157
# BB#2130:                              # %lor.lhs.false.6392
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_2157
# BB#2131:                              # %if.then.6396
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2132
.LBB8_2132:                             # %do.body.6397
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -4896(%rbp)
	movq	-4896(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2134
# BB#2133:                              # %cond.true.6404
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7208(%rbp)       # 8-byte Spill
	jmp	.LBB8_2135
.LBB8_2134:                             # %cond.false.6405
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4896(%rbp), %rax
	movq	%rax, -7208(%rbp)       # 8-byte Spill
.LBB8_2135:                             # %cond.end.6407
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7208(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4904(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2144
# BB#2136:                              # %land.lhs.true.6410
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2144
# BB#2137:                              # %if.then.6413
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2138
.LBB8_2138:                             # %for.cond.6414
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4904(%rbp)
	je	.LBB8_2143
# BB#2139:                              # %for.body.6416
                                        #   in Loop: Header=BB8_2138 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4912(%rbp)
	movq	-4912(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4912(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2141
# BB#2140:                              # %if.then.6423
                                        #   in Loop: Header=BB8_2138 Depth=2
	movl	$1, %esi
	movq	-4912(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2141:                             # %if.end.6424
                                        #   in Loop: Header=BB8_2138 Depth=2
	movb	-73(%rbp), %al
	movq	-4912(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2142:                              # %for.inc.6427
                                        #   in Loop: Header=BB8_2138 Depth=2
	movq	-4904(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4904(%rbp)
	jmp	.LBB8_2138
.LBB8_2143:                             # %for.end.6429
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2144
.LBB8_2144:                             # %if.end.6430
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4920(%rbp)
	movq	-4896(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4924(%rbp)
	movq	-4920(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4924(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4920(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2146
# BB#2145:                              # %if.then.6440
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4920(%rbp), %rdi
	movl	-4924(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2146:                             # %if.end.6441
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4920(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movslq	-4924(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-4924(%rbp), %ecx
	movq	-4920(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2155
# BB#2147:                              # %land.lhs.true.6449
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2155
# BB#2148:                              # %if.then.6452
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2149
.LBB8_2149:                             # %for.cond.6453
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4904(%rbp)
	je	.LBB8_2154
# BB#2150:                              # %for.body.6455
                                        #   in Loop: Header=BB8_2149 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4936(%rbp)
	movq	-4936(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4936(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2152
# BB#2151:                              # %if.then.6462
                                        #   in Loop: Header=BB8_2149 Depth=2
	movl	$1, %esi
	movq	-4936(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2152:                             # %if.end.6463
                                        #   in Loop: Header=BB8_2149 Depth=2
	movb	-73(%rbp), %al
	movq	-4936(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2153:                              # %for.inc.6466
                                        #   in Loop: Header=BB8_2149 Depth=2
	movq	-4904(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4904(%rbp)
	jmp	.LBB8_2149
.LBB8_2154:                             # %for.end.6468
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2155
.LBB8_2155:                             # %if.end.6469
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2156
.LBB8_2156:                             # %do.end.6470
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2157
.LBB8_2157:                             # %if.end.6471
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2159
.LBB8_2158:                             # %sw.default.6472
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.39, %r8
	movabsq	$.L.str.52, %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %r9
	movzbl	(%r9), %r9d
	subq	$16, %rsp
	movq	%rdx, -7216(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-7216(%rbp), %rax       # 8-byte Reload
	movq	%rcx, -7224(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-7224(%rbp), %r10       # 8-byte Reload
	movq	%r10, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2159:                             # %sw.epilog.6475
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2160
.LBB8_2160:                             # %if.end.6476
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2161:                             # %sw.bb.6477
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2162
.LBB8_2162:                             # %do.body.6478
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$2, -4944(%rbp)
	movq	-4944(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2164
# BB#2163:                              # %cond.true.6483
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7232(%rbp)       # 8-byte Spill
	jmp	.LBB8_2165
.LBB8_2164:                             # %cond.false.6484
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-4944(%rbp), %rax
	movq	%rax, -7232(%rbp)       # 8-byte Spill
.LBB8_2165:                             # %cond.end.6486
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7232(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4952(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2174
# BB#2166:                              # %land.lhs.true.6489
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2174
# BB#2167:                              # %if.then.6492
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2168
.LBB8_2168:                             # %for.cond.6493
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4952(%rbp)
	je	.LBB8_2173
# BB#2169:                              # %for.body.6495
                                        #   in Loop: Header=BB8_2168 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4960(%rbp)
	movq	-4960(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4960(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2171
# BB#2170:                              # %if.then.6502
                                        #   in Loop: Header=BB8_2168 Depth=2
	movl	$1, %esi
	movq	-4960(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2171:                             # %if.end.6503
                                        #   in Loop: Header=BB8_2168 Depth=2
	movb	-73(%rbp), %al
	movq	-4960(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2172:                              # %for.inc.6506
                                        #   in Loop: Header=BB8_2168 Depth=2
	movq	-4952(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4952(%rbp)
	jmp	.LBB8_2168
.LBB8_2173:                             # %for.end.6508
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2174
.LBB8_2174:                             # %if.end.6509
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -4968(%rbp)
	movq	-4944(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4972(%rbp)
	movq	-4968(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-4972(%rbp), %rdx
	addq	%rdx, %rax
	movq	-4968(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2176
# BB#2175:                              # %if.then.6519
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-4968(%rbp), %rdi
	movl	-4972(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2176:                             # %if.end.6520
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.53, %rsi
	movq	-4968(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-4972(%rbp), %rdx
	callq	memcpy
	movl	-4972(%rbp), %ecx
	movq	-4968(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2185
# BB#2177:                              # %land.lhs.true.6527
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2185
# BB#2178:                              # %if.then.6530
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2179
.LBB8_2179:                             # %for.cond.6531
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -4952(%rbp)
	je	.LBB8_2184
# BB#2180:                              # %for.body.6533
                                        #   in Loop: Header=BB8_2179 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -4984(%rbp)
	movq	-4984(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-4984(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2182
# BB#2181:                              # %if.then.6540
                                        #   in Loop: Header=BB8_2179 Depth=2
	movl	$1, %esi
	movq	-4984(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2182:                             # %if.end.6541
                                        #   in Loop: Header=BB8_2179 Depth=2
	movb	-73(%rbp), %al
	movq	-4984(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2183:                              # %for.inc.6544
                                        #   in Loop: Header=BB8_2179 Depth=2
	movq	-4952(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -4952(%rbp)
	jmp	.LBB8_2179
.LBB8_2184:                             # %for.end.6546
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2185
.LBB8_2185:                             # %if.end.6547
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2186
.LBB8_2186:                             # %do.end.6548
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2187:                             # %sw.bb.6549
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -4988(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movb	1(%rcx,%rax), %dl
	movb	%dl, -4989(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movb	1(%rcx,%rax), %dl
	movb	%dl, -4990(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	xstrdup
	movq	%rax, -5016(%rbp)
# BB#2188:                              # %do.body.6558
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5016(%rbp), %rax
	movq	%rax, -5000(%rbp)
	movq	-5016(%rbp), %rdi
	movzbl	-4990(%rbp), %esi
	callq	strchr
	movq	%rax, -5016(%rbp)
	cmpq	$0, -5016(%rbp)
	jne	.LBB8_2190
# BB#2189:                              # %if.then.6562
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.54, %r9
	movq	-32(%rbp), %rcx
	movzbl	-4990(%rbp), %r8d
	movzbl	-4989(%rbp), %edx
	subq	$16, %rsp
	movl	%edx, -7236(%rbp)       # 4-byte Spill
	movq	%rax, %rdx
	movl	-7236(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2190:                             # %if.end.6566
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5016(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -5016(%rbp)
	movb	$0, (%rax)
# BB#2191:                              # %do.end.6568
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2192
.LBB8_2192:                             # %do.body.6569
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5016(%rbp), %rax
	movq	%rax, -5008(%rbp)
	movq	-5016(%rbp), %rdi
	movzbl	-4990(%rbp), %esi
	callq	strchr
	movq	%rax, -5016(%rbp)
	cmpq	$0, -5016(%rbp)
	jne	.LBB8_2194
# BB#2193:                              # %if.then.6573
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.54, %r9
	movq	-32(%rbp), %rcx
	movzbl	-4990(%rbp), %r8d
	movzbl	-4989(%rbp), %edx
	subq	$16, %rsp
	movl	%edx, -7240(%rbp)       # 4-byte Spill
	movq	%rax, %rdx
	movl	-7240(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2194:                             # %if.end.6577
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5016(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -5016(%rbp)
	movb	$0, (%rax)
# BB#2195:                              # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5016(%rbp), %rax
	movq	-5000(%rbp), %rcx
	subq	%rcx, %rax
	movq	-64(%rbp), %rcx
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, -64(%rbp)
	movzbl	-4989(%rbp), %edx
	movl	%edx, %esi
	subl	$49, %esi
	movl	%edx, -7244(%rbp)       # 4-byte Spill
	movl	%esi, -7248(%rbp)       # 4-byte Spill
	je	.LBB8_2196
	jmp	.LBB8_2570
.LBB8_2570:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$50, %eax
	movl	%eax, -7252(%rbp)       # 4-byte Spill
	je	.LBB8_2199
	jmp	.LBB8_2571
.LBB8_2571:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$51, %eax
	movl	%eax, -7256(%rbp)       # 4-byte Spill
	je	.LBB8_2202
	jmp	.LBB8_2572
.LBB8_2572:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$52, %eax
	movl	%eax, -7260(%rbp)       # 4-byte Spill
	je	.LBB8_2205
	jmp	.LBB8_2573
.LBB8_2573:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$86, %eax
	movl	%eax, -7264(%rbp)       # 4-byte Spill
	je	.LBB8_2217
	jmp	.LBB8_2574
.LBB8_2574:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -7268(%rbp)       # 4-byte Spill
	je	.LBB8_2208
	jmp	.LBB8_2575
.LBB8_2575:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$106, %eax
	movl	%eax, -7272(%rbp)       # 4-byte Spill
	je	.LBB8_2211
	jmp	.LBB8_2576
.LBB8_2576:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -7276(%rbp)       # 4-byte Spill
	je	.LBB8_2212
	jmp	.LBB8_2577
.LBB8_2577:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$111, %eax
	movl	%eax, -7280(%rbp)       # 4-byte Spill
	je	.LBB8_2213
	jmp	.LBB8_2578
.LBB8_2578:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -7284(%rbp)       # 4-byte Spill
	je	.LBB8_2214
	jmp	.LBB8_2579
.LBB8_2579:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$113, %eax
	movl	%eax, -7288(%rbp)       # 4-byte Spill
	je	.LBB8_2215
	jmp	.LBB8_2580
.LBB8_2580:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -7292(%rbp)       # 4-byte Spill
	je	.LBB8_2216
	jmp	.LBB8_2581
.LBB8_2581:                             # %do.end.6579
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7244(%rbp), %eax       # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -7296(%rbp)       # 4-byte Spill
	je	.LBB8_2218
	jmp	.LBB8_2219
.LBB8_2196:                             # %sw.bb.6586
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	addq	$496, %rcx              # imm = 0x1F0
	cmpq	$0, %rcx
	movb	%al, -7297(%rbp)        # 1-byte Spill
	je	.LBB8_2198
# BB#2197:                              # %lor.rhs
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	496(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -7297(%rbp)        # 1-byte Spill
.LBB8_2198:                             # %lor.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-7297(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2199:                             # %sw.bb.6596
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	addq	$752, %rcx              # imm = 0x2F0
	cmpq	$0, %rcx
	movb	%al, -7298(%rbp)        # 1-byte Spill
	je	.LBB8_2201
# BB#2200:                              # %lor.rhs.6601
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	752(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -7298(%rbp)        # 1-byte Spill
.LBB8_2201:                             # %lor.end.6607
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-7298(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2202:                             # %sw.bb.6610
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	addq	$1008, %rcx             # imm = 0x3F0
	cmpq	$0, %rcx
	movb	%al, -7299(%rbp)        # 1-byte Spill
	je	.LBB8_2204
# BB#2203:                              # %lor.rhs.6615
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	1008(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -7299(%rbp)        # 1-byte Spill
.LBB8_2204:                             # %lor.end.6621
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-7299(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2205:                             # %sw.bb.6624
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	addq	$1264, %rcx             # imm = 0x4F0
	cmpq	$0, %rcx
	movb	%al, -7300(%rbp)        # 1-byte Spill
	je	.LBB8_2207
# BB#2206:                              # %lor.rhs.6629
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	1264(%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -7300(%rbp)        # 1-byte Spill
.LBB8_2207:                             # %lor.end.6635
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-7300(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2208:                             # %sw.bb.6638
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$1, 128(%rcx)
	movb	%al, -7301(%rbp)        # 1-byte Spill
	je	.LBB8_2210
# BB#2209:                              # %lor.rhs.6641
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$2, 128(%rax)
	sete	%cl
	movb	%cl, -7301(%rbp)        # 1-byte Spill
.LBB8_2210:                             # %lor.end.6645
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-7301(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2211:                             # %sw.bb.6646
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movl	320(%rax), %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2212:                             # %sw.bb.6647
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$1, 124(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2213:                             # %sw.bb.6650
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movl	136(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	132(%rax), %ecx
	cmpl	$1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2214:                             # %sw.bb.6654
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	1624(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	112(%rax), %esi
	callq	page_range_applies_above
	movl	%eax, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2215:                             # %sw.bb.6657
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, msg_verbosity
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2216:                             # %sw.bb.6660
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 140(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2217:                             # %sw.bb.6663
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	msg_verbosity, %eax
	andl	$128, %eax
	movl	%eax, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2218:                             # %sw.bb.6665
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	andl	$1, %ecx
	movl	%ecx, -4988(%rbp)
	jmp	.LBB8_2220
.LBB8_2219:                             # %sw.default.6668
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.54, %r8
	movq	-32(%rbp), %rcx
	movzbl	-4989(%rbp), %r9d
	movzbl	-4989(%rbp), %edx
	subq	$16, %rsp
	movl	%edx, -7308(%rbp)       # 4-byte Spill
	movq	%rax, %rdx
	movl	-7308(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2220:                             # %sw.epilog.6672
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -4988(%rbp)
	je	.LBB8_2222
# BB#2221:                              # %if.then.6674
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-5000(%rbp), %r8
	callq	grow_user_string_obstack
	jmp	.LBB8_2223
.LBB8_2222:                             # %if.else.6675
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-5008(%rbp), %r8
	callq	grow_user_string_obstack
.LBB8_2223:                             # %if.end.6676
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5000(%rbp), %rdi
	callq	free
	jmp	.LBB8_2528
.LBB8_2224:                             # %sw.bb.6677
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movb	1(%rcx,%rax), %dl
	movb	%dl, -5017(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movb	1(%rcx,%rax), %dl
	movb	%dl, -5018(%rbp)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	xstrdup
	movq	%rax, -5048(%rbp)
# BB#2225:                              # %do.body.6687
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5048(%rbp), %rax
	movq	%rax, -5032(%rbp)
	movq	-5048(%rbp), %rdi
	movzbl	-5018(%rbp), %esi
	callq	strchr
	movq	%rax, -5048(%rbp)
	cmpq	$0, -5048(%rbp)
	jne	.LBB8_2227
# BB#2226:                              # %if.then.6691
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.55, %r9
	movq	-32(%rbp), %rcx
	movzbl	-5018(%rbp), %r8d
	movzbl	-5017(%rbp), %edx
	subq	$16, %rsp
	movl	%edx, -7312(%rbp)       # 4-byte Spill
	movq	%rax, %rdx
	movl	-7312(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2227:                             # %if.end.6695
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5048(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -5048(%rbp)
	movb	$0, (%rax)
# BB#2228:                              # %do.end.6697
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2229
.LBB8_2229:                             # %do.body.6698
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5048(%rbp), %rax
	movq	%rax, -5040(%rbp)
	movq	-5048(%rbp), %rdi
	movzbl	-5018(%rbp), %esi
	callq	strchr
	movq	%rax, -5048(%rbp)
	cmpq	$0, -5048(%rbp)
	jne	.LBB8_2231
# BB#2230:                              # %if.then.6702
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.55, %r9
	movq	-32(%rbp), %rcx
	movzbl	-5018(%rbp), %r8d
	movzbl	-5017(%rbp), %edx
	subq	$16, %rsp
	movl	%edx, -7316(%rbp)       # 4-byte Spill
	movq	%rax, %rdx
	movl	-7316(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2231:                             # %if.end.6706
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5048(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -5048(%rbp)
	movb	$0, (%rax)
# BB#2232:                              # %do.end.6708
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5048(%rbp), %rax
	movq	-5032(%rbp), %rcx
	subq	%rcx, %rax
	movq	-64(%rbp), %rcx
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, -64(%rbp)
	movzbl	-5017(%rbp), %edx
	movl	%edx, %esi
	subl	$36, %esi
	movl	%edx, -7320(%rbp)       # 4-byte Spill
	movl	%esi, -7324(%rbp)       # 4-byte Spill
	je	.LBB8_2233
	jmp	.LBB8_2567
.LBB8_2567:                             # %do.end.6708
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7320(%rbp), %eax       # 4-byte Reload
	subl	$70, %eax
	movl	%eax, -7328(%rbp)       # 4-byte Spill
	je	.LBB8_2292
	jmp	.LBB8_2568
.LBB8_2568:                             # %do.end.6708
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7320(%rbp), %eax       # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -7332(%rbp)       # 4-byte Spill
	je	.LBB8_2275
	jmp	.LBB8_2569
.LBB8_2569:                             # %do.end.6708
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-7320(%rbp), %eax       # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -7336(%rbp)       # 4-byte Spill
	je	.LBB8_2309
	jmp	.LBB8_2332
.LBB8_2233:                             # %sw.bb.6715
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	jbe	.LBB8_2237
# BB#2234:                              # %land.lhs.true.6718
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2237
# BB#2235:                              # %land.lhs.true.6721
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB8_2237
# BB#2236:                              # %cond.true.6725
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	%rax, -7344(%rbp)       # 8-byte Spill
	jmp	.LBB8_2243
.LBB8_2237:                             # %cond.false.6726
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	jbe	.LBB8_2241
# BB#2238:                              # %land.lhs.true.6729
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2241
# BB#2239:                              # %land.lhs.true.6732
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	ja	.LBB8_2241
# BB#2240:                              # %cond.true.6736
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	subq	-1368(%rbp), %rax
	movq	%rax, -7352(%rbp)       # 8-byte Spill
	jmp	.LBB8_2242
.LBB8_2241:                             # %cond.false.6739
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -7352(%rbp)       # 8-byte Spill
.LBB8_2242:                             # %cond.end.6741
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7352(%rbp), %rax       # 8-byte Reload
	movq	%rax, -7344(%rbp)       # 8-byte Spill
.LBB8_2243:                             # %cond.end.6743
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7344(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5064(%rbp)
	movq	$0, -5056(%rbp)
.LBB8_2244:                             # %for.cond.6745
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_2252 Depth 3
                                        #       Child Loop BB8_2263 Depth 3
	movq	-5056(%rbp), %rax
	cmpq	-5064(%rbp), %rax
	jae	.LBB8_2274
# BB#2245:                              # %for.body.6748
                                        #   in Loop: Header=BB8_2244 Depth=2
	jmp	.LBB8_2246
.LBB8_2246:                             # %do.body.6749
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-5056(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	movq	%rax, -5072(%rbp)
	movq	-5072(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2248
# BB#2247:                              # %cond.true.6757
                                        #   in Loop: Header=BB8_2244 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7360(%rbp)       # 8-byte Spill
	jmp	.LBB8_2249
.LBB8_2248:                             # %cond.false.6758
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-1368(%rbp), %rax
	subq	-5072(%rbp), %rax
	movq	%rax, -7360(%rbp)       # 8-byte Spill
.LBB8_2249:                             # %cond.end.6760
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-7360(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5080(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2258
# BB#2250:                              # %land.lhs.true.6763
                                        #   in Loop: Header=BB8_2244 Depth=2
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2258
# BB#2251:                              # %if.then.6766
                                        #   in Loop: Header=BB8_2244 Depth=2
	jmp	.LBB8_2252
.LBB8_2252:                             # %for.cond.6767
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_2244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -5080(%rbp)
	je	.LBB8_2257
# BB#2253:                              # %for.body.6769
                                        #   in Loop: Header=BB8_2252 Depth=3
	movq	-8(%rbp), %rax
	movq	%rax, -5088(%rbp)
	movq	-5088(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5088(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2255
# BB#2254:                              # %if.then.6776
                                        #   in Loop: Header=BB8_2252 Depth=3
	movl	$1, %esi
	movq	-5088(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2255:                             # %if.end.6777
                                        #   in Loop: Header=BB8_2252 Depth=3
	movb	-73(%rbp), %al
	movq	-5088(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2256:                              # %for.inc.6780
                                        #   in Loop: Header=BB8_2252 Depth=3
	movq	-5080(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5080(%rbp)
	jmp	.LBB8_2252
.LBB8_2257:                             # %for.end.6782
                                        #   in Loop: Header=BB8_2244 Depth=2
	jmp	.LBB8_2258
.LBB8_2258:                             # %if.end.6783
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5096(%rbp)
	movq	-5072(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -5100(%rbp)
	movq	-5096(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-5100(%rbp), %rdx
	addq	%rdx, %rax
	movq	-5096(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2260
# BB#2259:                              # %if.then.6793
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-5096(%rbp), %rdi
	movl	-5100(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2260:                             # %if.end.6794
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-5096(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-5056(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movslq	-5100(%rbp), %rdx
	callq	memcpy
	movl	-5100(%rbp), %r8d
	movq	-5096(%rbp), %rax
	movq	24(%rax), %rcx
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2269
# BB#2261:                              # %land.lhs.true.6803
                                        #   in Loop: Header=BB8_2244 Depth=2
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2269
# BB#2262:                              # %if.then.6806
                                        #   in Loop: Header=BB8_2244 Depth=2
	jmp	.LBB8_2263
.LBB8_2263:                             # %for.cond.6807
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_2244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	$0, -5080(%rbp)
	je	.LBB8_2268
# BB#2264:                              # %for.body.6809
                                        #   in Loop: Header=BB8_2263 Depth=3
	movq	-8(%rbp), %rax
	movq	%rax, -5112(%rbp)
	movq	-5112(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5112(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2266
# BB#2265:                              # %if.then.6816
                                        #   in Loop: Header=BB8_2263 Depth=3
	movl	$1, %esi
	movq	-5112(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2266:                             # %if.end.6817
                                        #   in Loop: Header=BB8_2263 Depth=3
	movb	-73(%rbp), %al
	movq	-5112(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2267:                              # %for.inc.6820
                                        #   in Loop: Header=BB8_2263 Depth=3
	movq	-5080(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5080(%rbp)
	jmp	.LBB8_2263
.LBB8_2268:                             # %for.end.6822
                                        #   in Loop: Header=BB8_2244 Depth=2
	jmp	.LBB8_2269
.LBB8_2269:                             # %if.end.6823
                                        #   in Loop: Header=BB8_2244 Depth=2
	jmp	.LBB8_2270
.LBB8_2270:                             # %do.end.6824
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-5056(%rbp), %rax
	movq	-5064(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB8_2272
# BB#2271:                              # %if.then.6828
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-5056(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-5040(%rbp), %r8
	movq	%rax, %rdx
	callq	grow_user_string_obstack
.LBB8_2272:                             # %if.end.6832
                                        #   in Loop: Header=BB8_2244 Depth=2
	jmp	.LBB8_2273
.LBB8_2273:                             # %for.inc.6833
                                        #   in Loop: Header=BB8_2244 Depth=2
	movq	-5056(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5056(%rbp)
	jmp	.LBB8_2244
.LBB8_2274:                             # %for.end.6835
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2333
.LBB8_2275:                             # %sw.bb.6836
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	jbe	.LBB8_2279
# BB#2276:                              # %land.lhs.true.6841
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2279
# BB#2277:                              # %land.lhs.true.6844
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB8_2279
# BB#2278:                              # %cond.true.6849
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	%rax, -7368(%rbp)       # 8-byte Spill
	jmp	.LBB8_2285
.LBB8_2279:                             # %cond.false.6850
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	jbe	.LBB8_2283
# BB#2280:                              # %land.lhs.true.6853
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2283
# BB#2281:                              # %land.lhs.true.6856
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	cmpq	40(%rcx), %rax
	ja	.LBB8_2283
# BB#2282:                              # %cond.true.6861
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	-1368(%rbp), %rax
	movq	%rax, -7376(%rbp)       # 8-byte Spill
	jmp	.LBB8_2284
.LBB8_2283:                             # %cond.false.6865
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -7376(%rbp)       # 8-byte Spill
.LBB8_2284:                             # %cond.end.6868
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7376(%rbp), %rax       # 8-byte Reload
	movq	%rax, -7368(%rbp)       # 8-byte Spill
.LBB8_2285:                             # %cond.end.6870
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7368(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5128(%rbp)
	movq	$0, -5120(%rbp)
.LBB8_2286:                             # %for.cond.6872
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5120(%rbp), %rax
	cmpq	-5128(%rbp), %rax
	jae	.LBB8_2291
# BB#2287:                              # %for.body.6875
                                        #   in Loop: Header=BB8_2286 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-5120(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-5032(%rbp), %r8
	movq	%rax, %rdx
	callq	grow_user_string_obstack
	movq	-5120(%rbp), %rax
	movq	-5128(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB8_2289
# BB#2288:                              # %if.then.6882
                                        #   in Loop: Header=BB8_2286 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-5120(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-5040(%rbp), %r8
	movq	%rax, %rdx
	callq	grow_user_string_obstack
.LBB8_2289:                             # %if.end.6886
                                        #   in Loop: Header=BB8_2286 Depth=2
	jmp	.LBB8_2290
.LBB8_2290:                             # %for.inc.6887
                                        #   in Loop: Header=BB8_2286 Depth=2
	movq	-5120(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5120(%rbp)
	jmp	.LBB8_2286
.LBB8_2291:                             # %for.end.6889
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2333
.LBB8_2292:                             # %sw.bb.6890
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rdi
	callq	da_clone
	movabsq	$file_name_cmp, %rdi
	movq	%rax, -5152(%rbp)
	movq	-5152(%rbp), %rax
	movq	%rdi, 64(%rax)
	movq	-5152(%rbp), %rdi
	callq	da_qsort
	cmpq	$0, -1368(%rbp)
	jbe	.LBB8_2296
# BB#2293:                              # %land.lhs.true.6898
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2296
# BB#2294:                              # %land.lhs.true.6901
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB8_2296
# BB#2295:                              # %cond.true.6906
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	%rax, -7384(%rbp)       # 8-byte Spill
	jmp	.LBB8_2302
.LBB8_2296:                             # %cond.false.6907
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	jbe	.LBB8_2300
# BB#2297:                              # %land.lhs.true.6910
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2300
# BB#2298:                              # %land.lhs.true.6913
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1632(%rcx), %rcx
	cmpq	40(%rcx), %rax
	ja	.LBB8_2300
# BB#2299:                              # %cond.true.6918
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	-1368(%rbp), %rax
	movq	%rax, -7392(%rbp)       # 8-byte Spill
	jmp	.LBB8_2301
.LBB8_2300:                             # %cond.false.6922
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -7392(%rbp)       # 8-byte Spill
.LBB8_2301:                             # %cond.end.6925
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7392(%rbp), %rax       # 8-byte Reload
	movq	%rax, -7384(%rbp)       # 8-byte Spill
.LBB8_2302:                             # %cond.end.6927
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7384(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5144(%rbp)
	movq	$0, -5136(%rbp)
.LBB8_2303:                             # %for.cond.6929
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5136(%rbp), %rax
	cmpq	-5144(%rbp), %rax
	jae	.LBB8_2308
# BB#2304:                              # %for.body.6932
                                        #   in Loop: Header=BB8_2303 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-5136(%rbp), %rax
	movq	-5152(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-5032(%rbp), %r8
	movq	%rax, %rdx
	callq	grow_user_string_obstack
	movq	-5136(%rbp), %rax
	movq	-5144(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB8_2306
# BB#2305:                              # %if.then.6938
                                        #   in Loop: Header=BB8_2303 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-5136(%rbp), %rax
	movq	-5152(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-5040(%rbp), %r8
	movq	%rax, %rdx
	callq	grow_user_string_obstack
.LBB8_2306:                             # %if.end.6941
                                        #   in Loop: Header=BB8_2303 Depth=2
	jmp	.LBB8_2307
.LBB8_2307:                             # %for.inc.6942
                                        #   in Loop: Header=BB8_2303 Depth=2
	movq	-5136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5136(%rbp)
	jmp	.LBB8_2303
.LBB8_2308:                             # %for.end.6944
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5152(%rbp), %rdi
	callq	da_erase
	jmp	.LBB8_2333
.LBB8_2309:                             # %sw.bb.6945
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rdi
	callq	da_clone
	movq	%rax, -5176(%rbp)
	movq	$0, -5160(%rbp)
.LBB8_2310:                             # %while.cond.6950
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5160(%rbp), %rax
	movq	-5176(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB8_2315
# BB#2311:                              # %while.body.6954
                                        #   in Loop: Header=BB8_2310 Depth=2
	movq	-5160(%rbp), %rax
	movq	-5176(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	104(%rax), %edx
	movq	-16(%rbp), %rax
	cmpl	108(%rax), %edx
	jge	.LBB8_2313
# BB#2312:                              # %if.then.6961
                                        #   in Loop: Header=BB8_2310 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-5176(%rbp), %rdi
	movq	-5160(%rbp), %rsi
	callq	da_remove_at
	jmp	.LBB8_2314
.LBB8_2313:                             # %if.else.6962
                                        #   in Loop: Header=BB8_2310 Depth=2
	movq	-5160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5160(%rbp)
.LBB8_2314:                             # %if.end.6964
                                        #   in Loop: Header=BB8_2310 Depth=2
	jmp	.LBB8_2310
.LBB8_2315:                             # %while.end.6965
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	jbe	.LBB8_2319
# BB#2316:                              # %land.lhs.true.6968
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2319
# BB#2317:                              # %land.lhs.true.6971
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	-5176(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB8_2319
# BB#2318:                              # %cond.true.6975
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	%rax, -7400(%rbp)       # 8-byte Spill
	jmp	.LBB8_2325
.LBB8_2319:                             # %cond.false.6976
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	jbe	.LBB8_2323
# BB#2320:                              # %land.lhs.true.6979
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2323
# BB#2321:                              # %land.lhs.true.6982
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	movq	-5176(%rbp), %rcx
	cmpq	40(%rcx), %rax
	ja	.LBB8_2323
# BB#2322:                              # %cond.true.6986
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5176(%rbp), %rax
	movq	40(%rax), %rax
	subq	-1368(%rbp), %rax
	movq	%rax, -7408(%rbp)       # 8-byte Spill
	jmp	.LBB8_2324
.LBB8_2323:                             # %cond.false.6989
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5176(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -7408(%rbp)       # 8-byte Spill
.LBB8_2324:                             # %cond.end.6991
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7408(%rbp), %rax       # 8-byte Reload
	movq	%rax, -7400(%rbp)       # 8-byte Spill
.LBB8_2325:                             # %cond.end.6993
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7400(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5168(%rbp)
	movq	$0, -5160(%rbp)
.LBB8_2326:                             # %for.cond.6995
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5160(%rbp), %rax
	cmpq	-5168(%rbp), %rax
	jae	.LBB8_2331
# BB#2327:                              # %for.body.6998
                                        #   in Loop: Header=BB8_2326 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-5160(%rbp), %rax
	movq	-5176(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-5032(%rbp), %r8
	movq	%rax, %rdx
	callq	grow_user_string_obstack
	movq	-5160(%rbp), %rax
	movq	-5168(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB8_2329
# BB#2328:                              # %if.then.7004
                                        #   in Loop: Header=BB8_2326 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-5160(%rbp), %rax
	movq	-5176(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-5040(%rbp), %r8
	movq	%rax, %rdx
	callq	grow_user_string_obstack
.LBB8_2329:                             # %if.end.7007
                                        #   in Loop: Header=BB8_2326 Depth=2
	jmp	.LBB8_2330
.LBB8_2330:                             # %for.inc.7008
                                        #   in Loop: Header=BB8_2326 Depth=2
	movq	-5160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -5160(%rbp)
	jmp	.LBB8_2326
.LBB8_2331:                             # %for.end.7010
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5176(%rbp), %rdi
	callq	da_erase
	jmp	.LBB8_2333
.LBB8_2332:                             # %sw.default.7011
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.55, %r8
	movq	-32(%rbp), %rcx
	movzbl	-5017(%rbp), %r9d
	movzbl	-5017(%rbp), %edx
	subq	$16, %rsp
	movl	%edx, -7412(%rbp)       # 4-byte Spill
	movq	%rax, %rdx
	movl	-7412(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2333:                             # %sw.epilog.7015
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5032(%rbp), %rdi
	callq	free
	jmp	.LBB8_2528
.LBB8_2334:                             # %sw.bb.7016
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx,%rax), %edx
	subl	$48, %edx
	movl	%edx, -5180(%rbp)
	cmpl	$0, -5180(%rbp)
	jl	.LBB8_2336
# BB#2335:                              # %lor.lhs.false.7023
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$9, %eax
	cmpl	-5180(%rbp), %eax
	jge	.LBB8_2337
.LBB8_2336:                             # %if.then.7026
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.56, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2337:                             # %if.end.7032
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2338
.LBB8_2338:                             # %do.body.7033
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-5180(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 1544(%rcx,%rax,8)
	je	.LBB8_2340
# BB#2339:                              # %cond.true.7037
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-5180(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1544(%rcx,%rax,8), %rax
	movq	%rax, -7424(%rbp)       # 8-byte Spill
	jmp	.LBB8_2341
.LBB8_2340:                             # %cond.false.7041
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.57, %rsi
	callq	tempnam
	movq	%rax, -7424(%rbp)       # 8-byte Spill
.LBB8_2341:                             # %cond.end.7043
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7424(%rbp), %rax       # 8-byte Reload
	movslq	-5180(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, 1544(%rdx,%rcx,8)
# BB#2342:                              # %do.end.7048
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2343
.LBB8_2343:                             # %do.body.7049
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-5180(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1544(%rcx,%rax,8), %rdi
	callq	strlen
	movq	%rax, -5192(%rbp)
	movq	-5192(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2345
# BB#2344:                              # %cond.true.7058
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7432(%rbp)       # 8-byte Spill
	jmp	.LBB8_2346
.LBB8_2345:                             # %cond.false.7059
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-5192(%rbp), %rax
	movq	%rax, -7432(%rbp)       # 8-byte Spill
.LBB8_2346:                             # %cond.end.7061
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7432(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5200(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2355
# BB#2347:                              # %land.lhs.true.7064
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2355
# BB#2348:                              # %if.then.7067
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2349
.LBB8_2349:                             # %for.cond.7068
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5200(%rbp)
	je	.LBB8_2354
# BB#2350:                              # %for.body.7070
                                        #   in Loop: Header=BB8_2349 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5208(%rbp)
	movq	-5208(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5208(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2352
# BB#2351:                              # %if.then.7077
                                        #   in Loop: Header=BB8_2349 Depth=2
	movl	$1, %esi
	movq	-5208(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2352:                             # %if.end.7078
                                        #   in Loop: Header=BB8_2349 Depth=2
	movb	-73(%rbp), %al
	movq	-5208(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2353:                              # %for.inc.7081
                                        #   in Loop: Header=BB8_2349 Depth=2
	movq	-5200(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5200(%rbp)
	jmp	.LBB8_2349
.LBB8_2354:                             # %for.end.7083
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2355
.LBB8_2355:                             # %if.end.7084
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5216(%rbp)
	movq	-5192(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -5220(%rbp)
	movq	-5216(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-5220(%rbp), %rdx
	addq	%rdx, %rax
	movq	-5216(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2357
# BB#2356:                              # %if.then.7094
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5216(%rbp), %rdi
	movl	-5220(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2357:                             # %if.end.7095
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5216(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-5180(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	1544(%rcx,%rax,8), %rsi
	movslq	-5220(%rbp), %rdx
	callq	memcpy
	movl	-5220(%rbp), %r8d
	movq	-5216(%rbp), %rax
	movq	24(%rax), %rcx
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2366
# BB#2358:                              # %land.lhs.true.7105
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2366
# BB#2359:                              # %if.then.7108
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2360
.LBB8_2360:                             # %for.cond.7109
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5200(%rbp)
	je	.LBB8_2365
# BB#2361:                              # %for.body.7111
                                        #   in Loop: Header=BB8_2360 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5232(%rbp)
	movq	-5232(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5232(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2363
# BB#2362:                              # %if.then.7118
                                        #   in Loop: Header=BB8_2360 Depth=2
	movl	$1, %esi
	movq	-5232(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2363:                             # %if.end.7119
                                        #   in Loop: Header=BB8_2360 Depth=2
	movb	-73(%rbp), %al
	movq	-5232(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2364:                              # %for.inc.7122
                                        #   in Loop: Header=BB8_2360 Depth=2
	movq	-5200(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5200(%rbp)
	jmp	.LBB8_2360
.LBB8_2365:                             # %for.end.7124
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2366
.LBB8_2366:                             # %if.end.7125
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2367
.LBB8_2367:                             # %do.end.7126
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2368:                             # %sw.bb.7127
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movl	12(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -7436(%rbp)       # 4-byte Spill
# BB#2369:                              # %do.body.7130
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -5240(%rbp)
	movq	-5240(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2371
# BB#2370:                              # %cond.true.7137
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7448(%rbp)       # 8-byte Spill
	jmp	.LBB8_2372
.LBB8_2371:                             # %cond.false.7138
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-5240(%rbp), %rax
	movq	%rax, -7448(%rbp)       # 8-byte Spill
.LBB8_2372:                             # %cond.end.7140
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7448(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5248(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2381
# BB#2373:                              # %land.lhs.true.7143
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2381
# BB#2374:                              # %if.then.7146
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2375
.LBB8_2375:                             # %for.cond.7147
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5248(%rbp)
	je	.LBB8_2380
# BB#2376:                              # %for.body.7149
                                        #   in Loop: Header=BB8_2375 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5256(%rbp)
	movq	-5256(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5256(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2378
# BB#2377:                              # %if.then.7156
                                        #   in Loop: Header=BB8_2375 Depth=2
	movl	$1, %esi
	movq	-5256(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2378:                             # %if.end.7157
                                        #   in Loop: Header=BB8_2375 Depth=2
	movb	-73(%rbp), %al
	movq	-5256(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2379:                              # %for.inc.7160
                                        #   in Loop: Header=BB8_2375 Depth=2
	movq	-5248(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5248(%rbp)
	jmp	.LBB8_2375
.LBB8_2380:                             # %for.end.7162
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2381
.LBB8_2381:                             # %if.end.7163
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5264(%rbp)
	movq	-5240(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -5268(%rbp)
	movq	-5264(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-5268(%rbp), %rdx
	addq	%rdx, %rax
	movq	-5264(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2383
# BB#2382:                              # %if.then.7173
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5264(%rbp), %rdi
	movl	-5268(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2383:                             # %if.end.7174
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-5264(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-5268(%rbp), %rdx
	callq	memcpy
	movl	-5268(%rbp), %ecx
	movq	-5264(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2392
# BB#2384:                              # %land.lhs.true.7182
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2392
# BB#2385:                              # %if.then.7185
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2386
.LBB8_2386:                             # %for.cond.7186
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5248(%rbp)
	je	.LBB8_2391
# BB#2387:                              # %for.body.7188
                                        #   in Loop: Header=BB8_2386 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5280(%rbp)
	movq	-5280(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5280(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2389
# BB#2388:                              # %if.then.7195
                                        #   in Loop: Header=BB8_2386 Depth=2
	movl	$1, %esi
	movq	-5280(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2389:                             # %if.end.7196
                                        #   in Loop: Header=BB8_2386 Depth=2
	movb	-73(%rbp), %al
	movq	-5280(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2390:                              # %for.inc.7199
                                        #   in Loop: Header=BB8_2386 Depth=2
	movq	-5248(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5248(%rbp)
	jmp	.LBB8_2386
.LBB8_2391:                             # %for.end.7201
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2392
.LBB8_2392:                             # %if.end.7202
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2393
.LBB8_2393:                             # %do.end.7203
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2394:                             # %sw.bb.7204
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2395
.LBB8_2395:                             # %do.body.7205
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	a2ps_printers_flag_output_name_get
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -5288(%rbp)
	movq	-5288(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2397
# BB#2396:                              # %cond.true.7212
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7456(%rbp)       # 8-byte Spill
	jmp	.LBB8_2398
.LBB8_2397:                             # %cond.false.7213
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-5288(%rbp), %rax
	movq	%rax, -7456(%rbp)       # 8-byte Spill
.LBB8_2398:                             # %cond.end.7215
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7456(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5296(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2407
# BB#2399:                              # %land.lhs.true.7218
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2407
# BB#2400:                              # %if.then.7221
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2401
.LBB8_2401:                             # %for.cond.7222
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5296(%rbp)
	je	.LBB8_2406
# BB#2402:                              # %for.body.7224
                                        #   in Loop: Header=BB8_2401 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5304(%rbp)
	movq	-5304(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5304(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2404
# BB#2403:                              # %if.then.7231
                                        #   in Loop: Header=BB8_2401 Depth=2
	movl	$1, %esi
	movq	-5304(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2404:                             # %if.end.7232
                                        #   in Loop: Header=BB8_2401 Depth=2
	movb	-73(%rbp), %al
	movq	-5304(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2405:                              # %for.inc.7235
                                        #   in Loop: Header=BB8_2401 Depth=2
	movq	-5296(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5296(%rbp)
	jmp	.LBB8_2401
.LBB8_2406:                             # %for.end.7237
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2407
.LBB8_2407:                             # %if.end.7238
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5312(%rbp)
	movq	-5288(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -5316(%rbp)
	movq	-5312(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-5316(%rbp), %rdx
	addq	%rdx, %rax
	movq	-5312(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2409
# BB#2408:                              # %if.then.7248
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5312(%rbp), %rdi
	movl	-5316(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2409:                             # %if.end.7249
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5312(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rdi, -7464(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	a2ps_printers_flag_output_name_get
	movslq	-5316(%rbp), %rdx
	movq	-7464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movl	-5316(%rbp), %ecx
	movq	-5312(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2418
# BB#2410:                              # %land.lhs.true.7258
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2418
# BB#2411:                              # %if.then.7261
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2412
.LBB8_2412:                             # %for.cond.7262
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5296(%rbp)
	je	.LBB8_2417
# BB#2413:                              # %for.body.7264
                                        #   in Loop: Header=BB8_2412 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5328(%rbp)
	movq	-5328(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5328(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2415
# BB#2414:                              # %if.then.7271
                                        #   in Loop: Header=BB8_2412 Depth=2
	movl	$1, %esi
	movq	-5328(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2415:                             # %if.end.7272
                                        #   in Loop: Header=BB8_2412 Depth=2
	movb	-73(%rbp), %al
	movq	-5328(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2416:                              # %for.inc.7275
                                        #   in Loop: Header=BB8_2412 Depth=2
	movq	-5296(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5296(%rbp)
	jmp	.LBB8_2412
.LBB8_2417:                             # %for.end.7277
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2418
.LBB8_2418:                             # %if.end.7278
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2419
.LBB8_2419:                             # %do.end.7279
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2420:                             # %sw.bb.7280
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	a2ps_printers_flag_output_is_printer_get
	testb	$1, %al
	jne	.LBB8_2421
	jmp	.LBB8_2422
.LBB8_2421:                             # %if.then.7283
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.58, %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdx, -7472(%rbp)       # 8-byte Spill
	movq	%rax, -7480(%rbp)       # 8-byte Spill
	movq	%rsi, -7488(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdx
	movq	272(%rdx), %rdi
	movq	%rax, -7496(%rbp)       # 8-byte Spill
	callq	a2ps_printers_flag_output_name_get
	movq	-7480(%rbp), %rdi       # 8-byte Reload
	movq	-7488(%rbp), %rsi       # 8-byte Reload
	movq	-7472(%rbp), %rdx       # 8-byte Reload
	movq	-7496(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	callq	grow_user_string_obstack
	jmp	.LBB8_2448
.LBB8_2422:                             # %if.else.7287
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2423
.LBB8_2423:                             # %do.body.7288
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	a2ps_printers_flag_output_name_get
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, -5336(%rbp)
	movq	-5336(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2425
# BB#2424:                              # %cond.true.7296
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7504(%rbp)       # 8-byte Spill
	jmp	.LBB8_2426
.LBB8_2425:                             # %cond.false.7297
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-5336(%rbp), %rax
	movq	%rax, -7504(%rbp)       # 8-byte Spill
.LBB8_2426:                             # %cond.end.7299
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7504(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5344(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2435
# BB#2427:                              # %land.lhs.true.7302
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2435
# BB#2428:                              # %if.then.7305
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2429
.LBB8_2429:                             # %for.cond.7306
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5344(%rbp)
	je	.LBB8_2434
# BB#2430:                              # %for.body.7308
                                        #   in Loop: Header=BB8_2429 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5352(%rbp)
	movq	-5352(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5352(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2432
# BB#2431:                              # %if.then.7315
                                        #   in Loop: Header=BB8_2429 Depth=2
	movl	$1, %esi
	movq	-5352(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2432:                             # %if.end.7316
                                        #   in Loop: Header=BB8_2429 Depth=2
	movb	-73(%rbp), %al
	movq	-5352(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2433:                              # %for.inc.7319
                                        #   in Loop: Header=BB8_2429 Depth=2
	movq	-5344(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5344(%rbp)
	jmp	.LBB8_2429
.LBB8_2434:                             # %for.end.7321
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2435
.LBB8_2435:                             # %if.end.7322
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5360(%rbp)
	movq	-5336(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -5364(%rbp)
	movq	-5360(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-5364(%rbp), %rdx
	addq	%rdx, %rax
	movq	-5360(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2437
# BB#2436:                              # %if.then.7332
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5360(%rbp), %rdi
	movl	-5364(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2437:                             # %if.end.7333
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5360(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rdi, -7512(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	a2ps_printers_flag_output_name_get
	movslq	-5364(%rbp), %rdx
	movq	-7512(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movl	-5364(%rbp), %ecx
	movq	-5360(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2446
# BB#2438:                              # %land.lhs.true.7342
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2446
# BB#2439:                              # %if.then.7345
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2440
.LBB8_2440:                             # %for.cond.7346
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5344(%rbp)
	je	.LBB8_2445
# BB#2441:                              # %for.body.7348
                                        #   in Loop: Header=BB8_2440 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5376(%rbp)
	movq	-5376(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5376(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2443
# BB#2442:                              # %if.then.7355
                                        #   in Loop: Header=BB8_2440 Depth=2
	movl	$1, %esi
	movq	-5376(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2443:                             # %if.end.7356
                                        #   in Loop: Header=BB8_2440 Depth=2
	movb	-73(%rbp), %al
	movq	-5376(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2444:                              # %for.inc.7359
                                        #   in Loop: Header=BB8_2440 Depth=2
	movq	-5344(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5344(%rbp)
	jmp	.LBB8_2440
.LBB8_2445:                             # %for.end.7361
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2446
.LBB8_2446:                             # %if.end.7362
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2447
.LBB8_2447:                             # %do.end.7363
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2448
.LBB8_2448:                             # %if.end.7364
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2449:                             # %sw.bb.7365
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	1624(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	112(%rax), %edx
	callq	page_range_to_buffer
# BB#2450:                              # %do.body.7369
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -5384(%rbp)
	movq	-5384(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2452
# BB#2451:                              # %cond.true.7376
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7520(%rbp)       # 8-byte Spill
	jmp	.LBB8_2453
.LBB8_2452:                             # %cond.false.7377
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-5384(%rbp), %rax
	movq	%rax, -7520(%rbp)       # 8-byte Spill
.LBB8_2453:                             # %cond.end.7379
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7520(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5392(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2462
# BB#2454:                              # %land.lhs.true.7382
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2462
# BB#2455:                              # %if.then.7385
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2456
.LBB8_2456:                             # %for.cond.7386
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5392(%rbp)
	je	.LBB8_2461
# BB#2457:                              # %for.body.7388
                                        #   in Loop: Header=BB8_2456 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5400(%rbp)
	movq	-5400(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5400(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2459
# BB#2458:                              # %if.then.7395
                                        #   in Loop: Header=BB8_2456 Depth=2
	movl	$1, %esi
	movq	-5400(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2459:                             # %if.end.7396
                                        #   in Loop: Header=BB8_2456 Depth=2
	movb	-73(%rbp), %al
	movq	-5400(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2460:                              # %for.inc.7399
                                        #   in Loop: Header=BB8_2456 Depth=2
	movq	-5392(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5392(%rbp)
	jmp	.LBB8_2456
.LBB8_2461:                             # %for.end.7401
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2462
.LBB8_2462:                             # %if.end.7402
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5408(%rbp)
	movq	-5384(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -5412(%rbp)
	movq	-5408(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-5412(%rbp), %rdx
	addq	%rdx, %rax
	movq	-5408(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2464
# BB#2463:                              # %if.then.7412
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5408(%rbp), %rdi
	movl	-5412(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2464:                             # %if.end.7413
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-5408(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-5412(%rbp), %rdx
	callq	memcpy
	movl	-5412(%rbp), %ecx
	movq	-5408(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2473
# BB#2465:                              # %land.lhs.true.7421
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2473
# BB#2466:                              # %if.then.7424
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2467
.LBB8_2467:                             # %for.cond.7425
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5392(%rbp)
	je	.LBB8_2472
# BB#2468:                              # %for.body.7427
                                        #   in Loop: Header=BB8_2467 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5424(%rbp)
	movq	-5424(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5424(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2470
# BB#2469:                              # %if.then.7434
                                        #   in Loop: Header=BB8_2467 Depth=2
	movl	$1, %esi
	movq	-5424(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2470:                             # %if.end.7435
                                        #   in Loop: Header=BB8_2467 Depth=2
	movb	-73(%rbp), %al
	movq	-5424(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2471:                              # %for.inc.7438
                                        #   in Loop: Header=BB8_2467 Depth=2
	movq	-5392(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5392(%rbp)
	jmp	.LBB8_2467
.LBB8_2472:                             # %for.end.7440
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2473
.LBB8_2473:                             # %if.end.7441
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2474
.LBB8_2474:                             # %do.end.7442
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2475:                             # %sw.bb.7443
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	136(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	132(%rax), %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -7524(%rbp)       # 4-byte Spill
# BB#2476:                              # %do.body.7449
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -5432(%rbp)
	movq	-5432(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2478
# BB#2477:                              # %cond.true.7456
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7536(%rbp)       # 8-byte Spill
	jmp	.LBB8_2479
.LBB8_2478:                             # %cond.false.7457
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-5432(%rbp), %rax
	movq	%rax, -7536(%rbp)       # 8-byte Spill
.LBB8_2479:                             # %cond.end.7459
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7536(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5440(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2488
# BB#2480:                              # %land.lhs.true.7462
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2488
# BB#2481:                              # %if.then.7465
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2482
.LBB8_2482:                             # %for.cond.7466
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5440(%rbp)
	je	.LBB8_2487
# BB#2483:                              # %for.body.7468
                                        #   in Loop: Header=BB8_2482 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5448(%rbp)
	movq	-5448(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5448(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2485
# BB#2484:                              # %if.then.7475
                                        #   in Loop: Header=BB8_2482 Depth=2
	movl	$1, %esi
	movq	-5448(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2485:                             # %if.end.7476
                                        #   in Loop: Header=BB8_2482 Depth=2
	movb	-73(%rbp), %al
	movq	-5448(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2486:                              # %for.inc.7479
                                        #   in Loop: Header=BB8_2482 Depth=2
	movq	-5440(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5440(%rbp)
	jmp	.LBB8_2482
.LBB8_2487:                             # %for.end.7481
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2488
.LBB8_2488:                             # %if.end.7482
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5456(%rbp)
	movq	-5432(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -5460(%rbp)
	movq	-5456(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-5460(%rbp), %rdx
	addq	%rdx, %rax
	movq	-5456(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2490
# BB#2489:                              # %if.then.7492
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5456(%rbp), %rdi
	movl	-5460(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2490:                             # %if.end.7493
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-5456(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-5460(%rbp), %rdx
	callq	memcpy
	movl	-5460(%rbp), %ecx
	movq	-5456(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2499
# BB#2491:                              # %land.lhs.true.7501
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2499
# BB#2492:                              # %if.then.7504
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2493
.LBB8_2493:                             # %for.cond.7505
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5440(%rbp)
	je	.LBB8_2498
# BB#2494:                              # %for.body.7507
                                        #   in Loop: Header=BB8_2493 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5472(%rbp)
	movq	-5472(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5472(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2496
# BB#2495:                              # %if.then.7514
                                        #   in Loop: Header=BB8_2493 Depth=2
	movl	$1, %esi
	movq	-5472(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2496:                             # %if.end.7515
                                        #   in Loop: Header=BB8_2493 Depth=2
	movb	-73(%rbp), %al
	movq	-5472(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2497:                              # %for.inc.7518
                                        #   in Loop: Header=BB8_2493 Depth=2
	movq	-5440(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5440(%rbp)
	jmp	.LBB8_2493
.LBB8_2498:                             # %for.end.7520
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2499
.LBB8_2499:                             # %if.end.7521
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2500
.LBB8_2500:                             # %do.end.7522
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2501:                             # %sw.bb.7523
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.18, %rsi
	leaq	-592(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movl	8(%rax), %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -7540(%rbp)       # 4-byte Spill
# BB#2502:                              # %do.body.7527
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rdi
	callq	strlen
	movq	%rax, -5480(%rbp)
	movq	-5480(%rbp), %rax
	cmpq	-1368(%rbp), %rax
	jbe	.LBB8_2504
# BB#2503:                              # %cond.true.7534
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -7552(%rbp)       # 8-byte Spill
	jmp	.LBB8_2505
.LBB8_2504:                             # %cond.false.7535
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-1368(%rbp), %rax
	subq	-5480(%rbp), %rax
	movq	%rax, -7552(%rbp)       # 8-byte Spill
.LBB8_2505:                             # %cond.end.7537
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-7552(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5488(%rbp)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2514
# BB#2506:                              # %land.lhs.true.7540
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2514
# BB#2507:                              # %if.then.7543
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2508
.LBB8_2508:                             # %for.cond.7544
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5488(%rbp)
	je	.LBB8_2513
# BB#2509:                              # %for.body.7546
                                        #   in Loop: Header=BB8_2508 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5496(%rbp)
	movq	-5496(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5496(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2511
# BB#2510:                              # %if.then.7553
                                        #   in Loop: Header=BB8_2508 Depth=2
	movl	$1, %esi
	movq	-5496(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2511:                             # %if.end.7554
                                        #   in Loop: Header=BB8_2508 Depth=2
	movb	-73(%rbp), %al
	movq	-5496(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2512:                              # %for.inc.7557
                                        #   in Loop: Header=BB8_2508 Depth=2
	movq	-5488(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5488(%rbp)
	jmp	.LBB8_2508
.LBB8_2513:                             # %for.end.7559
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2514
.LBB8_2514:                             # %if.end.7560
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5504(%rbp)
	movq	-5480(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -5508(%rbp)
	movq	-5504(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-5508(%rbp), %rdx
	addq	%rdx, %rax
	movq	-5504(%rbp), %rdx
	cmpq	32(%rdx), %rax
	jbe	.LBB8_2516
# BB#2515:                              # %if.then.7570
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-5504(%rbp), %rdi
	movl	-5508(%rbp), %esi
	callq	_obstack_newchunk
.LBB8_2516:                             # %if.end.7571
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-592(%rbp), %rsi
	movq	-5504(%rbp), %rax
	movq	24(%rax), %rdi
	movslq	-5508(%rbp), %rdx
	callq	memcpy
	movl	-5508(%rbp), %ecx
	movq	-5504(%rbp), %rax
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2525
# BB#2517:                              # %land.lhs.true.7579
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2525
# BB#2518:                              # %if.then.7582
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2519
.LBB8_2519:                             # %for.cond.7583
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -5488(%rbp)
	je	.LBB8_2524
# BB#2520:                              # %for.body.7585
                                        #   in Loop: Header=BB8_2519 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5520(%rbp)
	movq	-5520(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5520(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2522
# BB#2521:                              # %if.then.7592
                                        #   in Loop: Header=BB8_2519 Depth=2
	movl	$1, %esi
	movq	-5520(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2522:                             # %if.end.7593
                                        #   in Loop: Header=BB8_2519 Depth=2
	movb	-73(%rbp), %al
	movq	-5520(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2523:                              # %for.inc.7596
                                        #   in Loop: Header=BB8_2519 Depth=2
	movq	-5488(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -5488(%rbp)
	jmp	.LBB8_2519
.LBB8_2524:                             # %for.end.7598
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2525
.LBB8_2525:                             # %if.end.7599
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2526
.LBB8_2526:                             # %do.end.7600
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2528
.LBB8_2527:                             # %sw.default.7601
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.59, %r8
	movq	-32(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r9
	movzbl	(%r9,%rdx), %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %r10
	movzbl	(%r10,%rdx), %r11d
	subq	$16, %rsp
	movq	%rax, %rdx
	movl	%r11d, (%rsp)
	movb	$0, %al
	callq	error
	addq	$16, %rsp
.LBB8_2528:                             # %sw.epilog.7607
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2529
.LBB8_2529:                             # %sw.epilog.7608
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	$0, -1368(%rbp)
	movl	$1, -1372(%rbp)
	jmp	.LBB8_2549
.LBB8_2530:                             # %if.else.7609
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2531
.LBB8_2531:                             # %do.body.7610
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2536
# BB#2532:                              # %land.lhs.true.7613
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jge	.LBB8_2536
# BB#2533:                              # %if.then.7616
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5536(%rbp)
	movq	-5536(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5536(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2535
# BB#2534:                              # %if.then.7623
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-5536(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2535:                             # %if.end.7624
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-5536(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rax)
	movb	%dl, (%rcx)
.LBB8_2536:                             # %if.end.7628
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -5524(%rbp)
.LBB8_2537:                             # %for.cond.7629
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-5524(%rbp), %eax
	movq	-1368(%rbp), %rcx
	movl	%ecx, %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB8_2542
# BB#2538:                              # %for.body.7634
                                        #   in Loop: Header=BB8_2537 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -5544(%rbp)
	movq	-5544(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5544(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2540
# BB#2539:                              # %if.then.7641
                                        #   in Loop: Header=BB8_2537 Depth=2
	movl	$1, %esi
	movq	-5544(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2540:                             # %if.end.7642
                                        #   in Loop: Header=BB8_2537 Depth=2
	movb	-73(%rbp), %al
	movq	-5544(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rcx)
	movb	%al, (%rdx)
# BB#2541:                              # %for.inc.7645
                                        #   in Loop: Header=BB8_2537 Depth=2
	movl	-5524(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5524(%rbp)
	jmp	.LBB8_2537
.LBB8_2542:                             # %for.end.7647
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpq	$0, -1368(%rbp)
	je	.LBB8_2544
# BB#2543:                              # %lor.lhs.false.7649
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, -1372(%rbp)
	jle	.LBB8_2547
.LBB8_2544:                             # %if.then.7652
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -5552(%rbp)
	movq	-5552(%rbp), %rax
	movq	24(%rax), %rax
	addq	$1, %rax
	movq	-5552(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jbe	.LBB8_2546
# BB#2545:                              # %if.then.7659
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$1, %esi
	movq	-5552(%rbp), %rdi
	callq	_obstack_newchunk
.LBB8_2546:                             # %if.end.7660
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-5552(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, 24(%rax)
	movb	%dl, (%rcx)
.LBB8_2547:                             # %if.end.7664
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2548
.LBB8_2548:                             # %do.end.7665
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2549
.LBB8_2549:                             # %if.end.7666
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_2550
.LBB8_2550:                             # %for.inc.7667
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB8_1
.LBB8_2551:                             # %for.end.7669
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	grow_user_string_obstack, .Lfunc_end8-grow_user_string_obstack
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1859
	.quad	.LBB8_1885
	.quad	.LBB8_1911
	.quad	.LBB8_1937

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	":(){}"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\t "
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Known Variables"
	.size	.L.str.2, 16

	.type	expand_user_string.first_time,@object # @expand_user_string.first_time
	.data
	.align	4
expand_user_string.first_time:
	.long	1                       # 0x1
	.size	expand_user_string.first_time, 4

	.type	expand_user_string.user_string_stack,@object # @expand_user_string.user_string_stack
	.local	expand_user_string.user_string_stack
	.comm	expand_user_string.user_string_stack,88,8
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Expanding of %s user string (`%s')\n"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Expansion of %s (`%s') is `%s'\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Printed by %s"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"user.name"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"user.host"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Printed by %s from %s"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"cannot get current working directory"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%d:%02d:%02d"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s: too long argument for %s escape"
	.size	.L.str.11, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%D{}"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%02d-%02d-%02d"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%b %d, %y"
	.size	.L.str.14, 10

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%A %B %d, %Y"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%d.%d.%d"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"user.login"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%d"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: unknown `%s' escape `%c' (%d)"
	.size	.L.str.19, 34

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%p"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Page %d"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Page %d/%c"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%d:%02d%s"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"pm"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"am"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%d:%02d"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s %s"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"a2ps"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"4.14"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%02d/%02d/%02d"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%"
	.size	.L.str.32, 2

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s: missing `%c' for %s%c escape"
	.size	.L.str.33, 33

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"$("
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"$()"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"${"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"${}"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s: invalid separator `%s%c' for `%s' escape"
	.size	.L.str.38, 45

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	":"
	.size	.L.str.39, 2

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s: invalid argument for %s%c escape"
	.size	.L.str.40, 37

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"$["
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"$D{}"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"$l"
	.size	.L.str.43, 3

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%d-%d"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"$p"
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Page %d/%d"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"$s"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"$"
	.size	.L.str.48, 2

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"#("
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"#()"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"#{"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"#{}"
	.size	.L.str.52, 4

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"ps"
	.size	.L.str.53, 3

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"#?"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"#!"
	.size	.L.str.55, 3

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"#f"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"a2_"
	.size	.L.str.57, 4

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"output command"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"#"
	.size	.L.str.59, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
