	.text
	.file	"thix_manager.bc"
	.globl	opj_write_thix
	.align	16, 0x90
	.type	opj_write_thix,@function
opj_write_thix:                         # @opj_write_thix
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
	subq	$168, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 224
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
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movl	%edi, 124(%rsp)         # 4-byte Spill
	movslq	272(%rsp), %rax
	movslq	268(%rsp), %rbx
	imulq	%rax, %rbx
	xorl	%r14d, %r14d
	testl	%ebx, %ebx
	js	.LBB0_2
# BB#1:                                 # %cond.false
	movl	$12, %esi
	movq	%rbx, %rdi
	callq	calloc
	movq	%rax, %r14
.LBB0_2:                                # %if.end
	movq	%r14, 144(%rsp)         # 8-byte Spill
	leaq	224(%rsp), %r15
	movslq	%ebx, %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	callq	opj_stream_tell
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	$4, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	opj_stream_skip
	leaq	164(%rsp), %r12
	movl	$1952999800, %esi       # imm = 0x74686978
	movl	$4, %edx
	movq	%r12, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rcx
	callq	opj_stream_write_data
	xorl	%edi, %edi
	movl	%ebx, %esi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movq	%r13, %r8
	callq	opj_write_manf
	testl	%ebx, %ebx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movl	124(%rsp), %r14d        # 4-byte Reload
	movq	%r13, %r12
	movq	%rbp, %rbx
	jle	.LBB0_5
# BB#3:                                 # %for.body.28.preheader
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	4(%rax), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_4:                                # %for.body.28
                                        # =>This Inner Loop Header: Depth=1
	movups	96(%r15), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r15), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r15), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	48(%r15), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	%r14d, %edi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	opj_write_tilemhix
	movl	%eax, -4(%r13)
	movl	$1835559288, (%r13)     # imm = 0x6D686978
	incq	%rbp
	addq	$12, %r13
	cmpq	152(%rsp), %rbp         # 8-byte Folded Reload
	jl	.LBB0_4
.LBB0_5:                                # %if.end.1
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbp
	movq	136(%rsp), %rsi         # 8-byte Reload
	subq	%rsi, %rbp
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	opj_stream_seek
	leaq	164(%rsp), %r13
	movl	$4, %edx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	opj_stream_write_data
	movl	%ebp, %esi
	movq	136(%rsp), %rbp         # 8-byte Reload
	addq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	opj_stream_seek
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	opj_stream_seek
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	$4, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	opj_stream_skip
	movl	$1952999800, %esi       # imm = 0x74686978
	movl	$4, %edx
	movq	%r13, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	opj_stream_write_data
	movl	$1, %edi
	movq	128(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %esi
	movq	144(%rsp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	opj_write_manf
	testl	%ebp, %ebp
	movq	%rbx, %r13
	jle	.LBB0_8
# BB#6:                                 # %for.body.28.preheader.1
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	4(%rax), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_7:                                # %for.body.28.1
                                        # =>This Inner Loop Header: Depth=1
	movups	96(%r15), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r15), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r15), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	48(%r15), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	%r14d, %edi
	movl	%ebp, %esi
	movq	%r13, %rdx
	movq	%r12, %rcx
	callq	opj_write_tilemhix
	movl	%eax, -4(%rbx)
	movl	$1835559288, (%rbx)     # imm = 0x6D686978
	incq	%rbp
	addq	$12, %rbx
	cmpq	152(%rsp), %rbp         # 8-byte Folded Reload
	jl	.LBB0_7
.LBB0_8:                                # %for.end.1
	movq	%r13, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbp
	movq	136(%rsp), %rbx         # 8-byte Reload
	subq	%rbx, %rbp
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	opj_stream_seek
	leaq	164(%rsp), %r14
	movl	$4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rcx
	callq	opj_stream_write_data
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andq	%rbp, %rsi
	addq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	opj_stream_seek
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	free
	movl	%ebp, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_write_thix, .Lfunc_end0-opj_write_thix
	.cfi_endproc

	.globl	opj_write_tilemhix
	.align	16, 0x90
	.type	opj_write_tilemhix,@function
opj_write_tilemhix:                     # @opj_write_tilemhix
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
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
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
	movq	%rcx, %r14
	movq	%rdx, %r13
	movl	%esi, %ebx
	movl	%edi, %r12d
	movq	%r13, %rdi
	callq	opj_stream_tell
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$4, %esi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	opj_stream_skip
	leaq	16(%rsp), %rbp
	movl	$1835559288, %esi       # imm = 0x6D686978
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movslq	%ebx, %rax
	movq	184(%rsp), %r15
	imulq	$608, %rax, %rbx        # imm = 0x260
	movq	600(%r15,%rbx), %rax
	movl	$1, %esi
	subl	(%rax), %esi
	addl	4(%rax), %esi
	movl	$8, %edx
	movq	%rbp, %rdi
	callq	opj_write_bytes_LE
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	cmpl	$0, 576(%r15,%rbx)
	jle	.LBB1_3
# BB#1:                                 # %for.body.lr.ph
	movq	584(%r15,%rbx), %rbp
	leaq	576(%r15,%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%r12d, %r12d
	addq	$16, %rbp
	xorl	%r15d, %r15d
	leaq	16(%rsp), %rbx
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-16(%rbp), %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	xorl	%esi, %esi
	movl	$2, %edx
	leaq	18(%rsp), %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movl	-8(%rbp), %esi
	subl	%r12d, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movl	(%rbp), %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	$2, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	incq	%r15
	movq	8(%rsp), %rax           # 8-byte Reload
	movslq	(%rax), %rax
	addq	$24, %rbp
	cmpq	%rax, %r15
	jl	.LBB1_2
.LBB1_3:                                # %for.end
	movq	%r13, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbx
	movq	(%rsp), %rbp            # 8-byte Reload
	subq	%rbp, %rbx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
	leaq	16(%rsp), %r15
	movl	$4, %edx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movl	%ebx, %esi
	addq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	opj_stream_seek
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_write_tilemhix, .Lfunc_end1-opj_write_tilemhix
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
