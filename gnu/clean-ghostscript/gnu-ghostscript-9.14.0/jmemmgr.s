	.text
	.file	"jmemmgr.bc"
	.globl	jinit_memory_mgr
	.align	16, 0x90
	.type	jinit_memory_mgr,@function
jinit_memory_mgr:                       # @jinit_memory_mgr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 48
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	$0, 8(%r14)
	callq	jpeg_mem_init
	movq	%rax, 16(%rsp)
	movl	$168, %esi
	movq	%r14, %rdi
	callq	jpeg_get_small
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB0_2
# BB#1:                                 # %if.then.6
	movq	%r14, %rdi
	callq	jpeg_mem_term
	movq	(%r14), %rax
	movl	$56, 40(%rax)
	movl	$0, 44(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB0_2:                                # %if.end.13
	movl	$alloc_large, %eax
	movd	%rax, %xmm0
	movl	$alloc_small, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, (%rbx)
	movq	$alloc_sarray, 16(%rbx)
	movq	$alloc_barray, 24(%rbx)
	movq	$request_virt_sarray, 32(%rbx)
	movq	$request_virt_barray, 40(%rbx)
	movq	$realize_virt_arrays, 48(%rbx)
	movq	$access_virt_sarray, 56(%rbx)
	movq	$access_virt_barray, 64(%rbx)
	movq	$free_pool, 72(%rbx)
	movq	$self_destruct, 80(%rbx)
	movq	$1000000000, 96(%rbx)   # imm = 0x3B9ACA00
	movq	16(%rsp), %rax
	movq	%rax, 88(%rbx)
	movq	$0, 128(%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 104(%rbx)
	movq	$0, 120(%rbx)
	movq	$0, 136(%rbx)
	movq	$0, 144(%rbx)
	movq	$168, 152(%rbx)
	movq	%rbx, 8(%r14)
	movl	$.L.str, %edi
	callq	getenv
	movq	%rax, %rdi
	testq	%rdi, %rdi
	je	.LBB0_8
# BB#3:                                 # %if.then.36
	movb	$120, 15(%rsp)
	leaq	16(%rsp), %rdx
	leaq	15(%rsp), %rcx
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	testl	%eax, %eax
	jle	.LBB0_8
# BB#4:                                 # %if.then.39
	movb	15(%rsp), %al
	orb	$32, %al
	movzbl	%al, %eax
	cmpl	$109, %eax
	jne	.LBB0_5
# BB#6:                                 # %if.then.45
	imulq	$1000, 16(%rsp), %rax   # imm = 0x3E8
	movq	%rax, 16(%rsp)
	jmp	.LBB0_7
.LBB0_5:                                # %if.then.39.if.end.46_crit_edge
	movq	16(%rsp), %rax
.LBB0_7:                                # %if.end.46
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	%rax, 88(%rbx)
.LBB0_8:                                # %if.end.51
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	jinit_memory_mgr, .Lfunc_end0-jinit_memory_mgr
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_small,@function
alloc_small:                            # @alloc_small
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 80
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movl	%esi, %r14d
	movq	%rdi, %r13
	movq	8(%r13), %r15
	cmpq	$999999977, %rbp        # imm = 0x3B9AC9E9
	jb	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%r13), %rax
	movl	$56, 40(%rax)
	movl	$1, 44(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB1_2:                                # %if.end
	movq	%rbp, %rax
	andq	$7, %rax
	movl	$8, %ecx
	subq	%rax, %rcx
	xorl	%r12d, %r12d
	movq	%rbp, %rax
	andq	$7, %rax
	cmovneq	%rcx, %r12
	cmpl	$2, %r14d
	jb	.LBB1_4
# BB#3:                                 # %if.then.7
	movq	(%r13), %rax
	movl	$15, 40(%rax)
	movl	%r14d, 44(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB1_4:                                # %if.end.11
	addq	%rbp, %r12
	movslq	%r14d, %rdx
	movq	104(%r15,%rdx,8), %rax
	xorl	%ebx, %ebx
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_7:                                # %if.end.16
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	(%rbx), %rax
.LBB1_5:                                # %if.end.11
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB1_8
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	%rax, %rbx
	cmpq	%r12, 16(%rbx)
	jb	.LBB1_7
	jmp	.LBB1_17
.LBB1_8:                                # %if.then.19
	movq	%r15, 16(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	movl	$first_pool_slop, %eax
	movl	$extra_pool_slop, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx,%rdx,8), %rax
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	$999999976, %r15d       # imm = 0x3B9AC9E8
	subq	%r12, %r15
	cmpq	%r15, %rax
	cmovbeq	%rax, %r15
	leaq	24(%r12,%r15), %rbp
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	jpeg_get_small
	testq	%rax, %rax
	jne	.LBB1_13
# BB#9:                                 # %if.end.36.lr.ph
	leaq	24(%r12), %r14
	.align	16, 0x90
.LBB1_10:                               # %if.end.36
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rax
	shrq	%r15
	cmpq	$99, %rax
	ja	.LBB1_12
# BB#11:                                # %if.then.38
                                        #   in Loop: Header=BB1_10 Depth=1
	movq	(%r13), %rax
	movl	$56, 40(%rax)
	movl	$2, 44(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB1_12:                               # %for.cond.backedge
                                        #   in Loop: Header=BB1_10 Depth=1
	leaq	(%r14,%r15), %rbp
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	jpeg_get_small
	testq	%rax, %rax
	je	.LBB1_10
.LBB1_13:                               # %for.end
	movq	16(%rsp), %rcx          # 8-byte Reload
	addq	%rbp, 152(%rcx)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	addq	%r12, %r15
	movq	%r15, 16(%rax)
	testq	%rbx, %rbx
	je	.LBB1_14
# BB#15:                                # %if.else.53
	movq	%rax, (%rbx)
	jmp	.LBB1_16
.LBB1_14:                               # %if.then.49
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%rax, 104(%rcx,%rdx,8)
.LBB1_16:                               # %if.end.57
	movq	%rax, %rbx
.LBB1_17:                               # %if.end.57
	movq	8(%rbx), %rcx
	leaq	24(%rbx,%rcx), %rax
	addq	%r12, %rcx
	movq	%rcx, 8(%rbx)
	subq	%r12, 16(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	alloc_small, .Lfunc_end1-alloc_small
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_large,@function
alloc_large:                            # @alloc_large
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
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 64
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movl	%esi, %r14d
	movq	%rdi, %r13
	movq	8(%r13), %r12
	cmpq	$999999977, %rbp        # imm = 0x3B9AC9E9
	jb	.LBB2_2
# BB#1:                                 # %if.then
	movq	(%r13), %rax
	movl	$56, 40(%rax)
	movl	$3, 44(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB2_2:                                # %if.end
	movq	%rbp, %rax
	andq	$7, %rax
	movl	$8, %ecx
	subq	%rax, %rcx
	xorl	%ebx, %ebx
	movq	%rbp, %rax
	andq	$7, %rax
	cmovneq	%rcx, %rbx
	addq	%rbp, %rbx
	cmpl	$2, %r14d
	jb	.LBB2_4
# BB#3:                                 # %if.then.7
	movq	(%r13), %rax
	movl	$15, 40(%rax)
	movl	%r14d, 44(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB2_4:                                # %if.end.11
	leaq	24(%rbx), %r15
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	jpeg_get_large
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB2_6
# BB#5:                                 # %if.then.14
	movq	(%r13), %rax
	movl	$56, 40(%rax)
	movl	$4, 44(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB2_6:                                # %if.end.15
	addq	%r15, 152(%r12)
	movslq	%r14d, %rax
	movq	120(%r12,%rax,8), %rcx
	movq	%rcx, (%rbp)
	movq	%rbx, 8(%rbp)
	movq	$0, 16(%rbp)
	movq	%rbp, 120(%r12,%rax,8)
	addq	$24, %rbp
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	alloc_large, .Lfunc_end2-alloc_large
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_sarray,@function
alloc_sarray:                           # @alloc_sarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 80
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	8(%rbx), %r14
	movl	%edx, %ebp
	movl	$999999976, %eax        # imm = 0x3B9AC9E8
	xorl	%edx, %edx
	divq	%rbp
	movq	%rax, %r13
	testq	%r13, %r13
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rax
	movl	$72, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB3_2:                                # %if.end
	movl	%r12d, %edx
	cmpq	%rdx, %r13
	cmovael	%r12d, %r13d
	movl	%r13d, 160(%r14)
	shlq	$3, %rdx
	movq	%rbx, %rdi
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	%r15d, %esi
	movl	%r15d, 20(%rsp)         # 4-byte Spill
	callq	alloc_small
	movq	%rax, %rbx
	testl	%r12d, %r12d
	je	.LBB3_8
# BB#3:                                 # %while.body.preheader
	movl	%r12d, %eax
	notl	%eax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB3_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	movl	%r13d, %r15d
	movl	%r12d, %r13d
	subl	%r14d, %r13d
	cmpl	%r13d, %r15d
	cmovbl	%r15d, %r13d
	movl	%r13d, %edx
	imulq	%rbp, %rdx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movl	20(%rsp), %esi          # 4-byte Reload
	callq	alloc_large
	testl	%r13d, %r13d
	je	.LBB3_4
# BB#6:                                 # %for.body.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	leal	(%rcx,%r14), %ecx
	notl	%r15d
	cmpl	%r15d, %ecx
	cmoval	%ecx, %r15d
	incl	%r15d
	.align	16, 0x90
.LBB3_7:                                # %for.body
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %ecx
	incl	%r14d
	movq	%rax, (%rbx,%rcx,8)
	addq	%rbp, %rax
	incl	%r15d
	jne	.LBB3_7
.LBB3_4:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB3_5 Depth=1
	cmpl	%r12d, %r14d
	jb	.LBB3_5
.LBB3_8:                                # %while.end
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	alloc_sarray, .Lfunc_end3-alloc_sarray
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_barray,@function
alloc_barray:                           # @alloc_barray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 96
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	8(%rbx), %r14
	movl	%edx, %ebp
	movq	%rbp, %rcx
	shlq	$7, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	$999999976, %eax        # imm = 0x3B9AC9E8
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %r13
	testq	%r13, %r13
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rax
	movl	$72, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB4_2:                                # %if.end
	movl	%r12d, %edx
	cmpq	%rdx, %r13
	cmovael	%r12d, %r13d
	movl	%r13d, 160(%r14)
	shlq	$3, %rdx
	movq	%rbx, %rdi
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	%r15d, %esi
	movl	%r15d, 36(%rsp)         # 4-byte Spill
	callq	alloc_small
	movq	%rax, %rbx
	testl	%r12d, %r12d
	je	.LBB4_8
# BB#3:                                 # %while.body.preheader
	shlq	$7, %rbp
	movl	%r12d, %eax
	notl	%eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB4_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	movl	%r13d, %r14d
	movl	%r12d, %r13d
	subl	%r15d, %r13d
	cmpl	%r13d, %r14d
	cmovbl	%r14d, %r13d
	movl	%r13d, %edx
	imulq	16(%rsp), %rdx          # 8-byte Folded Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	36(%rsp), %esi          # 4-byte Reload
	callq	alloc_large
	testl	%r13d, %r13d
	je	.LBB4_4
# BB#6:                                 # %for.body.lr.ph
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	leal	(%rcx,%r15), %ecx
	notl	%r14d
	cmpl	%r14d, %ecx
	cmoval	%ecx, %r14d
	incl	%r14d
	.align	16, 0x90
.LBB4_7:                                # %for.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ecx
	incl	%r15d
	movq	%rax, (%rbx,%rcx,8)
	addq	%rbp, %rax
	incl	%r14d
	jne	.LBB4_7
.LBB4_4:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB4_5 Depth=1
	cmpl	%r12d, %r15d
	jb	.LBB4_5
.LBB4_8:                                # %while.end
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	alloc_barray, .Lfunc_end4-alloc_barray
	.cfi_endproc

	.align	16, 0x90
	.type	request_virt_sarray,@function
request_virt_sarray:                    # @request_virt_sarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 64
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebx
	movq	%rdi, %rbp
	movq	8(%rbp), %r14
	cmpl	$1, %ebx
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	(%rbp), %rax
	movl	$15, 40(%rax)
	movl	%ebx, 44(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB5_2:                                # %if.end
	movl	$152, %edx
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	alloc_small
	movq	$0, (%rax)
	movl	%r13d, 8(%rax)
	movl	%r12d, 12(%rax)
	movl	4(%rsp), %ecx           # 4-byte Reload
	movl	%ecx, 16(%rax)
	movl	%r15d, 36(%rax)
	movl	$0, 44(%rax)
	movq	136(%r14), %rcx
	movq	%rcx, 48(%rax)
	movq	%rax, 136(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	request_virt_sarray, .Lfunc_end5-request_virt_sarray
	.cfi_endproc

	.align	16, 0x90
	.type	request_virt_barray,@function
request_virt_barray:                    # @request_virt_barray
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
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebx
	movq	%rdi, %rbp
	movq	8(%rbp), %r14
	cmpl	$1, %ebx
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	(%rbp), %rax
	movl	$15, 40(%rax)
	movl	%ebx, 44(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB6_2:                                # %if.end
	movl	$152, %edx
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	alloc_small
	movq	$0, (%rax)
	movl	%r13d, 8(%rax)
	movl	%r12d, 12(%rax)
	movl	4(%rsp), %ecx           # 4-byte Reload
	movl	%ecx, 16(%rax)
	movl	%r15d, 36(%rax)
	movl	$0, 44(%rax)
	movq	144(%r14), %rcx
	movq	%rcx, 48(%rax)
	movq	%rax, 144(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	request_virt_barray, .Lfunc_end6-request_virt_barray
	.cfi_endproc

	.align	16, 0x90
	.type	realize_virt_arrays,@function
realize_virt_arrays:                    # @realize_virt_arrays
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
	subq	$72, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 128
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
	movq	8(%rdi), %r12
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	136(%r12), %rax
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_4:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	48(%rax), %rax
.LBB7_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB7_5
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpq	$0, (%rax)
	jne	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	16(%rax), %ecx
	movl	8(%rax), %edx
	movl	12(%rax), %esi
	imulq	%rsi, %rcx
	addq	%rcx, %r15
	imulq	%rsi, %rdx
	addq	%rdx, %rbx
	jmp	.LBB7_4
.LBB7_5:                                # %for.end
	movq	%rdi, %r14
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	144(%r12), %rax
	jmp	.LBB7_6
	.align	16, 0x90
.LBB7_9:                                # %for.inc.33
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	48(%rax), %rax
.LBB7_6:                                # %for.end
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB7_10
# BB#7:                                 # %for.body.14
                                        #   in Loop: Header=BB7_6 Depth=1
	cmpq	$0, (%rax)
	jne	.LBB7_9
# BB#8:                                 # %if.then.18
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	16(%rax), %ecx
	movl	8(%rax), %edx
	movl	12(%rax), %esi
	imulq	%rsi, %rcx
	shlq	$7, %rcx
	addq	%rcx, %r15
	imulq	%rsi, %rdx
	shlq	$7, %rdx
	addq	%rdx, %rbx
	jmp	.LBB7_9
.LBB7_10:                               # %for.end.35
	testq	%r15, %r15
	jle	.LBB7_41
# BB#11:                                # %if.end.39
	movq	152(%r12), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	jpeg_mem_available
	movl	$1000000000, %ecx       # imm = 0x3B9ACA00
	cmpq	%rbx, %rax
	jge	.LBB7_13
# BB#12:                                # %if.else
	cqto
	idivq	%r15
	testq	%rax, %rax
	movl	$1, %ecx
	cmovgq	%rax, %rcx
.LBB7_13:                               # %if.end.47
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	136(%r12), %rdi
	testq	%rdi, %rdi
	movq	%rcx, %r15
	je	.LBB7_14
	.align	16, 0x90
.LBB7_19:                               # %for.body.52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
                                        #       Child Loop BB7_35 Depth 3
	cmpq	$0, (%rdi)
	jne	.LBB7_37
# BB#20:                                # %if.then.56
                                        #   in Loop: Header=BB7_19 Depth=1
	movl	8(%rdi), %r13d
	movl	16(%rdi), %ecx
	leaq	-1(%r13), %rax
	cqto
	idivq	%rcx
	cmpq	%r15, %rax
	jge	.LBB7_22
# BB#21:                                # %if.then.65
                                        #   in Loop: Header=BB7_19 Depth=1
	movl	%r13d, 20(%rdi)
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	leaq	12(%rdi), %r15
	movq	%r14, %rcx
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.67
                                        #   in Loop: Header=BB7_19 Depth=1
	imull	%r15d, %ecx
	movl	%ecx, 20(%rdi)
	leaq	56(%rdi), %rsi
	movq	%rdi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	12(%rbp), %r15
	movl	12(%rbp), %edx
	imulq	%r13, %rdx
	movq	%r14, %rbx
	movq	%rbx, %rdi
	callq	jpeg_open_backing_store
	movq	%rbx, %rcx
	movl	$1, 44(%rbp)
	movl	20(%rbp), %r13d
.LBB7_23:                               # %if.end.79
                                        #   in Loop: Header=BB7_19 Depth=1
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movq	8(%rcx), %rbx
	movl	(%r15), %r14d
	movl	$999999976, %eax        # imm = 0x3B9AC9E8
	xorl	%edx, %edx
	divq	%r14
	testq	%rax, %rax
	jne	.LBB7_25
# BB#24:                                # %if.then.i
                                        #   in Loop: Header=BB7_19 Depth=1
	movq	(%rcx), %rdx
	movl	$72, 40(%rdx)
	movq	%rcx, %rbp
	movq	%rbp, %rdi
	movq	%rax, %r15
	callq	*(%rdx)
	movq	%r15, %rax
	movq	%rbp, %rcx
.LBB7_25:                               # %if.end.i
                                        #   in Loop: Header=BB7_19 Depth=1
	movl	%r13d, %edx
	cmpq	%rdx, %rax
	cmovael	%r13d, %eax
	movl	%eax, 160(%rbx)
	shlq	$3, %rdx
	movq	%rax, %rbp
	movl	$1, %esi
	movq	%rcx, %rbx
	movq	%rbx, %rdi
	callq	alloc_small
	movq	%rbp, %rcx
	movq	%rbx, %rdi
	movq	%rax, %r12
	testl	%r13d, %r13d
	je	.LBB7_36
# BB#26:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB7_19 Depth=1
	movl	%r13d, %eax
	notl	%eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB7_28:                               # %while.body.i
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_35 Depth 3
	movl	%ecx, %r15d
	subl	%ebp, %r13d
	cmpl	%r13d, %r15d
	cmovbl	%r15d, %r13d
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movl	%r13d, %ebx
	imulq	%r14, %rbx
	movq	8(%rdi), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpq	$999999977, %rbx        # imm = 0x3B9AC9E9
	jb	.LBB7_30
# BB#29:                                # %if.then.i.87
                                        #   in Loop: Header=BB7_28 Depth=2
	movq	(%rdi), %rax
	movl	$56, 40(%rax)
	movl	$3, 44(%rax)
	movq	%rdi, %r13
	callq	*(%rax)
	movq	%r13, %rdi
.LBB7_30:                               # %if.end.i.89
                                        #   in Loop: Header=BB7_28 Depth=2
	movq	%rbx, %rax
	andq	$7, %rax
	movl	$8, %ecx
	subq	%rax, %rcx
	movq	%rbx, %rax
	andq	$7, %rax
	movl	$0, %eax
	cmovneq	%rcx, %rax
	leaq	(%rax,%rbx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	24(%rax,%rbx), %r13
	movq	%r13, %rsi
	callq	jpeg_get_large
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB7_32
# BB#31:                                # %if.then.14.i
                                        #   in Loop: Header=BB7_28 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$56, 40(%rax)
	movl	$4, 44(%rax)
	callq	*(%rax)
.LBB7_32:                               # %alloc_large.exit
                                        #   in Loop: Header=BB7_28 Depth=2
	movq	56(%rsp), %rcx          # 8-byte Reload
	addq	%r13, 152(%rcx)
	movq	128(%rcx), %rax
	movq	%rax, (%rbx)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	%rbx, 128(%rcx)
	movq	64(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB7_33
# BB#34:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB7_28 Depth=2
	addq	$24, %rbx
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbp), %eax
	notl	%r15d
	cmpl	%r15d, %eax
	cmoval	%eax, %r15d
	incl	%r15d
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB7_35:                               # %for.body.i
                                        #   Parent Loop BB7_19 Depth=1
                                        #     Parent Loop BB7_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebp, %eax
	incl	%ebp
	movq	%rbx, (%r12,%rax,8)
	addq	%r14, %rbx
	incl	%r15d
	jne	.LBB7_35
	jmp	.LBB7_27
	.align	16, 0x90
.LBB7_33:                               #   in Loop: Header=BB7_28 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB7_27:                               # %while.cond.loopexit.i
                                        #   in Loop: Header=BB7_28 Depth=2
	cmpl	%r13d, %ebp
	jb	.LBB7_28
.LBB7_36:                               # %alloc_sarray.exit
                                        #   in Loop: Header=BB7_19 Depth=1
	movq	%rdi, %r14
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r12, (%rdi)
	movq	8(%rsp), %r12           # 8-byte Reload
	movl	160(%r12), %eax
	movl	%eax, 24(%rdi)
	movl	$0, 28(%rdi)
	movl	$0, 32(%rdi)
	movl	$0, 40(%rdi)
	movq	(%rsp), %r15            # 8-byte Reload
.LBB7_37:                               # %for.inc.85
                                        #   in Loop: Header=BB7_19 Depth=1
	movq	48(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB7_19
.LBB7_14:                               # %for.cond.89.preheader
	movq	144(%r12), %rbx
	jmp	.LBB7_15
	.align	16, 0x90
.LBB7_40:                               # %for.inc.134
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	48(%rbx), %rbx
.LBB7_15:                               # %for.cond.89.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB7_41
# BB#16:                                # %for.body.92
                                        #   in Loop: Header=BB7_15 Depth=1
	cmpq	$0, (%rbx)
	jne	.LBB7_40
# BB#17:                                # %if.then.96
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	8(%rbx), %ecx
	movl	16(%rbx), %esi
	leaq	-1(%rcx), %rax
	cqto
	idivq	%rsi
	cmpq	%r15, %rax
	jge	.LBB7_38
# BB#18:                                # %if.then.106
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	%ecx, 20(%rbx)
	movq	%r14, %rdi
	jmp	.LBB7_39
.LBB7_38:                               # %if.else.109
                                        #   in Loop: Header=BB7_15 Depth=1
	imull	%r15d, %esi
	movl	%esi, 20(%rbx)
	leaq	56(%rbx), %rsi
	movl	12(%rbx), %edx
	imulq	%rcx, %rdx
	shlq	$7, %rdx
	movq	%r14, %rbp
	movq	%rbp, %rdi
	callq	jpeg_open_backing_store
	movq	%rbp, %rdi
	movl	$1, 44(%rbx)
	movl	20(%rbx), %ecx
.LBB7_39:                               # %if.end.123
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	12(%rbx), %edx
	movl	$1, %esi
	movq	%rdi, %r14
	callq	alloc_barray
	movq	%rax, (%rbx)
	movl	160(%r12), %eax
	movl	%eax, 24(%rbx)
	movl	$0, 28(%rbx)
	movl	$0, 32(%rbx)
	movl	$0, 40(%rbx)
	jmp	.LBB7_40
.LBB7_41:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	realize_virt_arrays, .Lfunc_end7-realize_virt_arrays
	.cfi_endproc

	.align	16, 0x90
	.type	access_virt_sarray,@function
access_virt_sarray:                     # @access_virt_sarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 96
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leal	(%rcx,%rbx), %r14d
	cmpl	8(%r13), %r14d
	ja	.LBB8_3
# BB#1:                                 # %lor.lhs.false
	cmpl	%ecx, 16(%r13)
	jb	.LBB8_3
# BB#2:                                 # %lor.lhs.false.2
	cmpq	$0, (%r13)
	jne	.LBB8_4
.LBB8_3:                                # %if.then
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$23, 40(%rax)
	callq	*(%rax)
.LBB8_4:                                # %if.end
	movl	28(%r13), %eax
	cmpl	%ebx, %eax
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	ja	.LBB8_6
# BB#5:                                 # %lor.lhs.false.7
	addl	20(%r13), %eax
	cmpl	%eax, %r14d
	jbe	.LBB8_23
.LBB8_6:                                # %if.then.11
	cmpl	$0, 44(%r13)
	jne	.LBB8_8
# BB#7:                                 # %if.then.12
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$71, 40(%rax)
	callq	*(%rax)
.LBB8_8:                                # %if.end.18
	cmpl	$0, 40(%r13)
	je	.LBB8_15
# BB#9:                                 # %if.then.20
	movl	12(%r13), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	20(%r13), %eax
	testq	%rax, %rax
	je	.LBB8_14
# BB#10:                                # %for.body.lr.ph.i
	movl	8(%r13), %ebp
	movl	24(%r13), %ecx
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	movl	28(%r13), %r12d
	movl	32(%r13), %ecx
	subq	%r12, %rcx
	cmpq	%rcx, %rax
	cmovleq	%rax, %rcx
	subq	%r12, %rbp
	cmpq	%rbp, %rcx
	cmovleq	%rcx, %rbp
	testq	%rbp, %rbp
	jle	.LBB8_14
# BB#11:                                # %if.end.i.lr.ph
	leaq	56(%r13), %r15
	imulq	24(%rsp), %r12          # 8-byte Folded Reload
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_12:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	imulq	24(%rsp), %rbp          # 8-byte Folded Reload
	movq	(%r13), %rax
	movq	(%rax,%rbx,8), %rdx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movq	%r12, %rcx
	movq	%rbp, %r8
	callq	*64(%r13)
	movl	20(%r13), %eax
	movl	24(%r13), %ecx
	leaq	(%rbx,%rcx), %rbx
	subq	%rbx, %rax
	jle	.LBB8_14
# BB#13:                                # %if.end.48.for.body_crit_edge.i
                                        #   in Loop: Header=BB8_12 Depth=1
	addq	%rbp, %r12
	cmpq	%rax, %rcx
	cmovleq	%rcx, %rax
	movl	8(%r13), %ebp
	movl	28(%r13), %ecx
	leaq	(%rcx,%rbx), %rcx
	movl	32(%r13), %edx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	cmovleq	%rax, %rdx
	subq	%rcx, %rbp
	cmpq	%rbp, %rdx
	cmovleq	%rdx, %rbp
	testq	%rbp, %rbp
	jg	.LBB8_12
.LBB8_14:                               # %do_sarray_io.exit
	movl	$0, 40(%r13)
.LBB8_15:                               # %if.end.22
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, 28(%r13)
	jae	.LBB8_17
# BB#16:                                # %if.end.22.if.end.35_crit_edge
	movl	20(%r13), %ecx
	jmp	.LBB8_18
.LBB8_17:                               # %if.else
	movl	%r14d, %eax
	movl	20(%r13), %ecx
	xorl	%edx, %edx
	subq	%rcx, %rax
	cmovsl	%edx, %eax
.LBB8_18:                               # %if.end.35
	movl	%eax, 28(%r13)
	movl	12(%r13), %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	je	.LBB8_23
# BB#19:                                # %for.body.lr.ph.i.80
	movl	%ecx, %ecx
	movl	8(%r13), %ebp
	movl	24(%r13), %edx
	cmpq	%rcx, %rdx
	cmovbq	%rdx, %rcx
	movl	%eax, %ebx
	movl	32(%r13), %eax
	subq	%rbx, %rax
	cmpq	%rax, %rcx
	cmovleq	%rcx, %rax
	subq	%rbx, %rbp
	cmpq	%rbp, %rax
	cmovleq	%rax, %rbp
	testq	%rbp, %rbp
	jle	.LBB8_23
# BB#20:                                # %if.end.i.101.lr.ph
	leaq	56(%r13), %r15
	imulq	24(%rsp), %rbx          # 8-byte Folded Reload
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB8_21:                               # %if.end.i.101
                                        # =>This Inner Loop Header: Depth=1
	imulq	24(%rsp), %rbp          # 8-byte Folded Reload
	movq	(%r13), %rax
	movq	(%rax,%r12,8), %rdx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rcx
	movq	%rbp, %r8
	callq	*56(%r13)
	movl	20(%r13), %eax
	movl	24(%r13), %ecx
	leaq	(%r12,%rcx), %r12
	subq	%r12, %rax
	jle	.LBB8_23
# BB#22:                                # %if.end.48.for.body_crit_edge.i.108
                                        #   in Loop: Header=BB8_21 Depth=1
	addq	%rbp, %rbx
	cmpq	%rax, %rcx
	cmovleq	%rcx, %rax
	movl	8(%r13), %ebp
	movl	28(%r13), %ecx
	leaq	(%rcx,%r12), %rcx
	movl	32(%r13), %edx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	cmovleq	%rax, %rdx
	subq	%rcx, %rbp
	cmpq	%rbp, %rdx
	cmovleq	%rdx, %rbp
	testq	%rbp, %rbp
	jg	.LBB8_21
.LBB8_23:                               # %if.end.36
	movl	32(%r13), %eax
	cmpl	%r14d, %eax
	movq	16(%rsp), %r15          # 8-byte Reload
	movl	12(%rsp), %r12d         # 4-byte Reload
	jae	.LBB8_37
# BB#24:                                # %if.then.39
	cmpl	%r15d, %eax
	jae	.LBB8_27
# BB#25:                                # %if.then.43
	testl	%r12d, %r12d
	je	.LBB8_26
# BB#29:                                # %if.end.54.thread
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$23, 40(%rax)
	callq	*(%rax)
	movl	%r15d, %eax
	jmp	.LBB8_30
.LBB8_27:                               # %if.end.54
	testl	%r12d, %r12d
	je	.LBB8_28
.LBB8_30:                               # %if.then.56
	movl	%r14d, 32(%r13)
	movb	$1, %cl
	jmp	.LBB8_31
.LBB8_26:
	xorl	%ecx, %ecx
	movl	%r15d, %eax
	jmp	.LBB8_31
.LBB8_28:
	xorl	%ecx, %ecx
.LBB8_31:                               # %if.end.58
	cmpl	$0, 36(%r13)
	je	.LBB8_35
# BB#32:                                # %if.then.60
	movl	12(%r13), %ebx
	movl	28(%r13), %ecx
	movl	%eax, %ebp
	subl	%ecx, %ebp
	movl	%r14d, %edx
	subl	%ecx, %edx
	cmpl	%edx, %ebp
	jae	.LBB8_37
# BB#33:                                # %while.body.lr.ph
	shlq	$3, %rbp
	subl	%eax, %r14d
	.align	16, 0x90
.LBB8_34:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movq	(%rax,%rbp), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	addq	$8, %rbp
	decl	%r14d
	jne	.LBB8_34
	jmp	.LBB8_37
.LBB8_35:                               # %if.else.69
	testb	%cl, %cl
	jne	.LBB8_37
# BB#36:                                # %if.then.71
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$23, 40(%rax)
	callq	*(%rax)
.LBB8_37:                               # %if.end.79
	testl	%r12d, %r12d
	je	.LBB8_39
# BB#38:                                # %if.then.81
	movl	$1, 40(%r13)
.LBB8_39:                               # %if.end.83
	subl	28(%r13), %r15d
	shlq	$3, %r15
	addq	(%r13), %r15
	movq	%r15, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	access_virt_sarray, .Lfunc_end8-access_virt_sarray
	.cfi_endproc

	.align	16, 0x90
	.type	access_virt_barray,@function
access_virt_barray:                     # @access_virt_barray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 96
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leal	(%rcx,%rbx), %r14d
	cmpl	8(%r13), %r14d
	ja	.LBB9_3
# BB#1:                                 # %lor.lhs.false
	cmpl	%ecx, 16(%r13)
	jb	.LBB9_3
# BB#2:                                 # %lor.lhs.false.2
	cmpq	$0, (%r13)
	jne	.LBB9_4
.LBB9_3:                                # %if.then
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$23, 40(%rax)
	callq	*(%rax)
.LBB9_4:                                # %if.end
	movl	28(%r13), %eax
	cmpl	%ebx, %eax
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	ja	.LBB9_6
# BB#5:                                 # %lor.lhs.false.7
	addl	20(%r13), %eax
	cmpl	%eax, %r14d
	jbe	.LBB9_23
.LBB9_6:                                # %if.then.11
	cmpl	$0, 44(%r13)
	jne	.LBB9_8
# BB#7:                                 # %if.then.12
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$71, 40(%rax)
	callq	*(%rax)
.LBB9_8:                                # %if.end.18
	cmpl	$0, 40(%r13)
	je	.LBB9_15
# BB#9:                                 # %if.then.20
	movl	12(%r13), %r15d
	movl	20(%r13), %eax
	testq	%rax, %rax
	je	.LBB9_14
# BB#10:                                # %for.body.lr.ph.i
	movl	8(%r13), %ebp
	movl	24(%r13), %ecx
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	movl	28(%r13), %ebx
	movl	32(%r13), %ecx
	subq	%rbx, %rcx
	cmpq	%rcx, %rax
	cmovleq	%rax, %rcx
	subq	%rbx, %rbp
	cmpq	%rbp, %rcx
	cmovleq	%rcx, %rbp
	testq	%rbp, %rbp
	jle	.LBB9_14
# BB#11:                                # %if.end.i.lr.ph
	shlq	$7, %r15
	leaq	56(%r13), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	imulq	%r15, %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB9_12:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	imulq	%r15, %rbp
	movq	(%r13), %rax
	movq	(%rax,%r12,8), %rdx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rbp, %r8
	callq	*64(%r13)
	movl	20(%r13), %eax
	movl	24(%r13), %ecx
	leaq	(%r12,%rcx), %r12
	subq	%r12, %rax
	jle	.LBB9_14
# BB#13:                                # %if.end.48.for.body_crit_edge.i
                                        #   in Loop: Header=BB9_12 Depth=1
	addq	%rbp, %rbx
	cmpq	%rax, %rcx
	cmovleq	%rcx, %rax
	movl	8(%r13), %ebp
	movl	28(%r13), %ecx
	leaq	(%rcx,%r12), %rcx
	movl	32(%r13), %edx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	cmovleq	%rax, %rdx
	subq	%rcx, %rbp
	cmpq	%rbp, %rdx
	cmovleq	%rdx, %rbp
	testq	%rbp, %rbp
	jg	.LBB9_12
.LBB9_14:                               # %do_barray_io.exit
	movl	$0, 40(%r13)
.LBB9_15:                               # %if.end.22
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, 28(%r13)
	jae	.LBB9_17
# BB#16:                                # %if.end.22.if.end.35_crit_edge
	movl	20(%r13), %ecx
	jmp	.LBB9_18
.LBB9_17:                               # %if.else
	movl	%r14d, %eax
	movl	20(%r13), %ecx
	xorl	%edx, %edx
	subq	%rcx, %rax
	cmovsl	%edx, %eax
.LBB9_18:                               # %if.end.35
	movl	%eax, 28(%r13)
	movl	12(%r13), %r15d
	testl	%ecx, %ecx
	je	.LBB9_23
# BB#19:                                # %for.body.lr.ph.i.81
	movl	%ecx, %ecx
	movl	8(%r13), %ebp
	movl	24(%r13), %edx
	cmpq	%rcx, %rdx
	cmovbq	%rdx, %rcx
	movl	%eax, %ebx
	movl	32(%r13), %eax
	subq	%rbx, %rax
	cmpq	%rax, %rcx
	cmovleq	%rcx, %rax
	subq	%rbx, %rbp
	cmpq	%rbp, %rax
	cmovleq	%rax, %rbp
	testq	%rbp, %rbp
	jle	.LBB9_23
# BB#20:                                # %if.end.i.102.lr.ph
	shlq	$7, %r15
	leaq	56(%r13), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	imulq	%r15, %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB9_21:                               # %if.end.i.102
                                        # =>This Inner Loop Header: Depth=1
	imulq	%r15, %rbp
	movq	(%r13), %rax
	movq	(%rax,%r12,8), %rdx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rbp, %r8
	callq	*56(%r13)
	movl	20(%r13), %eax
	movl	24(%r13), %ecx
	leaq	(%r12,%rcx), %r12
	subq	%r12, %rax
	jle	.LBB9_23
# BB#22:                                # %if.end.48.for.body_crit_edge.i.109
                                        #   in Loop: Header=BB9_21 Depth=1
	addq	%rbp, %rbx
	cmpq	%rax, %rcx
	cmovleq	%rcx, %rax
	movl	8(%r13), %ebp
	movl	28(%r13), %ecx
	leaq	(%rcx,%r12), %rcx
	movl	32(%r13), %edx
	subq	%rcx, %rdx
	cmpq	%rdx, %rax
	cmovleq	%rax, %rdx
	subq	%rcx, %rbp
	cmpq	%rbp, %rdx
	cmovleq	%rdx, %rbp
	testq	%rbp, %rbp
	jg	.LBB9_21
.LBB9_23:                               # %if.end.36
	movl	32(%r13), %eax
	cmpl	%r14d, %eax
	movq	16(%rsp), %r15          # 8-byte Reload
	movl	12(%rsp), %r12d         # 4-byte Reload
	jae	.LBB9_37
# BB#24:                                # %if.then.39
	cmpl	%r15d, %eax
	jae	.LBB9_27
# BB#25:                                # %if.then.43
	testl	%r12d, %r12d
	je	.LBB9_26
# BB#29:                                # %if.end.54.thread
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$23, 40(%rax)
	callq	*(%rax)
	movl	%r15d, %eax
	jmp	.LBB9_30
.LBB9_27:                               # %if.end.54
	testl	%r12d, %r12d
	je	.LBB9_28
.LBB9_30:                               # %if.then.56
	movl	%r14d, 32(%r13)
	movb	$1, %cl
	jmp	.LBB9_31
.LBB9_26:
	xorl	%ecx, %ecx
	movl	%r15d, %eax
	jmp	.LBB9_31
.LBB9_28:
	xorl	%ecx, %ecx
.LBB9_31:                               # %if.end.58
	cmpl	$0, 36(%r13)
	je	.LBB9_35
# BB#32:                                # %if.then.60
	movl	12(%r13), %ebx
	movl	28(%r13), %ecx
	movl	%eax, %ebp
	subl	%ecx, %ebp
	movl	%r14d, %edx
	subl	%ecx, %edx
	cmpl	%edx, %ebp
	jae	.LBB9_37
# BB#33:                                # %while.body.lr.ph
	shlq	$7, %rbx
	shlq	$3, %rbp
	subl	%eax, %r14d
	.align	16, 0x90
.LBB9_34:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movq	(%rax,%rbp), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	addq	$8, %rbp
	decl	%r14d
	jne	.LBB9_34
	jmp	.LBB9_37
.LBB9_35:                               # %if.else.69
	testb	%cl, %cl
	jne	.LBB9_37
# BB#36:                                # %if.then.71
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movl	$23, 40(%rax)
	callq	*(%rax)
.LBB9_37:                               # %if.end.79
	testl	%r12d, %r12d
	je	.LBB9_39
# BB#38:                                # %if.then.81
	movl	$1, 40(%r13)
.LBB9_39:                               # %if.end.83
	subl	28(%r13), %r15d
	shlq	$3, %r15
	addq	(%r13), %r15
	movq	%r15, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	access_virt_barray, .Lfunc_end9-access_virt_barray
	.cfi_endproc

	.align	16, 0x90
	.type	free_pool,@function
free_pool:                              # @free_pool
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 48
.Ltmp127:
	.cfi_offset %rbx, -48
.Ltmp128:
	.cfi_offset %r12, -40
.Ltmp129:
	.cfi_offset %r14, -32
.Ltmp130:
	.cfi_offset %r15, -24
.Ltmp131:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r12
	movq	8(%r12), %r14
	cmpl	$2, %r15d
	jb	.LBB10_2
# BB#1:                                 # %if.end.thread
	movq	(%r12), %rax
	movl	$15, 40(%rax)
	movl	%r15d, 44(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
	jmp	.LBB10_14
.LBB10_2:                               # %if.end
	cmpl	$1, %r15d
	jne	.LBB10_14
# BB#3:                                 # %if.then.7
	movq	136(%r14), %rbp
	jmp	.LBB10_4
	.align	16, 0x90
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	48(%rbp), %rbp
.LBB10_4:                               # %if.then.7
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB10_8
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB10_4 Depth=1
	cmpl	$0, 44(%rbp)
	je	.LBB10_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB10_4 Depth=1
	movl	$0, 44(%rbp)
	leaq	56(%rbp), %rsi
	movq	%r12, %rdi
	callq	*72(%rbp)
	jmp	.LBB10_7
.LBB10_8:                               # %for.end
	movq	$0, 136(%r14)
	movq	144(%r14), %rbp
	jmp	.LBB10_9
	.align	16, 0x90
.LBB10_12:                              # %for.inc.25
                                        #   in Loop: Header=BB10_9 Depth=1
	movq	48(%rbp), %rbp
.LBB10_9:                               # %for.end
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB10_13
# BB#10:                                # %for.body.16
                                        #   in Loop: Header=BB10_9 Depth=1
	cmpl	$0, 44(%rbp)
	je	.LBB10_12
# BB#11:                                # %if.then.19
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	$0, 44(%rbp)
	leaq	56(%rbp), %rsi
	movq	%r12, %rdi
	callq	*72(%rbp)
	jmp	.LBB10_12
.LBB10_13:                              # %for.end.27
	movq	$0, 144(%r14)
.LBB10_14:                              # %if.end.29
	movslq	%r15d, %r15
	movq	120(%r14,%r15,8), %rsi
	movq	$0, 120(%r14,%r15,8)
	testq	%rsi, %rsi
	je	.LBB10_16
	.align	16, 0x90
.LBB10_15:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	leaq	24(%rax,%rcx), %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	jpeg_free_large
	subq	%rbp, 152(%r14)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB10_15
.LBB10_16:                              # %while.end
	movq	104(%r14,%r15,8), %rsi
	movq	$0, 104(%r14,%r15,8)
	testq	%rsi, %rsi
	je	.LBB10_18
	.align	16, 0x90
.LBB10_17:                              # %while.body.46
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	leaq	24(%rax,%rcx), %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	jpeg_free_small
	subq	%rbp, 152(%r14)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB10_17
.LBB10_18:                              # %while.end.57
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	free_pool, .Lfunc_end10-free_pool
	.cfi_endproc

	.align	16, 0x90
	.type	self_destruct,@function
self_destruct:                          # @self_destruct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	free_pool
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	free_pool
	movq	8(%rbx), %rsi
	movl	$168, %edx
	movq	%rbx, %rdi
	callq	jpeg_free_small
	movq	$0, 8(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	jpeg_mem_term           # TAILCALL
.Lfunc_end11:
	.size	self_destruct, .Lfunc_end11-self_destruct
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"JPEGMEM"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%ld%c"
	.size	.L.str.1, 6

	.type	first_pool_slop,@object # @first_pool_slop
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
first_pool_slop:
	.quad	1600                    # 0x640
	.quad	16000                   # 0x3e80
	.size	first_pool_slop, 16

	.type	extra_pool_slop,@object # @extra_pool_slop
	.align	16
extra_pool_slop:
	.quad	0                       # 0x0
	.quad	5000                    # 0x1388
	.size	extra_pool_slop, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
