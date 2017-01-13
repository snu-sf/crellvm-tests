	.text
	.file	"profile.bc"
	.globl	invalid_timespec
	.align	16, 0x90
	.type	invalid_timespec,@function
invalid_timespec:                       # @invalid_timespec
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
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	$-1, %rsi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	invalid_timespec, .Lfunc_end0-invalid_timespec
	.cfi_endproc

	.globl	timespec_valid_p
	.align	16, 0x90
	.type	timespec_valid_p,@function
timespec_valid_p:                       # @timespec_valid_p
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	timespec_valid_p, .Lfunc_end1-timespec_valid_p
	.cfi_endproc

	.globl	current_timespec
	.align	16, 0x90
	.type	current_timespec,@function
current_timespec:                       # @current_timespec
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
	subq	$32, %rsp
	leaq	-32(%rbp), %rdi
	callq	gettime
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	current_timespec, .Lfunc_end2-current_timespec
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	movl	$0, -4(%rbp)
.LBB3_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	callq	getchar
	movl	%eax, -8(%rbp)
	cmpl	$-1, %eax
	je	.LBB3_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	subl	$112, %ecx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	je	.LBB3_4
	jmp	.LBB3_13
.LBB3_13:                               # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$113, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB3_5
	jmp	.LBB3_14
.LBB3_14:                               # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$122, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jne	.LBB3_6
	jmp	.LBB3_3
.LBB3_3:                                # %sw.bb
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	reset_watch
	jmp	.LBB3_6
.LBB3_4:                                # %sw.bb.1
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	get_time
	movq	%rax, %rdi
	callq	puts
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %sw.bb.4
	xorl	%edi, %edi
	callq	exit
.LBB3_6:                                # %sw.epilog
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %while.cond.5
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$10, -8(%rbp)
	movb	%cl, -29(%rbp)          # 1-byte Spill
	je	.LBB3_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB3_7 Depth=2
	cmpl	$-1, -8(%rbp)
	setne	%al
	movb	%al, -29(%rbp)          # 1-byte Spill
.LBB3_9:                                # %land.end
                                        #   in Loop: Header=BB3_7 Depth=2
	movb	-29(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_10
	jmp	.LBB3_11
.LBB3_10:                               # %while.body.8
                                        #   in Loop: Header=BB3_7 Depth=2
	callq	getchar
	movl	%eax, -8(%rbp)
	jmp	.LBB3_7
.LBB3_11:                               # %while.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_1
.LBB3_12:                               # %while.end.10
	movl	$1, %edi
	callq	exit
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc

	.align	16, 0x90
	.type	reset_watch,@function
reset_watch:                            # @reset_watch
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
	callq	current_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, TV1
	movq	-8(%rbp), %rax
	movq	%rax, TV1+8
	movl	$0, watch_not_started
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	reset_watch, .Lfunc_end4-reset_watch
	.cfi_endproc

	.align	16, 0x90
	.type	get_time,@function
get_time:                               # @get_time
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
	subq	$48, %rsp
	callq	current_timespec
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	TV1, %rdx
	movq	TV1+8, %rcx
	callq	timespec_sub
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %r8d
	movl	%r8d, -44(%rbp)
	cmpl	$0, watch_not_started
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	exit
.LBB5_2:                                # %if.end
	movabsq	$time_string, %rdi
	movabsq	$.L.str, %rsi
	movl	$9, %ecx
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %r8d
	movb	$0, %al
	callq	sprintf
	movabsq	$time_string, %rdx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_time, .Lfunc_end5-get_time
	.cfi_endproc

	.type	TV1,@object             # @TV1
	.local	TV1
	.comm	TV1,16,8
	.type	watch_not_started,@object # @watch_not_started
	.data
	.align	4
watch_not_started:
	.long	1                       # 0x1
	.size	watch_not_started, 4

	.type	time_string,@object     # @time_string
	.local	time_string
	.comm	time_string,31,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lu.%0*d"
	.size	.L.str, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
