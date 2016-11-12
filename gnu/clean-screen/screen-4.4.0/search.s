	.text
	.file	"search.bc"
	.globl	Search
	.align	16, 0x90
	.type	Search,@function
Search:                                 # @Search
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
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB0_8
# BB#1:                                 # %if.then
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 372(%rax)
	jle	.LBB0_3
# BB#2:                                 # %if.then.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	movq	%rcx, %rdx
	callq	searchend
	jmp	.LBB0_7
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpl	$0, 372(%rax)
	jge	.LBB0_5
# BB#4:                                 # %if.then.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	movq	%rcx, %rdx
	callq	backsearchend
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.6
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	LMsg
.LBB0_6:                                # %if.end
	jmp	.LBB0_7
.LBB0_7:                                # %if.end.7
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.8
	movl	$99, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$backsearchend, %rdx
	movabsq	$searchend, %rdi
	movabsq	$.L.str.2, %r9
	movabsq	$.L.str.1, %r10
	cmpl	$0, -4(%rbp)
	cmovgq	%r10, %r9
	cmpl	$0, -4(%rbp)
	cmovgq	%rdi, %rdx
	movq	%r9, %rdi
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	%eax, %r9d
	callq	Input
.LBB0_9:                                # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Search, .Lfunc_end0-Search
	.cfi_endproc

	.align	16, 0x90
	.type	searchend,@function
searchend:                              # @searchend
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	flayer, %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rdx
	movl	$1, 372(%rdx)
	cmpl	$0, -12(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB1_2:                                # %if.end
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movq	flayer, %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -40(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	10860(%rcx), %edx
	movq	flayer, %rcx
	addl	12(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB1_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movl	-40(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	%rax, %rdi
	callq	matchword
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jl	.LBB1_6
# BB#5:                                 # %if.then.6
	jmp	.LBB1_8
.LBB1_6:                                # %if.end.7
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	$0, -32(%rbp)
	jmp	.LBB1_3
.LBB1_8:                                # %for.end
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	10860(%rcx), %edx
	movq	flayer, %rcx
	addl	12(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB1_10
# BB#9:                                 # %if.then.12
	movq	flayer, %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-48(%rbp), %rax
	subl	60(%rax), %ecx
	movl	%ecx, %edx
	callq	LGotoPos
	xorl	%edi, %edi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB1_11
.LBB1_10:                               # %if.else
	movl	-28(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	revto
.LBB1_11:                               # %if.end.16
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	searchend, .Lfunc_end1-searchend
	.cfi_endproc

	.align	16, 0x90
	.type	backsearchend,@function
backsearchend:                          # @backsearchend
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$-1, -36(%rbp)
	movq	flayer, %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movl	$-1, 372(%rdx)
	cmpl	$0, -12(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcpy
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB2_2:                                # %if.end
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -40(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	cmpl	$0, -40(%rbp)
	jl	.LBB2_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$0, -28(%rbp)
.LBB2_5:                                # %while.cond
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movl	-40(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	%rax, %rdi
	callq	matchword
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jl	.LBB2_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB2_5 Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movl	%eax, -36(%rbp)
	jmp	.LBB2_5
.LBB2_7:                                # %while.end
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$0, -36(%rbp)
	jl	.LBB2_9
# BB#8:                                 # %if.then.6
	jmp	.LBB2_11
.LBB2_9:                                # %if.end.7
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_10
.LBB2_10:                               # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	movq	flayer, %rcx
	movl	8(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_3
.LBB2_11:                               # %for.end
	cmpl	$0, -40(%rbp)
	jge	.LBB2_13
# BB#12:                                # %if.then.10
	movq	flayer, %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-48(%rbp), %rax
	subl	60(%rax), %ecx
	movl	%ecx, %edx
	callq	LGotoPos
	xorl	%edi, %edi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	LMsg
	jmp	.LBB2_14
.LBB2_13:                               # %if.else
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	revto
.LBB2_14:                               # %if.end.14
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	backsearchend, .Lfunc_end2-backsearchend
	.cfi_endproc

	.globl	ISearch
	.align	16, 0x90
	.type	ISearch,@function
ISearch:                                # @ISearch
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	%edi, 380(%rax)
	movq	-16(%rbp), %rax
	movl	%edi, 372(%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	flayer, %rax
	imull	8(%rax), %ecx
	addl	%ecx, %edi
	movq	-16(%rbp), %rax
	movl	%edi, 376(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 164(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 368(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	60(%rax), %ecx
	movq	flayer, %rax
	movl	12(%rax), %edi
	subl	$1, %edi
	cmpl	%edi, %ecx
	jne	.LBB3_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movl	%esi, -24(%rbp)         # 4-byte Spill
	jle	.LBB3_3
# BB#2:                                 # %cond.true
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	subl	$1, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jmp	.LBB3_4
.LBB3_3:                                # %cond.false
	movl	$1, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB3_4
.LBB3_4:                                # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %edi         # 4-byte Reload
	movl	-24(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	revto_line
.LBB3_5:                                # %if.end
	movl	$99, %esi
	movl	$2, %edx
	movabsq	$is_process, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	movq	isprompts(,%rdi,8), %rdi
	callq	Input
	movq	flayer, %rdi
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %esi
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %eax
	movq	-16(%rbp), %rcx
	subl	60(%rcx), %eax
	movl	%eax, %edx
	callq	LGotoPos
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %eax
	movq	flayer, %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %eax
	movq	-16(%rbp), %rcx
	subl	60(%rcx), %eax
	movq	flayer, %rcx
	movl	%eax, 20(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ISearch, .Lfunc_end3-ISearch
	.cfi_endproc

	.align	16, 0x90
	.type	is_process,@function
is_process:                             # @is_process
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_55
.LBB4_2:                                # %if.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
	jmp	.LBB4_4
.LBB4_4:                                # %do.end
	movq	flayer(%rip), %rax
	movq	48(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	16(%rax), %ecx
	movl	20(%rax), %edx
	movq	flayer(%rip), %rax
	movl	8(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movq	flayer(%rip), %rdi
	movq	-48(%rbp), %rax
	movl	16(%rax), %esi
	movl	20(%rax), %ecx
	movl	60(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	callq	LGotoPos
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$7, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	je	.LBB4_5
	jmp	.LBB4_56
.LBB4_56:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB4_8
	jmp	.LBB4_57
.LBB4_57:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB4_7
	jmp	.LBB4_58
.LBB4_58:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	addl	$-18, %eax
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jb	.LBB4_11
	jmp	.LBB4_59
.LBB4_59:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$23, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB4_7
	jmp	.LBB4_60
.LBB4_60:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$27, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB4_6
	jmp	.LBB4_61
.LBB4_61:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$127, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB4_8
	jmp	.LBB4_17
.LBB4_5:                                # %sw.bb
	movq	-48(%rbp), %rax
	movl	376(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB4_6:                                # %sw.bb.3
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB4_24
.LBB4_7:                                # %sw.bb.4
	movq	-48(%rbp), %rax
	movl	$1, 368(%rax)
.LBB4_8:                                # %sw.bb.5
	movq	-48(%rbp), %rax
	cmpl	$0, 368(%rax)
	jne	.LBB4_10
# BB#9:                                 # %if.then.9
	jmp	.LBB4_55
.LBB4_10:                               # %if.end.10
	movq	-48(%rbp), %rax
	movl	368(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 368(%rax)
	movq	-48(%rbp), %rdi
	callq	is_redo
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movb	$8, (%rdi)
	jmp	.LBB4_24
.LBB4_11:                               # %sw.bb.12
	movq	-48(%rbp), %rax
	cmpl	$200, 368(%rax)
	jl	.LBB4_13
# BB#12:                                # %if.then.16
	jmp	.LBB4_55
.LBB4_13:                               # %if.end.17
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %esi
	cmpl	$19, %esi
	cmovel	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rdx
	movl	372(%rdx), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB4_16
# BB#14:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 368(%rax)
	jne	.LBB4_16
# BB#15:                                # %if.then.27
	movq	-48(%rbp), %rax
	addq	$168, %rax
	movq	-48(%rbp), %rcx
	addq	$64, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcpy
	movq	-48(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 164(%rax)
	movq	-48(%rbp), %rax
	movl	%edx, 368(%rax)
	jmp	.LBB4_24
.LBB4_16:                               # %if.end.35
	movl	-40(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 372(%rcx)
	movq	-8(%rbp), %rcx
	movb	(%rcx), %dl
	movq	-48(%rbp), %rcx
	movl	368(%rcx), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, 368(%rcx)
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdi
	movb	%dl, 168(%rdi,%rcx)
	jmp	.LBB4_24
.LBB4_17:                               # %sw.default
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jl	.LBB4_20
# BB#18:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$200, 368(%rax)
	jge	.LBB4_20
# BB#19:                                # %lor.lhs.false.45
	movq	-48(%rbp), %rax
	cmpl	$99, 164(%rax)
	jl	.LBB4_21
.LBB4_20:                               # %if.then.49
	jmp	.LBB4_55
.LBB4_21:                               # %if.end.50
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-48(%rbp), %rax
	movl	164(%rax), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, 164(%rax)
	movslq	%edx, %rax
	movq	-48(%rbp), %rdi
	movb	%cl, 64(%rdi,%rax)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-48(%rbp), %rax
	movl	368(%rax), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, 368(%rax)
	movslq	%edx, %rax
	movq	-48(%rbp), %rdi
	movb	%cl, 168(%rdi,%rax)
	movq	-48(%rbp), %rax
	movslq	164(%rax), %rax
	movq	-48(%rbp), %rdi
	movb	$0, 64(%rdi,%rax)
# BB#22:                                # %do.body.65
	jmp	.LBB4_23
.LBB4_23:                               # %do.end.66
	jmp	.LBB4_24
.LBB4_24:                               # %sw.epilog
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_27
# BB#25:                                # %land.lhs.true.68
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$8, %ecx
	je	.LBB4_27
# BB#26:                                # %if.then.72
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	-48(%rbp), %rcx
	movl	164(%rcx), %esi
	movl	-28(%rbp), %edx
	movq	flayer, %rcx
	movl	8(%rcx), %edi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	10860(%rcx), %r8d
	movq	flayer, %rcx
	addl	12(%rcx), %r8d
	imull	%r8d, %edi
	movq	-48(%rbp), %rcx
	movl	372(%rcx), %r8d
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-116(%rbp), %ecx        # 4-byte Reload
	callq	is_bm
	movl	%eax, -28(%rbp)
.LBB4_27:                               # %if.end.81
	cmpl	$0, -28(%rbp)
	jl	.LBB4_48
# BB#28:                                # %if.then.84
	movl	-28(%rbp), %eax
	movq	flayer, %rcx
	cltd
	idivl	8(%rcx)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %edx
	movq	flayer, %rcx
	movl	%edx, %eax
	cltd
	idivl	8(%rcx)
	movl	%eax, -36(%rbp)
# BB#29:                                # %do.body.87
	movq	flayer, %rax
	movq	%rax, -56(%rbp)
# BB#30:                                # %do.body.88
	jmp	.LBB4_31
.LBB4_31:                               # %do.end.89
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
# BB#32:                                # %do.body.91
	jmp	.LBB4_33
.LBB4_33:                               # %do.end.92
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB4_34:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB4_37
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB4_34 Depth=1
	movq	flayer, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#36:                                # %for.inc
                                        #   in Loop: Header=BB4_34 Depth=1
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB4_34
.LBB4_37:                               # %for.end
	xorl	%eax, %eax
	movq	flayer, %rcx
	movq	32(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	flayer, %rdx
	movl	12(%rdx), %esi
	subl	$1, %esi
	movq	flayer, %rdx
	movl	8(%rdx), %edi
	subl	$1, %edi
	movl	%edi, -120(%rbp)        # 4-byte Spill
	movl	%esi, %edi
	movl	%eax, %esi
	movl	-120(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	*%r8
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	revto
	movq	-48(%rbp), %r8
	movl	20(%r8), %eax
	movq	-48(%rbp), %r8
	subl	60(%r8), %eax
	movq	flayer, %r8
	movl	12(%r8), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_42
# BB#38:                                # %if.then.108
	movq	-48(%rbp), %rax
	movl	16(%rax), %edi
	movq	-48(%rbp), %rax
	movl	20(%rax), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movl	%esi, -136(%rbp)        # 4-byte Spill
	jle	.LBB4_40
# BB#39:                                # %cond.true
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	subl	$1, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %cond.false
	movl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB4_41
.LBB4_41:                               # %cond.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	-132(%rbp), %edi        # 4-byte Reload
	movl	-136(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	revto_line
.LBB4_42:                               # %if.end.119
	movq	-56(%rbp), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB4_43:                               # %for.cond.121
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB4_46
# BB#44:                                # %for.body.123
                                        #   in Loop: Header=BB4_43 Depth=1
	movq	flayer, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#45:                                # %for.inc.125
                                        #   in Loop: Header=BB4_43 Depth=1
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB4_43
.LBB4_46:                               # %for.end.127
	movq	-64(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#47:                                # %do.end.130
	jmp	.LBB4_48
.LBB4_48:                               # %if.end.131
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_53
# BB#49:                                # %if.then.133
	movq	-48(%rbp), %rax
	movl	372(%rax), %ecx
	cmpl	$0, -28(%rbp)
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	addl	%esi, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	isprompts(,%rax,8), %rdi
	movq	-48(%rbp), %rax
	cmpl	$0, 164(%rax)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	je	.LBB4_51
# BB#50:                                # %cond.true.143
	movq	-48(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB4_52
.LBB4_51:                               # %cond.false.146
	movabsq	$.L.str.8, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB4_52
.LBB4_52:                               # %cond.end.147
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	inp_setprompt
.LBB4_53:                               # %if.end.149
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	movq	flayer, %rax
	movl	%ecx, 16(%rax)
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-48(%rbp), %rax
	subl	60(%rax), %ecx
	movq	flayer, %rax
	movl	%ecx, 20(%rax)
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB4_55
# BB#54:                                # %if.then.157
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	movq	flayer, %rax
	movq	48(%rax), %rax
	movl	%ecx, 16(%rax)
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-48(%rbp), %rax
	subl	60(%rax), %ecx
	movq	flayer, %rax
	movq	48(%rax), %rax
	movl	%ecx, 20(%rax)
.LBB4_55:                               # %if.end.166
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	is_process, .Lfunc_end4-is_process
	.cfi_endproc

	.align	16, 0x90
	.type	matchword,@function
matchword:                              # @matchword
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
	pushq	%rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	flayer, %rdi
	movq	40(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, fore
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB5_32
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB5_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-68(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-80(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-68(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB5_5:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movslq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %edx
	movq	fore, %rax
	cmpl	10860(%rax), %edx
	jge	.LBB5_7
# BB#6:                                 # %cond.true.8
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-68(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-96(%rbp), %rsi         # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %cond.false.16
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-68(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB5_8:                                # %cond.end.22
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	flayer, %rcx
	movslq	8(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB5_9:                                # %for.cond.27
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB5_16
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB5_9 Depth=2
	cmpl	$0, search_ic
	je	.LBB5_14
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %edx
	xorl	%edx, %ecx
	andl	$223, %ecx
	cmpl	$0, %ecx
	jne	.LBB5_14
# BB#12:                                # %lor.lhs.false.34
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	orl	$32, %ecx
	cmpl	$97, %ecx
	jl	.LBB5_14
# BB#13:                                # %lor.lhs.false.38
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	orl	$32, %ecx
	cmpl	$122, %ecx
	jle	.LBB5_15
.LBB5_14:                               # %if.then.43
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_30
.LBB5_15:                               # %if.end
                                        #   in Loop: Header=BB5_9 Depth=2
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.44
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB5_18
# BB#17:                                # %if.then.49
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_33
.LBB5_18:                               # %if.end.50
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_29
# BB#19:                                # %if.then.53
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB5_21
# BB#20:                                # %lor.lhs.false.57
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-68(%rbp), %eax
	movq	fore, %rcx
	movl	10860(%rcx), %edx
	movq	flayer, %rcx
	addl	12(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jl	.LBB5_22
.LBB5_21:                               # %if.then.63
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_30
.LBB5_22:                               # %if.end.64
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movq	fore, %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB5_24
# BB#23:                                # %cond.true.68
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-68(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-112(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %cond.false.76
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-68(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB5_25:                               # %cond.end.82
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %ecx
	movq	fore, %rax
	cmpl	10860(%rax), %ecx
	jge	.LBB5_27
# BB#26:                                # %cond.true.88
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	fore, %rax
	movl	10864(%rax), %ecx
	addl	-68(%rbp), %ecx
	movq	fore, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-128(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	fore, %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	jmp	.LBB5_28
.LBB5_27:                               # %cond.false.96
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-68(%rbp), %eax
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB5_28:                               # %cond.end.102
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	flayer, %rcx
	movslq	8(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
.LBB5_29:                               # %if.end.108
                                        #   in Loop: Header=BB5_9 Depth=2
	jmp	.LBB5_9
.LBB5_30:                               # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_31
.LBB5_31:                               # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_32:                               # %for.end.110
	movl	$-1, -4(%rbp)
.LBB5_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$8, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	matchword, .Lfunc_end5-matchword
	.cfi_endproc

	.align	16, 0x90
	.type	is_redo,@function
is_redo:                                # @is_redo
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	376(%rdi), %eax
	movl	%eax, -16(%rbp)
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	380(%rdi), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 164(%rdi)
	movl	$0, -12(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	368(%rcx), %eax
	jge	.LBB6_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	168(%rcx,%rax), %dl
	movb	%dl, -25(%rbp)
	movsbl	-25(%rbp), %esi
	cmpl	$18, %esi
	jne	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$-1, -24(%rbp)
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_8
.LBB6_4:                                # %if.else
                                        #   in Loop: Header=BB6_1 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$19, %eax
	jne	.LBB6_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, -24(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.8
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-25(%rbp), %al
	movq	-8(%rbp), %rcx
	movl	164(%rcx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, 164(%rcx)
	movslq	%edx, %rcx
	movq	-8(%rbp), %rdi
	movb	%al, 64(%rdi,%rcx)
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.12
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -16(%rbp)
	jl	.LBB6_12
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$64, %rax
	movq	-8(%rbp), %rcx
	movl	164(%rcx), %esi
	movl	-16(%rbp), %edx
	movq	flayer, %rcx
	movl	8(%rcx), %edi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	10860(%rcx), %r8d
	movq	flayer, %rcx
	addl	12(%rcx), %r8d
	imull	%r8d, %edi
	movl	-24(%rbp), %r8d
	movl	%edi, -32(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	callq	is_bm
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB6_11
# BB#10:                                # %if.then.21
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB6_11:                               # %if.end.22
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_12
.LBB6_12:                               # %if.end.23
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_13
.LBB6_13:                               # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_1
.LBB6_14:                               # %for.end
	movq	-8(%rbp), %rax
	movslq	164(%rax), %rax
	movq	-8(%rbp), %rcx
	movb	$0, 64(%rcx,%rax)
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 372(%rax)
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	is_redo, .Lfunc_end6-is_redo
	.cfi_endproc

	.align	16, 0x90
	.type	is_bm,@function
is_bm:                                  # @is_bm
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
	subq	$992, %rsp              # imm = 0x3E0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	flayer, %rdi
	movl	8(%rdi), %ecx
	movl	%ecx, -1080(%rbp)
	movq	flayer, %rdi
	movq	48(%rdi), %rdi
	movq	40(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, fore
# BB#1:                                 # %do.body
	jmp	.LBB7_2
.LBB7_2:                                # %do.end
	jmp	.LBB7_3
.LBB7_3:                                # %do.body.1
	jmp	.LBB7_4
.LBB7_4:                                # %do.end.2
	cmpl	$0, -24(%rbp)
	jl	.LBB7_6
# BB#5:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB7_7
.LBB7_6:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB7_52
.LBB7_7:                                # %if.end
	cmpl	$0, -20(%rbp)
	jne	.LBB7_9
# BB#8:                                 # %if.then.5
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_52
.LBB7_9:                                # %if.end.6
	cmpl	$0, -32(%rbp)
	jge	.LBB7_11
# BB#10:                                # %if.then.8
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB7_11:                               # %if.end.9
	movl	$0, -1060(%rbp)
.LBB7_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -1060(%rbp)       # imm = 0x100
	jge	.LBB7_15
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-20(%rbp), %eax
	imull	-32(%rbp), %eax
	movslq	-1060(%rbp), %rcx
	movl	%eax, -1056(%rbp,%rcx,4)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB7_12 Depth=1
	movl	-1060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB7_12
.LBB7_15:                               # %for.end
	movl	$0, -1060(%rbp)
.LBB7_16:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	movl	-1060(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_23
# BB#17:                                # %for.body.14
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -1064(%rbp)
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	subl	-1060(%rbp), %ecx
	imull	-32(%rbp), %ecx
	movslq	-1064(%rbp), %rax
	movl	%ecx, -1056(%rbp,%rax,4)
	cmpl	$0, search_ic
	je	.LBB7_21
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-1064(%rbp), %eax
	orl	$32, %eax
	cmpl	$97, %eax
	jl	.LBB7_21
# BB#19:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-1064(%rbp), %eax
	orl	$32, %eax
	cmpl	$122, %eax
	jg	.LBB7_21
# BB#20:                                # %if.then.26
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	subl	-1060(%rbp), %eax
	imull	-32(%rbp), %eax
	movl	-1064(%rbp), %ecx
	xorl	$32, %ecx
	movslq	%ecx, %rdx
	movl	%eax, -1056(%rbp,%rdx,4)
.LBB7_21:                               # %if.end.32
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_22
.LBB7_22:                               # %for.inc.33
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-1060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1060(%rbp)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB7_16
.LBB7_23:                               # %for.end.37
	cmpl	$0, -32(%rbp)
	jle	.LBB7_25
# BB#24:                                # %if.then.40
	movl	-20(%rbp), %eax
	subl	$1, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB7_25:                               # %if.end.43
	jmp	.LBB7_26
.LBB7_26:                               # %do.body.44
	jmp	.LBB7_27
.LBB7_27:                               # %do.end.45
	jmp	.LBB7_28
.LBB7_28:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_32 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%rbp)
	movb	%cl, -1081(%rbp)        # 1-byte Spill
	jl	.LBB7_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setl	%cl
	movb	%cl, -1081(%rbp)        # 1-byte Spill
.LBB7_30:                               # %land.end
                                        #   in Loop: Header=BB7_28 Depth=1
	movb	-1081(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_31
	jmp	.LBB7_51
.LBB7_31:                               # %while.body
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -1064(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -1072(%rbp)
	movl	$0, -1060(%rbp)
.LBB7_32:                               # %for.cond.50
                                        #   Parent Loop BB7_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1064(%rbp), %eax
	cltd
	idivl	-1080(%rbp)
	movslq	%edx, %rcx
	movl	-1064(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	-1080(%rbp)
	movq	fore, %rsi
	cmpl	10860(%rsi), %eax
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	jge	.LBB7_34
# BB#33:                                # %cond.true
                                        #   in Loop: Header=BB7_32 Depth=2
	movq	fore, %rax
	movl	10864(%rax), %ecx
	movl	-1064(%rbp), %eax
	cltd
	idivl	-1080(%rbp)
	addl	%eax, %ecx
	movq	fore, %rsi
	movl	%ecx, %eax
	cltd
	idivl	10860(%rsi)
	movslq	%edx, %rsi
	movq	fore, %rdi
	imulq	$40, %rsi, %rsi
	addq	10872(%rdi), %rsi
	movq	%rsi, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB7_35
.LBB7_34:                               # %cond.false
                                        #   in Loop: Header=BB7_32 Depth=2
	movl	-1064(%rbp), %eax
	cltd
	idivl	-1080(%rbp)
	movq	fore, %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	fore, %rsi
	imulq	$40, %rcx, %rcx
	addq	9864(%rsi), %rcx
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
.LBB7_35:                               # %cond.end
                                        #   in Loop: Header=BB7_32 Depth=2
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	movb	(%rax,%rcx), %dl
	movb	%dl, -1073(%rbp)
	cmpl	$0, -1060(%rbp)
	jne	.LBB7_37
# BB#36:                                # %if.then.68
                                        #   in Loop: Header=BB7_32 Depth=2
	movzbl	-1073(%rbp), %eax
	movslq	%eax, %rcx
	movl	-1056(%rbp,%rcx,4), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB7_37:                               # %if.end.73
                                        #   in Loop: Header=BB7_32 Depth=2
	movzbl	-1073(%rbp), %eax
	movq	-1072(%rbp), %rcx
	movzbl	(%rcx), %edx
	cmpl	%edx, %eax
	je	.LBB7_44
# BB#38:                                # %if.then.78
                                        #   in Loop: Header=BB7_32 Depth=2
	cmpl	$0, search_ic
	je	.LBB7_42
# BB#39:                                # %lor.lhs.false.80
                                        #   in Loop: Header=BB7_32 Depth=2
	movzbl	-1073(%rbp), %eax
	movq	-1072(%rbp), %rcx
	movzbl	(%rcx), %edx
	xorl	%edx, %eax
	andl	$223, %eax
	cmpl	$0, %eax
	jne	.LBB7_42
# BB#40:                                # %lor.lhs.false.85
                                        #   in Loop: Header=BB7_32 Depth=2
	movzbl	-1073(%rbp), %eax
	orl	$32, %eax
	cmpl	$97, %eax
	jl	.LBB7_42
# BB#41:                                # %lor.lhs.false.90
                                        #   in Loop: Header=BB7_32 Depth=2
	movzbl	-1073(%rbp), %eax
	orl	$32, %eax
	cmpl	$122, %eax
	jle	.LBB7_43
.LBB7_42:                               # %if.then.95
                                        #   in Loop: Header=BB7_28 Depth=1
	jmp	.LBB7_50
.LBB7_43:                               # %if.end.96
                                        #   in Loop: Header=BB7_32 Depth=2
	jmp	.LBB7_44
.LBB7_44:                               # %if.end.97
                                        #   in Loop: Header=BB7_32 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-32(%rbp), %eax
	movl	-1064(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -1064(%rbp)
	movl	-32(%rbp), %eax
	movq	-1072(%rbp), %rsi
	movslq	%eax, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -1072(%rbp)
	movl	-1060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1060(%rbp)
	cmpl	-20(%rbp), %eax
	jne	.LBB7_49
# BB#45:                                # %if.then.104
	movl	-1064(%rbp), %eax
	cmpl	$0, -32(%rbp)
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jle	.LBB7_47
# BB#46:                                # %cond.true.107
	movl	$1, %eax
	movl	%eax, -1112(%rbp)       # 4-byte Spill
	jmp	.LBB7_48
.LBB7_47:                               # %cond.false.108
	xorl	%eax, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -1112(%rbp)       # 4-byte Spill
.LBB7_48:                               # %cond.end.110
	movl	-1112(%rbp), %eax       # 4-byte Reload
	movl	-1108(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB7_52
.LBB7_49:                               # %if.end.113
                                        #   in Loop: Header=BB7_32 Depth=2
	jmp	.LBB7_32
.LBB7_50:                               # %for.end.114
                                        #   in Loop: Header=BB7_28 Depth=1
	jmp	.LBB7_28
.LBB7_51:                               # %while.end
	movl	$-1, -4(%rbp)
.LBB7_52:                               # %return
	movl	-4(%rbp), %eax
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	is_bm, .Lfunc_end7-is_bm
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No previous pattern"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"?"
	.size	.L.str.2, 2

	.type	isprompts,@object       # @isprompts
	.data
	.align	16
isprompts:
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.size	isprompts, 32

	.type	search_ic,@object       # @search_ic
	.comm	search_ic,4,4
	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Pattern not found"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"I-search backward: "
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"failing I-search backward: "
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"I-search: "
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"failing I-search: "
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
