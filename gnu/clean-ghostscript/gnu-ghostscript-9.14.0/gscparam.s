	.text
	.file	"gscparam.bc"
	.globl	gs_c_param_list_alloc
	.align	16, 0x90
	.type	gs_c_param_list_alloc,@function
gs_c_param_list_alloc:                  # @gs_c_param_list_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	72(%rdi), %rcx
	movl	$st_c_param_list, %esi
	movq	%rax, %rdx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end0:
	.size	gs_c_param_list_alloc, .Lfunc_end0-gs_c_param_list_alloc
	.cfi_endproc

	.globl	gs_c_param_list_write
	.align	16, 0x90
	.type	gs_c_param_list_write,@function
gs_c_param_list_write:                  # @gs_c_param_list_write
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 8(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 32(%rdi)
	movl	$0, 40(%rdi)
	movl	$0, 44(%rdi)
	movl	$1, 16(%rdi)
	movq	$c_write_procs, (%rdi)
	movl	$0, 48(%rdi)
	retq
.Lfunc_end1:
	.size	gs_c_param_list_write, .Lfunc_end1-gs_c_param_list_write
	.cfi_endproc

	.globl	gs_c_param_list_write_more
	.align	16, 0x90
	.type	gs_c_param_list_write_more,@function
gs_c_param_list_write_more:             # @gs_c_param_list_write_more
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$c_write_procs, (%rdi)
	movl	$0, 48(%rdi)
	retq
.Lfunc_end2:
	.size	gs_c_param_list_write_more, .Lfunc_end2-gs_c_param_list_write_more
	.cfi_endproc

	.globl	gs_c_param_list_set_target
	.align	16, 0x90
	.type	gs_c_param_list_set_target,@function
gs_c_param_list_set_target:             # @gs_c_param_list_set_target
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 32(%rdi)
	retq
.Lfunc_end3:
	.size	gs_c_param_list_set_target, .Lfunc_end3-gs_c_param_list_set_target
	.cfi_endproc

	.globl	gs_c_param_list_release
	.align	16, 0x90
	.type	gs_c_param_list_release,@function
gs_c_param_list_release:                # @gs_c_param_list_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
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
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB4_10
# BB#1:                                 # %while.body.lr.ph
	movq	8(%r14), %r15
	.align	16, 0x90
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r12
	movl	88(%rbx), %eax
	leal	-5(%rax), %ecx
	cmpl	$6, %ecx
	jae	.LBB4_3
# BB#5:                                 # %sw.bb.2
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpl	$0, 44(%rbx)
	jne	.LBB4_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	gs_free_const_object
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_3:                                # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	addl	$-11, %eax
	cmpl	$2, %eax
	ja	.LBB4_7
# BB#4:                                 # %sw.bb
                                        #   in Loop: Header=BB4_2 Depth=1
	leaq	32(%rbx), %rdi
	callq	gs_c_param_list_release
.LBB4_7:                                # %sw.epilog
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpl	$0, 24(%rbx)
	je	.LBB4_9
# BB#8:                                 # %if.then.7
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rbx), %rsi
	movl	16(%rbx), %edx
	movl	$.L.str.1, %ecx
	movq	%r15, %rdi
	callq	gs_free_const_string
.LBB4_9:                                # %if.end.10
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	96(%rbx), %rsi
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
	movq	%r12, 24(%r14)
	decl	40(%r14)
	testq	%r12, %r12
	movq	%r12, %rbx
	jne	.LBB4_2
.LBB4_10:                               # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gs_c_param_list_release, .Lfunc_end4-gs_c_param_list_release
	.cfi_endproc

	.globl	gs_c_param_list_read
	.align	16, 0x90
	.type	gs_c_param_list_read,@function
gs_c_param_list_read:                   # @gs_c_param_list_read
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$c_read_procs, (%rdi)
	retq
.Lfunc_end5:
	.size	gs_c_param_list_read, .Lfunc_end5-gs_c_param_list_read
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_write_typed,@function
c_param_write_typed:                    # @c_param_write_typed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	16(%r14), %ecx
	leal	-11(%rcx), %ebp
	cmpl	$3, %ebp
	jae	.LBB6_4
# BB#1:                                 # %sw.epilog
	movq	8(%rbx), %rdi
	movl	$st_c_param_list, %esi
	movl	$.L.str.10, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB6_3
# BB#2:                                 # %if.end.i
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$1, 16(%rax)
	movq	$c_write_procs, (%rax)
	movl	%ebp, 48(%rax)
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
.LBB6_3:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_4:                                # %sw.default
	movq	%rbx, %rdi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	c_param_write           # TAILCALL
.Lfunc_end6:
	.size	c_param_write_typed, .Lfunc_end6-c_param_write_typed
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_begin_write_collection,@function
c_param_begin_write_collection:         # @c_param_begin_write_collection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movl	$st_c_param_list, %esi
	movl	$.L.str.10, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB7_2
# BB#1:                                 # %if.end
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movl	$0, 40(%rax)
	movl	$0, 44(%rax)
	movl	$1, 16(%rax)
	movq	$c_write_procs, (%rax)
	movl	%ebp, 48(%rax)
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
.LBB7_2:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	c_param_begin_write_collection, .Lfunc_end7-c_param_begin_write_collection
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_end_write_collection,@function
c_param_end_write_collection:           # @c_param_end_write_collection
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdx), %rdx
	movl	48(%rdx), %eax
	cmpl	$2, %eax
	sete	%cl
	cmpl	$1, %eax
	movzbl	%cl, %eax
	leal	11(%rax,%rax), %eax
	movl	$12, %ecx
	cmovnel	%eax, %ecx
	jmp	c_param_write           # TAILCALL
.Lfunc_end8:
	.size	c_param_end_write_collection, .Lfunc_end8-c_param_end_write_collection
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_request,@function
c_param_request:                        # @c_param_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -48
.Ltmp27:
	.cfi_offset %r12, -40
.Ltmp28:
	.cfi_offset %r13, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1, 44(%r14)
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB9_5
# BB#1:                                 # %for.body.lr.ph.i
	movl	%r13d, %r12d
	.align	16, 0x90
.LBB9_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r13d, 16(%rbx)
	jne	.LBB9_4
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_7
.LBB9_4:                                # %for.inc.i
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB9_2
.LBB9_5:                                # %if.end
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	c_param_add
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_7
# BB#6:                                 # %if.end.3
	movl	$-1, 88(%rcx)
	movq	%rcx, 24(%r14)
	xorl	%eax, %eax
.LBB9_7:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	c_param_request, .Lfunc_end9-c_param_request
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_requested,@function
c_param_requested:                      # @c_param_requested
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 48
.Ltmp36:
	.cfi_offset %rbx, -48
.Ltmp37:
	.cfi_offset %r12, -40
.Ltmp38:
	.cfi_offset %r13, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	32(%r12), %r14
	cmpl	$0, 44(%r12)
	je	.LBB10_1
# BB#3:                                 # %if.end
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	24(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB10_8
# BB#4:                                 # %for.body.lr.ph.i
	movl	%r13d, %r12d
	.align	16, 0x90
.LBB10_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r13d, 16(%rbx)
	jne	.LBB10_7
# BB#6:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcmp
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB10_10
.LBB10_7:                               # %for.inc.i
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB10_5
.LBB10_8:                               # %if.end.5
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB10_10
# BB#9:                                 # %if.end.8
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*40(%rax)
	shrl	$31, %eax
	xorl	$1, %eax
	jmp	.LBB10_10
.LBB10_1:                               # %if.then
	movl	$-1, %eax
	testq	%r14, %r14
	je	.LBB10_10
# BB#2:                                 # %cond.true
	movq	(%r14), %rax
	movq	40(%rax), %rax
	movq	%r14, %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.LBB10_10:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	c_param_requested, .Lfunc_end10-c_param_requested
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_write,@function
c_param_write:                          # @c_param_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 64
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	callq	c_param_add
	movq	%rax, %r12
	movl	$-25, %eax
	testq	%r12, %r12
	je	.LBB11_33
# BB#1:                                 # %if.end
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%r12, %r15
	addq	$32, %r15
	movslq	%r13d, %rbx
	movzbl	gs_param_type_sizes(%rbx), %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	%ebx, 88(%r12)
	xorl	%r14d, %r14d
	addl	$-5, %ebx
	cmpl	$4, %ebx
	jb	.LBB11_20
# BB#2:                                 # %if.end
	leal	-9(%r13), %eax
	cmpl	$1, %eax
	ja	.LBB11_32
# BB#3:                                 # %sw.bb
	movl	40(%r12), %ecx
	testq	%rcx, %rcx
	je	.LBB11_20
# BB#4:                                 # %for.body.preheader
	movq	32(%r12), %rax
	shlq	$4, %rcx
	leaq	(%rcx,%rax), %rcx
	leaq	16(%rax), %rsi
	cmpq	%rsi, %rcx
	cmovaq	%rcx, %rsi
	movq	%rax, %rdx
	notq	%rdx
	addq	%rsi, %rdx
	movl	%edx, %esi
	shrl	$4, %esi
	incl	%esi
	testb	$3, %sil
	je	.LBB11_5
# BB#6:                                 # %for.body.prol.preheader
	movl	%edx, %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB11_7:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 12(%rax)
	jne	.LBB11_9
# BB#8:                                 # %if.then.8.prol
                                        #   in Loop: Header=BB11_7 Depth=1
	addl	8(%rax), %r14d
.LBB11_9:                               # %for.inc.prol
                                        #   in Loop: Header=BB11_7 Depth=1
	addq	$16, %rax
	incq	%rsi
	jne	.LBB11_7
	jmp	.LBB11_10
.LBB11_5:
	xorl	%r14d, %r14d
.LBB11_10:                              # %for.body.preheader.split
	cmpq	$48, %rdx
	jb	.LBB11_20
	.align	16, 0x90
.LBB11_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 12(%rax)
	jne	.LBB11_13
# BB#12:                                # %if.then.8
                                        #   in Loop: Header=BB11_11 Depth=1
	addl	8(%rax), %r14d
.LBB11_13:                              # %for.inc
                                        #   in Loop: Header=BB11_11 Depth=1
	cmpl	$0, 28(%rax)
	jne	.LBB11_15
# BB#14:                                # %if.then.8.1
                                        #   in Loop: Header=BB11_11 Depth=1
	addl	24(%rax), %r14d
.LBB11_15:                              # %for.inc.1
                                        #   in Loop: Header=BB11_11 Depth=1
	cmpl	$0, 44(%rax)
	jne	.LBB11_17
# BB#16:                                # %if.then.8.2
                                        #   in Loop: Header=BB11_11 Depth=1
	addl	40(%rax), %r14d
.LBB11_17:                              # %for.inc.2
                                        #   in Loop: Header=BB11_11 Depth=1
	cmpl	$0, 60(%rax)
	jne	.LBB11_19
# BB#18:                                # %if.then.8.3
                                        #   in Loop: Header=BB11_11 Depth=1
	addl	56(%rax), %r14d
.LBB11_19:                              # %for.inc.3
                                        #   in Loop: Header=BB11_11 Depth=1
	addq	$64, %rax
	cmpq	%rcx, %rax
	jb	.LBB11_11
.LBB11_20:                              # %sw.bb.11
	cmpl	$0, 12(%r15)
	jne	.LBB11_32
# BB#21:                                # %if.then.15
	movl	%r13d, %eax
	movzbl	gs_param_type_base_sizes(%rax), %r13d
	imull	40(%r12), %r13d
	movl	%r13d, %esi
	addl	%r14d, %esi
	je	.LBB11_22
# BB#23:                                # %if.then.25
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	8(%rbx), %rdi
	movl	$.L.str.5, %edx
	callq	*8(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB11_24
# BB#25:                                # %if.end.35
	movq	(%r15), %rsi
	movl	%r13d, %edx
	movq	%rbp, %rdi
	callq	memcpy
	jmp	.LBB11_26
.LBB11_22:                              # %if.then.15.if.end.41_crit_edge
	xorl	%ebp, %ebp
.LBB11_26:                              # %if.end.41
	movq	%rbp, (%r15)
	testl	%r14d, %r14d
	je	.LBB11_32
# BB#27:                                # %if.then.47
	movl	40(%r12), %eax
	testq	%rax, %rax
	je	.LBB11_32
# BB#28:                                # %for.body.61.lr.ph
	shlq	$4, %rax
	movl	%r13d, %ecx
	leaq	(%rax,%rbp), %r15
	leaq	(%rcx,%rbp), %rbx
	.align	16, 0x90
.LBB11_29:                              # %for.body.61
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 12(%rbp)
	jne	.LBB11_31
# BB#30:                                # %if.then.64
                                        #   in Loop: Header=BB11_29 Depth=1
	movq	(%rbp), %rsi
	movl	8(%rbp), %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, (%rbp)
	movl	8(%rbp), %eax
	addq	%rax, %rbx
.LBB11_31:                              # %for.inc.74
                                        #   in Loop: Header=BB11_29 Depth=1
	addq	$16, %rbp
	cmpq	%r15, %rbp
	jb	.LBB11_29
.LBB11_32:                              # %sw.epilog
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%r12, 24(%rax)
	incl	40(%rax)
	xorl	%eax, %eax
.LBB11_33:                              # %cleanup.79
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_24:                              # %if.then.31
	movq	8(%rbx), %rdi
	movl	$.L.str.6, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movl	$-25, %eax
	jmp	.LBB11_33
.Lfunc_end11:
	.size	c_param_write, .Lfunc_end11-c_param_write
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_add,@function
c_param_add:                            # @c_param_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 48
.Ltmp59:
	.cfi_offset %rbx, -48
.Ltmp60:
	.cfi_offset %r12, -40
.Ltmp61:
	.cfi_offset %r13, -32
.Ltmp62:
	.cfi_offset %r14, -24
.Ltmp63:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	8(%r12), %rdi
	movl	$st_c_param, %esi
	movl	$.L.str.7, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB12_7
# BB#1:                                 # %if.end
	movq	24(%r12), %rax
	movq	%rax, (%rbx)
	cmpl	$0, 16(%r12)
	je	.LBB12_2
# BB#5:                                 # %if.else
	movq	%r14, 8(%rbx)
	movq	$1, 20(%rbx)
	jmp	.LBB12_6
.LBB12_2:                               # %if.then.4
	movq	8(%r12), %rdi
	movl	$.L.str.8, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB12_3
# BB#4:                                 # %if.end.15
	movl	%r15d, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%r13, 8(%rbx)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 20(%rbx)
.LBB12_6:                               # %if.end.24
	movl	%r15d, 16(%rbx)
	movq	$0, 96(%rbx)
	movq	%rbx, %rax
.LBB12_7:                               # %cleanup.26
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB12_3:                               # %if.then.11
	movq	8(%r12), %rdi
	movl	$.L.str.7, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	jmp	.LBB12_7
.Lfunc_end12:
	.size	c_param_add, .Lfunc_end12-c_param_add
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_enum_ptrs,@function
c_param_enum_ptrs:                      # @c_param_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp64:
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	je	.LBB13_5
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB13_2
# BB#7:                                 # %sw.bb.9
	movq	96(%rsi), %rax
	movq	%rax, (%r8)
	jmp	.LBB13_11
.LBB13_5:                               # %sw.bb.8
	movq	(%rsi), %rax
	movq	%rax, (%r8)
	jmp	.LBB13_11
.LBB13_2:                               # %entry
	cmpl	$2, %ecx
	jne	.LBB13_3
# BB#8:                                 # %sw.bb.11
	cmpl	$0, 20(%rsi)
	je	.LBB13_9
# BB#10:                                # %if.else
	movq	$0, (%r8)
.LBB13_11:                              # %cleanup
	movl	$ptr_struct_procs, %eax
	addq	$40, %rsp
	retq
.LBB13_3:                               # %sw.default
	addl	$-3, %ecx
	movl	88(%rsi), %eax
	leal	-11(%rax), %edx
	cmpl	$2, %edx
	ja	.LBB13_4
# BB#13:                                # %sw.bb
	addq	$32, %rsi
	movl	$56, %edx
	movl	$st_c_param_list, %r9d
	addq	$40, %rsp
	jmp	basic_enum_ptrs         # TAILCALL
.LBB13_4:                               # %sw.default.1
	movq	48(%rsp), %rdx
	movups	32(%rsi), %xmm0
	movaps	%xmm0, 16(%rsp)
	movl	%eax, 32(%rsp)
	movq	%rdx, (%rsp)
	leaq	16(%rsp), %rsi
	movl	$24, %edx
	xorl	%r9d, %r9d
	callq	gs_param_typed_value_enum_ptrs
	addq	$40, %rsp
	retq
.LBB13_9:                               # %if.then
	movq	8(%rsi), %rax
	movl	16(%rsi), %ecx
	movq	%rax, (%r8)
	movl	%ecx, 8(%r8)
	movl	$ptr_string_procs, %eax
	addq	$40, %rsp
	retq
.Lfunc_end13:
	.size	c_param_enum_ptrs, .Lfunc_end13-c_param_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_reloc_ptrs,@function
c_param_reloc_ptrs:                     # @c_param_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp67:
	.cfi_def_cfa_offset 48
.Ltmp68:
	.cfi_offset %rbx, -24
.Ltmp69:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	movq	(%r14), %rax
	movq	96(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 96(%rbx)
	cmpl	$0, 20(%rbx)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	8(%rbx), %rax
	movq	%rax, (%rsp)
	movl	16(%rbx), %eax
	movl	%eax, 8(%rsp)
	movq	(%r14), %rax
	leaq	(%rsp), %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	movq	(%rsp), %rax
	movq	%rax, 8(%rbx)
.LBB14_2:                               # %if.end
	movl	88(%rbx), %eax
	leal	-11(%rax), %ecx
	cmpl	$2, %ecx
	ja	.LBB14_4
# BB#3:                                 # %sw.bb
	addq	$32, %rbx
	movl	$56, %esi
	movl	$st_c_param_list, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	jmp	.LBB14_5
.LBB14_4:                               # %sw.default
	movups	32(%rbx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	%eax, 16(%rsp)
	leaq	(%rsp), %rdi
	movl	$24, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	gs_param_typed_value_reloc_ptrs
	movaps	(%rsp), %xmm0
	movups	%xmm0, 32(%rbx)
.LBB14_5:                               # %sw.epilog
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	c_param_reloc_ptrs, .Lfunc_end14-c_param_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_read_typed,@function
c_param_read_typed:                     # @c_param_read_typed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	16(%r14), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	24(%r13), %r12
	testq	%r12, %r12
	je	.LBB15_8
# BB#1:                                 # %for.body.lr.ph.i
	movl	%ebx, %ebp
	.align	16, 0x90
.LBB15_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, 16(%r12)
	jne	.LBB15_7
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	8(%r12), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB15_4
.LBB15_7:                               # %for.inc.i
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	(%r12), %r12
	testq	%r12, %r12
	jne	.LBB15_2
	jmp	.LBB15_8
.LBB15_4:                               # %if.then.i
	movslq	88(%r12), %rax
	cmpq	$-1, %rax
	je	.LBB15_8
# BB#5:                                 # %if.end
	movl	%eax, 16(%r14)
	leal	-11(%rax), %ecx
	cmpl	$2, %ecx
	ja	.LBB15_10
# BB#6:                                 # %sw.bb
	leaq	32(%r12), %rax
	movq	$c_read_procs, 32(%r12)
	movq	%rax, (%r14)
	movl	72(%r12), %eax
	movl	%eax, 8(%r14)
	jmp	.LBB15_26
.LBB15_8:                               # %if.then
	movq	32(%r13), %rdi
	movl	$1, %ecx
	testq	%rdi, %rdi
	je	.LBB15_27
# BB#9:                                 # %cond.true
	movl	$-1, 16(%r14)
	movq	%r15, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	param_read_requested_typed # TAILCALL
.LBB15_10:                              # %sw.epilog
	leaq	32(%r12), %r15
	movzbl	gs_param_type_sizes(%rax), %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	xorl	%edx, %edx
	movq	%r14, %rdi
	movl	4(%rsp), %ebx           # 4-byte Reload
	movl	%ebx, %esi
	callq	param_coerce_typed
	movl	%eax, %ecx
	cmpl	$8, %ebx
	jne	.LBB15_27
# BB#11:                                # %sw.epilog
	cmpl	$-20, %ecx
	jne	.LBB15_27
# BB#12:                                # %land.lhs.true.24
	movl	$-20, %ecx
	cmpl	$7, 16(%r14)
	jne	.LBB15_27
# BB#13:                                # %if.then.28
	movl	40(%r12), %ebx
	movq	96(%r12), %rax
	testq	%rax, %rax
	jne	.LBB15_25
# BB#14:                                # %if.then.34
	movq	8(%r13), %rdi
	leal	(,%rbx,4), %esi
	movl	$.L.str.11, %edx
	callq	*8(%rdi)
	movq	%rax, 96(%r12)
	testq	%rax, %rax
	movl	$-25, %ecx
	je	.LBB15_27
# BB#15:                                # %for.cond.preheader
	testl	%ebx, %ebx
	je	.LBB15_25
# BB#16:                                # %for.body.lr.ph
	movabsq	$8589934584, %r9        # imm = 0x1FFFFFFF8
	movq	(%r15), %rcx
	leal	-1(%rbx), %esi
	leaq	1(%rsi), %r8
	xorl	%edx, %edx
	movq	%r8, %r10
	andq	%r9, %r10
	je	.LBB15_23
# BB#17:                                # %vector.body.preheader
	leaq	1(%rsi), %rbp
	andq	%r9, %rbp
	addq	$-8, %rbp
	movq	%rbp, %rdi
	shrq	$3, %rdi
	xorl	%edx, %edx
	btq	$3, %rbp
	jb	.LBB15_19
# BB#18:                                # %vector.body.prol
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	cvtdq2ps	%xmm0, %xmm0
	cvtdq2ps	%xmm1, %xmm1
	movups	%xmm0, (%rax)
	movups	%xmm1, 16(%rax)
	movl	$8, %edx
.LBB15_19:                              # %vector.body.preheader.split
	testq	%rdi, %rdi
	je	.LBB15_22
# BB#20:                                # %vector.body.preheader.split.split
	incq	%rsi
	andq	%r9, %rsi
	subq	%rdx, %rsi
	leaq	48(%rcx,%rdx,4), %rbp
	leaq	48(%rax,%rdx,4), %rdx
.LBB15_21:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	cvtdq2ps	%xmm0, %xmm0
	cvtdq2ps	%xmm1, %xmm1
	movups	%xmm0, -48(%rdx)
	movups	%xmm1, -32(%rdx)
	movups	-16(%rbp), %xmm0
	movups	(%rbp), %xmm1
	cvtdq2ps	%xmm0, %xmm0
	cvtdq2ps	%xmm1, %xmm1
	movups	%xmm0, -16(%rdx)
	movups	%xmm1, (%rdx)
	addq	$64, %rbp
	addq	$64, %rdx
	addq	$-16, %rsi
	jne	.LBB15_21
.LBB15_22:
	movq	%r10, %rdx
.LBB15_23:                              # %middle.block
	cmpq	%rdx, %r8
	je	.LBB15_25
.LBB15_24:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rcx,%rdx,4), %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	incq	%rdx
	cmpl	%edx, %ebx
	jne	.LBB15_24
.LBB15_25:                              # %if.end.56
	movq	%rax, (%r14)
	movl	%ebx, 8(%r14)
	movl	$0, 12(%r14)
.LBB15_26:                              # %cleanup.63
	xorl	%ecx, %ecx
.LBB15_27:                              # %cleanup.63
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	c_param_read_typed, .Lfunc_end15-c_param_read_typed
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_begin_read_collection,@function
c_param_begin_read_collection:          # @c_param_begin_read_collection
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
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp89:
	.cfi_def_cfa_offset 64
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	24(%r12), %r14
	testq	%r14, %r14
	je	.LBB16_11
# BB#1:                                 # %for.body.lr.ph.i
	movl	%ebp, %ebx
	.align	16, 0x90
.LBB16_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, 16(%r14)
	jne	.LBB16_10
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	8(%r14), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB16_4
.LBB16_10:                              # %for.inc.i
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	.LBB16_2
	jmp	.LBB16_11
.LBB16_4:                               # %if.then.i
	movl	88(%r14), %ecx
	movl	$-20, %eax
	cmpl	$11, %ecx
	jg	.LBB16_8
# BB#5:                                 # %if.then.i
	cmpl	$-1, %ecx
	jne	.LBB16_6
.LBB16_11:                              # %if.then
	movq	32(%r12), %rdi
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.LBB16_15
# BB#12:                                # %cond.true
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	movq	%r13, %rsi
	movq	(%rsp), %rdx            # 8-byte Reload
	movl	%r15d, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB16_8:                               # %if.then.i
	cmpl	$12, %ecx
	jne	.LBB16_9
# BB#13:                                # %sw.bb.7
	cmpl	$2, %r15d
	je	.LBB16_15
	jmp	.LBB16_14
.LBB16_6:                               # %if.then.i
	cmpl	$11, %ecx
	jne	.LBB16_15
# BB#7:                                 # %sw.bb
	testl	%r15d, %r15d
	jne	.LBB16_15
	jmp	.LBB16_14
.LBB16_9:                               # %if.then.i
	cmpl	$13, %ecx
	jne	.LBB16_15
.LBB16_14:                              # %sw.epilog
	leaq	32(%r14), %rax
	movq	$c_read_procs, 32(%r14)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, (%rcx)
	movl	72(%r14), %eax
	movl	%eax, 8(%rcx)
	xorl	%eax, %eax
.LBB16_15:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	c_param_begin_read_collection, .Lfunc_end16-c_param_begin_read_collection
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_end_read_collection,@function
c_param_end_read_collection:            # @c_param_end_read_collection
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	c_param_end_read_collection, .Lfunc_end17-c_param_end_read_collection
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_get_next_key,@function
c_param_get_next_key:                   # @c_param_get_next_key
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	addq	$24, %rdi
	testq	%rax, %rax
	cmovneq	%rax, %rdi
	movq	(%rdi), %rcx
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB18_2
# BB#1:                                 # %if.end
	movq	%rcx, (%rsi)
	movups	8(%rcx), %xmm0
	movups	%xmm0, (%rdx)
	xorl	%eax, %eax
.LBB18_2:                               # %cleanup
	retq
.Lfunc_end18:
	.size	c_param_get_next_key, .Lfunc_end18-c_param_get_next_key
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_read_get_policy,@function
c_param_read_get_policy:                # @c_param_read_get_policy
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end19:
	.size	c_param_read_get_policy, .Lfunc_end19-c_param_read_get_policy
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_read_signal_error,@function
c_param_read_signal_error:              # @c_param_read_signal_error
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	retq
.Lfunc_end20:
	.size	c_param_read_signal_error, .Lfunc_end20-c_param_read_signal_error
	.cfi_endproc

	.align	16, 0x90
	.type	c_param_read_commit,@function
c_param_read_commit:                    # @c_param_read_commit
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end21:
	.size	c_param_read_commit, .Lfunc_end21-c_param_read_commit
	.cfi_endproc

	.type	gs_param_type_sizes,@object # @gs_param_type_sizes
	.section	.rodata,"a",@progbits
	.globl	gs_param_type_sizes
gs_param_type_sizes:
	.ascii	"\000\004\004\b\004\020\020\020\020\020\020888"
	.size	gs_param_type_sizes, 14

	.type	gs_param_type_base_sizes,@object # @gs_param_type_base_sizes
	.globl	gs_param_type_base_sizes
gs_param_type_base_sizes:
	.asciz	"\000\004\004\b\004\001\001\004\004\020\020\000\000"
	.size	gs_param_type_base_sizes, 14

	.type	st_c_param_list,@object # @st_c_param_list
	.align	8
st_c_param_list:
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	c_param_list_reloc_ptrs
	.size	st_c_param_list, 64

	.type	c_write_procs,@object   # @c_write_procs
	.align	8
c_write_procs:
	.quad	c_param_write_typed
	.quad	c_param_begin_write_collection
	.quad	c_param_end_write_collection
	.quad	0
	.quad	c_param_request
	.quad	c_param_requested
	.quad	0
	.quad	0
	.quad	0
	.size	c_write_procs, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_c_param_list_release data"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_c_param_list_release key"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_c_param_list_release alternate data"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_c_param_list_release entry"
	.size	.L.str.3, 30

	.type	c_read_procs,@object    # @c_read_procs
	.section	.rodata,"a",@progbits
	.align	8
c_read_procs:
	.quad	c_param_read_typed
	.quad	c_param_begin_read_collection
	.quad	c_param_end_read_collection
	.quad	c_param_get_next_key
	.quad	0
	.quad	0
	.quad	c_param_read_get_policy
	.quad	c_param_read_signal_error
	.quad	c_param_read_commit
	.size	c_read_procs, 72

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"c_param_list"
	.size	.L.str.4, 13

	.type	c_param_list_reloc_ptrs,@object # @c_param_list_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
c_param_list_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	c_param_list_enum_ptrs
	.size	c_param_list_reloc_ptrs, 24

	.type	c_param_list_enum_ptrs,@object # @c_param_list_enum_ptrs
	.align	2
c_param_list_enum_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	c_param_list_enum_ptrs, 8

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"c_param_write data"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"c_param_write entry"
	.size	.L.str.6, 20

	.type	st_c_param,@object      # @st_c_param
	.section	.rodata,"a",@progbits
	.align	8
st_c_param:
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	c_param_enum_ptrs
	.quad	c_param_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_c_param, 64

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"c_param_add entry"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"c_param_add key"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gs_c_param"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"c_param_begin_write_collection"
	.size	.L.str.10, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gs_c_param_read alternate float array"
	.size	.L.str.11, 38


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
