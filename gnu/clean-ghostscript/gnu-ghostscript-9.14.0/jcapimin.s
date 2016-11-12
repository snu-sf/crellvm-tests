	.text
	.file	"jcapimin.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.text
	.globl	jpeg_CreateCompress
	.align	16, 0x90
	.type	jpeg_CreateCompress,@function
jpeg_CreateCompress:                    # @jpeg_CreateCompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	$0, 8(%rbx)
	cmpl	$90, %esi
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rax
	movl	$13, 40(%rax)
	movl	$90, 44(%rax)
	movl	%esi, 48(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_2:                                # %if.end
	cmpq	$584, %r14              # imm = 0x248
	je	.LBB0_4
# BB#3:                                 # %if.then.9
	movq	(%rbx), %rax
	movl	$22, 40(%rax)
	movl	$584, 44(%rax)          # imm = 0x248
	movl	%r14d, 48(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_4:                                # %if.end.22
	movq	(%rbx), %r14
	movq	24(%rbx), %r15
	xorl	%esi, %esi
	movl	$584, %edx              # imm = 0x248
	movq	%rbx, %rdi
	callq	memset
	movq	%r14, (%rbx)
	movq	%r15, 24(%rbx)
	movl	$0, 32(%rbx)
	movq	%rbx, %rdi
	callq	jinit_memory_mgr
	movq	$0, 16(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 104(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%rbx)
	movups	%xmm0, 128(%rbx)
	movaps	.LCPI0_0(%rip), %xmm1   # xmm1 = [100,100,100,100]
	movups	%xmm1, 144(%rbx)
	movq	$0, 160(%rbx)
	movq	$0, 192(%rbx)
	movups	%xmm0, 168(%rbx)
	movups	%xmm0, 200(%rbx)
	movq	$0, 184(%rbx)
	movq	$0, 216(%rbx)
	movl	$8, 476(%rbx)
	movq	$jpeg_natural_order, 480(%rbx)
	movl	$63, 488(%rbx)
	movq	$0, 568(%rbx)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 64(%rbx)
	movl	$100, 36(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	jpeg_CreateCompress, .Lfunc_end0-jpeg_CreateCompress
	.cfi_endproc

	.globl	jpeg_destroy_compress
	.align	16, 0x90
	.type	jpeg_destroy_compress,@function
jpeg_destroy_compress:                  # @jpeg_destroy_compress
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	jpeg_destroy            # TAILCALL
.Lfunc_end1:
	.size	jpeg_destroy_compress, .Lfunc_end1-jpeg_destroy_compress
	.cfi_endproc

	.globl	jpeg_abort_compress
	.align	16, 0x90
	.type	jpeg_abort_compress,@function
jpeg_abort_compress:                    # @jpeg_abort_compress
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	jpeg_abort              # TAILCALL
.Lfunc_end2:
	.size	jpeg_abort_compress, .Lfunc_end2-jpeg_abort_compress
	.cfi_endproc

	.globl	jpeg_suppress_tables
	.align	16, 0x90
	.type	jpeg_suppress_tables,@function
jpeg_suppress_tables:                   # @jpeg_suppress_tables
	.cfi_startproc
# BB#0:                                 # %entry
	movq	112(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	%esi, 128(%rax)
.LBB3_2:                                # %for.inc
	movq	120(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_4
# BB#3:                                 # %if.then.1
	movl	%esi, 128(%rax)
.LBB3_4:                                # %for.inc.1
	movq	128(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_6
# BB#5:                                 # %if.then.2
	movl	%esi, 128(%rax)
.LBB3_6:                                # %for.inc.2
	movq	136(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	movl	%esi, 128(%rax)
.LBB3_8:                                # %for.inc.3
	movq	160(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	movl	%esi, 276(%rax)
.LBB3_10:                               # %if.end.10
	movq	192(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_12
# BB#11:                                # %if.then.14
	movl	%esi, 276(%rax)
.LBB3_12:                               # %for.inc.17
	movq	168(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_14
# BB#13:                                # %if.then.8.1
	movl	%esi, 276(%rax)
.LBB3_14:                               # %if.end.10.1
	movq	200(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_16
# BB#15:                                # %if.then.14.1
	movl	%esi, 276(%rax)
.LBB3_16:                               # %for.inc.17.1
	movq	176(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_18
# BB#17:                                # %if.then.8.2
	movl	%esi, 276(%rax)
.LBB3_18:                               # %if.end.10.2
	movq	208(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_20
# BB#19:                                # %if.then.14.2
	movl	%esi, 276(%rax)
.LBB3_20:                               # %for.inc.17.2
	movq	184(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_22
# BB#21:                                # %if.then.8.3
	movl	%esi, 276(%rax)
.LBB3_22:                               # %if.end.10.3
	movq	216(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_24
# BB#23:                                # %if.then.14.3
	movl	%esi, 276(%rax)
.LBB3_24:                               # %for.inc.17.3
	retq
.Lfunc_end3:
	.size	jpeg_suppress_tables, .Lfunc_end3-jpeg_suppress_tables
	.cfi_endproc

	.globl	jpeg_finish_compress
	.align	16, 0x90
	.type	jpeg_finish_compress,@function
jpeg_finish_compress:                   # @jpeg_finish_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	leal	-101(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB4_1
# BB#3:                                 # %if.then
	movl	344(%rbx), %eax
	cmpl	52(%rbx), %eax
	jae	.LBB4_5
# BB#4:                                 # %if.then.4
	movq	(%rbx), %rax
	movl	$69, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	jmp	.LBB4_5
.LBB4_1:                                # %entry
	cmpl	$103, %eax
	je	.LBB4_6
# BB#2:                                 # %if.then.8
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
	jmp	.LBB4_6
.LBB4_5:                                # %if.end
	movq	496(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
.LBB4_6:                                # %while.cond.preheader
	movq	496(%rbx), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB4_13
# BB#7:                                 # %while.body
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	368(%rbx), %eax
	testl	%eax, %eax
	movl	$0, %ebp
	je	.LBB4_5
	.align	16, 0x90
.LBB4_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB4_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	%ebp, %edx
	movq	%rdx, 8(%rcx)
	movl	%eax, %eax
	movq	%rax, 16(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB4_10:                               # %if.end.28
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	520(%rbx), %rax
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	testl	%eax, %eax
	jne	.LBB4_12
# BB#11:                                # %if.then.30
                                        #   in Loop: Header=BB4_8 Depth=1
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB4_12:                               # %for.inc
                                        #   in Loop: Header=BB4_8 Depth=1
	incl	%ebp
	movl	368(%rbx), %eax
	cmpl	%eax, %ebp
	jb	.LBB4_8
	jmp	.LBB4_5
.LBB4_13:                               # %while.end
	movq	528(%rbx), %rax
	movq	%rbx, %rdi
	callq	*24(%rax)
	movq	40(%rbx), %rax
	movq	%rbx, %rdi
	callq	*32(%rax)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	jpeg_abort              # TAILCALL
.Lfunc_end4:
	.size	jpeg_finish_compress, .Lfunc_end4-jpeg_finish_compress
	.cfi_endproc

	.globl	jpeg_write_marker
	.align	16, 0x90
	.type	jpeg_write_marker,@function
jpeg_write_marker:                      # @jpeg_write_marker
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
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 48
.Ltmp16:
	.cfi_offset %rbx, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	36(%r14), %eax
	cmpl	$0, 344(%r14)
	jne	.LBB5_2
# BB#1:                                 # %entry
	leal	-101(%rax), %ecx
	cmpl	$3, %ecx
	jb	.LBB5_3
.LBB5_2:                                # %if.then
	movq	(%r14), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r14, %rdi
	callq	*(%rcx)
.LBB5_3:                                # %if.end
	movq	528(%r14), %rax
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%ebp, %edx
	callq	*40(%rax)
	testl	%ebp, %ebp
	je	.LBB5_6
# BB#4:
	movq	528(%r14), %rax
	movq	48(%rax), %r15
	.align	16, 0x90
.LBB5_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %esi
	movq	%r14, %rdi
	callq	*%r15
	incq	%rbx
	decl	%ebp
	jne	.LBB5_5
.LBB5_6:                                # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	jpeg_write_marker, .Lfunc_end5-jpeg_write_marker
	.cfi_endproc

	.globl	jpeg_write_m_header
	.align	16, 0x90
	.type	jpeg_write_m_header,@function
jpeg_write_m_header:                    # @jpeg_write_m_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$0, 344(%rbx)
	jne	.LBB6_2
# BB#1:                                 # %entry
	leal	-101(%rax), %ecx
	cmpl	$3, %ecx
	jb	.LBB6_3
.LBB6_2:                                # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_3:                                # %if.end
	movq	528(%rbx), %rax
	movq	40(%rax), %rax
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end6:
	.size	jpeg_write_m_header, .Lfunc_end6-jpeg_write_m_header
	.cfi_endproc

	.globl	jpeg_write_m_byte
	.align	16, 0x90
	.type	jpeg_write_m_byte,@function
jpeg_write_m_byte:                      # @jpeg_write_m_byte
	.cfi_startproc
# BB#0:                                 # %entry
	movq	528(%rdi), %rax
	movq	48(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	jpeg_write_m_byte, .Lfunc_end7-jpeg_write_m_byte
	.cfi_endproc

	.globl	jpeg_write_tables
	.align	16, 0x90
	.type	jpeg_write_tables,@function
jpeg_write_tables:                      # @jpeg_write_tables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$100, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB8_2:                                # %if.end
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*32(%rax)
	movq	40(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	movq	%rbx, %rdi
	callq	jinit_marker_writer
	movq	528(%rbx), %rax
	movq	%rbx, %rdi
	callq	*32(%rax)
	movq	40(%rbx), %rax
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*32(%rax)               # TAILCALL
.Lfunc_end8:
	.size	jpeg_write_tables, .Lfunc_end8-jpeg_write_tables
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
