	.text
	.file	"zpacked.bc"
	.globl	zpackedarray
	.align	16, 0x90
	.type	zpackedarray,@function
zpackedarray:                           # @zpackedarray
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
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %r15
	movl	$-15, %eax
	testq	%r15, %r15
	js	.LBB0_8
# BB#3:                                 # %if.end.5
	leaq	624(%r14), %r12
	movq	%rbx, %rax
	subq	632(%r14), %rax
	sarq	$4, %rax
	cmpq	%rax, %r15
	jle	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	%r12, %rdi
	callq	ref_stack_count
	movl	%eax, %ecx
	movl	$-17, %eax
	cmpq	%rcx, %r15
	jge	.LBB0_8
# BB#5:                                 # %land.lhs.true.if.end.21_crit_edge
	movq	8(%rbx), %r15
	movq	(%r12), %rbx
.LBB0_6:                                # %if.end.21
	addq	$-16, %rbx
	movq	%rbx, 624(%r14)
	leaq	8(%r14), %rcx
	leaq	8(%rsp), %rdi
	movl	$.L.str, %r8d
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	make_packed_array
	movq	624(%r14), %rcx
	addq	$16, %rcx
	movq	%rcx, 624(%r14)
	testl	%eax, %eax
	js	.LBB0_8
# BB#7:                                 # %if.then.37
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	jmp	.LBB0_8
.LBB0_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_8:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	zpackedarray, .Lfunc_end0-zpackedarray
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.short	24576                   # 0x6000
	.short	24576                   # 0x6000
	.short	24576                   # 0x6000
	.short	24576                   # 0x6000
	.short	24576                   # 0x6000
	.short	24576                   # 0x6000
	.short	24576                   # 0x6000
	.short	24576                   # 0x6000
	.text
	.globl	make_packed_array
	.align	16, 0x90
	.type	make_packed_array,@function
make_packed_array:                      # @make_packed_array
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
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 144
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movl	%ebx, 48(%rsp)          # 4-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	(%rcx), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	callq	imemory_space
	movl	%eax, 52(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	movl	$0, %ebp
	je	.LBB1_19
# BB#1:                                 # %for.body.lr.ph.lr.ph
	xorl	%ebp, %ebp
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r13d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB1_2:                                # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	leal	-1(%r13), %ebx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_3:                                # %for.body
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r12d
	leal	(%rbp,%r12), %r14d
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	ref_stack_index
	movzwl	(%rax), %edx
	cmpl	$5375, %edx             # imm = 0x14FF
	ja	.LBB1_8
# BB#4:                                 # %cond.end
                                        #   in Loop: Header=BB1_3 Depth=2
	movzbl	1(%rax), %ecx
	addl	$-11, %ecx
	cmpl	$9, %ecx
	ja	.LBB1_14
# BB#5:                                 # %cond.end
                                        #   in Loop: Header=BB1_3 Depth=2
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_16:                               # %sw.bb.11
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	8(%rax), %rax
	movl	$2048, %ecx             # imm = 0x800
	addq	%rcx, %rax
	cmpq	$4095, %rax             # imm = 0xFFF
	jbe	.LBB1_12
	jmp	.LBB1_17
.LBB1_6:                                # %sw.bb
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	movq	%rax, %rsi
	callq	names_index
	cmpl	$4094, %eax             # imm = 0xFFE
	jbe	.LBB1_12
	jmp	.LBB1_17
.LBB1_7:                                # %sw.bb.21
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	%edx, %esi
	andl	$12, %esi
	movl	$-7, %ecx
	cmpl	52(%rsp), %esi          # 4-byte Folded Reload
	ja	.LBB1_15
	.align	16, 0x90
.LBB1_8:                                # %sw.bb.29
                                        #   in Loop: Header=BB1_3 Depth=2
	testb	$-128, %dl
	je	.LBB1_17
# BB#9:                                 # %if.end.35
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	4(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB1_11
# BB#10:                                # %cond.true.39
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	%rax, %rdi
	callq	op_find_index
	movzwl	%ax, %ecx
.LBB1_11:                               # %cond.end.45
                                        #   in Loop: Header=BB1_3 Depth=2
	decl	%ecx
	cmpl	$4094, %ecx             # imm = 0xFFE
	ja	.LBB1_17
.LBB1_12:                               # %for.cond.backedge
                                        #   in Loop: Header=BB1_3 Depth=2
	decq	%rbx
	leal	1(%r12), %eax
	cmpl	%eax, %r13d
	jne	.LBB1_3
	jmp	.LBB1_13
	.align	16, 0x90
.LBB1_14:                               # %sw.default
                                        #   in Loop: Header=BB1_2 Depth=1
	andl	$12, %edx
	movl	$-7, %ecx
	cmpl	52(%rsp), %edx          # 4-byte Folded Reload
	movl	%ebx, %r13d
	jbe	.LBB1_18
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_17:                               # %sw.bb.sw.epilog.loopexit_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%ebx, %r13d
.LBB1_18:                               # %sw.epilog
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%r14d, %eax
	subl	%ebp, %eax
	movl	%eax, %ecx
	negl	%ecx
	andl	$3, %ecx
	andl	$3, %eax
	imull	$7, %eax, %eax
	testl	%ebp, %ebp
	cmovel	%ecx, %r15d
	cmovel	%ecx, %eax
	leal	8(%r14,%rax), %ebp
	testl	%r13d, %r13d
	jne	.LBB1_2
	jmp	.LBB1_19
.LBB1_13:
	leal	1(%rbp,%r12), %ebp
.LBB1_19:                               # %for.end
	movl	%ebp, %r14d
	negl	%r14d
	movl	%r14d, %ebx
	andl	$7, %ebx
	leal	(%rbp,%rbx), %ecx
	shrl	$3, %ecx
	leaq	72(%rsp), %rsi
	xorl	%edx, %edx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	callq	gs_alloc_ref_array
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB1_15
# BB#20:                                # %if.end.90
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movabsq	$8589934576, %r9        # imm = 0x1FFFFFFF0
	movq	80(%rsp), %r13
	testl	%r15d, %r15d
	movq	%r13, %rax
	je	.LBB1_31
# BB#21:                                # %for.body.94.lr.ph
	leal	-1(%r15), %edx
	leaq	1(%rdx), %r8
	movq	%r8, %rsi
	andq	%r9, %rsi
	movq	%r8, %rcx
	andq	%r9, %rcx
	je	.LBB1_22
# BB#23:                                # %vector.body.preheader
	leaq	1(%rdx), %rax
	andq	%r9, %rax
	addq	$-16, %rax
	movl	%eax, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%ebp, %ebp
	testb	$3, %dil
	je	.LBB1_26
# BB#24:                                # %vector.body.prol.preheader
	movl	%r15d, %ebx
	andl	$48, %ebx
	addl	$-16, %ebx
	shrl	$4, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%ebp, %ebp
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [24576,24576,24576,24576,24576,24576,24576,24576]
	.align	16, 0x90
.LBB1_25:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%r13,%rbp,2)
	movups	%xmm0, 16(%r13,%rbp,2)
	addq	$16, %rbp
	incq	%rbx
	jne	.LBB1_25
.LBB1_26:                               # %vector.body.preheader.split
	subl	%esi, %r15d
	leaq	(%r13,%rcx,2), %rsi
	cmpq	$48, %rax
	jb	.LBB1_29
# BB#27:                                # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r9, %rdx
	subq	%rbp, %rdx
	leaq	112(%r13,%rbp,2), %rdi
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [24576,24576,24576,24576,24576,24576,24576,24576]
	.align	16, 0x90
.LBB1_28:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rdi)
	movups	%xmm0, -96(%rdi)
	movups	%xmm0, -80(%rdi)
	movups	%xmm0, -64(%rdi)
	movups	%xmm0, -48(%rdi)
	movups	%xmm0, -32(%rdi)
	movups	%xmm0, -16(%rdi)
	movups	%xmm0, (%rdi)
	subq	$-128, %rdi
	addq	$-64, %rdx
	jne	.LBB1_28
	jmp	.LBB1_29
.LBB1_22:
	movq	%r13, %rsi
	xorl	%ecx, %ecx
.LBB1_29:                               # %middle.block
	cmpq	%rcx, %r8
	je	.LBB1_30
	.align	16, 0x90
.LBB1_33:                               # %for.body.94
                                        # =>This Inner Loop Header: Depth=1
	movw	$24576, (%rsi)          # imm = 0x6000
	addq	$2, %rsi
	decl	%r15d
	jne	.LBB1_33
.LBB1_30:                               # %for.cond.92.for.cond.98.preheader_crit_edge
	leaq	(%r13,%r8,2), %rax
.LBB1_31:                               # %for.cond.98.preheader
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	movq	%rax, %r14
	je	.LBB1_48
# BB#32:
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r15d
	movq	32(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB1_64:                               # %for.body.101.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_34 Depth 2
                                        #     Child Loop BB1_62 Depth 2
	leal	-1(%r15), %eax
	negl	%r15d
	movl	%r15d, %ebp
	movq	%rax, %r15
	movq	%r12, %r14
	.align	16, 0x90
.LBB1_34:                               # %for.body.101
                                        #   Parent Loop BB1_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	callq	ref_stack_index
	movq	%rax, %rbx
	movzwl	(%rbx), %eax
	cmpl	$5375, %eax             # imm = 0x14FF
	ja	.LBB1_41
# BB#35:                                # %cond.end.116
                                        #   in Loop: Header=BB1_34 Depth=2
	movzbl	1(%rbx), %ecx
	addl	$-11, %ecx
	cmpl	$9, %ecx
	ja	.LBB1_60
# BB#36:                                # %cond.end.116
                                        #   in Loop: Header=BB1_34 Depth=2
	jmpq	*.LJTI1_1(,%rcx,8)
.LBB1_41:                               # %sw.bb.158
                                        #   in Loop: Header=BB1_34 Depth=2
	testb	$-128, %al
	je	.LBB1_60
# BB#42:                                # %if.end.166
                                        #   in Loop: Header=BB1_34 Depth=2
	movl	4(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB1_44
# BB#43:                                # %cond.true.171
                                        #   in Loop: Header=BB1_34 Depth=2
	movq	%rbx, %rdi
	callq	op_find_index
	movzwl	%ax, %eax
.LBB1_44:                               # %cond.end.177
                                        #   in Loop: Header=BB1_34 Depth=2
	leal	-1(%rax), %ecx
	cmpl	$4094, %ecx             # imm = 0xFFE
	ja	.LBB1_60
# BB#45:                                # %cleanup.189
                                        #   in Loop: Header=BB1_34 Depth=2
	addl	$16384, %eax            # imm = 0x4000
.LBB1_46:                               # %for.cond.98.backedge
                                        #   in Loop: Header=BB1_34 Depth=2
	movw	%ax, (%r14)
.LBB1_47:                               # %for.cond.98.backedge
                                        #   in Loop: Header=BB1_34 Depth=2
	addq	$2, %r14
	decq	%r15
	incl	%ebp
	jne	.LBB1_34
	jmp	.LBB1_48
.LBB1_39:                               # %sw.bb.138
                                        #   in Loop: Header=BB1_34 Depth=2
	movq	8(%rbx), %rax
	leaq	2048(%rax), %rcx
	cmpq	$4095, %rcx             # imm = 0xFFF
	ja	.LBB1_60
# BB#40:                                # %if.end.149
                                        #   in Loop: Header=BB1_34 Depth=2
	addl	$26624, %eax            # imm = 0x6800
	jmp	.LBB1_46
.LBB1_37:                               # %sw.bb.118
                                        #   in Loop: Header=BB1_34 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	callq	names_index
	cmpl	$4094, %eax             # imm = 0xFFE
	ja	.LBB1_60
# BB#38:                                # %cleanup.135.thread
                                        #   in Loop: Header=BB1_34 Depth=2
	movzwl	(%rbx), %ecx
	andl	$128, %ecx
	shll	$6, %ecx
	leal	49152(%rcx,%rax), %eax
	movw	%ax, (%r14)
	jmp	.LBB1_47
	.align	16, 0x90
.LBB1_60:                               # %sw.epilog.192
                                        #   in Loop: Header=BB1_64 Depth=1
	movl	%r14d, %eax
	subl	%r13d, %eax
	shrl	%eax
	movl	%eax, %ecx
	andl	$3, %ecx
	imulq	$7, %rcx, %rcx
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r14,%rcx,2)
	movzwl	(%r14,%rcx,2), %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	orl	68(%rsi), %edx
	andl	$3, %eax
	leaq	(%r14,%rcx,2), %r12
	movw	%dx, (%r14,%rcx,2)
	movq	%r13, %rax
	movq	56(%rsp), %r13          # 8-byte Reload
	je	.LBB1_63
# BB#61:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	%r14, %rbp
	subq	%rax, %rbp
	shrq	%rbp
	andl	$3, %ebp
	imulq	$7, %rbp, %rax
	leaq	-16(%r14,%rax,2), %rbx
	addq	$-2, %r14
	incl	%ebp
	.align	16, 0x90
.LBB1_62:                               # %while.body
                                        #   Parent Loop BB1_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	200(%r13), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	packed_get
	addq	$-16, %rbx
	addq	$-2, %r14
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB1_62
.LBB1_63:                               # %while.end
                                        #   in Loop: Header=BB1_64 Depth=1
	addq	$16, %r12
	testl	%r15d, %r15d
	movq	%r12, %r13
	movq	%r12, %r14
	jne	.LBB1_64
.LBB1_48:                               # %for.end.210
	movl	48(%rsp), %eax          # 4-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	leaq	(%r12,%rax,2), %rax
	cmpq	%rax, %r14
	movl	$1536, %eax             # imm = 0x600
	movl	$1280, %r15d            # imm = 0x500
	cmovel	%eax, %r15d
	movq	16(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	je	.LBB1_59
# BB#49:                                # %for.body.217.preheader
	leal	-1(%rbx), %r9d
	incq	%r9
	movq	%r9, %rdx
	movabsq	$8589934576, %r10       # imm = 0x1FFFFFFF0
	andq	%r10, %rdx
	xorl	%esi, %esi
	movq	%r9, %r8
	andq	%r10, %r8
	je	.LBB1_57
# BB#50:                                # %vector.body250.preheader
	movq	8(%rsp), %rax           # 8-byte Reload
	andl	$7, %eax
	decl	%eax
	leaq	1(%rax), %rcx
	andq	%r10, %rcx
	addq	$-16, %rcx
	movl	%ecx, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB1_53
# BB#51:                                # %vector.body250.prol.preheader
	xorl	%ebp, %ebp
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [24576,24576,24576,24576,24576,24576,24576,24576]
	xorl	%edi, %edi
	.align	16, 0x90
.LBB1_52:                               # %vector.body250.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%r14,%rdi,2)
	movups	%xmm0, 16(%r14,%rdi,2)
	addq	$16, %rdi
	incq	%rbp
	jne	.LBB1_52
.LBB1_53:                               # %vector.body250.preheader.split
	subl	%edx, %ebx
	leaq	(%r14,%r8,2), %rdx
	cmpq	$48, %rcx
	jb	.LBB1_56
# BB#54:                                # %vector.body250.preheader.split.split
	incq	%rax
	andq	%r10, %rax
	subq	%rdi, %rax
	leaq	112(%r14,%rdi,2), %rsi
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [24576,24576,24576,24576,24576,24576,24576,24576]
	.align	16, 0x90
.LBB1_55:                               # %vector.body250
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rsi)
	movups	%xmm0, -96(%rsi)
	movups	%xmm0, -80(%rsi)
	movups	%xmm0, -64(%rsi)
	movups	%xmm0, -48(%rsi)
	movups	%xmm0, -32(%rsi)
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rax
	jne	.LBB1_55
.LBB1_56:
	movq	%rdx, %r14
	movq	%r8, %rsi
.LBB1_57:                               # %middle.block251
	cmpq	%rsi, %r9
	je	.LBB1_59
	.align	16, 0x90
.LBB1_58:                               # %for.body.217
                                        # =>This Inner Loop Header: Depth=1
	movw	$24576, (%r14)          # imm = 0x6000
	addq	$2, %r14
	decl	%ebx
	jne	.LBB1_58
.LBB1_59:                               # %for.end.221
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	48(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	callq	ref_stack_pop
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%r12, 8(%rax)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	orl	68(%rcx), %edx
	orl	$96, %edx
	addl	%r15d, %edx
	movw	%dx, (%rax)
	movl	%ebp, 4(%rax)
	xorl	%ecx, %ecx
.LBB1_15:                               # %cleanup.234
	movl	%ecx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	make_packed_array, .Lfunc_end1-make_packed_array
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_16
	.quad	.LBB1_14
	.quad	.LBB1_6
	.quad	.LBB1_14
	.quad	.LBB1_8
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_14
	.quad	.LBB1_7
.LJTI1_1:
	.quad	.LBB1_39
	.quad	.LBB1_60
	.quad	.LBB1_37
	.quad	.LBB1_60
	.quad	.LBB1_41
	.quad	.LBB1_60
	.quad	.LBB1_60
	.quad	.LBB1_60
	.quad	.LBB1_60
	.quad	.LBB1_41

	.text
	.align	16, 0x90
	.type	zcurrentpacking,@function
zcurrentpacking:                        # @zcurrentpacking
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	addq	$16, %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	retq
.LBB2_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movups	88(%rdi), %xmm0
	movups	%xmm0, (%rax)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	zcurrentpacking, .Lfunc_end2-zcurrentpacking
	.cfi_endproc

	.align	16, 0x90
	.type	zsetpacking,@function
zsetpacking:                            # @zsetpacking
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzbl	1(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB3_1
# BB#2:                                 # %if.end
	movq	%rbx, 8(%rsp)
	movw	$2060, (%rsp)           # imm = 0x80C
	leaq	88(%rbx), %r15
	movzwl	88(%rbx), %eax
	testl	72(%rbx), %eax
	movq	%r14, %rax
	jne	.LBB3_4
# BB#3:                                 # %cond.true
	leaq	8(%rbx), %rdi
	leaq	(%rsp), %rsi
	movl	$.L.str.4, %ecx
	movq	%r15, %rdx
	callq	alloc_save_change
	movq	624(%rbx), %rax
.LBB3_4:                                # %cond.end
	movups	(%r14), %xmm0
	movups	%xmm0, (%r15)
	movzwl	88(%rbx), %ecx
	orl	76(%rbx), %ecx
	movw	%cx, 88(%rbx)
	addq	$-16, %rax
	movq	%rax, 624(%rbx)
	xorl	%eax, %eax
	jmp	.LBB3_5
.LBB3_1:                                # %if.then
	movq	%r14, %rdi
	callq	check_type_failed
.LBB3_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	zsetpacking, .Lfunc_end3-zsetpacking
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"packedarray"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0currentpacking"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1packedarray"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1setpacking"
	.size	.L.str.3, 12

	.type	zpacked_op_defs,@object # @zpacked_op_defs
	.section	.rodata,"a",@progbits
	.globl	zpacked_op_defs
	.align	16
zpacked_op_defs:
	.quad	.L.str.1
	.quad	zcurrentpacking
	.quad	.L.str.2
	.quad	zpackedarray
	.quad	.L.str.3
	.quad	zsetpacking
	.zero	16
	.size	zpacked_op_defs, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"setpacking"
	.size	.L.str.4, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
