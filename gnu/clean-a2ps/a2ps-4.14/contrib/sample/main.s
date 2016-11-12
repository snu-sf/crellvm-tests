	.text
	.file	"main.bc"
	.globl	foo
	.align	16, 0x90
	.type	foo,@function
foo:                                    # @foo
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
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	b, %eax
	subl	c, %eax
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$5, %eax
	movl	a, %ecx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-12(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	b, %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, b
	movslq	%esi, %r8
	movl	%eax, f(,%r8,4)
	jmp	.LBB0_1
.LBB0_3:                                # %for.end
	jmp	.LBB0_4
.LBB0_4:                                # %for.cond.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movl	$0, d
	movl	c, %eax
	shll	$1, %eax
	movl	%eax, g
	cmpl	$0, %eax
	je	.LBB0_11
# BB#5:                                 # %for.body.3
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	c, %eax
	movl	%eax, b
.LBB0_6:                                # %for.cond.4
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	b, %rax
	movl	f(,%rax,4), %ecx
	imull	a, %ecx
	addl	d, %ecx
	movl	%ecx, d
	movl	d, %eax
	movl	g, %ecx
	addl	$-1, %ecx
	movl	%ecx, g
	cltd
	idivl	%ecx
	movslq	b, %rsi
	movl	%edx, f(,%rsi,4)
	movl	g, %ecx
	movl	%ecx, %edx
	addl	$-1, %edx
	movl	%edx, g
	movl	d, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, d
	movl	b, %eax
	addl	$-1, %eax
	movl	%eax, b
	cmpl	$0, %eax
	je	.LBB0_9
# BB#7:                                 # %for.body.14
                                        #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_8
.LBB0_8:                                # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	b, %eax
	imull	d, %eax
	movl	%eax, d
	jmp	.LBB0_6
.LBB0_9:                                # %for.end.16
                                        #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               # %for.inc.17
                                        #   in Loop: Header=BB0_4 Depth=1
	movabsq	$buf, %rdi
	movabsq	$.L.str, %rsi
	movl	c, %eax
	subl	$14, %eax
	movl	%eax, c
	movl	e, %eax
	movl	d, %ecx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	a
	movl	-16(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movabsq	$buf, %rsi
	movl	$5, %edx
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	a2ps_print_string
	movl	d, %eax
	cltd
	idivl	a
	movl	%edx, e
	jmp	.LBB0_4
.LBB0_11:                               # %for.end.22
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	movl	$0, -4(%rbp)
	callq	a2ps_job_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	a2_read_sys_config
	movq	-24(%rbp), %rdi
	callq	a2ps_job_finalize
	movq	-24(%rbp), %rdi
	callq	a2ps_open_output_session
	movabsq	$.L.str.2, %rsi
	movq	-24(%rbp), %rdi
	callq	a2ps_open_input_session
	movl	$0, -12(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	cmpl	$5, -12(%rbp)
	jge	.LBB1_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -8(%rbp)
.LBB1_3:                                # %for.cond.1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$9, -8(%rbp)
	jg	.LBB1_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB1_3 Depth=2
	movabsq	$.L.str.3, %rsi
	movq	-24(%rbp), %rdi
	movl	-8(%rbp), %edx
	callq	a2ps_print_string
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc.4
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_1
.LBB1_8:                                # %for.end.6
	movabsq	$.L.str.4, %rsi
	movl	$7, %edx
	movq	-24(%rbp), %rdi
	callq	a2ps_print_string
	movq	-24(%rbp), %rdi
	callq	a2ps_close_input_session
	movabsq	$.L.str.5, %rsi
	movq	-24(%rbp), %rdi
	callq	a2ps_open_input_session
	movl	$112, %esi
	movl	$6, %edx
	movq	-24(%rbp), %rdi
	callq	a2ps_print_char
	movabsq	$.L.str.6, %rsi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	callq	a2ps_print_string
	movq	-24(%rbp), %rdi
	callq	foo
	movq	-24(%rbp), %rdi
	callq	a2ps_close_input_session
	movq	-24(%rbp), %rdi
	callq	a2ps_close_output_session
	movq	-24(%rbp), %rdi
	callq	a2ps_job_free
	xorl	%edi, %edi
	callq	exit
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc

	.type	a,@object               # @a
	.data
	.globl	a
	.align	4
a:
	.long	10000                   # 0x2710
	.size	a, 4

	.type	c,@object               # @c
	.globl	c
	.align	4
c:
	.long	8400                    # 0x20d0
	.size	c, 4

	.type	b,@object               # @b
	.comm	b,4,4
	.type	f,@object               # @f
	.comm	f,33604,16
	.type	d,@object               # @d
	.comm	d,4,4
	.type	g,@object               # @g
	.comm	g,4,4
	.type	buf,@object             # @buf
	.comm	buf,10,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.4d"
	.size	.L.str, 5

	.type	e,@object               # @e
	.comm	e,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Sample"
	.size	.L.str.1, 7

	.type	program_name,@object    # @program_name
	.data
	.globl	program_name
	.align	8
program_name:
	.quad	.L.str.1
	.size	program_name, 8

	.type	program_invocation_name,@object # @program_invocation_name
	.globl	program_invocation_name
	.align	8
program_invocation_name:
	.quad	.L.str.1
	.size	program_invocation_name, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Sample Input"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Hello world\n"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"This is an Error"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Surprise!"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" = "
	.size	.L.str.6, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
