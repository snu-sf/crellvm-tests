	.text
	.file	"cidx_manager.bc"
	.globl	opj_write_cidx
	.align	16, 0x90
	.type	opj_write_cidx,@function
opj_write_cidx:                         # @opj_write_cidx
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
	movq	%rcx, %rbx
	movl	%edx, 132(%rsp)         # 4-byte Spill
	movq	%rsi, %r12
	movl	%edi, 128(%rsp)         # 4-byte Spill
	leaq	224(%rsp), %r13
	movl	$32, %edi
	movl	$12, %esi
	callq	calloc
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	$-1, %r15
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movl	%eax, %r14d
	je	.LBB0_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	opj_stream_seek
.LBB0_3:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r12, %rdi
	callq	opj_stream_tell
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	$4, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	opj_stream_skip
	movl	$1667851384, %esi       # imm = 0x63696478
	movl	$4, %edx
	leaq	164(%rsp), %rax
	movq	%rax, %rbp
	movq	%rbp, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rcx
	callq	opj_stream_write_data
	movl	100(%r13), %esi
	movl	128(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %edi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	opj_write_cptr
	movl	%r14d, %edi
	movl	%edi, 148(%rsp)         # 4-byte Spill
	movl	144(%rsp), %esi         # 4-byte Reload
	movq	%rbx, %r14
	movq	136(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	opj_write_manf
	movups	96(%r13), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r13), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r13), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	%ebp, %edi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	opj_write_mainmhix
	movl	%eax, (%rbx)
	movl	$1835559288, 4(%rbx)    # imm = 0x6D686978
	movups	96(%r13), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r13), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r13), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	%ebp, %edi
	movl	132(%rsp), %r15d        # 4-byte Reload
	movl	%r15d, %esi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	opj_write_tpix
	movl	%eax, 12(%rbx)
	movl	$1953524088, 16(%rbx)   # imm = 0x74706978
	movups	96(%r13), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r13), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r13), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	%ebp, %edi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	opj_write_thix
	movl	%eax, 24(%rbx)
	movl	$1952999800, 28(%rbx)   # imm = 0x74686978
	movq	80(%r13), %rsi
	movl	72(%r13), %edx
	movl	%ebp, %edi
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	opj_check_EPHuse
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movups	96(%r13), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r13), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r13), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	%ebp, %edi
	movl	%eax, %esi
	movl	%r15d, %edx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	opj_write_ppix
	movl	%eax, 36(%rbx)
	movl	$1886415224, 40(%rbx)   # imm = 0x70706978
	movups	96(%r13), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	80(%r13), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	64(%r13), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	%ebp, %edi
	movl	144(%rsp), %esi         # 4-byte Reload
	movl	%r15d, %edx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	opj_write_phix
	movl	%eax, 48(%rbx)
	movl	$1885890936, 52(%rbx)   # imm = 0x70686978
	movq	%r14, %rbx
	movq	%r12, %rdi
	callq	opj_stream_tell
	movq	%rax, %r14
	movq	152(%rsp), %r15         # 8-byte Reload
	subq	%r15, %r14
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	opj_stream_seek
	movl	$4, %edx
	leaq	164(%rsp), %rbp
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rcx
	callq	opj_stream_write_data
	movl	%r14d, %esi
	addq	%r15, %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	opj_stream_seek
	movl	148(%rsp), %eax         # 4-byte Reload
	incl	%eax
	movl	$5, %ecx
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#4:                                 # %for.end
	movq	136(%rsp), %rdi         # 8-byte Reload
	callq	free
	movl	%r14d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_write_cidx, .Lfunc_end0-opj_write_cidx
	.cfi_endproc

	.globl	opj_write_cptr
	.align	16, 0x90
	.type	opj_write_cptr,@function
opj_write_cptr:                         # @opj_write_cptr
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
	leaq	(%rsp), %r12
	movl	$1668314226, %esi       # imm = 0x63707472
	movl	$4, %edx
	movq	%r12, %rdi
	callq	opj_write_bytes_LE
	leaq	4(%rsp), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	6(%rsp), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	opj_write_bytes_LE
	leaq	8(%rsp), %rdi
	movl	$8, %edx
	movl	%ebp, %esi
	callq	opj_write_bytes_LE
	leaq	16(%rsp), %rdi
	movl	$8, %edx
	movl	%r13d, %esi
	callq	opj_write_bytes_LE
	movl	$24, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movq	%rbx, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbp
	subq	%r15, %rbp
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
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
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_write_cptr, .Lfunc_end1-opj_write_cptr
	.cfi_endproc

	.globl	opj_write_manf
	.align	16, 0x90
	.type	opj_write_manf,@function
opj_write_manf:                         # @opj_write_manf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 80
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movl	%edi, %r13d
	movq	%r12, %rdi
	callq	opj_stream_tell
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$4, %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	opj_stream_skip
	leaq	20(%rsp), %r15
	movl	$1835101798, %esi       # imm = 0x6D616E66
	movl	$4, %edx
	movq	%r15, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	testl	%r13d, %r13d
	je	.LBB2_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jle	.LBB2_4
# BB#2:                                 # %for.body.preheader
	addq	$4, %rbx
	leaq	20(%rsp), %r13
	.align	16, 0x90
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movl	(%rbx), %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	addq	$12, %rbx
	decl	%ebp
	jne	.LBB2_3
.LBB2_4:                                # %if.end
	movq	%r12, %rdi
	callq	opj_stream_tell
	movq	%rax, %rbx
	movq	8(%rsp), %rbp           # 8-byte Reload
	subq	%rbp, %rbx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	opj_stream_seek
	leaq	20(%rsp), %r15
	movl	$4, %edx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movl	%ebx, %esi
	addq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	opj_stream_seek
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	opj_write_manf, .Lfunc_end2-opj_write_manf
	.cfi_endproc

	.globl	opj_write_mainmhix
	.align	16, 0x90
	.type	opj_write_mainmhix,@function
opj_write_mainmhix:                     # @opj_write_mainmhix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 80
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r13
	movl	%edi, %r12d
	movq	%r13, %rdi
	callq	opj_stream_tell
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$4, %esi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	opj_stream_skip
	leaq	16(%rsp), %rbx
	movl	$1835559288, %esi       # imm = 0x6D686978
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	$4, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movl	176(%rsp), %esi
	incl	%esi
	subl	172(%rsp), %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movslq	152(%rsp), %rbp
	cmpq	$2, %rbp
	jl	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	leaq	80(%rsp), %rax
	movq	80(%rax), %r15
	movl	%r12d, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	addq	$40, %r15
	movl	$1, %r12d
	leaq	16(%rsp), %rbx
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-16(%r15), %esi
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
	movl	-8(%r15), %esi
	movq	8(%rsp), %rax           # 8-byte Reload
	subl	%eax, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	movl	(%r15), %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	opj_write_bytes_LE
	movl	$2, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_write_data
	incq	%r12
	addq	$24, %r15
	cmpq	%rbp, %r12
	jl	.LBB3_2
.LBB3_3:                                # %for.end
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
.Lfunc_end3:
	.size	opj_write_mainmhix, .Lfunc_end3-opj_write_mainmhix
	.cfi_endproc

	.globl	opj_check_EPHuse
	.align	16, 0x90
	.type	opj_check_EPHuse,@function
opj_check_EPHuse:                       # @opj_check_EPHuse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 80
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rsi, %rbx
	movl	%edi, %r13d
	xorl	%ebp, %ebp
	testl	%edx, %edx
	jle	.LBB4_5
# BB#1:                                 # %for.body.lr.ph
	movslq	%edx, %rax
	xorl	%r12d, %r12d
	movq	%rbx, %rcx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edx
	cmpl	$65362, %edx            # imm = 0xFF52
	je	.LBB4_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%r12
	addq	$24, %rcx
	cmpq	%rax, %r12
	jl	.LBB4_3
	jmp	.LBB4_5
.LBB4_4:                                # %if.then
	movq	%r15, %rdi
	callq	opj_stream_tell
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movslq	%r13d, %rax
	leaq	(%r12,%r12,2), %rcx
	movq	8(%rbx,%rcx,8), %rcx
	leaq	2(%rax,%rcx), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	opj_stream_seek
	leaq	20(%rsp), %rbx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	callq	opj_stream_read_data
	leaq	16(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_read_bytes_LE
	movl	16(%rsp), %ebp
	shrl	$2, %ebp
	andl	$1, %ebp
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r14, %rdx
	callq	opj_stream_seek
.LBB4_5:                                # %for.end
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	opj_check_EPHuse, .Lfunc_end4-opj_check_EPHuse
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
