	.text
	.file	"getshline.bc"
	.globl	getshline_numbered
	.align	16, 0x90
	.type	getshline_numbered,@function
getshline_numbered:                     # @getshline_numbered
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movl	$10, %r9d
	movl	$92, %eax
	movl	$35, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	$92, (%rsp)
	movl	$35, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	callq	getshstr
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	getshline_numbered, .Lfunc_end0-getshline_numbered
	.cfi_endproc

	.align	16, 0x90
	.type	getshstr,@function
getshstr:                               # @getshstr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movb	%r9b, %al
	movq	32(%rbp), %r10
	movl	24(%rbp), %r9d
	movl	16(%rbp), %r11d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movb	%al, -49(%rbp)
	movl	%r11d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	%r10, -72(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -40(%rbp)
	je	.LBB1_3
# BB#2:                                 # %lor.lhs.false.2
	cmpq	$0, -48(%rbp)
	jne	.LBB1_4
.LBB1_3:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB1_37
.LBB1_4:                                # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_8
# BB#5:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	$64, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_7
# BB#6:                                 # %if.then.7
	movl	$-1, -4(%rbp)
	jmp	.LBB1_37
.LBB1_7:                                # %if.end.8
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.9
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	-72(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB1_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -96(%rbp)
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rdi
	movq	-88(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB1_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movl	$81, %edx
	movabsq	$.L__PRETTY_FUNCTION__.getshstr, %rcx
	callq	__assert_fail
.LBB1_12:                               # %cond.end
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$2, -76(%rbp)
	jge	.LBB1_22
# BB#13:                                # %if.then.16
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$64, (%rax)
	jbe	.LBB1_15
# BB#14:                                # %if.then.19
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	shlq	$1, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB1_16
.LBB1_15:                               # %if.else
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	addq	$64, %rcx
	movq	%rcx, (%rax)
.LBB1_16:                               # %if.end.21
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	-88(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -76(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xrealloc
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_18
# BB#17:                                # %if.then.27
	movl	$-1, -4(%rbp)
	jmp	.LBB1_37
.LBB1_18:                               # %if.end.28
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movslq	-76(%rbp), %rcx
	subq	%rcx, %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	-88(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_20
# BB#19:                                # %cond.true.37
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_21
.LBB1_20:                               # %cond.false.38
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movl	$94, %edx
	movabsq	$.L__PRETTY_FUNCTION__.getshstr, %rcx
	callq	__assert_fail
.LBB1_21:                               # %cond.end.39
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.40
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	$-1, -96(%rbp)
	je	.LBB1_24
# BB#23:                                # %lor.lhs.false.43
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-48(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB1_27
.LBB1_24:                               # %if.then.46
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB1_26
# BB#25:                                # %if.then.49
	movl	$-1, -4(%rbp)
	jmp	.LBB1_37
.LBB1_26:                               # %if.else.50
	jmp	.LBB1_36
.LBB1_27:                               # %if.end.51
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-96(%rbp), %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -88(%rbp)
	movb	%cl, (%rdx)
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	movl	-96(%rbp), %eax
	movsbl	-49(%rbp), %edi
	cmpl	%edi, %eax
	jne	.LBB1_35
# BB#28:                                # %if.then.56
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	movsbl	-49(%rbp), %edx
	cmpl	%edx, %ecx
	je	.LBB1_30
# BB#29:                                # %lor.lhs.false.61
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jne	.LBB1_31
.LBB1_30:                               # %if.then.65
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movb	-49(%rbp), %r9b
	movl	-56(%rbp), %r10d
	movl	-60(%rbp), %r11d
	movq	-72(%rbp), %rax
	movsbl	%r9b, %r9d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	getshstr
	movl	%eax, -4(%rbp)
	jmp	.LBB1_37
.LBB1_31:                               # %if.end.68
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-88(%rbp), %rax
	addq	$-2, %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jbe	.LBB1_33
# BB#32:                                # %lor.lhs.false.72
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-88(%rbp), %rax
	movsbl	-2(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	je	.LBB1_34
.LBB1_33:                               # %if.then.77
	jmp	.LBB1_36
.LBB1_34:                               # %if.end.78
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-88(%rbp), %rax
	addq	$-2, %rax
	movq	%rax, -88(%rbp)
	movl	-76(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB1_35:                               # %if.end.82
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_9
.LBB1_36:                               # %for.end
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	-72(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -92(%rbp)
	movl	-92(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB1_37:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getshstr, .Lfunc_end1-getshstr
	.cfi_endproc

	.globl	getshline
	.align	16, 0x90
	.type	getshline,@function
getshline:                              # @getshline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp10:
	.cfi_offset %rbx, -24
	leaq	-36(%rbp), %rax
	leaq	-40(%rbp), %rcx
	movl	$10, %r9d
	movl	$92, %r8d
	movl	$35, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movl	$92, (%rsp)
	movl	$35, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	callq	getshstr
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	getshline, .Lfunc_end2-getshline
	.cfi_endproc

	.globl	getshdelim_numbered
	.align	16, 0x90
	.type	getshdelim_numbered,@function
getshdelim_numbered:                    # @getshdelim_numbered
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %r8
	movl	-52(%rbp), %r9d
	movb	%r9b, %r14b
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %r10d
	movsbl	%r14b, %r11d
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	-76(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	callq	getshstr
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	getshdelim_numbered, .Lfunc_end3-getshdelim_numbered
	.cfi_endproc

	.globl	getshdelim
	.align	16, 0x90
	.type	getshdelim,@function
getshdelim:                             # @getshdelim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
.Ltmp19:
	.cfi_offset %rbx, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	leaq	-68(%rbp), %rax
	leaq	-72(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %r8
	movl	-44(%rbp), %r11d
	movb	%r11b, %r14b
	movl	-48(%rbp), %r11d
	movl	-52(%rbp), %r15d
	movq	%rax, %rdi
	movq	%r10, %rsi
	movsbl	%r14b, %r9d
	movl	%r11d, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	callq	getshstr
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	getshdelim, .Lfunc_end4-getshdelim
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*n + *lineptr == read_pos + nchars_avail"
	.size	.L.str, 41

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"getshline.c"
	.size	.L.str.1, 12

	.type	.L__PRETTY_FUNCTION__.getshstr,@object # @__PRETTY_FUNCTION__.getshstr
.L__PRETTY_FUNCTION__.getshstr:
	.asciz	"int getshstr(int *, int *, char **, size_t *, FILE *, char, int, int, size_t)"
	.size	.L__PRETTY_FUNCTION__.getshstr, 78


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
