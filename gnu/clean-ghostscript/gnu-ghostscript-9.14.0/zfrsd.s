	.text
	.file	"zfrsd.bc"
	.globl	make_rss
	.align	16, 0x90
	.type	make_rss,@function
make_rss:                               # @make_rss
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movq	80(%rsp), %rax
	leaq	8(%rbp), %r14
	movl	56(%rbp), %r12d
	movl	%ecx, %ebx
	subq	%r9, %rbx
	cmpq	%rax, %rbx
	cmovgq	%rax, %rbx
	movq	%r14, %rdi
	movl	%r8d, %esi
	callq	ialloc_set_space
	movq	8(%rbp), %rdi
	movl	$.L.str, %esi
	callq	file_alloc_stream
	movq	%rax, %r13
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	ialloc_set_space
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB0_4
# BB#1:                                 # %if.end
	movl	88(%rsp), %r14d
	addq	8(%rsp), %r15           # 8-byte Folded Reload
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	cmovlel	%ebp, %ebx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	sread_string_reusable
	testl	%r14d, %r14d
	je	.LBB0_3
# BB#2:                                 # %if.then.16
	movq	$0, 160(%r13)
.LBB0_3:                                # %if.end.18
	movl	$.L.str.1, %edx
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	make_stream_file
.LBB0_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	make_rss, .Lfunc_end0-make_rss
	.cfi_endproc

	.align	16, 0x90
	.type	zreusablestream,@function
zreusablestream:                        # @zreusablestream
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
	subq	$104, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 160
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
	movq	%rdi, %r15
	movq	624(%r15), %r13
	movzbl	1(%r13), %eax
	cmpl	$1, %eax
	jne	.LBB1_1
# BB#2:                                 # %if.end
	leaq	-16(%r13), %r14
	movzbl	-15(%r13), %eax
	cmpl	$4, %eax
	je	.LBB1_14
# BB#3:                                 # %if.end
	movzbl	%al, %eax
	cmpl	$9, %eax
	jne	.LBB1_4
# BB#8:                                 # %if.then.29
	movq	%r14, %rbx
	movq	8(%r15), %rdi
	movq	-8(%r13), %rsi
	callq	*120(%rdi)
	movl	%eax, %r12d
	movq	8(%r15), %rdi
	movq	-8(%r13), %rsi
	callq	*128(%rdi)
	movl	$st_bytes, %ecx
	movl	$-15, %ebp
	cmpq	%rcx, %rax
	jne	.LBB1_33
# BB#9:                                 # %do.body.47
	movzwl	(%rbx), %esi
	movl	$-7, %ebp
	testb	$32, %sil
	je	.LBB1_33
# BB#10:                                # %do.end.56
	movq	-8(%r13), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	andl	$12, %esi
	leaq	8(%r15), %rbp
	movl	56(%r15), %r13d
	movq	%rbp, %rdi
	callq	ialloc_set_space
	movq	8(%r15), %rdi
	movl	$.L.str, %esi
	callq	file_alloc_stream
	movq	%rax, %r14
	movq	%rbp, %rdi
	movl	%r13d, %esi
	callq	ialloc_set_space
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB1_33
# BB#11:                                # %if.end.i.142
	movq	%r14, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	%r12d, %edx
	callq	sread_string_reusable
	movq	$0, 160(%r14)
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	jmp	.LBB1_12
.LBB1_1:                                # %if.then
	movq	%r13, %rdi
.LBB1_19:                               # %cond.true
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	check_type_failed       # TAILCALL
.LBB1_14:                               # %if.then.75
	movzwl	(%r14), %esi
	movl	$-7, %ebp
	testb	$32, %sil
	je	.LBB1_33
# BB#15:                                # %do.end.85
	movslq	-12(%r13), %rax
	testq	%rax, %rax
	jle	.LBB1_25
# BB#16:                                # %for.body.lr.ph
	movq	-8(%r13), %r8
	movl	4(%r8), %r13d
	leaq	-1(%rax), %rdx
	xorl	%ecx, %ecx
	movq	%r8, %rdi
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_17:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %ebp
	andl	$16160, %ebp            # imm = 0x3F20
	cmpl	$4640, %ebp             # imm = 0x1220
	jne	.LBB1_18
# BB#20:                                # %if.end.115
                                        #   in Loop: Header=BB1_17 Depth=1
	movslq	4(%rdi), %rbx
	movl	$-15, %ebp
	cmpl	%r13d, %ebx
	jg	.LBB1_33
# BB#21:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_17 Depth=1
	cmpq	%rdx, %rcx
	jge	.LBB1_23
# BB#22:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_17 Depth=1
	cmpl	%r13d, %ebx
	jl	.LBB1_33
.LBB1_23:                               # %for.inc
                                        #   in Loop: Header=BB1_17 Depth=1
	addq	%rbx, %r12
	incq	%rcx
	addq	$16, %rdi
	cmpq	%rax, %rcx
	jl	.LBB1_17
# BB#24:                                # %if.end.132
	testq	%r12, %r12
	je	.LBB1_25
# BB#29:                                # %if.else.141
	shlq	$4, %rax
	movl	-12(%rax,%r8), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	leaq	8(%r15), %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	56(%r15), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	andl	$12, %esi
	callq	ialloc_set_space
	movq	8(%r15), %rdi
	movl	$.L.str.5, %esi
	callq	s_alloc
	movq	%rax, %rbx
	movq	8(%r15), %rdi
	movl	$st_aos_state, %esi
	movl	$.L.str.6, %edx
	callq	s_alloc_state
	movq	%rax, %rbp
	movq	8(%r15), %rdi
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.7, %edx
	callq	*64(%rdi)
	testq	%rbx, %rbx
	je	.LBB1_32
# BB#30:                                # %if.else.141
	testq	%rbp, %rbp
	je	.LBB1_32
# BB#31:                                # %if.else.141
	testq	%rax, %rax
	je	.LBB1_32
# BB#34:                                # %if.end.i.156
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	movq	%rax, 40(%rsp)          # 8-byte Spill
	callq	ialloc_set_space
	movq	$s_aos_template, (%rbp)
	movups	(%r14), %xmm0
	movups	%xmm0, 112(%rbp)
	movq	%rbx, 128(%rbp)
	movl	%r13d, 136(%rbp)
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 140(%rbp)
	movl	%r12d, 144(%rbp)
	movl	$1024, %edx             # imm = 0x400
	movl	$s_aos_procs, %ecx
	movl	$5, %r8d
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	s_std_init
	movq	%rbp, 256(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 336(%rbx)
	movl	$0, 292(%rbx)
	movw	$1, 264(%rbx)
	jmp	.LBB1_28
.LBB1_4:                                # %if.end
	cmpl	$18, %eax
	jne	.LBB1_35
# BB#5:                                 # %if.then.9
	movzwl	(%r14), %esi
	movl	$-7, %ebp
	testb	$32, %sil
	je	.LBB1_33
# BB#6:                                 # %do.end
	movl	-12(%r13), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movq	-8(%r13), %r13
	andl	$12, %esi
	leaq	8(%r15), %rbp
	movl	56(%r15), %r12d
	movq	%rbp, %rdi
	callq	ialloc_set_space
	movq	8(%r15), %rdi
	movl	$.L.str, %esi
	callq	file_alloc_stream
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	ialloc_set_space
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB1_33
# BB#7:                                 # %if.end.i
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	40(%rsp), %edx          # 4-byte Reload
	jmp	.LBB1_27
.LBB1_35:                               # %if.else.157
	movzwl	(%r14), %ecx
	andl	$16160, %ecx            # imm = 0x3F20
	cmpl	$800, %ecx              # imm = 0x320
	jne	.LBB1_36
# BB#38:                                # %do.body.178
	movzwl	8(%r13), %r8d
	movq	-8(%r13), %r12
	movzwl	264(%r12), %ecx
	movl	-12(%r13), %eax
	cmpl	%eax, %ecx
	jne	.LBB1_40
# BB#39:
	movq	%r14, 24(%rsp)          # 8-byte Spill
	jmp	.LBB1_44
.LBB1_36:                               # %if.then.165
	movl	$-7, %ebp
	cmpl	$3, %eax
	je	.LBB1_33
# BB#37:                                # %cond.true.172
	movq	%r14, %rdi
	jmp	.LBB1_19
.LBB1_25:                               # %if.then.135
	andl	$12, %esi
	leaq	8(%r15), %rbp
	movl	56(%r15), %r12d
	movq	%rbp, %rdi
	callq	ialloc_set_space
	movq	8(%r15), %rdi
	movl	$.L.str, %esi
	callq	file_alloc_stream
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	ialloc_set_space
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB1_33
# BB#26:                                # %if.end.i.149
	movl	$.L.str.4, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
.LBB1_27:                               # %if.then.314
	callq	sread_string_reusable
.LBB1_28:                               # %if.then.314
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
.LBB1_12:                               # %if.then.314
	callq	make_stream_file
	jmp	.LBB1_13
.LBB1_40:                               # %if.then.185
	testw	%cx, %cx
	jne	.LBB1_43
# BB#41:                                # %land.lhs.true.190
	movzwl	266(%r12), %ecx
	cmpl	%eax, %ecx
	jne	.LBB1_43
# BB#42:                                # %if.then.196
	movq	%r14, %rdi
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	%r8d, %ebx
	callq	file_switch_to_read
	movl	%ebx, %r8d
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_44
	jmp	.LBB1_33
.LBB1_43:                               # %if.else.205
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movq	256(%r15), %r12
.LBB1_44:                               # %do.end.211
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	xorl	%r14d, %r14d
	cmpq	$0, 160(%r12)
	je	.LBB1_48
# BB#45:
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	leaq	160(%r12), %rbp
	movq	%r12, %rbx
	movq	%r12, 40(%rsp)          # 8-byte Spill
.LBB1_46:                               # %if.then.214
	movq	%rbx, %rdi
	callq	stell
	movq	8(%rbx), %rdi
	movq	120(%rbx), %r12
	subq	112(%rbx), %r12
	addq	%rax, %r12
	addq	%rax, %r14
	movq	(%rbp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	168(%rbx), %ebx
	callq	imemory_space
	movq	16(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, %r12
	cmovgq	%rcx, %r12
	leaq	8(%r15), %rbp
	movl	56(%r15), %ecx
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	subq	%r14, %rbx
	cmpq	%r12, %rbx
	cmovgq	%r12, %rbx
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	ialloc_set_space
	movq	8(%r15), %rdi
	movl	$.L.str, %esi
	callq	file_alloc_stream
	movq	%rax, %r12
	movq	%rbp, %rdi
	movl	16(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB1_61
# BB#47:                                # %if.end.i.167
	movq	8(%rsp), %rsi           # 8-byte Reload
	addq	%r14, %rsi
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	cmovlel	%ebp, %ebx
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	sread_string_reusable
	movl	$.L.str.1, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	callq	make_stream_file
.LBB1_61:                               # %if.end.296
	movl	32(%rsp), %eax          # 4-byte Reload
	testw	%ax, %ax
	movq	40(%rsp), %rcx          # 8-byte Reload
	je	.LBB1_63
# BB#62:                                # %if.then.298
	movq	-8(%r13), %rax
	movq	%rcx, 240(%rax)
	movl	$1, 288(%rax)
.LBB1_63:                               # %if.end.311
	testl	%ebp, %ebp
	js	.LBB1_33
.LBB1_13:                               # %if.then.314
	addq	$-16, 624(%r15)
	xorl	%ebp, %ebp
.LBB1_33:                               # %cleanup.320
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_48:
	movl	$s_SFD_template, %eax
	xorl	%r9d, %r9d
	movq	%r12, %rbx
	movl	$-15, %ebp
.LBB1_49:                               # %if.else.233
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 304(%rbx)
	jne	.LBB1_50
# BB#64:                                # %if.else.245
                                        #   in Loop: Header=BB1_49 Depth=1
	movq	256(%rbx), %rdi
	cmpq	%rax, (%rdi)
	jne	.LBB1_33
# BB#65:                                # %if.then.248
                                        #   in Loop: Header=BB1_49 Depth=1
	cmpl	$0, 128(%rdi)
	jne	.LBB1_33
# BB#66:                                # %if.end.254
                                        #   in Loop: Header=BB1_49 Depth=1
	movq	112(%rbx), %rdx
	movq	120(%rbx), %rsi
	addq	136(%rdi), %r14
	subq	%rsi, %r14
	movq	112(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_68
# BB#67:                                # %if.then.268
                                        #   in Loop: Header=BB1_49 Depth=1
	cmovsq	%r9, %rdi
	subq	%rdx, %rsi
	addq	%rdi, %rsi
	cmpq	%rcx, %rsi
	cmovleq	%rsi, %rcx
.LBB1_68:                               # %cleanup.292.thread
                                        #   in Loop: Header=BB1_49 Depth=1
	addq	%rdx, %r14
	movq	240(%rbx), %rbx
	cmpq	$0, 160(%rbx)
	je	.LBB1_49
# BB#69:
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%r12, 40(%rsp)          # 8-byte Spill
	leaq	160(%rbx), %rbp
	jmp	.LBB1_46
.LBB1_18:                               # %if.then.103
	movzbl	1(%rdi), %eax
	cmpl	$18, %eax
	movl	$-7, %ebp
	je	.LBB1_33
	jmp	.LBB1_19
.LBB1_50:                               # %if.then.236
	movb	155(%rbx), %al
	andb	$5, %al
	movl	$-12, %ebp
	movzbl	%al, %eax
	cmpl	$5, %eax
	jne	.LBB1_33
# BB#51:                                # %if.end.241
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%r8d, 32(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	56(%r15), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movq	8(%rbx), %rdi
	callq	imemory_space
	movl	%eax, 8(%rsp)           # 4-byte Spill
	leaq	88(%rsp), %rsi
	movq	%rbx, %rdi
	callq	sfilename
	movl	$-12, %ebp
	testl	%eax, %eax
	js	.LBB1_60
# BB#52:                                # %if.end.i.174
	leaq	8(%r15), %rbx
	movq	88(%rsp), %rsi
	movl	96(%rsp), %edx
	movq	(%rbx), %rcx
	leaq	56(%rsp), %rdi
	callq	gs_parse_file_name
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_60
# BB#53:                                # %if.end.7.i
	movl	$-9, %ebp
	cmpl	$0, 80(%rsp)
	je	.LBB1_60
# BB#54:                                # %if.end.10.i
	cmpq	$0, 64(%rsp)
	jne	.LBB1_56
# BB#55:                                # %if.then.12.i
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	callq	gs_getiodevice
	movq	%rax, 64(%rsp)
.LBB1_56:                               # %if.end.17.i
	movq	%rbx, %rdi
	movl	8(%rsp), %esi           # 4-byte Reload
	callq	ialloc_set_space
	movq	8(%r15), %r8
	leaq	56(%rsp), %rsi
	leaq	48(%rsp), %rcx
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	zopen_file
	movl	%eax, %ebp
	movq	%rbx, %rdi
	movl	40(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
	testl	%ebp, %ebp
	js	.LBB1_60
# BB#57:                                # %if.end.25.i
	movq	(%rsp), %rsi            # 8-byte Reload
	addq	%r14, %rsi
	movq	48(%rsp), %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	sread_subfile
	movq	48(%rsp), %rsi
	testl	%eax, %eax
	js	.LBB1_58
# BB#59:                                # %if.end.30.i
	movl	$0, 292(%rsi)
	movl	$.L.str.1, %edx
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	make_stream_file
	xorl	%ebp, %ebp
	jmp	.LBB1_60
.LBB1_32:                               # %if.then.i
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	(%r14), %rdi
	movl	$.L.str.7, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	(%r14), %rdi
	movl	$.L.str.6, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	(%r14), %rdi
	movl	$.L.str.5, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	%r14, %rdi
	movl	40(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
	movl	$-25, %ebp
	jmp	.LBB1_33
.LBB1_58:                               # %if.then.28.i
	movq	%rsi, %rdi
	callq	sclose
	movl	$-12, %ebp
.LBB1_60:                               # %make_rfs.exit
	movq	%r12, 40(%rsp)          # 8-byte Spill
	jmp	.LBB1_61
.Lfunc_end1:
	.size	zreusablestream, .Lfunc_end1-zreusablestream
	.cfi_endproc

	.align	16, 0x90
	.type	zrsdparams,@function
zrsdparams:                             # @zrsdparams
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
	subq	$120, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 176
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
	movq	%rdi, %r15
	movq	624(%r15), %r14
	movl	$0, 100(%rsp)
	movq	$0, 88(%rsp)
	movw	$1120, 80(%rsp)         # imm = 0x460
	movl	$0, 84(%rsp)
	leaq	112(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB2_10
# BB#1:                                 # %if.then
	movq	112(%rsp), %rax
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB2_2
# BB#4:                                 # %if.end.20
	leaq	80(%rsp), %rsi
	cmpq	%rsi, %rax
	jne	.LBB2_5
	jmp	.LBB2_11
.LBB2_10:                               # %if.end.20.thread
	leaq	80(%rsp), %rsi
	movq	%rsi, 112(%rsp)
	jmp	.LBB2_11
.LBB2_2:                                # %if.then.6
	movl	$-20, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB2_30
# BB#3:                                 # %if.end.20.thread30
	movq	%rax, 72(%rsp)
	movw	$1120, 64(%rsp)         # imm = 0x460
	movl	$1, 68(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 112(%rsp)
.LBB2_5:                                # %land.lhs.true
	leaq	104(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	movq	112(%rsp), %rsi
	testl	%eax, %eax
	jle	.LBB2_11
# BB#6:                                 # %if.then.26
	movq	104(%rsp), %rax
	leaq	64(%rsp), %rcx
	cmpq	%rcx, %rsi
	je	.LBB2_7
# BB#8:                                 # %if.else.36
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-20, %ebp
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB2_30
# BB#9:                                 # %if.else.44
	movl	4(%rsi), %ecx
	movl	$-15, %ebp
	cmpl	4(%rax), %ecx
	je	.LBB2_12
	jmp	.LBB2_30
.LBB2_11:                               # %if.else.55
	movq	$0, 104(%rsp)
.LBB2_12:                               # %for.cond.preheader
	cmpl	$0, 4(%rsi)
	je	.LBB2_21
# BB#13:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	32(%rsp), %r12
	leaq	16(%rsp), %r13
	.align	16, 0x90
.LBB2_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rdi
	movl	%ebx, %ebx
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	array_get
	movl	$-20, %ebp
	movzbl	33(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB2_30
# BB#15:                                # %if.end.70
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	names_string_ref
	movl	20(%rsp), %eax
	cmpq	$6, %rax
	movl	$-15, %ebp
	jb	.LBB2_30
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	24(%rsp), %rcx
	leaq	-6(%rcx,%rax), %rdi
	movl	$.L.str.12, %esi
	movl	$6, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB2_30
# BB#17:                                # %if.end.83
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	104(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB2_20
# BB#18:                                # %if.then.85
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	8(%r15), %rdi
	movq	%rbx, %rdx
	leaq	(%rsp), %rcx
	callq	array_get
	movzbl	1(%rsp), %eax
	cmpl	$2, %eax
	je	.LBB2_20
# BB#19:                                # %if.then.85
                                        #   in Loop: Header=BB2_14 Depth=1
	movzbl	%al, %eax
	cmpl	$14, %eax
	movl	$-20, %ebp
	jne	.LBB2_30
.LBB2_20:                               # %for.inc
                                        #   in Loop: Header=BB2_14 Depth=1
	incl	%ebx
	movq	112(%rsp), %rsi
	cmpl	4(%rsi), %ebx
	jb	.LBB2_14
.LBB2_21:                               # %for.end
	leaq	100(%rsp), %r9
	movl	$.L.str.13, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_23
# BB#22:                                # %for.end
	cmpl	$-15, %ebp
	jne	.LBB2_30
.LBB2_23:                               # %if.end.115
	leaq	96(%rsp), %rcx
	movl	$.L.str.14, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	dict_bool_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_30
# BB#24:                                # %do.body
	leaq	16(%r14), %rax
	cmpq	640(%r15), %rax
	jbe	.LBB2_26
# BB#25:                                # %if.then.126
	movl	$1, 688(%r15)
	movl	$-16, %ebp
	jmp	.LBB2_30
.LBB2_7:                                # %if.then.29
	movq	%rax, 56(%rsp)
	movw	$1120, 48(%rsp)         # imm = 0x460
	movl	$1, 52(%rsp)
	leaq	48(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rcx, %rsi
	jmp	.LBB2_12
.LBB2_26:                               # %if.else.129
	movq	%rax, 624(%r15)
	movq	112(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, (%r14)
	movq	104(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB2_28
# BB#27:                                # %if.then.136
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB2_29
.LBB2_28:                               # %if.else.137
	movw	$3584, (%rax)           # imm = 0xE00
.LBB2_29:                               # %cleanup.141
	xorl	%ebp, %ebp
.LBB2_30:                               # %cleanup.141
	movl	%ebp, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zrsdparams, .Lfunc_end2-zrsdparams
	.cfi_endproc

	.align	16, 0x90
	.type	aos_clear_marks,@function
aos_clear_marks:                        # @aos_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	andb	$-2, 112(%rsi)
	retq
.Lfunc_end3:
	.size	aos_clear_marks, .Lfunc_end3-aos_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	aos_enum_ptrs,@function
aos_enum_ptrs:                          # @aos_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB4_1
# BB#3:                                 # %sw.bb.1
	addq	$112, %rsi
	movq	%rsi, (%r8)
	movl	$ptr_ref_procs, %eax
	jmp	.LBB4_4
.LBB4_1:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB4_4
# BB#2:                                 # %sw.bb
	movq	128(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB4_4:                                # %cleanup
	retq
.Lfunc_end4:
	.size	aos_enum_ptrs, .Lfunc_end4-aos_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	aos_reloc_ptrs,@function
aos_reloc_ptrs:                         # @aos_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
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
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	%rbx, %r15
	subq	$-128, %r15
	movq	128(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 128(%rbx)
	movq	(%r14), %rax
	leaq	112(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*40(%rax)
	andb	$-2, 112(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	aos_reloc_ptrs, .Lfunc_end5-aos_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	s_aos_process,@function
s_aos_process:                          # @s_aos_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
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
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	16(%r14), %r15d
	subl	8(%r14), %r15d
	movq	128(%rbx), %rdi
	callq	stell
	movq	128(%rbx), %rcx
	addl	120(%rcx), %eax
	subl	112(%rcx), %eax
	movl	$-1, %ebp
	cmpl	144(%rbx), %eax
	jae	.LBB6_4
# BB#1:                                 # %if.end
	movl	116(%rbx), %esi
	movl	136(%rbx), %ecx
	xorl	%edx, %edx
	divl	%ecx
	decl	%esi
	cmpl	%esi, %eax
	jl	.LBB6_3
# BB#2:                                 # %cond.false
	movl	140(%rbx), %ecx
.LBB6_3:                                # %cond.end
	movq	120(%rbx), %r8
	movslq	%eax, %rbx
	shlq	$4, %rbx
	subl	%edx, %ecx
	cmpl	%ecx, %r15d
	cmovbel	%r15d, %ecx
	movl	$-1, %ebp
	movl	$1, %edi
	cmovbel	%edi, %ebp
	cmpl	%esi, %eax
	cmovnel	%edi, %ebp
	movq	8(%r14), %rdi
	incq	%rdi
	movslq	%edx, %rsi
	addq	8(%r8,%rbx), %rsi
	movl	%ecx, %ebx
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, 8(%r14)
.LBB6_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	s_aos_process, .Lfunc_end6-s_aos_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_aos_available,@function
s_aos_available:                        # @s_aos_available
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -24
.Ltmp58:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	256(%rdi), %rax
	movl	144(%rax), %ebx
	callq	stell
	subq	%rax, %rbx
	movq	%rbx, (%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	s_aos_available, .Lfunc_end7-s_aos_available
	.cfi_endproc

	.align	16, 0x90
	.type	s_aos_seek,@function
s_aos_seek:                             # @s_aos_seek
	.cfi_startproc
# BB#0:                                 # %entry
	movq	136(%rdi), %rcx
	movq	%rsi, %rax
	subq	176(%rdi), %rax
	js	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movl	$1, %edx
	subl	%ecx, %edx
	addl	120(%rdi), %edx
	cmpq	%rdx, %rax
	jle	.LBB8_2
.LBB8_3:                                # %if.end
	movl	$-2, %eax
	testq	%rsi, %rsi
	js	.LBB8_7
# BB#4:                                 # %lor.lhs.false
	cmpq	%rsi, 344(%rdi)
	jl	.LBB8_7
# BB#5:                                 # %if.end.14
	decq	%rcx
	movq	%rcx, 120(%rdi)
	movq	%rcx, 112(%rdi)
	movw	$0, 152(%rdi)
	movq	%rsi, 176(%rdi)
	jmp	.LBB8_6
.LBB8_2:                                # %if.then
	leaq	-1(%rcx,%rax), %rax
	movq	%rax, 112(%rdi)
.LBB8_6:                                # %cleanup
	xorl	%eax, %eax
.LBB8_7:                                # %cleanup
	retq
.Lfunc_end8:
	.size	s_aos_seek, .Lfunc_end8-s_aos_seek
	.cfi_endproc

	.align	16, 0x90
	.type	s_aos_reset,@function
s_aos_reset:                            # @s_aos_reset
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 176(%rdi)
	movq	136(%rdi), %rax
	decq	%rax
	movq	%rax, 120(%rdi)
	movq	%rax, 112(%rdi)
	movw	$0, 152(%rdi)
	retq
.Lfunc_end9:
	.size	s_aos_reset, .Lfunc_end9-s_aos_reset
	.cfi_endproc

	.align	16, 0x90
	.type	s_aos_flush,@function
s_aos_flush:                            # @s_aos_flush
	.cfi_startproc
# BB#0:                                 # %entry
	movq	256(%rdi), %rax
	movl	144(%rax), %eax
	movq	%rax, 176(%rdi)
	movq	136(%rdi), %rax
	decq	%rax
	movq	%rax, 120(%rdi)
	movq	%rax, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	s_aos_flush, .Lfunc_end10-s_aos_flush
	.cfi_endproc

	.align	16, 0x90
	.type	s_aos_close,@function
s_aos_close:                            # @s_aos_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	136(%rbx), %rsi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	movq	$0, 136(%rbx)
	movw	266(%rbx), %ax
	orw	264(%rbx), %ax
	incl	%eax
	movw	%ax, 266(%rbx)
	movw	%ax, 264(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end11:
	.size	s_aos_close, .Lfunc_end11-s_aos_close
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"make_rss"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2.reusablestream"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2.rsdparams"
	.size	.L.str.3, 12

	.type	zfrsd_op_defs,@object   # @zfrsd_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfrsd_op_defs
	.align	16
zfrsd_op_defs:
	.quad	.L.str.2
	.quad	zreusablestream
	.quad	.L.str.3
	.quad	zrsdparams
	.zero	16
	.size	zfrsd_op_defs, 48

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.zero	1
	.size	.L.str.4, 1

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"aos_stream"
	.size	.L.str.5, 11

	.type	st_aos_state,@object    # @st_aos_state
	.section	.rodata,"a",@progbits
	.align	8
st_aos_state:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	aos_clear_marks
	.quad	aos_enum_ptrs
	.quad	aos_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_aos_state, 64

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"st_aos_state"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"aos_stream_buf"
	.size	.L.str.7, 15

	.type	s_aos_template,@object  # @s_aos_template
	.section	.rodata,"a",@progbits
	.align	8
s_aos_template:
	.quad	st_aos_state
	.quad	0
	.quad	s_aos_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	0
	.size	s_aos_template, 56

	.type	s_aos_procs,@object     # @s_aos_procs
	.align	8
s_aos_procs:
	.quad	s_aos_available
	.quad	s_aos_seek
	.quad	s_aos_reset
	.quad	s_aos_flush
	.quad	s_aos_close
	.quad	s_aos_process
	.quad	0
	.size	s_aos_procs, 56

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"aos_state"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"s_aos_close(buffer)"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Filter"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"DecodeParms"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Decode"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Intent"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"AsyncRead"
	.size	.L.str.14, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
