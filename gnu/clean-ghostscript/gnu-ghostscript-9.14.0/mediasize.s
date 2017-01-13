	.text
	.file	"mediasize.bc"
	.globl	ms_find_size_from_code
	.align	16, 0x90
	.type	ms_find_size_from_code,@function
ms_find_size_from_code:                 # @ms_find_size_from_code
	.cfi_startproc
# BB#0:                                 # %entry
	andl	$-65281, %edi           # imm = 0xFFFFFFFFFFFF00FF
	leal	-1(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	$76, %ecx
	leaq	(%rdi,%rdi,2), %rcx
	leaq	list(,%rcx,8), %rcx
	cmovbeq	%rcx, %rax
	retq
.Lfunc_end0:
	.size	ms_find_size_from_code, .Lfunc_end0-ms_find_size_from_code
	.cfi_endproc

	.globl	ms_find_code_from_name
	.align	16, 0x90
	.type	ms_find_code_from_name,@function
ms_find_code_from_name:                 # @ms_find_code_from_name
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, 32(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %rax
	movq	%rax, 56(%rsp)
	xorl	%r12d, %r12d
	movl	$list+24, %eax
	cmpl	$0, ms_find_code_from_name.entries(%rip)
	jne	.LBB1_4
# BB#1:
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, ms_find_code_from_name.sorted_list(,%rcx,8)
	incq	%rcx
	addq	$24, %rax
	cmpl	$77, %ecx
	jb	.LBB1_2
# BB#3:                                 # %while.end
	movl	%ecx, ms_find_code_from_name.entries(%rip)
	movl	$ms_find_code_from_name.sorted_list, %edi
	movl	$77, %esi
	movl	$8, %edx
	movl	$cmp_by_name, %ecx
	callq	qsort
.LBB1_4:                                # %if.end
	testq	%r13, %r13
	je	.LBB1_37
# BB#5:                                 # %if.end.7
	movl	$46, %esi
	movq	%r13, %rdi
	callq	strchr
	movq	%rax, %r14
	xorl	%r15d, %r15d
	testq	%r14, %r14
	je	.LBB1_38
# BB#6:
	movq	%r14, %rbx
	.align	16, 0x90
.LBB1_7:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rbp
	incq	%rbp
	movl	$46, %esi
	movq	%rbp, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB1_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB1_7 Depth=1
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	__rawmemchr
	movq	%rax, %rbx
.LBB1_9:                                # %if.end.17
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	%rbx, %rax
	subq	%rbp, %rax
	xorl	%r12d, %r12d
	cmpq	$3, %rax
	je	.LBB1_13
# BB#10:                                # %if.end.17
                                        #   in Loop: Header=BB1_7 Depth=1
	cmpq	$5, %rax
	jne	.LBB1_11
# BB#14:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$.L.str.2, %esi
	movl	$5, %edx
	movq	%rbp, %rdi
	callq	strncmp
	movl	$1024, %ecx             # imm = 0x400
	testl	%eax, %eax
	je	.LBB1_17
# BB#15:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$.L.str.3, %esi
	movl	$5, %edx
	movq	%rbp, %rdi
	callq	strncmp
	movl	$8192, %ecx             # imm = 0x2000
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_13:                               # %land.lhs.true.27
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$.L.str.1, %esi
	movl	$3, %edx
	movq	%rbp, %rdi
	callq	strncmp
	movl	$2048, %ecx             # imm = 0x800
	jmp	.LBB1_16
	.align	16, 0x90
.LBB1_11:                               # %if.end.17
                                        #   in Loop: Header=BB1_7 Depth=1
	cmpq	$10, %rax
	jne	.LBB1_37
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$.L.str, %esi
	movl	$10, %edx
	movq	%rbp, %rdi
	callq	strncmp
	movl	$16384, %ecx            # imm = 0x4000
.LBB1_16:                               # %land.lhs.true.43
                                        #   in Loop: Header=BB1_7 Depth=1
	testl	%eax, %eax
	jne	.LBB1_37
.LBB1_17:                               # %if.end.52
                                        #   in Loop: Header=BB1_7 Depth=1
	testl	%r15d, %ecx
	jne	.LBB1_37
# BB#18:                                # %do.cond
                                        #   in Loop: Header=BB1_7 Depth=1
	orl	%ecx, %r15d
	cmpb	$0, (%rbx)
	jne	.LBB1_7
	jmp	.LBB1_19
.LBB1_38:                               # %if.then.10
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	__rawmemchr
	movq	%rax, %r14
.LBB1_19:                               # %if.end.64
	subq	%r13, %r14
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, 24(%rsp)          # 8-byte Spill
	negq	%rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	16(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB1_20:                               # %while.body.69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
	leaq	(%r13,%r14), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpq	24(%rsp), %r14          # 8-byte Folded Reload
	jbe	.LBB1_22
# BB#21:                                # %land.end.i
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %rdi
	movl	$.L.str.1, %esi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	callq	strncmp
	movl	$2048, %r13d            # imm = 0x800
	testl	%eax, %eax
	je	.LBB1_39
.LBB1_22:                               # %while.body.i
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rbx
	cmpq	%rbx, %r14
	jbe	.LBB1_24
# BB#23:                                # %land.end.i.1
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	subq	%rbx, %rdi
	movl	$.L.str.2, %esi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$1024, %r13d            # imm = 0x400
	testl	%eax, %eax
	je	.LBB1_39
.LBB1_24:                               # %while.body.i.1
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$.L.str.83, %edi
	callq	strlen
	movq	%rax, %rbx
	cmpq	%rbx, %r14
	jbe	.LBB1_26
# BB#25:                                # %land.end.i.2
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	subq	%rbx, %rdi
	movl	$.L.str.83, %esi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$4096, %r13d            # imm = 0x1000
	testl	%eax, %eax
	je	.LBB1_39
.LBB1_26:                               # %while.body.i.2
                                        #   in Loop: Header=BB1_20 Depth=1
	movl	$.L.str.3, %edi
	callq	strlen
	movq	%rax, %rbx
	cmpq	%rbx, %r14
	jbe	.LBB1_28
# BB#27:                                # %land.end.i.3
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	subq	%rbx, %rdi
	movl	$.L.str.3, %esi
	movq	%rbx, %rdx
	callq	strncmp
	movl	$8192, %r13d            # imm = 0x2000
	testl	%eax, %eax
	je	.LBB1_39
.LBB1_28:                               # %while.body.i.3
                                        #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	je	.LBB1_33
# BB#29:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_20 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r13d
	testl	%r13d, %r13d
	movq	8(%rsp), %r12           # 8-byte Reload
	je	.LBB1_33
	.align	16, 0x90
.LBB1_30:                               # %land.rhs.i.48
                                        #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%r12), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %rbx
	cmpq	%rbx, %r14
	jbe	.LBB1_32
# BB#31:                                # %land.end.i.53
                                        #   in Loop: Header=BB1_30 Depth=2
	movq	48(%rsp), %rdi          # 8-byte Reload
	subq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB1_39
.LBB1_32:                               # %while.body.i.57
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	(%r12), %r13d
	addq	$16, %r12
	testl	%r13d, %r13d
	jne	.LBB1_30
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_39:                               # %cleanup.88
                                        #   in Loop: Header=BB1_20 Depth=1
	subq	%rbx, %r14
	xorl	%r12d, %r12d
	movl	%r13d, %eax
	andl	%r15d, %eax
	cmovnel	%r12d, %r13d
	orl	%r13d, %r15d
	testl	%eax, %eax
	movq	32(%rsp), %r13          # 8-byte Reload
	je	.LBB1_20
	jmp	.LBB1_37
.LBB1_33:                               # %while.end.91
	xorl	%r12d, %r12d
	cmpq	$14, %r14
	movq	32(%rsp), %rsi          # 8-byte Reload
	ja	.LBB1_37
# BB#34:                                # %while.end.91
	movl	%r15d, %eax
	andl	$3072, %eax             # imm = 0xC00
	cmpl	$3072, %eax             # imm = 0xC00
	je	.LBB1_37
# BB#35:                                # %if.end.108
	leaq	89(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	strncpy
	movb	$0, 89(%rsp,%r14)
	movq	%rbx, 72(%rsp)
	movl	ms_find_code_from_name.entries(%rip), %edx
	leaq	56(%rsp), %rdi
	movl	$ms_find_code_from_name.sorted_list, %esi
	movl	$8, %ecx
	movl	$cmp_by_name, %r8d
	callq	bsearch
	testq	%rax, %rax
	je	.LBB1_37
# BB#36:                                # %cond.false
	movq	(%rax), %rax
	orl	(%rax), %r15d
	movl	%r15d, %r12d
.LBB1_37:                               # %cleanup.118
	movl	%r12d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ms_find_code_from_name, .Lfunc_end1-ms_find_code_from_name
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_by_name,@function
cmp_by_name:                            # @cmp_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	8(%rax), %rdi
	movq	(%rsi), %rax
	movq	8(%rax), %rsi
	jmp	strcmp                  # TAILCALL
.Lfunc_end2:
	.size	cmp_by_name, .Lfunc_end2-cmp_by_name
	.cfi_endproc

	.globl	ms_find_name_from_code
	.align	16, 0x90
	.type	ms_find_name_from_code,@function
ms_find_name_from_code:                 # @ms_find_name_from_code
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
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, 16(%rsp)
	movl	%ebp, 12(%rsp)
	movl	%ebp, %ecx
	andl	$-65281, %ecx           # imm = 0xFFFFFFFFFFFF00FF
	leal	-1(%rcx), %edx
	xorl	%eax, %eax
	cmpl	$76, %edx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	list(,%rcx,8), %rcx
	cmovbeq	%rcx, %rax
	testq	%r15, %r15
	je	.LBB3_2
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#3:                                 # %if.end
	testq	%rax, %rax
	je	.LBB3_13
# BB#4:                                 # %if.end.6
	movq	8(%rax), %r13
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r12
	cmpq	%rbx, %r12
	jae	.LBB3_5
# BB#6:                                 # %if.end.11
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	strcpy
	notq	%r12
	addq	%r12, %rbx
	movq	%rbx, 16(%rsp)
	andl	$65280, %ebp            # imm = 0xFF00
	movl	%ebp, 12(%rsp)
	testq	%r14, %r14
	je	.LBB3_8
# BB#7:                                 # %land.lhs.true
	leaq	16(%rsp), %rsi
	leaq	12(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	add_substrings
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB3_15
.LBB3_8:                                # %lor.lhs.false.17
	leaq	16(%rsp), %rsi
	leaq	12(%rsp), %rdx
	movl	$substrings, %ecx
	movq	%r15, %rdi
	callq	add_substrings
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB3_15
# BB#9:                                 # %if.end.21
	movl	12(%rsp), %ebx
	testb	$64, %bh
	je	.LBB3_12
# BB#10:                                # %if.then.23
	cmpq	$10, 16(%rsp)
	ja	.LBB3_11
.LBB3_5:                                # %if.then.9
	callq	__errno_location
	movl	$34, (%rax)
	jmp	.LBB3_14
.LBB3_2:                                # %if.then
	callq	__errno_location
	movl	$22, (%rax)
	jmp	.LBB3_14
.LBB3_11:                               # %if.end.27
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	callq	strcat
	andl	$-16385, %ebx           # imm = 0xFFFFFFFFFFFFBFFF
	movl	%ebx, 12(%rsp)
.LBB3_12:                               # %if.end.30
	xorl	%eax, %eax
	testl	%ebx, %ebx
	je	.LBB3_15
.LBB3_13:                               # %if.then.32
	callq	__errno_location
	movl	$33, (%rax)
.LBB3_14:                               # %cleanup
	movl	$-1, %eax
.LBB3_15:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ms_find_name_from_code, .Lfunc_end3-ms_find_name_from_code
	.cfi_endproc

	.align	16, 0x90
	.type	add_substrings,@function
add_substrings:                         # @add_substrings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 80
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	__rawmemchr
	movq	%rax, %r13
	movl	(%rbx), %r15d
	testl	%r15d, %r15d
	je	.LBB4_8
# BB#1:                                 # %while.body.preheader
	addq	$16, %rbx
	.align	16, 0x90
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r12d
	testl	%r15d, %r12d
	je	.LBB4_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	-8(%rbx), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r14
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmpq	%r14, (%rcx)
	jb	.LBB4_4
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB4_2 Depth=1
	notl	%r15d
	andl	%r15d, %r12d
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%r12d, (%rax)
	movq	%r13, %rdi
	movq	%rcx, %r15
	movq	%rbp, %rsi
	callq	strcpy
	addq	%r14, %r13
	subq	%r14, (%r15)
.LBB4_6:                                # %if.end.19
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	(%rbx), %r15d
	addq	$16, %rbx
	testl	%r15d, %r15d
	jne	.LBB4_2
# BB#7:
	xorl	%ebp, %ebp
	jmp	.LBB4_8
.LBB4_4:                                # %if.then.9
	callq	__errno_location
	movl	$34, (%rax)
	movl	$-1, %ebp
.LBB4_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	add_substrings, .Lfunc_end4-add_substrings
	.cfi_endproc

	.type	list,@object            # @list
	.section	.rodata,"a",@progbits
	.align	16
list:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.5
	.zero	8
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.6
	.long	1116956366              # float 7.370079e+01
	.long	1121043335              # float 1.048819e+02
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.7
	.long	1117699451              # float 7.937008e+01
	.long	1122157963              # float 1.133858e+02
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.long	1118814079              # float 8.787402e+01
	.long	1123644134              # float 1.247244e+02
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.9
	.long	1119185622              # float 9.070866e+01
	.long	1124015676              # float 1.275591e+02
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.10
	.long	1121043335              # float 1.048819e+02
	.long	1125344974              # float 1.474016e+02
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.11
	.long	1122157963              # float 1.133858e+02
	.long	1126273830              # float 1.615748e+02
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.12
	.long	1123644134              # float 1.247244e+02
	.long	1127202687              # float 1.757480e+02
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.13
	.long	1124015676              # float 1.275591e+02
	.long	1127574230              # float 1.814173e+02
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.14
	.long	1125344974              # float 1.474016e+02
	.long	1129431943              # float 2.097638e+02
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.15
	.long	1126273830              # float 1.615748e+02
	.long	1130732342              # float 2.296063e+02
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.16
	.long	1127202687              # float 1.757480e+02
	.long	1132032742              # float 2.494488e+02
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.17
	.long	1127574230              # float 1.814173e+02
	.long	1132526068              # float 2.579528e+02
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.18
	.long	1129431943              # float 2.097638e+02
	.long	1133826467              # float 2.976378e+02
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.19
	.long	1129840640              # float 2.160000e+02
	.long	1135869952              # float 3.600000e+02
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.20
	.long	1130732342              # float 2.296063e+02
	.long	1134662438              # float 3.231496e+02
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.21
	.long	1132032742              # float 2.494488e+02
	.long	1135684181              # float 3.543307e+02
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.22
	.long	1132404284              # float 2.551181e+02
	.long	1141982861              # float 5.811024e+02
	.long	18                      # 0x12
	.zero	4
	.quad	.L.str.23
	.long	1132526068              # float 2.579528e+02
	.long	1135962838              # float 3.628347e+02
	.long	19                      # 0x13
	.zero	4
	.quad	.L.str.24
	.long	1133215744              # float 2.790000e+02
	.long	1141309440              # float 5.400000e+02
	.long	20                      # 0x14
	.zero	4
	.quad	.L.str.25
	.long	1133215744              # float 2.790000e+02
	.long	1142931456              # float 6.390000e+02
	.long	21                      # 0x15
	.zero	4
	.quad	.L.str.26
	.long	1133362039              # float 2.834646e+02
	.long	1137820551              # float 4.195276e+02
	.long	22                      # 0x16
	.zero	4
	.quad	.L.str.27
	.long	1133510656              # float 2.880000e+02
	.long	1138229248              # float 4.320000e+02
	.long	23                      # 0x17
	.zero	4
	.quad	.L.str.28
	.long	1133805568              # float 2.970000e+02
	.long	1143668736              # float 6.840000e+02
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.29
	.long	1133826467              # float 2.976378e+02
	.long	1137820551              # float 4.195276e+02
	.long	25                      # 0x19
	.zero	4
	.quad	.L.str.30
	.long	1134290896              # float 3.118110e+02
	.long	1142679504              # float 6.236221e+02
	.long	26                      # 0x1a
	.zero	4
	.quad	.L.str.31
	.long	1134395392              # float 3.150000e+02
	.long	1137639424              # float 4.140000e+02
	.long	27                      # 0x1b
	.zero	4
	.quad	.L.str.32
	.long	1134662438              # float 3.231496e+02
	.long	1139120950              # float 4.592126e+02
	.long	28                      # 0x1c
	.zero	4
	.quad	.L.str.33
	.long	1135219752              # float 3.401575e+02
	.long	1143376146              # float 6.661417e+02
	.long	29                      # 0x1d
	.zero	4
	.quad	.L.str.34
	.long	1135684181              # float 3.543307e+02
	.long	1140421350              # float 4.988976e+02
	.long	30                      # 0x1e
	.zero	4
	.quad	.L.str.35
	.long	1135869952              # float 3.600000e+02
	.long	1141899264              # float 5.760000e+02
	.long	31                      # 0x1f
	.zero	4
	.quad	.L.str.36
	.long	1135962838              # float 3.628347e+02
	.long	1140914676              # float 5.159055e+02
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.37
	.long	1137049600              # float 3.960000e+02
	.long	1142489088              # float 6.120000e+02
	.long	33                      # 0x21
	.zero	4
	.quad	.L.str.38
	.long	1137820551              # float 4.195276e+02
	.long	1141750647              # float 5.669291e+02
	.long	34                      # 0x22
	.zero	4
	.quad	.L.str.39
	.long	1137820551              # float 4.195276e+02
	.long	1142215075              # float 5.952756e+02
	.long	35                      # 0x23
	.zero	4
	.quad	.L.str.40
	.long	1139120950              # float 4.592126e+02
	.long	1143097489              # float 6.491339e+02
	.long	36                      # 0x24
	.zero	4
	.quad	.L.str.41
	.long	1140421350              # float 4.988976e+02
	.long	1144072789              # float 7.086614e+02
	.long	37                      # 0x25
	.zero	4
	.quad	.L.str.42
	.long	1140914676              # float 5.159055e+02
	.long	1144397889              # float 7.285040e+02
	.long	38                      # 0x26
	.zero	4
	.quad	.L.str.43
	.long	1141014528              # float 5.220000e+02
	.long	1144848384              # float 7.560000e+02
	.long	39                      # 0x27
	.zero	4
	.quad	.L.str.44
	.long	1142215075              # float 5.952756e+02
	.long	1146255602              # float 8.418898e+02
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.45
	.long	1142215075              # float 5.952756e+02
	.long	1147788215              # float 9.354330e+02
	.long	41                      # 0x29
	.zero	4
	.quad	.L.str.46
	.long	1142489088              # float 6.120000e+02
	.long	1145237668              # float 7.797600e+02
	.long	42                      # 0x2a
	.zero	4
	.quad	.L.str.47
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.long	43                      # 0x2b
	.zero	4
	.quad	.L.str.48
	.long	1142489088              # float 6.120000e+02
	.long	1148977152              # float 1.008000e+03
	.long	44                      # 0x2c
	.zero	4
	.quad	.L.str.49
	.long	1142493732              # float 6.122834e+02
	.long	1145326745              # float 7.851968e+02
	.long	45                      # 0x2d
	.zero	4
	.quad	.L.str.50
	.long	1143004603              # float 6.434645e+02
	.long	1148995729              # float 1.009134e+03
	.long	46                      # 0x2e
	.zero	4
	.quad	.L.str.51
	.long	1143078912              # float 6.480000e+02
	.long	1146617856              # float 8.640000e+02
	.long	47                      # 0x2f
	.zero	4
	.quad	.L.str.52
	.long	1143097489              # float 6.491339e+02
	.long	1147509558              # float 9.184252e+02
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.53
	.long	1143608360              # float 6.803149e+02
	.long	1147881101              # float 9.411024e+02
	.long	49                      # 0x31
	.zero	4
	.quad	.L.str.54
	.long	1144072789              # float 7.086614e+02
	.long	1148856401              # float 1.000630e+03
	.long	50                      # 0x32
	.zero	4
	.quad	.L.str.55
	.long	1144397889              # float 7.285040e+02
	.long	1149303284              # float 1.031811e+03
	.long	51                      # 0x33
	.zero	4
	.quad	.L.str.56
	.long	1145438208              # float 7.920000e+02
	.long	1150877696              # float 1.224000e+03
	.long	52                      # 0x34
	.zero	4
	.quad	.L.str.57
	.long	1146255602              # float 8.418898e+02
	.long	1150603683              # float 1.190551e+03
	.long	53                      # 0x35
	.zero	4
	.quad	.L.str.58
	.long	1146617856              # float 8.640000e+02
	.long	1151467520              # float 1.296000e+03
	.long	54                      # 0x36
	.zero	4
	.quad	.L.str.59
	.long	1146627145              # float 8.645670e+02
	.long	1152159518              # float 1.380472e+03
	.long	55                      # 0x37
	.zero	4
	.quad	.L.str.60
	.long	1147509558              # float 9.184252e+02
	.long	1151486097              # float 1.298268e+03
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.61
	.long	1147797504              # float 9.360000e+02
	.long	1152057344              # float 1.368000e+03
	.long	57                      # 0x39
	.zero	4
	.quad	.L.str.62
	.long	1148856401              # float 1.000630e+03
	.long	1152461397              # float 1.417323e+03
	.long	58                      # 0x3a
	.zero	4
	.quad	.L.str.63
	.long	1149303284              # float 1.031811e+03
	.long	1152809718              # float 1.459843e+03
	.long	59                      # 0x3b
	.zero	4
	.quad	.L.str.64
	.long	1150603683              # float 1.190551e+03
	.long	1154644210              # float 1.683780e+03
	.long	60                      # 0x3c
	.zero	4
	.quad	.L.str.65
	.long	1151467520              # float 1.296000e+03
	.long	1155006464              # float 1.728000e+03
	.long	61                      # 0x3d
	.zero	4
	.quad	.L.str.66
	.long	1151486097              # float 1.298268e+03
	.long	1155898166              # float 1.836850e+03
	.long	62                      # 0x3e
	.zero	4
	.quad	.L.str.67
	.long	1152461397              # float 1.417323e+03
	.long	1157268230              # float 2.004094e+03
	.long	63                      # 0x3f
	.zero	4
	.quad	.L.str.68
	.long	1152809718              # float 1.459843e+03
	.long	1157691892              # float 2.063622e+03
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.69
	.long	1154644210              # float 1.683780e+03
	.long	1159003902              # float 2.383937e+03
	.long	65                      # 0x41
	.zero	4
	.quad	.L.str.70
	.long	1155006464              # float 1.728000e+03
	.long	1159856128              # float 2.592000e+03
	.long	66                      # 0x42
	.zero	4
	.quad	.L.str.71
	.long	1155898166              # float 1.836850e+03
	.long	1159886316              # float 2.599370e+03
	.long	67                      # 0x43
	.zero	4
	.quad	.L.str.72
	.long	1157268230              # float 2.004094e+03
	.long	1160850005              # float 2.834646e+03
	.long	68                      # 0x44
	.zero	4
	.quad	.L.str.73
	.long	1157691892              # float 2.063622e+03
	.long	1161198326              # float 2.919685e+03
	.long	69                      # 0x45
	.zero	4
	.quad	.L.str.74
	.long	1159003902              # float 2.383937e+03
	.long	1163044429              # float 3.370394e+03
	.long	70                      # 0x46
	.zero	4
	.quad	.L.str.75
	.long	1159856128              # float 2.592000e+03
	.long	1163395072              # float 3.456000e+03
	.long	71                      # 0x47
	.zero	4
	.quad	.L.str.76
	.long	1159886316              # float 2.599370e+03
	.long	1164298385              # float 3.676535e+03
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.77
	.long	1160850005              # float 2.834646e+03
	.long	1165656838              # float 4.008189e+03
	.long	73                      # 0x49
	.zero	4
	.quad	.L.str.78
	.long	1161198326              # float 2.919685e+03
	.long	1166080500              # float 4.127244e+03
	.long	74                      # 0x4a
	.zero	4
	.quad	.L.str.79
	.long	1163044429              # float 3.370394e+03
	.long	1167392510              # float 4.767874e+03
	.long	75                      # 0x4b
	.zero	4
	.quad	.L.str.80
	.long	1167392510              # float 4.767874e+03
	.long	1171433037              # float 6.740788e+03
	.long	76                      # 0x4c
	.zero	4
	.quad	.L.str.81
	.zero	8
	.long	77                      # 0x4d
	.zero	4
	.quad	.L.str.82
	.zero	8
	.size	list, 1872

	.type	ms_find_code_from_name.sorted_list,@object # @ms_find_code_from_name.sorted_list
	.local	ms_find_code_from_name.sorted_list
	.comm	ms_find_code_from_name.sorted_list,616,16
	.type	ms_find_code_from_name.entries,@object # @ms_find_code_from_name.entries
	.local	ms_find_code_from_name.entries
	.comm	ms_find_code_from_name.entries,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Transverse"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Big"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Small"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Extra"
	.size	.L.str.3, 6

	.type	substrings,@object      # @substrings
	.section	.rodata,"a",@progbits
	.align	16
substrings:
	.long	2048                    # 0x800
	.zero	4
	.quad	.L.str.1
	.long	1024                    # 0x400
	.zero	4
	.quad	.L.str.2
	.long	4096                    # 0x1000
	.zero	4
	.quad	.L.str.83
	.long	8192                    # 0x2000
	.zero	4
	.quad	.L.str.3
	.zero	16
	.size	substrings, 80

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	".Transverse"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"A10"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"EnvC10"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ISOB10"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"JISB10"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"A9"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"EnvC9"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ISOB9"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"JISB9"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"A8"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"EnvC8"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ISOB8"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"JISB8"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"A7"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Index3x5in"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"EnvC7"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ISOB7"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"EnvChou4"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"JISB7"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"EnvMonarch"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Env9"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Postcard"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Index4x6in"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Env10"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"A6"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"EnvDL"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"EnvUS_A2"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"EnvC6"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"EnvChou3"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"ISOB6"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Index5x8in"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"JISB6"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Statement"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"DoublePostcard"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"A5"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"EnvC5"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"ISOB5"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"JISB5"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Executive"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"A4"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Folio"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Quarto"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Letter"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Legal"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"EnvKaku3"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"SuperA"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"ARCHA"
	.size	.L.str.51, 6

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"EnvC4"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"EnvKaku2"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"ISOB4"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"JISB4"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Tabloid"
	.size	.L.str.56, 8

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"A3"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"ARCHB"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"SuperB"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"EnvC3"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"HPSuperB"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"ISOB3"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"JISB3"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"A2"
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"ARCHC"
	.size	.L.str.65, 6

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"EnvC2"
	.size	.L.str.66, 6

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"ISOB2"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"JISB2"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"A1"
	.size	.L.str.69, 3

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"ARCHD"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"EnvC1"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"ISOB1"
	.size	.L.str.72, 6

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"JISB1"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"A0"
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"ARCHE"
	.size	.L.str.75, 6

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"EnvC0"
	.size	.L.str.76, 6

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"ISOB0"
	.size	.L.str.77, 6

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"JISB0"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"2A0"
	.size	.L.str.79, 4

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"4A0"
	.size	.L.str.80, 4

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"CustomPageSize"
	.size	.L.str.81, 15

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"MaxPage"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Rotated"
	.size	.L.str.83, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
