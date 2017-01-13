	.text
	.file	"ifs-compose-storage.bc"
	.globl	ifsvals_parse_string
	.align	16, 0x90
	.type	ifsvals_parse_string,@function
ifsvals_parse_string:                   # @ifsvals_parse_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	callq	g_scanner_new
	movabsq	$.L.str, %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %r8d
	andl	$-524289, %r8d          # imm = 0xFFFFFFFFFFF7FFFF
	orl	$524288, %r8d           # imm = 0x80000
	movl	%r8d, 32(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	32(%rax), %r8d
	andl	$-33, %r8d
	orl	$32, %r8d
	movl	%r8d, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 16(%rax)
	movl	$0, -40(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-40(%rbp), %rax
	cmpq	$24, %rax
	jae	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%esi, %esi
	movabsq	$symbols, %rax
	movq	-32(%rbp), %rdi
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	movslq	-40(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %r8d
	movl	%r8d, %ecx
	callq	g_scanner_scope_add_symbol
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, %edx
	callq	g_scanner_input_text
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	ifsvals_parse
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_scanner_destroy
	movl	-36(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ifsvals_parse_string, .Lfunc_end0-ifsvals_parse_string
	.cfi_endproc

	.align	16, 0x90
	.type	ifsvals_parse,@function
ifsvals_parse:                          # @ifsvals_parse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	$48, %eax
	movl	%eax, %ecx
	leaq	-96(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -136(%rbp)
	movq	-24(%rbp), %rdx
	movq	%r8, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	memcpy
	movl	$0, -96(%rbp)
	movl	$0, -148(%rbp)
	movl	$256, -40(%rbp)         # imm = 0x100
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jne	.LBB1_27
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_eof
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_27
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$-271, %eax             # imm = 0xFFFFFFFFFFFFFEF1
	movl	%eax, %ecx
	subl	$7, %eax
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%eax, -164(%rbp)        # 4-byte Spill
	ja	.LBB1_25
# BB#35:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_5:                                # %sw.bb
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -36(%rbp)
	cmpl	$261, -36(%rbp)         # imm = 0x105
	jne	.LBB1_7
# BB#6:                                 # %if.then.4
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	jmp	.LBB1_8
.LBB1_7:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$261, -40(%rbp)         # imm = 0x105
.LBB1_8:                                # %if.end.5
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_26
.LBB1_9:                                # %sw.bb.6
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -36(%rbp)
	cmpl	$261, -36(%rbp)         # imm = 0x105
	jne	.LBB1_11
# BB#10:                                # %if.then.10
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.14
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$261, -40(%rbp)         # imm = 0x105
.LBB1_12:                               # %if.end.15
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_26
.LBB1_13:                               # %sw.bb.16
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -36(%rbp)
	cmpl	$261, -36(%rbp)         # imm = 0x105
	jne	.LBB1_15
# BB#14:                                # %if.then.20
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.24
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$261, -40(%rbp)         # imm = 0x105
.LBB1_16:                               # %if.end.25
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_26
.LBB1_17:                               # %sw.bb.26
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-96(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$16, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -40(%rbp)
	jmp	.LBB1_26
.LBB1_18:                               # %sw.bb.28
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-96(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$24, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -40(%rbp)
	jmp	.LBB1_26
.LBB1_19:                               # %sw.bb.30
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-96(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$32, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -40(%rbp)
	jmp	.LBB1_26
.LBB1_20:                               # %sw.bb.32
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-96(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$40, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -40(%rbp)
	jmp	.LBB1_26
.LBB1_21:                               # %sw.bb.34
                                        #   in Loop: Header=BB1_1 Depth=1
	xorps	%xmm0, %xmm0
	leaq	-128(%rbp), %rdi
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %esi
	callq	aff_element_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	ifsvals_parse_element
	movl	%eax, -40(%rbp)
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jne	.LBB1_23
# BB#22:                                # %if.then.39
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -136(%rbp)
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.43
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	aff_element_free
.LBB1_24:                               # %if.end.44
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_26
.LBB1_25:                               # %sw.default
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$265, -40(%rbp)         # imm = 0x109
.LBB1_26:                               # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_1
.LBB1_27:                               # %while.end
	cmpl	$256, -40(%rbp)         # imm = 0x100
	je	.LBB1_29
# BB#28:                                # %if.then.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.51, %r9
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	movq	%rcx, %rdx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %r8         # 8-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	g_scanner_unexp_token
	movabsq	$g_free, %rsi
	movq	-136(%rbp), %rdi
	callq	g_list_free_full
	movl	$0, -4(%rbp)
	jmp	.LBB1_34
.LBB1_29:                               # %if.end.48
	movl	$48, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-136(%rbp), %rdi
	callq	g_list_reverse
	movl	$8, %r8d
	movl	%r8d, %esi
	movq	%rax, -136(%rbp)
	movslq	-96(%rbp), %rdi
	callq	g_malloc_n
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-136(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -148(%rbp)
.LBB1_30:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB1_33
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB1_30 Depth=1
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movslq	-148(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
# BB#32:                                # %for.inc
                                        #   in Loop: Header=BB1_30 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB1_30
.LBB1_33:                               # %for.end
	movq	-136(%rbp), %rdi
	callq	g_list_free
	movl	$1, -4(%rbp)
.LBB1_34:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ifsvals_parse, .Lfunc_end1-ifsvals_parse
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_5
	.quad	.LBB1_9
	.quad	.LBB1_13
	.quad	.LBB1_17
	.quad	.LBB1_18
	.quad	.LBB1_19
	.quad	.LBB1_20
	.quad	.LBB1_21

	.text
	.globl	ifsvals_stringify
	.align	16, 0x90
	.type	ifsvals_stringify,@function
ifsvals_stringify:                      # @ifsvals_stringify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_string_new
	movabsq	$.L.str.1, %rsi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	4(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.2, %rsi
	movq	-200(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.3, %rsi
	movq	-200(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.5, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.6, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.7, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.8, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$0, -20(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.9, %rsi
	movq	-200(%rbp), %rdi
	callq	g_string_append
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.10, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.11, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.12, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.13, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.14, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.15, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.16, %rsi
	movq	-200(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	48(%rcx), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	56(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$39, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$78, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	72(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.17, %rsi
	leaq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$39, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	96(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$78, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	104(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.18, %rsi
	leaq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	120(%rcx), %xmm0        # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$39, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	128(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$78, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	136(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.19, %rsi
	leaq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	152(%rcx), %xmm0        # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$39, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	160(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$78, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	168(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.20, %rsi
	leaq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	184(%rcx), %xmm0        # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$39, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	192(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-192(%rbp), %rcx
	addq	$78, %rcx
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movsd	200(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rcx, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.21, %rsi
	leaq	-192(%rbp), %rcx
	movq	-200(%rbp), %rdi
	movq	%rcx, %rdx
	addq	$39, %rdx
	movq	%rcx, %r8
	addq	$78, %r8
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	216(%rcx), %xmm0        # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.22, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	224(%rcx), %xmm0        # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.23, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.24, %rsi
	movq	-200(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	232(%rcx), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movl	$39, %esi
	movabsq	$.L.str.4, %rdx
	leaq	-64(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %r8
	movq	(%r8,%rcx,8), %rcx
	movsd	240(%rcx), %xmm0        # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movabsq	$.L.str.25, %rsi
	leaq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.26, %rsi
	movq	-200(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -480(%rbp)        # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	xorl	%esi, %esi
	movq	-200(%rbp), %rdi
	callq	g_string_free
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ifsvals_stringify, .Lfunc_end2-ifsvals_stringify
	.cfi_endproc

	.align	16, 0x90
	.type	parse_genuine_float,@function
parse_genuine_float:                    # @parse_genuine_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -32(%rbp)
	cmpl	$45, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -32(%rbp)
.LBB3_2:                                # %if.end
	cmpl	$263, -32(%rbp)         # imm = 0x107
	jne	.LBB3_7
# BB#3:                                 # %if.then.3
	cmpl	$0, -28(%rbp)
	je	.LBB3_5
# BB#4:                                 # %cond.true
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB3_6:                                # %cond.end
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB3_8
.LBB3_7:                                # %if.else
	movl	$263, -4(%rbp)          # imm = 0x107
.LBB3_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	parse_genuine_float, .Lfunc_end3-parse_genuine_float
	.cfi_endproc

	.align	16, 0x90
	.type	ifsvals_parse_element,@function
ifsvals_parse_element:                  # @ifsvals_parse_element
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$123, -28(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$123, -4(%rbp)
	jmp	.LBB4_56
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
.LBB4_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$125, -28(%rbp)
	je	.LBB4_55
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$-279, %eax             # imm = 0xFFFFFFFFFFFFFEE9
	movl	%eax, %ecx
	subl	$15, %eax
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	ja	.LBB4_53
# BB#57:                                # %while.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_5:                                # %sw.bb
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	parse_genuine_float
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	je	.LBB4_7
# BB#6:                                 # %if.then.5
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_7:                                # %if.end.6
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_8:                                # %sw.bb.7
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	je	.LBB4_10
# BB#9:                                 # %if.then.10
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_10:                               # %if.end.11
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_11:                               # %sw.bb.12
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	je	.LBB4_13
# BB#12:                                # %if.then.15
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_13:                               # %if.end.16
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_14:                               # %sw.bb.17
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	je	.LBB4_16
# BB#15:                                # %if.then.20
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_16:                               # %if.end.21
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_17:                               # %sw.bb.22
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	je	.LBB4_19
# BB#18:                                # %if.then.25
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_19:                               # %if.end.26
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_20:                               # %sw.bb.27
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	je	.LBB4_22
# BB#21:                                # %if.then.30
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_22:                               # %if.end.31
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_23:                               # %sw.bb.32
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$261, -28(%rbp)         # imm = 0x105
	je	.LBB4_25
# BB#24:                                # %if.then.35
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB4_56
.LBB4_25:                               # %if.end.36
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 48(%rax)
	jmp	.LBB4_54
.LBB4_26:                               # %sw.bb.37
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rsi
	callq	ifsvals_parse_color
	movl	%eax, -28(%rbp)
	cmpl	$256, -28(%rbp)         # imm = 0x100
	je	.LBB4_28
# BB#27:                                # %if.then.41
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_28:                               # %if.end.42
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_29:                               # %sw.bb.43
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rsi
	callq	ifsvals_parse_color
	movl	%eax, -28(%rbp)
	cmpl	$256, -28(%rbp)         # imm = 0x100
	je	.LBB4_31
# BB#30:                                # %if.then.47
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_31:                               # %if.end.48
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_32:                               # %sw.bb.49
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rsi
	callq	ifsvals_parse_color
	movl	%eax, -28(%rbp)
	cmpl	$256, -28(%rbp)         # imm = 0x100
	je	.LBB4_34
# BB#33:                                # %if.then.53
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_34:                               # %if.end.54
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_35:                               # %sw.bb.55
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rsi
	callq	ifsvals_parse_color
	movl	%eax, -28(%rbp)
	cmpl	$256, -28(%rbp)         # imm = 0x100
	je	.LBB4_37
# BB#36:                                # %if.then.59
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_37:                               # %if.end.60
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_38:                               # %sw.bb.61
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$184, %rax
	movq	%rax, %rsi
	callq	ifsvals_parse_color
	movl	%eax, -28(%rbp)
	cmpl	$256, -28(%rbp)         # imm = 0x100
	je	.LBB4_40
# BB#39:                                # %if.then.65
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_40:                               # %if.end.66
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_41:                               # %sw.bb.67
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$216, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	je	.LBB4_43
# BB#42:                                # %if.then.71
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_43:                               # %if.end.72
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_44:                               # %sw.bb.73
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$224, %rax
	movq	%rax, %rsi
	callq	parse_genuine_float
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	je	.LBB4_46
# BB#45:                                # %if.then.77
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_56
.LBB4_46:                               # %if.end.78
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_54
.LBB4_47:                               # %sw.bb.79
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$261, -28(%rbp)         # imm = 0x105
	je	.LBB4_49
# BB#48:                                # %if.then.83
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB4_56
.LBB4_49:                               # %if.end.84
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 232(%rax)
	jmp	.LBB4_54
.LBB4_50:                               # %sw.bb.88
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$263, -28(%rbp)         # imm = 0x107
	je	.LBB4_52
# BB#51:                                # %if.then.92
	movl	$263, -4(%rbp)          # imm = 0x107
	jmp	.LBB4_56
.LBB4_52:                               # %if.end.93
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 240(%rax)
	jmp	.LBB4_54
.LBB4_53:                               # %sw.default
	movl	$265, -4(%rbp)          # imm = 0x109
	jmp	.LBB4_56
.LBB4_54:                               # %sw.epilog
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	jmp	.LBB4_3
.LBB4_55:                               # %while.end
	movl	$256, -4(%rbp)          # imm = 0x100
.LBB4_56:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ifsvals_parse_element, .Lfunc_end4-ifsvals_parse_element
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_5
	.quad	.LBB4_8
	.quad	.LBB4_11
	.quad	.LBB4_14
	.quad	.LBB4_17
	.quad	.LBB4_20
	.quad	.LBB4_23
	.quad	.LBB4_26
	.quad	.LBB4_29
	.quad	.LBB4_32
	.quad	.LBB4_35
	.quad	.LBB4_38
	.quad	.LBB4_41
	.quad	.LBB4_44
	.quad	.LBB4_47
	.quad	.LBB4_50

	.text
	.align	16, 0x90
	.type	ifsvals_parse_color,@function
ifsvals_parse_color:                    # @ifsvals_parse_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$123, -28(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$123, -4(%rbp)
	jmp	.LBB5_15
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$263, -28(%rbp)         # imm = 0x107
	je	.LBB5_4
# BB#3:                                 # %if.then.3
	movl	$263, -4(%rbp)          # imm = 0x107
	jmp	.LBB5_15
.LBB5_4:                                # %if.end.4
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$44, -28(%rbp)
	je	.LBB5_6
# BB#5:                                 # %if.then.7
	movl	$44, -4(%rbp)
	jmp	.LBB5_15
.LBB5_6:                                # %if.end.8
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$263, -28(%rbp)         # imm = 0x107
	je	.LBB5_8
# BB#7:                                 # %if.then.11
	movl	$263, -4(%rbp)          # imm = 0x107
	jmp	.LBB5_15
.LBB5_8:                                # %if.end.12
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$44, -28(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.17
	movl	$44, -4(%rbp)
	jmp	.LBB5_15
.LBB5_10:                               # %if.end.18
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$263, -28(%rbp)         # imm = 0x107
	je	.LBB5_12
# BB#11:                                # %if.then.21
	movl	$263, -4(%rbp)          # imm = 0x107
	jmp	.LBB5_15
.LBB5_12:                               # %if.end.22
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	cmpl	$125, -28(%rbp)
	je	.LBB5_14
# BB#13:                                # %if.then.27
	movl	$125, -4(%rbp)
	jmp	.LBB5_15
.LBB5_14:                               # %if.end.28
	movl	$256, -4(%rbp)          # imm = 0x100
.LBB5_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ifsvals_parse_color, .Lfunc_end5-ifsvals_parse_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"IfsCompose Saved Data"
	.size	.L.str, 22

	.type	symbols,@object         # @symbols
	.data
	.align	16
symbols:
	.quad	.L.str.27
	.long	271                     # 0x10f
	.zero	4
	.quad	.L.str.28
	.long	272                     # 0x110
	.zero	4
	.quad	.L.str.29
	.long	273                     # 0x111
	.zero	4
	.quad	.L.str.30
	.long	274                     # 0x112
	.zero	4
	.quad	.L.str.31
	.long	275                     # 0x113
	.zero	4
	.quad	.L.str.32
	.long	276                     # 0x114
	.zero	4
	.quad	.L.str.33
	.long	277                     # 0x115
	.zero	4
	.quad	.L.str.34
	.long	278                     # 0x116
	.zero	4
	.quad	.L.str.35
	.long	279                     # 0x117
	.zero	4
	.quad	.L.str.36
	.long	280                     # 0x118
	.zero	4
	.quad	.L.str.37
	.long	281                     # 0x119
	.zero	4
	.quad	.L.str.38
	.long	282                     # 0x11a
	.zero	4
	.quad	.L.str.39
	.long	283                     # 0x11b
	.zero	4
	.quad	.L.str.40
	.long	284                     # 0x11c
	.zero	4
	.quad	.L.str.41
	.long	285                     # 0x11d
	.zero	4
	.quad	.L.str.42
	.long	286                     # 0x11e
	.zero	4
	.quad	.L.str.43
	.long	287                     # 0x11f
	.zero	4
	.quad	.L.str.44
	.long	288                     # 0x120
	.zero	4
	.quad	.L.str.45
	.long	289                     # 0x121
	.zero	4
	.quad	.L.str.46
	.long	290                     # 0x122
	.zero	4
	.quad	.L.str.47
	.long	291                     # 0x123
	.zero	4
	.quad	.L.str.48
	.long	292                     # 0x124
	.zero	4
	.quad	.L.str.49
	.long	293                     # 0x125
	.zero	4
	.quad	.L.str.50
	.long	294                     # 0x126
	.zero	4
	.size	symbols, 384

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"iterations %d\n"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"max_memory %d\n"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"subdivide %d\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%f"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"radius %s\n"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"aspect_ratio %s\n"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"center_x %s\n"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"center_y %s\n"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"element {\n"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"    x %s\n"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"    y %s\n"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"    theta %s\n"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"    scale %s\n"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"    asym %s\n"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"    shear %s\n"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"    flip %d\n"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"    red_color { %s,%s,%s }\n"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"    green_color { %s,%s,%s }\n"
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"    blue_color { %s,%s,%s }\n"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"    black_color { %s,%s,%s }\n"
	.size	.L.str.20, 30

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"    target_color { %s,%s,%s }\n"
	.size	.L.str.21, 31

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"    hue_scale %s\n"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"    value_scale %s\n"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"    simple_color %d\n"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"    prob %s\n"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"}\n"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"iterations"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"max_memory"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"subdivide"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"radius"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"aspect_ratio"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"center_x"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"center_y"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"element"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"x"
	.size	.L.str.35, 2

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"y"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"theta"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"scale"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"asym"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"shear"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"flip"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"red_color"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"green_color"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"blue_color"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"black_color"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"target_color"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"hue_scale"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"value_scale"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"simple_color"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"prob"
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"using default values..."
	.size	.L.str.51, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
