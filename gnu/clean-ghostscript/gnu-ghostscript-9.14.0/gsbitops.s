	.text
	.file	"gsbitops.bc"
	.globl	bits_fill_rectangle
	.align	16, 0x90
	.type	bits_fill_rectangle,@function
bits_fill_rectangle:                    # @bits_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%esi, %eax
	sarl	$3, %eax
	andl	$-4, %eax
	movslq	%eax, %r9
	leaq	(%rdi,%r9), %rax
	andl	$31, %esi
	leal	(%r8,%rsi), %ebp
	movl	%ebp, %r10d
	addl	$-33, %r10d
	js	.LBB0_1
# BB#18:                                # %if.else.34
	movl	%r10d, %r8d
	sarl	$5, %r8d
	movl	%esi, %esi
	movl	mono_fill_masks(,%rsi,4), %r12d
	movl	%r10d, %esi
	andl	$31, %esi
	incl	%esi
	movl	mono_fill_masks(,%rsi,4), %r11d
	movl	%r11d, %r15d
	notl	%r15d
	cmpl	$1, %r8d
	jne	.LBB0_19
# BB#34:                                # %sw.bb.90
	testl	%ecx, %ecx
	jne	.LBB0_35
# BB#40:                                # %do.body.93.preheader
	notl	%r12d
	movl	%edx, %ecx
	testb	$1, %bl
	movl	%ebx, %edx
	je	.LBB0_42
# BB#41:                                # %do.body.93.prol
	andl	%r12d, (%rax)
	movl	$0, 4(%rax)
	andl	%r11d, 8(%rax)
	addq	%rcx, %rax
	leal	-1(%rbx), %edx
.LBB0_42:                               # %do.body.93.preheader.split
	cmpl	$1, %ebx
	je	.LBB0_56
	.align	16, 0x90
.LBB0_43:                               # %do.body.93
                                        # =>This Inner Loop Header: Depth=1
	andl	%r12d, (%rax)
	movl	$0, 4(%rax)
	andl	%r11d, 8(%rax)
	andl	%r12d, (%rax,%rcx)
	movl	$0, 4(%rax,%rcx)
	andl	%r11d, 8(%rax,%rcx)
	leaq	(%rax,%rcx), %rax
	addq	%rcx, %rax
	addl	$-2, %edx
	jne	.LBB0_43
	jmp	.LBB0_56
.LBB0_1:                                # %if.then
	movl	%ebp, %edi
	movl	mono_fill_masks(,%rdi,4), %edi
	movl	%esi, %esi
	movl	mono_fill_masks(,%rsi,4), %ebp
	testl	%ecx, %ecx
	jne	.LBB0_2
# BB#8:                                 # %do.body.preheader
	notl	%ebp
	orl	%ebp, %edi
	movl	%edx, %ecx
	leal	-1(%rbx), %edx
	testb	$3, %bl
	je	.LBB0_11
# BB#9:                                 # %do.body.prol.preheader
	movl	%ebx, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB0_10:                               # %do.body.prol
                                        # =>This Inner Loop Header: Depth=1
	andl	%edi, (%rax)
	addq	%rcx, %rax
	decl	%ebx
	incl	%esi
	jne	.LBB0_10
.LBB0_11:                               # %do.body.preheader.split
	cmpl	$3, %edx
	jb	.LBB0_56
	.align	16, 0x90
.LBB0_12:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	andl	%edi, (%rax)
	andl	%edi, (%rax,%rcx)
	addq	%rcx, %rax
	andl	%edi, (%rcx,%rax)
	addq	%rcx, %rax
	andl	%edi, (%rcx,%rax)
	addq	%rcx, %rax
	addq	%rcx, %rax
	addl	$-4, %ebx
	jne	.LBB0_12
	jmp	.LBB0_56
.LBB0_19:                               # %if.else.34
	testl	%r8d, %r8d
	jne	.LBB0_48
# BB#20:                                # %sw.bb
	testl	%ecx, %ecx
	jne	.LBB0_21
# BB#26:                                # %do.body.45.preheader
	notl	%r12d
	movl	%edx, %ecx
	testb	$1, %bl
	movl	%ebx, %edx
	je	.LBB0_28
# BB#27:                                # %do.body.45.prol
	andl	%r12d, (%rax)
	andl	%r11d, 4(%rax)
	addq	%rcx, %rax
	leal	-1(%rbx), %edx
.LBB0_28:                               # %do.body.45.preheader.split
	cmpl	$1, %ebx
	je	.LBB0_56
	.align	16, 0x90
.LBB0_29:                               # %do.body.45
                                        # =>This Inner Loop Header: Depth=1
	andl	%r12d, (%rax)
	andl	%r11d, 4(%rax)
	andl	%r12d, (%rax,%rcx)
	andl	%r11d, 4(%rax,%rcx)
	leaq	(%rax,%rcx), %rax
	addq	%rcx, %rax
	addl	$-2, %edx
	jne	.LBB0_29
	jmp	.LBB0_56
.LBB0_2:                                # %if.then
	movl	%edi, %esi
	notl	%esi
	andl	%ebp, %esi
	cmpl	$-1, %ecx
	jne	.LBB0_13
# BB#3:                                 # %do.body.14.preheader
	movl	%edx, %ecx
	leal	-1(%rbx), %edx
	testb	$3, %bl
	je	.LBB0_6
# BB#4:                                 # %do.body.14.prol.preheader
	movl	%ebx, %edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB0_5:                                # %do.body.14.prol
                                        # =>This Inner Loop Header: Depth=1
	orl	%esi, (%rax)
	addq	%rcx, %rax
	decl	%ebx
	incl	%edi
	jne	.LBB0_5
.LBB0_6:                                # %do.body.14.preheader.split
	cmpl	$3, %edx
	jb	.LBB0_56
	.align	16, 0x90
.LBB0_7:                                # %do.body.14
                                        # =>This Inner Loop Header: Depth=1
	orl	%esi, (%rax)
	orl	%esi, (%rax,%rcx)
	addq	%rcx, %rax
	orl	%esi, (%rcx,%rax)
	addq	%rcx, %rax
	orl	%esi, (%rcx,%rax)
	addq	%rcx, %rax
	addq	%rcx, %rax
	addl	$-4, %ebx
	jne	.LBB0_7
	jmp	.LBB0_56
.LBB0_35:                               # %sw.bb.90
	cmpl	$-1, %ecx
	jne	.LBB0_44
# BB#36:                                # %do.body.109.preheader
	movl	%edx, %ecx
	testb	$1, %bl
	movl	%ebx, %edx
	je	.LBB0_38
# BB#37:                                # %do.body.109.prol
	orl	%r12d, (%rax)
	movl	$-1, 4(%rax)
	orl	%r15d, 8(%rax)
	addq	%rcx, %rax
	leal	-1(%rbx), %edx
.LBB0_38:                               # %do.body.109.preheader.split
	cmpl	$1, %ebx
	je	.LBB0_56
	.align	16, 0x90
.LBB0_39:                               # %do.body.109
                                        # =>This Inner Loop Header: Depth=1
	orl	%r12d, (%rax)
	movl	$-1, 4(%rax)
	orl	%r15d, 8(%rax)
	orl	%r12d, (%rax,%rcx)
	movl	$-1, 4(%rax,%rcx)
	orl	%r15d, 8(%rax,%rcx)
	leaq	(%rax,%rcx), %rax
	addq	%rcx, %rax
	addl	$-2, %edx
	jne	.LBB0_39
	jmp	.LBB0_56
.LBB0_48:                               # %sw.default
	sarl	$3, %r10d
	andl	$-4, %r10d
	testl	%ecx, %ecx
	jne	.LBB0_49
# BB#52:                                # %do.body.145.preheader
	notl	%r12d
	movl	%r10d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	incl	%r8d
	movslq	%r8d, %r15
	leaq	4(%r9,%rdi), %rbp
	movl	%edx, %r13d
	.align	16, 0x90
.LBB0_53:                               # %do.body.145
                                        # =>This Inner Loop Header: Depth=1
	andl	%r12d, -4(%rbp)
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %r14d
	movl	%r11d, %r12d
	callq	memset
	movl	%r12d, %r11d
	movl	%r14d, %r12d
	andl	%r11d, -4(%rbp,%r15,4)
	addq	%r13, %rbp
	decl	%ebx
	jne	.LBB0_53
	jmp	.LBB0_56
.LBB0_13:                               # %do.body.22.preheader
	notl	%ebp
	orl	%ebp, %edi
	andl	%ecx, %esi
	movl	%edx, %ecx
	leal	-1(%rbx), %r8d
	testb	$3, %bl
	je	.LBB0_16
# BB#14:                                # %do.body.22.prol.preheader
	movl	%ebx, %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB0_15:                               # %do.body.22.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edx
	andl	%edi, %edx
	orl	%esi, %edx
	movl	%edx, (%rax)
	addq	%rcx, %rax
	decl	%ebx
	incl	%ebp
	jne	.LBB0_15
.LBB0_16:                               # %do.body.22.preheader.split
	cmpl	$3, %r8d
	jb	.LBB0_56
	.align	16, 0x90
.LBB0_17:                               # %do.body.22
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edx
	andl	%edi, %edx
	orl	%esi, %edx
	movl	%edx, (%rax)
	movl	(%rax,%rcx), %edx
	andl	%edi, %edx
	orl	%esi, %edx
	movl	%edx, (%rax,%rcx)
	leaq	(%rax,%rcx), %rax
	movl	(%rcx,%rax), %edx
	andl	%edi, %edx
	orl	%esi, %edx
	movl	%edx, (%rcx,%rax)
	leaq	(%rax,%rcx), %rax
	movl	(%rcx,%rax), %edx
	andl	%edi, %edx
	orl	%esi, %edx
	movl	%edx, (%rcx,%rax)
	leaq	(%rax,%rcx), %rax
	addq	%rcx, %rax
	addl	$-4, %ebx
	jne	.LBB0_17
	jmp	.LBB0_56
.LBB0_21:                               # %sw.bb
	cmpl	$-1, %ecx
	jne	.LBB0_30
# BB#22:                                # %do.body.60.preheader
	movl	%edx, %ecx
	testb	$1, %bl
	movl	%ebx, %edx
	je	.LBB0_24
# BB#23:                                # %do.body.60.prol
	orl	%r12d, (%rax)
	orl	%r15d, 4(%rax)
	addq	%rcx, %rax
	leal	-1(%rbx), %edx
.LBB0_24:                               # %do.body.60.preheader.split
	cmpl	$1, %ebx
	je	.LBB0_56
	.align	16, 0x90
.LBB0_25:                               # %do.body.60
                                        # =>This Inner Loop Header: Depth=1
	orl	%r12d, (%rax)
	orl	%r15d, 4(%rax)
	orl	%r12d, (%rax,%rcx)
	orl	%r15d, 4(%rax,%rcx)
	leaq	(%rax,%rcx), %rax
	addq	%rcx, %rax
	addl	$-2, %edx
	jne	.LBB0_25
	jmp	.LBB0_56
.LBB0_44:                               # %do.body.121.preheader
	movl	%r12d, %esi
	notl	%esi
	andl	%ecx, %r12d
	andl	%ecx, %r15d
	movl	%edx, %edx
	testb	$1, %bl
	movl	%ebx, %edi
	je	.LBB0_46
# BB#45:                                # %do.body.121.prol
	movl	(%rax), %edi
	andl	%esi, %edi
	orl	%r12d, %edi
	movl	%edi, (%rax)
	movl	%ecx, 4(%rax)
	movl	8(%rax), %edi
	andl	%r11d, %edi
	orl	%r15d, %edi
	movl	%edi, 8(%rax)
	addq	%rdx, %rax
	leal	-1(%rbx), %edi
.LBB0_46:                               # %do.body.121.preheader.split
	cmpl	$1, %ebx
	je	.LBB0_56
	.align	16, 0x90
.LBB0_47:                               # %do.body.121
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ebp
	andl	%esi, %ebp
	orl	%r12d, %ebp
	movl	%ebp, (%rax)
	movl	%ecx, 4(%rax)
	movl	8(%rax), %ebp
	andl	%r11d, %ebp
	orl	%r15d, %ebp
	movl	%ebp, 8(%rax)
	movl	(%rax,%rdx), %ebp
	andl	%esi, %ebp
	orl	%r12d, %ebp
	movl	%ebp, (%rax,%rdx)
	movl	%ecx, 4(%rax,%rdx)
	movl	8(%rax,%rdx), %ebp
	andl	%r11d, %ebp
	orl	%r15d, %ebp
	movl	%ebp, 8(%rax,%rdx)
	leaq	(%rax,%rdx), %rax
	addq	%rdx, %rax
	addl	$-2, %edi
	jne	.LBB0_47
	jmp	.LBB0_56
.LBB0_49:                               # %sw.default
	cmpl	$-1, %ecx
	jne	.LBB0_54
# BB#50:                                # %do.body.164.preheader
	movl	%r10d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	incl	%r8d
	movslq	%r8d, %r13
	leaq	4(%r9,%rdi), %rbp
	movl	%edx, %r14d
	.align	16, 0x90
.LBB0_51:                               # %do.body.164
                                        # =>This Inner Loop Header: Depth=1
	orl	%r12d, -4(%rbp)
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	32(%rsp), %rdx          # 8-byte Reload
	callq	memset
	orl	%r15d, -4(%rbp,%r13,4)
	addq	%r14, %rbp
	decl	%ebx
	jne	.LBB0_51
	jmp	.LBB0_56
.LBB0_30:                               # %do.body.71.preheader
	movl	%r12d, %esi
	notl	%esi
	andl	%ecx, %r12d
	andl	%ecx, %r15d
	movl	%edx, %ecx
	testb	$1, %bl
	movl	%ebx, %edx
	je	.LBB0_32
# BB#31:                                # %do.body.71.prol
	movl	(%rax), %edx
	andl	%esi, %edx
	orl	%r12d, %edx
	movl	%edx, (%rax)
	movl	4(%rax), %edx
	andl	%r11d, %edx
	orl	%r15d, %edx
	movl	%edx, 4(%rax)
	addq	%rcx, %rax
	leal	-1(%rbx), %edx
.LBB0_32:                               # %do.body.71.preheader.split
	cmpl	$1, %ebx
	je	.LBB0_56
	.align	16, 0x90
.LBB0_33:                               # %do.body.71
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edi
	andl	%esi, %edi
	orl	%r12d, %edi
	movl	%edi, (%rax)
	movl	4(%rax), %edi
	andl	%r11d, %edi
	orl	%r15d, %edi
	movl	%edi, 4(%rax)
	movl	(%rax,%rcx), %edi
	andl	%esi, %edi
	orl	%r12d, %edi
	movl	%edi, (%rax,%rcx)
	movl	4(%rax,%rcx), %edi
	andl	%r11d, %edi
	orl	%r15d, %edi
	movl	%edi, 4(%rax,%rcx)
	leaq	(%rax,%rcx), %rax
	addq	%rcx, %rax
	addl	$-2, %edx
	jne	.LBB0_33
	jmp	.LBB0_56
.LBB0_54:                               # %do.body.180.preheader
	movl	%r12d, %eax
	notl	%eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	andl	%ecx, %r12d
	movzbl	%cl, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%r10d, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	incl	%r8d
	andl	%ecx, %r15d
	movslq	%r8d, %r14
	leaq	4(%r9,%rdi), %rbp
	movl	%edx, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB0_55:                               # %do.body.180
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	andl	32(%rsp), %eax          # 4-byte Folded Reload
	orl	%r12d, %eax
	movl	%eax, -4(%rbp)
	movq	%rbp, %rdi
	movl	28(%rsp), %esi          # 4-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %r13d
	movl	%r11d, %r12d
	callq	memset
	movl	%r12d, %r11d
	movl	%r13d, %r12d
	movl	-4(%rbp,%r14,4), %eax
	andl	%r11d, %eax
	orl	%r15d, %eax
	movl	%eax, -4(%rbp,%r14,4)
	addq	8(%rsp), %rbp           # 8-byte Folded Reload
	decl	%ebx
	jne	.LBB0_55
.LBB0_56:                               # %if.end.208
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bits_fill_rectangle, .Lfunc_end0-bits_fill_rectangle
	.cfi_endproc

	.globl	bits_fill_rectangle_masked
	.align	16, 0x90
	.type	bits_fill_rectangle_masked,@function
bits_fill_rectangle_masked:             # @bits_fill_rectangle_masked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movl	56(%rsp), %r10d
	movl	%esi, %eax
	sarl	$3, %eax
	andl	$-4, %eax
	movslq	%eax, %rbp
	leaq	(%rdi,%rbp), %r13
	andl	$31, %esi
	leal	(%r9,%rsi), %ebx
	movl	%ebx, %eax
	addl	$-33, %eax
	js	.LBB1_1
# BB#18:                                # %if.else.36
	movl	%eax, %r14d
	sarl	$5, %r14d
	movl	%esi, %esi
	movl	mono_fill_masks(,%rsi,4), %esi
	andl	$31, %eax
	incl	%eax
	movl	mono_fill_masks(,%rax,4), %r9d
	movl	%r9d, %r11d
	notl	%r11d
	movl	%r8d, %ebx
	notl	%ebx
	movl	%esi, %eax
	andl	%ebx, %eax
	andl	%ebx, %r11d
	cmpl	$1, %r14d
	jne	.LBB1_19
# BB#34:                                # %sw.bb.96
	testl	%ecx, %ecx
	jne	.LBB1_35
# BB#40:                                # %do.body.99.preheader
	notl	%esi
	orl	%r8d, %esi
	orl	%r8d, %r9d
	movl	%edx, %eax
	testb	$1, %r10b
	movl	%r10d, %ecx
	je	.LBB1_42
# BB#41:                                # %do.body.99.prol
	andl	%esi, (%r13)
	andl	%r8d, 4(%r13)
	andl	%r9d, 8(%r13)
	addq	%rax, %r13
	leal	-1(%r10), %ecx
.LBB1_42:                               # %do.body.99.preheader.split
	cmpl	$1, %r10d
	je	.LBB1_81
	.align	16, 0x90
.LBB1_43:                               # %do.body.99
                                        # =>This Inner Loop Header: Depth=1
	andl	%esi, (%r13)
	andl	%r8d, 4(%r13)
	andl	%r9d, 8(%r13)
	andl	%esi, (%r13,%rax)
	andl	%r8d, 4(%r13,%rax)
	andl	%r9d, 8(%r13,%rax)
	leaq	(%r13,%rax), %r13
	addq	%rax, %r13
	addl	$-2, %ecx
	jne	.LBB1_43
	jmp	.LBB1_81
.LBB1_1:                                # %if.then
	movl	%ebx, %edi
	movl	%esi, %eax
	movl	mono_fill_masks(,%rax,4), %eax
	orl	mono_fill_masks(,%rdi,4), %r8d
	testl	%ecx, %ecx
	jne	.LBB1_2
# BB#8:                                 # %do.body.preheader
	notl	%eax
	orl	%eax, %r8d
	movl	%edx, %eax
	leal	-1(%r10), %ecx
	testb	$3, %r10b
	je	.LBB1_11
# BB#9:                                 # %do.body.prol.preheader
	movl	%r10d, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_10:                               # %do.body.prol
                                        # =>This Inner Loop Header: Depth=1
	andl	%r8d, (%r13)
	addq	%rax, %r13
	decl	%r10d
	incl	%edx
	jne	.LBB1_10
.LBB1_11:                               # %do.body.preheader.split
	cmpl	$3, %ecx
	jb	.LBB1_81
	.align	16, 0x90
.LBB1_12:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	andl	%r8d, (%r13)
	andl	%r8d, (%r13,%rax)
	addq	%rax, %r13
	andl	%r8d, (%rax,%r13)
	addq	%rax, %r13
	andl	%r8d, (%rax,%r13)
	addq	%rax, %r13
	addq	%rax, %r13
	addl	$-4, %r10d
	jne	.LBB1_12
	jmp	.LBB1_81
.LBB1_19:                               # %if.else.36
	testl	%r14d, %r14d
	jne	.LBB1_46
# BB#20:                                # %sw.bb
	testl	%ecx, %ecx
	jne	.LBB1_21
# BB#26:                                # %do.body.51.preheader
	notl	%esi
	orl	%r8d, %esi
	orl	%r8d, %r9d
	movl	%edx, %eax
	testb	$1, %r10b
	movl	%r10d, %ecx
	je	.LBB1_28
# BB#27:                                # %do.body.51.prol
	andl	%esi, (%r13)
	andl	%r9d, 4(%r13)
	addq	%rax, %r13
	leal	-1(%r10), %ecx
.LBB1_28:                               # %do.body.51.preheader.split
	cmpl	$1, %r10d
	je	.LBB1_81
	.align	16, 0x90
.LBB1_29:                               # %do.body.51
                                        # =>This Inner Loop Header: Depth=1
	andl	%esi, (%r13)
	andl	%r9d, 4(%r13)
	andl	%esi, (%r13,%rax)
	andl	%r9d, 4(%r13,%rax)
	leaq	(%r13,%rax), %r13
	addq	%rax, %r13
	addl	$-2, %ecx
	jne	.LBB1_29
	jmp	.LBB1_81
.LBB1_2:                                # %if.then
	movl	%r8d, %esi
	notl	%esi
	andl	%eax, %esi
	cmpl	$-1, %ecx
	jne	.LBB1_13
# BB#3:                                 # %do.body.16.preheader
	movl	%edx, %eax
	leal	-1(%r10), %ecx
	testb	$3, %r10b
	je	.LBB1_6
# BB#4:                                 # %do.body.16.prol.preheader
	movl	%r10d, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_5:                                # %do.body.16.prol
                                        # =>This Inner Loop Header: Depth=1
	orl	%esi, (%r13)
	addq	%rax, %r13
	decl	%r10d
	incl	%edx
	jne	.LBB1_5
.LBB1_6:                                # %do.body.16.preheader.split
	cmpl	$3, %ecx
	jb	.LBB1_81
	.align	16, 0x90
.LBB1_7:                                # %do.body.16
                                        # =>This Inner Loop Header: Depth=1
	orl	%esi, (%r13)
	orl	%esi, (%r13,%rax)
	addq	%rax, %r13
	orl	%esi, (%rax,%r13)
	addq	%rax, %r13
	orl	%esi, (%rax,%r13)
	addq	%rax, %r13
	addq	%rax, %r13
	addl	$-4, %r10d
	jne	.LBB1_7
	jmp	.LBB1_81
.LBB1_35:                               # %sw.bb.96
	cmpl	$-1, %ecx
	jne	.LBB1_44
# BB#36:                                # %do.body.116.preheader
	movl	%edx, %ecx
	testb	$1, %r10b
	movl	%r10d, %edx
	je	.LBB1_38
# BB#37:                                # %do.body.116.prol
	orl	%eax, (%r13)
	orl	%ebx, 4(%r13)
	orl	%r11d, 8(%r13)
	addq	%rcx, %r13
	leal	-1(%r10), %edx
.LBB1_38:                               # %do.body.116.preheader.split
	cmpl	$1, %r10d
	je	.LBB1_81
	.align	16, 0x90
.LBB1_39:                               # %do.body.116
                                        # =>This Inner Loop Header: Depth=1
	orl	%eax, (%r13)
	orl	%ebx, 4(%r13)
	orl	%r11d, 8(%r13)
	orl	%eax, (%r13,%rcx)
	orl	%ebx, 4(%r13,%rcx)
	orl	%r11d, 8(%r13,%rcx)
	leaq	(%r13,%rcx), %r13
	addq	%rcx, %r13
	addl	$-2, %edx
	jne	.LBB1_39
	jmp	.LBB1_81
.LBB1_46:                               # %sw.default
	testl	%ecx, %ecx
	jne	.LBB1_47
# BB#57:                                # %do.body.155.preheader
	orl	%r8d, %r9d
	notl	%esi
	orl	%r8d, %esi
	movl	%edx, %ecx
	leal	-1(%r14), %edx
	leaq	2(%rdx), %r12
	incq	%rdx
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	andq	%rdx, %rbp
	leaq	-8(%rbp), %r15
	shrq	$3, %r15
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movl	%r15d, %r11d
	andl	$1, %r11d
	.align	16, 0x90
.LBB1_58:                               # %do.body.155
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_65 Depth 2
                                        #     Child Loop BB1_69 Depth 2
	andl	%esi, (%r13)
	leaq	4(%r13), %rax
	testl	%r14d, %r14d
	jle	.LBB1_71
# BB#59:                                # %overflow.checked
                                        #   in Loop: Header=BB1_58 Depth=1
	xorl	%edi, %edi
	testq	%rbp, %rbp
	je	.LBB1_60
# BB#61:                                # %vector.ph
                                        #   in Loop: Header=BB1_58 Depth=1
	testq	%r11, %r11
	movl	$0, %edi
	jne	.LBB1_63
# BB#62:                                # %vector.body.prol
                                        #   in Loop: Header=BB1_58 Depth=1
	movdqu	4(%r13), %xmm1
	movdqu	20(%r13), %xmm2
	pand	%xmm0, %xmm1
	pand	%xmm0, %xmm2
	movdqu	%xmm1, 4(%r13)
	movdqu	%xmm2, 20(%r13)
	movl	$8, %edi
.LBB1_63:                               # %vector.ph.split
                                        #   in Loop: Header=BB1_58 Depth=1
	leaq	(%rax,%rbp,4), %rax
	testq	%r15, %r15
	je	.LBB1_66
# BB#64:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB1_58 Depth=1
	movq	%rbp, %rbx
	subq	%rdi, %rbx
	leaq	52(%r13,%rdi,4), %rdi
	.align	16, 0x90
.LBB1_65:                               # %vector.body
                                        #   Parent Loop BB1_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rdi), %xmm1
	movdqu	-32(%rdi), %xmm2
	pand	%xmm0, %xmm1
	pand	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rdi)
	movdqu	%xmm2, -32(%rdi)
	movdqu	-16(%rdi), %xmm1
	movdqu	(%rdi), %xmm2
	pand	%xmm0, %xmm1
	pand	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rdi)
	movdqu	%xmm2, (%rdi)
	addq	$64, %rdi
	addq	$-16, %rbx
	jne	.LBB1_65
.LBB1_66:                               #   in Loop: Header=BB1_58 Depth=1
	movq	%rbp, %rdi
	movl	%ebp, %ebx
	jmp	.LBB1_67
	.align	16, 0x90
.LBB1_60:                               #   in Loop: Header=BB1_58 Depth=1
	xorl	%ebx, %ebx
.LBB1_67:                               # %middle.block
                                        #   in Loop: Header=BB1_58 Depth=1
	cmpq	%rdi, %rdx
	je	.LBB1_70
# BB#68:                                # %for.body.preheader
                                        #   in Loop: Header=BB1_58 Depth=1
	movl	%r14d, %edi
	subl	%ebx, %edi
	.align	16, 0x90
.LBB1_69:                               # %for.body
                                        #   Parent Loop BB1_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	%r8d, (%rax)
	addq	$4, %rax
	decl	%edi
	jne	.LBB1_69
.LBB1_70:                               # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB1_58 Depth=1
	leaq	(%r13,%r12,4), %rax
.LBB1_71:                               # %for.end
                                        #   in Loop: Header=BB1_58 Depth=1
	andl	%r9d, (%rax)
	addq	%rcx, %rax
	decl	%r10d
	movq	%rax, %r13
	jne	.LBB1_58
	jmp	.LBB1_81
.LBB1_13:                               # %do.body.24.preheader
	notl	%eax
	orl	%eax, %r8d
	andl	%ecx, %esi
	movl	%edx, %eax
	leal	-1(%r10), %ecx
	testb	$3, %r10b
	je	.LBB1_16
# BB#14:                                # %do.body.24.prol.preheader
	movl	%r10d, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_15:                               # %do.body.24.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r13), %edi
	andl	%r8d, %edi
	orl	%esi, %edi
	movl	%edi, (%r13)
	addq	%rax, %r13
	decl	%r10d
	incl	%edx
	jne	.LBB1_15
.LBB1_16:                               # %do.body.24.preheader.split
	cmpl	$3, %ecx
	jb	.LBB1_81
	.align	16, 0x90
.LBB1_17:                               # %do.body.24
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r13), %ecx
	andl	%r8d, %ecx
	orl	%esi, %ecx
	movl	%ecx, (%r13)
	movl	(%r13,%rax), %ecx
	andl	%r8d, %ecx
	orl	%esi, %ecx
	movl	%ecx, (%r13,%rax)
	leaq	(%r13,%rax), %rcx
	movl	(%rax,%rcx), %edx
	andl	%r8d, %edx
	orl	%esi, %edx
	movl	%edx, (%rax,%rcx)
	leaq	(%rcx,%rax), %rcx
	movl	(%rax,%rcx), %edx
	andl	%r8d, %edx
	orl	%esi, %edx
	movl	%edx, (%rax,%rcx)
	leaq	(%rcx,%rax), %r13
	addq	%rax, %r13
	addl	$-4, %r10d
	jne	.LBB1_17
	jmp	.LBB1_81
.LBB1_21:                               # %sw.bb
	cmpl	$-1, %ecx
	jne	.LBB1_30
# BB#22:                                # %do.body.66.preheader
	movl	%edx, %ecx
	testb	$1, %r10b
	movl	%r10d, %edx
	je	.LBB1_24
# BB#23:                                # %do.body.66.prol
	orl	%eax, (%r13)
	orl	%r11d, 4(%r13)
	addq	%rcx, %r13
	leal	-1(%r10), %edx
.LBB1_24:                               # %do.body.66.preheader.split
	cmpl	$1, %r10d
	je	.LBB1_81
	.align	16, 0x90
.LBB1_25:                               # %do.body.66
                                        # =>This Inner Loop Header: Depth=1
	orl	%eax, (%r13)
	orl	%r11d, 4(%r13)
	orl	%eax, (%r13,%rcx)
	orl	%r11d, 4(%r13,%rcx)
	leaq	(%r13,%rcx), %r13
	addq	%rcx, %r13
	addl	$-2, %edx
	jne	.LBB1_25
	jmp	.LBB1_81
.LBB1_44:                               # %do.body.130.preheader
	notl	%esi
	orl	%r8d, %esi
	andl	%ecx, %eax
	orl	%r8d, %r9d
	andl	%ecx, %r11d
	leaq	8(%rbp,%rdi), %rdi
	movl	%edx, %edx
	.align	16, 0x90
.LBB1_45:                               # %do.body.130
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rdi), %ebx
	andl	%esi, %ebx
	orl	%eax, %ebx
	movl	%ebx, -8(%rdi)
	movl	-4(%rdi), %ebx
	andl	%r8d, %ebx
	orl	%ecx, %ebx
	movl	%ebx, -4(%rdi)
	movl	(%rdi), %ebx
	andl	%r9d, %ebx
	orl	%r11d, %ebx
	movl	%ebx, (%rdi)
	addq	%rdx, %rdi
	decl	%r10d
	jne	.LBB1_45
	jmp	.LBB1_81
.LBB1_47:                               # %sw.default
	cmpl	$-1, %ecx
	jne	.LBB1_72
# BB#48:                                # %do.body.172.preheader
	movl	%edx, %r15d
	leal	-1(%r14), %r9d
	leaq	2(%r9), %r8
	movl	%r14d, %edi
	andl	$3, %edi
	.align	16, 0x90
.LBB1_49:                               # %do.body.172
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_51 Depth 2
                                        #     Child Loop BB1_54 Depth 2
	orl	%eax, (%r13)
	leaq	4(%r13), %rbp
	movl	4(%r13), %esi
	testl	%r14d, %r14d
	jle	.LBB1_56
# BB#50:                                # %for.body.177.preheader
                                        #   in Loop: Header=BB1_49 Depth=1
	xorl	%edx, %edx
	testl	%edi, %edi
	je	.LBB1_52
	.align	16, 0x90
.LBB1_51:                               # %for.body.177.prol
                                        #   Parent Loop BB1_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	%ebx, %esi
	movl	%esi, (%rbp)
	incl	%edx
	movl	4(%rbp), %esi
	addq	$4, %rbp
	cmpl	%edx, %edi
	jne	.LBB1_51
.LBB1_52:                               # %for.body.177.preheader.split
                                        #   in Loop: Header=BB1_49 Depth=1
	cmpl	$3, %r9d
	jb	.LBB1_55
# BB#53:                                # %for.body.177.preheader.split.split
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	%r14d, %ecx
	subl	%edx, %ecx
	.align	16, 0x90
.LBB1_54:                               # %for.body.177
                                        #   Parent Loop BB1_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orl	%ebx, %esi
	movl	%esi, (%rbp)
	orl	%ebx, 4(%rbp)
	orl	%ebx, 8(%rbp)
	orl	%ebx, 12(%rbp)
	movl	16(%rbp), %esi
	addq	$16, %rbp
	addl	$-4, %ecx
	jne	.LBB1_54
.LBB1_55:                               # %for.cond.175.for.end.183_crit_edge
                                        #   in Loop: Header=BB1_49 Depth=1
	leaq	(%r13,%r8,4), %rbp
.LBB1_56:                               # %for.end.183
                                        #   in Loop: Header=BB1_49 Depth=1
	orl	%r11d, %esi
	movl	%esi, (%rbp)
	addq	%r15, %rbp
	decl	%r10d
	movq	%rbp, %r13
	jne	.LBB1_49
	jmp	.LBB1_81
.LBB1_30:                               # %do.body.77.preheader
	notl	%esi
	orl	%r8d, %esi
	andl	%ecx, %eax
	orl	%r8d, %r9d
	andl	%ecx, %r11d
	movl	%edx, %ecx
	testb	$1, %r10b
	movl	%r10d, %edx
	je	.LBB1_32
# BB#31:                                # %do.body.77.prol
	movl	(%r13), %edx
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, (%r13)
	movl	4(%r13), %edx
	andl	%r9d, %edx
	orl	%r11d, %edx
	movl	%edx, 4(%r13)
	addq	%rcx, %r13
	leal	-1(%r10), %edx
.LBB1_32:                               # %do.body.77.preheader.split
	cmpl	$1, %r10d
	je	.LBB1_81
	.align	16, 0x90
.LBB1_33:                               # %do.body.77
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r13), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, (%r13)
	movl	4(%r13), %edi
	andl	%r9d, %edi
	orl	%r11d, %edi
	movl	%edi, 4(%r13)
	movl	(%r13,%rcx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, (%r13,%rcx)
	movl	4(%r13,%rcx), %edi
	andl	%r9d, %edi
	orl	%r11d, %edi
	movl	%edi, 4(%r13,%rcx)
	leaq	(%r13,%rcx), %r13
	addq	%rcx, %r13
	addl	$-2, %edx
	jne	.LBB1_33
	jmp	.LBB1_81
.LBB1_72:                               # %do.body.192.preheader
	orl	%r8d, %r9d
	notl	%esi
	orl	%r8d, %esi
	andl	%ecx, %eax
	andl	%ecx, %r11d
	movl	%edx, %edx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	leal	-1(%r14), %edx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	leaq	2(%rdx), %rdx
	movq	%rdx, -24(%rsp)         # 8-byte Spill
	movl	%r14d, %edi
	andl	$3, %edi
	.align	16, 0x90
.LBB1_73:                               # %do.body.192
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_75 Depth 2
                                        #     Child Loop BB1_78 Depth 2
	movl	(%r13), %ebx
	andl	%esi, %ebx
	orl	%eax, %ebx
	movl	%ebx, (%r13)
	leaq	4(%r13), %rbx
	movl	4(%r13), %ebp
	testl	%r14d, %r14d
	jle	.LBB1_80
# BB#74:                                # %for.body.200.preheader
                                        #   in Loop: Header=BB1_73 Depth=1
	xorl	%r12d, %r12d
	testl	%edi, %edi
	je	.LBB1_76
	.align	16, 0x90
.LBB1_75:                               # %for.body.200.prol
                                        #   Parent Loop BB1_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	%r8d, %ebp
	orl	%ecx, %ebp
	movl	%ebp, (%rbx)
	incl	%r12d
	movl	4(%rbx), %ebp
	addq	$4, %rbx
	cmpl	%r12d, %edi
	jne	.LBB1_75
.LBB1_76:                               # %for.body.200.preheader.split
                                        #   in Loop: Header=BB1_73 Depth=1
	movq	-16(%rsp), %rdx         # 8-byte Reload
	cmpl	$3, %edx
	jb	.LBB1_79
# BB#77:                                # %for.body.200.preheader.split.split
                                        #   in Loop: Header=BB1_73 Depth=1
	movl	%r14d, %r15d
	subl	%r12d, %r15d
	.align	16, 0x90
.LBB1_78:                               # %for.body.200
                                        #   Parent Loop BB1_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	%r8d, %ebp
	orl	%ecx, %ebp
	movl	%ebp, (%rbx)
	movl	4(%rbx), %ebp
	andl	%r8d, %ebp
	orl	%ecx, %ebp
	movl	%ebp, 4(%rbx)
	movl	8(%rbx), %ebp
	andl	%r8d, %ebp
	orl	%ecx, %ebp
	movl	%ebp, 8(%rbx)
	movl	12(%rbx), %ebp
	andl	%r8d, %ebp
	orl	%ecx, %ebp
	movl	%ebp, 12(%rbx)
	movl	16(%rbx), %ebp
	addq	$16, %rbx
	addl	$-4, %r15d
	jne	.LBB1_78
.LBB1_79:                               # %for.cond.198.for.end.206_crit_edge
                                        #   in Loop: Header=BB1_73 Depth=1
	movq	-24(%rsp), %rdx         # 8-byte Reload
	leaq	(%r13,%rdx,4), %rbx
.LBB1_80:                               # %for.end.206
                                        #   in Loop: Header=BB1_73 Depth=1
	andl	%r9d, %ebp
	orl	%r11d, %ebp
	movl	%ebp, (%rbx)
	addq	-8(%rsp), %rbx          # 8-byte Folded Reload
	decl	%r10d
	movq	%rbx, %r13
	jne	.LBB1_73
.LBB1_81:                               # %if.end.219
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bits_fill_rectangle_masked, .Lfunc_end1-bits_fill_rectangle_masked
	.cfi_endproc

	.globl	bits_replicate_horizontally
	.align	16, 0x90
	.type	bits_replicate_horizontally,@function
bits_replicate_horizontally:            # @bits_replicate_horizontally
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 112
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	%ecx, %r8d
	movl	%edx, %r14d
	movl	%esi, %ebp
	leal	-1(%r14), %eax
	movl	%eax, %ecx
	imull	%r8d, %ecx
	imull	%r9d, %eax
	leaq	(%rcx,%rdi), %r12
	leaq	(%rax,%rdi), %rbx
	testb	$7, %bpl
	je	.LBB2_1
# BB#8:                                 # %if.else
	movl	%ebp, %r11d
	negl	%r11d
	andl	%ebp, %r11d
	movl	$65280, %eax            # imm = 0xFF00
	movb	%r11b, %cl
	shrl	%cl, %eax
	testl	%r14d, %r14d
	je	.LBB2_12
# BB#9:                                 # %for.cond.40.preheader.lr.ph
	movzbl	%al, %r10d
	movl	%r8d, %eax
	negq	%rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%r9d, %eax
	negq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	subl	%r11d, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB2_10:                               # %for.cond.40.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
                                        #       Child Loop BB2_16 Depth 3
	decl	%r14d
	movq	%r14, 40(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	movl	16(%rsp), %r15d         # 4-byte Reload
	movl	%ebp, %r13d
	je	.LBB2_11
	.align	16, 0x90
.LBB2_14:                               # %for.body.43
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_16 Depth 3
	movl	%r13d, %r14d
	subl	%r11d, %r13d
	movl	%r13d, %eax
	shrl	$3, %eax
	movzbl	(%r12,%rax), %r9d
	movb	%r13b, %cl
	andb	$7, %cl
	shll	%cl, %r9d
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%r13,%rax), %ecx
	cmpl	%ebp, %ecx
	jb	.LBB2_13
# BB#15:                                #   in Loop: Header=BB2_14 Depth=2
	andl	%r10d, %r9d
	movl	%r15d, %esi
	.align	16, 0x90
.LBB2_16:                               # %for.body.53
                                        #   Parent Loop BB2_10 Depth=1
                                        #     Parent Loop BB2_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%esi, %ecx
	andl	$7, %ecx
	movl	%esi, %edi
	shrl	$3, %edi
	movzbl	(%rbx,%rdi), %r8d
	movl	%r10d, %edx
	shrl	%cl, %edx
	notl	%edx
	andl	%r8d, %edx
	movl	%r9d, %eax
	shrl	%cl, %eax
	orl	%edx, %eax
	movb	%al, (%rbx,%rdi)
	subl	%ebp, %esi
	movl	%ebp, %eax
	addl	%esi, %eax
	jae	.LBB2_16
.LBB2_13:                               # %for.cond.40.loopexit
                                        #   in Loop: Header=BB2_14 Depth=2
	subl	%r11d, %r15d
	cmpl	%r11d, %r14d
	jne	.LBB2_14
.LBB2_11:                               # %for.end.65
                                        #   in Loop: Header=BB2_10 Depth=1
	addq	32(%rsp), %r12          # 8-byte Folded Reload
	addq	24(%rsp), %rbx          # 8-byte Folded Reload
	movq	40(%rsp), %r14          # 8-byte Reload
	testl	%r14d, %r14d
	jne	.LBB2_10
	jmp	.LBB2_12
.LBB2_1:                                # %if.then
	testl	%r14d, %r14d
	je	.LBB2_12
# BB#2:                                 # %for.body.lr.ph
	shrl	$3, %ebp
	movq	48(%rsp), %rax          # 8-byte Reload
	shrl	$3, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%ebp, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	negq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%r8d, %eax
	negq	%rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%r9d, %eax
	negq	%rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB2_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rbx,%rax), %r13
	addq	24(%rsp), %r13          # 8-byte Folded Reload
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdx
	callq	memmove
	movq	%r13, %rdx
	subq	%rbx, %rdx
	cmpq	%r14, %rdx
	movq	%r14, %rax
	movl	%ebp, %r15d
	jl	.LBB2_5
	.align	16, 0x90
.LBB2_4:                                # %while.body
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %r14
	subq	%rax, %r14
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	memmove
	addl	%r15d, %r15d
	movq	%r14, %rdx
	subq	%rbx, %rdx
	cmpq	%r15, %rdx
	movq	%r15, %rax
	movq	%r14, %r13
	jge	.LBB2_4
.LBB2_5:                                # %while.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	40(%rsp), %r14          # 8-byte Reload
	decl	%r14d
	cmpq	%rbx, %r13
	je	.LBB2_7
# BB#6:                                 # %if.then.20
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memmove
.LBB2_7:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=1
	addq	16(%rsp), %r12          # 8-byte Folded Reload
	addq	8(%rsp), %rbx           # 8-byte Folded Reload
	testl	%r14d, %r14d
	jne	.LBB2_3
.LBB2_12:                               # %if.end.74
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bits_replicate_horizontally, .Lfunc_end2-bits_replicate_horizontally
	.cfi_endproc

	.globl	bits_replicate_vertically
	.align	16, 0x90
	.type	bits_replicate_vertically,@function
bits_replicate_vertically:              # @bits_replicate_vertically
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 48
.Ltmp43:
	.cfi_offset %rbx, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rsi
	cmpl	%r15d, %ebx
	jbe	.LBB3_3
# BB#1:                                 # %while.body.lr.ph
	imull	%r15d, %r14d
	.align	16, 0x90
.LBB3_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rsi,%r14), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	memcpy
	subl	%r15d, %ebx
	cmpl	%r15d, %ebx
	movq	%rbp, %rsi
	ja	.LBB3_2
.LBB3_3:                                # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bits_replicate_vertically, .Lfunc_end3-bits_replicate_vertically
	.cfi_endproc

	.globl	bits_bounding_box
	.align	16, 0x90
	.type	bits_bounding_box,@function
bits_bounding_box:                      # @bits_bounding_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 56
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movl	%edx, %r8d
	imull	%r8d, %esi
	leaq	(%rsi,%rdi), %rax
	.align	16, 0x90
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	cmpq	%rdi, %rdx
	jbe	.LBB4_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-8(%rdx), %rax
	cmpq	$0, -8(%rdx)
	je	.LBB4_1
.LBB4_3:                                # %while.end
	cmpq	%rdi, %rdx
	je	.LBB4_4
# BB#5:                                 # %if.end
	movl	%r8d, %r14d
	movq	%rdi, %rax
	notq	%rax
	leaq	(%rax,%r14), %rax
	addq	%rdx, %rax
	cqto
	idivq	%r14
	movq	%rax, %r15
	movl	%r15d, 12(%rcx)
	leaq	-8(%rdi), %rax
	.align	16, 0x90
.LBB4_6:                                # %while.cond.10
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%rax)
	leaq	8(%rax), %rax
	je	.LBB4_6
# BB#7:                                 # %while.end.15
	subq	%rdi, %rax
	cqto
	idivq	%r14
	movl	%eax, 4(%rcx)
	testl	%eax, %eax
	je	.LBB4_9
# BB#8:                                 # %if.then.25
	subl	%eax, %r15d
	imull	%r8d, %eax
	addq	%rax, %rdi
.LBB4_9:                                # %if.end.30
	shrl	$3, %r8d
	decl	%r8d
	xorl	%eax, %eax
	testl	%r15d, %r15d
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	movabsq	$281474976710655, %r11  # imm = 0xFFFFFFFFFFFF
	movabsq	$72057594037927935, %r10 # imm = 0xFFFFFFFFFFFFFF
	je	.LBB4_10
# BB#11:
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	movl	%r8d, %esi
	.align	16, 0x90
.LBB4_12:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_18 Depth 2
	testl	%esi, %esi
	movl	$0, %ebp
	movq	%rdi, %rbx
	movl	$0, %r10d
	movl	$0, %r11d
	je	.LBB4_17
	.align	16, 0x90
.LBB4_13:                               # %land.rhs.39
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %r10b
	cmpq	$0, (%rbx)
	jne	.LBB4_16
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=2
	addq	$8, %rbx
	incl	%ebp
	cmpl	%esi, %ebp
	jb	.LBB4_13
# BB#15:                                #   in Loop: Header=BB4_12 Depth=1
	xorl	%r10d, %r10d
.LBB4_16:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	%ebp, %r11d
.LBB4_17:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=1
	decl	%r15d
	xorl	%r9d, %r9d
	testb	%r10b, %r10b
	cmovnel	%r11d, %esi
	cmovneq	%r9, %r13
	orq	(%rbx), %r13
	leaq	-8(%rdi,%r14), %rbx
	cmpl	%edx, %r8d
	movl	%r8d, %ebp
	jbe	.LBB4_21
	.align	16, 0x90
.LBB4_18:                               # %land.rhs.56
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %r9b
	cmpq	$0, (%rbx)
	jne	.LBB4_21
# BB#19:                                # %for.inc.61
                                        #   in Loop: Header=BB4_18 Depth=2
	addq	$-8, %rbx
	decl	%ebp
	cmpl	%edx, %ebp
	ja	.LBB4_18
# BB#20:                                #   in Loop: Header=BB4_12 Depth=1
	xorl	%r9d, %r9d
.LBB4_21:                               # %for.end.64
                                        #   in Loop: Header=BB4_12 Depth=1
	addq	%r14, %rdi
	testb	%r9b, %r9b
	cmovnel	%ebp, %edx
	cmovneq	%r12, %rax
	orq	(%rbx), %rax
	testl	%r15d, %r15d
	jne	.LBB4_12
# BB#22:                                # %for.cond.for.end.74_crit_edge
	shll	$6, %edx
	movabsq	$72057594037927935, %r10 # imm = 0xFFFFFFFFFFFFFF
	movabsq	$281474976710655, %r11  # imm = 0xFFFFFFFFFFFF
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	jmp	.LBB4_23
.LBB4_4:                                # %if.then
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rcx)
	jmp	.LBB4_30
.LBB4_10:
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	movl	%r8d, %esi
.LBB4_23:                               # %for.end.74
	shll	$6, %esi
	movq	%r13, %rdi
	shlq	$32, %rdi
	leal	32(%rsi), %r8d
	movq	%r13, %rbx
	andq	%r12, %rbx
	cmovnel	%esi, %r8d
	testq	%rbx, %rbx
	cmoveq	%r13, %rdi
	movq	%rdi, %rbx
	shlq	$16, %rbx
	movl	%r8d, %ebp
	orl	$16, %ebp
	movq	%rdi, %rsi
	andq	%r11, %rsi
	cmovnel	%r8d, %ebp
	testq	%rsi, %rsi
	cmoveq	%rdi, %rbx
	movq	%rbx, %rsi
	shlq	$8, %rsi
	movl	%ebp, %r8d
	orl	$8, %r8d
	movq	%rbx, %rdi
	andq	%r10, %rdi
	cmovnel	%ebp, %r8d
	testq	%rdi, %rdi
	cmoveq	%rbx, %rsi
	movq	%rsi, %rbp
	shrq	$56, %rbp
	testb	$-16, %bpl
	je	.LBB4_25
# BB#24:                                # %if.then.98
	shrq	$60, %rsi
	movzbl	bits_bounding_box.first_1(%rsi), %r9d
	jmp	.LBB4_26
.LBB4_25:                               # %if.else.105
	movzbl	bits_bounding_box.first_1(%rbp), %r9d
	addl	$4, %r9d
.LBB4_26:                               # %if.end.112
	addl	%r8d, %r9d
	movl	%edx, %edi
	orl	$32, %edi
	movq	%rax, %rbp
	shlq	$32, %rbp
	cmpq	%r12, %rax
	cmovbel	%edx, %edi
	cmovaq	%rax, %rbp
	movl	%edi, %ebx
	orl	$16, %ebx
	movq	%rbp, %rsi
	shlq	$16, %rsi
	cmpq	%r11, %rbp
	cmovbel	%edi, %ebx
	cmovaq	%rbp, %rsi
	movl	%ebx, %eax
	orl	$8, %eax
	movq	%rsi, %rdx
	shlq	$8, %rdx
	cmpq	%r10, %rsi
	cmovbel	%ebx, %eax
	cmovaq	%rsi, %rdx
	movq	%rdx, %rdi
	shrq	$56, %rdi
	andq	$15, %rdi
	je	.LBB4_27
# BB#28:                                # %if.else.146
	movzbl	bits_bounding_box.last_1(%rdi), %edx
	addl	$4, %edx
	jmp	.LBB4_29
.LBB4_27:                               # %if.then.138
	shrq	$60, %rdx
	movzbl	bits_bounding_box.last_1(%rdx), %edx
.LBB4_29:                               # %if.end.154
	addl	%eax, %edx
	movl	%r9d, (%rcx)
	movl	%edx, 8(%rcx)
.LBB4_30:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bits_bounding_box, .Lfunc_end4-bits_bounding_box
	.cfi_endproc

	.globl	bits_extract_plane
	.align	16, 0x90
	.type	bits_extract_plane,@function
bits_extract_plane:                     # @bits_extract_plane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
.Ltmp65:
	.cfi_offset %rbx, -56
.Ltmp66:
	.cfi_offset %r12, -48
.Ltmp67:
	.cfi_offset %r13, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movl	%r8d, -12(%rsp)         # 4-byte Spill
	movl	%ecx, %r11d
	movl	%edx, %r12d
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	movl	12(%rsi), %ebx
	movl	16(%rsi), %edx
	movl	%edx, %ebp
	imull	%ebx, %ebp
	movl	%ebp, -36(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	sarl	$3, %eax
	movslq	%eax, %r10
	addq	(%rsi), %r10
	movl	12(%rdi), %ecx
	movl	%ecx, -44(%rsp)         # 4-byte Spill
	movl	$1, %r9d
	shll	%cl, %r9d
	movl	16(%rdi), %esi
	imull	%ecx, %esi
	movl	%esi, %eax
	sarl	$3, %eax
	movslq	%eax, %r8
	addq	(%rdi), %r8
	movl	%esi, %ecx
	orl	%ebp, %ecx
	xorl	%eax, %eax
	testb	$7, %cl
	jne	.LBB5_1
# BB#2:                                 # %if.then
	cmpl	$32, %ebx
	jne	.LBB5_3
# BB#10:                                # %sw.bb.14
	testb	$7, %r12b
	jne	.LBB5_1
# BB#11:                                # %sw.bb.14
	movl	%esi, %ebp
	movl	%ebx, %edi
	cmpl	$8, -44(%rsp)           # 4-byte Folded Reload
	jne	.LBB5_12
# BB#13:                                # %if.then.19
	movl	%r12d, %ecx
	sarl	$3, %ecx
	movl	$3, %esi
	subl	%ecx, %esi
	movslq	%esi, %rcx
	addq	%rcx, %r10
	movl	$2, %r14d
	jmp	.LBB5_14
.LBB5_3:                                # %if.then
	cmpl	$4, %ebx
	jne	.LBB5_1
# BB#4:                                 # %sw.bb
	cmpl	$1, -44(%rsp)           # 4-byte Folded Reload
	jne	.LBB5_5
# BB#6:                                 # %land.lhs.true
	movl	%ebx, %edi
	movq	-24(%rsp), %rcx         # 8-byte Reload
	testb	$3, 8(%rcx)
	je	.LBB5_8
# BB#7:
	movl	%esi, %ebp
	xorl	%ecx, %ecx
	movzbl	%cl, %r14d
	jmp	.LBB5_14
.LBB5_1:
	movl	%esi, %ebp
	movl	%ebx, %edi
	xorl	%r14d, %r14d
.LBB5_14:                               # %if.end.24
	cmpl	$0, -12(%rsp)           # 4-byte Folded Reload
	jle	.LBB5_62
# BB#15:                                # %for.body.lr.ph
	decl	%r9d
	andl	$7, -36(%rsp)           # 4-byte Folded Spill
	movl	%ebp, %ecx
	andl	$7, %ecx
	movl	%ecx, -88(%rsp)         # 4-byte Spill
	movl	$65280, %eax            # imm = 0xFF00
	shrl	%cl, %eax
	movl	%eax, -116(%rsp)        # 4-byte Spill
	movl	%edi, -72(%rsp)         # 4-byte Spill
	movl	%edi, %r13d
	sarl	$2, %r13d
	movl	$8, %eax
	subl	%edi, %eax
	movl	%eax, -120(%rsp)        # 4-byte Spill
	orl	$1, %edi
	movl	%edi, -124(%rsp)        # 4-byte Spill
	movl	%r12d, %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movl	%r9d, %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movl	-44(%rsp), %eax         # 4-byte Reload
	sarl	$2, %eax
	movl	%eax, -68(%rsp)         # 4-byte Spill
	movl	$16, %eax
	movb	%r12b, %cl
	shll	%cl, %eax
	movl	%eax, -84(%rsp)         # 4-byte Spill
	movq	%r11, -8(%rsp)          # 8-byte Spill
	leal	-8(%r11), %ecx
	shrl	$3, %ecx
	leal	(,%rcx,8), %eax
	negl	%eax
	leal	-8(%r11,%rax), %eax
	movl	%eax, -100(%rsp)        # 4-byte Spill
	leaq	4(,%rcx,4), %rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	incq	%rcx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	leal	1(%r11), %eax
	movl	%eax, -40(%rsp)         # 4-byte Spill
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB5_16:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_30 Depth 2
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_22 Depth 2
                                        #     Child Loop BB5_26 Depth 2
	cmpl	$1, %r14d
	jne	.LBB5_17
# BB#20:                                # %for.cond.28.preheader
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-8(%rsp), %rax          # 8-byte Reload
	cmpl	$8, %eax
	movq	%r8, %r11
	movq	%r10, %r15
	movl	%eax, %edi
	jl	.LBB5_24
# BB#21:                                # %for.body.30.lr.ph
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-112(%rsp), %rax        # 8-byte Reload
	leaq	(%r10,%rax), %r15
	movq	%r8, %rsi
	movq	%r10, %rdi
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB5_22:                               # %for.body.30
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ebx
	movb	%r12b, %cl
	shrl	%cl, %ebx
	andl	$286331153, %ebx        # imm = 0x11111111
	leal	(,%rbx,8), %ecx
	movl	%ebx, %edx
	shrl	$6, %edx
	orl	%ecx, %edx
	movl	%ebx, %ecx
	shrl	$15, %ecx
	orl	%edx, %ecx
	shrl	$24, %ebx
	movzbl	%cl, %ecx
	orl	%ebx, %ecx
	movb	byte_acegbdfh_to_abcdefgh(%rcx), %cl
	movb	%cl, (%rsi)
	incq	%rsi
	addq	$4, %rdi
	addl	$-8, %ebp
	cmpl	$7, %ebp
	jg	.LBB5_22
# BB#23:                                # %for.cond.28.for.end_crit_edge
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-96(%rsp), %rax         # 8-byte Reload
	leaq	(%r8,%rax), %r11
	movl	-100(%rsp), %edi        # 4-byte Reload
.LBB5_24:                               # %for.end
                                        #   in Loop: Header=BB5_16 Depth=1
	testl	%edi, %edi
	je	.LBB5_61
# BB#25:                                # %if.then.44
                                        #   in Loop: Header=BB5_16 Depth=1
	movb	(%r11), %bpl
	incl	%edi
	movl	$128, %esi
	movl	-84(%rsp), %ebx         # 4-byte Reload
	.align	16, 0x90
.LBB5_26:                               # %do.body
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15), %edx
	movzbl	%bpl, %ecx
	movl	%esi, %ebp
	notl	%ebp
	andl	%ecx, %ebp
	orl	%esi, %ecx
	testl	%ebx, %edx
	cmovnel	%ecx, %ebp
	movb	%bpl, (%r11)
	movl	%ebx, %ecx
	shrl	$4, %ecx
	movl	%ebx, %edx
	shll	$4, %edx
	leaq	1(%r15), %rax
	cmpl	$15, %ebx
	cmovbeq	%rax, %r15
	cmoval	%ecx, %edx
	shrl	%esi
	decl	%edi
	cmpl	$1, %edi
	movl	%edx, %ebx
	jg	.LBB5_26
	jmp	.LBB5_61
	.align	16, 0x90
.LBB5_17:                               # %for.body
                                        #   in Loop: Header=BB5_16 Depth=1
	cmpl	$2, %r14d
	jne	.LBB5_27
# BB#18:                                # %for.cond.68.preheader
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-8(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	-40(%rsp), %eax         # 4-byte Reload
	movq	%r8, %rcx
	movq	%r10, %rsi
	jle	.LBB5_61
	.align	16, 0x90
.LBB5_19:                               # %for.body.71
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rsi), %dl
	movb	%dl, (%rcx)
	incq	%rcx
	addq	$4, %rsi
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB5_19
	jmp	.LBB5_61
	.align	16, 0x90
.LBB5_27:                               # %sw.default
                                        #   in Loop: Header=BB5_16 Depth=1
	xorl	%esi, %esi
	movl	-88(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movl	$0, %edx
	je	.LBB5_29
# BB#28:                                # %cond.true.89
                                        #   in Loop: Header=BB5_16 Depth=1
	movzbl	(%r8), %edx
	andl	-116(%rsp), %edx        # 4-byte Folded Reload
	movl	%eax, %esi
.LBB5_29:                               # %for.cond.99.preheader
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-8(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	-40(%rsp), %edi         # 4-byte Reload
	movq	%r8, %rbx
	movl	-36(%rsp), %r11d        # 4-byte Reload
	movq	%r10, %rbp
	jle	.LBB5_59
.LBB5_30:                               # %for.body.102
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$-15, %eax
	movl	%r13d, %ecx
	cmpl	$16, %r13d
	ja	.LBB5_62
# BB#31:                                # %for.body.102
                                        #   in Loop: Header=BB5_30 Depth=2
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_32:                               # %sw.bb.105
                                        #   in Loop: Header=BB5_30 Depth=2
	movq	%rbx, -80(%rsp)         # 8-byte Spill
	movzbl	(%rbp), %ebx
	movl	-120(%rsp), %ecx        # 4-byte Reload
	subl	%r11d, %ecx
	shrl	%cl, %ebx
	andl	-124(%rsp), %ebx        # 4-byte Folded Reload
	jmp	.LBB5_33
.LBB5_34:                               # %sw.bb.113
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %r15d
	movl	$4, %ecx
	subl	%r11d, %ecx
	shrl	%cl, %r15d
	andl	$15, %r15d
	jmp	.LBB5_48
.LBB5_35:                               # %sw.bb.119
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %r15d
	jmp	.LBB5_48
.LBB5_36:                               # %sw.bb.121
                                        #   in Loop: Header=BB5_30 Depth=2
	movq	%rbx, -80(%rsp)         # 8-byte Spill
	testl	%r11d, %r11d
	movzbl	(%rbp), %ebx
	movzbl	1(%rbp), %ecx
	je	.LBB5_39
# BB#37:                                # %cond.true.123
                                        #   in Loop: Header=BB5_30 Depth=2
	andl	$15, %ebx
	shll	$8, %ebx
	jmp	.LBB5_38
.LBB5_40:                               # %sw.bb.140
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %ecx
	shlq	$8, %rcx
	movzbl	1(%rbp), %r15d
	orq	%rcx, %r15
	jmp	.LBB5_48
.LBB5_41:                               # %sw.bb.147
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %ecx
	shlq	$16, %rcx
	movq	%rbx, -80(%rsp)         # 8-byte Spill
	movzbl	1(%rbp), %ebx
	shlq	$8, %rbx
	orq	%rcx, %rbx
	movzbl	2(%rbp), %r15d
	jmp	.LBB5_42
.LBB5_43:                               # %sw.bb.158
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %ecx
	shll	$24, %ecx
	movq	%rbx, -80(%rsp)         # 8-byte Spill
	movzbl	1(%rbp), %ebx
	shll	$16, %ebx
	orl	%ecx, %ebx
	movzbl	2(%rbp), %ecx
	shll	$8, %ecx
	orl	%ebx, %ecx
	movzbl	3(%rbp), %ebx
	orl	%ecx, %ebx
.LBB5_33:                               # %do.body.277
                                        #   in Loop: Header=BB5_30 Depth=2
	movslq	%ebx, %r15
	movq	-80(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB5_48
.LBB5_44:                               # %sw.bb.173
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %ecx
	shlq	$32, %rcx
	movq	%rbx, -80(%rsp)         # 8-byte Spill
	movzbl	1(%rbp), %ebx
	shlq	$24, %rbx
	orq	%rcx, %rbx
	movzbl	2(%rbp), %ecx
	shlq	$16, %rcx
	orq	%rbx, %rcx
	movzbl	3(%rbp), %ebx
	shlq	$8, %rbx
	orq	%rcx, %rbx
	movzbl	4(%rbp), %r15d
	jmp	.LBB5_42
.LBB5_45:                               # %sw.bb.192
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %ecx
	shlq	$40, %rcx
	movq	%rbx, %r15
	movzbl	1(%rbp), %ebx
	shlq	$32, %rbx
	orq	%rcx, %rbx
	movzbl	2(%rbp), %ecx
	shlq	$24, %rcx
	orq	%rbx, %rcx
	movzbl	3(%rbp), %ebx
	shlq	$16, %rbx
	orq	%rcx, %rbx
	movzbl	4(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rbx, %rcx
	movq	%r15, %rbx
	movzbl	5(%rbp), %r15d
	orq	%rcx, %r15
	jmp	.LBB5_48
.LBB5_46:                               # %sw.bb.215
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %ecx
	shlq	$48, %rcx
	movq	%rbx, -80(%rsp)         # 8-byte Spill
	movzbl	1(%rbp), %ebx
	shlq	$40, %rbx
	orq	%rcx, %rbx
	movzbl	2(%rbp), %ecx
	shlq	$32, %rcx
	orq	%rbx, %rcx
	movzbl	3(%rbp), %ebx
	shlq	$24, %rbx
	orq	%rcx, %rbx
	movzbl	4(%rbp), %ecx
	shlq	$16, %rcx
	orq	%rbx, %rcx
	movzbl	5(%rbp), %ebx
	shlq	$8, %rbx
	orq	%rcx, %rbx
	movzbl	6(%rbp), %r15d
.LBB5_42:                               # %do.body.277
                                        #   in Loop: Header=BB5_30 Depth=2
	orq	%rbx, %r15
	movq	-80(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB5_48
.LBB5_47:                               # %sw.bb.242
                                        #   in Loop: Header=BB5_30 Depth=2
	movzbl	(%rbp), %ecx
	shlq	$56, %rcx
	movq	%rbx, %r15
	movzbl	1(%rbp), %ebx
	shlq	$48, %rbx
	orq	%rcx, %rbx
	movzbl	2(%rbp), %ecx
	shlq	$40, %rcx
	orq	%rbx, %rcx
	movzbl	3(%rbp), %ebx
	shlq	$32, %rbx
	orq	%rcx, %rbx
	movzbl	4(%rbp), %ecx
	shlq	$24, %rcx
	orq	%rbx, %rcx
	movzbl	5(%rbp), %ebx
	shlq	$16, %rbx
	orq	%rcx, %rbx
	movzbl	6(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rbx, %rcx
	movq	%r15, %rbx
	movzbl	7(%rbp), %r15d
	orq	%rcx, %r15
	jmp	.LBB5_48
.LBB5_39:                               # %cond.false.130
                                        #   in Loop: Header=BB5_30 Depth=2
	shll	$4, %ebx
	shrl	$4, %ecx
.LBB5_38:                               # %do.body.277
                                        #   in Loop: Header=BB5_30 Depth=2
	orl	%ebx, %ecx
	movslq	%ecx, %r15
	movq	-80(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB5_48:                               # %do.body.277
                                        #   in Loop: Header=BB5_30 Depth=2
	movq	-56(%rsp), %rcx         # 8-byte Reload
	shrq	%cl, %r15
	andq	-64(%rsp), %r15         # 8-byte Folded Reload
	movl	-68(%rsp), %ecx         # 4-byte Reload
	cmpl	$2, %ecx
	je	.LBB5_57
# BB#49:                                # %do.body.277
                                        #   in Loop: Header=BB5_30 Depth=2
	cmpl	$1, %ecx
	jne	.LBB5_50
# BB#54:                                # %sw.bb.310
                                        #   in Loop: Header=BB5_30 Depth=2
	movl	%esi, %eax
	xorl	$4, %eax
	cmpl	$4, %esi
	jne	.LBB5_55
# BB#56:                                # %if.else.315
                                        #   in Loop: Header=BB5_30 Depth=2
	orb	%dl, %r15b
	movb	%r15b, (%rbx)
	incq	%rbx
	movl	%eax, %esi
	jmp	.LBB5_58
	.align	16, 0x90
.LBB5_57:                               # %sw.bb.323
                                        #   in Loop: Header=BB5_30 Depth=2
	movb	%r15b, (%rbx)
	incq	%rbx
	jmp	.LBB5_58
	.align	16, 0x90
.LBB5_50:                               # %do.body.277
                                        #   in Loop: Header=BB5_30 Depth=2
	testl	%ecx, %ecx
	jne	.LBB5_62
# BB#51:                                # %sw.bb.290
                                        #   in Loop: Header=BB5_30 Depth=2
	addl	-44(%rsp), %esi         # 4-byte Folded Reload
	cmpl	$8, %esi
	jne	.LBB5_53
# BB#52:                                # %if.then.294
                                        #   in Loop: Header=BB5_30 Depth=2
	orb	%dl, %r15b
	movb	%r15b, (%rbx)
	incq	%rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	.LBB5_58
.LBB5_55:                               # %if.then.312
                                        #   in Loop: Header=BB5_30 Depth=2
	shll	$4, %r15d
	movl	%eax, %esi
	movb	%r15b, %dl
	jmp	.LBB5_58
.LBB5_53:                               # %if.else.301
                                        #   in Loop: Header=BB5_30 Depth=2
	movl	$8, %ecx
	subl	%esi, %ecx
	shll	%cl, %r15d
	movzbl	%dl, %edx
	orl	%r15d, %edx
	.align	16, 0x90
.LBB5_58:                               # %for.inc.331
                                        #   in Loop: Header=BB5_30 Depth=2
	addl	-72(%rsp), %r11d        # 4-byte Folded Reload
	movl	%r11d, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %rbp
	andl	$7, %r11d
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB5_30
.LBB5_59:                               # %for.end.333
                                        #   in Loop: Header=BB5_16 Depth=1
	testl	%esi, %esi
	je	.LBB5_61
# BB#60:                                # %if.then.336
                                        #   in Loop: Header=BB5_16 Depth=1
	movzbl	%dl, %eax
	movzbl	(%rbx), %edx
	movl	$255, %edi
	movb	%sil, %cl
	shrl	%cl, %edi
	andl	%edx, %edi
	orl	%eax, %edi
	movb	%dil, (%rbx)
	.align	16, 0x90
.LBB5_61:                               # %for.inc.355
                                        #   in Loop: Header=BB5_16 Depth=1
	incl	%r9d
	movq	-24(%rsp), %rax         # 8-byte Reload
	movslq	8(%rax), %rax
	addq	%rax, %r10
	movq	-32(%rsp), %rax         # 8-byte Reload
	movslq	8(%rax), %rax
	addq	%rax, %r8
	xorl	%eax, %eax
	cmpl	-12(%rsp), %r9d         # 4-byte Folded Reload
	jl	.LBB5_16
.LBB5_62:                               # %cleanup.363
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_12:
	xorl	%r14d, %r14d
	jmp	.LBB5_14
.LBB5_5:
	movl	%esi, %ebp
	movl	%ebx, %edi
	xorl	%ecx, %ecx
	movzbl	%cl, %r14d
	jmp	.LBB5_14
.LBB5_8:                                # %land.rhs
	movl	%esi, %ebp
	testb	$1, %dl
	sete	%cl
	movzbl	%cl, %r14d
	jmp	.LBB5_14
.Lfunc_end5:
	.size	bits_extract_plane, .Lfunc_end5-bits_extract_plane
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_32
	.quad	.LBB5_34
	.quad	.LBB5_35
	.quad	.LBB5_36
	.quad	.LBB5_40
	.quad	.LBB5_62
	.quad	.LBB5_41
	.quad	.LBB5_62
	.quad	.LBB5_43
	.quad	.LBB5_62
	.quad	.LBB5_44
	.quad	.LBB5_62
	.quad	.LBB5_45
	.quad	.LBB5_62
	.quad	.LBB5_46
	.quad	.LBB5_62
	.quad	.LBB5_47

	.text
	.globl	bits_expand_plane
	.align	16, 0x90
	.type	bits_expand_plane,@function
bits_expand_plane:                      # @bits_expand_plane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 56
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movl	%r8d, -4(%rsp)          # 4-byte Spill
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movl	%edx, -16(%rsp)         # 4-byte Spill
	movq	%rsi, -24(%rsp)         # 8-byte Spill
	movq	%rdi, -32(%rsp)         # 8-byte Spill
	movl	12(%rsi), %edx
	movl	16(%rsi), %r15d
	imull	%edx, %r15d
	movl	%r15d, %eax
	sarl	$3, %eax
	movslq	%eax, %r13
	addq	(%rsi), %r13
	movl	12(%rdi), %eax
	movl	%eax, -56(%rsp)         # 4-byte Spill
	movl	16(%rdi), %ebp
	imull	%eax, %ebp
	movl	%ebp, %eax
	sarl	$3, %eax
	movslq	%eax, %r9
	addq	(%rdi), %r9
	andl	$7, %r15d
	movl	%ebp, %eax
	andl	$31, %eax
	orl	%r15d, %eax
	jne	.LBB6_3
# BB#1:                                 # %lor.lhs.false.10
	cmpl	$32, -56(%rsp)          # 4-byte Folded Reload
	jne	.LBB6_3
# BB#2:                                 # %lor.lhs.false.10
	movq	-32(%rsp), %rax         # 8-byte Reload
	movl	8(%rax), %edi
	movl	%edi, %eax
	andl	$3, %eax
	jne	.LBB6_3
# BB#12:                                # %if.end.20
	movl	-16(%rsp), %eax         # 4-byte Reload
	testb	$7, %al
	jne	.LBB6_3
# BB#13:                                # %if.end.20
	cmpl	$8, %edx
	jne	.LBB6_3
# BB#14:                                # %sw.bb.22
	xorl	%eax, %eax
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB6_56
# BB#15:                                # %for.body.lr.ph
	movl	$24, %ecx
	subl	-16(%rsp), %ecx         # 4-byte Folded Reload
	movq	-40(%rsp), %r8          # 8-byte Reload
	cmpl	$2, %r8d
	movl	$1, %eax
	cmovll	%r8d, %eax
	notl	%eax
	leal	1(%r8,%rax), %r12d
	leaq	1(%r12), %r11
	leaq	(,%r12,4), %r15
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	movq	%r11, %rbx
	andq	%rax, %rbx
	leaq	-8(%rbx), %rdx
	shrq	$3, %rdx
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	movl	%r8d, %esi
	subl	%ebx, %esi
	movl	%esi, -44(%rsp)         # 4-byte Spill
	movd	%ecx, %xmm0
	andl	$1, %edx
	movq	%rdx, -56(%rsp)         # 8-byte Spill
	movl	%r8d, %edx
	notl	%edx
	cmpl	$-3, %edx
	movl	$-2, %esi
	cmovgl	%edx, %esi
	leal	1(%r8,%rsi), %edx
	incq	%rdx
	andq	%rax, %rdx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	pxor	%xmm1, %xmm1
	.align	16, 0x90
.LBB6_16:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_24 Depth 2
                                        #     Child Loop BB6_28 Depth 2
	testl	%r8d, %r8d
	jle	.LBB6_30
# BB#17:                                # %for.body.27.lr.ph
                                        #   in Loop: Header=BB6_16 Depth=1
	testq	%rbx, %rbx
	movq	%r9, %rax
	movq	%r13, %rdi
	movl	%r8d, %edx
	movl	$0, %esi
	je	.LBB6_26
# BB#18:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_16 Depth=1
	leaq	(%r13,%r12), %rax
	cmpq	%rax, %r9
	ja	.LBB6_20
# BB#19:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_16 Depth=1
	leaq	(%r9,%r15), %rax
	cmpq	%rax, %r13
	movq	%r9, %rax
	movq	%r13, %rdi
	movl	%r8d, %edx
	movl	$0, %esi
	jbe	.LBB6_26
.LBB6_20:                               # %vector.ph
                                        #   in Loop: Header=BB6_16 Depth=1
	cmpq	$0, -56(%rsp)           # 8-byte Folded Reload
	movl	$0, %esi
	jne	.LBB6_22
# BB#21:                                # %vector.body.prol
                                        #   in Loop: Header=BB6_16 Depth=1
	xorps	%xmm2, %xmm2
	movss	%xmm0, %xmm2            # xmm2 = xmm0[0],xmm2[1,2,3]
	movd	(%r13), %xmm3           # xmm3 = mem[0],zero,zero,zero
	movd	4(%r13), %xmm4          # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklwd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	pslld	%xmm2, %xmm3
	pslld	%xmm2, %xmm4
	movdqu	%xmm3, (%r9)
	movdqu	%xmm4, 16(%r9)
	movl	$8, %esi
.LBB6_22:                               # %vector.ph.split
                                        #   in Loop: Header=BB6_16 Depth=1
	leaq	(%r9,%rbx,4), %rax
	leaq	(%r13,%rbx), %rdi
	cmpq	$0, -16(%rsp)           # 8-byte Folded Reload
	je	.LBB6_25
# BB#23:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-64(%rsp), %rdx         # 8-byte Reload
	subq	%rsi, %rdx
	leaq	12(%r13,%rsi), %r10
	leaq	48(%r9,%rsi,4), %r14
	.align	16, 0x90
.LBB6_24:                               # %vector.body
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm2, %xmm2
	movss	%xmm0, %xmm2            # xmm2 = xmm0[0],xmm2[1,2,3]
	movd	-12(%r10), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movd	-8(%r10), %xmm4         # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklwd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	pslld	%xmm2, %xmm3
	pslld	%xmm2, %xmm4
	movdqu	%xmm3, -48(%r14)
	movdqu	%xmm4, -32(%r14)
	movd	-4(%r10), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%r10), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3],xmm3[4],xmm1[4],xmm3[5],xmm1[5],xmm3[6],xmm1[6],xmm3[7],xmm1[7]
	punpcklwd	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpcklbw	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3],xmm4[4],xmm1[4],xmm4[5],xmm1[5],xmm4[6],xmm1[6],xmm4[7],xmm1[7]
	punpcklwd	%xmm1, %xmm4    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	pslld	%xmm2, %xmm3
	pslld	%xmm2, %xmm4
	movdqu	%xmm3, -16(%r14)
	movdqu	%xmm4, (%r14)
	addq	$16, %r10
	addq	$64, %r14
	addq	$-16, %rdx
	jne	.LBB6_24
.LBB6_25:                               #   in Loop: Header=BB6_16 Depth=1
	movl	-44(%rsp), %edx         # 4-byte Reload
	movq	%rbx, %rsi
.LBB6_26:                               # %middle.block
                                        #   in Loop: Header=BB6_16 Depth=1
	cmpq	%rsi, %r11
	je	.LBB6_29
# BB#27:                                # %for.body.27.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	incl	%edx
	.align	16, 0x90
.LBB6_28:                               # %for.body.27
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %esi
	incq	%rdi
	shll	%cl, %esi
	movl	%esi, (%rax)
	addq	$4, %rax
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB6_28
.LBB6_29:                               # %for.cond.25.for.end_crit_edge
                                        #   in Loop: Header=BB6_16 Depth=1
	movq	-32(%rsp), %rax         # 8-byte Reload
	movl	8(%rax), %edi
.LBB6_30:                               # %for.end
                                        #   in Loop: Header=BB6_16 Depth=1
	incl	%ebp
	movq	-24(%rsp), %rax         # 8-byte Reload
	movslq	8(%rax), %rax
	addq	%rax, %r13
	movslq	%edi, %rax
	addq	%rax, %r9
	xorl	%eax, %eax
	cmpl	-4(%rsp), %ebp          # 4-byte Folded Reload
	jne	.LBB6_16
	jmp	.LBB6_56
.LBB6_3:                                # %for.cond.38.preheader
	xorl	%eax, %eax
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB6_56
# BB#4:                                 # %for.body.41.lr.ph
	andl	$7, %ebp
	movl	$65280, %eax            # imm = 0xFF00
	movb	%bpl, %cl
	shrl	%cl, %eax
	movl	%eax, -80(%rsp)         # 4-byte Spill
	movl	%edx, -44(%rsp)         # 4-byte Spill
	movl	%edx, %r14d
	sarl	$2, %r14d
	movl	$8, %eax
	subl	%edx, %eax
	movl	%eax, -72(%rsp)         # 4-byte Spill
	orl	$1, %edx
	movl	%edx, -76(%rsp)         # 4-byte Spill
	movl	-56(%rsp), %r12d        # 4-byte Reload
	sarl	$2, %r12d
	movq	-40(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, -64(%rsp)         # 4-byte Spill
	movl	$0, -68(%rsp)           # 4-byte Folded Spill
.LBB6_5:                                # %for.body.41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
	testl	%ebp, %ebp
	movl	$0, %r11d
	movl	$0, %esi
	je	.LBB6_7
# BB#6:                                 # %cond.true.51
                                        #   in Loop: Header=BB6_5 Depth=1
	movzbl	(%r9), %esi
	andl	-80(%rsp), %esi         # 4-byte Folded Reload
	movl	%ebp, %r11d
.LBB6_7:                                # %for.cond.61.preheader
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	-64(%rsp), %r10d        # 4-byte Reload
	movq	%r9, %rdx
	movl	%r15d, %r8d
	movq	%r13, %rdi
	jg	.LBB6_8
	jmp	.LBB6_53
.LBB6_37:                               # %if.else
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	$8, %ecx
	subl	%r11d, %ecx
	shlq	%cl, %rbx
	orb	%sil, %bl
	movb	%bl, %sil
	jmp	.LBB6_52
.LBB6_42:                               # %if.then.127
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	%ebx, %ecx
	shrl	$4, %ecx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB6_39:                               # %if.then.113
                                        #   in Loop: Header=BB6_8 Depth=2
	shlq	$4, %rbx
	movl	%eax, %r11d
	movb	%bl, %sil
	jmp	.LBB6_52
	.align	16, 0x90
.LBB6_8:                                # %for.body.64
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$-15, %eax
	cmpl	$2, %r14d
	je	.LBB6_32
# BB#9:                                 # %for.body.64
                                        #   in Loop: Header=BB6_8 Depth=2
	cmpl	$1, %r14d
	jne	.LBB6_10
# BB#31:                                # %sw.bb.72
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	(%rdi), %ebx
	movl	$4, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %ebx
	andl	$15, %ebx
	jmp	.LBB6_33
	.align	16, 0x90
.LBB6_32:                               # %sw.bb.77
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	(%rdi), %ebx
	jmp	.LBB6_33
	.align	16, 0x90
.LBB6_10:                               # %for.body.64
                                        #   in Loop: Header=BB6_8 Depth=2
	testl	%r14d, %r14d
	jne	.LBB6_56
# BB#11:                                # %sw.bb.66
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	(%rdi), %ebx
	movl	-72(%rsp), %ecx         # 4-byte Reload
	subl	%r8d, %ecx
	shrl	%cl, %ebx
	andl	-76(%rsp), %ebx         # 4-byte Folded Reload
.LBB6_33:                               # %do.body.81
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	-16(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %ebx
	movl	%r12d, %ecx
	cmpl	$16, %r12d
	ja	.LBB6_56
# BB#34:                                # %do.body.81
                                        #   in Loop: Header=BB6_8 Depth=2
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_35:                               # %sw.bb.92
                                        #   in Loop: Header=BB6_8 Depth=2
	addl	-56(%rsp), %r11d        # 4-byte Folded Reload
	cmpl	$8, %r11d
	jne	.LBB6_37
# BB#36:                                # %if.then.96
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	%sil, %eax
	orl	%ebx, %eax
	movb	%al, (%rdx)
	incq	%rdx
	xorl	%r11d, %r11d
	xorl	%esi, %esi
	jmp	.LBB6_52
.LBB6_38:                               # %sw.bb.111
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	%r11d, %eax
	xorl	$4, %eax
	cmpl	$4, %r11d
	jne	.LBB6_39
# BB#40:                                # %if.else.116
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	%sil, %ecx
	orl	%ebx, %ecx
	movb	%cl, (%rdx)
	incq	%rdx
	movl	%eax, %r11d
	jmp	.LBB6_52
.LBB6_41:                               # %sw.bb.124
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	%r11d, %eax
	xorl	$4, %eax
	cmpl	$4, %r11d
	jne	.LBB6_42
# BB#43:                                # %if.else.133
                                        #   in Loop: Header=BB6_8 Depth=2
	movzbl	%sil, %r11d
	movl	%ebx, %ecx
	shrl	$8, %ecx
	orl	%r11d, %ecx
	movb	%cl, (%rdx)
	movb	%bl, 1(%rdx)
	addq	$2, %rdx
	movl	%eax, %r11d
	jmp	.LBB6_52
.LBB6_44:                               # %sw.bb.143
                                        #   in Loop: Header=BB6_8 Depth=2
	movb	$0, (%rdx)
	incq	%rdx
.LBB6_45:                               # %sw.bb.147
                                        #   in Loop: Header=BB6_8 Depth=2
	movb	$0, (%rdx)
	incq	%rdx
.LBB6_46:                               # %sw.bb.151
                                        #   in Loop: Header=BB6_8 Depth=2
	movb	$0, (%rdx)
	incq	%rdx
.LBB6_47:                               # %sw.bb.155
                                        #   in Loop: Header=BB6_8 Depth=2
	movb	$0, (%rdx)
	incq	%rdx
.LBB6_48:                               # %sw.bb.159
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, (%rdx)
	incq	%rdx
.LBB6_49:                               # %sw.bb.163
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, (%rdx)
	incq	%rdx
.LBB6_50:                               # %sw.bb.167
                                        #   in Loop: Header=BB6_8 Depth=2
	movb	%bh, (%rdx)  # NOREX
	incq	%rdx
.LBB6_51:                               # %sw.bb.171
                                        #   in Loop: Header=BB6_8 Depth=2
	movb	%bl, (%rdx)
	incq	%rdx
.LBB6_52:                               # %for.inc.179
                                        #   in Loop: Header=BB6_8 Depth=2
	addl	-44(%rsp), %r8d         # 4-byte Folded Reload
	movl	%r8d, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %rdi
	andl	$7, %r8d
	decl	%r10d
	cmpl	$1, %r10d
	jg	.LBB6_8
	.align	16, 0x90
.LBB6_53:                               # %for.end.181
                                        #   in Loop: Header=BB6_5 Depth=1
	testl	%r11d, %r11d
	je	.LBB6_55
# BB#54:                                # %if.then.184
                                        #   in Loop: Header=BB6_5 Depth=1
	movzbl	%sil, %eax
	movzbl	(%rdx), %esi
	movl	$255, %edi
	movb	%r11b, %cl
	shrl	%cl, %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movb	%dil, (%rdx)
.LBB6_55:                               # %for.inc.200
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-68(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movl	%ecx, -68(%rsp)         # 4-byte Spill
	movq	-24(%rsp), %rax         # 8-byte Reload
	movslq	8(%rax), %rax
	addq	%rax, %r13
	movq	-32(%rsp), %rax         # 8-byte Reload
	movslq	8(%rax), %rax
	addq	%rax, %r9
	xorl	%eax, %eax
	cmpl	-4(%rsp), %ecx          # 4-byte Folded Reload
	jl	.LBB6_5
.LBB6_56:                               # %cleanup.210
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	bits_expand_plane, .Lfunc_end6-bits_expand_plane
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_35
	.quad	.LBB6_38
	.quad	.LBB6_51
	.quad	.LBB6_41
	.quad	.LBB6_50
	.quad	.LBB6_56
	.quad	.LBB6_49
	.quad	.LBB6_56
	.quad	.LBB6_48
	.quad	.LBB6_56
	.quad	.LBB6_47
	.quad	.LBB6_56
	.quad	.LBB6_46
	.quad	.LBB6_56
	.quad	.LBB6_45
	.quad	.LBB6_56
	.quad	.LBB6_44

	.text
	.globl	bytes_fill_rectangle
	.align	16, 0x90
	.type	bytes_fill_rectangle,@function
bytes_fill_rectangle:                   # @bytes_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 48
.Ltmp88:
	.cfi_offset %rbx, -48
.Ltmp89:
	.cfi_offset %r12, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rdi, %rbx
	testl	%ebp, %ebp
	jle	.LBB7_3
# BB#1:                                 # %while.body.lr.ph
	movzbl	%dl, %r14d
	movslq	%ecx, %r15
	movl	%esi, %r12d
	incl	%ebp
	.align	16, 0x90
.LBB7_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	callq	memset
	addq	%r12, %rbx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB7_2
.LBB7_3:                                # %while.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	bytes_fill_rectangle, .Lfunc_end7-bytes_fill_rectangle
	.cfi_endproc

	.globl	bytes_copy_rectangle
	.align	16, 0x90
	.type	bytes_copy_rectangle,@function
bytes_copy_rectangle:                   # @bytes_copy_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp96:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp97:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp99:
	.cfi_def_cfa_offset 64
.Ltmp100:
	.cfi_offset %rbx, -56
.Ltmp101:
	.cfi_offset %r12, -48
.Ltmp102:
	.cfi_offset %r13, -40
.Ltmp103:
	.cfi_offset %r14, -32
.Ltmp104:
	.cfi_offset %r15, -24
.Ltmp105:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	testl	%r14d, %r14d
	jle	.LBB8_3
# BB#1:                                 # %while.body.lr.ph
	movslq	%r8d, %r15
	movl	%ecx, %r12d
	movl	%esi, %r13d
	incl	%r14d
	.align	16, 0x90
.LBB8_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r12, %rbx
	addq	%r13, %rbp
	decl	%r14d
	cmpl	$1, %r14d
	jg	.LBB8_2
.LBB8_3:                                # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	bytes_copy_rectangle, .Lfunc_end8-bytes_copy_rectangle
	.cfi_endproc

	.globl	bytes_rectangle_is_const
	.align	16, 0x90
	.type	bytes_rectangle_is_const,@function
bytes_rectangle_is_const:               # @bytes_rectangle_is_const
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbx, -16
	testl	%edx, %edx
	movl	$-1, %eax
	je	.LBB9_4
# BB#1:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB9_4
# BB#2:                                 # %if.end
	movsbl	(%rdi), %r8d
	jle	.LBB9_3
# BB#5:                                 # %while.body.lr.ph
	movl	%esi, %r9d
	leal	1(%rdx), %r10d
.LBB9_6:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
	testl	%edx, %edx
	movl	%r10d, %r11d
	movq	%rdi, %rsi
	jle	.LBB9_9
	.align	16, 0x90
.LBB9_7:                                # %for.body
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi), %ebx
	cmpl	%r8d, %ebx
	jne	.LBB9_4
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB9_7 Depth=2
	incq	%rsi
	decl	%r11d
	cmpl	$1, %r11d
	jg	.LBB9_7
.LBB9_9:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB9_6 Depth=1
	addq	%r9, %rdi
	cmpl	$2, %ecx
	leal	-1(%rcx), %ecx
	jge	.LBB9_6
.LBB9_3:
	movl	%r8d, %eax
.LBB9_4:                                # %cleanup.11
	popq	%rbx
	retq
.Lfunc_end9:
	.size	bytes_rectangle_is_const, .Lfunc_end9-bytes_rectangle_is_const
	.cfi_endproc

	.globl	bytes_copy_rectangle_zero_padding
	.align	16, 0x90
	.type	bytes_copy_rectangle_zero_padding,@function
bytes_copy_rectangle_zero_padding:      # @bytes_copy_rectangle_zero_padding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp111:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp114:
	.cfi_def_cfa_offset 64
.Ltmp115:
	.cfi_offset %rbx, -56
.Ltmp116:
	.cfi_offset %r12, -48
.Ltmp117:
	.cfi_offset %r13, -40
.Ltmp118:
	.cfi_offset %r14, -32
.Ltmp119:
	.cfi_offset %r15, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	subl	%r8d, %eax
	jne	.LBB10_1
# BB#4:                                 # %while.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB10_7
# BB#5:                                 # %while.body.lr.ph
	movslq	%r8d, %r15
	movl	%ecx, %r12d
	movl	%esi, %r13d
	incl	%r14d
	.align	16, 0x90
.LBB10_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r12, %rbx
	addq	%r13, %rbp
	decl	%r14d
	cmpl	$1, %r14d
	jg	.LBB10_6
	jmp	.LBB10_7
.LBB10_1:                               # %while.cond.7.preheader
	testl	%r14d, %r14d
	jle	.LBB10_7
# BB#2:                                 # %while.body.11.lr.ph
	movslq	%r8d, %r15
	cltq
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	%ecx, %r13d
	movl	%esi, %r12d
	incl	%r14d
	.align	16, 0x90
.LBB10_3:                               # %while.body.11
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	leaq	(%rbp,%r15), %rdi
	xorl	%esi, %esi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memset
	addq	%r13, %rbx
	addq	%r12, %rbp
	decl	%r14d
	cmpl	$1, %r14d
	jg	.LBB10_3
.LBB10_7:                               # %if.end.23
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	bytes_copy_rectangle_zero_padding, .Lfunc_end10-bytes_copy_rectangle_zero_padding
	.cfi_endproc

	.type	mono_copy_masks,@object # @mono_copy_masks
	.section	.rodata,"a",@progbits
	.globl	mono_copy_masks
	.align	16
mono_copy_masks:
	.short	65535                   # 0xffff
	.short	65407                   # 0xff7f
	.short	65343                   # 0xff3f
	.short	65311                   # 0xff1f
	.short	65295                   # 0xff0f
	.short	65287                   # 0xff07
	.short	65283                   # 0xff03
	.short	65281                   # 0xff01
	.short	65280                   # 0xff00
	.short	32512                   # 0x7f00
	.short	16128                   # 0x3f00
	.short	7936                    # 0x1f00
	.short	3840                    # 0xf00
	.short	1792                    # 0x700
	.short	768                     # 0x300
	.short	256                     # 0x100
	.short	0                       # 0x0
	.size	mono_copy_masks, 34

	.type	mono_fill_masks,@object # @mono_fill_masks
	.globl	mono_fill_masks
	.align	16
mono_fill_masks:
	.long	4294967295              # 0xffffffff
	.long	4294967167              # 0xffffff7f
	.long	4294967103              # 0xffffff3f
	.long	4294967071              # 0xffffff1f
	.long	4294967055              # 0xffffff0f
	.long	4294967047              # 0xffffff07
	.long	4294967043              # 0xffffff03
	.long	4294967041              # 0xffffff01
	.long	4294967040              # 0xffffff00
	.long	4294934272              # 0xffff7f00
	.long	4294917888              # 0xffff3f00
	.long	4294909696              # 0xffff1f00
	.long	4294905600              # 0xffff0f00
	.long	4294903552              # 0xffff0700
	.long	4294902528              # 0xffff0300
	.long	4294902016              # 0xffff0100
	.long	4294901760              # 0xffff0000
	.long	4286513152              # 0xff7f0000
	.long	4282318848              # 0xff3f0000
	.long	4280221696              # 0xff1f0000
	.long	4279173120              # 0xff0f0000
	.long	4278648832              # 0xff070000
	.long	4278386688              # 0xff030000
	.long	4278255616              # 0xff010000
	.long	4278190080              # 0xff000000
	.long	2130706432              # 0x7f000000
	.long	1056964608              # 0x3f000000
	.long	520093696               # 0x1f000000
	.long	251658240               # 0xf000000
	.long	117440512               # 0x7000000
	.long	50331648                # 0x3000000
	.long	16777216                # 0x1000000
	.long	0                       # 0x0
	.size	mono_fill_masks, 132

	.type	bits_bounding_box.first_1,@object # @bits_bounding_box.first_1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
bits_bounding_box.first_1:
	.asciz	"\004\003\002\002\001\001\001\001\000\000\000\000\000\000\000"
	.size	bits_bounding_box.first_1, 16

	.type	bits_bounding_box.last_1,@object # @bits_bounding_box.last_1
	.align	16
bits_bounding_box.last_1:
	.ascii	"\000\004\003\004\002\004\003\004\001\004\003\004\002\004\003\004"
	.size	bits_bounding_box.last_1, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
