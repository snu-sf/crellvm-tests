	.text
	.file	"pagecount.bc"
	.globl	pcf_getcount
	.align	16, 0x90
	.type	pcf_getcount,@function
pcf_getcount:                           # @pcf_getcount
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB0_14
# BB#1:                                 # %lor.lhs.false
	cmpb	$0, (%rbx)
	je	.LBB0_14
# BB#2:                                 # %if.end
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	access
	testl	%eax, %eax
	je	.LBB0_4
# BB#3:                                 # %if.then.5
	movq	$0, (%r14)
	jmp	.LBB0_14
.LBB0_4:                                # %if.end.6
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	fopen64
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_5
# BB#6:                                 # %if.end.14
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	lock_file
	testl	%eax, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.18
	movq	%r15, %rdi
	callq	fclose
	movl	$1, %ebp
	jmp	.LBB0_14
.LBB0_5:                                # %if.then.10
	movq	stderr(%rip), %rbp
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	movl	$-1, %ebp
	jmp	.LBB0_14
.LBB0_8:                                # %if.end.20
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	fscanf
	cmpl	$1, %eax
	je	.LBB0_13
# BB#9:                                 # %if.then.i
	movq	%r15, %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB0_12
# BB#10:                                # %land.lhs.true.i
	movq	%r15, %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB0_11
.LBB0_12:                               # %if.else.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	fprintf
	movl	$-1, %ebp
	jmp	.LBB0_13
.LBB0_11:                               # %if.then.4.i
	movq	$0, (%r14)
.LBB0_13:                               # %read_count.exit
	movq	%r15, %rdi
	callq	fclose
.LBB0_14:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pcf_getcount, .Lfunc_end0-pcf_getcount
	.cfi_endproc

	.align	16, 0x90
	.type	lock_file,@function
lock_file:                              # @lock_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 80
.Ltmp14:
	.cfi_offset %rbx, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%r15, %rdi
	callq	fileno
	movl	%eax, %ebp
	cmpl	$-1, %ebp
	je	.LBB1_1
# BB#2:                                 # %if.end
	movw	%bx, 8(%rsp)
	movw	$0, 10(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	xorl	%r15d, %r15d
	leaq	8(%rsp), %rdx
	movl	$6, %esi
	xorl	%eax, %eax
	movl	%ebp, %edi
	callq	fcntl
	testl	%eax, %eax
	je	.LBB1_9
# BB#3:
	movl	$1, %ebx
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB1_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebx
	movl	$1, %edi
	callq	sleep
	movl	$6, %esi
	xorl	%eax, %eax
	movl	%ebp, %edi
	movq	%r15, %rdx
	callq	fcntl
	cmpl	$2, %ebx
	jg	.LBB1_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB1_4 Depth=1
	testl	%eax, %eax
	jne	.LBB1_4
.LBB1_6:                                # %while.end
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB1_9
# BB#7:                                 # %if.then.13
	movq	stderr(%rip), %rdi
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	fprintf
	jmp	.LBB1_8
.LBB1_1:                                # %if.then
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movq	%r15, %rdi
	callq	fclose
.LBB1_8:                                # %cleanup
	movl	$-1, %r15d
.LBB1_9:                                # %cleanup
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lock_file, .Lfunc_end1-lock_file
	.cfi_endproc

	.globl	pcf_inccount
	.align	16, 0x90
	.type	pcf_inccount,@function
pcf_inccount:                           # @pcf_inccount
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 64
.Ltmp24:
	.cfi_offset %rbx, -48
.Ltmp25:
	.cfi_offset %r12, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB2_20
# BB#1:                                 # %lor.lhs.false
	cmpb	$0, (%rbx)
	je	.LBB2_20
# BB#2:                                 # %if.end
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	fopen64
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB2_3
# BB#4:                                 # %if.end.9
	movl	$1, %ebp
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lock_file
	testl	%eax, %eax
	jne	.LBB2_5
# BB#6:                                 # %if.end.15
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	fseek
	testl	%eax, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.19
	movq	stderr(%rip), %r15
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	fprintf
.LBB2_5:                                # %if.then.13
	movq	%r14, %rdi
	callq	fclose
	jmp	.LBB2_20
.LBB2_3:                                # %if.then.5
	movq	stderr(%rip), %rbp
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	movl	$1, %ebp
.LBB2_20:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_8:                                # %if.end.24
	leaq	8(%rsp), %rdx
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fscanf
	cmpl	$1, %eax
	je	.LBB2_12
# BB#9:                                 # %if.then.i
	movq	%r14, %rdi
	callq	feof
	testl	%eax, %eax
	je	.LBB2_21
# BB#10:                                # %land.lhs.true.i
	movq	%r14, %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB2_11
.LBB2_21:                               # %if.then.28
	movq	stderr(%rip), %rdi
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	fprintf
	movq	%r14, %rdi
	callq	fclose
	movl	$-1, %ebp
	jmp	.LBB2_20
.LBB2_11:                               # %if.then.4.i
	movq	$0, 8(%rsp)
.LBB2_12:                               # %if.end.30
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	fopen64
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB2_13
# BB#14:                                # %if.else
	addq	8(%rsp), %r15
	xorl	%ebp, %ebp
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	fprintf
	testl	%eax, %eax
	jns	.LBB2_16
# BB#15:                                # %if.then.41
	movq	stderr(%rip), %rbp
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	movl	$-1, %ebp
.LBB2_16:                               # %if.end.45
	movq	%r12, %rdi
	callq	fclose
	testl	%eax, %eax
	je	.LBB2_18
# BB#17:                                # %if.then.49
	movq	stderr(%rip), %rbp
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	movl	$-1, %ebp
	jmp	.LBB2_18
.LBB2_13:                               # %if.then.34
	movq	stderr(%rip), %rbp
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	movl	$1, %ebp
.LBB2_18:                               # %if.end.54
	movq	%r14, %rdi
	callq	fclose
	testl	%eax, %eax
	je	.LBB2_20
# BB#19:                                # %if.then.58
	movq	stderr(%rip), %r14
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	jmp	.LBB2_20
.Lfunc_end2:
	.size	pcf_inccount, .Lfunc_end2-pcf_inccount
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"?-E Pagecount module: Cannot open page count file `%s': %s.\n"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"a+"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"?-E Pagecount module: fseek() failed on `%s': %s.\n"
	.size	.L.str.3, 51

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"w"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"?-E Pagecount module: Error opening page count file `%s' a second time: %s.\n"
	.size	.L.str.5, 77

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%lu\n"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"?-E Pagecount module: Error writing to `%s': %s.\n"
	.size	.L.str.7, 50

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"?-E Pagecount module: Error closing `%s' after writing: %s.\n"
	.size	.L.str.8, 61

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"?-W Pagecount module: Error closing `%s': %s.\n"
	.size	.L.str.9, 47

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"?-E Pagecount module: Cannot obtain file descriptor (%s).\n"
	.size	.L.str.10, 59

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"?-E Pagecount module: Cannot obtain lock on page count file `%s' after %d attempts.\n"
	.size	.L.str.11, 85

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"?-E Pagecount module: Strange contents in page count file `%s'.\n"
	.size	.L.str.12, 65


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
