	.text
	.file	"sfxcommon.bc"
	.globl	file_alloc_stream
	.align	16, 0x90
	.type	file_alloc_stream,@function
file_alloc_stream:                      # @file_alloc_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	callq	s_alloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#1:                                 # %if.end
	movw	$1, 266(%rbx)
	movw	$1, 264(%rbx)
	movl	$0, 248(%rbx)
	movb	$0, 154(%rbx)
	movq	%rbx, %rdi
	callq	s_disable
	xorps	%xmm0, %xmm0
	movups	%xmm0, 272(%rbx)
	movq	%rbx, %rax
.LBB0_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	file_alloc_stream, .Lfunc_end0-file_alloc_stream
	.cfi_endproc

	.globl	file_open_stream
	.align	16, 0x90
	.type	file_open_stream,@function
file_open_stream:                       # @file_open_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 96
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r15
	movl	%ecx, %r13d
	movq	%rdx, %rbp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	104(%rsp), %rdi
	testq	%r12, %r12
	jne	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	callq	gs_getiodevice
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	16(%rsp), %r15          # 8-byte Reload
.LBB1_2:                                # %if.end
	movq	%rdi, (%rsp)
	leaq	28(%rsp), %r9
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%rbp, %rdx
	movl	%r13d, %ecx
	movq	%r15, %r8
	callq	file_prepare_stream
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_8
# BB#3:                                 # %if.end.3
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB1_8
# BB#4:                                 # %if.end.6
	cmpb	$0, (%rbx)
	je	.LBB1_8
# BB#5:                                 # %if.end.10
	movq	96(%rsp), %rax
	movq	(%r15), %rcx
	movq	136(%rcx), %rsi
	movl	144(%rcx), %r9d
	leaq	28(%rsp), %rdx
	leaq	32(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rsi, %r8
	callq	*%rax
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_6
# BB#7:                                 # %if.end.20
	movq	(%r15), %rdi
	movq	32(%rsp), %rsi
	movq	136(%rdi), %rcx
	movl	144(%rdi), %r8d
	leaq	28(%rsp), %rdx
	callq	file_init_stream
	jmp	.LBB1_8
.LBB1_6:                                # %if.then.16
	movq	(%r15), %rax
	movq	136(%rax), %rsi
	movl	$.L.str, %edx
	movq	104(%rsp), %rbp
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	(%r15), %rsi
	movl	$.L.str.1, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	$0, (%r15)
	movl	%ebx, %ebp
.LBB1_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_open_stream, .Lfunc_end1-file_open_stream
	.cfi_endproc

	.globl	file_prepare_stream
	.align	16, 0x90
	.type	file_prepare_stream,@function
file_prepare_stream:                    # @file_prepare_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 80
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	%ecx, %ebp
	movl	%esi, %r12d
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	strcpy
	movl	$gp_fmode_binary_suffix, %esi
	movq	%rbx, %rdi
	callq	strcat
	testl	%ebp, %ebp
	movl	$2048, %r15d            # imm = 0x800
	cmovnel	%ebp, %r15d
	movl	$-13, %r13d
	cmpl	%r12d, %r15d
	jbe	.LBB2_7
# BB#1:                                 # %if.end.4
	movq	80(%rsp), %r14
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	s_alloc
	movq	%rax, %rbx
	movl	$-25, %r13d
	testq	%rbx, %rbx
	je	.LBB2_7
# BB#2:                                 # %if.end.8
	movw	$1, 266(%rbx)
	movw	$1, 264(%rbx)
	movl	$0, 248(%rbx)
	movb	$0, 154(%rbx)
	movq	%rbx, %rdi
	callq	s_disable
	xorps	%xmm0, %xmm0
	movups	%xmm0, 272(%rbx)
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	*64(%r14)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB2_7
# BB#3:                                 # %if.end.12
	movq	8(%rsp), %rsi           # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB2_5
# BB#4:                                 # %if.then.14
	movl	%r12d, %ebp
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, (%r14,%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movb	$0, (%r14)
.LBB2_6:                                # %if.end.17
	movq	%r14, 136(%rbx)
	movl	%r15d, 148(%rbx)
	movl	%r15d, 144(%rbx)
	movq	$0, 296(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbx, (%rax)
	xorl	%r13d, %r13d
.LBB2_7:                                # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_prepare_stream, .Lfunc_end2-file_prepare_stream
	.cfi_endproc

	.globl	file_init_stream
	.align	16, 0x90
	.type	file_init_stream,@function
file_init_stream:                       # @file_init_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 208
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movsbl	(%r14), %eax
	cmpl	$119, %eax
	je	.LBB3_5
# BB#1:                                 # %entry
	cmpl	$114, %eax
	jne	.LBB3_2
# BB#4:                                 # %sw.bb.1
	movq	%r12, %rdi
	callq	fileno
	movl	$1, %r13d
	leaq	8(%rsp), %rdx
	movl	$1, %edi
	movl	%eax, %esi
	callq	__fxstat64
	movl	32(%rsp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$8192, %eax             # imm = 0x2000
	cmovel	%r13d, %ebp
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	sread_file
	jmp	.LBB3_6
.LBB3_5:                                # %sw.bb.4
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	swrite_file
	jmp	.LBB3_6
.LBB3_2:                                # %entry
	cmpl	$97, %eax
	jne	.LBB3_6
# BB#3:                                 # %sw.bb
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	callq	sappend_file
.LBB3_6:                                # %sw.epilog
	movzbl	1(%r14), %eax
	cmpl	$43, %eax
	jne	.LBB3_8
# BB#7:                                 # %if.then
	orb	$3, 328(%rbx)
.LBB3_8:                                # %if.end
	movq	216(%rbx), %rax
	movq	%rax, 296(%rbx)
	movq	$file_close_file, 216(%rbx)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_init_stream, .Lfunc_end3-file_init_stream
	.cfi_endproc

	.globl	file_close_file
	.align	16, 0x90
	.type	file_close_file,@function
file_close_file:                        # @file_close_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 48
.Ltmp46:
	.cfi_offset %rbx, -48
.Ltmp47:
	.cfi_offset %r12, -40
.Ltmp48:
	.cfi_offset %r13, -32
.Ltmp49:
	.cfi_offset %r14, -24
.Ltmp50:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	240(%r15), %r13
	callq	file_close_disable
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jne	.LBB4_7
# BB#1:                                 # %while.cond.preheader
	xorl	%r14d, %r14d
	testq	%r13, %r13
	movl	$0, %ebx
	jmp	.LBB4_2
	.align	16, 0x90
.LBB4_10:                               # %if.end.6
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	%r13, %rdi
	callq	s_disable
	xorl	%ebx, %ebx
	testq	%r12, %r12
	movq	%r12, %r13
.LBB4_2:                                # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, %r12d
	je	.LBB4_5
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	248(%r13), %eax
	movb	$1, %bl
	testl	%eax, %eax
	je	.LBB4_4
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	240(%r13), %r12
	cmpl	$2, %eax
	jl	.LBB4_10
# BB#9:                                 # %if.then.5
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	8(%r13), %rdi
	movq	136(%r13), %rsi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	jmp	.LBB4_10
.LBB4_4:
	movq	%r13, %r12
.LBB4_5:                                # %while.end
	movq	8(%r15), %rdi
	movq	136(%r15), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	testb	%bl, %bl
	je	.LBB4_7
# BB#6:                                 # %while.end
	movl	288(%r15), %eax
	testl	%eax, %eax
	je	.LBB4_7
# BB#11:                                # %if.then.13
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	sclose                  # TAILCALL
.LBB4_7:                                # %cleanup
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	file_close_file, .Lfunc_end4-file_close_file
	.cfi_endproc

	.type	file_default_buffer_size,@object # @file_default_buffer_size
	.section	.rodata,"a",@progbits
	.globl	file_default_buffer_size
	.align	4
file_default_buffer_size:
	.long	2048                    # 0x800
	.size	file_default_buffer_size, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"file_close(buffer)"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"file_prepare_stream(stream)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"file_close(temp stream buffer)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"file_prepare_stream"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"file_prepare_stream(buffer)"
	.size	.L.str.4, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
