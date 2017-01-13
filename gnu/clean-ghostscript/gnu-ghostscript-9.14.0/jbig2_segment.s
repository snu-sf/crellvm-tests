	.text
	.file	"jbig2_segment.bc"
	.globl	jbig2_parse_segment_header
	.align	16, 0x90
	.type	jbig2_parse_segment_header,@function
jbig2_parse_segment_header:             # @jbig2_parse_segment_header
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%rcx, %rbp
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	cmpq	$11, %r13
	jb	.LBB0_25
# BB#1:                                 # %if.end
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$48, %edx
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#4:                                 # %if.end.4
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	callq	jbig2_get_uint32
	movl	%eax, %ebp
	movl	%ebp, (%rbx)
	movb	4(%r12), %al
	movb	%al, 4(%rbx)
	movzbl	5(%r12), %r15d
	movl	%r15d, %ecx
	andl	$224, %ecx
	cmpl	$224, %ecx
	jne	.LBB0_6
# BB#5:                                 # %if.then.9
	leaq	5(%r12), %rdi
	callq	jbig2_get_uint32
	movl	%eax, %r15d
	andl	$536870911, %r15d       # imm = 0x1FFFFFFF
	leal	1(%r15), %edi
	shrl	$3, %edi
	addl	$9, %edi
	movl	(%rbx), %ebp
	movb	4(%rbx), %al
	jmp	.LBB0_7
.LBB0_2:                                # %if.then.2
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	jmp	.LBB0_3
.LBB0_6:                                # %if.else
	shrl	$5, %r15d
	movl	$6, %edi
.LBB0_7:                                # %if.end.14
	movl	%r15d, 24(%rbx)
	cmpl	$65536, %ebp            # imm = 0x10000
	seta	%cl
	cmpl	$257, %ebp              # imm = 0x101
	movzbl	%cl, %ecx
	leal	2(%rcx,%rcx), %ecx
	movl	$1, %esi
	cmovael	%ecx, %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movb	%al, %cl
	andb	$64, %cl
	shrb	$6, %cl
	movzbl	%cl, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	%esi, %ecx
	imull	%r15d, %ecx
	leal	(%rdi,%rcx), %esi
	leal	5(%rdx,%rsi), %edx
	movslq	%edx, %rdx
	cmpq	%r13, %rdx
	jbe	.LBB0_9
# BB#8:                                 # %if.then.33
	movl	$0, %esi
	movl	$.L.str.1, %ecx
	movl	$-1, %r8d
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	jbig2_error
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	xorl	%ebx, %ebx
	jmp	.LBB0_25
.LBB0_9:                                # %if.end.37
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	testl	%r15d, %r15d
	je	.LBB0_20
# BB#10:                                # %if.then.39
	movl	%ebp, %r13d
	movq	(%r14), %rdi
	movl	%ecx, %esi
	movl	$4, %edx
	callq	jbig2_alloc
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_19
# BB#11:                                # %for.body.lr.ph
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	%r15d, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	cltq
	leaq	(%r12,%rax), %rbp
	movq	%r12, (%rsp)            # 8-byte Spill
	movl	28(%rsp), %r14d         # 4-byte Reload
	movl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rbp,%r12), %rdi
	cmpl	$256, %r13d             # imm = 0x100
	ja	.LBB0_14
# BB#13:                                # %cond.true.53
                                        #   in Loop: Header=BB0_12 Depth=1
	movzbl	(%rdi), %r9d
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_14:                               # %cond.false.56
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$2, 28(%rsp)            # 4-byte Folded Reload
	jne	.LBB0_16
# BB#15:                                # %cond.true.59
                                        #   in Loop: Header=BB0_12 Depth=1
	callq	jbig2_get_uint16
	movzwl	%ax, %r9d
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_16:                               # %cond.false.63
                                        #   in Loop: Header=BB0_12 Depth=1
	callq	jbig2_get_uint32
	movl	%eax, %r9d
.LBB0_17:                               # %cond.end.69
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%r9d, (%rax,%r15,4)
	movl	(%rbx), %edx
	xorl	%esi, %esi
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%edx, %r8d
	callq	jbig2_error
	incq	%r15
	addq	%r14, %r12
	cmpq	32(%rsp), %r15          # 8-byte Folded Reload
	jl	.LBB0_12
# BB#18:                                # %cleanup.thread
	movq	8(%rsp), %r15           # 8-byte Reload
	addl	%r12d, %r15d
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 32(%rbx)
	movb	4(%rbx), %al
	movq	40(%rsp), %r14          # 8-byte Reload
	movq	(%rsp), %r12            # 8-byte Reload
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.80
	movq	$0, 32(%rbx)
	movq	8(%rsp), %r15           # 8-byte Reload
.LBB0_21:                               # %if.end.82
	testb	$64, %al
	jne	.LBB0_22
# BB#23:                                # %if.else.92
	movslq	%r15d, %rax
	incl	%r15d
	movzbl	(%r12,%rax), %r9d
	movl	%r9d, 8(%rbx)
	jmp	.LBB0_24
.LBB0_22:                               # %if.then.87
	movslq	%r15d, %r15
	leaq	(%r12,%r15), %rdi
	callq	jbig2_get_uint32
	movl	%eax, %r9d
	movl	%r9d, 8(%rbx)
	addl	$4, %r15d
.LBB0_24:                               # %if.end.98
	movl	(%rbx), %edx
	xorl	%esi, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%edx, %r8d
	callq	jbig2_error
	movslq	%r15d, %rbp
	addq	%rbp, %r12
	movq	%r12, %rdi
	callq	jbig2_get_uint32
	movl	%eax, %eax
	movq	%rax, 16(%rbx)
	addl	$4, %ebp
	movslq	%ebp, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	movq	$0, 40(%rbx)
	jmp	.LBB0_25
.LBB0_19:                               # %cleanup
	xorl	%ebx, %ebx
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.2, %ecx
.LBB0_3:                                # %cleanup.110
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB0_25:                               # %cleanup.110
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jbig2_parse_segment_header, .Lfunc_end0-jbig2_parse_segment_header
	.cfi_endproc

	.globl	jbig2_free_segment
	.align	16, 0x90
	.type	jbig2_free_segment,@function
jbig2_free_segment:                     # @jbig2_free_segment
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%r14), %rdi
	callq	jbig2_free
.LBB1_2:                                # %if.end
	movzbl	4(%rbx), %eax
	andl	$63, %eax
	cmpl	$39, %eax
	jg	.LBB1_8
# BB#3:                                 # %if.end
	testl	%eax, %eax
	je	.LBB1_13
# BB#4:                                 # %if.end
	cmpl	$4, %eax
	je	.LBB1_15
# BB#5:                                 # %if.end
	cmpl	$16, %eax
	jne	.LBB1_19
# BB#6:                                 # %sw.bb.14
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_19
# BB#7:                                 # %if.then.18
	movq	%r14, %rdi
	callq	jbig2_hd_release
	jmp	.LBB1_19
.LBB1_8:                                # %if.end
	cmpl	$40, %eax
	je	.LBB1_15
# BB#9:                                 # %if.end
	cmpl	$53, %eax
	jne	.LBB1_10
# BB#17:                                # %sw.bb.21
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_19
# BB#18:                                # %if.then.25
	movq	%r14, %rdi
	callq	jbig2_table_free
	jmp	.LBB1_19
.LBB1_15:                               # %sw.bb.7
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_19
# BB#16:                                # %if.then.11
	movq	%r14, %rdi
	callq	jbig2_image_release
	jmp	.LBB1_19
.LBB1_13:                               # %sw.bb
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_19
# BB#14:                                # %if.then.4
	movq	%r14, %rdi
	callq	jbig2_sd_release
	jmp	.LBB1_19
.LBB1_10:                               # %if.end
	cmpl	$62, %eax
	jne	.LBB1_19
# BB#11:                                # %sw.bb.28
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_19
# BB#12:                                # %if.then.32
	movq	%r14, %rdi
	callq	jbig2_metadata_free
.LBB1_19:                               # %sw.epilog
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	jbig2_free              # TAILCALL
.Lfunc_end1:
	.size	jbig2_free_segment, .Lfunc_end1-jbig2_free_segment
	.cfi_endproc

	.globl	jbig2_find_segment
	.align	16, 0x90
	.type	jbig2_find_segment,@function
jbig2_find_segment:                     # @jbig2_find_segment
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	92(%rdi), %rdx
	movq	16(%rdi), %r8
	leal	-1(%rdx), %eax
	movslq	%eax, %rcx
	shlq	$3, %rcx
	.align	16, 0x90
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	jle	.LBB2_3
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	80(%rdi), %rax
	movq	(%rax,%rcx), %rax
	decq	%rdx
	addq	$-8, %rcx
	cmpl	%esi, (%rax)
	jne	.LBB2_1
	jmp	.LBB2_7
.LBB2_3:                                # %for.end
	xorl	%eax, %eax
	testq	%r8, %r8
	je	.LBB2_7
# BB#4:                                 # %if.then.7
	movslq	92(%r8), %rdx
	leal	-1(%rdx), %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	.align	16, 0x90
.LBB2_5:                                # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	movl	$0, %eax
	jle	.LBB2_7
# BB#6:                                 # %for.body.12
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	80(%r8), %rax
	movq	(%rax,%rdi), %rax
	decq	%rdx
	addq	$-8, %rdi
	cmpl	%esi, (%rax)
	jne	.LBB2_5
.LBB2_7:                                # %cleanup
	retq
.Lfunc_end2:
	.size	jbig2_find_segment, .Lfunc_end2-jbig2_find_segment
	.cfi_endproc

	.globl	jbig2_get_region_segment_info
	.align	16, 0x90
	.type	jbig2_get_region_segment_info,@function
jbig2_get_region_segment_info:          # @jbig2_get_region_segment_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%r14, %rdi
	callq	jbig2_get_int32
	movl	%eax, (%rbx)
	leaq	4(%r14), %rdi
	callq	jbig2_get_int32
	movl	%eax, 4(%rbx)
	leaq	8(%r14), %rdi
	callq	jbig2_get_int32
	movl	%eax, 8(%rbx)
	leaq	12(%r14), %rdi
	callq	jbig2_get_int32
	movl	%eax, 12(%rbx)
	movzbl	16(%r14), %eax
	movb	%al, 20(%rbx)
	andl	$7, %eax
	movl	%eax, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	jbig2_get_region_segment_info, .Lfunc_end3-jbig2_get_region_segment_info
	.cfi_endproc

	.globl	jbig2_parse_extension_segment
	.align	16, 0x90
	.type	jbig2_parse_extension_segment,@function
jbig2_parse_extension_segment:          # @jbig2_parse_extension_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 48
.Ltmp28:
	.cfi_offset %rbx, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	jbig2_get_uint32
	movl	%eax, %ebp
	andl	$-1610612736, %eax      # imm = 0xFFFFFFFFA0000000
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	(%r15), %edx
	movl	$2, %esi
	movl	$.L.str.5, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB4_2:                                # %if.end
	cmpl	$536870914, %ebp        # imm = 0x20000002
	jne	.LBB4_3
# BB#5:                                 # %sw.bb.5
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_comment_unicode   # TAILCALL
.LBB4_3:                                # %if.end
	cmpl	$536870912, %ebp        # imm = 0x20000000
	jne	.LBB4_6
# BB#4:                                 # %sw.bb
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_comment_ascii     # TAILCALL
.LBB4_6:                                # %sw.default
	movl	(%r15), %edx
	testl	%ebp, %ebp
	js	.LBB4_7
# BB#8:                                 # %if.else
	movl	$2, %esi
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_error             # TAILCALL
.LBB4_7:                                # %if.then.8
	movl	$3, %esi
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %r8d
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_error             # TAILCALL
.Lfunc_end4:
	.size	jbig2_parse_extension_segment, .Lfunc_end4-jbig2_parse_extension_segment
	.cfi_endproc

	.globl	jbig2_parse_segment
	.align	16, 0x90
	.type	jbig2_parse_segment,@function
jbig2_parse_segment:                    # @jbig2_parse_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 48
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	(%rbx), %edx
	movzbl	4(%rbx), %r9d
	movl	%r9d, %eax
	andl	$63, %eax
	movq	16(%rbx), %rcx
	movq	%rcx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %esi
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movl	%edx, %r8d
	callq	jbig2_error
	movzbl	4(%rbx), %r8d
	andl	$63, %r8d
	cmpl	$15, %r8d
	jle	.LBB5_1
# BB#5:                                 # %entry
	leal	-16(%r8), %eax
	cmpl	$37, %eax
	jbe	.LBB5_8
# BB#6:                                 # %entry
	cmpl	$62, %r8d
	je	.LBB5_7
.LBB5_22:                               # %return
	movl	(%rbx), %edx
	movl	$2, %esi
	movl	$.L.str.12, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB5_8:                                # %entry
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_11:                               # %sw.bb.12
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_halftone_region   # TAILCALL
.LBB5_1:                                # %entry
	leal	-6(%r8), %eax
	cmpl	$2, %eax
	jb	.LBB5_4
# BB#2:                                 # %entry
	testl	%r8d, %r8d
	jne	.LBB5_3
# BB#9:                                 # %sw.bb
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_symbol_dictionary # TAILCALL
.LBB5_15:                               # %sw.bb.19
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_refinement_region # TAILCALL
.LBB5_14:                               # %sw.bb.17
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_immediate_generic_region # TAILCALL
.LBB5_3:                                # %entry
	cmpl	$4, %r8d
	jne	.LBB5_22
.LBB5_4:                                # %sw.bb.8
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_text_region       # TAILCALL
.LBB5_7:                                # %sw.bb.35
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_parse_extension_segment # TAILCALL
.LBB5_10:                               # %sw.bb.10
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_pattern_dictionary # TAILCALL
.LBB5_12:                               # %sw.bb.14
	movl	(%rbx), %edx
	movl	$2, %esi
	movl	$.L.str.9, %ecx
	jmp	.LBB5_13
.LBB5_16:                               # %sw.bb.21
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_page_info         # TAILCALL
.LBB5_17:                               # %sw.bb.23
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_end_of_page       # TAILCALL
.LBB5_18:                               # %sw.bb.25
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_end_of_stripe     # TAILCALL
.LBB5_19:                               # %sw.bb.27
	movl	$5, 64(%r15)
	movl	(%rbx), %edx
	movl	$1, %esi
	movl	$.L.str.10, %ecx
	jmp	.LBB5_13
.LBB5_20:                               # %sw.bb.30
	movl	(%rbx), %edx
	movl	$2, %esi
	movl	$.L.str.11, %ecx
.LBB5_13:                               # %sw.bb.14
	xorl	%eax, %eax
	movq	%r15, %rdi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_error             # TAILCALL
.LBB5_21:                               # %sw.bb.33
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_table             # TAILCALL
.Lfunc_end5:
	.size	jbig2_parse_segment, .Lfunc_end5-jbig2_parse_segment
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_10
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_11
	.quad	.LBB5_22
	.quad	.LBB5_11
	.quad	.LBB5_11
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_12
	.quad	.LBB5_22
	.quad	.LBB5_14
	.quad	.LBB5_14
	.quad	.LBB5_15
	.quad	.LBB5_22
	.quad	.LBB5_15
	.quad	.LBB5_15
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_22
	.quad	.LBB5_16
	.quad	.LBB5_17
	.quad	.LBB5_18
	.quad	.LBB5_19
	.quad	.LBB5_20
	.quad	.LBB5_21

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"failed to allocate segment in jbig2_parse_segment_header"
	.size	.L.str, 57

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"jbig2_parse_segment_header() called with insufficient data"
	.size	.L.str.1, 59

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"could not allocate referred_to_segments in jbig2_parse_segment_header"
	.size	.L.str.2, 70

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"segment %d refers to segment %d"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"segment %d is associated with page %d"
	.size	.L.str.4, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"extension segment is marked 'necessary' but not 'reservered' contrary to spec"
	.size	.L.str.5, 78

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"unhandled necessary extension segment type 0x%08x"
	.size	.L.str.6, 50

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"unhandled extension segment"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Segment %d, flags=%x, type=%d, data_length=%d"
	.size	.L.str.8, 46

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"unhandled segment type 'intermediate generic region'"
	.size	.L.str.9, 53

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"end of file"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"unhandled segment type 'profile'"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"unknown segment type %d"
	.size	.L.str.12, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
