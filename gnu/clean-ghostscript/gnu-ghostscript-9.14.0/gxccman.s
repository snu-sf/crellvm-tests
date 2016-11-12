	.text
	.file	"gxccman.bc"
	.globl	gx_char_cache_alloc
	.align	16, 0x90
	.type	gx_char_cache_alloc,@function
gx_char_cache_alloc:                    # @gx_char_cache_alloc
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
	movl	%r9d, 32(%rsp)          # 4-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movl	96(%rsp), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	%r9d, %edx
	shrl	%edx
	addl	%r9d, %edx
	orl	$31, %edx
	leal	103(%rcx), %eax
	imulq	$1321528399, %rax, %rax # imm = 0x4EC4EC4F
	shrq	$37, %rax
	incl	%eax
	cmpl	%eax, %edx
	cmoval	%edx, %eax
	leal	1(%rax), %r12d
	testl	%eax, %r12d
	je	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebp
	shrl	%ebp
	orl	%eax, %ebp
	leal	1(%rbp), %r12d
	testl	%ebp, %r12d
	movl	%ebp, %eax
	jne	.LBB0_2
	jmp	.LBB0_3
.LBB0_1:
	movl	%eax, %ebp
.LBB0_3:                                # %while.end
	movl	$st_cached_fm_pair_element, %edx
	movl	$.L.str, %ecx
	movq	%rbx, %rdi
	movl	%r8d, %esi
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	callq	*104(%rbx)
	movq	%rax, %r13
	movl	$st_cached_char_ptr_element, %edx
	movl	$.L.str.1, %ecx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*104(%rbx)
	movq	%rax, %r15
	testq	%r13, %r13
	je	.LBB0_5
# BB#4:                                 # %while.end
	testq	%r15, %r15
	je	.LBB0_5
# BB#6:                                 # %if.end
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 28(%r14)
	movq	%r13, 32(%r14)
	movl	%eax, %eax
	imulq	$112, %rax, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	memset
	movl	%r12d, %edx
	shlq	$3, %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
	movq	%rbx, 80(%r14)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 88(%r14)
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, 108(%r14)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 112(%r14)
	movl	36(%rsp), %edx          # 4-byte Reload
	movl	%edx, %eax
	movl	$3435973837, %ecx       # imm = 0xCCCCCCCD
	imulq	%rax, %rcx
	shrq	$35, %rcx
	movl	%ecx, 120(%r14)
	movl	%edx, 124(%r14)
	movq	%r15, 96(%r14)
	movl	%ebp, 104(%r14)
	movq	%r14, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_char_cache_init      # TAILCALL
.LBB0_5:                                # %cleanup
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
	movl	$-25, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_char_cache_alloc, .Lfunc_end0-gx_char_cache_alloc
	.cfi_endproc

	.globl	gx_char_cache_init
	.align	16, 0x90
	.type	gx_char_cache_init,@function
gx_char_cache_init:                     # @gx_char_cache_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r12, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	88(%rbx), %rdi
	movl	$24, %esi
	movl	$.L.str.2, %edx
	callq	*8(%rdi)
	movq	%rax, %r15
	movl	$-25, %r14d
	testq	%r15, %r15
	je	.LBB1_8
# BB#1:                                 # %if.end
	leaq	56(%rbx), %r12
	movl	$0, 24(%rbx)
	movl	28(%rbx), %eax
	movl	%eax, 40(%rbx)
	movl	%eax, 44(%rbx)
	movl	$0, 48(%rbx)
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	gx_bits_cache_chunk_init
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_bits_cache_init
	movl	$0, 116(%rbx)
	movq	96(%rbx), %rdi
	movl	104(%rbx), %edx
	incl	%edx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	28(%rbx), %eax
	testl	%eax, %eax
	je	.LBB1_8
# BB#2:                                 # %for.body.lr.ph
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	32(%rbx), %rdx
	xorl	%r14d, %r14d
	testb	$1, %al
	jne	.LBB1_4
# BB#3:
	xorl	%esi, %esi
	jmp	.LBB1_5
.LBB1_4:                                # %for.body.prol
	movl	$0, 72(%rdx)
	movq	$0, (%rdx)
	movq	%rcx, 8(%rdx)
	movq	$0, 16(%rdx)
	movl	$0, 52(%rdx)
	movq	$0, 56(%rdx)
	movq	$0, 80(%rdx)
	movq	$0, 88(%rdx)
	addq	$112, %rdx
	movl	$1, %esi
.LBB1_5:                                # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB1_8
# BB#6:                                 # %for.body.lr.ph.split.split
	addq	$200, %rdx
	.align	16, 0x90
.LBB1_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, -128(%rdx)
	movq	$0, -200(%rdx)
	movq	%rcx, -192(%rdx)
	movq	$0, -184(%rdx)
	movl	$0, -148(%rdx)
	movq	$0, -144(%rdx)
	movq	$0, -120(%rdx)
	movq	$0, -112(%rdx)
	leal	1(%rsi), %edi
	movl	%edi, -16(%rdx)
	movq	$0, -88(%rdx)
	movq	%rcx, -80(%rdx)
	movq	$0, -72(%rdx)
	movl	$0, -36(%rdx)
	movq	$0, -32(%rdx)
	movq	$0, -8(%rdx)
	movq	$0, (%rdx)
	addq	$224, %rdx
	addl	$2, %esi
	cmpl	%eax, %esi
	jb	.LBB1_7
.LBB1_8:                                # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gx_char_cache_init, .Lfunc_end1-gx_char_cache_init
	.cfi_endproc

	.globl	gx_purge_selected_cached_chars
	.align	16, 0x90
	.type	gx_purge_selected_cached_chars,@function
gx_purge_selected_cached_chars:         # @gx_purge_selected_cached_chars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 80
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r13
	movslq	104(%r13), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	testq	%rax, %rax
	js	.LBB2_16
# BB#1:                                 # %for.body.lr.ph.lr.ph
	leaq	56(%r13), %r12
	xorl	%r14d, %r14d
	jmp	.LBB2_2
	.align	16, 0x90
.LBB2_14:                               # %gx_free_cached_char.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_bits_cache_free
.LBB2_2:                                # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
                                        #       Child Loop BB2_7 Depth 3
	movq	96(%r13), %rax
	movq	(%rax,%r14,8), %r15
	testq	%r15, %r15
	je	.LBB2_15
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	168(%r13), %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*8(%rsp)                # 8-byte Folded Reload
	testl	%eax, %eax
	je	.LBB2_15
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	104(%r13), %r8d
	movl	%r8d, %ecx
	andl	%r14d, %ecx
	movq	96(%r13), %rdx
	movq	$0, (%rdx,%rcx,8)
	jmp	.LBB2_5
	.align	16, 0x90
.LBB2_17:                               # %if.then.i
                                        #   in Loop: Header=BB2_5 Depth=2
	movl	%ebp, %eax
	movq	%rdi, (%rsi,%rax,8)
	movq	96(%r13), %rax
	movq	$0, (%rax,%rdx,8)
.LBB2_5:                                # %if.then
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_7 Depth 3
	leal	1(%rcx), %edx
	andl	%r8d, %edx
	movq	96(%r13), %rsi
	movq	(%rsi,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB2_12
# BB#6:                                 # %while.body.lr.ph.i
                                        #   in Loop: Header=BB2_5 Depth=2
	movl	%ecx, %ebp
	movl	%edx, %ecx
	.align	16, 0x90
.LBB2_7:                                # %while.body.i
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	imull	$59, 40(%rdi), %eax
	movq	24(%rdi), %rbx
	imull	$73, 28(%rbx), %ebx
	addl	%eax, %ebx
	cmpl	%ecx, %ebp
	jae	.LBB2_9
# BB#8:                                 # %cond.true.i
                                        #   in Loop: Header=BB2_7 Depth=3
	cmpl	%ebx, %ebp
	jbe	.LBB2_10
	jmp	.LBB2_11
	.align	16, 0x90
.LBB2_9:                                # %cond.false.i
                                        #   in Loop: Header=BB2_7 Depth=3
	cmpl	%ebx, %ebp
	jbe	.LBB2_17
.LBB2_10:                               # %cond.false.i
                                        #   in Loop: Header=BB2_7 Depth=3
	cmpl	%ecx, %ebx
	jb	.LBB2_17
.LBB2_11:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB2_7 Depth=3
	incl	%ecx
	andl	%r8d, %ecx
	movq	(%rsi,%rcx,8), %rdi
	testq	%rdi, %rdi
	movq	%rcx, %rdx
	jne	.LBB2_7
.LBB2_12:                               # %hash_remove_cached_char.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	56(%r15), %rdx
	movq	%rdx, 56(%r13)
	movl	8(%rdx), %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movl	%ecx, 64(%r13)
	cmpl	$0, 32(%r15)
	je	.LBB2_14
# BB#13:                                # %if.then.i.15
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	24(%r15), %rax
	decl	48(%rax)
	jmp	.LBB2_14
.LBB2_15:                               # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpq	(%rsp), %r14            # 8-byte Folded Reload
	leaq	1(%r14), %r14
	jl	.LBB2_2
.LBB2_16:                               # %for.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_purge_selected_cached_chars, .Lfunc_end2-gx_purge_selected_cached_chars
	.cfi_endproc

	.globl	gx_free_cached_char
	.align	16, 0x90
	.type	gx_free_cached_char,@function
gx_free_cached_char:                    # @gx_free_cached_char
	.cfi_startproc
# BB#0:                                 # %entry
	movq	56(%rsi), %rdx
	movq	%rdx, 56(%rdi)
	movl	8(%rdx), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 64(%rdi)
	leaq	56(%rdi), %rdi
	cmpl	$0, 32(%rsi)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	24(%rsi), %rax
	decl	48(%rax)
.LBB3_2:                                # %do.end
	jmp	gx_bits_cache_free      # TAILCALL
.Lfunc_end3:
	.size	gx_free_cached_char, .Lfunc_end3-gx_free_cached_char
	.cfi_endproc

	.globl	gx_provide_fm_pair_attributes
	.align	16, 0x90
	.type	gx_provide_fm_pair_attributes,@function
gx_provide_fm_pair_attributes:          # @gx_provide_fm_pair_attributes
	.cfi_startproc
# BB#0:                                 # %entry
	movl	128(%rsi), %eax
	cmpl	$42, %eax
	je	.LBB4_2
# BB#1:                                 # %entry
	cmpl	$11, %eax
	jne	.LBB4_4
.LBB4_2:                                # %if.then.i
	cmpq	$0, 424(%rsi)
	jne	.LBB4_4
# BB#3:                                 # %if.then
	cmpq	$0, 80(%rdx)
	je	.LBB4_5
.LBB4_4:                                # %return
	xorl	%eax, %eax
	retq
.LBB4_5:                                # %if.end
	jmp	gx_attach_tt_interpreter # TAILCALL
.Lfunc_end4:
	.size	gx_provide_fm_pair_attributes, .Lfunc_end4-gx_provide_fm_pair_attributes
	.cfi_endproc

	.align	16, 0x90
	.type	gx_attach_tt_interpreter,@function
gx_attach_tt_interpreter:               # @gx_attach_tt_interpreter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 112
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movq	%r8, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	leaq	52(%rsp), %rdx
	leaq	48(%rsp), %rax
	leaq	44(%rsp), %r8
	leaq	40(%rsp), %r9
	movq	%rcx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rcx
	callq	gx_compute_char_matrix
	movl	%r12d, 96(%rbx)
	movl	52(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	48(%rsp), %eax
	movl	%eax, 20(%rsp)
	movl	44(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, 28(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 32(%rsp)
	movq	168(%r13), %rax
	movq	(%rax), %rdi
	callq	gx_ttfReader__create
	movq	%rax, 88(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB5_3
# BB#1:                                 # %if.end
	movq	%r13, %rdi
	callq	ttfFont__create
	movq	%rax, 80(%rbx)
	testq	%rax, %rax
	je	.LBB5_3
# BB#2:                                 # %if.end.7
	movq	88(%rbx), %rdi
	movq	%r15, %rsi
	callq	gx_ttfReader__set_font
	movq	176(%r13), %rsi
	movq	80(%rbx), %rdi
	movq	88(%rbx), %rdx
	movl	%r12d, (%rsp)
	leaq	16(%rsp), %r8
	movq	%r15, %rcx
	movq	%r14, %r9
	callq	ttfFont__Open_aux
	movl	%eax, %ebp
	movq	88(%rbx), %rdi
	xorl	%esi, %esi
	callq	gx_ttfReader__set_font
.LBB5_3:                                # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_attach_tt_interpreter, .Lfunc_end5-gx_attach_tt_interpreter
	.cfi_endproc

	.globl	gx_add_fm_pair
	.align	16, 0x90
	.type	gx_add_fm_pair,@function
gx_add_fm_pair:                         # @gx_add_fm_pair
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 112
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movq	%r8, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	leaq	40(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	44(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	52(%rsp), %r8
	leaq	48(%rsp), %r9
	movq	%r12, %rdi
	movq	%rcx, %rsi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	gx_compute_ccache_key
	movl	28(%r13), %edx
	cmpl	%edx, 24(%r13)
	jne	.LBB6_3
# BB#1:                                 # %if.then
	movq	32(%r13), %rax
	movl	40(%r13), %ecx
	imulq	$112, %rcx, %rcx
	movl	100(%rax,%rcx), %ecx
	imulq	$112, %rcx, %rsi
	addq	%rax, %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	gs_purge_fm_pair
	testl	%eax, %eax
	js	.LBB6_27
# BB#2:                                 # %if.then.if.end.10_crit_edge
	movl	28(%r13), %edx
.LBB6_3:                                # %if.end.10
	movl	44(%r13), %ecx
	movq	32(%r13), %r14
	cmpl	%edx, %ecx
	jae	.LBB6_11
# BB#4:                                 # %if.then.15
	imulq	$112, %rcx, %rsi
	movl	$-28, %eax
	cmpl	%ecx, 72(%r14,%rsi)
	jne	.LBB6_27
# BB#5:                                 # %if.end.i
	leaq	(%r14,%rsi), %rbx
	movl	104(%r14,%rsi), %edi
	cmpl	%ecx, %edi
	jne	.LBB6_8
# BB#6:                                 # %if.then.3.i
	cmpl	%ecx, 100(%r14,%rsi)
	jne	.LBB6_27
# BB#7:                                 # %if.end.7.i
	movl	%edx, 44(%r13)
	jmp	.LBB6_12
.LBB6_11:                               # %if.else
	movl	48(%r13), %ecx
	imulq	$112, %rcx, %rax
	leaq	(%rax,%r14), %rbx
	leal	1(%rcx), %eax
	movl	%eax, 48(%r13)
.LBB6_12:                               # %if.end.35
	movl	$1, 160(%r12)
	incl	24(%r13)
	movl	72(%rbx), %esi
	imulq	$112, %rsi, %rax
	leaq	(%rax,%r14), %rdi
	movl	$-28, %eax
	cmpq	%rbx, %rdi
	jne	.LBB6_27
# BB#13:                                # %if.end.i.72
	movl	40(%r13), %edi
	cmpl	%edx, %edi
	jae	.LBB6_14
# BB#15:                                # %if.else.i.76
	imulq	$112, %rdi, %r8
	movl	100(%r14,%r8), %edx
	imulq	$112, %rdx, %rdi
	cmpl	72(%r14,%rdi), %edx
	jne	.LBB6_27
# BB#16:                                # %if.end.18.i
	movl	104(%r14,%rdi), %r9d
	cmpl	72(%r14,%r8), %r9d
	jne	.LBB6_27
# BB#17:                                # %if.end.23.i
	movq	%r15, %rbp
	leaq	100(%r14,%r8), %rax
	leaq	104(%r14,%rdi), %rdi
	movl	%r9d, 104(%rbx)
	movl	%edx, 100(%rbx)
	movl	%esi, (%rdi)
	movl	%esi, (%rax)
	jmp	.LBB6_18
.LBB6_8:                                # %if.else.i
	movl	100(%r14,%rsi), %r8d
	imulq	$112, %rdi, %rsi
	cmpl	%ecx, 100(%r14,%rsi)
	jne	.LBB6_27
# BB#9:                                 # %if.end.25.i
	imulq	$112, %r8, %rdi
	cmpl	%ecx, 104(%r14,%rdi)
	jne	.LBB6_27
# BB#10:                                # %if.end.35.i
	leaq	100(%r14,%rsi), %r9
	leaq	104(%r14,%rdi), %r8
	movl	72(%r14,%rsi), %eax
	movl	%eax, 44(%r13)
	movl	72(%r14,%rdi), %eax
	movl	%eax, (%r9)
	movl	72(%r14,%rsi), %eax
	movl	%eax, (%r8)
	jmp	.LBB6_12
.LBB6_14:                               # %if.then.3.i.75
	movq	%r15, %rbp
	movl	%esi, 100(%rbx)
	movl	%esi, 104(%rbx)
.LBB6_18:                               # %if.end.44
	movl	%esi, 40(%r13)
	imulq	$112, %rcx, %r15
	movq	%r12, (%r14,%r15)
	leaq	8(%r14,%r15), %rax
	movups	(%rbp), %xmm0
	movq	%rax, %rbp
	movups	%xmm0, 8(%r14,%r15)
	movq	168(%r13), %rax
	movq	(%rax), %rsi
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	callq	uid_copy
	testl	%eax, %eax
	js	.LBB6_19
# BB#20:                                # %if.end.52
	movl	128(%r12), %eax
	movl	%eax, 24(%r14,%r15)
	movl	152(%r13), %ecx
	movl	$4005506841, %edx       # imm = 0xEEBF2F19
	imulq	%rcx, %rdx
	shrq	$41, %rdx
	imull	$549, %edx, %edx        # imm = 0x225
	leal	371(%rcx), %esi
	subl	%edx, %ecx
	movl	%ecx, 28(%r14,%r15)
	movl	%esi, 152(%r13)
	movl	52(%rsp), %ecx
	movl	%ecx, 32(%r14,%r15)
	movl	48(%rsp), %ecx
	movl	%ecx, 36(%r14,%r15)
	movl	44(%rsp), %ecx
	movl	%ecx, 40(%r14,%r15)
	movl	40(%rsp), %ecx
	movl	%ecx, 44(%r14,%r15)
	movl	$0, 48(%r14,%r15)
	movl	$0, 52(%r14,%r15)
	movq	$0, 56(%r14,%r15)
	movq	$0, 80(%r14,%r15)
	movq	$0, 88(%r14,%r15)
	movl	$0, 96(%r14,%r15)
	cmpl	$42, %eax
	je	.LBB6_22
# BB#21:                                # %if.end.52
	cmpl	$11, %eax
	jne	.LBB6_26
.LBB6_22:                               # %if.then.i
	cmpq	$0, 424(%r12)
	je	.LBB6_23
# BB#24:                                # %if.else.67
	cmpl	$42, %eax
	jne	.LBB6_26
# BB#25:                                # %if.then.70
	leaq	96(%r14,%r15), %rax
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB6_26
.LBB6_19:                               # %if.then.49
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rcx, (%rbp)
	movq	$0, 16(%r14,%r15)
	jmp	.LBB6_27
.LBB6_23:                               # %if.then.62
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movl	36(%rsp), %r9d          # 4-byte Reload
	callq	gx_attach_tt_interpreter
	testl	%eax, %eax
	js	.LBB6_27
.LBB6_26:                               # %if.end.73
	movq	112(%rsp), %rax
	movq	$0, 64(%r14,%r15)
	movq	%rbx, (%rax)
	xorl	%eax, %eax
.LBB6_27:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_add_fm_pair, .Lfunc_end6-gx_add_fm_pair
	.cfi_endproc

	.globl	gs_purge_fm_pair
	.align	16, 0x90
	.type	gs_purge_fm_pair,@function
gs_purge_fm_pair:                       # @gs_purge_fm_pair
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	56(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	(%rdi), %rax
	movq	64(%rbx), %rsi
	callq	*32(%rax)
	movl	$0, 52(%rbx)
	movq	$0, 56(%rbx)
.LBB7_2:                                # %if.end
	movl	$purge_fm_pair_char, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gx_purge_selected_cached_chars
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_4
# BB#3:                                 # %if.then.i
	callq	gx_ttfReader__destroy
.LBB7_4:                                # %if.end.i
	movq	$0, 88(%rbx)
	movq	80(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_6
# BB#5:                                 # %if.then.4.i
	movq	%r14, %rsi
	callq	ttfFont__destroy
.LBB7_6:                                # %gs_clean_fm_pair_attributes.exit
	movq	$0, 80(%rbx)
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jne	.LBB7_23
# BB#7:                                 # %if.then.4
	movq	168(%r14), %rax
	movq	(%rax), %rdi
	movq	16(%rbx), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	$0, (%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	32(%r14), %rcx
	movl	72(%rbx), %edx
	imulq	$112, %rdx, %rax
	leaq	(%rax,%rcx), %rsi
	movl	$-28, %eax
	cmpq	%rbx, %rsi
	jne	.LBB7_23
# BB#8:                                 # %if.end.i.27
	movl	104(%rbx), %esi
	cmpl	%edx, %esi
	jne	.LBB7_11
# BB#9:                                 # %if.then.3.i
	cmpl	%edx, 100(%rbx)
	jne	.LBB7_23
# BB#10:                                # %if.end.7.i
	movl	28(%r14), %edx
	movl	%edx, 40(%r14)
	jmp	.LBB7_16
.LBB7_11:                               # %if.else.i
	movl	100(%rbx), %ebp
	imulq	$112, %rsi, %rdi
	cmpl	%edx, 100(%rcx,%rdi)
	jne	.LBB7_23
# BB#12:                                # %if.end.25.i
	imulq	$112, %rbp, %rsi
	cmpl	%edx, 104(%rcx,%rsi)
	jne	.LBB7_23
# BB#13:                                # %if.end.30.i
	leaq	100(%rcx,%rdi), %rbp
	leaq	104(%rcx,%rsi), %r8
	leaq	72(%rcx,%rdi), %rdi
	cmpl	%edx, 40(%r14)
	jne	.LBB7_15
# BB#14:                                # %if.then.33.i
	movl	(%rdi), %edx
	movl	%edx, 40(%r14)
.LBB7_15:                               # %if.end.35.i
	movl	72(%rcx,%rsi), %edx
	movl	%edx, (%rbp)
	movl	(%rdi), %edx
	movl	%edx, (%r8)
.LBB7_16:                               # %if.end.17
	movl	72(%rbx), %edx
	imulq	$112, %rdx, %rsi
	leaq	(%rsi,%rcx), %rsi
	cmpq	%rbx, %rsi
	jne	.LBB7_23
# BB#17:                                # %if.end.i.35
	movl	44(%r14), %esi
	cmpl	28(%r14), %esi
	jae	.LBB7_18
# BB#19:                                # %if.else.i.39
	imulq	$112, %rsi, %rdi
	movl	100(%rcx,%rdi), %esi
	imulq	$112, %rsi, %rbp
	cmpl	72(%rcx,%rbp), %esi
	jne	.LBB7_23
# BB#20:                                # %if.end.18.i
	movl	104(%rcx,%rbp), %r8d
	cmpl	72(%rcx,%rdi), %r8d
	jne	.LBB7_23
# BB#21:                                # %if.end.23.i
	leaq	100(%rcx,%rdi), %rax
	leaq	104(%rcx,%rbp), %rcx
	movl	%r8d, 104(%rbx)
	movl	%esi, 100(%rbx)
	movl	%edx, (%rcx)
	movl	%edx, (%rax)
	jmp	.LBB7_22
.LBB7_18:                               # %if.then.3.i.38
	movl	%edx, 100(%rbx)
	movl	%edx, 104(%rbx)
.LBB7_22:                               # %cleanup
	movl	%edx, 44(%r14)
	decl	24(%r14)
	xorl	%eax, %eax
.LBB7_23:                               # %return
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_purge_fm_pair, .Lfunc_end7-gs_purge_fm_pair
	.cfi_endproc

	.globl	gx_touch_fm_pair
	.align	16, 0x90
	.type	gx_touch_fm_pair,@function
gx_touch_fm_pair:                       # @gx_touch_fm_pair
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbx, -16
	movl	72(%rsi), %ecx
	xorl	%eax, %eax
	cmpl	40(%rdi), %ecx
	je	.LBB8_15
# BB#1:                                 # %if.then
	movq	32(%rdi), %rbx
	imulq	$112, %rcx, %rax
	leaq	(%rax,%rbx), %rdx
	movl	$-28, %eax
	cmpq	%rsi, %rdx
	jne	.LBB8_15
# BB#2:                                 # %if.end.i
	movl	104(%rsi), %r8d
	cmpl	%ecx, %r8d
	jne	.LBB8_5
# BB#3:                                 # %if.then.3.i
	cmpl	%ecx, 100(%rsi)
	jne	.LBB8_15
# BB#4:                                 # %if.end.7.i
	movl	28(%rdi), %ecx
	movl	%ecx, 40(%rdi)
	movl	72(%rsi), %ecx
	jmp	.LBB8_8
.LBB8_5:                                # %if.else.i
	movl	100(%rsi), %r9d
	imulq	$112, %r8, %r8
	cmpl	%ecx, 100(%rbx,%r8)
	jne	.LBB8_15
# BB#6:                                 # %if.end.25.i
	imulq	$112, %r9, %r9
	cmpl	%ecx, 104(%rbx,%r9)
	jne	.LBB8_15
# BB#7:                                 # %if.end.35.i
	leaq	100(%rbx,%r8), %r11
	leaq	104(%rbx,%r9), %r10
	movl	72(%rbx,%r9), %edx
	movl	%edx, (%r11)
	movl	72(%rbx,%r8), %edx
	movl	%edx, (%r10)
.LBB8_8:                                # %if.end
	movl	%ecx, %edx
	imulq	$112, %rdx, %rdx
	leaq	(%rdx,%rbx), %rdx
	cmpq	%rsi, %rdx
	jne	.LBB8_15
# BB#9:                                 # %if.end.i.16
	movl	40(%rdi), %r8d
	cmpl	28(%rdi), %r8d
	jae	.LBB8_10
# BB#11:                                # %if.else.i.20
	imulq	$112, %r8, %r9
	movl	100(%rbx,%r9), %r8d
	imulq	$112, %r8, %r10
	cmpl	72(%rbx,%r10), %r8d
	jne	.LBB8_15
# BB#12:                                # %if.end.18.i
	movl	104(%rbx,%r10), %r11d
	cmpl	72(%rbx,%r9), %r11d
	jne	.LBB8_15
# BB#13:                                # %if.end.23.i
	leaq	100(%rbx,%r9), %rax
	leaq	104(%rbx,%r10), %rdx
	movl	%r11d, 104(%rsi)
	movl	%r8d, 100(%rsi)
	movl	%ecx, (%rdx)
	movl	%ecx, (%rax)
	jmp	.LBB8_14
.LBB8_10:                               # %if.then.3.i.19
	movl	%ecx, 100(%rsi)
	movl	%ecx, 104(%rsi)
.LBB8_14:                               # %return
	movl	%ecx, 40(%rdi)
	xorl	%eax, %eax
.LBB8_15:                               # %return
	popq	%rbx
	retq
.Lfunc_end8:
	.size	gx_touch_fm_pair, .Lfunc_end8-gx_touch_fm_pair
	.cfi_endproc

	.globl	gs_clean_fm_pair
	.align	16, 0x90
	.type	gs_clean_fm_pair,@function
gs_clean_fm_pair:                       # @gs_clean_fm_pair
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -24
.Ltmp73:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	$0, (%rbx)
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_2
# BB#1:                                 # %if.then.i
	callq	gx_ttfReader__destroy
.LBB9_2:                                # %if.end.i
	movq	$0, 88(%rbx)
	movq	80(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_4
# BB#3:                                 # %if.then.4.i
	movq	%r14, %rsi
	callq	ttfFont__destroy
.LBB9_4:                                # %gs_clean_fm_pair_attributes.exit
	movq	$0, 80(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	gs_clean_fm_pair, .Lfunc_end9-gs_clean_fm_pair
	.cfi_endproc

	.align	16, 0x90
	.type	purge_fm_pair_char,@function
purge_fm_pair_char:                     # @purge_fm_pair_char
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	%rdx, 24(%rsi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end10:
	.size	purge_fm_pair_char, .Lfunc_end10-purge_fm_pair_char
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1116733440              # float 72
	.text
	.globl	gx_alloc_char_bits
	.align	16, 0x90
	.type	gx_alloc_char_bits,@function
gx_alloc_char_bits:                     # @gx_alloc_char_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	subq	$2920, %rsp             # imm = 0xB68
.Ltmp80:
	.cfi_def_cfa_offset 2976
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movl	%r8d, 68(%rsp)          # 4-byte Spill
	movl	%ecx, %r13d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	2984(%rsp), %r15
	movl	2976(%rsp), %edi
	movl	(%rbp), %ebx
	movl	4(%rbp), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	callq	ilog2
	movl	%r13d, %r9d
	movb	%bl, %cl
	shrl	%cl, %r9d
	movl	%r9d, %esi
	movb	%al, %cl
	shll	%cl, %esi
	movq	$0, (%r15)
	testq	%r14, %r14
	je	.LBB11_1
# BB#2:                                 # %if.else
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	%ebx, 56(%rsp)          # 4-byte Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movss	884(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	888(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%r14, %r13
	jmp	.LBB11_3
.LBB11_1:                               # %if.then
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	%ebx, 56(%rsp)          # 4-byte Spill
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	movq	$0, 136(%rsp)
	movq	$0, 1840(%rsp)
	leaq	112(%rsp), %r13
	movss	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
.LBB11_3:                               # %if.end
	testq	%r12, %r12
	movq	%r12, %rbp
	movq	%r12, %r8
	cmoveq	%r13, %rbp
	addl	$63, %esi
	shrl	$6, %esi
	movl	64(%rsp), %r12d         # 4-byte Reload
	je	.LBB11_5
# BB#4:                                 # %land.lhs.true
	shll	$3, %esi
	movl	68(%rsp), %eax          # 4-byte Reload
	movzwl	%ax, %edi
	movb	%r12b, %cl
	shrl	%cl, %edi
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	124(%rax), %eax
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	divl	%esi
	cmpl	%eax, %edi
	ja	.LBB11_32
.LBB11_5:                               # %if.end.15
	movl	%r9d, %ebx
	movss	%xmm1, 40(%rsp)         # 4-byte Spill
	movss	%xmm0, 44(%rsp)         # 4-byte Spill
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%r8, %rbp
	testq	%rbp, %rbp
	je	.LBB11_6
# BB#10:                                # %if.else.70
	movq	72(%rbp), %rax
	movq	%rax, 96(%rsp)
	movups	56(%rbp), %xmm0
	movaps	%xmm0, 80(%rsp)
	movq	24(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movl	2976(%rsp), %r15d
	movl	%r15d, %ecx
	callq	gs_make_mem_alpha_device
	movq	96(%rsp), %rax
	movq	%rax, 72(%rbp)
	movaps	80(%rsp), %xmm0
	movups	%xmm0, 56(%rbp)
	movl	%ebx, 832(%rbp)
	movl	68(%rsp), %eax          # 4-byte Reload
	movzwl	%ax, %eax
	movb	%r12b, %cl
	shrl	%cl, %eax
	movl	%eax, 836(%rbp)
	movq	72(%r14), %rax
	movq	%rax, 96(%rsp)
	movups	56(%r14), %xmm0
	movaps	%xmm0, 80(%rsp)
	movq	24(%r14), %rsi
	movl	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%rbp, %rdx
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%r15d, %r8d
	callq	gs_make_mem_abuf_device
	movq	96(%rsp), %rax
	movq	%rax, 72(%r14)
	movaps	80(%rsp), %xmm0
	movups	%xmm0, 56(%r14)
	movl	60(%rsp), %esi          # 4-byte Reload
	movl	%esi, 832(%r14)
	movl	$2, %edx
	movb	%r12b, %cl
	shll	%cl, %edx
	movl	%edx, 836(%r14)
	leaq	2912(%rsp), %rcx
	movq	%r14, %rdi
	callq	gdev_mem_data_size
	movl	832(%rbp), %esi
	movl	836(%rbp), %edx
	leaq	2904(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	callq	gdev_mem_data_size
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	2912(%rsp), %rbx
	addq	2904(%rsp), %rbx
	movq	%rbx, 2912(%rsp)
	movl	$1, %eax
	movl	$1, %edx
	movl	56(%rsp), %ecx          # 4-byte Reload
	shrl	%cl, %edx
	cvtsi2ssl	%edx, %xmm0
	mulss	40(%rsp), %xmm0         # 4-byte Folded Reload
	movss	%xmm0, 884(%r14)
	movb	%r12b, %cl
	shrl	%cl, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	44(%rsp), %xmm0         # 4-byte Folded Reload
	movss	%xmm0, 888(%r14)
	movq	72(%rsp), %r14          # 8-byte Reload
	jmp	.LBB11_11
.LBB11_6:                               # %if.then.18
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movl	80(%r13), %r15d
	movq	1728(%r13), %rbp
	leaq	56(%r13), %rbx
	movq	72(%r13), %rax
	movq	%rax, 96(%rsp)
	movups	56(%r13), %xmm0
	movaps	%xmm0, 80(%rsp)
	movq	24(%r13), %rsi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	gs_make_mem_mono_device
	testq	%rbp, %rbp
	movq	72(%rsp), %r14          # 8-byte Reload
	je	.LBB11_9
# BB#7:                                 # %do.end.29
	decq	56(%rbp)
	jne	.LBB11_9
# BB#8:                                 # %do.end.41
	movq	64(%rbp), %rdi
	movl	$.L.str.5, %edx
	movq	%rbp, %rsi
	callq	*72(%rbp)
.LBB11_9:                               # %do.end.57
	movq	96(%rsp), %rax
	movq	%rax, 16(%rbx)
	movaps	80(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	movl	%r15d, 80(%r13)
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 832(%r13)
	movl	68(%rsp), %eax          # 4-byte Reload
	movzwl	%ax, %eax
	movl	%eax, 836(%r13)
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gx_device_raster
	movl	%eax, 1736(%r13)
	movl	832(%r13), %esi
	movl	836(%r13), %edx
	leaq	2912(%rsp), %rcx
	movq	%r13, %rdi
	callq	gdev_mem_data_size
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 884(%r13)
	movss	44(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 888(%r13)
	movq	2912(%rsp), %rbx
.LBB11_11:                              # %if.end.104
	leaq	104(%rbx), %r12
	leaq	80(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	alloc_char_in_chunk
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_32
# BB#12:                                # %if.end.i
	movq	80(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB11_14
# BB#13:                                # %if.end.110.thread125
	movq	2984(%rsp), %rax
	movq	%rbp, (%rax)
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
.LBB11_28:                              # %do.end.117
	movl	2976(%rsp), %eax
	movl	%eax, 4(%rbp)
	movq	$-1, 80(%rbp)
	movw	832(%rdi), %ax
	movw	%ax, 8(%rbp)
	movw	836(%rdi), %ax
	movw	%ax, 10(%rbp)
	movw	$0, 12(%rbp)
	movl	$1, %esi
	callq	gx_device_raster
	movq	48(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	movw	%ax, 14(%rbp)
	movq	$0, 24(%rbp)
	movq	$0, 16(%rbp)
	movl	$0, 76(%rbp)
	movl	$0, 72(%rbp)
	movl	$0, 32(%rbp)
	je	.LBB11_30
# BB#29:                                # %if.then.132
	addq	$104, %rbp
	movl	832(%rbx), %esi
	movl	836(%rbx), %edx
	leaq	80(%rsp), %rcx
	movq	%rbx, %rdi
	callq	gdev_mem_data_size
	movq	80(%rsp), %rdx
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	%rbp, 1744(%rbx)
	movq	%rbx, %rdi
	callq	*1144(%rbx)
	addq	80(%rsp), %rbp
	movq	%rbp, 1744(%r14)
	movq	%r14, %rdi
	callq	*1144(%r14)
	jmp	.LBB11_32
.LBB11_14:                              # %if.then.2.i
	movl	108(%r14), %ecx
	movl	%ecx, %eax
	subl	116(%r14), %eax
	jbe	.LBB11_20
# BB#15:                                # %if.then.5.i
	movl	%ecx, %ecx
	movl	$3435973837, %ebp       # imm = 0xCCCCCCCD
	imulq	%rcx, %rbp
	shrq	$34, %rbp
	incl	%ebp
	cmpl	%eax, %ebp
	cmoval	%eax, %ebp
	addq	$112, %rbx
	movl	%ebp, %eax
	cmpq	%rax, %rbx
	ja	.LBB11_19
# BB#16:                                # %if.end.21.i
	movq	56(%r14), %rbx
	movq	88(%r14), %r13
	movl	$24, %esi
	movl	$.L.str.10, %edx
	movq	%r13, %rdi
	callq	*8(%r13)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB11_19
# BB#17:                                # %if.end.26.i
	movl	$st_font_cache_bytes, %edx
	movl	$.L.str.11, %ecx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	*112(%r13)
	testq	%rax, %rax
	je	.LBB11_18
# BB#24:                                # %if.end.33.i
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	%ebp, %edx
	callq	gx_bits_cache_chunk_init
	movq	(%rbx), %rax
	movq	%rax, (%r15)
	movq	%r15, (%rbx)
	addl	%ebp, 116(%r14)
	movq	%r15, 56(%r14)
	jmp	.LBB11_25
.LBB11_30:                              # %if.else.143
	xorl	%r15d, %r15d
	testq	%r14, %r14
	je	.LBB11_32
# BB#31:                                # %if.then.145
	movl	832(%r14), %esi
	movl	836(%r14), %edx
	leaq	80(%rsp), %rcx
	movq	%r14, %rdi
	callq	gdev_mem_data_size
	movzwl	8(%rbp), %eax
	movl	%eax, 832(%r14)
	movzwl	10(%rbp), %eax
	movq	%r14, %rbx
	leaq	104(%rbp), %rbp
	movl	%eax, 836(%rbx)
	movq	80(%rsp), %rdx
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	memset
	movq	%rbp, 1744(%rbx)
	movq	%rbx, %rdi
	callq	*1144(%rbx)
	jmp	.LBB11_32
.LBB11_20:                              # %if.else.i
	movq	56(%r14), %r13
	movq	%r13, %rbx
	.align	16, 0x90
.LBB11_21:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rbx
	movq	%rbx, 56(%r14)
	cmpq	%r13, %rbx
	je	.LBB11_25
# BB#22:                                # %while.body.i
                                        #   in Loop: Header=BB11_21 Depth=1
	movl	$0, 64(%r14)
	movq	%r14, %rdi
	movq	%r12, %rsi
	leaq	80(%rsp), %rdx
	callq	alloc_char_in_chunk
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_32
# BB#23:                                # %if.end.59.i
                                        #   in Loop: Header=BB11_21 Depth=1
	movq	80(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB11_21
	jmp	.LBB11_27
.LBB11_25:                              # %if.end.68.i
	movl	$0, 64(%r14)
	leaq	80(%rsp), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	alloc_char_in_chunk
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB11_32
# BB#26:                                # %if.end.75.i
	movq	80(%rsp), %rbp
.LBB11_27:                              # %if.end.110
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	2984(%rsp), %rax
	movq	%rbp, (%rax)
	xorl	%r15d, %r15d
	testq	%rbp, %rbp
	movq	24(%rsp), %rdi          # 8-byte Reload
	jne	.LBB11_28
	jmp	.LBB11_32
.LBB11_18:                              # %if.then.31.i
	movl	$.L.str.10, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*24(%r13)
.LBB11_19:                              # %if.end.110.thread
	movq	2984(%rsp), %rax
	movq	$0, (%rax)
	xorl	%r15d, %r15d
.LBB11_32:                              # %cleanup
	movl	%r15d, %eax
	addq	$2920, %rsp             # imm = 0xB68
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gx_alloc_char_bits, .Lfunc_end11-gx_alloc_char_bits
	.cfi_endproc

	.globl	gx_open_cache_device
	.align	16, 0x90
	.type	gx_open_cache_device,@function
gx_open_cache_device:                   # @gx_open_cache_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp89:
	.cfi_def_cfa_offset 32
.Ltmp90:
	.cfi_offset %rbx, -24
.Ltmp91:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	832(%rbx), %esi
	movl	836(%rbx), %edx
	leaq	(%rsp), %rcx
	callq	gdev_mem_data_size
	movzwl	8(%r14), %eax
	movl	%eax, 832(%rbx)
	movzwl	10(%r14), %eax
	leaq	104(%r14), %r14
	movl	%eax, 836(%rbx)
	movq	(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movq	%r14, 1744(%rbx)
	movq	%rbx, %rdi
	callq	*1144(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	gx_open_cache_device, .Lfunc_end12-gx_open_cache_device
	.cfi_endproc

	.globl	gx_add_cached_char
	.align	16, 0x90
	.type	gx_add_cached_char,@function
gx_add_cached_char:                     # @gx_add_cached_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 48
.Ltmp97:
	.cfi_offset %rbx, -48
.Ltmp98:
	.cfi_offset %r12, -40
.Ltmp99:
	.cfi_offset %r13, -32
.Ltmp100:
	.cfi_offset %r14, -24
.Ltmp101:
	.cfi_offset %r15, -16
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rbx, %rbx
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movq	%rbx, %rdi
	callq	gs_device_is_abuf
	testl	%eax, %eax
	movl	$gx_add_cached_char.no_scale, %eax
	cmovneq	%rax, %r12
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	gx_add_char_bits
.LBB13_2:                               # %if.end
	imull	$59, 40(%r13), %eax
	imull	$73, 28(%r14), %edx
	addl	%eax, %edx
	movl	104(%r15), %ecx
	movq	96(%r15), %rax
	.align	16, 0x90
.LBB13_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	andl	%ecx, %esi
	movl	%esi, %edx
	incl	%edx
	cmpq	$0, (%rax,%rsi,8)
	jne	.LBB13_3
# BB#4:                                 # %while.end
	movq	%r13, (%rax,%rsi,8)
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB13_5
# BB#6:                                 # %if.else
	movl	$-10, %eax
	cmpq	%r14, %rcx
	jne	.LBB13_8
	jmp	.LBB13_7
.LBB13_5:                               # %if.then.13
	movq	%r14, 24(%r13)
.LBB13_7:                               # %if.end.20
	movl	$1, 32(%r13)
	movq	%r14, 24(%r13)
	movl	72(%r14), %eax
	movl	%eax, 68(%r13)
	incl	48(%r14)
	xorl	%eax, %eax
.LBB13_8:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	gx_add_cached_char, .Lfunc_end13-gx_add_cached_char
	.cfi_endproc

	.globl	gx_add_char_bits
	.align	16, 0x90
	.type	gx_add_char_bits,@function
gx_add_char_bits:                       # @gx_add_char_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp108:
	.cfi_def_cfa_offset 128
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	(%rdx), %r14d
	movl	4(%rdx), %ebp
	movzwl	14(%r12), %r15d
	leaq	104(%r12), %r13
	movl	4(%r12), %ebx
	movl	%ebx, %edi
	callq	ilog2
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movzwl	10(%r12), %esi
	leaq	56(%rsp), %rcx
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	bits_bounding_box
	movl	%ebp, %eax
	orl	%r14d, %eax
	je	.LBB14_2
# BB#1:                                 # %do.end
	movl	$1, %edi
	movl	$1, %eax
	movb	%r14b, %cl
	shll	%cl, %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	56(%rsp), %esi
	andl	%ecx, %esi
	movl	%esi, 56(%rsp)
	movl	64(%rsp), %edx
	leal	-1(%rax,%rdx), %edx
	andl	%ecx, %edx
	movl	%edx, 64(%rsp)
	movb	%bpl, %cl
	shll	%cl, %edi
	movl	%edi, %ecx
	negl	%ecx
	movl	60(%rsp), %eax
	andl	%ecx, %eax
	movl	%eax, 60(%rsp)
	movq	%r15, %r8
	movl	%ebp, %r15d
	movl	68(%rsp), %ebp
	leal	-1(%rdi,%rbp), %ebp
	andl	%ecx, %ebp
	movl	%ebp, 68(%rsp)
	subl	%esi, %edx
	movb	%r14b, %cl
	sarl	%cl, %edx
	movw	%dx, 8(%r12)
	subl	%eax, %ebp
	movb	%r15b, %cl
	sarl	%cl, %ebp
	movw	%bp, 10(%r12)
	movzwl	%dx, %edx
	movl	%edx, %ebx
	movl	40(%rsp), %r9d          # 4-byte Reload
	movb	%r9b, %cl
	shll	%cl, %ebx
	addl	$63, %ebx
	shrl	$3, %ebx
	andl	$536870904, %ebx        # imm = 0x1FFFFFF8
	imull	%r8d, %eax
	leaq	(%rax,%r13), %rdi
	movb	%r14b, %cl
	shll	%cl, %edx
	movzwl	%bp, %eax
	movb	%r15b, %cl
	shll	%cl, %eax
	movl	%r9d, 16(%rsp)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	%eax, %ecx
	movq	%r13, %r9
	callq	bits_compress_scaled
	leaq	60(%rsp), %rdx
	movb	%r14b, %cl
	sarl	%cl, 56(%rsp)
	movb	%r15b, %cl
	sarl	%cl, 60(%rsp)
	movl	%ebx, %ecx
	movq	48(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB14_12
.LBB14_2:                               # %if.else
	leaq	60(%rsp), %rdx
	movl	56(%rsp), %esi
	movl	60(%rsp), %r8d
	movl	%r8d, %eax
	imull	%r15d, %eax
	leaq	(%rax,%r13), %rax
	movl	%esi, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rbp
	addq	%rax, %rbp
	movl	68(%rsp), %eax
	subl	%r8d, %eax
	movw	%ax, 10(%r12)
	andl	$-8, %esi
	movl	40(%rsp), %ecx          # 4-byte Reload
	sarl	%cl, %esi
	movl	%esi, 56(%rsp)
	movl	64(%rsp), %edi
	leal	-1(%rbx,%rdi), %edi
	sarl	%cl, %edi
	movl	%edi, 64(%rsp)
	subl	%esi, %edi
	movw	%di, 8(%r12)
	movzwl	%di, %r14d
	shll	%cl, %r14d
	addl	$63, %r14d
	shrl	$3, %r14d
	andl	$536870904, %r14d       # imm = 0x1FFFFFF8
	testl	%esi, %esi
	movq	%r15, %rcx
	jne	.LBB14_4
# BB#3:                                 # %if.else
	cmpl	%ecx, %r14d
	jne	.LBB14_4
# BB#9:                                 # %if.else.120
	movq	%rdx, %r14
	testl	%r8d, %r8d
	je	.LBB14_11
# BB#10:                                # %if.then.125
	movzwl	%ax, %edx
	imulq	%rcx, %rdx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rcx, %rbx
	callq	memmove
	movq	%rbx, %rcx
.LBB14_11:                              # %if.end.132
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%r14, %rdx
	jmp	.LBB14_12
.LBB14_4:                               # %if.then.111
	testw	%ax, %ax
	je	.LBB14_5
# BB#6:                                 # %for.body.lr.ph
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	%r14d, %ebx
	movzwl	%ax, %r15d
	negl	%r15d
	.align	16, 0x90
.LBB14_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%rcx, %r12
	callq	memmove
	movq	%r12, %rcx
	addq	%rcx, %rbp
	addq	%rbx, %r13
	incl	%r15d
	jne	.LBB14_7
# BB#8:
	movl	%r14d, %ecx
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	leaq	60(%rsp), %rdx
	jmp	.LBB14_12
.LBB14_5:
	movl	%r14d, %ecx
	movq	48(%rsp), %rbx          # 8-byte Reload
.LBB14_12:                              # %if.end.132
	movl	56(%rsp), %eax
	shll	$8, %eax
	subl	%eax, 96(%r12)
	movl	(%rdx), %eax
	shll	$8, %eax
	subl	%eax, 100(%r12)
	movw	%cx, 14(%r12)
	movl	(%r12), %edx
	addl	$-104, %edx
	movzwl	10(%r12), %eax
	imull	%ecx, %eax
	subl	%eax, %edx
	cmpl	$8, %edx
	jb	.LBB14_14
# BB#13:                                # %if.then.156
	andl	$-8, %edx
	leaq	56(%rbx), %rdi
	movq	56(%r12), %rcx
	movq	%r12, %rsi
	callq	gx_bits_cache_shorten
.LBB14_14:                              # %if.end.160
	movq	168(%rbx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 16(%r12)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gx_add_char_bits, .Lfunc_end14-gx_add_char_bits
	.cfi_endproc

	.globl	gs_purge_font_from_char_caches
	.align	16, 0x90
	.type	gs_purge_font_from_char_caches,@function
gs_purge_font_from_char_caches:         # @gs_purge_font_from_char_caches
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 48
.Ltmp120:
	.cfi_offset %rbx, -48
.Ltmp121:
	.cfi_offset %r12, -40
.Ltmp122:
	.cfi_offset %r14, -32
.Ltmp123:
	.cfi_offset %r15, -24
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	24(%r15), %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB15_13
# BB#1:                                 # %if.end.i
	cmpl	$0, 160(%r15)
	je	.LBB15_13
# BB#2:                                 # %if.end.3.i
	movq	32(%r14), %rbx
	movl	28(%r14), %ebp
	movl	$0, 160(%r15)
	testl	%ebp, %ebp
	je	.LBB15_13
# BB#3:
	movabsq	$9223372036854775807, %r12 # imm = 0x7FFFFFFFFFFFFFFF
	.align	16, 0x90
.LBB15_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r15, (%rbx)
	jne	.LBB15_12
# BB#5:                                 # %if.then.10.i
                                        #   in Loop: Header=BB15_4 Depth=1
	cmpq	%r12, 8(%rbx)
	jne	.LBB15_6
# BB#11:                                # %if.else.i
                                        #   in Loop: Header=BB15_4 Depth=1
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_purge_fm_pair
	testl	%eax, %eax
	jns	.LBB15_12
	jmp	.LBB15_13
.LBB15_6:                               # %if.then.13.i
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	$0, (%rbx)
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_8
# BB#7:                                 # %if.then.i.i
                                        #   in Loop: Header=BB15_4 Depth=1
	callq	gx_ttfReader__destroy
.LBB15_8:                               # %if.end.i.i
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	$0, 88(%rbx)
	movq	80(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_10
# BB#9:                                 # %if.then.4.i.i
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	%r14, %rsi
	callq	ttfFont__destroy
.LBB15_10:                              # %gs_clean_fm_pair.exit
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	$0, 80(%rbx)
	.align	16, 0x90
.LBB15_12:                              # %for.inc.i
                                        #   in Loop: Header=BB15_4 Depth=1
	decl	%ebp
	addq	$112, %rbx
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jne	.LBB15_4
.LBB15_13:                              # %gs_purge_font_from_char_caches_forced.exit
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_purge_font_from_char_caches, .Lfunc_end15-gs_purge_font_from_char_caches
	.cfi_endproc

	.globl	gs_purge_font_from_char_caches_completely
	.align	16, 0x90
	.type	gs_purge_font_from_char_caches_completely,@function
gs_purge_font_from_char_caches_completely: # @gs_purge_font_from_char_caches_completely
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp127:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp129:
	.cfi_def_cfa_offset 48
.Ltmp130:
	.cfi_offset %rbx, -40
.Ltmp131:
	.cfi_offset %r14, -32
.Ltmp132:
	.cfi_offset %r15, -24
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	24(%r15), %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB16_7
# BB#1:                                 # %if.end.i
	cmpl	$0, 160(%r15)
	je	.LBB16_7
# BB#2:                                 # %if.end.3.i
	movq	32(%r14), %rbx
	movl	28(%r14), %ebp
	movl	$0, 160(%r15)
	jmp	.LBB16_3
	.align	16, 0x90
.LBB16_6:                               # %for.inc.i
                                        #   in Loop: Header=BB16_3 Depth=1
	decl	%ebp
	addq	$112, %rbx
	xorl	%eax, %eax
.LBB16_3:                               # %if.end.3.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%ebp, %ebp
	je	.LBB16_7
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpq	%r15, (%rbx)
	jne	.LBB16_6
# BB#5:                                 # %if.then.10.i
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_purge_fm_pair
	testl	%eax, %eax
	jns	.LBB16_6
.LBB16_7:                               # %gs_purge_font_from_char_caches_forced.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_purge_font_from_char_caches_completely, .Lfunc_end16-gs_purge_font_from_char_caches_completely
	.cfi_endproc

	.align	16, 0x90
	.type	fm_pair_element_enum_ptrs,@function
fm_pair_element_enum_ptrs:              # @fm_pair_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	shrl	$4, %eax
	cmpl	$112, %edx
	jae	.LBB17_2
# BB#1:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB17_2:                               # %if.end
	imulq	$613566757, %rax, %r9   # imm = 0x24924925
	shrq	$32, %r9
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	imulq	$112, %rdx, %rcx
	addq	%rcx, %rsi
	movl	$112, %edx
	movl	$st_cached_fm_pair, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.Lfunc_end17:
	.size	fm_pair_element_enum_ptrs, .Lfunc_end17-fm_pair_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	fm_pair_element_reloc_ptrs,@function
fm_pair_element_reloc_ptrs:             # @fm_pair_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp134:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 32
.Ltmp137:
	.cfi_offset %rbx, -32
.Ltmp138:
	.cfi_offset %r14, -24
.Ltmp139:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$112, %esi
	jb	.LBB18_3
# BB#1:                                 # %for.body.lr.ph
	shrl	$4, %esi
	imulq	$613566757, %rsi, %r15  # imm = 0x24924925
	shrq	$32, %r15
	negl	%r15d
	.align	16, 0x90
.LBB18_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$112, %esi
	movl	$st_cached_fm_pair, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$112, %rbx
	incl	%r15d
	jne	.LBB18_2
.LBB18_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	fm_pair_element_reloc_ptrs, .Lfunc_end18-fm_pair_element_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cc_ptr_element_enum_ptrs,@function
cc_ptr_element_enum_ptrs:               # @cc_ptr_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	cc_ptr_element_enum_ptrs, .Lfunc_end19-cc_ptr_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cc_ptr_element_reloc_ptrs,@function
cc_ptr_element_reloc_ptrs:              # @cc_ptr_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end20:
	.size	cc_ptr_element_reloc_ptrs, .Lfunc_end20-cc_ptr_element_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_char_in_chunk,@function
alloc_char_in_chunk:                    # @alloc_char_in_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp141:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp142:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp143:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp144:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp146:
	.cfi_def_cfa_offset 80
.Ltmp147:
	.cfi_offset %rbx, -56
.Ltmp148:
	.cfi_offset %r12, -48
.Ltmp149:
	.cfi_offset %r13, -40
.Ltmp150:
	.cfi_offset %r14, -32
.Ltmp151:
	.cfi_offset %r15, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	leaq	56(%r13), %r12
	movq	56(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	$0, (%r14)
	leaq	16(%rsp), %rdx
	movq	%r12, %rdi
	jmp	.LBB21_1
	.align	16, 0x90
.LBB21_17:                              # %cleanup.21.thread
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	%r12, %rdi
	callq	gx_bits_cache_free
	movq	%r12, %rdi
	movq	%r15, %rsi
	leaq	16(%rsp), %rdx
.LBB21_1:                               # %entry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_5 Depth 2
                                        #     Child Loop BB21_8 Depth 2
                                        #       Child Loop BB21_10 Depth 3
	callq	gx_bits_cache_alloc
	testl	%eax, %eax
	jns	.LBB21_18
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	16(%rsp), %rdx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB21_19
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	.LBB21_15
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB21_1 Depth=1
	imull	$73, 28(%rax), %eax
	movl	104(%r13), %ecx
	movq	96(%r13), %rsi
	imull	$59, 40(%rdx), %edi
	addl	%eax, %edi
	movl	$-2, %ebp
	.align	16, 0x90
.LBB21_5:                               # %while.cond.9
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	2(%rdi,%rbp), %eax
	andl	%ecx, %eax
	cmpq	%rdx, (%rsi,%rax,8)
	je	.LBB21_7
# BB#6:                                 # %while.body.15
                                        #   in Loop: Header=BB21_5 Depth=2
	incl	%ebp
	movl	$-28, %eax
	cmpl	%ebp, %ecx
	jne	.LBB21_5
	jmp	.LBB21_19
	.align	16, 0x90
.LBB21_7:                               # %while.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	$0, (%rsi,%rax,8)
	jmp	.LBB21_8
.LBB21_20:                              # %if.then.i
                                        #   in Loop: Header=BB21_8 Depth=2
	movl	%ebp, %esi
	movq	%rdi, (%r8,%rsi,8)
	movq	96(%r13), %rsi
	movq	$0, (%rsi,%rdx,8)
.LBB21_8:                               # %while.end
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_10 Depth 3
	leal	1(%rax), %edx
	andl	%ecx, %edx
	movq	96(%r13), %r8
	movq	(%r8,%rdx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB21_15
# BB#9:                                 # %while.body.lr.ph.i
                                        #   in Loop: Header=BB21_8 Depth=2
	movl	%eax, %ebp
	movl	%edx, %eax
	.align	16, 0x90
.LBB21_10:                              # %while.body.i
                                        #   Parent Loop BB21_1 Depth=1
                                        #     Parent Loop BB21_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	imull	$59, 40(%rdi), %esi
	movq	24(%rdi), %rbx
	imull	$73, 28(%rbx), %ebx
	addl	%esi, %ebx
	cmpl	%eax, %ebp
	jae	.LBB21_12
# BB#11:                                # %cond.true.i
                                        #   in Loop: Header=BB21_10 Depth=3
	cmpl	%ebx, %ebp
	jbe	.LBB21_13
	jmp	.LBB21_14
	.align	16, 0x90
.LBB21_12:                              # %cond.false.i
                                        #   in Loop: Header=BB21_10 Depth=3
	cmpl	%ebx, %ebp
	jbe	.LBB21_20
.LBB21_13:                              # %cond.false.i
                                        #   in Loop: Header=BB21_10 Depth=3
	cmpl	%eax, %ebx
	jb	.LBB21_20
.LBB21_14:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB21_10 Depth=3
	incl	%eax
	andl	%ecx, %eax
	movq	(%r8,%rax,8), %rdi
	testq	%rdi, %rdi
	movq	%rax, %rdx
	jne	.LBB21_10
.LBB21_15:                              # %if.end.20
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	16(%rsp), %rsi
	movq	56(%rsi), %rdx
	movq	%rdx, 56(%r13)
	movl	8(%rdx), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%ecx, 64(%r13)
	cmpl	$0, 32(%rsi)
	je	.LBB21_17
# BB#16:                                # %if.then.i.20
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	24(%rsi), %rax
	decl	48(%rax)
	jmp	.LBB21_17
.LBB21_18:                              # %while.end.25
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, 56(%rax)
	movq	16(%rsp), %rax
	movl	8(%rcx), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, 64(%rax)
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB21_19:                              # %cleanup.27
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	alloc_char_in_chunk, .Lfunc_end21-alloc_char_in_chunk
	.cfi_endproc

	.type	st_cached_fm_pair_element,@object # @st_cached_fm_pair_element
	.section	.rodata,"a",@progbits
	.align	8
st_cached_fm_pair_element:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	fm_pair_element_enum_ptrs
	.quad	fm_pair_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_cached_fm_pair_element, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"font_dir_alloc(mdata)"
	.size	.L.str, 22

	.type	st_cached_char_ptr_element,@object # @st_cached_char_ptr_element
	.section	.rodata,"a",@progbits
	.align	8
st_cached_char_ptr_element:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	cc_ptr_element_enum_ptrs
	.quad	cc_ptr_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_cached_char_ptr_element, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"font_dir_alloc(chars)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"initial_chunk"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_add_fm_pair"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_purge_fm_pair"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gx_alloc_char_bits"
	.size	.L.str.5, 19

	.type	gx_add_cached_char.no_scale,@object # @gx_add_cached_char.no_scale
	.section	.rodata,"a",@progbits
	.align	4
gx_add_cached_char.no_scale:
	.zero	8
	.size	gx_add_cached_char.no_scale, 8

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"cached_fm_pair[]"
	.size	.L.str.6, 17

	.type	st_cached_fm_pair,@object # @st_cached_fm_pair
	.section	.rodata,"a",@progbits
	.align	8
st_cached_fm_pair:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	fm_pair_reloc_ptrs
	.size	st_cached_fm_pair, 64

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"cached_fm_pair"
	.size	.L.str.7, 15

	.type	fm_pair_reloc_ptrs,@object # @fm_pair_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
fm_pair_reloc_ptrs:
	.short	5                       # 0x5
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	fm_pair_enum_ptrs
	.size	fm_pair_reloc_ptrs, 24

	.type	fm_pair_enum_ptrs,@object # @fm_pair_enum_ptrs
	.align	16
fm_pair_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	56                      # 0x38
	.short	0                       # 0x0
	.short	80                      # 0x50
	.short	0                       # 0x0
	.short	88                      # 0x58
	.size	fm_pair_enum_ptrs, 20

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"cached_char *[]"
	.size	.L.str.8, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"char cache chunk"
	.size	.L.str.10, 17

	.type	st_font_cache_bytes,@object # @st_font_cache_bytes
	.section	.rodata,"a",@progbits
	.align	8
st_font_cache_bytes:
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_font_cache_bytes, 64

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"char cache chunk(data)"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"font cache bytes"
	.size	.L.str.12, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
