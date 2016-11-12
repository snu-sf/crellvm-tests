	.text
	.file	"tpix_manager.bc"
	.globl	opj_write_tpix
	.align	16, 0x90
	.type	opj_write_tpix,@function
opj_write_tpix:                         # @opj_write_tpix
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
	subq	$120, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 176
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
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%esi, %r13d
	movl	%edi, %ebp
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, %r15
	movl	$4, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	opj_stream_skip
	leaq	116(%rsp), %r12
	movl	$1953524088, %esi       # imm = 0x74706978
	movl	$4, %edx
	movq	%r12, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movaps	272(%rsp), %xmm0
	movups	%xmm0, 96(%rsp)
	movaps	256(%rsp), %xmm0
	movups	%xmm0, 80(%rsp)
	movaps	240(%rsp), %xmm0
	movups	%xmm0, 64(%rsp)
	movaps	176(%rsp), %xmm0
	movaps	192(%rsp), %xmm1
	movaps	208(%rsp), %xmm2
	movaps	224(%rsp), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	xorl	%esi, %esi
	movl	%ebp, %edi
	movl	%r13d, %edx
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	opj_write_tpixfaix
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbp
	subq	%r15, %rbp
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	opj_stream_skip
	movl	$4, %edx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movl	%ebp, %esi
	addq	%r15, %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	opj_stream_seek
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_write_tpix, .Lfunc_end0-opj_write_tpix
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
.LCPI1_1:
	.quad	4629700416936869888     # double 32
	.text
	.globl	opj_write_tpixfaix
	.align	16, 0x90
	.type	opj_write_tpixfaix,@function
opj_write_tpixfaix:                     # @opj_write_tpixfaix
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
	subq	$120, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 176
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
	movq	%r8, %r13
	movq	%rcx, %r15
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movl	%edi, 68(%rsp)          # 4-byte Spill
	leaq	176(%rsp), %rax
	movl	220(%rsp), %r10d
	imull	224(%rsp), %r10d
	xorl	%ebx, %ebx
	testl	%r10d, %r10d
	jle	.LBB1_7
# BB#1:                                 # %for.body.lr.ph.i
	movq	104(%rax), %r8
	movslq	%r10d, %rax
	leaq	-1(%rax), %r9
	xorl	%edi, %edi
	testb	$3, %al
	movl	$0, %ebx
	je	.LBB1_4
# BB#2:                                 # %for.body.i.prol.preheader
	leaq	596(%r8), %rbp
	movl	%r10d, %esi
	andl	$3, %esi
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_3:                                # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %ecx
	cmpl	%ebx, %ecx
	cmovgel	%ecx, %ebx
	incq	%rdi
	addq	$608, %rbp              # imm = 0x260
	cmpq	%rdi, %rsi
	jne	.LBB1_3
.LBB1_4:                                # %for.body.lr.ph.i.split
	cmpq	$3, %r9
	jb	.LBB1_7
# BB#5:                                 # %for.body.lr.ph.i.split.split
	subq	%rdi, %rax
	imulq	$608, %rdi, %rcx        # imm = 0x260
	leaq	2420(%rcx,%r8), %rcx
	.align	16, 0x90
.LBB1_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-1824(%rcx), %esi
	cmpl	%ebx, %esi
	cmovgel	%esi, %ebx
	movl	-1216(%rcx), %esi
	cmpl	%ebx, %esi
	cmovgel	%esi, %ebx
	movl	-608(%rcx), %esi
	cmpl	%ebx, %esi
	cmovgel	%esi, %ebx
	movl	(%rcx), %esi
	cmpl	%ebx, %esi
	cmovgel	%esi, %ebx
	addq	$2432, %rcx             # imm = 0x980
	addq	$-4, %rax
	jne	.LBB1_6
.LBB1_7:                                # %get_num_max_tile_parts.exit
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movq	%r10, 104(%rsp)         # 8-byte Spill
	callq	pow
	cmpl	$1, %ebx
	setne	%al
	movzbl	%al, %eax
	leal	(%rax,%rax), %ecx
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%dl
	leal	1(%rax,%rax), %r14d
	movzbl	%dl, %eax
	leal	4(,%rax,4), %r12d
	movq	%r12, 88(%rsp)          # 8-byte Spill
	cmovbel	%ecx, %r14d
	movl	%r14d, 96(%rsp)         # 4-byte Spill
	movq	%r15, %rbp
	movq	%rbp, %rdi
	callq	opj_stream_tell
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$4, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	opj_stream_skip
	leaq	112(%rsp), %r15
	movl	$1717660024, %esi       # imm = 0x66616978
	movl	$4, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	opj_stream_write_data
	movl	$1, %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	opj_write_bytes_LE
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	opj_stream_write_data
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r12d, %edx
	callq	opj_write_bytes_LE
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	opj_stream_write_data
	movq	%r15, %rdi
	movq	104(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	callq	opj_write_bytes_LE
	movq	%rbp, %rdi
	movq	%rbp, %r14
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	opj_stream_write_data
	movq	104(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB1_24
# BB#8:                                 # %for.cond.28.preheader.lr.ph
	leaq	176(%rsp), %rcx
	movq	64(%rcx), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	104(%rcx), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	andl	$2, 96(%rsp)            # 4-byte Folded Spill
	movslq	80(%rsp), %rcx          # 4-byte Folded Reload
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	leaq	112(%rsp), %rdx
	.align	16, 0x90
.LBB1_9:                                # %for.cond.28.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_20 Depth 2
	movq	%rax, 40(%rsp)          # 8-byte Spill
	imulq	$608, %rax, %rax        # imm = 0x260
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpl	$0, 596(%rcx,%rax)
	movl	$0, %r12d
	jle	.LBB1_18
# BB#10:                                # %for.body.31.preheader
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%r13, %rbp
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	596(%rcx,%rax), %rsi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	leaq	600(%rcx,%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$8, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_11:                               # %for.body.31
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, 104(%rsp)         # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movl	-8(%rax,%r15), %esi
	movl	$1, %r13d
	subl	%esi, %r13d
	subl	68(%rsp), %esi          # 4-byte Folded Reload
	addl	(%rax,%r15), %r13d
	movq	%rdx, %r12
	movq	%r12, %rdi
	movq	88(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %edx
	callq	opj_write_bytes_LE
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	opj_stream_write_data
	movq	%r12, %rdi
	movl	%r13d, %esi
	movq	%r14, %r13
	movq	%r12, %r14
	movq	104(%rsp), %r12         # 8-byte Reload
	movl	%ebx, %edx
	callq	opj_write_bytes_LE
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	opj_stream_write_data
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	je	.LBB1_16
# BB#12:                                # %if.then.48
                                        #   in Loop: Header=BB1_11 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$1, (%rax)
	jne	.LBB1_14
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_11 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	(%rax,%rcx,4), %esi
	cmpl	$1, %esi
	jg	.LBB1_15
.LBB1_14:                               # %if.else.64
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	%r12d, %esi
.LBB1_15:                               # %if.end.66
                                        #   in Loop: Header=BB1_11 Depth=2
	incl	%esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rcx
	callq	opj_stream_write_data
.LBB1_16:                               # %for.inc
                                        #   in Loop: Header=BB1_11 Depth=2
	movq	%r14, %rdx
	movq	%r13, %r14
	incq	%r12
	movq	80(%rsp), %rax          # 8-byte Reload
	movslq	(%rax), %rax
	addq	$20, %r15
	cmpq	%rax, %r12
	jl	.LBB1_11
# BB#17:                                # %for.cond.28.while.cond.preheader_crit_edge
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%rbp, %r13
.LBB1_18:                               # %while.cond.preheader
                                        #   in Loop: Header=BB1_9 Depth=1
	cmpl	28(%rsp), %r12d         # 4-byte Folded Reload
	movq	%rdx, %r15
	jge	.LBB1_23
# BB#19:                                # %while.body.preheader
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	28(%rsp), %ebx          # 4-byte Reload
	subl	%r12d, %ebx
	.align	16, 0x90
.LBB1_20:                               # %while.body
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	88(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %edx
	callq	opj_write_bytes_LE
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	opj_stream_write_data
	xorl	%esi, %esi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	opj_write_bytes_LE
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	callq	opj_stream_write_data
	cmpl	$0, 96(%rsp)            # 4-byte Folded Reload
	je	.LBB1_22
# BB#21:                                # %if.then.83
                                        #   in Loop: Header=BB1_20 Depth=2
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
.LBB1_22:                               # %if.end.85
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	opj_stream_write_data
	decl	%ebx
	jne	.LBB1_20
.LBB1_23:                               # %for.inc.89
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%r15, %rdx
	movq	40(%rsp), %rax          # 8-byte Reload
	incq	%rax
	cmpq	16(%rsp), %rax          # 8-byte Folded Reload
	jl	.LBB1_9
.LBB1_24:                               # %for.end.91
	movq	%r14, %rbx
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbp
	movq	8(%rsp), %r14           # 8-byte Reload
	subq	%r14, %rbp
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	opj_stream_seek
	leaq	112(%rsp), %r15
	movl	$4, %edx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	opj_stream_write_data
	movl	%ebp, %esi
	addq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	opj_stream_seek
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_write_tpixfaix, .Lfunc_end1-opj_write_tpixfaix
	.cfi_endproc

	.globl	get_num_max_tile_parts
	.align	16, 0x90
	.type	get_num_max_tile_parts,@function
get_num_max_tile_parts:                 # @get_num_max_tile_parts
	.cfi_startproc
# BB#0:                                 # %entry
	movl	52(%rsp), %edi
	imull	56(%rsp), %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LBB2_7
# BB#1:                                 # %for.body.lr.ph
	leaq	8(%rsp), %rax
	movq	104(%rax), %r8
	movslq	%edi, %r10
	leaq	-1(%r10), %r9
	xorl	%edx, %edx
	testb	$3, %r10b
	movl	$0, %eax
	je	.LBB2_4
# BB#2:                                 # %for.body.prol.preheader
	leaq	596(%r8), %rsi
	andl	$3, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %ecx
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	incq	%rdx
	addq	$608, %rsi              # imm = 0x260
	cmpq	%rdx, %rdi
	jne	.LBB2_3
.LBB2_4:                                # %for.body.lr.ph.split
	cmpq	$3, %r9
	jb	.LBB2_7
# BB#5:                                 # %for.body.lr.ph.split.split
	imulq	$608, %rdx, %rcx        # imm = 0x260
	leaq	2420(%rcx,%r8), %rsi
	.align	16, 0x90
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-1824(%rsi), %ecx
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	movl	-1216(%rsi), %ecx
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	movl	-608(%rsi), %ecx
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	movl	(%rsi), %ecx
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	addq	$4, %rdx
	addq	$2432, %rsi             # imm = 0x980
	cmpq	%r10, %rdx
	jl	.LBB2_6
.LBB2_7:                                # %for.end
	retq
.Lfunc_end2:
	.size	get_num_max_tile_parts, .Lfunc_end2-get_num_max_tile_parts
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
