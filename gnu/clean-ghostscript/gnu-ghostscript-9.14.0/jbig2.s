	.text
	.file	"jbig2.bc"
	.globl	jbig2_alloc
	.align	16, 0x90
	.type	jbig2_alloc,@function
jbig2_alloc:                            # @jbig2_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	testq	%rcx, %rcx
	je	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movq	$-256, %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	%rsi, %rax
	jbe	.LBB0_2
.LBB0_3:                                # %if.end
	movq	(%rdi), %rax
	imulq	%rsi, %rcx
	movq	%rcx, %rsi
	jmpq	*%rax                   # TAILCALL
.LBB0_2:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	jbig2_alloc, .Lfunc_end0-jbig2_alloc
	.cfi_endproc

	.globl	jbig2_free
	.align	16, 0x90
	.type	jbig2_free,@function
jbig2_free:                             # @jbig2_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	jbig2_free, .Lfunc_end1-jbig2_free
	.cfi_endproc

	.globl	jbig2_realloc
	.align	16, 0x90
	.type	jbig2_realloc,@function
jbig2_realloc:                          # @jbig2_realloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	testq	%rcx, %rcx
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	$-256, %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	%r8, %rax
	jbe	.LBB2_2
.LBB2_3:                                # %if.end
	movq	16(%rdi), %rax
	imulq	%r8, %rcx
	movq	%rcx, %rdx
	jmpq	*%rax                   # TAILCALL
.LBB2_2:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	jbig2_realloc, .Lfunc_end2-jbig2_realloc
	.cfi_endproc

	.globl	jbig2_error
	.align	16, 0x90
	.type	jbig2_error,@function
jbig2_error:                            # @jbig2_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp3:
	.cfi_def_cfa_offset 1264
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB3_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB3_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	1264(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$32, 176(%rsp)
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rax
	movl	$1024, %esi             # imm = 0x400
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	vsnprintf
	testl	%eax, %eax
	js	.LBB3_4
# BB#3:                                 # %entry
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB3_5
.LBB3_4:                                # %if.then
	leaq	208(%rsp), %rdi
	movl	$.L.str, %esi
	movl	$1024, %edx             # imm = 0x400
	callq	strncpy
.LBB3_5:                                # %if.end
	movq	32(%rbx), %rdi
	leaq	208(%rsp), %rsi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	callq	*24(%rbx)
	cmpl	$3, %ebp
	movl	$-1, %ecx
	cmovel	%ecx, %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jbig2_error, .Lfunc_end3-jbig2_error
	.cfi_endproc

	.globl	jbig2_ctx_new
	.align	16, 0x90
	.type	jbig2_ctx_new,@function
jbig2_ctx_new:                          # @jbig2_ctx_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 64
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rdx, %r12
	movl	%esi, %ebp
	testq	%rdi, %rdi
	movl	$jbig2_default_allocator, %ebx
	cmovneq	%rdi, %rbx
	testq	%rcx, %rcx
	movl	$jbig2_default_error, %r13d
	cmovneq	%rcx, %r13
	movl	$112, %esi
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB4_1
# BB#2:                                 # %if.end.7
	movq	%rbx, (%r14)
	movl	%ebp, 8(%r14)
	movq	%r12, 16(%r14)
	movq	%r13, 24(%r14)
	movq	%r15, 32(%r14)
	andl	$1, %ebp
	movl	%ebp, 64(%r14)
	movq	$0, 40(%r14)
	movl	$0, 88(%r14)
	movl	$16, 76(%r14)
	movl	$128, %esi
	movq	%rbx, %rdi
	callq	*(%rbx)
	movq	%rax, 80(%r14)
	testq	%rax, %rax
	je	.LBB4_3
# BB#5:                                 # %if.end.21
	movq	$0, 92(%r14)
	movl	$4, 100(%r14)
	movq	(%r14), %rdi
	movl	$192, %esi
	callq	*(%rdi)
	movq	%rax, 104(%r14)
	testq	%rax, %rax
	je	.LBB4_13
# BB#6:                                 # %for.cond.preheader
	movslq	100(%r14), %rcx
	testq	%rcx, %rcx
	jle	.LBB4_12
# BB#7:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	testb	$1, %cl
	je	.LBB4_9
# BB#8:                                 # %for.body.prol
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movq	$0, 40(%rax)
	movl	$1, %edx
.LBB4_9:                                # %for.body.lr.ph.split
	cmpl	$1, %ecx
	je	.LBB4_12
# BB#10:                                # %for.body.lr.ph.split.split
	leaq	(%rdx,%rdx,2), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	.align	16, 0x90
.LBB4_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	movl	$0, 4(%rax)
	movq	$0, 40(%rax)
	movl	$0, 48(%rax)
	movl	$0, 52(%rax)
	movq	$0, 88(%rax)
	addq	$2, %rdx
	addq	$96, %rax
	cmpq	%rcx, %rdx
	jl	.LBB4_11
	jmp	.LBB4_12
.LBB4_1:                                # %if.then.5
	movl	$.L.str.1, %esi
	movl	$3, %edx
	movl	$-1, %ecx
	movq	%r15, %rdi
	callq	*%r13
	jmp	.LBB4_12
.LBB4_3:                                # %if.then.19
	movl	$.L.str.2, %esi
	movl	$3, %edx
	movl	$-1, %ecx
	movq	%r15, %rdi
	callq	*%r13
	jmp	.LBB4_4
.LBB4_13:                               # %if.then.29
	movl	$.L.str.3, %esi
	movl	$3, %edx
	movl	$-1, %ecx
	movq	%r15, %rdi
	callq	*%r13
	movq	80(%r14), %rsi
	movq	%rbx, %rdi
	callq	*8(%rbx)
.LBB4_4:                                # %cleanup
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*8(%rbx)
.LBB4_12:                               # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	jbig2_ctx_new, .Lfunc_end4-jbig2_ctx_new
	.cfi_endproc

	.align	16, 0x90
	.type	jbig2_default_error,@function
jbig2_default_error:                    # @jbig2_default_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbx, -16
	movl	%ecx, %ebx
	movq	%rsi, %rcx
	cmpl	$3, %edx
	jne	.LBB5_4
# BB#1:                                 # %if.then
	movq	stderr(%rip), %rdi
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	fprintf
	cmpl	$-1, %ebx
	je	.LBB5_3
# BB#2:                                 # %if.then.2
	movq	stderr(%rip), %rdi
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	fprintf
.LBB5_3:                                # %if.end
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	callq	fflush
.LBB5_4:                                # %if.end.6
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	jbig2_default_error, .Lfunc_end5-jbig2_default_error
	.cfi_endproc

	.globl	jbig2_get_int16
	.align	16, 0x90
	.type	jbig2_get_int16,@function
jbig2_get_int16:                        # @jbig2_get_int16
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	shll	$8, %eax
	movzbl	1(%rdi), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	retq
.Lfunc_end6:
	.size	jbig2_get_int16, .Lfunc_end6-jbig2_get_int16
	.cfi_endproc

	.globl	jbig2_get_uint16
	.align	16, 0x90
	.type	jbig2_get_uint16,@function
jbig2_get_uint16:                       # @jbig2_get_uint16
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	shll	$8, %eax
	movzbl	1(%rdi), %ecx
	orl	%eax, %ecx
	movzwl	%cx, %eax
	retq
.Lfunc_end7:
	.size	jbig2_get_uint16, .Lfunc_end7-jbig2_get_uint16
	.cfi_endproc

	.globl	jbig2_get_int32
	.align	16, 0x90
	.type	jbig2_get_int32,@function
jbig2_get_int32:                        # @jbig2_get_int32
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	shll	$8, %eax
	movzbl	1(%rdi), %ecx
	orl	%eax, %ecx
	shll	$16, %ecx
	movzbl	2(%rdi), %edx
	shll	$8, %edx
	movzbl	3(%rdi), %eax
	orl	%edx, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end8:
	.size	jbig2_get_int32, .Lfunc_end8-jbig2_get_int32
	.cfi_endproc

	.globl	jbig2_get_uint32
	.align	16, 0x90
	.type	jbig2_get_uint32,@function
jbig2_get_uint32:                       # @jbig2_get_uint32
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	(%rdi), %eax
	shll	$8, %eax
	movzbl	1(%rdi), %ecx
	orl	%eax, %ecx
	shll	$16, %ecx
	movzbl	2(%rdi), %edx
	shll	$8, %edx
	movzbl	3(%rdi), %eax
	orl	%edx, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end9:
	.size	jbig2_get_uint32, .Lfunc_end9-jbig2_get_uint32
	.cfi_endproc

	.globl	jbig2_data_in
	.align	16, 0x90
	.type	jbig2_data_in,@function
jbig2_data_in:                          # @jbig2_data_in
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 80
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %r13
	movq	40(%r13), %r12
	movl	$1024, %ebx             # imm = 0x400
	testq	%r12, %r12
	je	.LBB10_1
# BB#8:                                 # %if.else
	leaq	60(%r13), %rbp
	movl	60(%r13), %edx
	movq	%rdx, %rax
	addq	%r14, %rax
	movq	48(%r13), %rdi
	leaq	56(%r13), %r15
	cmpq	%rdi, %rax
	jbe	.LBB10_9
# BB#10:                                # %if.then.12
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	(%r15), %eax
	movq	%rdi, %rsi
	shrq	%rsi
	subl	%eax, %edx
	leaq	(%rdx,%r14), %rcx
	cmpq	%rsi, %rax
	movl	$1024, %ebx             # imm = 0x400
	ja	.LBB10_13
# BB#11:                                # %if.then.12
	cmpq	%rdi, %rcx
	ja	.LBB10_13
# BB#12:                                # %if.then.25
	leaq	(%rax,%r12), %rsi
	movq	%r12, %rdi
	callq	memmove
	movq	40(%r13), %r12
	jmp	.LBB10_17
	.align	16, 0x90
.LBB10_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	addq	%rbx, %rbx
	cmpq	%r14, %rbx
	jb	.LBB10_1
# BB#2:                                 # %do.end
	movq	%rsi, %rbp
	cmpq	$-256, %rbx
	jae	.LBB10_3
# BB#6:                                 # %jbig2_alloc.exit
	movq	(%r13), %rdi
	movq	%rbx, %rsi
	callq	*(%rdi)
	movq	%rax, %r12
	movq	%r12, 40(%r13)
	testq	%r12, %r12
	je	.LBB10_4
# BB#7:                                 # %cleanup.thread
	movq	%rbx, 48(%r13)
	leaq	56(%r13), %r15
	movq	$0, 56(%r13)
	leaq	60(%r13), %rbx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	jmp	.LBB10_18
	.align	16, 0x90
.LBB10_13:                              # %do.body.37
                                        # =>This Inner Loop Header: Depth=1
	addq	%rbx, %rbx
	cmpq	%rcx, %rbx
	jb	.LBB10_13
# BB#14:                                # %do.end.47
	cmpq	$-257, %rbx             # imm = 0xFFFFFFFFFFFFFEFF
	ja	.LBB10_57
# BB#15:                                # %jbig2_alloc.exit132
	movq	(%r13), %rdi
	movq	%rbx, %rsi
	callq	*(%rdi)
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB10_57
# BB#16:                                # %cleanup.68.thread
	movl	56(%r13), %esi
	movl	60(%r13), %edx
	subl	%esi, %edx
	addq	40(%r13), %rsi
	movq	%r12, %rdi
	callq	memcpy
	movq	(%r13), %rdi
	movq	40(%r13), %rsi
	callq	*8(%rdi)
	movq	%r12, 40(%r13)
	movq	%rbx, 48(%r13)
.LBB10_17:                              # %if.end.72
	movq	%rbp, %rbx
	movl	(%rbx), %edx
	subl	(%r15), %edx
	movl	%edx, (%rbx)
	movl	$0, (%r15)
	movq	8(%rsp), %rsi           # 8-byte Reload
	jmp	.LBB10_18
.LBB10_9:
	movq	%rbp, %rbx
.LBB10_18:                              # %if.end.78
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	%edx, %edi
	addq	%r12, %rdi
	movq	%r14, %rdx
	callq	memcpy
	addl	%r14d, (%rbx)
	leaq	16(%rsp), %r14
	movq	%rbx, %r12
	jmp	.LBB10_19
.LBB10_56:                              # %if.else.202
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$2, 64(%r13)
	.align	16, 0x90
.LBB10_19:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	64(%r13), %eax
	cmpq	$5, %rax
	ja	.LBB10_19
# BB#20:                                # %for.cond
                                        #   in Loop: Header=BB10_19 Depth=1
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_37:                              # %sw.bb.159
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	(%r15), %esi
	movl	(%r12), %edx
	subl	%esi, %edx
	addq	40(%r13), %rsi
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	jbig2_parse_segment_header
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB10_53
# BB#38:                                # %if.end.172
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	16(%rsp), %eax
	addl	%eax, (%r15)
	movl	88(%r13), %ecx
	cmpl	76(%r13), %ecx
	jne	.LBB10_39
# BB#40:                                # %if.then.179
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	(%r13), %rdi
	movq	80(%r13), %rsi
	leal	(,%rcx,4), %edx
	movl	%edx, 76(%r13)
	testl	%edx, %edx
	movl	$0, %eax
	js	.LBB10_42
# BB#41:                                # %if.end.i.135
                                        #   in Loop: Header=BB10_19 Depth=1
	movslq	%edx, %rdx
	shlq	$3, %rdx
	callq	*16(%rdi)
	movl	88(%r13), %ecx
.LBB10_42:                              # %jbig2_realloc.exit
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	%rax, 80(%r13)
	jmp	.LBB10_43
.LBB10_46:                              # %sw.bb.205
                                        #   in Loop: Header=BB10_19 Depth=1
	movslq	92(%r13), %rax
	movq	80(%r13), %rcx
	movq	(%rcx,%rax,8), %rbx
	movl	(%r12), %eax
	movl	(%r15), %edx
	subl	%edx, %eax
	xorl	%ebp, %ebp
	cmpq	%rax, 16(%rbx)
	ja	.LBB10_53
# BB#47:                                # %if.end.216
                                        #   in Loop: Header=BB10_19 Depth=1
	addq	40(%r13), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	jbig2_parse_segment
	movl	%eax, %ebp
	movl	16(%rbx), %eax
	addl	%eax, (%r15)
	movl	92(%r13), %eax
	incl	%eax
	movl	%eax, 92(%r13)
	cmpl	$4, 64(%r13)
	jne	.LBB10_50
# BB#48:                                # %if.then.232
                                        #   in Loop: Header=BB10_19 Depth=1
	cmpl	88(%r13), %eax
	jne	.LBB10_51
# BB#49:                                # %if.then.237
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$5, 64(%r13)
	jmp	.LBB10_51
.LBB10_21:                              # %sw.bb
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	(%r12), %eax
	movl	(%r15), %ebx
	subl	%ebx, %eax
	xorl	%ebp, %ebp
	cmpl	$9, %eax
	jb	.LBB10_53
# BB#22:                                # %if.end.94
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	%r14, %r15
	movq	%r12, %r14
	movq	40(%r13), %r12
	leaq	(%r12,%rbx), %rdi
	movl	$jbig2_data_in.jbig2_id_string, %esi
	movl	$8, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB10_23
# BB#25:                                # %if.end.102
                                        #   in Loop: Header=BB10_19 Depth=1
	addl	$8, %ebx
	movb	(%r12,%rbx), %al
	movb	%al, 68(%r13)
	testb	$-4, %al
	je	.LBB10_27
# BB#26:                                # %if.then.109
                                        #   in Loop: Header=BB10_19 Depth=1
	movzbl	%al, %r8d
	movl	$2, %esi
	movl	$-1, %edx
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	movb	68(%r13), %al
.LBB10_27:                              # %if.end.113
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	%r14, %r12
	testb	$2, %al
	movq	%r15, %r14
	jne	.LBB10_32
# BB#28:                                # %if.then.118
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	(%r12), %ecx
	movq	8(%rsp), %r15           # 8-byte Reload
	movl	(%r15), %eax
	subl	%eax, %ecx
	cmpl	$13, %ecx
	jb	.LBB10_53
# BB#29:                                # %if.end.125
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	40(%r13), %rcx
	movzbl	9(%rcx,%rax), %edx
	shll	$8, %edx
	movzbl	10(%rcx,%rax), %esi
	orl	%edx, %esi
	shll	$16, %esi
	movzbl	11(%rcx,%rax), %edx
	shll	$8, %edx
	movzbl	12(%rcx,%rax), %r8d
	orl	%edx, %r8d
	orl	%esi, %r8d
	movl	%r8d, 72(%r13)
	leal	13(%rax), %eax
	movl	%eax, (%r15)
	movl	$1, %esi
	movl	$-1, %edx
	cmpl	$1, %r8d
	jne	.LBB10_31
# BB#30:                                # %if.then.137
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$.L.str.8, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	jmp	.LBB10_33
.LBB10_39:                              # %if.end.172.if.end.186_crit_edge
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	80(%r13), %rax
.LBB10_43:                              # %if.end.186
                                        #   in Loop: Header=BB10_19 Depth=1
	leal	1(%rcx), %edx
	movl	%edx, 88(%r13)
	movslq	%ecx, %rcx
	movq	%rbx, (%rax,%rcx,8)
	cmpl	$3, 64(%r13)
	jne	.LBB10_56
# BB#44:                                # %if.then.194
                                        #   in Loop: Header=BB10_19 Depth=1
	movb	4(%rbx), %al
	andb	$63, %al
	movzbl	%al, %eax
	cmpl	$51, %eax
	jne	.LBB10_19
# BB#45:                                # %if.then.199
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$4, 64(%r13)
	jmp	.LBB10_19
.LBB10_50:                              # %if.else.240
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$1, 64(%r13)
.LBB10_51:                              # %if.end.242
                                        #   in Loop: Header=BB10_19 Depth=1
	testl	%ebp, %ebp
	jns	.LBB10_19
	jmp	.LBB10_52
.LBB10_32:                              # %if.else.143
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$0, 72(%r13)
	movq	8(%rsp), %r15           # 8-byte Reload
	addl	$9, (%r15)
	jmp	.LBB10_33
.LBB10_31:                              # %if.else.139
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
.LBB10_33:                              # %if.end.147
                                        #   in Loop: Header=BB10_19 Depth=1
	testb	$1, 68(%r13)
	jne	.LBB10_34
# BB#36:                                # %if.else.155
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$3, 64(%r13)
	xorl	%esi, %esi
	movl	$-1, %edx
	movl	$.L.str.11, %ecx
	jmp	.LBB10_35
.LBB10_34:                              # %if.then.152
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	$1, 64(%r13)
	xorl	%esi, %esi
	movl	$-1, %edx
	movl	$.L.str.10, %ecx
.LBB10_35:                              # %cleanup.256
                                        #   in Loop: Header=BB10_19 Depth=1
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	jmp	.LBB10_19
.LBB10_54:                              # %sw.bb.248
	movl	(%r15), %eax
	xorl	%ebp, %ebp
	cmpl	(%r12), %eax
	je	.LBB10_53
# BB#55:                                # %if.end.254
	movl	$2, %esi
	movl	$-1, %edx
	movl	$.L.str.12, %ecx
	jmp	.LBB10_24
.LBB10_3:                               # %jbig2_alloc.exit.thread
	movq	$0, 40(%r13)
.LBB10_4:                               # %cleanup
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.4, %ecx
	jmp	.LBB10_5
.LBB10_57:                              # %cleanup.68
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.5, %ecx
.LBB10_5:                               # %cleanup
	xorl	%eax, %eax
	movq	%r13, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_error             # TAILCALL
.LBB10_52:                              # %if.then.245
	movl	$5, 64(%r13)
	jmp	.LBB10_53
.LBB10_23:                              # %if.then.100
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.6, %ecx
.LBB10_24:                              # %cleanup.261
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
	movl	%eax, %ebp
.LBB10_53:                              # %cleanup.261
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	jbig2_data_in, .Lfunc_end10-jbig2_data_in
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_21
	.quad	.LBB10_37
	.quad	.LBB10_46
	.quad	.LBB10_37
	.quad	.LBB10_46
	.quad	.LBB10_54

	.text
	.globl	jbig2_ctx_free
	.align	16, 0x90
	.type	jbig2_ctx_free,@function
jbig2_ctx_free:                         # @jbig2_ctx_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r12, -32
.Ltmp42:
	.cfi_offset %r14, -24
.Ltmp43:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	(%r15), %r14
	movq	40(%r15), %rsi
	movq	%r14, %rdi
	callq	*8(%r14)
	movq	80(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB11_6
# BB#1:                                 # %for.cond.preheader
	cmpl	$0, 88(%r15)
	jle	.LBB11_5
# BB#2:                                 # %for.body.preheader
	movq	(%rsi), %rsi
	movq	%r15, %rdi
	callq	jbig2_free_segment
	movl	$1, %ebx
	cmpl	$2, 88(%r15)
	jl	.LBB11_4
	.align	16, 0x90
.LBB11_3:                               # %for.body.for.body_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r15, %rdi
	callq	jbig2_free_segment
	incq	%rbx
	movslq	88(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB11_3
.LBB11_4:                               # %for.cond.for.end_crit_edge
	movq	80(%r15), %rsi
.LBB11_5:                               # %for.end
	movq	%r14, %rdi
	callq	*8(%r14)
.LBB11_6:                               # %if.end
	movq	104(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB11_15
# BB#7:                                 # %for.cond.6.preheader
	movl	96(%r15), %eax
	movl	$40, %r12d
	testl	%eax, %eax
	js	.LBB11_14
# BB#8:
	movq	$-1, %rbx
	jmp	.LBB11_9
	.align	16, 0x90
.LBB11_12:                              # %for.inc.19.for.body.8_crit_edge
                                        #   in Loop: Header=BB11_9 Depth=1
	addq	$48, %r12
	movq	104(%r15), %rsi
.LBB11_9:                               # %for.body.8
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB11_11
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	%r15, %rdi
	callq	jbig2_image_release
	movl	96(%r15), %eax
.LBB11_11:                              # %for.inc.19
                                        #   in Loop: Header=BB11_9 Depth=1
	movslq	%eax, %rcx
	incq	%rbx
	cmpq	%rcx, %rbx
	jl	.LBB11_12
# BB#13:                                # %for.cond.6.for.end.21_crit_edge
	movq	104(%r15), %rsi
.LBB11_14:                              # %for.end.21
	movq	%r14, %rdi
	callq	*8(%r14)
.LBB11_15:                              # %if.end.23
	movq	8(%r14), %rax
	movq	%r14, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end11:
	.size	jbig2_ctx_free, .Lfunc_end11-jbig2_ctx_free
	.cfi_endproc

	.globl	jbig2_make_global_ctx
	.align	16, 0x90
	.type	jbig2_make_global_ctx,@function
jbig2_make_global_ctx:                  # @jbig2_make_global_ctx
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end12:
	.size	jbig2_make_global_ctx, .Lfunc_end12-jbig2_make_global_ctx
	.cfi_endproc

	.globl	jbig2_global_ctx_free
	.align	16, 0x90
	.type	jbig2_global_ctx_free,@function
jbig2_global_ctx_free:                  # @jbig2_global_ctx_free
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	jbig2_ctx_free          # TAILCALL
.Lfunc_end13:
	.size	jbig2_global_ctx_free, .Lfunc_end13-jbig2_global_ctx_free
	.cfi_endproc

	.globl	jbig2_word_stream_buf_new
	.align	16, 0x90
	.type	jbig2_word_stream_buf_new,@function
jbig2_word_stream_buf_new:              # @jbig2_word_stream_buf_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 48
.Ltmp49:
	.cfi_offset %rbx, -40
.Ltmp50:
	.cfi_offset %r12, -32
.Ltmp51:
	.cfi_offset %r14, -24
.Ltmp52:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movl	$24, %esi
	callq	*(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB14_1
# BB#2:                                 # %if.end
	movq	$jbig2_word_stream_buf_get_next_word, (%rbx)
	movq	%r12, 8(%rbx)
	movq	%r15, 16(%rbx)
	jmp	.LBB14_3
.LBB14_1:                               # %if.then
	xorl	%ebx, %ebx
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.13, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB14_3:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	jbig2_word_stream_buf_new, .Lfunc_end14-jbig2_word_stream_buf_new
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.quad	3                       # 0x3
	.quad	2                       # 0x2
.LCPI15_1:
	.quad	-1                      # 0xffffffffffffffff
	.quad	-2                      # 0xfffffffffffffffe
.LCPI15_2:
	.quad	-3                      # 0xfffffffffffffffd
	.quad	-4                      # 0xfffffffffffffffc
.LCPI15_3:
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.text
	.align	16, 0x90
	.type	jbig2_word_stream_buf_get_next_word,@function
jbig2_word_stream_buf_get_next_word:    # @jbig2_word_stream_buf_get_next_word
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %r8
	movq	16(%rdi), %rcx
	leal	4(%rsi), %eax
	cltq
	movslq	%esi, %rsi
	cmpq	%rcx, %rax
	jae	.LBB15_2
# BB#1:                                 # %if.then
	movzbl	(%r8,%rsi), %eax
	shll	$24, %eax
	movzbl	1(%rsi,%r8), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	2(%rsi,%r8), %edi
	shll	$8, %edi
	orl	%ecx, %edi
	movzbl	3(%rsi,%r8), %eax
	orl	%edi, %eax
	jmp	.LBB15_12
.LBB15_2:                               # %if.else
	movl	$-1, %eax
	cmpq	%rsi, %rcx
	jbe	.LBB15_13
# BB#3:                                 # %for.cond.preheader
	xorl	%eax, %eax
	movq	%rcx, %r11
	subq	%rsi, %r11
	je	.LBB15_12
# BB#4:                                 # %for.body.lr.ph
	decq	%rcx
	subq	%rsi, %rcx
	xorl	%edi, %edi
	cmpq	$-1, %rcx
	movl	$0, %eax
	je	.LBB15_10
# BB#5:                                 # %overflow.checked
	xorl	%edi, %edi
	movq	%r11, %r9
	andq	$-8, %r9
	pxor	%xmm14, %xmm14
	pxor	%xmm2, %xmm2
	je	.LBB15_9
# BB#6:                                 # %vector.body.preheader
	leaq	4(%rsi,%r8), %rdi
	movq	%r11, %r10
	andq	$-8, %r10
	pxor	%xmm13, %xmm13
	xorl	%ecx, %ecx
	movdqa	.LCPI15_0(%rip), %xmm8  # xmm8 = [3,2]
	movl	$1, %eax
	movd	%rax, %xmm11
	movdqa	.LCPI15_1(%rip), %xmm9  # xmm9 = [18446744073709551615,18446744073709551614]
	movdqa	.LCPI15_2(%rip), %xmm10 # xmm10 = [18446744073709551613,18446744073709551612]
	movdqa	.LCPI15_3(%rip), %xmm12 # xmm12 = [1065353216,1065353216,1065353216,1065353216]
	pxor	%xmm14, %xmm14
	pxor	%xmm2, %xmm2
	.align	16, 0x90
.LBB15_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rcx, %xmm3
	pshufd	$68, %xmm3, %xmm6       # xmm6 = xmm3[0,1,0,1]
	movd	-4(%rdi,%rcx), %xmm5    # xmm5 = mem[0],zero,zero,zero
	movd	(%rdi,%rcx), %xmm3      # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm13, %xmm5   # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1],xmm5[2],xmm13[2],xmm5[3],xmm13[3],xmm5[4],xmm13[4],xmm5[5],xmm13[5],xmm5[6],xmm13[6],xmm5[7],xmm13[7]
	punpcklwd	%xmm13, %xmm5   # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1],xmm5[2],xmm13[2],xmm5[3],xmm13[3]
	punpcklbw	%xmm13, %xmm3   # xmm3 = xmm3[0],xmm13[0],xmm3[1],xmm13[1],xmm3[2],xmm13[2],xmm3[3],xmm13[3],xmm3[4],xmm13[4],xmm3[5],xmm13[5],xmm3[6],xmm13[6],xmm3[7],xmm13[7]
	punpcklwd	%xmm13, %xmm3   # xmm3 = xmm3[0],xmm13[0],xmm3[1],xmm13[1],xmm3[2],xmm13[2],xmm3[3],xmm13[3]
	movdqa	%xmm8, %xmm4
	psubq	%xmm6, %xmm4
	movdqa	%xmm11, %xmm7
	psubq	%xmm6, %xmm7
	movdqa	%xmm9, %xmm1
	psubq	%xmm6, %xmm1
	movdqa	%xmm10, %xmm0
	psubq	%xmm6, %xmm0
	pshufd	$232, %xmm7, %xmm6      # xmm6 = xmm7[0,2,2,3]
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpcklqdq	%xmm6, %xmm4    # xmm4 = xmm4[0],xmm6[0]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	pslld	$3, %xmm4
	pslld	$3, %xmm1
	pslld	$23, %xmm4
	paddd	%xmm12, %xmm4
	cvttps2dq	%xmm4, %xmm0
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm4      # xmm4 = xmm5[0,2,2,3]
	punpckldq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pslld	$23, %xmm1
	paddd	%xmm12, %xmm1
	cvttps2dq	%xmm1, %xmm1
	pshufd	$245, %xmm1, %xmm4      # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	por	%xmm0, %xmm14
	por	%xmm1, %xmm2
	addq	$8, %rcx
	cmpq	%rcx, %r10
	jne	.LBB15_7
# BB#8:
	movq	%r9, %rdi
.LBB15_9:                               # %middle.block
	por	%xmm2, %xmm14
	pshufd	$78, %xmm14, %xmm0      # xmm0 = xmm14[2,3,0,1]
	por	%xmm14, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	por	%xmm0, %xmm1
	movd	%xmm1, %eax
	cmpq	%rdi, %r11
	je	.LBB15_12
.LBB15_10:                              # %for.body.preheader
	movl	$3, %ecx
	subl	%edi, %ecx
	shll	$3, %ecx
	addq	%rsi, %r8
	.align	16, 0x90
.LBB15_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r8,%rdi), %esi
	shll	%cl, %esi
	orl	%esi, %eax
	incq	%rdi
	addl	$-8, %ecx
	cmpq	%r11, %rdi
	jb	.LBB15_11
.LBB15_12:                              # %if.end.39
	movl	%eax, (%rdx)
	xorl	%eax, %eax
.LBB15_13:                              # %cleanup
	retq
.Lfunc_end15:
	.size	jbig2_word_stream_buf_get_next_word, .Lfunc_end15-jbig2_word_stream_buf_get_next_word
	.cfi_endproc

	.globl	jbig2_word_stream_buf_free
	.align	16, 0x90
	.type	jbig2_word_stream_buf_free,@function
jbig2_word_stream_buf_free:             # @jbig2_word_stream_buf_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	movq	8(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end16:
	.size	jbig2_word_stream_buf_free, .Lfunc_end16-jbig2_word_stream_buf_free
	.cfi_endproc

	.align	16, 0x90
	.type	jbig2_default_alloc,@function
jbig2_default_alloc:                    # @jbig2_default_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	malloc                  # TAILCALL
.Lfunc_end17:
	.size	jbig2_default_alloc, .Lfunc_end17-jbig2_default_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	jbig2_default_free,@function
jbig2_default_free:                     # @jbig2_default_free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	free                    # TAILCALL
.Lfunc_end18:
	.size	jbig2_default_free, .Lfunc_end18-jbig2_default_free
	.cfi_endproc

	.align	16, 0x90
	.type	jbig2_default_realloc,@function
jbig2_default_realloc:                  # @jbig2_default_realloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	jmp	realloc                 # TAILCALL
.Lfunc_end19:
	.size	jbig2_default_realloc, .Lfunc_end19-jbig2_default_realloc
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jbig2_error: error in generating error string"
	.size	.L.str, 46

	.type	jbig2_default_allocator,@object # @jbig2_default_allocator
	.data
	.align	8
jbig2_default_allocator:
	.quad	jbig2_default_alloc
	.quad	jbig2_default_free
	.quad	jbig2_default_realloc
	.size	jbig2_default_allocator, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"initial context allocation failed!"
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"initial segments allocation failed!"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"initial pages allocation failed!"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"failed to allocate ctx->buf in jbig2_data_in"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"failed to allocate buf in jbig2_data_in"
	.size	.L.str.5, 40

	.type	jbig2_data_in.jbig2_id_string,@object # @jbig2_data_in.jbig2_id_string
	.section	.rodata,"a",@progbits
jbig2_data_in.jbig2_id_string:
	.ascii	"\227JB2\r\n\032\n"
	.size	jbig2_data_in.jbig2_id_string, 8

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"Not a JBIG2 file header"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"reserved bits (2-7) of file header flags are not zero (0x%02x)"
	.size	.L.str.7, 63

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file header indicates a single page document"
	.size	.L.str.8, 45

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file header indicates a %d page document"
	.size	.L.str.9, 41

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"file header indicates sequential organization"
	.size	.L.str.10, 46

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"file header indicates random-access organization"
	.size	.L.str.11, 49

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Garbage beyond end of file"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"failed to allocate Jbig2WordStreamBuf in jbig2_word_stream_buf_new"
	.size	.L.str.13, 67

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"jbig2 decoder FATAL ERROR: %s"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" (segment 0x%02x)"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\n"
	.size	.L.str.16, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
