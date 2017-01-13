	.text
	.file	"jdapimin.bc"
	.globl	jpeg_CreateDecompress
	.align	16, 0x90
	.type	jpeg_CreateDecompress,@function
jpeg_CreateDecompress:                  # @jpeg_CreateDecompress
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
	cmpq	$880, %r14              # imm = 0x370
	je	.LBB0_4
# BB#3:                                 # %if.then.9
	movq	(%rbx), %rax
	movl	$22, 40(%rax)
	movl	$880, 44(%rax)          # imm = 0x370
	movl	%r14d, 48(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB0_4:                                # %if.end.22
	movq	(%rbx), %r14
	movq	24(%rbx), %r15
	xorl	%esi, %esi
	movl	$880, %edx              # imm = 0x370
	movq	%rbx, %rdi
	callq	memset
	movq	%r14, (%rbx)
	movq	%r15, 24(%rbx)
	movl	$1, 32(%rbx)
	movq	%rbx, %rdi
	callq	jinit_memory_mgr
	movq	$0, 16(%rbx)
	movq	$0, 40(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 200(%rbx)
	movups	%xmm0, 216(%rbx)
	movups	%xmm0, 232(%rbx)
	movups	%xmm0, 264(%rbx)
	movq	$0, 280(%rbx)
	movups	%xmm0, 248(%rbx)
	movq	$0, 288(%rbx)
	movq	$0, 408(%rbx)
	movq	%rbx, %rdi
	callq	jinit_marker_reader
	movq	%rbx, %rdi
	callq	jinit_input_controller
	movl	$200, 36(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	jpeg_CreateDecompress, .Lfunc_end0-jpeg_CreateDecompress
	.cfi_endproc

	.globl	jpeg_destroy_decompress
	.align	16, 0x90
	.type	jpeg_destroy_decompress,@function
jpeg_destroy_decompress:                # @jpeg_destroy_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	jpeg_destroy            # TAILCALL
.Lfunc_end1:
	.size	jpeg_destroy_decompress, .Lfunc_end1-jpeg_destroy_decompress
	.cfi_endproc

	.globl	jpeg_abort_decompress
	.align	16, 0x90
	.type	jpeg_abort_decompress,@function
jpeg_abort_decompress:                  # @jpeg_abort_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	jpeg_abort              # TAILCALL
.Lfunc_end2:
	.size	jpeg_abort_decompress, .Lfunc_end2-jpeg_abort_decompress
	.cfi_endproc

	.globl	jpeg_read_header
	.align	16, 0x90
	.type	jpeg_read_header,@function
jpeg_read_header:                       # @jpeg_read_header
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	movl	%eax, %ecx
	andl	$-2, %ecx
	cmpl	$200, %ecx
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB3_2:                                # %if.end
	movq	%rbx, %rdi
	callq	jpeg_consume_input
	cmpl	$2, %eax
	jne	.LBB3_3
# BB#5:                                 # %sw.bb.6
	testl	%ebp, %ebp
	je	.LBB3_7
# BB#6:                                 # %if.then.7
	movq	(%rbx), %rax
	movl	$53, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB3_7:                                # %if.end.12
	movq	%rbx, %rdi
	callq	jpeg_abort
	movl	$2, %eax
	jmp	.LBB3_8
.LBB3_3:                                # %if.end
	cmpl	$1, %eax
	jne	.LBB3_8
# BB#4:                                 # %sw.bb
	movl	$1, %eax
.LBB3_8:                                # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jpeg_read_header, .Lfunc_end3-jpeg_read_header
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
.LCPI4_1:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.text
	.globl	jpeg_consume_input
	.align	16, 0x90
	.type	jpeg_consume_input,@function
jpeg_consume_input:                     # @jpeg_consume_input
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %ecx
	leal	-200(%rcx), %edx
	cmpl	$10, %edx
	ja	.LBB4_39
# BB#1:                                 # %entry
	movl	$1, %eax
	jmpq	*.LJTI4_0(,%rdx,8)
.LBB4_38:                               # %sw.bb.6
	movq	824(%rbx), %rax
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*(%rax)                 # TAILCALL
.LBB4_39:                               # %sw.default
	movq	(%rbx), %rax
	movl	$21, 40(%rax)
	movl	%ecx, 44(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	xorl	%eax, %eax
.LBB4_40:                               # %sw.epilog
	popq	%rbx
	retq
.LBB4_2:                                # %sw.bb
	movq	824(%rbx), %rax
	movq	%rbx, %rdi
	callq	*8(%rax)
	movq	40(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	movl	$201, 36(%rbx)
.LBB4_3:                                # %sw.bb.2
	movq	824(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	cmpl	$1, %eax
	jne	.LBB4_40
# BB#4:                                 # %if.then
	movl	56(%rbx), %eax
	cmpl	$4, %eax
	je	.LBB4_30
# BB#5:                                 # %if.then
	cmpl	$3, %eax
	jne	.LBB4_6
# BB#8:                                 # %sw.bb.1.i
	movq	304(%rbx), %rdx
	movl	(%rdx), %eax
	movl	96(%rdx), %ecx
	movl	192(%rdx), %edx
	cmpl	$1, %eax
	jne	.LBB4_12
# BB#9:                                 # %sw.bb.1.i
	cmpl	$2, %ecx
	jne	.LBB4_12
# BB#10:                                # %sw.bb.1.i
	cmpl	$3, %edx
	je	.LBB4_11
.LBB4_12:                               # %if.else.i
	cmpl	$1, %eax
	jne	.LBB4_16
# BB#13:                                # %if.else.i
	cmpl	$34, %ecx
	jne	.LBB4_16
# BB#14:                                # %if.else.i
	cmpl	$35, %edx
	jne	.LBB4_16
# BB#15:                                # %if.then.17.i
	movl	$7, 60(%rbx)
	movl	$2, 64(%rbx)
	jmp	.LBB4_37
.LBB4_30:                               # %sw.bb.69.i
	cmpl	$0, 388(%rbx)
	je	.LBB4_33
# BB#31:                                # %if.then.72.i
	movzbl	392(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB4_35
# BB#32:                                # %if.then.72.i
	testl	%eax, %eax
	jne	.LBB4_34
.LBB4_33:                               # %sw.bb.75.i
	movl	$4, 60(%rbx)
	movl	$4, 64(%rbx)
	jmp	.LBB4_37
.LBB4_6:                                # %if.then
	cmpl	$1, %eax
	jne	.LBB4_36
# BB#7:                                 # %sw.bb.i
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 60(%rbx)
	jmp	.LBB4_37
.LBB4_36:                               # %sw.default.96.i
	movq	$0, 60(%rbx)
	jmp	.LBB4_37
.LBB4_16:                               # %if.else.19.i
	cmpl	$82, %eax
	jne	.LBB4_20
# BB#17:                                # %if.else.19.i
	cmpl	$71, %ecx
	jne	.LBB4_20
# BB#18:                                # %if.else.19.i
	cmpl	$66, %edx
	je	.LBB4_19
.LBB4_20:                               # %if.else.27.i
	cmpl	$114, %eax
	jne	.LBB4_24
# BB#21:                                # %if.else.27.i
	cmpl	$103, %ecx
	jne	.LBB4_24
# BB#22:                                # %if.else.27.i
	cmpl	$98, %edx
	jne	.LBB4_24
# BB#23:                                # %if.then.33.i
	movl	$6, 60(%rbx)
	movl	$2, 64(%rbx)
	jmp	.LBB4_37
.LBB4_34:                               # %sw.default.79.i
	movq	(%rbx), %rcx
	movl	$116, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rcx)
.LBB4_35:                               # %sw.bb.77.i
	movl	$5, 60(%rbx)
	movl	$4, 64(%rbx)
	jmp	.LBB4_37
.LBB4_24:                               # %if.else.35.i
	cmpl	$0, 376(%rbx)
	jne	.LBB4_11
# BB#25:                                # %if.else.38.i
	cmpl	$0, 388(%rbx)
	je	.LBB4_29
# BB#26:                                # %if.then.40.i
	movzbl	392(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB4_11
# BB#27:                                # %if.then.40.i
	testl	%eax, %eax
	jne	.LBB4_28
.LBB4_19:                               # %if.then.25.i
	movl	$2, 60(%rbx)
	movl	$2, 64(%rbx)
	jmp	.LBB4_37
.LBB4_29:                               # %do.body.i
	movq	(%rbx), %r8
	movl	%eax, 44(%r8)
	movl	%ecx, 48(%r8)
	movl	%edx, 52(%r8)
	movl	$113, 40(%r8)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*8(%r8)
	jmp	.LBB4_11
.LBB4_28:                               # %sw.default.i
	movq	(%rbx), %rcx
	movl	$116, 40(%rcx)
	movl	%eax, 44(%rcx)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rcx)
.LBB4_11:                               # %if.then.i
	movl	$3, 60(%rbx)
	movl	$2, 64(%rbx)
.LBB4_37:                               # %default_decompress_parms.exit
	movl	772(%rbx), %eax
	movl	%eax, 68(%rbx)
	movl	%eax, 72(%rbx)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 80(%rbx)
	movaps	.LCPI4_0(%rip), %xmm0   # xmm0 = [0,0,0,1]
	movups	%xmm0, 88(%rbx)
	movaps	.LCPI4_1(%rip), %xmm0   # xmm0 = [1,0,2,0]
	movups	%xmm0, 104(%rbx)
	movq	$0, 160(%rbx)
	movl	$256, %eax              # imm = 0x100
	movd	%eax, %xmm0
	movups	%xmm0, 120(%rbx)
	movl	$202, 36(%rbx)
	movl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	jpeg_consume_input, .Lfunc_end4-jpeg_consume_input
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_2
	.quad	.LBB4_3
	.quad	.LBB4_40
	.quad	.LBB4_38
	.quad	.LBB4_38
	.quad	.LBB4_38
	.quad	.LBB4_38
	.quad	.LBB4_38
	.quad	.LBB4_38
	.quad	.LBB4_39
	.quad	.LBB4_38

	.text
	.globl	jpeg_input_complete
	.align	16, 0x90
	.type	jpeg_input_complete,@function
jpeg_input_complete:                    # @jpeg_input_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	leal	-200(%rax), %ecx
	cmpl	$11, %ecx
	jb	.LBB5_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB5_2:                                # %if.end
	movq	824(%rbx), %rax
	movl	36(%rax), %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	jpeg_input_complete, .Lfunc_end5-jpeg_input_complete
	.cfi_endproc

	.globl	jpeg_has_multiple_scans
	.align	16, 0x90
	.type	jpeg_has_multiple_scans,@function
jpeg_has_multiple_scans:                # @jpeg_has_multiple_scans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	leal	-202(%rax), %ecx
	cmpl	$9, %ecx
	jb	.LBB6_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB6_2:                                # %if.end
	movq	824(%rbx), %rax
	movl	32(%rax), %eax
	popq	%rbx
	retq
.Lfunc_end6:
	.size	jpeg_has_multiple_scans, .Lfunc_end6-jpeg_has_multiple_scans
	.cfi_endproc

	.globl	jpeg_finish_decompress
	.align	16, 0x90
	.type	jpeg_finish_decompress,@function
jpeg_finish_decompress:                 # @jpeg_finish_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	leal	-205(%rax), %ecx
	cmpl	$1, %ecx
	ja	.LBB7_5
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 88(%rbx)
	je	.LBB7_2
.LBB7_5:                                # %if.else
	cmpl	$210, %eax
	je	.LBB7_9
# BB#6:                                 # %if.else
	cmpl	$207, %eax
	jne	.LBB7_8
# BB#7:                                 # %if.then.9
	movl	$210, 36(%rbx)
	jmp	.LBB7_9
.LBB7_8:                                # %if.then.14
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
	jmp	.LBB7_9
.LBB7_2:                                # %if.then
	movl	168(%rbx), %eax
	cmpl	140(%rbx), %eax
	jae	.LBB7_4
# BB#3:                                 # %if.then.4
	movq	(%rbx), %rax
	movl	$69, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB7_4:                                # %if.end
	movq	792(%rbx), %rax
	movq	%rbx, %rdi
	callq	*8(%rax)
	movl	$210, 36(%rbx)
	.align	16, 0x90
.LBB7_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	824(%rbx), %rax
	cmpl	$0, 36(%rax)
	jne	.LBB7_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	%rbx, %rdi
	callq	*(%rax)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB7_9
	jmp	.LBB7_12
.LBB7_11:                               # %while.end
	movq	40(%rbx), %rax
	movq	%rbx, %rdi
	callq	*48(%rax)
	movq	%rbx, %rdi
	callq	jpeg_abort
	movl	$1, %eax
.LBB7_12:                               # %return
	popq	%rbx
	retq
.Lfunc_end7:
	.size	jpeg_finish_decompress, .Lfunc_end7-jpeg_finish_decompress
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
