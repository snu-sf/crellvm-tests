	.text
	.file	"gsfcmap1.bc"
	.align	16, 0x90
	.type	cmap_lookup_range_enum_ptrs,@function
cmap_lookup_range_enum_ptrs:            # @cmap_lookup_range_enum_ptrs
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movq	%rsi, %r13
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB0_14
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB0_2
# BB#13:                                # %sw.bb.6
	movq	32(%r13), %rax
	movq	%rax, (%r8)
	movl	40(%r13), %eax
	jmp	.LBB0_15
.LBB0_14:                               # %sw.bb.12
	movq	56(%r13), %rax
	movq	%rax, (%r8)
	movl	64(%r13), %eax
.LBB0_15:                               # %cleanup
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	jmp	.LBB0_16
.LBB0_2:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB0_16
# BB#3:                                 # %sw.bb
	movq	%r8, (%rsp)             # 8-byte Spill
	cmpl	$1, 48(%r13)
	jne	.LBB0_12
# BB#4:                                 # %if.then
	movslq	52(%r13), %r12
	movl	%r12d, %r14d
	cmpl	$0, 8(%r13)
	jle	.LBB0_12
# BB#5:                                 # %for.body.lr.ph
	movq	56(%r13), %rbp
	leal	-1(%r12), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%r14d, %ebx
	andl	$3, %ebx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	testl	%r12d, %r12d
	movl	$0, %esi
	jle	.LBB0_11
# BB#7:                                 # %for.body.i.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	testl	%ebx, %ebx
	movl	$0, %eax
	movl	$0, %esi
	je	.LBB0_9
	.align	16, 0x90
.LBB0_8:                                # %for.body.i.prol
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rsi
	movzbl	(%rbp,%rax), %ecx
	orq	%rcx, %rsi
	incq	%rax
	cmpl	%eax, %ebx
	jne	.LBB0_8
.LBB0_9:                                # %for.body.i.preheader.split
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$3, 12(%rsp)            # 4-byte Folded Reload
	jb	.LBB0_11
	.align	16, 0x90
.LBB0_10:                               # %for.body.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rsi
	movzbl	(%rbp,%rax), %ecx
	orq	%rsi, %rcx
	shlq	$8, %rcx
	movzbl	1(%rbp,%rax), %edx
	orq	%rcx, %rdx
	shlq	$8, %rdx
	movzbl	2(%rbp,%rax), %ecx
	orq	%rdx, %rcx
	shlq	$8, %rcx
	movzbl	3(%rbp,%rax), %esi
	orq	%rcx, %rsi
	addq	$4, %rax
	cmpl	%eax, %r14d
	jne	.LBB0_10
.LBB0_11:                               # %bytes2int.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%r13), %rax
	movq	168(%rax), %rdx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	*160(%rax)
	incl	%r15d
	addq	%r12, %rbp
	cmpl	8(%r13), %r15d
	jl	.LBB0_6
.LBB0_12:                               # %if.end
	movq	(%r13), %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$ptr_struct_procs, %eax
.LBB0_16:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cmap_lookup_range_enum_ptrs, .Lfunc_end0-cmap_lookup_range_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_lookup_range_reloc_ptrs,@function
cmap_lookup_range_reloc_ptrs:           # @cmap_lookup_range_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	movq	(%r14), %rax
	leaq	32(%rbx), %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	movq	(%r14), %rax
	movq	8(%rax), %rax
	addq	$56, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	cmap_lookup_range_reloc_ptrs, .Lfunc_end1-cmap_lookup_range_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_lookup_range_elt_enum_ptrs,@function
cmap_lookup_range_elt_enum_ptrs:        # @cmap_lookup_range_elt_enum_ptrs
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
	subq	$40, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 96
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
	movq	%rsi, %rbx
	movl	%edx, %esi
	movl	$3435973837, %ebp       # imm = 0xCCCCCCCD
	xorl	%eax, %eax
	cmpl	$80, %edx
	jb	.LBB2_17
# BB#1:                                 # %if.end
	imulq	%rbp, %rsi
	shrq	$38, %rsi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	movl	%eax, %ecx
	shlq	$4, %rdx
	leaq	(%rdx,%rdx,4), %r12
	xorl	%eax, %eax
	cmpl	$2, %ecx
	je	.LBB2_15
# BB#2:                                 # %if.end
	cmpl	$1, %ecx
	jne	.LBB2_3
# BB#14:                                # %sw.bb.6.i
	movq	32(%rbx,%r12), %rax
	movq	%rax, (%r8)
	movl	40(%rbx,%r12), %eax
	jmp	.LBB2_16
.LBB2_15:                               # %sw.bb.12.i
	movq	56(%rbx,%r12), %rax
	movq	%rax, (%r8)
	movl	64(%rbx,%r12), %eax
.LBB2_16:                               # %cleanup
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	jmp	.LBB2_17
.LBB2_3:                                # %if.end
	testl	%ecx, %ecx
	jne	.LBB2_17
# BB#4:                                 # %sw.bb.i
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	cmpl	$1, 48(%rbx,%r12)
	jne	.LBB2_13
# BB#5:                                 # %if.then.i
	movslq	52(%rbx,%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%eax, %r15d
	cmpl	$0, 8(%rbx,%r12)
	jle	.LBB2_13
# BB#6:                                 # %for.body.lr.ph.i
	movq	56(%rbx,%r12), %r14
	leal	-1(%rax), %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%r15d, %ebp
	andl	$3, %ebp
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_7:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #     Child Loop BB2_11 Depth 2
	testl	%eax, %eax
	movl	$0, %esi
	jle	.LBB2_12
# BB#8:                                 # %for.body.i.i.preheader
                                        #   in Loop: Header=BB2_7 Depth=1
	testl	%ebp, %ebp
	movl	$0, %eax
	movl	$0, %esi
	je	.LBB2_10
	.align	16, 0x90
.LBB2_9:                                # %for.body.i.i.prol
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rsi
	movzbl	(%r14,%rax), %ecx
	orq	%rcx, %rsi
	incq	%rax
	cmpl	%eax, %ebp
	jne	.LBB2_9
.LBB2_10:                               # %for.body.i.i.preheader.split
                                        #   in Loop: Header=BB2_7 Depth=1
	cmpl	$3, 20(%rsp)            # 4-byte Folded Reload
	jb	.LBB2_12
	.align	16, 0x90
.LBB2_11:                               # %for.body.i.i
                                        #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %rsi
	movzbl	(%r14,%rax), %ecx
	orq	%rsi, %rcx
	shlq	$8, %rcx
	movzbl	1(%r14,%rax), %edx
	orq	%rcx, %rdx
	shlq	$8, %rdx
	movzbl	2(%r14,%rax), %ecx
	orq	%rdx, %rcx
	shlq	$8, %rcx
	movzbl	3(%r14,%rax), %esi
	orq	%rcx, %rsi
	addq	$4, %rax
	cmpl	%eax, %r15d
	jne	.LBB2_11
.LBB2_12:                               # %bytes2int.exit.i
                                        #   in Loop: Header=BB2_7 Depth=1
	movq	(%rbx,%r12), %rax
	movq	168(%rax), %rdx
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	*160(%rax)
	incl	%r13d
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r14
	cmpl	8(%rbx,%r12), %r13d
	jl	.LBB2_7
.LBB2_13:                               # %if.end.i
	movq	(%rbx,%r12), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$ptr_struct_procs, %eax
.LBB2_17:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cmap_lookup_range_elt_enum_ptrs, .Lfunc_end2-cmap_lookup_range_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_lookup_range_elt_reloc_ptrs,@function
cmap_lookup_range_elt_reloc_ptrs:       # @cmap_lookup_range_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$80, %esi
	jb	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	movl	$3435973837, %r15d      # imm = 0xCCCCCCCD
	imulq	%rax, %r15
	shrq	$38, %r15
	negl	%r15d
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	movq	(%r14), %rax
	leaq	32(%rbx), %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	movq	(%r14), %rax
	leaq	56(%rbx), %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	addq	$80, %rbx
	incl	%r15d
	jne	.LBB3_2
.LBB3_3:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	cmap_lookup_range_elt_reloc_ptrs, .Lfunc_end3-cmap_lookup_range_elt_reloc_ptrs
	.cfi_endproc

	.globl	gs_cmap_adobe1_alloc
	.align	16, 0x90
	.type	gs_cmap_adobe1_alloc,@function
gs_cmap_adobe1_alloc:                   # @gs_cmap_adobe1_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 144
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movl	%r9d, 44(%rsp)          # 4-byte Spill
	movl	%r8d, 48(%rsp)          # 4-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	%esi, 52(%rsp)          # 4-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	176(%rsp), %rbx
	movl	152(%rsp), %r14d
	movl	144(%rsp), %ebp
	movl	$12, %edx
	movl	$.L.str.3, %ecx
	movq	%rbx, %rdi
	movl	%r9d, %esi
	callq	*88(%rbx)
	movq	%rax, %r13
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB4_2
# BB#1:                                 # %cond.false
	movl	$st_cmap_lookup_range, %edx
	movl	$.L.str.4, %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*104(%rbx)
.LBB4_2:                                # %cond.end
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	160(%rsp), %r15d
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	je	.LBB4_4
# BB#3:                                 # %cond.false.5
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	*136(%rbx)
	movq	%rax, %r12
.LBB4_4:                                # %cond.end.8
	movq	168(%rsp), %r9
	xorl	%r14d, %r14d
	testl	%r15d, %r15d
	je	.LBB4_6
# BB#5:                                 # %cond.false.12
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r9, %rbp
	callq	*136(%rbx)
	movq	%rbp, %r9
	movq	%rax, %r14
.LBB4_6:                                # %cond.end.16
	movq	%rbx, 16(%rsp)
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	$cmap_adobe1_procs, 8(%rsp)
	leaq	80(%rsp), %rdi
	movl	$st_cmap_adobe1, %esi
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	68(%rsp), %r8d          # 4-byte Reload
	callq	gs_cmap_alloc
	testq	%r13, %r13
	movl	%r15d, %edx
	movq	%r12, %r15
	je	.LBB4_14
# BB#7:                                 # %cond.end.16
	testl	%eax, %eax
	js	.LBB4_14
# BB#8:                                 # %lor.lhs.false.21
	cmpl	$0, 144(%rsp)
	je	.LBB4_10
# BB#9:                                 # %lor.lhs.false.21
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	je	.LBB4_14
.LBB4_10:                               # %lor.lhs.false.24
	cmpl	$0, 152(%rsp)
	je	.LBB4_12
# BB#11:                                # %lor.lhs.false.24
	testq	%r15, %r15
	je	.LBB4_14
.LBB4_12:                               # %lor.lhs.false.28
	testl	%edx, %edx
	je	.LBB4_15
# BB#13:                                # %lor.lhs.false.28
	testq	%r14, %r14
	jne	.LBB4_15
.LBB4_14:                               # %if.then
	movl	$.L.str.6, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*160(%rbx)
	movl	$.L.str.5, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	152(%rsp), %edx
	callq	*160(%rbx)
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
	movl	$-25, %eax
.LBB4_20:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_15:                               # %if.end
	movl	144(%rsp), %eax
	testl	%eax, %eax
	movq	80(%rsp), %r12
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%r12, (%rcx)
	movq	%r13, 112(%r12)
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 120(%r12)
	movq	72(%rsp), %r13          # 8-byte Reload
	je	.LBB4_19
# BB#16:
	movl	%eax, %ebp
	movq	%r13, %rbx
	.align	16, 0x90
.LBB4_17:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movl	$80, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%r12, (%rbx)
	addq	$80, %rbx
	decl	%ebp
	jne	.LBB4_17
# BB#18:                                # %for.end
	movq	%r15, 32(%r13)
	movl	152(%rsp), %eax
	movl	%eax, 40(%r13)
	movq	%r14, 56(%r13)
	movl	160(%rsp), %eax
	movl	%eax, 64(%r13)
	movl	144(%rsp), %eax
.LBB4_19:                               # %if.end.57
	movq	%r13, 128(%r12)
	movl	%eax, 136(%r12)
	movq	$0, 144(%r12)
	movl	$0, 152(%r12)
	xorl	%eax, %eax
	jmp	.LBB4_20
.Lfunc_end4:
	.size	gs_cmap_adobe1_alloc, .Lfunc_end4-gs_cmap_adobe1_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_adobe1_decode_next,@function
gs_cmap_adobe1_decode_next:             # @gs_cmap_adobe1_decode_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 80
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, %rbp
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	(%r14), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	subq	$-128, %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	callq	code_map_decode_next_multidim_regime
	testl	%eax, %eax
	jne	.LBB5_16
# BB#1:                                 # %lor.lhs.false
	movq	%r12, %rax
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	%rbp, %r12
	cmpq	$2147483647, (%r13)     # imm = 0x7FFFFFFF
	jne	.LBB5_15
# BB#2:                                 # %if.end
	movl	(%r14), %edx
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movl	(%r15), %edx
	movl	%edx, (%rsp)            # 4-byte Spill
	movl	%ecx, (%r14)
	leaq	144(%rbx), %rdi
	movq	%rax, %rbp
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	callq	code_map_decode_next_multidim_regime
	testl	%eax, %eax
	jne	.LBB5_16
# BB#3:                                 # %lor.lhs.false.7
	movl	(%rsp), %edx            # 4-byte Reload
	movl	4(%rsp), %ecx           # 4-byte Reload
	movq	%rbp, %rax
	movl	20(%rsp), %ebp          # 4-byte Reload
	cmpq	$2147483647, (%r13)     # imm = 0x7FFFFFFF
	jne	.LBB5_15
# BB#4:                                 # %if.end.10
	movl	$2147483648, %r8d       # imm = 0x80000000
	cmpl	%ecx, %ebp
	jae	.LBB5_6
# BB#5:                                 # %if.then.12
	movq	%r8, (%r13)
	movl	%ecx, (%r14)
	movl	%edx, (%r15)
	movq	$0, (%r12)
	jmp	.LBB5_15
.LBB5_6:                                # %if.else
	movl	%ebp, %r11d
	movl	8(%rax), %r10d
	movl	136(%rbx), %esi
	xorl	%r9d, %r9d
	movl	$4, %ecx
	movq	8(%rsp), %rbx           # 8-byte Reload
	jmp	.LBB5_7
.LBB5_10:                               # %if.then.i
                                        #   in Loop: Header=BB5_7 Depth=1
	leaq	(%rbp,%rbp,4), %rax
	shlq	$4, %rax
	movl	72(%rdi,%rax), %r9d
	movl	%edx, %ecx
.LBB5_7:                                # %for.cond.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	movslq	%esi, %rsi
	leal	-1(%rsi), %eax
	movslq	%eax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	1(%rdx), %rbp
	shlq	$4, %rax
	addq	$20, %rax
	.align	16, 0x90
.LBB5_8:                                # %for.cond.i
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rsi, %rsi
	jle	.LBB5_11
# BB#9:                                 # %for.body.i
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	(%rbx), %rdi
	movl	(%rdi,%rax), %edx
	addl	-4(%rdi,%rax), %edx
	decq	%rsi
	decq	%rbp
	addq	$-80, %rax
	cmpl	%ecx, %edx
	jg	.LBB5_8
	jmp	.LBB5_10
.LBB5_11:                               # %gs_cmap_get_shortest_chr.exit
	subl	%r11d, %r10d
	movl	%r9d, (%r15)
	cmpl	%r10d, %ecx
	jbe	.LBB5_12
# BB#14:                                # %if.else.17
	movq	$2147483647, (%r13)     # imm = 0x7FFFFFFF
	addl	%r10d, (%r14)
	jmp	.LBB5_15
.LBB5_12:                               # %if.then.16
	movq	%r8, (%r13)
	addl	%r11d, %ecx
	movl	%ecx, (%r14)
	movq	$0, (%r12)
.LBB5_15:                               # %cleanup.21
	xorl	%eax, %eax
.LBB5_16:                               # %cleanup.21
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_cmap_adobe1_decode_next, .Lfunc_end5-gs_cmap_adobe1_decode_next
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_adobe1_enum_ranges,@function
gs_cmap_adobe1_enum_ranges:             # @gs_cmap_adobe1_enum_ranges
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$adobe1_range_procs, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	gs_cmap_ranges_enum_setup # TAILCALL
.Lfunc_end6:
	.size	gs_cmap_adobe1_enum_ranges, .Lfunc_end6-gs_cmap_adobe1_enum_ranges
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cmap_adobe1_enum_lookups,@function
gs_cmap_adobe1_enum_lookups:            # @gs_cmap_adobe1_enum_lookups
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testl	%esi, %esi
	movl	$adobe1_lookup_notdef_procs, %esi
	movl	$adobe1_lookup_def_procs, %ecx
	cmovneq	%rsi, %rcx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	jmp	gs_cmap_lookups_enum_setup # TAILCALL
.Lfunc_end7:
	.size	gs_cmap_adobe1_enum_lookups, .Lfunc_end7-gs_cmap_adobe1_enum_lookups
	.cfi_endproc

	.align	16, 0x90
	.type	code_map_decode_next_multidim_regime,@function
code_map_decode_next_multidim_regime:   # @code_map_decode_next_multidim_regime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 112
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r15, -32(%rsp)         # 8-byte Spill
	movq	%r8, -48(%rsp)          # 8-byte Spill
	movq	%rdx, -40(%rsp)         # 8-byte Spill
	movq	(%rsi), %rax
	movl	(%rdx), %edx
	movq	%rdx, -72(%rsp)         # 8-byte Spill
	movl	8(%rsi), %esi
	movl	(%rcx), %ebx
	movq	(%r8), %r11
	movq	$0, (%r8)
	movl	8(%rdi), %r10d
	testl	%r10d, %r10d
	jle	.LBB8_1
# BB#2:                                 # %for.body.lr.ph.lr.ph
	subl	%edx, %esi
	movl	%esi, -92(%rsp)         # 4-byte Spill
	movq	(%rdi), %r13
	movq	%r13, -8(%rsp)          # 8-byte Spill
	leaq	(%rax,%rdx), %r12
	leaq	12(%r13), %rdi
	movq	%rdi, -104(%rsp)        # 8-byte Spill
	leaq	3(%rdx,%rax), %rbp
	movq	%rbp, -80(%rsp)         # 8-byte Spill
	movq	%rax, -120(%rsp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
.LBB8_3:                                # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
                                        #       Child Loop BB8_9 Depth 3
                                        #     Child Loop BB8_26 Depth 2
                                        #       Child Loop BB8_27 Depth 3
                                        #       Child Loop BB8_34 Depth 3
                                        #       Child Loop BB8_37 Depth 3
                                        #     Child Loop BB8_18 Depth 2
                                        #     Child Loop BB8_21 Depth 2
	movl	%ebx, -24(%rsp)         # 4-byte Spill
	movslq	%r10d, %r10
	leal	-1(%r10), %eax
	cltq
	leaq	(%rax,%rax,4), %rax
	shlq	$4, %rax
	leaq	(%rax,%rdi), %rax
	.align	16, 0x90
.LBB8_4:                                # %for.body
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_9 Depth 3
	movq	%r10, %rbx
	leaq	-1(%rbx), %r10
	movslq	%r10d, %rdx
	leaq	(%rdx,%rdx,4), %r9
	shlq	$4, %r9
	movslq	16(%r13,%r9), %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	20(%r13,%r9), %r8d
	leal	(%r8,%rdx), %edx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	cmpl	%edx, %esi
	jb	.LBB8_5
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	48(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB8_23
# BB#8:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	%r9, %r14
	movq	%rbx, %r9
	movq	%r10, %r15
	movl	%esi, %r10d
	movq	%rax, %rdx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB8_9:                                # %for.body.8
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$1, %bpl
	movzbl	(%r12,%rdi), %esi
	movzbl	(%rdx), %ebx
	cmpl	%esi, %ebx
	jne	.LBB8_12
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB8_9 Depth=3
	incq	%rdi
	incq	%rdx
	cmpq	48(%rsp), %rdi          # 8-byte Folded Reload
	jl	.LBB8_9
# BB#11:                                #   in Loop: Header=BB8_4 Depth=2
	xorl	%ebp, %ebp
.LBB8_12:                               # %for.end
                                        #   in Loop: Header=BB8_4 Depth=2
	testl	%edi, %edi
	movl	%r10d, %esi
	movq	%r15, %r10
	movq	%r9, %rbx
	movq	%r14, %r9
	je	.LBB8_5
# BB#13:                                # %if.else
                                        #   in Loop: Header=BB8_4 Depth=2
	testb	%bpl, %bpl
	je	.LBB8_23
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB8_4 Depth=2
	movq	32(%rsp), %rdx          # 8-byte Reload
	cmpl	%edi, %edx
	jl	.LBB8_15
.LBB8_5:                                # %for.cond.backedge
                                        #   in Loop: Header=BB8_4 Depth=2
	addq	$-80, %rax
	cmpq	$1, %rbx
	jg	.LBB8_4
	jmp	.LBB8_6
	.align	16, 0x90
.LBB8_23:                               # %if.end.31
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%rcx, -112(%rsp)        # 8-byte Spill
	movslq	%r8d, %rax
	movq	32(%r13,%r9), %rdi
	cmpl	$0, 24(%r13,%r9)
	setne	%cl
	movl	%eax, %edx
	shll	%cl, %edx
	movl	8(%r13,%r9), %r14d
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	jle	.LBB8_24
# BB#25:                                # %for.cond.39.preheader.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, -88(%rsp)         # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	72(%r13,%r9), %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%edx, -124(%rsp)        # 4-byte Spill
	movq	-72(%rsp), %rax         # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	leal	(%rax,%rdx), %eax
	movl	%eax, -20(%rsp)         # 4-byte Spill
	leal	-1(%rdx), %eax
	movl	%eax, -52(%rsp)         # 4-byte Spill
	movl	%edx, %eax
	andl	$3, %eax
	movl	%eax, -56(%rsp)         # 4-byte Spill
	subl	%r8d, %ecx
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movslq	%ecx, %r8
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%r12,%rax), %r15
	andl	$3, %edx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	movl	-24(%rsp), %ebx         # 4-byte Reload
	.align	16, 0x90
.LBB8_26:                               # %for.cond.39.preheader
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_27 Depth 3
                                        #       Child Loop BB8_34 Depth 3
                                        #       Child Loop BB8_37 Depth 3
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %ecx
	movl	$0, %edx
	movq	16(%rsp), %rax          # 8-byte Reload
	jle	.LBB8_31
	.align	16, 0x90
.LBB8_27:                               # %for.body.42
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15,%rcx), %edx
	movzbl	(%rdi,%rcx), %esi
	cmpl	%esi, %edx
	jb	.LBB8_30
# BB#28:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_27 Depth=3
	leaq	(%r8,%rcx), %rsi
	movzbl	(%rdi,%rsi), %esi
	movzbl	%dl, %edx
	cmpl	%esi, %edx
	ja	.LBB8_30
# BB#29:                                # %for.inc.65.critedge
                                        #   in Loop: Header=BB8_27 Depth=3
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB8_27
.LBB8_30:                               # %for.cond.39.for.end.67_crit_edge
                                        #   in Loop: Header=BB8_26 Depth=2
	movl	%ecx, %edx
.LBB8_31:                               # %for.end.67
                                        #   in Loop: Header=BB8_26 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rdx), %ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB8_39
# BB#32:                                # %if.then.71
                                        #   in Loop: Header=BB8_26 Depth=2
	movq	%rbp, %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	$0, %r11d
	jle	.LBB8_38
# BB#33:                                # %for.body.i.224.preheader
                                        #   in Loop: Header=BB8_26 Depth=2
	cmpl	$0, -56(%rsp)           # 4-byte Folded Reload
	movl	$0, %ebp
	movl	$0, %r11d
	movq	-64(%rsp), %rsi         # 8-byte Reload
	je	.LBB8_35
	.align	16, 0x90
.LBB8_34:                               # %for.body.i.224.prol
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	shlq	$8, %r11
	movzbl	(%r12,%rbp), %ecx
	orq	%rcx, %r11
	incq	%rbp
	cmpl	%ebp, %esi
	jne	.LBB8_34
.LBB8_35:                               # %for.body.i.224.preheader.split
                                        #   in Loop: Header=BB8_26 Depth=2
	cmpl	$3, -52(%rsp)           # 4-byte Folded Reload
	jb	.LBB8_38
# BB#36:                                # %for.body.i.224.preheader.split.split
                                        #   in Loop: Header=BB8_26 Depth=2
	movq	40(%rsp), %rcx          # 8-byte Reload
	subl	%ebp, %ecx
	movq	-80(%rsp), %rsi         # 8-byte Reload
	leaq	(%rbp,%rsi), %rbp
	.align	16, 0x90
.LBB8_37:                               # %for.body.i.224
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	shlq	$8, %r11
	movzbl	-3(%rbp), %esi
	orq	%r11, %rsi
	shlq	$8, %rsi
	movzbl	-2(%rbp), %ebx
	orq	%rsi, %rbx
	shlq	$8, %rbx
	movzbl	-1(%rbp), %esi
	orq	%rbx, %rsi
	shlq	$8, %rsi
	movzbl	(%rbp), %r11d
	orq	%rsi, %r11
	addq	$4, %rbp
	addl	$-4, %ecx
	jne	.LBB8_37
.LBB8_38:                               # %bytes2int.exit226
                                        #   in Loop: Header=BB8_26 Depth=2
	movq	-16(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ebx
	movl	-20(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rax, %rbp
	movq	-8(%rsp), %r13          # 8-byte Reload
.LBB8_39:                               # %if.end.75
                                        #   in Loop: Header=BB8_26 Depth=2
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %edx
	je	.LBB8_41
# BB#40:                                # %for.inc.80
                                        #   in Loop: Header=BB8_26 Depth=2
	incl	%ebp
	addq	8(%rsp), %rdi           # 8-byte Folded Reload
	cmpl	%r14d, %ebp
	jl	.LBB8_26
	jmp	.LBB8_41
.LBB8_24:                               #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, -88(%rsp)         # 8-byte Spill
	movl	%edx, -124(%rsp)        # 4-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	-24(%rsp), %ebx         # 4-byte Reload
.LBB8_41:                               # %for.end.84
                                        #   in Loop: Header=BB8_3 Depth=1
	cmpl	%r14d, %ebp
	movq	-32(%rsp), %r15         # 8-byte Reload
	movq	-112(%rsp), %rcx        # 8-byte Reload
	je	.LBB8_42
	jmp	.LBB8_45
.LBB8_15:                               # %if.then.26
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, -88(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %r11d
	jle	.LBB8_22
# BB#16:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	40(%rsp), %rdx          # 8-byte Reload
	leal	-1(%rdx), %eax
	testb	$3, %dl
	movl	$0, %edi
	movl	$0, %r11d
	je	.LBB8_19
# BB#17:                                # %for.body.i.prol.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	40(%rsp), %rbp          # 8-byte Reload
	andl	$3, %ebp
	xorl	%edi, %edi
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB8_18:                               # %for.body.i.prol
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %r11
	movzbl	(%r12,%rdi), %edx
	orq	%rdx, %r11
	incq	%rdi
	cmpl	%edi, %ebp
	jne	.LBB8_18
.LBB8_19:                               # %for.body.i.preheader.split
                                        #   in Loop: Header=BB8_3 Depth=1
	cmpl	$3, %eax
	jb	.LBB8_22
# BB#20:                                # %for.body.i.preheader.split.split
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	subl	%edi, %eax
	movq	-80(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdi,%rdx), %rdi
	.align	16, 0x90
.LBB8_21:                               # %for.body.i
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %r11
	movzbl	-3(%rdi), %edx
	orq	%r11, %rdx
	shlq	$8, %rdx
	movzbl	-2(%rdi), %esi
	orq	%rdx, %rsi
	shlq	$8, %rsi
	movzbl	-1(%rdi), %edx
	orq	%rsi, %rdx
	shlq	$8, %rdx
	movzbl	(%rdi), %r11d
	orq	%rdx, %r11
	addq	$4, %rdi
	addl	$-4, %eax
	jne	.LBB8_21
.LBB8_22:                               # %bytes2int.exit
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-72(%rsp), %rax         # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	leal	(%rax,%rdx), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	72(%r13,%r9), %ebx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	-32(%rsp), %r15         # 8-byte Reload
.LBB8_42:                               # %for.cond.outer.backedge
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-88(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	movl	-92(%rsp), %esi         # 4-byte Reload
	movq	-104(%rsp), %rdi        # 8-byte Reload
	jg	.LBB8_3
	jmp	.LBB8_43
.LBB8_6:
	movq	-32(%rsp), %r15         # 8-byte Reload
	movl	-24(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB8_43
.LBB8_1:
	movl	%edx, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
.LBB8_43:                               # %for.end.137
	movq	-48(%rsp), %rax         # 8-byte Reload
	movq	%r11, (%rax)
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	4(%rsp), %edx           # 4-byte Reload
	movl	%edx, (%rax)
	movl	%ebx, (%rcx)
	movq	$2147483647, (%r15)     # imm = 0x7FFFFFFF
	xorl	%eax, %eax
.LBB8_105:                              # %cleanup.138
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_45:                               # %if.end.89
	xorl	%r8d, %r8d
	movl	$2147483648, %r14d      # imm = 0x80000000
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB8_52
# BB#46:                                # %for.body.i.211.preheader
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %r11d
	xorl	%r10d, %r10d
	testb	$3, %al
	movl	$0, %r8d
	je	.LBB8_49
# BB#47:                                # %for.body.i.211.prol.preheader
	movq	40(%rsp), %rcx          # 8-byte Reload
	andl	$3, %ecx
	xorl	%r10d, %r10d
	xorl	%r8d, %r8d
.LBB8_48:                               # %for.body.i.211.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %r8
	movzbl	(%r12,%r10), %edx
	orq	%rdx, %r8
	incq	%r10
	cmpl	%r10d, %ecx
	jne	.LBB8_48
.LBB8_49:                               # %for.body.i.211.preheader.split
	cmpl	$3, %r11d
	jb	.LBB8_52
# BB#50:                                # %for.body.i.211.preheader.split.split
	movq	40(%rsp), %rax          # 8-byte Reload
	subl	%r10d, %eax
	addq	-72(%rsp), %r10         # 8-byte Folded Reload
	movq	-120(%rsp), %rcx        # 8-byte Reload
	leaq	3(%rcx,%r10), %rcx
.LBB8_51:                               # %for.body.i.211
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %r8
	movzbl	-3(%rcx), %edx
	orq	%r8, %rdx
	shlq	$8, %rdx
	movzbl	-2(%rcx), %esi
	orq	%rdx, %rsi
	shlq	$8, %rsi
	movzbl	-1(%rcx), %edx
	orq	%rsi, %rdx
	shlq	$8, %rdx
	movzbl	(%rcx), %r8d
	orq	%rdx, %r8
	addq	$4, %rcx
	addl	$-4, %eax
	jne	.LBB8_51
.LBB8_52:                               # %bytes2int.exit213
	movq	-48(%rsp), %rax         # 8-byte Reload
	movq	%r8, (%rax)
	movq	-72(%rsp), %rax         # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	movq	-40(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	72(%r13,%r9), %eax
	movq	-112(%rsp), %rcx        # 8-byte Reload
	movl	%eax, (%rcx)
	movl	48(%r13,%r9), %ecx
	movl	$-15, %eax
	cmpq	$3, %rcx
	ja	.LBB8_105
# BB#53:                                # %bytes2int.exit213
	movq	56(%r13,%r9), %r8
	movl	52(%r13,%r9), %edx
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_54:                               # %sw.bb
	testl	%edx, %edx
	jle	.LBB8_62
# BB#55:                                # %for.body.i.198.preheader
	movq	%rbp, %r11
	leal	-1(%rdx), %r10d
	xorl	%esi, %esi
	testb	$3, %dl
	movl	$0, %eax
	je	.LBB8_58
# BB#56:                                # %for.body.i.198.prol.preheader
	movl	%r11d, %eax
	imull	%edx, %eax
	cltq
	leaq	(%rax,%r8), %rcx
	movl	%edx, %ebp
	andl	$3, %ebp
	xorl	%esi, %esi
	xorl	%eax, %eax
.LBB8_57:                               # %for.body.i.198.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rax
	movzbl	(%rcx,%rsi), %ebx
	orq	%rbx, %rax
	incq	%rsi
	cmpl	%esi, %ebp
	jne	.LBB8_57
.LBB8_58:                               # %for.body.i.198.preheader.split
	cmpl	$3, %r10d
	jb	.LBB8_61
# BB#59:                                # %for.body.i.198.preheader.split.split
	imull	%edx, %r11d
	subl	%esi, %edx
	movslq	%r11d, %rcx
	addq	%rsi, %rcx
	leaq	3(%r8,%rcx), %rcx
.LBB8_60:                               # %for.body.i.198
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rax
	movzbl	-3(%rcx), %esi
	orq	%rax, %rsi
	shlq	$8, %rsi
	movzbl	-2(%rcx), %eax
	orq	%rsi, %rax
	shlq	$8, %rax
	movzbl	-1(%rcx), %esi
	orq	%rax, %rsi
	shlq	$8, %rsi
	movzbl	(%rcx), %eax
	orq	%rsi, %rax
	addq	$4, %rcx
	addl	$-4, %edx
	jne	.LBB8_60
.LBB8_61:                               # %bytes2int.exit200.loopexit
	addq	%rax, %r14
.LBB8_62:                               # %bytes2int.exit200
	xorl	%eax, %eax
	movq	24(%rsp), %r8           # 8-byte Reload
	testl	%r8d, %r8d
	movl	$0, %ecx
	movq	-72(%rsp), %r13         # 8-byte Reload
	jle	.LBB8_66
# BB#63:                                # %for.body.i.187.preheader
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	addq	%r13, %rdx
	movq	-120(%rsp), %rcx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	%rcx, %rbx
	movslq	-124(%rsp), %rcx        # 4-byte Folded Reload
	subq	16(%rsp), %rcx          # 8-byte Folded Reload
	xorl	%edx, %edx
.LBB8_64:                               # %for.body.i.187
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdi), %esi
	movzbl	(%rdi), %ebp
	incl	%esi
	subl	%ebp, %esi
	imull	%edx, %esi
	movzbl	(%rbx), %edx
	subl	%ebp, %edx
	addl	%esi, %edx
	incq	%rbx
	incq	%rdi
	decl	%r8d
	jne	.LBB8_64
# BB#65:                                # %gs_multidim_CID_offset.exit.loopexit
	movslq	%edx, %rcx
.LBB8_66:                               # %gs_multidim_CID_offset.exit
	addq	%rcx, %r14
	movq	%r14, (%r15)
	jmp	.LBB8_105
.LBB8_76:                               # %sw.bb.112
	movq	%rbp, %r11
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	$0, %esi
	jle	.LBB8_83
# BB#77:                                # %for.body.i.164.preheader
	leal	-1(%rdx), %r10d
	xorl	%ebp, %ebp
	testb	$3, %dl
	movl	$0, %esi
	je	.LBB8_80
# BB#78:                                # %for.body.i.164.prol.preheader
	movl	%r11d, %ecx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r8), %rcx
	movl	%edx, %ebx
	andl	$3, %ebx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
.LBB8_79:                               # %for.body.i.164.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rsi
	movzbl	(%rcx,%rbp), %edi
	orq	%rdi, %rsi
	incq	%rbp
	cmpl	%ebp, %ebx
	jne	.LBB8_79
.LBB8_80:                               # %for.body.i.164.preheader.split
	cmpl	$3, %r10d
	jb	.LBB8_83
# BB#81:                                # %for.body.i.164.preheader.split.split
	imull	%edx, %r11d
	subl	%ebp, %edx
	movslq	%r11d, %rcx
	addq	%rbp, %rcx
	leaq	3(%r8,%rcx), %rcx
.LBB8_82:                               # %for.body.i.164
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rsi
	movzbl	-3(%rcx), %edi
	orq	%rsi, %rdi
	shlq	$8, %rdi
	movzbl	-2(%rcx), %esi
	orq	%rdi, %rsi
	shlq	$8, %rsi
	movzbl	-1(%rcx), %edi
	orq	%rsi, %rdi
	shlq	$8, %rdi
	movzbl	(%rcx), %esi
	orq	%rdi, %rsi
	addq	$4, %rcx
	addl	$-4, %edx
	jne	.LBB8_82
.LBB8_83:                               # %bytes2int.exit166
	movq	%rsi, (%r15)
	jmp	.LBB8_105
.LBB8_84:                               # %sw.bb.115
	movq	%rbp, %r11
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LBB8_91
# BB#85:                                # %for.body.i.151.preheader
	leal	-1(%rdx), %r10d
	xorl	%ebp, %ebp
	testb	$3, %dl
	movl	$0, %eax
	je	.LBB8_88
# BB#86:                                # %for.body.i.151.prol.preheader
	movl	%r11d, %eax
	imull	%edx, %eax
	cltq
	leaq	(%rax,%r8), %rcx
	movl	%edx, %esi
	andl	$3, %esi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
.LBB8_87:                               # %for.body.i.151.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rax
	movzbl	(%rcx,%rbp), %ebx
	orq	%rbx, %rax
	incq	%rbp
	cmpl	%ebp, %esi
	jne	.LBB8_87
.LBB8_88:                               # %for.body.i.151.preheader.split
	cmpl	$3, %r10d
	jb	.LBB8_91
# BB#89:                                # %for.body.i.151.preheader.split.split
	movl	%edx, %esi
	subl	%ebp, %esi
	imull	%edx, %r11d
	movslq	%r11d, %rcx
	addq	%rbp, %rcx
	leaq	3(%r8,%rcx), %rcx
.LBB8_90:                               # %for.body.i.151
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rax
	movzbl	-3(%rcx), %ebp
	orq	%rax, %rbp
	shlq	$8, %rbp
	movzbl	-2(%rcx), %eax
	orq	%rbp, %rax
	shlq	$8, %rax
	movzbl	-1(%rcx), %ebp
	orq	%rax, %rbp
	shlq	$8, %rbp
	movzbl	(%rcx), %eax
	orq	%rbp, %rax
	addq	$4, %rcx
	addl	$-4, %esi
	jne	.LBB8_90
.LBB8_91:                               # %bytes2int.exit153
	xorl	%ebp, %ebp
	movq	24(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB8_104
# BB#92:                                # %for.body.i.138.preheader
	movq	%rcx, %rsi
	leal	-1(%rsi), %r8d
	xorl	%ecx, %ecx
	testb	$3, %sil
	movq	%rsi, %r11
	movl	$0, %esi
	je	.LBB8_95
# BB#93:                                # %for.body.i.138.prol.preheader
	movq	-72(%rsp), %rcx         # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rcx), %rcx
	movq	-120(%rsp), %rsi        # 8-byte Reload
	leaq	(%rcx,%rsi), %r10
	movl	%r11d, %ebp
	andl	$3, %ebp
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.LBB8_94:                               # %for.body.i.138.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rsi
	movzbl	(%r10,%rcx), %ebx
	orq	%rbx, %rsi
	incq	%rcx
	cmpl	%ecx, %ebp
	jne	.LBB8_94
.LBB8_95:                               # %for.body.i.138.preheader.split
	cmpl	$3, %r8d
	jb	.LBB8_98
# BB#96:                                # %for.body.i.138.preheader.split.split
	movl	%r11d, %ebp
	subl	%ecx, %ebp
	movq	48(%rsp), %rbx          # 8-byte Reload
	addq	%rcx, %rbx
	addq	-72(%rsp), %rbx         # 8-byte Folded Reload
	movq	-120(%rsp), %rcx        # 8-byte Reload
	leaq	3(%rcx,%rbx), %rcx
.LBB8_97:                               # %for.body.i.138
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rsi
	movzbl	-3(%rcx), %ebx
	orq	%rsi, %rbx
	shlq	$8, %rbx
	movzbl	-2(%rcx), %esi
	orq	%rbx, %rsi
	shlq	$8, %rsi
	movzbl	-1(%rcx), %ebx
	orq	%rsi, %rbx
	shlq	$8, %rbx
	movzbl	(%rcx), %esi
	orq	%rbx, %rsi
	addq	$4, %rcx
	addl	$-4, %ebp
	jne	.LBB8_97
.LBB8_98:                               # %for.body.i.125.preheader
	xorl	%ecx, %ecx
	testb	$3, %r11b
	movl	$0, %ebp
	je	.LBB8_101
# BB#99:                                # %for.body.i.125.prol.preheader
	movl	%r11d, %r10d
	andl	$3, %r10d
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
.LBB8_100:                              # %for.body.i.125.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rbp
	movzbl	(%rdi,%rcx), %ebx
	orq	%rbx, %rbp
	incq	%rcx
	cmpl	%ecx, %r10d
	jne	.LBB8_100
.LBB8_101:                              # %for.body.i.125.preheader.split
	addq	%rsi, %rax
	cmpl	$3, %r8d
	jb	.LBB8_104
# BB#102:                               # %for.body.i.125.preheader.split.split
	subl	%ecx, %r11d
	leaq	3(%rcx,%rdi), %rcx
.LBB8_103:                              # %for.body.i.125
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rbp
	movzbl	-3(%rcx), %esi
	orq	%rbp, %rsi
	shlq	$8, %rsi
	movzbl	-2(%rcx), %edi
	orq	%rsi, %rdi
	shlq	$8, %rdi
	movzbl	-1(%rcx), %esi
	orq	%rdi, %rsi
	shlq	$8, %rsi
	movzbl	(%rcx), %ebp
	orq	%rsi, %rbp
	addq	$4, %rcx
	addl	$-4, %r11d
	jne	.LBB8_103
.LBB8_104:                              # %bytes2int.exit127
	subq	%rbp, %rax
	movq	%rax, (%r15)
	movl	%edx, %eax
	jmp	.LBB8_105
.LBB8_67:                               # %sw.bb.108
	testl	%edx, %edx
	jle	.LBB8_75
# BB#68:                                # %for.body.i.177.preheader
	movq	%rbp, %r10
	leal	-1(%rdx), %esi
	xorl	%edi, %edi
	testb	$3, %dl
	movl	$0, %eax
	je	.LBB8_71
# BB#69:                                # %for.body.i.177.prol.preheader
	movl	%r10d, %eax
	imull	%edx, %eax
	cltq
	leaq	(%rax,%r8), %rcx
	movl	%edx, %ebp
	andl	$3, %ebp
	xorl	%edi, %edi
	xorl	%eax, %eax
.LBB8_70:                               # %for.body.i.177.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rax
	movzbl	(%rcx,%rdi), %ebx
	orq	%rbx, %rax
	incq	%rdi
	cmpl	%edi, %ebp
	jne	.LBB8_70
.LBB8_71:                               # %for.body.i.177.preheader.split
	cmpl	$3, %esi
	jb	.LBB8_74
# BB#72:                                # %for.body.i.177.preheader.split.split
	imull	%edx, %r10d
	subl	%edi, %edx
	movslq	%r10d, %rcx
	addq	%rdi, %rcx
	leaq	3(%r8,%rcx), %rcx
.LBB8_73:                               # %for.body.i.177
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rax
	movzbl	-3(%rcx), %esi
	orq	%rax, %rsi
	shlq	$8, %rsi
	movzbl	-2(%rcx), %eax
	orq	%rsi, %rax
	shlq	$8, %rax
	movzbl	-1(%rcx), %esi
	orq	%rax, %rsi
	shlq	$8, %rsi
	movzbl	(%rcx), %eax
	orq	%rsi, %rax
	addq	$4, %rcx
	addl	$-4, %edx
	jne	.LBB8_73
.LBB8_74:                               # %bytes2int.exit179.loopexit
	addq	%rax, %r14
.LBB8_75:                               # %bytes2int.exit179
	movq	%r14, (%r15)
	xorl	%eax, %eax
	jmp	.LBB8_105
.Lfunc_end8:
	.size	code_map_decode_next_multidim_regime, .Lfunc_end8-code_map_decode_next_multidim_regime
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_54
	.quad	.LBB8_76
	.quad	.LBB8_84
	.quad	.LBB8_67

	.text
	.align	16, 0x90
	.type	adobe1_next_range,@function
adobe1_next_range:                      # @adobe1_next_range
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rcx
	movl	32(%rdi), %edx
	movl	$1, %eax
	cmpl	120(%rcx), %edx
	jae	.LBB9_2
# BB#1:                                 # %if.end
	leal	1(%rdx), %eax
	movl	%eax, 32(%rdi)
	movq	112(%rcx), %rax
	leaq	(%rdx,%rdx,2), %rcx
	movl	8(%rax,%rcx,4), %edx
	movl	%edx, 8(%rdi)
	movq	(%rax,%rcx,4), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
.LBB9_2:                                # %cleanup
	retq
.Lfunc_end9:
	.size	adobe1_next_range, .Lfunc_end9-adobe1_next_range
	.cfi_endproc

	.align	16, 0x90
	.type	adobe1_next_lookup_notdef,@function
adobe1_next_lookup_notdef:              # @adobe1_next_lookup_notdef
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rdx
	movl	64(%rdi), %ecx
	movl	$1, %eax
	cmpl	152(%rdx), %ecx
	jae	.LBB10_2
# BB#1:                                 # %if.end.i
	movq	144(%rdx), %rax
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$4, %rdx
	movl	20(%rax,%rdx), %esi
	addl	16(%rax,%rdx), %esi
	movl	%esi, 8(%rdi)
	movl	24(%rax,%rdx), %esi
	movl	%esi, 12(%rdi)
	movl	48(%rax,%rdx), %esi
	movl	%esi, 16(%rdi)
	movl	52(%rax,%rdx), %esi
	movl	%esi, 32(%rdi)
	movl	72(%rax,%rdx), %eax
	movl	%eax, 40(%rdi)
	leal	1(%rcx), %eax
	movl	%eax, 64(%rdi)
	movl	$0, 68(%rdi)
	xorl	%eax, %eax
.LBB10_2:                               # %adobe1_next_lookup.exit
	retq
.Lfunc_end10:
	.size	adobe1_next_lookup_notdef, .Lfunc_end10-adobe1_next_lookup_notdef
	.cfi_endproc

	.align	16, 0x90
	.type	adobe1_next_entry_notdef,@function
adobe1_next_entry_notdef:               # @adobe1_next_entry_notdef
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rsi
	addq	$144, %rsi
	jmp	adobe1_next_entry       # TAILCALL
.Lfunc_end11:
	.size	adobe1_next_entry_notdef, .Lfunc_end11-adobe1_next_entry_notdef
	.cfi_endproc

	.align	16, 0x90
	.type	adobe1_next_entry,@function
adobe1_next_entry:                      # @adobe1_next_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp82:
	.cfi_def_cfa_offset 64
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	64(%rbx), %eax
	movl	68(%rbx), %ecx
	decl	%eax
	movq	(%rsi), %rbp
	leaq	(%rax,%rax,4), %r13
	shlq	$4, %r13
	movl	$1, %eax
	cmpl	8(%rbp,%r13), %ecx
	jae	.LBB12_5
# BB#1:                                 # %if.end
	movslq	16(%rbp,%r13), %r15
	movslq	20(%rbp,%r13), %r14
	leal	(%r15,%r14), %edx
	movl	$-15, %eax
	cmpl	$4, %edx
	jg	.LBB12_5
# BB#2:                                 # %for.cond.preheader
	movq	32(%rbp,%r13), %r12
	imull	%r14d, %ecx
	movl	$2, %eax
	cmpl	$0, 24(%rbp,%r13)
	jne	.LBB12_4
# BB#3:                                 # %select.mid
	movl	$1, %eax
.LBB12_4:                               # %select.end
	imull	%eax, %ecx
	addq	%rcx, %r12
	leaq	12(%rbp,%r13), %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcpy
	leaq	(%rbx,%r15), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %r12
	leaq	4(%rbx), %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r15, %rdx
	callq	memcpy
	leaq	4(%rbx,%r15), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movl	68(%rbx), %eax
	movl	52(%rbp,%r13), %ecx
	movl	%ecx, %edx
	imull	%eax, %edx
	addq	56(%rbp,%r13), %rdx
	movq	%rdx, 24(%rbx)
	movl	%ecx, 32(%rbx)
	incl	%eax
	movl	%eax, 68(%rbx)
	xorl	%eax, %eax
.LBB12_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	adobe1_next_entry, .Lfunc_end12-adobe1_next_entry
	.cfi_endproc

	.align	16, 0x90
	.type	adobe1_next_lookup_def,@function
adobe1_next_lookup_def:                 # @adobe1_next_lookup_def
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rdx
	movl	64(%rdi), %ecx
	movl	$1, %eax
	cmpl	136(%rdx), %ecx
	jae	.LBB13_2
# BB#1:                                 # %if.end.i
	movq	128(%rdx), %rax
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$4, %rdx
	movl	20(%rax,%rdx), %esi
	addl	16(%rax,%rdx), %esi
	movl	%esi, 8(%rdi)
	movl	24(%rax,%rdx), %esi
	movl	%esi, 12(%rdi)
	movl	48(%rax,%rdx), %esi
	movl	%esi, 16(%rdi)
	movl	52(%rax,%rdx), %esi
	movl	%esi, 32(%rdi)
	movl	72(%rax,%rdx), %eax
	movl	%eax, 40(%rdi)
	leal	1(%rcx), %eax
	movl	%eax, 64(%rdi)
	movl	$0, 68(%rdi)
	xorl	%eax, %eax
.LBB13_2:                               # %adobe1_next_lookup.exit
	retq
.Lfunc_end13:
	.size	adobe1_next_lookup_def, .Lfunc_end13-adobe1_next_lookup_def
	.cfi_endproc

	.align	16, 0x90
	.type	adobe1_next_entry_def,@function
adobe1_next_entry_def:                  # @adobe1_next_entry_def
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rsi
	subq	$-128, %rsi
	jmp	adobe1_next_entry       # TAILCALL
.Lfunc_end14:
	.size	adobe1_next_entry_def, .Lfunc_end14-adobe1_next_entry_def
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_cmap_adobe1_t"
	.size	.L.str, 17

	.type	cmap_adobe1_reloc_ptrs,@object # @cmap_adobe1_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cmap_adobe1_reloc_ptrs:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	st_cmap
	.quad	cmap_adobe1_enum_ptrs
	.size	cmap_adobe1_reloc_ptrs, 24

	.type	st_cmap_adobe1,@object  # @st_cmap_adobe1
	.globl	st_cmap_adobe1
	.align	8
st_cmap_adobe1:
	.long	176                     # 0xb0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cmap_adobe1_reloc_ptrs
	.size	st_cmap_adobe1, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_cmap_lookup_range_t"
	.size	.L.str.1, 23

	.type	st_cmap_lookup_range,@object # @st_cmap_lookup_range
	.section	.rodata,"a",@progbits
	.globl	st_cmap_lookup_range
	.align	8
st_cmap_lookup_range:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	cmap_lookup_range_enum_ptrs
	.quad	cmap_lookup_range_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_cmap_lookup_range, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gx_cmap_lookup_range_t[]"
	.size	.L.str.2, 25

	.type	st_cmap_lookup_range_element,@object # @st_cmap_lookup_range_element
	.section	.rodata,"a",@progbits
	.globl	st_cmap_lookup_range_element
	.align	8
st_cmap_lookup_range_element:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	cmap_lookup_range_elt_enum_ptrs
	.quad	cmap_lookup_range_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_cmap_lookup_range_element, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_cmap_alloc(code space ranges)"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_cmap_alloc(lookup ranges)"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gs_cmap_alloc(keys)"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_cmap_alloc(values)"
	.size	.L.str.6, 22

	.type	cmap_adobe1_procs,@object # @cmap_adobe1_procs
	.section	.rodata,"a",@progbits
	.align	8
cmap_adobe1_procs:
	.quad	gs_cmap_adobe1_decode_next
	.quad	gs_cmap_adobe1_enum_ranges
	.quad	gs_cmap_adobe1_enum_lookups
	.quad	gs_cmap_compute_identity
	.size	cmap_adobe1_procs, 32

	.type	cmap_adobe1_enum_ptrs,@object # @cmap_adobe1_enum_ptrs
	.align	16
cmap_adobe1_enum_ptrs:
	.short	0                       # 0x0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.short	128                     # 0x80
	.short	0                       # 0x0
	.short	144                     # 0x90
	.short	0                       # 0x0
	.short	168                     # 0xa8
	.size	cmap_adobe1_enum_ptrs, 16

	.type	adobe1_range_procs,@object # @adobe1_range_procs
	.align	8
adobe1_range_procs:
	.quad	adobe1_next_range
	.size	adobe1_range_procs, 8

	.type	adobe1_lookup_notdef_procs,@object # @adobe1_lookup_notdef_procs
	.align	8
adobe1_lookup_notdef_procs:
	.quad	adobe1_next_lookup_notdef
	.quad	adobe1_next_entry_notdef
	.size	adobe1_lookup_notdef_procs, 16

	.type	adobe1_lookup_def_procs,@object # @adobe1_lookup_def_procs
	.align	8
adobe1_lookup_def_procs:
	.quad	adobe1_next_lookup_def
	.quad	adobe1_next_entry_def
	.size	adobe1_lookup_def_procs, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
