	.text
	.file	"gsalloc.bc"
	.align	16, 0x90
	.type	ref_memory_enum_ptrs,@function
ref_memory_enum_ptrs:                   # @ref_memory_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	%ecx, %edx
	cmpl	$4, %ecx
	ja	.LBB0_8
# BB#1:                                 # %entry
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_2:                                # %sw.bb
	movq	568(%rsi), %rax
	jmp	.LBB0_7
.LBB0_3:                                # %sw.bb.1
	movq	576(%rsi), %rax
	jmp	.LBB0_7
.LBB0_4:                                # %sw.bb.3
	movq	600(%rsi), %rax
	jmp	.LBB0_7
.LBB0_5:                                # %sw.bb.5
	movq	616(%rsi), %rax
	jmp	.LBB0_7
.LBB0_6:                                # %sw.bb.7
	movq	608(%rsi), %rax
.LBB0_7:                                # %return
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB0_8:                                # %return
	retq
.Lfunc_end0:
	.size	ref_memory_enum_ptrs, .Lfunc_end0-ref_memory_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6

	.text
	.align	16, 0x90
	.type	ref_memory_reloc_ptrs,@function
ref_memory_reloc_ptrs:                  # @ref_memory_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rax
	movq	568(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 568(%r14)
	movq	(%rbx), %rax
	movq	576(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 576(%r14)
	movq	(%rbx), %rax
	movq	600(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 600(%r14)
	movq	(%rbx), %rax
	movq	608(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 608(%r14)
	movq	(%rbx), %rax
	movq	616(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 640(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	ref_memory_reloc_ptrs, .Lfunc_end1-ref_memory_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_bytes_immovable,@function
i_alloc_bytes_immovable:                # @i_alloc_bytes_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movl	%r14d, %eax
	addq	$31, %rax
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	andq	%rax, %rbp
	leaq	32(%rbp), %rsi
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	$.L.str.7, %ecx
	callq	alloc_acquire_chunk
	movq	%rbp, %rcx
	shrq	$32, %rcx
	jne	.LBB2_3
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB2_3
# BB#2:                                 # %cleanup.thread.i
	movq	24(%rax), %rbx
	leaq	(%rbp,%rbx), %rcx
	movq	%rcx, 24(%rax)
	movl	$1, (%rbx)
	movl	%r14d, 4(%rbx)
	movq	$st_bytes, 8(%rbx)
	addq	$24, %rbx
.LBB2_3:                                # %alloc_obj.exit
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	i_alloc_bytes_immovable, .Lfunc_end2-i_alloc_bytes_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	i_resize_object,@function
i_resize_object:                        # @i_resize_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 64
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	-16(%r15), %rax
	movl	-20(%r15), %ebp
	movl	(%rax), %ecx
	movl	%edx, %ebx
	imulq	%rcx, %rbx
	leaq	7(%rbp), %rsi
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rsi, %rcx
	leaq	7(%rbx), %rsi
	andq	$-8, %rsi
	cmpq	%rsi, %rcx
	je	.LBB3_1
# BB#2:                                 # %if.else
	leaq	(%r15,%rcx), %rdi
	cmpq	328(%r14), %rdi
	jne	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movq	352(%r14), %rdi
	subq	%r15, %rdi
	cmpq	%rsi, %rdi
	jae	.LBB3_4
.LBB3_5:                                # %if.else.26
	addq	$24, %rsi
	cmpq	%rcx, %rsi
	jbe	.LBB3_6
# BB#7:                                 # %if.end.35
	movq	%r14, %rdi
	movl	%edx, %esi
	movq	%rax, %rdx
	movq	%r12, %rcx
	callq	*104(%r14)
	movq	%rax, %r13
	xorl	%eax, %eax
	testq	%r13, %r13
	je	.LBB3_9
# BB#8:                                 # %if.end.39
	cmpq	%rbx, %rbp
	cmovbq	%rbp, %rbx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	*24(%r14)
	movq	%r13, %rax
	jmp	.LBB3_9
.LBB3_6:                                # %if.then.30
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	trim_obj
	movq	%r15, %rax
	jmp	.LBB3_9
.LBB3_4:                                # %if.then.18
	leaq	(%rsi,%r15), %rax
	movq	%rax, 328(%r14)
.LBB3_1:                                # %if.then
	movl	%ebx, -20(%r15)
	movq	%r15, %rax
.LBB3_9:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	i_resize_object, .Lfunc_end3-i_resize_object
	.cfi_endproc

	.align	16, 0x90
	.type	i_free_object,@function
i_free_object:                          # @i_free_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 48
.Ltmp29:
	.cfi_offset %rbx, -40
.Ltmp30:
	.cfi_offset %r12, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB4_62
# BB#1:                                 # %if.end
	movq	-16(%rbx), %rax
	movl	-20(%rbx), %r12d
	leal	7(%r12), %r15d
	andl	$-8, %r15d
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_3
# BB#2:                                 # %if.then.8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%rax
.LBB4_3:                                # %if.end.21
	leaq	-24(%rbx), %rdx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	movl	%r15d, %ecx
	leaq	(%rcx,%rbx), %rcx
	cmpq	328(%r14), %rcx
	je	.LBB4_4
# BB#14:                                # %if.end.43
	testb	$1, (%rdx)
	je	.LBB4_24
# BB#15:                                # %if.then.i.70
	movq	288(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_24
# BB#16:                                # %if.end.10.i
	movq	296(%r14), %rsi
	cmpq	%rbx, 8(%rsi)
	ja	.LBB4_18
# BB#17:                                # %select.mid
	movq	%rsi, %rdi
.LBB4_18:                               # %select.end
	cmpq	%rbx, 8(%rdi)
	jbe	.LBB4_22
	.align	16, 0x90
.LBB4_19:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB4_24
# BB#20:                                # %do.cond.i
                                        #   in Loop: Header=BB4_19 Depth=1
	cmpq	%rbx, 8(%rdi)
	ja	.LBB4_19
# BB#21:                                # %do.end.i
	cmpq	%rbx, 64(%rdi)
	jbe	.LBB4_24
	jmp	.LBB4_32
	.align	16, 0x90
.LBB4_22:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 64(%rdi)
	ja	.LBB4_31
# BB#23:                                # %while.body.i
                                        #   in Loop: Header=BB4_22 Depth=1
	movq	80(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB4_22
	jmp	.LBB4_24
.LBB4_4:                                # %do.end.34
	movq	%rdx, 328(%r14)
	cmpq	320(%r14), %rdx
	ja	.LBB4_62
# BB#5:                                 # %if.then.40
	movq	312(%r14), %rcx
	movq	%rcx, 320(%r14)
	cmpq	%rdx, %rcx
	jae	.LBB4_62
# BB#6:                                 # %for.body.lr.ph.i
	xorl	%ebx, %ebx
	movl	$st_free, %esi
	.align	16, 0x90
.LBB4_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rcx), %edi
	cmpq	%rsi, 8(%rcx)
	je	.LBB4_8
# BB#9:                                 # %if.else.i
                                        #   in Loop: Header=BB4_7 Depth=1
	testq	%rbx, %rbx
	movl	$0, %ebx
	je	.LBB4_11
# BB#10:                                # %if.then.8.i
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	%rcx, 320(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB4_11
	.align	16, 0x90
.LBB4_8:                                # %if.then.i
                                        #   in Loop: Header=BB4_7 Depth=1
	testq	%rbx, %rbx
	cmoveq	%rcx, %rbx
.LBB4_11:                               # %for.inc.i
                                        #   in Loop: Header=BB4_7 Depth=1
	addq	$31, %rdi
	andq	%rax, %rdi
	addq	%rdi, %rcx
	cmpq	%rdx, %rcx
	jb	.LBB4_7
# BB#12:                                # %for.end.i
	testq	%rbx, %rbx
	je	.LBB4_62
# BB#13:                                # %if.then.14.i
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	remove_range_from_freelist
	movq	%rbx, 328(%r14)
	jmp	.LBB4_62
.LBB4_31:                               # %while.end.i
	cmpq	%rbx, 8(%rdi)
	ja	.LBB4_24
.LBB4_32:                               # %if.end.31.i
	cmpl	$0, 96(%rdi)
	je	.LBB4_35
# BB#33:                                # %land.rhs.i
	cmpq	%rbx, 24(%rdi)
	ja	.LBB4_35
# BB#34:                                # %land.rhs.35.i
	cmpq	%rbx, 48(%rdi)
	jbe	.LBB4_35
.LBB4_24:                               # %if.end.55
	cmpl	$8, %r15d
	jb	.LBB4_60
# BB#25:                                # %if.then.59
	movq	%r14, 496(%r14)
	movq	504(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_37
# BB#26:                                # %land.lhs.true
	cmpq	%rbx, 8(%rsi)
	ja	.LBB4_40
# BB#27:                                # %land.lhs.true.69
	cmpq	%rbx, 64(%rsi)
	jbe	.LBB4_40
# BB#28:                                # %land.lhs.true.74
	cmpl	$0, 96(%rsi)
	je	.LBB4_50
# BB#29:                                # %land.lhs.true.79
	cmpq	%rbx, 24(%rsi)
	ja	.LBB4_50
# BB#30:                                # %land.lhs.true.85
	cmpq	%rbx, 48(%rsi)
	ja	.LBB4_40
	jmp	.LBB4_50
.LBB4_60:                               # %if.else.158
	movq	$st_free, -16(%rbx)
.LBB4_61:                               # %do.end.172
	addq	$31, %r12
	andq	%rax, %r12
	addq	%r12, 528(%r14)
.LBB4_62:                               # %cleanup.178
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB4_37:                               # %if.then.i.79
	movq	288(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_61
# BB#38:                                # %if.end.i.84
	movq	296(%r14), %rdi
	cmpq	%rbx, 8(%rdi)
	ja	.LBB4_40
# BB#39:                                # %select.mid184
	movq	%rdi, %rsi
.LBB4_40:                               # %if.end.10.i.88
	cmpq	%rbx, 8(%rsi)
	jbe	.LBB4_44
	.align	16, 0x90
.LBB4_41:                               # %do.body.i.92
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB4_61
# BB#42:                                # %do.cond.i.95
                                        #   in Loop: Header=BB4_41 Depth=1
	cmpq	%rbx, 8(%rsi)
	ja	.LBB4_41
# BB#43:                                # %do.end.i.98
	cmpq	%rbx, 64(%rsi)
	ja	.LBB4_47
	jmp	.LBB4_61
	.align	16, 0x90
.LBB4_44:                               # %while.cond.i.102
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 64(%rsi)
	ja	.LBB4_46
# BB#45:                                # %while.body.i.105
                                        #   in Loop: Header=BB4_44 Depth=1
	movq	80(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB4_44
	jmp	.LBB4_61
.LBB4_46:                               # %while.end.i.108
	cmpq	%rbx, 8(%rsi)
	ja	.LBB4_61
.LBB4_47:                               # %if.end.31.i.112
	movq	%rsi, 504(%r14)
	cmpl	$0, 96(%rsi)
	je	.LBB4_50
# BB#48:                                # %land.rhs.i.115
	cmpq	%rbx, 24(%rsi)
	ja	.LBB4_50
# BB#49:                                # %land.rhs.35.i.118
	cmpq	%rbx, 48(%rsi)
	ja	.LBB4_61
.LBB4_50:                               # %if.then.94
	cmpl	$801, %r12d             # imm = 0x321
	jb	.LBB4_53
# BB#51:                                # %if.then.97
	leaq	1488(%r14), %rax
	cmpl	672(%r14), %r15d
	jbe	.LBB4_54
# BB#52:                                # %if.then.100
	movl	%r15d, 672(%r14)
	jmp	.LBB4_54
.LBB4_35:                               # %if.then.49
	cmpl	$0, 272(%r14)
	jne	.LBB4_62
# BB#36:                                # %if.then.51
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	alloc_free_chunk        # TAILCALL
.LBB4_53:                               # %if.else
	leaq	680(%r14,%r15), %rax
.LBB4_54:                               # %if.end.106
	movq	(%rsi), %rdi
	cmpq	304(%r14), %rdi
	je	.LBB4_55
# BB#57:                                # %if.else.124
	cmpq	16(%rsi), %rdx
	jb	.LBB4_59
# BB#58:                                # %if.then.130
	movq	%rcx, 16(%rsi)
	jmp	.LBB4_59
.LBB4_55:                               # %if.then.113
	cmpq	320(%r14), %rdx
	jb	.LBB4_59
# BB#56:                                # %if.then.118
	movq	%rcx, 320(%r14)
.LBB4_59:                               # %if.end.137
	movq	$st_free, -16(%rbx)
	orl	$-2, -24(%rbx)
	movq	(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	%rbx, (%rax)
	jmp	.LBB4_62
.Lfunc_end4:
	.size	i_free_object, .Lfunc_end4-i_free_object
	.cfi_endproc

	.align	16, 0x90
	.type	i_stable,@function
i_stable:                               # @i_stable
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	retq
.Lfunc_end5:
	.size	i_stable, .Lfunc_end5-i_stable
	.cfi_endproc

	.align	16, 0x90
	.type	i_status,@function
i_status:                               # @i_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 32
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	488(%r15), %rdi
	movq	544(%r15), %rbx
	addq	536(%r15), %rbx
	testq	%rdi, %rdi
	je	.LBB6_2
# BB#1:                                 # %if.then.i
	leaq	304(%r15), %rsi
	movl	$184, %edx
	callq	memcpy
.LBB6_2:                                # %alloc_close_chunk.exit
	movq	288(%r15), %rcx
	xorl	%eax, %eax
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	80(%rcx), %rcx
.LBB6_3:                                # %alloc_close_chunk.exit
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB6_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	addq	48(%rcx), %rbx
	subq	24(%rcx), %rbx
	cmpq	$0, 88(%rcx)
	je	.LBB6_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=1
	addq	64(%rcx), %rax
	subq	(%rcx), %rax
	jmp	.LBB6_6
.LBB6_7:                                # %while.end
	movq	528(%r15), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB6_8:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
	movq	680(%r15,%rdx,8), %rsi
	jmp	.LBB6_10
	.align	16, 0x90
.LBB6_9:                                # %for.body.3.i
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-20(%rsi), %edi
	addl	$7, %edi
	andl	$-8, %edi
	addq	%rdi, %rcx
	movq	(%rsi), %rsi
.LBB6_10:                               # %for.body.3.i
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rsi, %rsi
	jne	.LBB6_9
# BB#11:                                # %for.end.i
                                        #   in Loop: Header=BB6_8 Depth=1
	incq	%rdx
	cmpq	$102, %rdx
	jne	.LBB6_8
# BB#12:                                # %compute_free_objects.exit
	movq	512(%r15), %rdx
	subq	%rbx, %rax
	subq	%rcx, %rax
	addq	%rdx, %rax
	movdqu	648(%r15), %xmm0
	movd	%rax, %xmm1
	movd	%rdx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	paddq	%xmm0, %xmm2
	movdqu	%xmm2, (%r14)
	movl	$0, 16(%r14)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	i_status, .Lfunc_end6-i_status
	.cfi_endproc

	.align	16, 0x90
	.type	i_free_all,@function
i_free_all:                             # @i_free_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	testb	$1, %r14b
	je	.LBB7_4
# BB#1:                                 # %if.then
	movq	296(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB7_4
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rax
	movq	72(%rdi), %rbp
	addq	$24, %rax
	cmpq	%rbx, %rax
	je	.LBB7_3
# BB#10:                                # %if.then.2
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	%rbx, %rsi
	callq	alloc_free_chunk
.LBB7_3:                                # %for.cond.backedge
                                        #   in Loop: Header=BB7_2 Depth=1
	testq	%rbp, %rbp
	movq	%rbp, %rdi
	jne	.LBB7_2
.LBB7_4:                                # %if.end.3
	testb	$4, %r14b
	je	.LBB7_9
# BB#5:                                 # %if.then.6
	movq	296(%rbx), %rdi
	jmp	.LBB7_6
	.align	16, 0x90
.LBB7_8:                                # %for.inc.16
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	72(%rdi), %rdi
.LBB7_6:                                # %if.then.6
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	je	.LBB7_9
# BB#7:                                 # %for.body.10
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	8(%rdi), %rax
	addq	$24, %rax
	cmpq	%rbx, %rax
	jne	.LBB7_8
# BB#11:                                # %if.then.14
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	alloc_free_chunk        # TAILCALL
.LBB7_9:                                # %if.end.19
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	i_free_all, .Lfunc_end7-i_free_all
	.cfi_endproc

	.align	16, 0x90
	.type	i_consolidate_free,@function
i_consolidate_free:                     # @i_consolidate_free
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	ialloc_consolidate_free # TAILCALL
.Lfunc_end8:
	.size	i_consolidate_free, .Lfunc_end8-i_consolidate_free
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_bytes,@function
i_alloc_bytes:                          # @i_alloc_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 48
.Ltmp50:
	.cfi_offset %rbx, -40
.Ltmp51:
	.cfi_offset %r12, -32
.Ltmp52:
	.cfi_offset %r14, -24
.Ltmp53:
	.cfi_offset %r15, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	leal	7(%r14), %edx
	cmpl	$800, %r14d             # imm = 0x320
	ja	.LBB9_3
# BB#1:                                 # %land.lhs.true
	shrl	$3, %edx
	movq	680(%r15,%rdx,8), %r12
	testq	%r12, %r12
	je	.LBB9_16
# BB#2:                                 # %if.then
	movq	(%r12), %rax
	movq	%rax, 680(%r15,%rdx,8)
	movl	%r14d, -20(%r12)
	movq	$st_bytes, -16(%r12)
	jmp	.LBB9_20
.LBB9_3:                                # %land.lhs.true.14
	andl	$-8, %edx
	leal	24(%rdx), %r8d
	movl	%r8d, %edi
	shrl	$3, %edi
	addl	$7, %edi
	andl	$1073741816, %edi       # imm = 0x3FFFFFF8
	cmpl	672(%r15), %edx
	ja	.LBB9_16
# BB#4:                                 # %while.cond.preheader.i
	leaq	1488(%r15), %rax
	movq	(%rax), %rsi
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	je	.LBB9_15
# BB#5:
	leal	24(%rdi,%rdx), %r9d
	movl	$-1, %r11d
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB9_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rsi), %edi
	leal	7(%rdi), %ebx
	andl	$-8, %ebx
	cmpl	%edx, %ebx
	je	.LBB9_9
# BB#7:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	%r8d, %ebx
	jb	.LBB9_13
# BB#8:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	%r11d, %ebx
	jae	.LBB9_13
.LBB9_9:                                # %if.then.26.i
                                        #   in Loop: Header=BB9_6 Depth=1
	cmpl	%r9d, %edi
	movq	%rax, %r10
	movl	%edi, %r11d
	movq	%rsi, %r12
	jbe	.LBB9_10
.LBB9_13:                               # %cleanup.thread.i
                                        #   in Loop: Header=BB9_6 Depth=1
	movq	%rsi, %rax
	cmpl	%ecx, %ebx
	cmoval	%ebx, %ecx
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB9_6
# BB#14:                                # %while.end.i
	testq	%r12, %r12
	jne	.LBB9_11
.LBB9_15:                               # %if.then.42.i
	movl	%ecx, 672(%r15)
	jmp	.LBB9_16
.LBB9_10:
	movq	%rsi, %r12
	movq	%rax, %r10
.LBB9_11:                               # %large_freelist_alloc.exit
	movq	(%r12), %rax
	movq	%rax, (%r10)
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	trim_obj
	movl	%r14d, -20(%r12)
	testq	%r12, %r12
	je	.LBB9_16
# BB#12:                                # %if.then.16
	movq	$st_bytes, -16(%r12)
	jmp	.LBB9_20
.LBB9_16:                               # %if.else.31
	movq	328(%r15), %r12
	movq	352(%r15), %rax
	subq	%r12, %rax
	movl	%r14d, %esi
	leaq	56(%rsi), %rcx
	cmpq	%rcx, %rax
	jb	.LBB9_19
# BB#17:                                # %land.lhs.true.36
	cmpl	%r14d, 220(%r15)
	jbe	.LBB9_19
# BB#18:                                # %if.then.39
	addq	$31, %rsi
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rsi, %rax
	leaq	(%rax,%r12), %rax
	movq	%rax, 328(%r15)
	movl	$0, (%r12)
	movl	%r14d, 4(%r12)
	movq	$st_bytes, 8(%r12)
	addq	$24, %r12
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.69
	xorl	%r14d, %r14d
	movl	$st_bytes, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	callq	alloc_obj
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB9_21
.LBB9_20:                               # %if.end.80
	movq	%r12, %r14
.LBB9_21:                               # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	i_alloc_bytes, .Lfunc_end9-i_alloc_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_struct,@function
i_alloc_struct:                         # @i_alloc_struct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp60:
	.cfi_def_cfa_offset 64
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	(%rbx), %r12d
	leal	7(%r12), %edx
	cmpq	$800, %r12              # imm = 0x320
	ja	.LBB10_3
# BB#1:                                 # %land.lhs.true
	shrl	$3, %edx
	movq	680(%r15,%rdx,8), %r14
	testq	%r14, %r14
	je	.LBB10_16
# BB#2:                                 # %if.then
	movq	(%r14), %rax
	movq	%rax, 680(%r15,%rdx,8)
	movl	%r12d, -20(%r14)
	movq	%rbx, -16(%r14)
	jmp	.LBB10_20
.LBB10_3:                               # %land.lhs.true.17
	andl	$-8, %edx
	leal	24(%rdx), %r8d
	movl	%r8d, %edi
	shrl	$3, %edi
	addl	$7, %edi
	andl	$1073741816, %edi       # imm = 0x3FFFFFF8
	cmpl	672(%r15), %edx
	ja	.LBB10_16
# BB#4:                                 # %while.cond.preheader.i
	leaq	1488(%r15), %rax
	movq	(%rax), %rsi
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	je	.LBB10_15
# BB#5:
	movq	%rbx, %r11
	leal	24(%rdi,%rdx), %r9d
	movl	$-1, %edi
	xorl	%r14d, %r14d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB10_6:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rsi), %ebp
	leal	7(%rbp), %ebx
	andl	$-8, %ebx
	cmpl	%edx, %ebx
	je	.LBB10_9
# BB#7:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB10_6 Depth=1
	cmpl	%r8d, %ebx
	jb	.LBB10_13
# BB#8:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB10_6 Depth=1
	cmpl	%edi, %ebx
	jae	.LBB10_13
.LBB10_9:                               # %if.then.26.i
                                        #   in Loop: Header=BB10_6 Depth=1
	cmpl	%r9d, %ebp
	movq	%rax, %r10
	movl	%ebp, %edi
	movq	%rsi, %r14
	jbe	.LBB10_10
.LBB10_13:                              # %cleanup.thread.i
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	%rsi, %rax
	cmpl	%ecx, %ebx
	cmoval	%ebx, %ecx
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB10_6
# BB#14:                                # %while.end.i
	testq	%r14, %r14
	movq	%r11, %rbx
	jne	.LBB10_11
.LBB10_15:                              # %if.then.42.i
	movl	%ecx, 672(%r15)
	jmp	.LBB10_16
.LBB10_10:
	movq	%rsi, %r14
	movq	%rax, %r10
	movq	%r11, %rbx
.LBB10_11:                              # %large_freelist_alloc.exit
	movq	(%r14), %rax
	movq	%rax, (%r10)
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	trim_obj
	movl	%r12d, -20(%r14)
	testq	%r14, %r14
	je	.LBB10_16
# BB#12:                                # %if.then.19
	movq	%rbx, -16(%r14)
	jmp	.LBB10_20
.LBB10_16:                              # %if.else.34
	movq	328(%r15), %r14
	movq	352(%r15), %rax
	subq	%r14, %rax
	leaq	56(%r12), %rcx
	cmpq	%rcx, %rax
	jb	.LBB10_19
# BB#17:                                # %land.lhs.true.39
	cmpl	220(%r15), %r12d
	jae	.LBB10_19
# BB#18:                                # %if.then.42
	movq	%r12, %rax
	addq	$31, %rax
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rax, %rcx
	leaq	(%rcx,%r14), %rax
	movq	%rax, 328(%r15)
	movl	$0, (%r14)
	movl	%r12d, 4(%r14)
	movq	%rbx, 8(%r14)
	addq	$24, %r14
	jmp	.LBB10_20
.LBB10_19:                              # %if.else.72
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	alloc_obj
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB10_21
.LBB10_20:                              # %if.end.83
	movq	%r14, %r13
.LBB10_21:                              # %cleanup
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	i_alloc_struct, .Lfunc_end10-i_alloc_struct
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_struct_immovable,@function
i_alloc_struct_immovable:               # @i_alloc_struct_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 48
.Ltmp72:
	.cfi_offset %rbx, -40
.Ltmp73:
	.cfi_offset %r12, -32
.Ltmp74:
	.cfi_offset %r14, -24
.Ltmp75:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movl	(%r14), %r15d
	leaq	31(%r15), %rax
	movabsq	$8589934584, %rbx       # imm = 0x1FFFFFFF8
	andq	%rax, %rbx
	leaq	32(%rbx), %rsi
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movl	$.L.str.7, %ecx
	callq	alloc_acquire_chunk
	testq	%rax, %rax
	je	.LBB11_3
# BB#1:                                 # %entry
	movq	%rbx, %rcx
	shrq	$32, %rcx
	jne	.LBB11_3
# BB#2:                                 # %cleanup.thread.i
	movq	24(%rax), %r12
	leaq	(%rbx,%r12), %rcx
	movq	%rcx, 24(%rax)
	movl	$1, (%r12)
	movl	%r15d, 4(%r12)
	movq	%r14, 8(%r12)
	addq	$24, %r12
.LBB11_3:                               # %alloc_obj.exit
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	i_alloc_struct_immovable, .Lfunc_end11-i_alloc_struct_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_byte_array,@function
i_alloc_byte_array:                     # @i_alloc_byte_array
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	movl	%edx, %esi
	imulq	%rax, %rsi
	movl	$st_bytes, %edx
	movl	$2, %ecx
	jmp	alloc_obj               # TAILCALL
.Lfunc_end12:
	.size	i_alloc_byte_array, .Lfunc_end12-i_alloc_byte_array
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_byte_array_immovable,@function
i_alloc_byte_array_immovable:           # @i_alloc_byte_array_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 32
.Ltmp79:
	.cfi_offset %rbx, -32
.Ltmp80:
	.cfi_offset %r14, -24
.Ltmp81:
	.cfi_offset %r15, -16
	movl	%esi, %eax
	movl	%edx, %r14d
	imulq	%rax, %r14
	leaq	31(%r14), %rbx
	andq	$-8, %rbx
	leaq	32(%rbx), %rsi
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movl	$.L.str.7, %ecx
	callq	alloc_acquire_chunk
	movq	%rbx, %rcx
	shrq	$32, %rcx
	jne	.LBB13_3
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB13_3
# BB#2:                                 # %cleanup.thread.i
	movq	24(%rax), %r15
	leaq	(%rbx,%r15), %rcx
	movq	%rcx, 24(%rax)
	movl	$1, (%r15)
	movl	%r14d, 4(%r15)
	movq	$st_bytes, 8(%r15)
	addq	$24, %r15
.LBB13_3:                               # %alloc_obj.exit
	movq	%r15, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	i_alloc_byte_array_immovable, .Lfunc_end13-i_alloc_byte_array_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_struct_array,@function
i_alloc_struct_array:                   # @i_alloc_struct_array
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	movl	(%rdx), %esi
	imulq	%rax, %rsi
	movl	$2, %ecx
	jmp	alloc_obj               # TAILCALL
.Lfunc_end14:
	.size	i_alloc_struct_array, .Lfunc_end14-i_alloc_struct_array
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_struct_array_immovable,@function
i_alloc_struct_array_immovable:         # @i_alloc_struct_array_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp86:
	.cfi_def_cfa_offset 48
.Ltmp87:
	.cfi_offset %rbx, -40
.Ltmp88:
	.cfi_offset %r12, -32
.Ltmp89:
	.cfi_offset %r14, -24
.Ltmp90:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movl	%esi, %eax
	movl	(%r14), %r15d
	imulq	%rax, %r15
	leaq	31(%r15), %rbx
	andq	$-8, %rbx
	leaq	32(%rbx), %rsi
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movl	$.L.str.7, %ecx
	callq	alloc_acquire_chunk
	testq	%rax, %rax
	je	.LBB15_3
# BB#1:                                 # %entry
	movq	%rbx, %rcx
	shrq	$32, %rcx
	jne	.LBB15_3
# BB#2:                                 # %cleanup.thread.i
	movq	24(%rax), %r12
	leaq	(%rbx,%r12), %rcx
	movq	%rcx, 24(%rax)
	movl	$1, (%r12)
	movl	%r15d, 4(%r12)
	movq	%r14, 8(%r12)
	addq	$24, %r12
.LBB15_3:                               # %alloc_obj.exit
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	i_alloc_struct_array_immovable, .Lfunc_end15-i_alloc_struct_array_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	i_object_size,@function
i_object_size:                          # @i_object_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	-20(%rsi), %eax
	retq
.Lfunc_end16:
	.size	i_object_size, .Lfunc_end16-i_object_size
	.cfi_endproc

	.align	16, 0x90
	.type	i_object_type,@function
i_object_type:                          # @i_object_type
	.cfi_startproc
# BB#0:                                 # %entry
	movq	-16(%rsi), %rax
	retq
.Lfunc_end17:
	.size	i_object_type, .Lfunc_end17-i_object_type
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_string,@function
i_alloc_string:                         # @i_alloc_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp97:
	.cfi_def_cfa_offset 80
.Ltmp98:
	.cfi_offset %rbx, -56
.Ltmp99:
	.cfi_offset %r12, -48
.Ltmp100:
	.cfi_offset %r13, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	movq	488(%r12), %r15
	leal	8(%rsi), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	testq	%r15, %r15
	jne	.LBB18_3
# BB#1:                                 # %if.then
	movq	288(%r12), %rbx
	movq	%rbx, 488(%r12)
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB18_3
# BB#2:                                 # %if.then.i
	leaq	304(%r12), %rdi
	movl	$184, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbx, %r15
.LBB18_3:                               # %top.preheader
	leaq	304(%r12), %r13
	movq	352(%r12), %rax
	movq	%rax, %rcx
	subq	328(%r12), %rcx
	movl	20(%rsp), %r14d         # 4-byte Reload
	cmpq	%r14, %rcx
	jg	.LBB18_13
# BB#4:
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r15, %rbx
	.align	16, 0x90
.LBB18_5:                               # %if.end.18
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%r13), %rbp
	testq	%rbx, %rbx
	je	.LBB18_7
# BB#6:                                 # %if.then.i.43
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	$184, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	memcpy
.LBB18_7:                               # %alloc_close_chunk.exit44
                                        #   in Loop: Header=BB18_5 Depth=1
	testq	%rbp, %rbp
	je	.LBB18_9
# BB#8:                                 # %if.end.24.thread
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	%rbp, 488(%r12)
	jmp	.LBB18_10
	.align	16, 0x90
.LBB18_9:                               # %if.end.24
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	288(%r12), %rbp
	movq	%rbp, 488(%r12)
	testq	%rbp, %rbp
	movl	$0, %ebx
	je	.LBB18_11
.LBB18_10:                              # %if.then.i.49
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	$184, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	%rbp, %rbx
.LBB18_11:                              # %alloc_open_chunk.exit51
                                        #   in Loop: Header=BB18_5 Depth=1
	cmpq	%r15, %rbx
	jne	.LBB18_12
# BB#14:                                # %cleanup.cont
                                        #   in Loop: Header=BB18_5 Depth=1
	cmpl	$-678152768, 20(%rsp)   # 4-byte Folded Reload
                                        # imm = 0xFFFFFFFFD79435C0
	ja	.LBB18_18
# BB#15:                                # %if.end.34
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	220(%r12), %eax
	jae	.LBB18_16
# BB#19:                                # %if.else
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	216(%r12), %esi
	movl	$1, %edx
	movl	$.L.str.8, %ecx
	movq	%r12, %rdi
	callq	alloc_acquire_chunk
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB18_18
# BB#20:                                # %if.end.44
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	488(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB18_22
# BB#21:                                # %if.then.i.39
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	$184, %edx
	movq	%r13, %rsi
	callq	memcpy
.LBB18_22:                              # %alloc_close_chunk.exit
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	%rbx, 488(%r12)
	movl	$184, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
.LBB18_12:                              # %top.backedge
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	48(%r13), %rax
	movq	%rax, %rcx
	subq	24(%r13), %rcx
	cmpq	%r14, %rcx
	jle	.LBB18_5
.LBB18_13:                              # %do.end
	subq	%r14, %rax
	movq	%rax, 48(%r13)
	addq	$8, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB18_18:                              # %cleanup.56
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_16:                              # %if.then.37
	movq	(%rsp), %rax            # 8-byte Reload
	leal	79(%rax), %eax
	shrl	$6, %eax
	imull	$76, %eax, %esi
	addl	$32, %esi
	movl	$1, %edx
	movl	$.L.str.9, %ecx
	movq	%r12, %rdi
	callq	alloc_acquire_chunk
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	testq	%rax, %rax
	je	.LBB18_18
# BB#17:                                # %if.end.i
	movq	(%rsp), %rcx            # 8-byte Reload
	addl	$16, %ecx
	movq	56(%rax), %rdx
	subq	%rcx, %rdx
	movq	%rdx, 48(%rax)
	addq	$8, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	jmp	.LBB18_18
.Lfunc_end18:
	.size	i_alloc_string, .Lfunc_end18-i_alloc_string
	.cfi_endproc

	.align	16, 0x90
	.type	i_alloc_string_immovable,@function
i_alloc_string_immovable:               # @i_alloc_string_immovable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	leal	71(%rbx), %eax
	shrl	$6, %eax
	imull	$76, %eax, %esi
	addl	$32, %esi
	movl	$1, %edx
	movl	$.L.str.9, %ecx
	callq	alloc_acquire_chunk
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB19_2
# BB#1:                                 # %if.end
	addl	$8, %ebx
	movq	56(%rcx), %rax
	subq	%rbx, %rax
	movq	%rax, 48(%rcx)
	addq	$8, %rax
.LBB19_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end19:
	.size	i_alloc_string_immovable, .Lfunc_end19-i_alloc_string_immovable
	.cfi_endproc

	.align	16, 0x90
	.type	i_resize_string,@function
i_resize_string:                        # @i_resize_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp109:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp110:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp112:
	.cfi_def_cfa_offset 64
.Ltmp113:
	.cfi_offset %rbx, -56
.Ltmp114:
	.cfi_offset %r12, -48
.Ltmp115:
	.cfi_offset %r13, -40
.Ltmp116:
	.cfi_offset %r14, -32
.Ltmp117:
	.cfi_offset %r15, -24
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movl	%ecx, %ebx
	movl	%edx, %r13d
	movq	%rsi, %r12
	movq	%rdi, %r14
	cmpl	%ebx, %r13d
	jne	.LBB20_2
# BB#1:
	movq	%r12, %rbp
	jmp	.LBB20_10
.LBB20_2:                               # %if.end
	leaq	-8(%r12), %rsi
	leal	8(%r13), %eax
	leal	8(%rbx), %ecx
	cmpq	352(%r14), %rsi
	jne	.LBB20_6
# BB#3:                                 # %land.lhs.true
	movl	%ecx, %edx
	subl	%eax, %edx
	jb	.LBB20_5
# BB#4:                                 # %lor.lhs.false
	movq	%rsi, %rdi
	subq	328(%r14), %rdi
	cmpq	%rdx, %rdi
	jle	.LBB20_6
.LBB20_5:                               # %if.then.15
	movl	%eax, %edx
	leaq	(%rdx,%rsi), %rbp
	movl	%ecx, %edx
	subq	%rdx, %rbp
	movq	%rbp, 352(%r14)
	cmpl	%ecx, %eax
	cmovbl	%eax, %ecx
	movl	%ecx, %edx
	movq	%rbp, %rdi
	callq	memmove
	addq	$8, %rbp
	jmp	.LBB20_10
.LBB20_6:                               # %if.else
	cmpl	%eax, %ecx
	jae	.LBB20_8
# BB#7:                                 # %if.then.27
	subl	%ecx, %eax
	addq	%rax, 544(%r14)
	movq	%r12, %rbp
	jmp	.LBB20_10
.LBB20_8:                               # %if.else.41
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	*136(%r14)
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB20_10
# BB#9:                                 # %if.end.53
	cmpl	%ebx, %r13d
	cmovbl	%r13d, %ebx
	movl	%ebx, %edx
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rax, %rbx
	callq	memcpy
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*160(%r14)
	movq	%rbx, %rbp
.LBB20_10:                              # %cleanup
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	i_resize_string, .Lfunc_end20-i_resize_string
	.cfi_endproc

	.align	16, 0x90
	.type	i_free_string,@function
i_free_string:                          # @i_free_string
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB21_4
# BB#1:                                 # %if.then
	addq	$-8, %rsi
	addl	$8, %edx
	cmpq	352(%rdi), %rsi
	je	.LBB21_2
# BB#3:                                 # %do.end.9
	addq	%rdx, 544(%rdi)
.LBB21_4:                               # %if.end.18
	retq
.LBB21_2:                               # %do.end
	addq	%rdx, %rsi
	movq	%rsi, 352(%rdi)
	retq
.Lfunc_end21:
	.size	i_free_string, .Lfunc_end21-i_free_string
	.cfi_endproc

	.align	16, 0x90
	.type	i_register_root,@function
i_register_root:                        # @i_register_root
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp120:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 32
.Ltmp122:
	.cfi_offset %rbx, -32
.Ltmp123:
	.cfi_offset %r14, -24
.Ltmp124:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB22_1
# BB#3:                                 # %if.else
	movl	$0, 24(%rsi)
	jmp	.LBB22_4
.LBB22_1:                               # %if.then
	movq	200(%rbx), %rdi
	movl	$st_gc_root_t, %esi
	movl	$.L.str.10, %edx
	callq	gs_raw_alloc_struct_immovable
	movq	%rax, %rsi
	movl	$-25, %eax
	testq	%rsi, %rsi
	je	.LBB22_5
# BB#2:                                 # %if.end
	movl	$1, 24(%rsi)
.LBB22_4:                               # %do.end
	movq	%r15, 8(%rsi)
	movq	%r14, 16(%rsi)
	movq	584(%rbx), %rax
	movq	%rax, (%rsi)
	movq	%rsi, 584(%rbx)
	xorl	%eax, %eax
.LBB22_5:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	i_register_root, .Lfunc_end22-i_register_root
	.cfi_endproc

	.align	16, 0x90
	.type	i_unregister_root,@function
i_unregister_root:                      # @i_unregister_root
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	584(%rdi), %rcx
	.align	16, 0x90
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	(%rax), %rcx
	cmpq	%rsi, %rcx
	jne	.LBB23_1
# BB#2:                                 # %while.end
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	cmpl	$0, 24(%rsi)
	je	.LBB23_3
# BB#4:                                 # %if.then
	movq	200(%rdi), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.11, %edx
	jmpq	*%rax                   # TAILCALL
.LBB23_3:                               # %if.end
	retq
.Lfunc_end23:
	.size	i_unregister_root, .Lfunc_end23-i_unregister_root
	.cfi_endproc

	.align	16, 0x90
	.type	i_enable_free,@function
i_enable_free:                          # @i_enable_free
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	movl	$gs_ignore_free_object, %eax
	movl	$i_free_object, %ecx
	cmoveq	%rax, %rcx
	movl	$gs_ignore_free_string, %eax
	movl	$i_free_string, %edx
	cmoveq	%rax, %rdx
	movq	%rcx, 24(%rdi)
	movq	%rdx, 160(%rdi)
	retq
.Lfunc_end24:
	.size	i_enable_free, .Lfunc_end24-i_enable_free
	.cfi_endproc

	.globl	ialloc_alloc_state
	.align	16, 0x90
	.type	ialloc_alloc_state,@function
ialloc_alloc_state:                     # @ialloc_alloc_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp127:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 48
.Ltmp130:
	.cfi_offset %rbx, -48
.Ltmp131:
	.cfi_offset %r12, -40
.Ltmp132:
	.cfi_offset %r13, -32
.Ltmp133:
	.cfi_offset %r14, -24
.Ltmp134:
	.cfi_offset %r15, -16
	movl	%esi, %r13d
	movq	%rdi, %r15
	movl	$st_chunk, %esi
	movl	$.L.str.5, %edx
	callq	gs_raw_alloc_struct_immovable
	movq	%rax, %r14
	movl	$1552, %esi             # imm = 0x610
	movl	$.L.str.6, %edx
	movq	%r15, %rdi
	callq	*8(%r15)
	movq	%rax, %rbx
	testq	%r14, %r14
	je	.LBB25_2
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB25_2
# BB#3:                                 # %ialloc_solo.exit
	leaq	32(%rbx), %rax
	leaq	1552(%rbx), %rcx
	movq	%rbx, (%r14)
	movq	%rax, 16(%r14)
	movq	%rax, 8(%r14)
	movq	%rcx, 64(%r14)
	movq	$0, 32(%r14)
	movq	$0, 40(%r14)
	movq	$0, 88(%r14)
	movl	$0, 96(%r14)
	movl	$0, 100(%r14)
	movq	%rax, 144(%r14)
	movq	%rcx, 56(%r14)
	movq	$0, 104(%r14)
	movq	$0, 128(%r14)
	movl	$0, 136(%r14)
	movq	$0, 152(%r14)
	movq	%rcx, 48(%r14)
	movl	$0, 112(%r14)
	movq	%rcx, 24(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%r14)
	movl	$1, 32(%rbx)
	movl	$1496, 36(%rbx)         # imm = 0x5D8
	movq	$st_ref_memory, 40(%rbx)
	leaq	56(%rbx), %r12
	movq	%r12, 56(%rbx)
	movq	%rbx, %rdi
	addq	$64, %rdi
	movl	$gs_ref_memory_procs, %esi
	movl	$184, %edx
	callq	memcpy
	xorps	%xmm0, %xmm0
	movq	192(%r15), %rax
	movq	%rax, 248(%rbx)
	movq	%r15, 256(%rbx)
	movq	208(%r15), %rax
	movq	%rax, 264(%rbx)
	movl	%r13d, 272(%rbx)
	movl	%r13d, %eax
	shrl	$5, %r13d
	leal	1(,%r13,8), %ecx
	movl	%ecx, 276(%rbx)
	movl	$0, 328(%rbx)
	leaq	(%rax,%rax,2), %rax
	movq	%rax, 288(%rbx)
	movq	$2147483647, 296(%rbx)  # imm = 0x7FFFFFFF
	movq	$0, 304(%rbx)
	movl	$0, 312(%rbx)
	movl	$0, 316(%rbx)
	movq	$0, 320(%rbx)
	movups	%xmm0, 704(%rbx)
	movups	%xmm0, 344(%rbx)
	movq	$0, 392(%rbx)
	movq	$0, 400(%rbx)
	movl	$0, 460(%rbx)
	movups	%xmm0, 568(%rbx)
	movups	%xmm0, 656(%rbx)
	movups	%xmm0, 680(%rbx)
	movups	%xmm0, 584(%rbx)
	movq	$0, 600(%rbx)
	movq	$0, 560(%rbx)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB25_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 736(%rbx,%rax,8)
	movups	%xmm0, 752(%rbx,%rax,8)
	movups	%xmm0, 768(%rbx,%rax,8)
	addq	$6, %rax
	cmpq	$102, %rax
	jne	.LBB25_4
# BB#5:                                 # %ialloc_set_limit.exit
	movl	$0, 728(%rbx)
	movq	%r14, 352(%rbx)
	movq	%r14, 344(%rbx)
	movq	$8000000, 336(%rbx)     # imm = 0x7A1200
	movq	$0, 408(%rbx)
	movq	$0, 384(%rbx)
	movq	$0, 544(%rbx)
	movl	$0, 608(%rbx)
	movl	$0, 612(%rbx)
	movl	$-1, 616(%rbx)
	movq	$0, 624(%rbx)
	movq	$0, 632(%rbx)
	movq	$0, 640(%rbx)
	movl	$0, 648(%rbx)
	movq	$0, 672(%rbx)
	jmp	.LBB25_6
.LBB25_2:                               # %ialloc_solo.exit.thread
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*24(%r15)
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
	xorl	%r12d, %r12d
.LBB25_6:                               # %cleanup
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end25:
	.size	ialloc_alloc_state, .Lfunc_end25-ialloc_alloc_state
	.cfi_endproc

	.globl	ialloc_reset
	.align	16, 0x90
	.type	ialloc_reset,@function
ialloc_reset:                           # @ialloc_reset
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 288(%rdi)
	movq	$0, 336(%rdi)
	movq	$0, 344(%rdi)
	movl	$0, 404(%rdi)
	movq	$0, 512(%rdi)
	movups	%xmm0, 600(%rdi)
	movups	%xmm0, 624(%rdi)
	movups	%xmm0, 528(%rdi)
	movq	$0, 544(%rdi)
	movq	$0, 504(%rdi)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB26_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 680(%rdi,%rax,8)
	movups	%xmm0, 696(%rdi,%rax,8)
	movups	%xmm0, 712(%rdi,%rax,8)
	addq	$6, %rax
	cmpq	$102, %rax
	jne	.LBB26_1
# BB#2:                                 # %ialloc_reset_free.exit
	movl	$0, 672(%rdi)
	retq
.Lfunc_end26:
	.size	ialloc_reset, .Lfunc_end26-ialloc_reset
	.cfi_endproc

	.globl	ialloc_set_limit
	.align	16, 0x90
	.type	ialloc_set_limit,@function
ialloc_set_limit:                       # @ialloc_set_limit
	.cfi_startproc
# BB#0:                                 # %entry
	movq	648(%rdi), %rdx
	movq	240(%rdi), %rsi
	movq	520(%rdi), %rax
	xorl	%ecx, %ecx
	subq	%rdx, %rsi
	cmovaq	%rsi, %rcx
	cmpl	$0, 260(%rdi)
	je	.LBB27_4
# BB#1:                                 # %if.then
	addq	232(%rdi), %rax
	subq	%rdx, %rax
	jae	.LBB27_3
# BB#2:                                 # %if.then.10
	movq	$0, 280(%rdi)
	retq
.LBB27_4:                               # %if.else.21
	addq	$8000000, %rax          # imm = 0x7A1200
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	movq	%rax, 280(%rdi)
	retq
.LBB27_3:                               # %if.else
	cmpq	%rcx, %rax
	cmovbq	%rax, %rcx
	movq	%rcx, 280(%rdi)
	retq
.Lfunc_end27:
	.size	ialloc_set_limit, .Lfunc_end27-ialloc_set_limit
	.cfi_endproc

	.globl	ialloc_free_state
	.align	16, 0x90
	.type	ialloc_free_state,@function
ialloc_free_state:                      # @ialloc_free_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp137:
	.cfi_def_cfa_offset 32
.Ltmp138:
	.cfi_offset %rbx, -24
.Ltmp139:
	.cfi_offset %r14, -16
	testq	%rdi, %rdi
	je	.LBB28_2
# BB#1:                                 # %if.end
	movq	288(%rdi), %r14
	testq	%r14, %r14
	je	.LBB28_2
# BB#3:                                 # %if.end.3
	movq	200(%rdi), %rbx
	movq	(%r14), %rsi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	24(%rbx), %rax
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB28_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end28:
	.size	ialloc_free_state, .Lfunc_end28-ialloc_free_state
	.cfi_endproc

	.globl	ialloc_add_chunk
	.align	16, 0x90
	.type	ialloc_add_chunk,@function
ialloc_add_chunk:                       # @ialloc_add_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp140:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 32
.Ltmp143:
	.cfi_offset %rbx, -32
.Ltmp144:
	.cfi_offset %r14, -24
.Ltmp145:
	.cfi_offset %r15, -16
	movq	%rdx, %rax
	movq	%rdi, %rbx
	movl	$0, 272(%rbx)
	movl	216(%rbx), %ecx
	movl	%ecx, 220(%rbx)
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rcx, 280(%rbx)
	movq	%rcx, 240(%rbx)
	movl	$1, %edx
	movq	%rax, %rcx
	callq	alloc_acquire_chunk
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB29_4
# BB#1:                                 # %if.then.i
	movq	488(%rbx), %rdi
	leaq	304(%rbx), %r15
	testq	%rdi, %rdi
	je	.LBB29_3
# BB#2:                                 # %if.then.i.i
	movl	$184, %edx
	movq	%r15, %rsi
	callq	memcpy
.LBB29_3:                               # %alloc_close_chunk.exit.i
	movq	%r14, 488(%rbx)
	movl	$184, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
.LBB29_4:                               # %alloc_add_chunk.exit
	movq	64(%rbx), %rax
	movq	%rax, 8(%rbx)
	movq	72(%rbx), %rax
	movq	%rax, 80(%rbx)
	movq	88(%rbx), %rax
	movq	%rax, 96(%rbx)
	movq	104(%rbx), %rax
	movq	%rax, 112(%rbx)
	movq	136(%rbx), %rax
	movq	%rax, 144(%rbx)
	movl	$1, 272(%rbx)
	movq	$0, 280(%rbx)
	xorl	%ecx, %ecx
	testq	%r14, %r14
	movl	$-25, %eax
	cmovnel	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end29:
	.size	ialloc_add_chunk, .Lfunc_end29-ialloc_add_chunk
	.cfi_endproc

	.globl	ialloc_gc_prepare
	.align	16, 0x90
	.type	ialloc_gc_prepare,@function
ialloc_gc_prepare:                      # @ialloc_gc_prepare
	.cfi_startproc
# BB#0:                                 # %entry
	movq	568(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_4
# BB#1:                                 # %while.body.lr.ph
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB30_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	280(%rcx), %rax
	movups	%xmm0, 272(%rcx)
	testq	%rax, %rax
	jne	.LBB30_2
# BB#3:                                 # %while.end.loopexit
	movq	%rax, 568(%rdi)
.LBB30_4:                               # %while.end
	retq
.Lfunc_end30:
	.size	ialloc_gc_prepare, .Lfunc_end30-ialloc_gc_prepare
	.cfi_endproc

	.globl	ialloc_reset_free
	.align	16, 0x90
	.type	ialloc_reset_free,@function
ialloc_reset_free:                      # @ialloc_reset_free
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm0, %xmm0
	movups	%xmm0, 528(%rdi)
	movq	$0, 544(%rdi)
	movq	$0, 504(%rdi)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB31_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 680(%rdi,%rax,8)
	movups	%xmm0, 696(%rdi,%rax,8)
	movups	%xmm0, 712(%rdi,%rax,8)
	addq	$6, %rax
	cmpq	$102, %rax
	jne	.LBB31_1
# BB#2:                                 # %for.end
	movl	$0, 672(%rdi)
	retq
.Lfunc_end31:
	.size	ialloc_reset_free, .Lfunc_end31-ialloc_reset_free
	.cfi_endproc

	.globl	gs_memory_gc_status
	.align	16, 0x90
	.type	gs_memory_gc_status,@function
gs_memory_gc_status:                    # @gs_memory_gc_status
	.cfi_startproc
# BB#0:                                 # %entry
	movq	264(%rdi), %rax
	movq	%rax, 32(%rsi)
	movups	232(%rdi), %xmm0
	movups	248(%rdi), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end32:
	.size	gs_memory_gc_status, .Lfunc_end32-gs_memory_gc_status
	.cfi_endproc

	.globl	gs_memory_set_gc_status
	.align	16, 0x90
	.type	gs_memory_set_gc_status,@function
gs_memory_set_gc_status:                # @gs_memory_set_gc_status
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rsi), %rax
	movq	%rax, 264(%rdi)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	%xmm1, 248(%rdi)
	movups	%xmm0, 232(%rdi)
	movq	648(%rdi), %rdx
	movq	240(%rdi), %rsi
	movq	520(%rdi), %rax
	xorl	%ecx, %ecx
	subq	%rdx, %rsi
	cmovaq	%rsi, %rcx
	cmpl	$0, 260(%rdi)
	je	.LBB33_4
# BB#1:                                 # %if.then.i
	addq	232(%rdi), %rax
	subq	%rdx, %rax
	jae	.LBB33_3
# BB#2:                                 # %if.then.10.i
	movq	$0, 280(%rdi)
	retq
.LBB33_4:                               # %if.else.21.i
	addq	$8000000, %rax          # imm = 0x7A1200
	cmpq	%rax, %rcx
	cmovbq	%rcx, %rax
	movq	%rax, 280(%rdi)
	retq
.LBB33_3:                               # %if.else.i
	cmpq	%rcx, %rax
	cmovbq	%rax, %rcx
	movq	%rcx, 280(%rdi)
	retq
.Lfunc_end33:
	.size	gs_memory_set_gc_status, .Lfunc_end33-gs_memory_set_gc_status
	.cfi_endproc

	.globl	gs_memory_set_vm_threshold
	.align	16, 0x90
	.type	gs_memory_set_vm_threshold,@function
gs_memory_set_vm_threshold:             # @gs_memory_set_vm_threshold
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movups	240(%rdi), %xmm0
	movups	256(%rdi), %xmm1
	movaps	%xmm1, -24(%rsp)
	movaps	%xmm0, -40(%rsp)
	movq	%rsi, 232(%rdi)
	movaps	-40(%rsp), %xmm0
	movaps	-24(%rsp), %xmm1
	movups	%xmm1, 256(%rdi)
	movups	%xmm0, 240(%rdi)
	movq	648(%rdi), %r8
	movq	240(%rdi), %rdx
	movq	520(%rdi), %rcx
	xorl	%r9d, %r9d
	subq	%r8, %rdx
	cmovaq	%rdx, %r9
	cmpl	$0, 260(%rdi)
	je	.LBB34_4
# BB#1:                                 # %if.then.i.i.20
	addq	%rsi, %rcx
	subq	%r8, %rcx
	jae	.LBB34_3
# BB#2:                                 # %if.then.10.i.i.22
	movq	$0, 280(%rdi)
	jmp	.LBB34_5
.LBB34_4:                               # %if.else.21.i.i.32
	addq	$8000000, %rcx          # imm = 0x7A1200
	cmpq	%rcx, %r9
	cmovbq	%r9, %rcx
	movq	%rcx, 280(%rdi)
	jmp	.LBB34_5
.LBB34_3:                               # %if.else.i.i.27
	cmpq	%r9, %rcx
	cmovbq	%rcx, %r9
	movq	%r9, 280(%rdi)
.LBB34_5:                               # %gs_memory_set_gc_status.exit33
	movups	240(%rax), %xmm0
	movups	256(%rax), %xmm1
	movaps	%xmm1, -24(%rsp)
	movaps	%xmm0, -40(%rsp)
	movq	%rsi, 232(%rax)
	movaps	-40(%rsp), %xmm0
	movaps	-24(%rsp), %xmm1
	movups	%xmm1, 256(%rax)
	movups	%xmm0, 240(%rax)
	movq	648(%rax), %r8
	movq	240(%rax), %rdi
	movq	520(%rax), %rcx
	xorl	%edx, %edx
	subq	%r8, %rdi
	cmovaq	%rdi, %rdx
	cmpl	$0, 260(%rax)
	je	.LBB34_9
# BB#6:                                 # %if.then.i.i
	addq	%rsi, %rcx
	subq	%r8, %rcx
	jae	.LBB34_8
# BB#7:                                 # %if.then.10.i.i
	movq	$0, 280(%rax)
	retq
.LBB34_9:                               # %if.else.21.i.i
	addq	$8000000, %rcx          # imm = 0x7A1200
	cmpq	%rcx, %rdx
	cmovbq	%rdx, %rcx
	movq	%rcx, 280(%rax)
	retq
.LBB34_8:                               # %if.else.i.i
	cmpq	%rdx, %rcx
	cmovbq	%rcx, %rdx
	movq	%rdx, 280(%rax)
	retq
.Lfunc_end34:
	.size	gs_memory_set_vm_threshold, .Lfunc_end34-gs_memory_set_vm_threshold
	.cfi_endproc

	.globl	gs_memory_set_vm_reclaim
	.align	16, 0x90
	.type	gs_memory_set_vm_reclaim,@function
gs_memory_set_vm_reclaim:               # @gs_memory_set_vm_reclaim
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %r9
	movups	232(%rdi), %xmm0
	movups	244(%rdi), %xmm1
	movups	%xmm1, -28(%rsp)
	movaps	%xmm0, -40(%rsp)
	movups	-28(%rsp), %xmm0
	movups	%xmm0, 244(%rdi)
	movaps	-40(%rsp), %xmm0
	movups	%xmm0, 232(%rdi)
	movl	%esi, 260(%rdi)
	movq	648(%rdi), %r8
	movq	240(%rdi), %rax
	movq	520(%rdi), %rcx
	xorl	%edx, %edx
	subq	%r8, %rax
	cmovaq	%rax, %rdx
	testl	%esi, %esi
	je	.LBB35_4
# BB#1:                                 # %if.then.i.i.20
	addq	232(%rdi), %rcx
	subq	%r8, %rcx
	jae	.LBB35_3
# BB#2:                                 # %if.then.10.i.i.22
	movq	$0, 280(%rdi)
	jmp	.LBB35_5
.LBB35_4:                               # %if.else.21.i.i.32
	addq	$8000000, %rcx          # imm = 0x7A1200
	cmpq	%rcx, %rdx
	cmovbq	%rdx, %rcx
	movq	%rcx, 280(%rdi)
	jmp	.LBB35_5
.LBB35_3:                               # %if.else.i.i.27
	cmpq	%rdx, %rcx
	cmovbq	%rcx, %rdx
	movq	%rdx, 280(%rdi)
.LBB35_5:                               # %gs_memory_set_gc_status.exit33
	movups	232(%r9), %xmm0
	movups	244(%r9), %xmm1
	movups	%xmm1, -28(%rsp)
	movaps	%xmm0, -40(%rsp)
	movups	-28(%rsp), %xmm0
	movups	%xmm0, 244(%r9)
	movaps	-40(%rsp), %xmm0
	movups	%xmm0, 232(%r9)
	movl	%esi, 260(%r9)
	movq	648(%r9), %rdi
	movq	240(%r9), %rax
	movq	520(%r9), %rcx
	xorl	%edx, %edx
	subq	%rdi, %rax
	cmovaq	%rax, %rdx
	testl	%esi, %esi
	je	.LBB35_9
# BB#6:                                 # %if.then.i.i
	addq	232(%r9), %rcx
	subq	%rdi, %rcx
	jae	.LBB35_8
# BB#7:                                 # %if.then.10.i.i
	movq	$0, 280(%r9)
	retq
.LBB35_9:                               # %if.else.21.i.i
	addq	$8000000, %rcx          # imm = 0x7A1200
	cmpq	%rcx, %rdx
	cmovbq	%rdx, %rcx
	movq	%rcx, 280(%r9)
	retq
.LBB35_8:                               # %if.else.i.i
	cmpq	%rdx, %rcx
	cmovbq	%rcx, %rdx
	movq	%rdx, 280(%r9)
	retq
.Lfunc_end35:
	.size	gs_memory_set_vm_reclaim, .Lfunc_end35-gs_memory_set_vm_reclaim
	.cfi_endproc

	.globl	ialloc_consolidate_free
	.align	16, 0x90
	.type	ialloc_consolidate_free,@function
ialloc_consolidate_free:                # @ialloc_consolidate_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp152:
	.cfi_def_cfa_offset 64
.Ltmp153:
	.cfi_offset %rbx, -56
.Ltmp154:
	.cfi_offset %r12, -48
.Ltmp155:
	.cfi_offset %r13, -40
.Ltmp156:
	.cfi_offset %r14, -32
.Ltmp157:
	.cfi_offset %r15, -24
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	488(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB36_2
# BB#1:                                 # %if.then.i
	leaq	304(%r14), %rsi
	movl	$184, %edx
	callq	memcpy
.LBB36_2:                               # %alloc_close_chunk.exit
	movq	296(%r14), %r12
	testq	%r12, %r12
	je	.LBB36_23
# BB#3:                                 # %for.body.lr.ph
	movl	$st_free, %r13d
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	.align	16, 0x90
.LBB36_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_6 Depth 2
	movq	%r12, %r15
	movq	8(%r15), %rax
	movq	72(%r15), %r12
	movq	%rax, 16(%r15)
	movq	24(%r15), %rdx
	cmpq	%rdx, %rax
	jae	.LBB36_13
# BB#5:                                 # %for.body.lr.ph.i
                                        #   in Loop: Header=BB36_4 Depth=1
	xorl	%ebx, %ebx
	movq	%rax, %rcx
	.align	16, 0x90
.LBB36_6:                               # %for.body.i
                                        #   Parent Loop BB36_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rcx), %esi
	cmpq	%r13, 8(%rcx)
	je	.LBB36_7
# BB#8:                                 # %if.else.i
                                        #   in Loop: Header=BB36_6 Depth=2
	testq	%rbx, %rbx
	movl	$0, %ebx
	je	.LBB36_10
# BB#9:                                 # %if.then.8.i
                                        #   in Loop: Header=BB36_6 Depth=2
	movq	%rcx, 16(%r15)
	xorl	%ebx, %ebx
	jmp	.LBB36_10
	.align	16, 0x90
.LBB36_7:                               # %if.then.i.32
                                        #   in Loop: Header=BB36_6 Depth=2
	testq	%rbx, %rbx
	cmoveq	%rcx, %rbx
.LBB36_10:                              # %for.inc.i
                                        #   in Loop: Header=BB36_6 Depth=2
	addq	$31, %rsi
	andq	%rbp, %rsi
	addq	%rsi, %rcx
	cmpq	%rdx, %rcx
	jb	.LBB36_6
# BB#11:                                # %for.end.i
                                        #   in Loop: Header=BB36_4 Depth=1
	testq	%rbx, %rbx
	je	.LBB36_13
# BB#12:                                # %if.then.14.i
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	remove_range_from_freelist
	movq	%rbx, 24(%r15)
	movq	8(%r15), %rax
	movq	%rbx, %rdx
.LBB36_13:                              # %consolidate_chunk_free.exit
                                        #   in Loop: Header=BB36_4 Depth=1
	cmpq	%rax, %rdx
	jne	.LBB36_22
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	48(%r15), %rax
	cmpq	56(%r15), %rax
	jne	.LBB36_22
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB36_4 Depth=1
	cmpl	$0, 272(%r14)
	jne	.LBB36_22
# BB#16:                                # %if.then.5
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	80(%r15), %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	alloc_free_chunk
	cmpq	%r15, 488(%r14)
	jne	.LBB36_22
# BB#17:                                # %if.then.7
                                        #   in Loop: Header=BB36_4 Depth=1
	testq	%rbx, %rbx
	movq	%r12, %rax
	je	.LBB36_21
# BB#18:                                # %cond.false
                                        #   in Loop: Header=BB36_4 Depth=1
	testq	%r12, %r12
	je	.LBB36_20
# BB#19:                                # %cond.false.11
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	24(%r12), %rax
	subq	48(%r12), %rax
	movq	24(%rbx), %rcx
	subq	48(%rbx), %rcx
	cmpq	%rcx, %rax
	cmovgq	%r12, %rbx
.LBB36_20:                              # %cond.end.24
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	%rbx, %rax
.LBB36_21:                              # %cond.end.24
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	%rax, 488(%r14)
	.align	16, 0x90
.LBB36_22:                              # %for.cond.backedge
                                        #   in Loop: Header=BB36_4 Depth=1
	testq	%r12, %r12
	jne	.LBB36_4
.LBB36_23:                              # %for.end
	movq	488(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB36_24
# BB#25:                                # %if.then.i.31
	addq	$304, %r14              # imm = 0x130
	movl	$184, %edx
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
.LBB36_24:                              # %alloc_open_chunk.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	ialloc_consolidate_free, .Lfunc_end36-ialloc_consolidate_free
	.cfi_endproc

	.globl	alloc_close_chunk
	.align	16, 0x90
	.type	alloc_close_chunk,@function
alloc_close_chunk:                      # @alloc_close_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	488(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB37_1
# BB#2:                                 # %if.then
	addq	$304, %rax              # imm = 0x130
	movl	$184, %edx
	movq	%rax, %rsi
	jmp	memcpy                  # TAILCALL
.LBB37_1:                               # %if.end
	retq
.Lfunc_end37:
	.size	alloc_close_chunk, .Lfunc_end37-alloc_close_chunk
	.cfi_endproc

	.globl	alloc_free_chunk
	.align	16, 0x90
	.type	alloc_free_chunk,@function
alloc_free_chunk:                       # @alloc_free_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp161:
	.cfi_def_cfa_offset 32
.Ltmp162:
	.cfi_offset %rbx, -24
.Ltmp163:
	.cfi_offset %r14, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	200(%rax), %r14
	movq	(%rbx), %rsi
	movq	64(%rbx), %rcx
	movq	72(%rbx), %rdx
	movq	80(%rbx), %rdi
	testq	%rdx, %rdx
	je	.LBB38_1
# BB#2:                                 # %if.else.i
	movq	%rdi, 80(%rdx)
	movq	80(%rbx), %rdi
	jmp	.LBB38_3
.LBB38_1:                               # %if.then.i
	movq	%rdi, 288(%rax)
.LBB38_3:                               # %if.end.i
	testq	%rdi, %rdi
	je	.LBB38_4
# BB#5:                                 # %if.else.8.i
	movq	%rdx, 72(%rdi)
	jmp	.LBB38_6
.LBB38_4:                               # %if.then.6.i
	movq	%rdx, 296(%rax)
.LBB38_6:                               # %if.end.12.i
	movq	488(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB38_9
# BB#7:                                 # %if.then.14.i
	movups	72(%rdx), %xmm0
	movups	%xmm0, 376(%rax)
	cmpq	%rbx, %rdx
	jne	.LBB38_9
# BB#8:                                 # %if.then.24.i
	movq	$0, 488(%rax)
	movq	$0, 352(%rax)
	movq	$0, 328(%rax)
.LBB38_9:                               # %alloc_unlink_chunk.exit
	movq	$-184, %rdx
	addq	512(%rax), %rdx
	movq	%rdx, 512(%rax)
	cmpq	%rbx, 504(%rax)
	jne	.LBB38_11
# BB#10:                                # %if.then
	movq	$0, 504(%rax)
.LBB38_11:                              # %if.end
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB38_12
# BB#13:                                # %if.else
	decl	96(%rdi)
	jmp	.LBB38_14
.LBB38_12:                              # %if.then.7
	movq	%rsi, %rdi
	subq	%rcx, %rdi
	addq	%rdx, %rdi
	movq	%rdi, 512(%rax)
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
.LBB38_14:                              # %if.end.14
	movq	24(%r14), %rax
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end38:
	.size	alloc_free_chunk, .Lfunc_end38-alloc_free_chunk
	.cfi_endproc

	.globl	alloc_open_chunk
	.align	16, 0x90
	.type	alloc_open_chunk,@function
alloc_open_chunk:                       # @alloc_open_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	movq	488(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB39_1
# BB#2:                                 # %if.then
	addq	$304, %rdi              # imm = 0x130
	movl	$184, %edx
	jmp	memcpy                  # TAILCALL
.LBB39_1:                               # %if.end
	retq
.Lfunc_end39:
	.size	alloc_open_chunk, .Lfunc_end39-alloc_open_chunk
	.cfi_endproc

	.globl	alloc_link_chunk
	.align	16, 0x90
	.type	alloc_link_chunk,@function
alloc_link_chunk:                       # @alloc_link_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rcx
	movq	296(%rsi), %rax
	testq	%rax, %rax
	je	.LBB40_2
# BB#1:                                 # %land.lhs.true
	cmpq	48(%rax), %rcx
	jae	.LBB40_6
.LBB40_2:                               # %if.else
	movq	288(%rsi), %rdx
	jmp	.LBB40_3
	.align	16, 0x90
.LBB40_5:                               # %for.inc
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	80(%rdx), %rdx
.LBB40_3:                               # %if.else
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB40_6
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB40_3 Depth=1
	cmpq	48(%rdx), %rcx
	jae	.LBB40_5
# BB#7:                                 # %if.else.10
	movq	%rdx, 80(%rdi)
	movq	72(%rdx), %rax
	movq	%rdi, 72(%rdx)
	jmp	.LBB40_8
.LBB40_6:                               # %if.then.7
	movq	$0, 80(%rdi)
	movq	%rdi, 296(%rsi)
.LBB40_8:                               # %if.end.12
	movq	%rax, 72(%rdi)
	testq	%rax, %rax
	je	.LBB40_9
# BB#10:                                # %if.else.17
	movq	%rdi, 80(%rax)
	jmp	.LBB40_11
.LBB40_9:                               # %if.then.15
	movq	%rdi, 288(%rsi)
.LBB40_11:                              # %if.end.19
	movq	488(%rsi), %rax
	testq	%rax, %rax
	je	.LBB40_13
# BB#12:                                # %if.then.21
	movups	72(%rax), %xmm0
	movups	%xmm0, 376(%rsi)
.LBB40_13:                              # %if.end.29
	retq
.Lfunc_end40:
	.size	alloc_link_chunk, .Lfunc_end40-alloc_link_chunk
	.cfi_endproc

	.globl	alloc_init_chunk
	.align	16, 0x90
	.type	alloc_init_chunk,@function
alloc_init_chunk:                       # @alloc_init_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%r8, %r8
	je	.LBB41_2
# BB#1:                                 # %if.then
	incl	96(%r8)
.LBB41_2:                               # %if.end
	movq	%rsi, (%rbx)
	leaq	32(%rsi), %r9
	movq	%r9, 16(%rbx)
	movq	%r9, 8(%rbx)
	movq	%r9, 24(%rbx)
	movq	%rdx, 64(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 40(%rbx)
	movq	%r8, 88(%rbx)
	movl	$0, 96(%rbx)
	movl	$0, 100(%rbx)
	movq	%r9, 144(%rbx)
	testl	%ecx, %ecx
	je	.LBB41_4
# BB#3:                                 # %land.lhs.true
	movq	%rdx, %rax
	subq	%r9, %rax
	cmpq	$82, %rax
	jbe	.LBB41_4
# BB#5:                                 # %if.end.22
	movabsq	$-2912643801112034465, %rcx # imm = 0xD79435E50D79435F
	mulq	%rcx
	movq	%rdx, %rax
	shrq	$6, %rax
	andl	$-64, %edx
	leaq	(%r9,%rdx), %rcx
	movq	%rcx, 56(%rbx)
	movq	%rcx, 128(%rbx)
	shll	$3, %eax
	movl	%eax, 136(%rbx)
	leaq	(%rax,%rcx), %rdi
	movq	%rdi, 152(%rbx)
	movq	%rdi, 104(%rbx)
	movq	%rcx, 48(%rbx)
	leaq	255(%r9,%rdx), %rdx
	subq	%rsi, %rdx
	sarq	$8, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB41_6
.LBB41_4:                               # %if.end.22.thread
	movq	%rdx, 56(%rbx)
	movq	$0, 104(%rbx)
	movq	$0, 128(%rbx)
	movl	$0, 136(%rbx)
	movq	$0, 152(%rbx)
	movq	%rdx, 48(%rbx)
.LBB41_6:                               # %alloc_init_free_strings.exit
	movl	$0, 112(%rbx)
	popq	%rbx
	retq
.Lfunc_end41:
	.size	alloc_init_chunk, .Lfunc_end41-alloc_init_chunk
	.cfi_endproc

	.globl	alloc_init_free_strings
	.align	16, 0x90
	.type	alloc_init_free_strings,@function
alloc_init_free_strings:                # @alloc_init_free_strings
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB42_2
# BB#1:                                 # %if.then
	movl	$255, %edx
	addq	56(%rbx), %rdx
	subq	(%rbx), %rdx
	sarq	$8, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB42_2:                               # %if.end
	movl	$0, 112(%rbx)
	popq	%rbx
	retq
.Lfunc_end42:
	.size	alloc_init_free_strings, .Lfunc_end42-alloc_init_free_strings
	.cfi_endproc

	.globl	alloc_unlink_chunk
	.align	16, 0x90
	.type	alloc_unlink_chunk,@function
alloc_unlink_chunk:                     # @alloc_unlink_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rax
	movq	80(%rdi), %rcx
	testq	%rax, %rax
	je	.LBB43_1
# BB#2:                                 # %if.else
	movq	%rcx, 80(%rax)
	movq	80(%rdi), %rcx
	jmp	.LBB43_3
.LBB43_1:                               # %if.then
	movq	%rcx, 288(%rsi)
.LBB43_3:                               # %if.end
	testq	%rcx, %rcx
	je	.LBB43_4
# BB#5:                                 # %if.else.8
	movq	%rax, 72(%rcx)
	jmp	.LBB43_6
.LBB43_4:                               # %if.then.6
	movq	%rax, 296(%rsi)
.LBB43_6:                               # %if.end.12
	movq	488(%rsi), %rax
	testq	%rax, %rax
	je	.LBB43_9
# BB#7:                                 # %if.then.14
	movups	72(%rax), %xmm0
	movups	%xmm0, 376(%rsi)
	cmpq	%rdi, %rax
	jne	.LBB43_9
# BB#8:                                 # %if.then.24
	movq	$0, 488(%rsi)
	movq	$0, 352(%rsi)
	movq	$0, 328(%rsi)
.LBB43_9:                               # %if.end.29
	retq
.Lfunc_end43:
	.size	alloc_unlink_chunk, .Lfunc_end43-alloc_unlink_chunk
	.cfi_endproc

	.globl	chunk_locate_ptr
	.align	16, 0x90
	.type	chunk_locate_ptr,@function
chunk_locate_ptr:                       # @chunk_locate_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rcx
	testq	%rcx, %rcx
	jne	.LBB44_4
# BB#1:                                 # %if.then
	movq	(%rsi), %rdx
	movq	288(%rdx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB44_15
# BB#2:                                 # %if.end
	movq	296(%rdx), %rax
	cmpq	%rdi, 8(%rax)
	ja	.LBB44_4
# BB#3:                                 # %select.mid
	movq	%rax, %rcx
.LBB44_4:                               # %if.end.10
	cmpq	%rdi, 8(%rcx)
	jbe	.LBB44_8
	.align	16, 0x90
.LBB44_5:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rcx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB44_15
# BB#6:                                 # %do.cond
                                        #   in Loop: Header=BB44_5 Depth=1
	cmpq	%rdi, 8(%rcx)
	ja	.LBB44_5
# BB#7:                                 # %do.end
	cmpq	%rdi, 64(%rcx)
	ja	.LBB44_11
	jmp	.LBB44_15
	.align	16, 0x90
.LBB44_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, 64(%rcx)
	ja	.LBB44_10
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB44_8 Depth=1
	movq	80(%rcx), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	jne	.LBB44_8
	jmp	.LBB44_15
.LBB44_10:                              # %while.end
	xorl	%eax, %eax
	cmpq	%rdi, 8(%rcx)
	ja	.LBB44_15
.LBB44_11:                              # %if.end.31
	movq	%rcx, 8(%rsi)
	movb	$1, %al
	cmpl	$0, 96(%rcx)
	je	.LBB44_14
# BB#12:                                # %land.rhs
	cmpq	%rdi, 24(%rcx)
	ja	.LBB44_14
# BB#13:                                # %land.rhs.35
	cmpq	%rdi, 48(%rcx)
	setbe	%al
.LBB44_14:                              # %land.end.37
	movzbl	%al, %eax
.LBB44_15:                              # %cleanup
	retq
.Lfunc_end44:
	.size	chunk_locate_ptr, .Lfunc_end44-chunk_locate_ptr
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_obj,@function
alloc_obj:                              # @alloc_obj
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp169:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp170:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp171:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp172:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp174:
	.cfi_def_cfa_offset 80
.Ltmp175:
	.cfi_offset %rbx, -56
.Ltmp176:
	.cfi_offset %r12, -48
.Ltmp177:
	.cfi_offset %r13, -40
.Ltmp178:
	.cfi_offset %r14, -32
.Ltmp179:
	.cfi_offset %r15, -24
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	$4294967288, %r15d      # imm = 0xFFFFFFF8
	movl	220(%rbx), %eax
	testb	$1, %cl
	jne	.LBB45_2
# BB#1:                                 # %entry
	cmpq	%rbp, %rax
	jbe	.LBB45_2
# BB#5:                                 # %if.else
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	488(%rbx), %r14
	leal	31(%rbp), %r13d
	cmpq	$801, %rbp              # imm = 0x321
	jb	.LBB45_20
# BB#6:                                 # %if.else
	andl	$2, %ecx
	je	.LBB45_20
# BB#7:                                 # %if.then.34
	leal	7(%rbp), %edx
	andl	$-8, %edx
	leal	24(%rdx), %r8d
	movl	%r8d, %edi
	shrl	$3, %edi
	addl	$7, %edi
	andl	$1073741816, %edi       # imm = 0x3FFFFFF8
	cmpl	672(%rbx), %edx
	ja	.LBB45_20
# BB#8:                                 # %while.cond.preheader.i
	leaq	1488(%rbx), %rax
	movq	(%rax), %rsi
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	je	.LBB45_19
# BB#9:
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leal	24(%rdi,%rdx), %r9d
	movl	$-1, %r11d
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB45_10:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rsi), %ebp
	leal	7(%rbp), %edi
	andl	$-8, %edi
	cmpl	%edx, %edi
	je	.LBB45_13
# BB#11:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB45_10 Depth=1
	cmpl	%r8d, %edi
	jb	.LBB45_17
# BB#12:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB45_10 Depth=1
	cmpl	%r11d, %edi
	jae	.LBB45_17
.LBB45_13:                              # %if.then.26.i
                                        #   in Loop: Header=BB45_10 Depth=1
	cmpl	%r9d, %ebp
	movq	%rax, %r10
	movl	%ebp, %r11d
	movq	%rsi, %r12
	jbe	.LBB45_14
.LBB45_17:                              # %cleanup.thread.i
                                        #   in Loop: Header=BB45_10 Depth=1
	movq	%rsi, %rax
	cmpl	%ecx, %edi
	cmoval	%edi, %ecx
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB45_10
# BB#18:                                # %while.end.i
	testq	%r12, %r12
	movq	16(%rsp), %rbp          # 8-byte Reload
	jne	.LBB45_15
.LBB45_19:                              # %if.then.42.i
	movl	%ecx, 672(%rbx)
	jmp	.LBB45_20
.LBB45_2:                               # %if.then
	movq	%rbp, %rax
	leaq	31(%rax), %rbp
	movq	%rax, %r13
	andq	$-8, %rbp
	leaq	32(%rbp), %rsi
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	movl	$.L.str.7, %ecx
	movq	%rbx, %rdi
	callq	alloc_acquire_chunk
	addq	$7, %r15
	cmpq	%r15, %rbp
	ja	.LBB45_55
# BB#3:                                 # %if.then
	testq	%rax, %rax
	je	.LBB45_55
# BB#4:                                 # %cleanup.thread
	movq	24(%rax), %r12
	leaq	(%rbp,%r12), %rcx
	movq	%rcx, 24(%rax)
	movl	$1, (%r12)
	movl	%r13d, 4(%r12)
	jmp	.LBB45_54
.LBB45_14:
	movq	%rsi, %r12
	movq	%rax, %r10
	movq	16(%rsp), %rbp          # 8-byte Reload
.LBB45_15:                              # %large_freelist_alloc.exit
	movq	(%r12), %rax
	movq	%rax, (%r10)
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	trim_obj
	movl	%ebp, -20(%r12)
	testq	%r12, %r12
	je	.LBB45_20
# BB#16:                                # %if.then.39
	addq	$-24, %r12
	movq	8(%rsp), %r14           # 8-byte Reload
	jmp	.LBB45_54
.LBB45_20:                              # %if.end.41
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	andq	%r15, %r13
	testq	%r14, %r14
	jne	.LBB45_23
# BB#21:                                # %if.then.44
	movq	288(%rbx), %rbp
	movq	%rbp, 488(%rbx)
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	je	.LBB45_23
# BB#22:                                # %if.then.i
	leaq	304(%rbx), %rdi
	movl	$184, %edx
	movq	%rbp, %rsi
	callq	memcpy
	movq	%rbp, %r14
.LBB45_23:                              # %do.body.preheader
	leaq	24(%r13), %r15
	leaq	304(%rbx), %r12
	.align	16, 0x90
.LBB45_24:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	328(%rbx), %rax
	movq	352(%rbx), %rcx
	subq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB45_38
# BB#25:                                # %if.else.54
                                        #   in Loop: Header=BB45_24 Depth=1
	cmpl	$0, 272(%rbx)
	je	.LBB45_27
# BB#26:                                # %if.then.56
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	%rbx, %rdi
	callq	*56(%rbx)
	movq	328(%rbx), %rax
	movq	352(%rbx), %rcx
	subq	%rax, %rcx
	cmpq	%r15, %rcx
	ja	.LBB45_38
.LBB45_27:                              # %if.end.71
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	384(%rbx), %rbp
	movq	488(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB45_29
# BB#28:                                # %if.then.i.13
                                        #   in Loop: Header=BB45_24 Depth=1
	movl	$184, %edx
	movq	%r12, %rsi
	callq	memcpy
.LBB45_29:                              # %alloc_close_chunk.exit
                                        #   in Loop: Header=BB45_24 Depth=1
	testq	%rbp, %rbp
	je	.LBB45_31
# BB#30:                                # %if.end.78.thread
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	%rbp, 488(%rbx)
	jmp	.LBB45_32
	.align	16, 0x90
.LBB45_31:                              # %if.end.78
                                        #   in Loop: Header=BB45_24 Depth=1
	movq	288(%rbx), %rbp
	movq	%rbp, 488(%rbx)
	testq	%rbp, %rbp
	movl	$0, %eax
	je	.LBB45_33
.LBB45_32:                              # %if.then.i.17
                                        #   in Loop: Header=BB45_24 Depth=1
	movl	$184, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	%rbp, %rax
.LBB45_33:                              # %alloc_open_chunk.exit18
                                        #   in Loop: Header=BB45_24 Depth=1
	cmpq	%r14, %rax
	jne	.LBB45_24
# BB#34:                                # %if.then.84
	movl	216(%rbx), %esi
	movl	$1, %edx
	movl	$.L.str.8, %ecx
	movq	%rbx, %rdi
	callq	alloc_acquire_chunk
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB45_39
# BB#35:                                # %if.then.i.19
	movq	488(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB45_37
# BB#36:                                # %if.then.i.i
	movl	$184, %edx
	movq	%r12, %rsi
	callq	memcpy
.LBB45_37:                              # %if.then.89
	movq	%rbp, 488(%rbx)
	movl	$184, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movq	24(%rbp), %rax
.LBB45_38:                              # %if.then.94
	leaq	(%r13,%rax), %rcx
	movq	%rcx, 328(%rbx)
	movq	8(%rsp), %r14           # 8-byte Reload
.LBB45_53:                              # %if.end.108
	movl	$0, (%rax)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 4(%rax)
	movq	%rax, %r12
.LBB45_54:                              # %done
	movq	%r14, 8(%r12)
	addq	$24, %r12
.LBB45_55:                              # %cleanup.140
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_39:                              # %if.else.98
	xorl	%r12d, %r12d
	cmpl	$0, 272(%rbx)
	je	.LBB45_55
# BB#40:                                # %lor.lhs.false.101
	movq	288(%rbx), %r13
	xorl	%r12d, %r12d
	testq	%r13, %r13
	je	.LBB45_55
# BB#41:
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	55(%rax), %r8d
	andl	$-8, %r8d
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	movl	$st_free, %r9d
	movabsq	$8589934584, %r14       # imm = 0x1FFFFFFF8
	xorl	%eax, %eax
	.align	16, 0x90
.LBB45_42:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB45_43 Depth 2
	movq	8(%r13), %rcx
	movq	24(%r13), %rdx
	xorl	%ebp, %ebp
	cmpq	%rdx, %rcx
	movl	$0, %r15d
	jae	.LBB45_51
	.align	16, 0x90
.LBB45_43:                              # %for.body.10.i
                                        #   Parent Loop BB45_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rcx), %esi
	cmpq	%r9, 8(%rcx)
	je	.LBB45_45
# BB#44:                                #   in Loop: Header=BB45_43 Depth=2
	xorl	%ebp, %ebp
	jmp	.LBB45_47
	.align	16, 0x90
.LBB45_45:                              # %if.then.i.7
                                        #   in Loop: Header=BB45_43 Depth=2
	testq	%rbp, %rbp
	movl	%r15d, %edi
	cmovel	%r12d, %edi
	cmoveq	%rcx, %rbp
	leal	31(%rsi), %r15d
	andl	$-8, %r15d
	addl	%edi, %r15d
	testq	%rbp, %rbp
	je	.LBB45_47
# BB#46:                                # %if.then.i.7
                                        #   in Loop: Header=BB45_43 Depth=2
	cmpl	%r8d, %r15d
	jae	.LBB45_48
	.align	16, 0x90
.LBB45_47:                              # %for.inc.i
                                        #   in Loop: Header=BB45_43 Depth=2
	addq	$31, %rsi
	andq	%r14, %rsi
	addq	%rsi, %rcx
	cmpq	%rdx, %rcx
	jb	.LBB45_43
.LBB45_48:                              # %for.end.i
                                        #   in Loop: Header=BB45_42 Depth=1
	cmpl	%r8d, %r15d
	jb	.LBB45_51
# BB#49:                                # %for.end.i
                                        #   in Loop: Header=BB45_42 Depth=1
	testq	%rbp, %rbp
	je	.LBB45_51
# BB#50:                                # %if.then.45.i
                                        #   in Loop: Header=BB45_42 Depth=1
	movl	%r15d, %eax
	leaq	(%rax,%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	remove_range_from_freelist
	movq	$st_free, 8(%rbp)
	addl	$-24, %r15d
	movl	%r15d, 4(%rbp)
	leaq	24(%rbp), %rsi
	movq	%rbx, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%r13, %rcx
	callq	trim_obj
	movl	$st_free, %r9d
	movl	4(%rsp), %r8d           # 4-byte Reload
	movq	%rbp, %rax
.LBB45_51:                              # %for.inc.58.i
                                        #   in Loop: Header=BB45_42 Depth=1
	movq	80(%r13), %r13
	testq	%r13, %r13
	jne	.LBB45_42
# BB#52:                                # %scavenge_low_free.exit
	xorl	%r12d, %r12d
	testq	%rax, %rax
	movq	8(%rsp), %r14           # 8-byte Reload
	je	.LBB45_55
	jmp	.LBB45_53
.Lfunc_end45:
	.size	alloc_obj, .Lfunc_end45-alloc_obj
	.cfi_endproc

	.align	16, 0x90
	.type	trim_obj,@function
trim_obj:                               # @trim_obj
	.cfi_startproc
# BB#0:                                 # %entry
	leal	7(%rdx), %eax
	andl	$-8, %eax
	movl	-20(%rsi), %r9d
	addl	$7, %r9d
	andl	$-8, %r9d
	movl	%r9d, %r8d
	subl	%eax, %r8d
	subl	%eax, %r9d
	movl	%edx, -20(%rsi)
	je	.LBB46_33
# BB#1:                                 # %if.end
	leaq	(%rsi,%rax), %rdx
	testb	$1, -24(%rsi)
	je	.LBB46_19
# BB#2:                                 # %if.then.17
	testq	%rcx, %rcx
	jne	.LBB46_28
# BB#3:                                 # %if.then.19
	movq	%rdi, 496(%rdi)
	movq	504(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB46_9
# BB#4:                                 # %land.lhs.true
	cmpq	8(%rcx), %rsi
	jb	.LBB46_12
# BB#5:                                 # %land.lhs.true.28
	cmpq	64(%rcx), %rsi
	jae	.LBB46_12
# BB#6:                                 # %land.lhs.true.33
	cmpl	$0, 96(%rcx)
	je	.LBB46_28
# BB#7:                                 # %land.lhs.true.38
	cmpq	24(%rcx), %rsi
	jb	.LBB46_28
# BB#8:                                 # %land.lhs.true.43
	cmpq	48(%rcx), %rsi
	jb	.LBB46_12
	jmp	.LBB46_28
.LBB46_9:                               # %if.then.i
	movq	288(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB46_18
# BB#10:                                # %if.end.i
	movq	296(%rdi), %rax
	cmpq	%rsi, 8(%rax)
	ja	.LBB46_12
# BB#11:                                # %select.mid
	movq	%rax, %rcx
.LBB46_12:                              # %if.end.10.i
	cmpq	%rsi, 8(%rcx)
	jbe	.LBB46_16
	.align	16, 0x90
.LBB46_13:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB46_18
# BB#14:                                # %do.cond.i
                                        #   in Loop: Header=BB46_13 Depth=1
	cmpq	%rsi, 8(%rcx)
	ja	.LBB46_13
# BB#15:                                # %do.end.i
	cmpq	%rsi, 64(%rcx)
	jbe	.LBB46_18
	jmp	.LBB46_25
	.align	16, 0x90
.LBB46_16:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, 64(%rcx)
	ja	.LBB46_24
# BB#17:                                # %while.body.i
                                        #   in Loop: Header=BB46_16 Depth=1
	movq	80(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB46_16
	jmp	.LBB46_18
.LBB46_24:                              # %while.end.i
	cmpq	%rsi, 8(%rcx)
	ja	.LBB46_18
.LBB46_25:                              # %if.end.31.i
	movq	%rcx, 504(%rdi)
	cmpl	$0, 96(%rcx)
	je	.LBB46_28
# BB#26:                                # %land.rhs.i
	cmpq	%rsi, 24(%rcx)
	ja	.LBB46_28
# BB#27:                                # %land.rhs.35.i
	cmpq	%rsi, 48(%rcx)
	jbe	.LBB46_28
.LBB46_18:                              # %if.end.58
	movl	$0, -24(%rsi)
.LBB46_19:                              # %if.end.71
	addl	$-24, %r8d
	movq	$st_free, 8(%rdx)
	movl	%r8d, 4(%rdx)
	movl	$0, (%rdx)
	cmpl	$8, %r8d
	jb	.LBB46_32
# BB#20:                                # %if.then.91
	cmpq	320(%rdi), %rdx
	jb	.LBB46_22
# BB#21:                                # %if.then.94
	movl	%r8d, %eax
	leaq	(%rax,%rdx), %rax
	movq	%rax, 320(%rdi)
.LBB46_22:                              # %if.end.99
	addl	$-17, %r9d
	andl	$-8, %r9d
	cmpl	$800, %r8d              # imm = 0x320
	ja	.LBB46_29
# BB#23:                                # %if.then.102
	leaq	680(%rdi,%r9), %rcx
	jmp	.LBB46_31
.LBB46_28:                              # %if.then.56
	movq	%rdx, 24(%rcx)
	retq
.LBB46_32:                              # %if.else.121
	movl	%r8d, %eax
	movq	528(%rdi), %rcx
	leaq	24(%rax,%rcx), %rax
	movq	%rax, 528(%rdi)
.LBB46_33:                              # %cleanup
	retq
.LBB46_29:                              # %if.else
	leaq	1488(%rdi), %rcx
	cmpl	672(%rdi), %r9d
	jbe	.LBB46_31
# BB#30:                                # %if.then.113
	movl	%r9d, 672(%rdi)
.LBB46_31:                              # %if.end.116
	movq	(%rcx), %rax
	movq	%rax, 24(%rdx)
	addq	$24, %rdx
	movq	%rdx, (%rcx)
	movq	%rdi, 496(%rdi)
	retq
.Lfunc_end46:
	.size	trim_obj, .Lfunc_end46-trim_obj
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_acquire_chunk,@function
alloc_acquire_chunk:                    # @alloc_acquire_chunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp182:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp183:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp184:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp185:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp187:
	.cfi_def_cfa_offset 64
.Ltmp188:
	.cfi_offset %rbx, -56
.Ltmp189:
	.cfi_offset %r12, -48
.Ltmp190:
	.cfi_offset %r13, -40
.Ltmp191:
	.cfi_offset %r14, -32
.Ltmp192:
	.cfi_offset %r15, -24
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$4294967232, %eax       # imm = 0xFFFFFFC0
	leaq	63(%rax), %rax
	andq	%r14, %rax
	xorl	%ebx, %ebx
	cmpq	%r14, %rax
	jne	.LBB47_27
# BB#1:                                 # %if.end
	movq	200(%r15), %rbp
	movl	$st_chunk, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	gs_raw_alloc_struct_immovable
	movq	%rax, %rbx
	movq	248(%r15), %rax
	testq	%rax, %rax
	je	.LBB47_6
# BB#2:                                 # %if.then.5
	movq	280(%r15), %rcx
	cmpq	%rcx, 512(%r15)
	jb	.LBB47_6
# BB#3:                                 # %if.then.8
	addq	%r14, 264(%r15)
	cmpq	240(%r15), %rcx
	jae	.LBB47_4
# BB#5:                                 # %do.end
	movl	256(%r15), %ecx
	movl	%ecx, (%rax)
.LBB47_6:                               # %if.end.20
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	*8(%rbp)
	movq	%rax, %rcx
	testq	%rbx, %rbx
	je	.LBB47_8
# BB#7:                                 # %if.end.20
	testq	%rcx, %rcx
	je	.LBB47_8
# BB#9:                                 # %if.end.35
	leaq	(%rcx,%r14), %rdx
	movq	%rcx, (%rbx)
	leaq	32(%rcx), %rsi
	movq	%rsi, 16(%rbx)
	movq	%rsi, 8(%rbx)
	movq	%rsi, 24(%rbx)
	movq	%rdx, 64(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 88(%rbx)
	movl	$0, 96(%rbx)
	movl	$0, 100(%rbx)
	movq	%rsi, 144(%rbx)
	testl	%r13d, %r13d
	je	.LBB47_11
# BB#10:                                # %land.lhs.true.i
	movq	%rdx, %rax
	subq	%rsi, %rax
	cmpq	$82, %rax
	jbe	.LBB47_11
# BB#12:                                # %if.end.22.i
	movabsq	$-2912643801112034465, %rdx # imm = 0xD79435E50D79435F
	mulq	%rdx
	shrq	$6, %rdx
	leal	(,%rdx,8), %eax
	shlq	$6, %rdx
	movl	$4294967232, %edi       # imm = 0xFFFFFFC0
	andq	%rdi, %rdx
	addq	%rdx, %rsi
	movq	%rsi, 56(%rbx)
	movq	%rsi, 128(%rbx)
	movl	%eax, 136(%rbx)
	leaq	(%rax,%rsi), %rdi
	movq	%rdi, 152(%rbx)
	movq	%rdi, 104(%rbx)
	movq	%rsi, 48(%rbx)
	movl	$255, %edx
	subq	%rcx, %rdx
	addq	%rsi, %rdx
	sarq	$8, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	8(%rbx), %rsi
	jmp	.LBB47_13
.LBB47_8:                               # %if.then.28
	movq	%rbp, %rdi
	movq	%rcx, %rsi
	movq	%r12, %rdx
	callq	*24(%rbp)
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*24(%rbp)
	movq	%r14, 264(%r15)
	xorl	%ebx, %ebx
	jmp	.LBB47_27
.LBB47_11:                              # %if.end.22.thread.i
	movq	%rdx, 56(%rbx)
	movq	$0, 104(%rbx)
	movq	$0, 128(%rbx)
	movl	$0, 136(%rbx)
	movq	$0, 152(%rbx)
	movq	%rdx, 48(%rbx)
.LBB47_13:                              # %alloc_init_chunk.exit
	movl	$0, 112(%rbx)
	movq	296(%r15), %rax
	testq	%rax, %rax
	je	.LBB47_15
# BB#14:                                # %land.lhs.true.i.44
	cmpq	48(%rax), %rsi
	jae	.LBB47_19
.LBB47_15:                              # %if.else.i
	movq	288(%r15), %rcx
	jmp	.LBB47_16
	.align	16, 0x90
.LBB47_18:                              # %for.inc.i
                                        #   in Loop: Header=BB47_16 Depth=1
	movq	80(%rcx), %rcx
.LBB47_16:                              # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB47_19
# BB#17:                                # %land.rhs.i
                                        #   in Loop: Header=BB47_16 Depth=1
	cmpq	48(%rcx), %rsi
	jae	.LBB47_18
# BB#20:                                # %if.else.10.i
	movq	%rcx, 80(%rbx)
	movq	72(%rcx), %rax
	movq	%rbx, 72(%rcx)
	jmp	.LBB47_21
.LBB47_19:                              # %if.then.7.i
	movq	$0, 80(%rbx)
	movq	%rbx, 296(%r15)
.LBB47_21:                              # %if.end.12.i
	movq	%rax, 72(%rbx)
	testq	%rax, %rax
	je	.LBB47_22
# BB#23:                                # %if.else.17.i
	movq	%rbx, 80(%rax)
	jmp	.LBB47_24
.LBB47_22:                              # %if.then.15.i
	movq	%rbx, 288(%r15)
.LBB47_24:                              # %if.end.19.i
	movq	488(%r15), %rax
	testq	%rax, %rax
	je	.LBB47_26
# BB#25:                                # %if.then.21.i
	movups	72(%rax), %xmm0
	movups	%xmm0, 376(%r15)
.LBB47_26:                              # %alloc_link_chunk.exit
	movq	512(%r15), %rax
	leaq	184(%r14,%rax), %rax
	movq	%rax, 512(%r15)
	jmp	.LBB47_27
.LBB47_4:                               # %if.then.14
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*24(%rbp)
	xorl	%ebx, %ebx
.LBB47_27:                              # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	alloc_acquire_chunk, .Lfunc_end47-alloc_acquire_chunk
	.cfi_endproc

	.align	16, 0x90
	.type	remove_range_from_freelist,@function
remove_range_from_freelist:             # @remove_range_from_freelist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp195:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp196:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp197:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp198:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 56
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp200:
	.cfi_def_cfa_offset 480
.Ltmp201:
	.cfi_offset %rbx, -56
.Ltmp202:
	.cfi_offset %r12, -48
.Ltmp203:
	.cfi_offset %r13, -40
.Ltmp204:
	.cfi_offset %r14, -32
.Ltmp205:
	.cfi_offset %r15, -24
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	xorl	%eax, %eax
	movq	%rbx, %r10
	subq	%r15, %r10
	je	.LBB48_14
# BB#1:
	movq	%r10, (%rsp)            # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	$-1, %r13d
	movl	$102, %esi
	movabsq	$8589934584, %rdx       # imm = 0x1FFFFFFF8
	movq	%rbx, %r12
	.align	16, 0x90
.LBB48_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%r12), %ebp
	leal	7(%rbp), %r14d
	shrl	$3, %r14d
	cmpq	$800, %rbp              # imm = 0x320
	movl	$101, %eax
	cmoval	%eax, %r14d
	movl	%esi, %eax
	subl	%r14d, %eax
	jle	.LBB48_17
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB48_2 Depth=1
	testl	%r14d, %r14d
	je	.LBB48_22
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB48_2 Depth=1
	movl	%r14d, %ecx
	leaq	16(%rsp,%rcx,4), %rdi
	cmpl	$101, %esi
	jg	.LBB48_15
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB48_2 Depth=1
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	movabsq	$8589934584, %rdx       # imm = 0x1FFFFFFF8
	jmp	.LBB48_16
.LBB48_15:                              # %if.else
                                        #   in Loop: Header=BB48_2 Depth=1
	movl	$0, (%rdi)
.LBB48_16:                              # %if.end.11
                                        #   in Loop: Header=BB48_2 Depth=1
	movl	%r14d, %esi
.LBB48_17:                              # %if.end.11
                                        #   in Loop: Header=BB48_2 Depth=1
	movl	%r14d, %eax
	subl	%r13d, %eax
	jle	.LBB48_18
# BB#19:                                # %if.then.14
                                        #   in Loop: Header=BB48_2 Depth=1
	testl	%r13d, %r13d
	movl	%r14d, %ecx
	js	.LBB48_21
# BB#20:                                # %if.then.17
                                        #   in Loop: Header=BB48_2 Depth=1
	incl	%r13d
	movslq	%r13d, %rcx
	leaq	16(%rsp,%rcx,4), %rdi
	movslq	%eax, %rdx
	shlq	$2, %rdx
	movl	%esi, %r13d
	xorl	%esi, %esi
	callq	memset
	movl	%r13d, %esi
	movabsq	$8589934584, %rdx       # imm = 0x1FFFFFFF8
	movl	%r14d, %ecx
	jmp	.LBB48_21
	.align	16, 0x90
.LBB48_18:                              #   in Loop: Header=BB48_2 Depth=1
	movl	%r13d, %ecx
.LBB48_21:                              # %if.end.26
                                        #   in Loop: Header=BB48_2 Depth=1
	movl	%r14d, %eax
	incl	16(%rsp,%rax,4)
	movl	%ecx, %r13d
.LBB48_22:                              # %for.inc
                                        #   in Loop: Header=BB48_2 Depth=1
	addq	$31, %rbp
	andq	%rdx, %rbp
	addq	%rbp, %r12
	cmpq	%r15, %r12
	jne	.LBB48_2
# BB#6:                                 # %for.cond.32.preheader
	xorl	%eax, %eax
	cmpl	%r13d, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	(%rsp), %r10            # 8-byte Reload
	jg	.LBB48_14
# BB#7:                                 # %for.body.35.lr.ph
	movslq	%esi, %r9
	movslq	%r13d, %r8
	xorl	%eax, %eax
	.align	16, 0x90
.LBB48_8:                               # %for.body.35
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_10 Depth 2
	movl	16(%rsp,%r9,4), %esi
	testl	%esi, %esi
	je	.LBB48_13
# BB#9:                                 # %if.end.39
                                        #   in Loop: Header=BB48_8 Depth=1
	leaq	680(%rdi,%r9,8), %rcx
	movq	680(%rdi,%r9,8), %rbp
	jmp	.LBB48_10
	.align	16, 0x90
.LBB48_23:                              # %if.else.61
                                        #   in Loop: Header=BB48_10 Depth=2
	movq	%rbp, %rcx
	movq	(%rcx), %rbp
.LBB48_10:                              # %for.cond.42.outer
                                        #   Parent Loop BB48_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, %rbp
	jb	.LBB48_23
# BB#11:                                # %for.cond.42.outer
                                        #   in Loop: Header=BB48_10 Depth=2
	cmpq	%r15, %rbp
	jae	.LBB48_23
# BB#12:                                # %if.then.47
                                        #   in Loop: Header=BB48_10 Depth=2
	movq	(%rbp), %rdx
	movq	%rdx, (%rcx)
	movl	-20(%rbp), %ebp
	addl	$7, %ebp
	andl	$-8, %ebp
	addl	%ebp, %eax
	decl	%esi
	movq	%rdx, %rbp
	jne	.LBB48_10
.LBB48_13:                              # %cleanup
                                        #   in Loop: Header=BB48_8 Depth=1
	cmpq	%r8, %r9
	leaq	1(%r9), %r9
	jl	.LBB48_8
.LBB48_14:                              # %for.end.68
	movl	%eax, %eax
	addq	%rax, %r10
	addq	%r10, 528(%rdi)
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	remove_range_from_freelist, .Lfunc_end48-remove_range_from_freelist
	.cfi_endproc

	.type	hdr_id,@object          # @hdr_id
	.bss
	.globl	hdr_id
	.align	8
hdr_id:
	.quad	0                       # 0x0
	.size	hdr_id, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_ref_memory"
	.size	.L.str, 14

	.type	st_ref_memory,@object   # @st_ref_memory
	.section	.rodata,"a",@progbits
	.globl	st_ref_memory
	.align	8
st_ref_memory:
	.long	1496                    # 0x5d8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	ref_memory_enum_ptrs
	.quad	ref_memory_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_ref_memory, 64

	.type	gs_ref_memory_procs,@object # @gs_ref_memory_procs
	.globl	gs_ref_memory_procs
	.align	8
gs_ref_memory_procs:
	.quad	i_alloc_bytes_immovable
	.quad	i_resize_object
	.quad	i_free_object
	.quad	i_stable
	.quad	i_status
	.quad	i_free_all
	.quad	i_consolidate_free
	.quad	i_alloc_bytes
	.quad	i_alloc_struct
	.quad	i_alloc_struct_immovable
	.quad	i_alloc_byte_array
	.quad	i_alloc_byte_array_immovable
	.quad	i_alloc_struct_array
	.quad	i_alloc_struct_array_immovable
	.quad	i_object_size
	.quad	i_object_type
	.quad	i_alloc_string
	.quad	i_alloc_string_immovable
	.quad	i_resize_string
	.quad	i_free_string
	.quad	i_register_root
	.quad	i_unregister_root
	.quad	i_enable_free
	.size	gs_ref_memory_procs, 184

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"ialloc_solo(allocation failure)"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"chunk_t"
	.size	.L.str.2, 8

	.type	chunk_reloc_ptrs,@object # @chunk_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
chunk_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	chunk_enum_ptrs
	.size	chunk_reloc_ptrs, 24

	.type	st_chunk,@object        # @st_chunk
	.globl	st_chunk
	.align	8
st_chunk:
	.long	184                     # 0xb8
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	chunk_reloc_ptrs
	.size	st_chunk, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"alloc_free_chunk(data)"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"alloc_free_chunk(chunk struct)"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ialloc_solo(chunk)"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ialloc_solo"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"large object chunk"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"chunk"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"large string chunk"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"i_register_root"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"i_unregister_root"
	.size	.L.str.11, 18

	.type	chunk_enum_ptrs,@object # @chunk_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
chunk_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.short	80                      # 0x50
	.size	chunk_enum_ptrs, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
