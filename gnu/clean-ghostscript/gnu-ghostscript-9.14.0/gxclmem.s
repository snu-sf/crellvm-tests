	.text
	.file	"gxclmem.bc"
	.align	16, 0x90
	.type	memfile_fopen,@function
memfile_fopen:                          # @memfile_fopen
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
	movq	%r8, %r13
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rdi, %r14
	movq	$0, (%r15)
	movzbl	(%r14), %eax
	cmpl	$255, %eax
	jne	.LBB0_19
# BB#1:                                 # %land.lhs.true
	movzbl	(%rsi), %eax
	cmpl	$114, %eax
	je	.LBB0_3
# BB#2:                                 # %land.lhs.true
	movzbl	%al, %eax
	cmpl	$97, %eax
	jne	.LBB0_19
.LBB0_3:                                # %if.then
	movq	$0, 16(%rsp)
	leaq	1(%r14), %rdi
	xorl	%ebx, %ebx
	leaq	16(%rsp), %rdx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	gs_sscanf
	movl	$-12, %ebp
	cmpl	$1, %eax
	jne	.LBB0_29
# BB#4:                                 # %if.end
	movq	16(%rsp), %rbx
	cmpl	$0, 20(%rbx)
	movl	$0, %ebp
	je	.LBB0_29
# BB#5:                                 # %if.else
	movl	$st_MEMFILE, %esi
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_6
# BB#7:                                 # %if.end.23
	movq	16(%rsp), %rsi
	movl	$232, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	%r12, (%rbx)
	movq	%r13, 8(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rbx)
	movq	$0, 40(%rbx)
	movl	$0, 48(%rbx)
	movq	$0, 56(%rbx)
	movl	$0, 64(%rbx)
	movq	16(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 24(%rbx)
	movq	16(%rsp), %rax
	movq	%rbx, 24(%rax)
	movq	16(%rsp), %rax
	movq	%rax, 32(%rbx)
	movq	$0, 96(%rbx)
	movq	$0, 136(%rbx)
	movl	$0, 152(%rbx)
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_18
# BB#8:                                 # %if.then.29
	movq	88(%rbx), %rax
	addq	$16223, %rax            # imm = 0x3F5F
	movabsq	$582145769584522339, %rcx # imm = 0x814327E3B94F463
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$9, %rdx
	leal	(%rdx,%rax), %ebp
	callq	clist_decompressor_template
	movq	%rax, %r13
	movq	8(%rbx), %rdi
	shll	$5, %ebp
	movl	$.L.str.3, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB0_29
# BB#9:                                 # %for.cond.preheader
	movq	72(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB0_14
# BB#10:                                # %for.body.preheader
	movq	%rax, %rdx
	addq	$32, %rdx
	.align	16, 0x90
.LBB0_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movups	8(%rcx), %xmm0
	movups	%xmm0, -24(%rdx)
	movq	$0, -8(%rdx)
	cmpq	$0, (%rcx)
	movl	$0, %esi
	je	.LBB0_13
# BB#12:                                # %select.mid
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	%rdx, %rsi
.LBB0_13:                               # %select.end
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	%rsi, -32(%rdx)
	movq	(%rcx), %rcx
	addq	$32, %rdx
	testq	%rcx, %rcx
	jne	.LBB0_11
.LBB0_14:                               # %for.end
	movq	%rax, 72(%rbx)
	movq	(%r13), %rsi
	movl	$.L.str.4, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, 224(%rbx)
	testq	%rax, %rax
	je	.LBB0_15
# BB#16:                                # %if.end.73
	movq	%rax, %rdi
	callq	clist_decompressor_init
	movq	224(%rbx), %rdi
	movq	%r12, 8(%rdi)
	movq	40(%r13), %rax
	testq	%rax, %rax
	je	.LBB0_18
# BB#17:                                # %if.then.77
	callq	*%rax
.LBB0_18:                               # %if.end.85
	movq	72(%rbx), %rax
	movq	%rax, 80(%rbx)
	movq	%rbx, %rdi
	callq	memfile_get_pdata
	movl	$1, %ebp
	jmp	.LBB0_29
.LBB0_19:                               # %if.end.89
	movb	$0, (%r14)
	movl	$st_MEMFILE, %esi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_37
# BB#20:                                # %if.end.100
	movq	%r12, (%rbx)
	movq	%r13, 8(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rbx)
	movups	%xmm0, 24(%rbx)
	movq	$0, 120(%rbx)
	movq	$0, 40(%rbx)
	movl	$0, 48(%rbx)
	movq	$0, 56(%rbx)
	movl	$0, 64(%rbx)
	movq	%rbx, %rdi
	callq	memfile_init_empty
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_32
# BB#21:                                # %if.end.115
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memfile_set_memory_warning
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_32
# BB#22:                                # %if.end.120
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	$1, 16(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rbx)
	callq	clist_compressor_template
	movq	%rax, %r15
	callq	clist_decompressor_template
	movq	%rax, %r13
	movq	(%r15), %rsi
	movl	$.L.str.6, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, 216(%rbx)
	movq	(%r13), %rsi
	movl	$.L.str.4, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, 224(%rbx)
	testq	%rax, %rax
	je	.LBB0_36
# BB#23:                                # %if.end.120
	movq	216(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_36
# BB#24:                                # %if.end.151
	callq	clist_compressor_init
	movq	224(%rbx), %rdi
	callq	clist_decompressor_init
	movq	216(%rbx), %rdi
	movq	%r12, 8(%rdi)
	movq	224(%rbx), %rax
	movq	%r12, 8(%rax)
	movq	40(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_26
# BB#25:                                # %if.then.160
	callq	*%rax
.LBB0_26:                               # %if.end.163
	movq	40(%r13), %rax
	testq	%rax, %rax
	movq	8(%rsp), %r15           # 8-byte Reload
	je	.LBB0_28
# BB#27:                                # %if.then.166
	movq	224(%rbx), %rdi
	callq	*%rax
.LBB0_28:                               # %if.end.174
	movq	$0, 120(%rbx)
	movb	$-1, (%r14)
	leaq	1(%r14), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	gs_sprintf
	jmp	.LBB0_29
.LBB0_37:                               # %finish.thread
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	errprintf
	movl	$-25, %ebp
	jmp	.LBB0_33
.LBB0_36:                               # %cleanup.170
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	errprintf
	movl	$-25, %ebp
	jmp	.LBB0_32
.LBB0_6:                                # %if.then.19
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	errprintf
	movl	$-25, %ebp
	jmp	.LBB0_29
.LBB0_15:                               # %if.then.69
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	errprintf
.LBB0_29:                               # %finish
	testl	%ebp, %ebp
	js	.LBB0_31
# BB#30:                                # %finish
	testq	%rbx, %rbx
	je	.LBB0_31
# BB#35:                                # %cleanup.198
	movl	$1, 20(%rbx)
	movq	%rbx, (%r15)
	movl	%ebp, %eax
	jmp	.LBB0_34
.LBB0_31:                               # %if.then.185
	testq	%rbx, %rbx
	je	.LBB0_33
.LBB0_32:                               # %if.then.188
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memfile_fclose
.LBB0_33:                               # %if.end.190
	testl	%ebp, %ebp
	movl	$-12, %eax
	cmovsl	%ebp, %eax
.LBB0_34:                               # %if.end.190
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	memfile_fopen, .Lfunc_end0-memfile_fopen
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_fclose,@function
memfile_fclose:                         # @memfile_fclose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$0, 20(%rbx)
	testl	%edx, %edx
	je	.LBB1_1
# BB#18:                                # %if.end.60
	cmpq	$0, 24(%rbx)
	jne	.LBB1_21
# BB#19:                                # %lor.lhs.false
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB1_22
# BB#20:                                # %land.lhs.true
	cmpl	$0, 20(%rax)
	je	.LBB1_22
.LBB1_21:                               # %if.then.68
	movq	(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.19, %esi
	jmp	.LBB1_17
.LBB1_1:                                # %if.then
	movq	32(%rbx), %rcx
	xorl	%r14d, %r14d
	testq	%rcx, %rcx
	je	.LBB1_28
	.align	16, 0x90
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	testq	%rax, %rax
	je	.LBB1_16
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	24(%rax), %rcx
	cmpq	%rbx, %rcx
	jne	.LBB1_2
# BB#4:                                 # %if.end.12
	movq	24(%rbx), %rcx
	movq	%rcx, 24(%rax)
	movq	72(%rbx), %rsi
	movq	8(%rsi), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_15
# BB#5:                                 # %while.cond.preheader
	testq	%rsi, %rsi
	je	.LBB1_7
	.align	16, 0x90
.LBB1_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbp
	movq	8(%rbx), %rdi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
	addq	$-32, 120(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, %rsi
	jne	.LBB1_6
.LBB1_7:                                # %while.end
	movq	$0, 72(%rbx)
	cmpl	$0, 208(%rbx)
	je	.LBB1_13
# BB#8:                                 # %if.then.22
	movq	224(%rbx), %rdi
	movq	(%rdi), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_10
# BB#9:                                 # %if.then.24
	callq	*%rax
.LBB1_10:                               # %if.end.29
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB1_12
# BB#11:                                # %if.then.33
	callq	*%rax
.LBB1_12:                               # %if.end.38
	movl	$0, 208(%rbx)
.LBB1_13:                               # %while.cond.41.preheader
	movq	136(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_15
	.align	16, 0x90
.LBB1_14:                               # %while.body.43
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbp
	movq	8(%rbx), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
	addq	$-16248, 120(%rbx)      # imm = 0xFFFFFFFFFFFFC088
	movq	%rbp, 136(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, %rsi
	jne	.LBB1_14
.LBB1_15:                               # %if.end.54
	movq	(%rbx), %rdi
	movl	$.L.str.18, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB1_28
.LBB1_22:                               # %if.else
	movq	%rbx, %rdi
	callq	memfile_free_mem
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_24:                               # %while.body.76
                                        #   in Loop: Header=BB1_23 Depth=1
	movq	(%rsi), %rax
	movq	%rax, 56(%rbx)
	movq	8(%rbx), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	addq	$-32, 120(%rbx)
.LBB1_23:                               # %if.else
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB1_24
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_25:                               # %while.body.89
                                        #   in Loop: Header=BB1_26 Depth=1
	movq	(%rsi), %rax
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	addq	$-16248, 120(%rbx)      # imm = 0xFFFFFFFFFFFFC088
.LBB1_26:                               # %while.body.89
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB1_25
# BB#27:                                # %while.end.100
	movq	(%rbx), %rdi
	movq	224(%rbx), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movq	(%rbx), %rdi
	movq	216(%rbx), %rsi
	movl	$.L.str.22, %edx
	callq	*24(%rdi)
	movq	(%rbx), %rdi
	movl	$.L.str.18, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%r14d, %r14d
	jmp	.LBB1_28
.LBB1_16:                               # %if.then.8
	movq	(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.15, %esi
.LBB1_17:                               # %cleanup.115
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	errprintf
	movl	$-9, %r14d
.LBB1_28:                               # %cleanup.115
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	memfile_fclose, .Lfunc_end1-memfile_fclose
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_unlink,@function
memfile_unlink:                         # @memfile_unlink
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$-9, %ebp
	movzbl	(%rbx), %eax
	cmpl	$255, %eax
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	leaq	1(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	gs_sscanf
	cmpl	$1, %eax
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movq	(%rsp), %rdi
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	memfile_fclose
	movl	%eax, %ebp
.LBB2_3:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	memfile_unlink, .Lfunc_end2-memfile_unlink
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.quad	19                      # 0x13
	.quad	16243                   # 0x3f73
.LCPI3_1:
	.zero	16
	.text
	.align	16, 0x90
	.type	memfile_fwrite_chars,@function
memfile_fwrite_chars:                   # @memfile_fwrite_chars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 96
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r12
	cmpq	$0, 96(%r14)
	jne	.LBB3_3
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	callq	memfile_free_mem
	movq	%r14, %rdi
	callq	memfile_init_empty
	testl	%eax, %eax
	js	.LBB3_2
.LBB3_3:                                # %if.end.3
	movq	80(%r14), %rax
	cmpq	$0, (%rax)
	je	.LBB3_5
# BB#4:                                 # %if.then.5
	movq	(%r14), %r15
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r14), %rdi
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB3_5:                                # %while.cond.preheader
	testl	%ebp, %ebp
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	je	.LBB3_44
# BB#6:                                 # %while.body.lr.ph
	movq	104(%r14), %rdi
	movq	112(%r14), %r13
	movl	12(%rsp), %r15d         # 4-byte Reload
	.align	16, 0x90
.LBB3_7:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
	subl	%edi, %r13d
	cmpl	%r15d, %r13d
	movl	%r13d, %ebp
	cmoval	%r15d, %ebp
	movl	%ebp, %ebx
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memmove
	movq	104(%r14), %rdi
	addq	%rbx, %rdi
	movq	%rdi, 104(%r14)
	movq	112(%r14), %r13
	cmpq	%r13, %rdi
	jne	.LBB3_43
# BB#8:                                 # %if.then.25
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movq	80(%r14), %rbx
	cmpq	$0, 128(%r14)
	je	.LBB3_9
# BB#34:                                # %if.else.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	8(%rbx), %r13
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	compress_log_blk
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB3_2
# BB#35:                                # %if.end.72.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	8(%r14), %rdi
	movl	$32, %esi
	movl	$.L.str.28, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB3_37
# BB#36:                                #   in Loop: Header=BB3_7 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB3_40
.LBB3_9:                                # %if.then.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	8(%r14), %rdi
	movl	$16248, %esi            # imm = 0x3F78
	movl	$.L.str.26, %edx
	callq	*64(%rdi)
	movq	%rax, %r13
	xorl	%r12d, %r12d
	testq	%r13, %r13
	movl	$0, %ebp
	jne	.LBB3_13
# BB#10:                                # %if.then.i.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	48(%r14), %ecx
	movl	$-25, %eax
	testl	%ecx, %ecx
	jle	.LBB3_2
# BB#11:                                # %if.then.20.i.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	40(%r14), %r13
	movq	(%r13), %rdx
	movq	%rdx, 40(%r14)
	decl	%ecx
	movl	%ecx, 48(%r14)
	testq	%r13, %r13
	setne	%cl
	je	.LBB3_2
# BB#12:                                #   in Loop: Header=BB3_7 Depth=1
	movzbl	%cl, %ebp
.LBB3_13:                               # %if.end.i
                                        #   in Loop: Header=BB3_7 Depth=1
	addq	$16248, 120(%r14)       # imm = 0x3F78
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r13)
	movq	8(%r14), %rdi
	movl	$32, %esi
	movl	$.L.str.28, %edx
	callq	*64(%rdi)
	testq	%rax, %rax
	jne	.LBB3_17
# BB#14:                                # %if.then.i.82.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	64(%r14), %edx
	testl	%edx, %edx
	jle	.LBB3_45
# BB#15:                                # %if.then.7.i.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	56(%r14), %rax
	movq	(%rax), %rcx
	movq	%rcx, 56(%r14)
	decl	%edx
	movl	%edx, 64(%r14)
	testq	%rax, %rax
	setne	%cl
	je	.LBB3_45
# BB#16:                                #   in Loop: Header=BB3_7 Depth=1
	movzbl	%cl, %r12d
.LBB3_17:                               # %if.end.7.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	120(%r14), %rcx
	addq	$32, %rcx
	movq	%rcx, 120(%r14)
	orl	%ebp, %r12d
	movq	%rax, (%rbx)
	movq	$0, (%rax)
	movq	$0, 24(%rax)
	movq	%rax, 80(%r14)
	cmpl	$0, 16(%r14)
	je	.LBB3_33
# BB#18:                                # %if.end.7.i
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpq	$500000001, %rcx        # imm = 0x1DCD6501
	jl	.LBB3_33
# BB#19:                                # %do.end.i
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$0, 208(%r14)
	jne	.LBB3_23
# BB#20:                                # %if.then.16.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %rbx
	movq	216(%r14), %rdi
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_22
# BB#21:                                # %if.then.19.i
                                        #   in Loop: Header=BB3_7 Depth=1
	callq	*%rax
	movl	%eax, %ecx
	movl	$-25, %eax
	testl	%ecx, %ecx
	js	.LBB3_2
.LBB3_22:                               # %if.end.28.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, 208(%r14)
	movq	%rbx, %rax
.LBB3_23:                               # %if.end.30.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	%r13, 128(%r14)
	movd	%r13, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	paddq	.LCPI3_0(%rip), %xmm0
	movdqu	%xmm0, 192(%r14)
	movq	72(%r14), %rbp
	jmp	.LBB3_24
	.align	16, 0x90
.LBB3_26:                               # %cleanup.50.thread.i
                                        #   in Loop: Header=BB3_24 Depth=2
	orl	%eax, %r12d
	movq	8(%r14), %rdi
	movl	$.L.str.30, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	addq	$-16248, 120(%r14)      # imm = 0xFFFFFFFFFFFFC088
	movq	(%rbp), %rbp
	movq	%r13, %rax
.LBB3_24:                               # %if.end.30.i
                                        #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rax, %rbp
	je	.LBB3_27
# BB#25:                                # %while.body.i
                                        #   in Loop: Header=BB3_24 Depth=2
	movq	%rax, %r13
	movq	8(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	compress_log_blk
	testl	%eax, %eax
	jns	.LBB3_26
	jmp	.LBB3_2
.LBB3_37:                               # %if.then.i.119.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	64(%r14), %edx
	movl	$-25, %eax
	testl	%edx, %edx
	jle	.LBB3_2
# BB#38:                                # %if.then.7.i.124.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	56(%r14), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 56(%r14)
	decl	%edx
	movl	%edx, 64(%r14)
	testq	%rcx, %rcx
	setne	%dl
	je	.LBB3_2
# BB#39:                                #   in Loop: Header=BB3_7 Depth=1
	movzbl	%dl, %r12d
.LBB3_40:                               # %cleanup.90.i
                                        #   in Loop: Header=BB3_7 Depth=1
	addq	$32, 120(%r14)
	orl	%ebp, %r12d
	movq	%rcx, (%rbx)
	movq	$0, (%rcx)
	movq	$0, 24(%rcx)
	movq	%r13, 8(%rcx)
	leaq	20(%r13), %rdi
	movq	%rdi, 104(%r14)
	addq	$16244, %r13            # imm = 0x3F74
	movq	%r13, 112(%r14)
	movq	%rcx, 80(%r14)
	jmp	.LBB3_41
.LBB3_27:                               # %while.end.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movl	$16248, %esi            # imm = 0x3F78
	movl	$.L.str.26, %edx
	callq	*64(%rdi)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB3_29
# BB#28:                                #   in Loop: Header=BB3_7 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB3_32
.LBB3_29:                               # %if.then.i.98.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	48(%r14), %ecx
	movl	$-25, %eax
	testl	%ecx, %ecx
	jle	.LBB3_2
# BB#30:                                # %if.then.20.i.103.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	40(%r14), %r13
	movq	(%r13), %rdx
	movq	%rdx, 40(%r14)
	decl	%ecx
	movl	%ecx, 48(%r14)
	testq	%r13, %r13
	setne	%cl
	je	.LBB3_2
# BB#31:                                #   in Loop: Header=BB3_7 Depth=1
	movzbl	%cl, %ecx
.LBB3_32:                               # %if.end.56.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	%rbx, %rax
	addq	$16248, 120(%r14)       # imm = 0x3F78
	orl	%ecx, %r12d
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r13)
.LBB3_33:                               # %if.end.60.i
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	%r13, 8(%rax)
	leaq	20(%r13), %rdi
	movq	%rdi, 104(%r14)
	addq	$16244, %r13            # imm = 0x3F74
	movq	%r13, 112(%r14)
.LBB3_41:                               # %memfile_next_blk.exit
                                        #   in Loop: Header=BB3_7 Depth=1
	testl	%r12d, %r12d
	je	.LBB3_42
# BB#46:                                # %if.then.29
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	%r12d, 152(%r14)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	js	.LBB3_47
.LBB3_42:                               #   in Loop: Header=BB3_7 Depth=1
	movq	32(%rsp), %r12          # 8-byte Reload
	movl	28(%rsp), %ebp          # 4-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB3_43:                               # %while.cond.backedge
                                        #   in Loop: Header=BB3_7 Depth=1
	addq	%rbx, %r12
	subl	%ebp, %r15d
	jne	.LBB3_7
.LBB3_44:                               # %while.end
	movl	12(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	addq	96(%r14), %rax
	movq	%rax, 96(%r14)
	movq	%rax, 88(%r14)
	movl	%ecx, %eax
	jmp	.LBB3_47
.LBB3_45:                               # %if.then.5.i
	movq	8(%r14), %rdi
	movl	$.L.str.26, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	addq	$-16248, 120(%r14)      # imm = 0xFFFFFFFFFFFFC088
	movl	$-25, %eax
.LBB3_2:                                # %if.then.2
	movl	%eax, 152(%r14)
	xorl	%eax, %eax
.LBB3_47:                               # %cleanup.43
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	memfile_fwrite_chars, .Lfunc_end3-memfile_fwrite_chars
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_fread_chars,@function
memfile_fread_chars:                    # @memfile_fread_chars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 64
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rdi, %r15
	movl	88(%r13), %r14d
	movq	96(%r13), %rax
	subl	%eax, %r14d
	cmpl	%esi, %r14d
	cmovael	%esi, %r14d
	testl	%r14d, %r14d
	je	.LBB4_6
# BB#1:                                 # %while.body.lr.ph
	movq	104(%r13), %rsi
	movl	%r14d, %r12d
	jmp	.LBB4_2
	.align	16, 0x90
.LBB4_5:                                # %if.end.7.while.body_crit_edge
                                        #   in Loop: Header=BB4_2 Depth=1
	subl	%ebp, %r12d
	addq	%rbp, %r15
	movq	96(%r13), %rax
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	incq	%rax
	movq	%rax, 96(%r13)
	movq	112(%r13), %rbx
	cmpq	%rbx, %rsi
	jne	.LBB4_4
# BB#3:                                 # %if.then.5
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	80(%r13), %rax
	movq	(%rax), %rax
	movq	%rax, 80(%r13)
	movq	%r13, %rdi
	callq	memfile_get_pdata
	movq	112(%r13), %rbx
	movq	96(%r13), %rax
	movq	104(%r13), %rsi
.LBB4_4:                                # %if.end.7
                                        #   in Loop: Header=BB4_2 Depth=1
	subl	%esi, %ebx
	cmpl	%r12d, %ebx
	cmoval	%r12d, %ebx
	leal	-1(%rbx), %ecx
	addq	%rax, %rcx
	movq	%rcx, 96(%r13)
	movl	%ebx, %ebp
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	memmove
	movq	104(%r13), %rsi
	addq	%rbp, %rsi
	movq	%rsi, 104(%r13)
	cmpl	%ebx, %r12d
	jne	.LBB4_5
.LBB4_6:                                # %while.end
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	memfile_fread_chars, .Lfunc_end4-memfile_fread_chars
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_set_memory_warning,@function
memfile_set_memory_warning:             # @memfile_set_memory_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 48
.Ltmp55:
	.cfi_offset %rbx, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leal	16223(%rsi), %eax
	cltq
	imulq	$542165497, %rax, %rbp  # imm = 0x2050C9F9
	movq	%rbp, %rax
	shrq	$63, %rax
	sarq	$43, %rbp
	addl	%eax, %ebp
	testl	%esi, %esi
	setg	%r15b
	cmpq	$0, 136(%rbx)
	sete	%r14b
	movl	64(%rbx), %eax
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_13:                               # %cleanup.thread
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	56(%rbx), %rax
	movq	%rax, (%rcx)
	movq	%rcx, 56(%rbx)
	movl	64(%rbx), %eax
	incl	%eax
	movl	%eax, 64(%rbx)
.LBB5_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, %ebp
	jle	.LBB5_2
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	8(%rbx), %rdi
	movl	$32, %esi
	movl	$.L.str.20, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	jne	.LBB5_13
	jmp	.LBB5_11
.LBB5_2:                                # %while.cond.13.preheader
	movzbl	%r15b, %ecx
	leal	(%rcx,%rbp), %ecx
	movzbl	%r14b, %r14d
	addl	%ecx, %r14d
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_14:                               # %while.body.16
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	56(%rbx), %rsi
	movq	(%rsi), %rax
	movq	%rax, 56(%rbx)
	movq	8(%rbx), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	addq	$-32, 120(%rbx)
	movl	64(%rbx), %eax
	decl	%eax
	movl	%eax, 64(%rbx)
.LBB5_3:                                # %while.cond.13.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, %ebp
	jl	.LBB5_14
# BB#4:                                 # %while.cond.27.preheader
	movl	48(%rbx), %eax
	jmp	.LBB5_5
	.align	16, 0x90
.LBB5_7:                                # %cleanup.43.thread
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	40(%rbx), %rax
	movq	%rax, (%rcx)
	movq	%rcx, 40(%rbx)
	movl	48(%rbx), %eax
	incl	%eax
	movl	%eax, 48(%rbx)
.LBB5_5:                                # %while.cond.27.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, %r14d
	jle	.LBB5_9
# BB#6:                                 # %while.body.29
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	8(%rbx), %rdi
	movl	$16248, %esi            # imm = 0x3F78
	movl	$.L.str.20, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	jne	.LBB5_7
	jmp	.LBB5_11
	.align	16, 0x90
.LBB5_8:                                # %while.body.50
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	40(%rbx), %rsi
	movq	(%rsi), %rax
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rdi
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	addq	$-16248, 120(%rbx)      # imm = 0xFFFFFFFFFFFFC088
	movl	48(%rbx), %eax
	decl	%eax
	movl	%eax, 48(%rbx)
.LBB5_9:                                # %while.body.50
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, %r14d
	jl	.LBB5_8
# BB#10:                                # %while.end.63
	movl	$0, 152(%rbx)
	xorl	%eax, %eax
.LBB5_11:                               # %cleanup.64
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	memfile_set_memory_warning, .Lfunc_end5-memfile_set_memory_warning
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_ferror_code,@function
memfile_ferror_code:                    # @memfile_ferror_code
	.cfi_startproc
# BB#0:                                 # %entry
	movl	152(%rdi), %eax
	retq
.Lfunc_end6:
	.size	memfile_ferror_code, .Lfunc_end6-memfile_ferror_code
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_ftell,@function
memfile_ftell:                          # @memfile_ftell
	.cfi_startproc
# BB#0:                                 # %entry
	movq	96(%rdi), %rax
	retq
.Lfunc_end7:
	.size	memfile_ftell, .Lfunc_end7-memfile_ftell
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_rewind,@function
memfile_rewind:                         # @memfile_rewind
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -32
.Ltmp63:
	.cfi_offset %r14, -24
.Ltmp64:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	testl	%esi, %esi
	je	.LBB8_4
# BB#1:                                 # %if.then
	cmpq	$0, 24(%rbx)
	jne	.LBB8_5
# BB#2:                                 # %lor.lhs.false
	cmpq	$0, 32(%rbx)
	je	.LBB8_3
.LBB8_5:                                # %cleanup
	movq	(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	errprintf
	movl	$-12, 152(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB8_4:                                # %if.else
	movq	72(%rbx), %rax
	movq	%rax, 80(%rbx)
	movq	$0, 96(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	memfile_get_pdata       # TAILCALL
.LBB8_3:                                # %if.end
	movq	%rbx, %rdi
	callq	memfile_free_mem
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	memfile_init_empty      # TAILCALL
.Lfunc_end8:
	.size	memfile_rewind, .Lfunc_end8-memfile_rewind
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_fseek,@function
memfile_fseek:                          # @memfile_fseek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 32
.Ltmp68:
	.cfi_offset %rbx, -32
.Ltmp69:
	.cfi_offset %r14, -24
.Ltmp70:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$-1, %eax
	testl	%edx, %edx
	je	.LBB9_5
# BB#1:                                 # %entry
	cmpl	$2, %edx
	jne	.LBB9_2
# BB#4:                                 # %sw.bb.2
	movq	88(%rbx), %rcx
	subq	%r14, %rcx
	movq	%rcx, %r14
	jmp	.LBB9_5
.LBB9_2:                                # %entry
	cmpl	$1, %edx
	jne	.LBB9_21
# BB#3:                                 # %sw.bb.1
	addq	96(%rbx), %r14
.LBB9_5:                                # %sw.epilog
	testq	%r14, %r14
	js	.LBB9_21
# BB#6:                                 # %lor.lhs.false
	cmpq	88(%rbx), %r14
	jg	.LBB9_21
# BB#7:                                 # %if.end
	movq	104(%rbx), %rax
	cmpq	112(%rbx), %rax
	jne	.LBB9_10
# BB#8:                                 # %land.lhs.true
	movq	80(%rbx), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB9_10
# BB#9:                                 # %if.then.7
	movq	%rax, 80(%rbx)
.LBB9_10:                               # %if.end.11
	movabsq	$582145769584522339, %rcx # imm = 0x814327E3B94F463
	movq	%r14, %rax
	imulq	%rcx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$63, %rax
	sarq	$9, %r15
	addq	%rax, %r15
	movq	%rcx, %rax
	imulq	96(%rbx)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$9, %rdx
	addq	%rax, %rdx
	cmpq	%rdx, %r15
	jge	.LBB9_12
# BB#11:                                # %if.then.15
	movq	72(%rbx), %rax
	movq	%rax, 80(%rbx)
	xorl	%edx, %edx
.LBB9_12:                               # %for.cond.preheader
	cmpq	%rdx, %r15
	jle	.LBB9_20
# BB#13:                                # %for.body.lr.ph
	movq	80(%rbx), %rax
	movl	%r15d, %esi
	subl	%edx, %esi
	leaq	-1(%r15), %rcx
	subq	%rdx, %rcx
	testb	$7, %sil
	je	.LBB9_16
# BB#14:                                # %for.body.prol.preheader
	movl	%r15d, %esi
	subl	%edx, %esi
	andl	$7, %esi
	negq	%rsi
	.align	16, 0x90
.LBB9_15:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	incq	%rdx
	incq	%rsi
	jne	.LBB9_15
.LBB9_16:                               # %for.body.lr.ph.split
	cmpq	$7, %rcx
	jb	.LBB9_19
# BB#17:                                # %for.body.lr.ph.split.split
	movq	%r15, %rcx
	subq	%rdx, %rcx
	.align	16, 0x90
.LBB9_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$-8, %rcx
	jne	.LBB9_18
.LBB9_19:                               # %for.end.loopexit
	movq	%rax, 80(%rbx)
.LBB9_20:                               # %for.end
	movq	%r14, 96(%rbx)
	movq	%rbx, %rdi
	callq	memfile_get_pdata
	imulq	$-16224, %r15, %rax     # imm = 0xFFFFFFFFFFFFC0A0
	addq	%r14, %rax
	addq	%rax, 104(%rbx)
	xorl	%eax, %eax
.LBB9_21:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	memfile_fseek, .Lfunc_end9-memfile_fseek
	.cfi_endproc

	.globl	gs_gxclmem_init
	.align	16, 0x90
	.type	gs_gxclmem_init,@function
gs_gxclmem_init:                        # @gs_gxclmem_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$clist_io_procs_memory, clist_io_procs_memory_global(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	gs_gxclmem_init, .Lfunc_end10-gs_gxclmem_init
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_get_pdata,@function
memfile_get_pdata:                      # @memfile_get_pdata
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 48
.Ltmp76:
	.cfi_offset %rbx, -48
.Ltmp77:
	.cfi_offset %r12, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	80(%rbx), %r12
	movq	8(%r12), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB11_1
# BB#4:                                 # %if.else.15
	cmpq	$0, 136(%rbx)
	jne	.LBB11_19
# BB#5:                                 # %if.then.18
	movq	88(%rbx), %rcx
	movabsq	$582145769584522339, %rdx # imm = 0x814327E3B94F463
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$14, %rdx
	addq	%rax, %rdx
	cmpq	$4672511, %rcx          # imm = 0x474BFF
	movl	$8, %eax
	cmovgq	%rdx, %rax
	movl	$8, %ecx
	cmovgl	%edx, %ecx
	cmpq	$64, %rax
	movl	$64, %r14d
	cmovlel	%ecx, %r14d
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB11_7
# BB#6:                                 # %if.then.45
	movq	40(%rbx), %rax
	movq	%rax, 136(%rbx)
	movq	(%rax), %rdx
	movq	%rdx, 40(%rbx)
	decl	%ecx
	movl	%ecx, 48(%rbx)
	jmp	.LBB11_12
.LBB11_1:                               # %if.then
	leaq	20(%rcx), %rax
	movq	%rax, 104(%rbx)
	movabsq	$582145769584522339, %rax # imm = 0x814327E3B94F463
	imulq	96(%rbx)
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$9, %rdx
	addl	%eax, %edx
	imull	$16224, %edx, %eax      # imm = 0x3F60
	shlq	$32, %rax
	movabsq	$69681549410304, %rdx   # imm = 0x3F6000000000
	leaq	(%rdx,%rax), %rsi
	sarq	$32, %rsi
	movq	88(%rbx), %rdx
	cmpq	%rdx, %rsi
	jle	.LBB11_3
# BB#2:                                 # %if.then.8
	leaq	20(%rcx,%rdx), %rcx
	sarq	$32, %rax
	subq	%rax, %rcx
	movq	%rcx, 112(%rbx)
	jmp	.LBB11_41
.LBB11_3:                               # %if.else
	addq	$16244, %rcx            # imm = 0x3F74
	movq	%rcx, 112(%rbx)
	jmp	.LBB11_41
.LBB11_7:                               # %if.else.50
	movq	8(%rbx), %rdi
	movl	$16248, %esi            # imm = 0x3F78
	movl	$.L.str.8, %edx
	callq	*64(%rdi)
	testq	%rax, %rax
	jne	.LBB11_11
# BB#8:                                 # %if.then.i
	movl	48(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.LBB11_10
# BB#9:                                 # %if.then.20.i
	movq	40(%rbx), %rax
	movq	(%rax), %rdx
	movq	%rdx, 40(%rbx)
	decl	%ecx
	movl	%ecx, 48(%rbx)
	testq	%rax, %rax
	je	.LBB11_10
.LBB11_11:                              # %allocateWithReserve.exit.thread8
	addq	$16248, 120(%rbx)       # imm = 0x3F78
	movq	%rax, 136(%rbx)
.LBB11_12:                              # %if.end.56
	movq	$0, 8(%rax)
	movq	%rax, 144(%rbx)
	movq	$0, 16(%rax)
	testl	%r14d, %r14d
	jle	.LBB11_17
# BB#13:                                # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB11_14:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movl	$16248, %esi            # imm = 0x3F78
	movl	$.L.str.8, %edx
	callq	*64(%rdi)
	movq	144(%rbx), %rcx
	movq	%rax, (%rcx)
	testq	%rax, %rax
	je	.LBB11_16
# BB#15:                                # %if.end.69
                                        #   in Loop: Header=BB11_14 Depth=1
	addq	$16248, 120(%rbx)       # imm = 0x3F78
	movq	(%rcx), %rax
	movq	%rcx, 8(%rax)
	movq	%rax, 144(%rbx)
	movq	$0, 16(%rax)
	incl	%ebp
	cmpl	%r14d, %ebp
	jl	.LBB11_14
	jmp	.LBB11_17
.LBB11_16:                              # %for.body.for.end_crit_edge
	movq	%rcx, %rax
.LBB11_17:                              # %for.end
	movq	$0, (%rax)
	movq	224(%rbx), %rdi
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB11_19
# BB#18:                                # %if.end.91
	callq	*%rax
	testl	%eax, %eax
	js	.LBB11_41
.LBB11_19:                              # %if.end.96
	movq	24(%r12), %rax
	testq	%rax, %rax
	je	.LBB11_20
# BB#35:                                # %if.else.228
	movq	136(%rbx), %rcx
	cmpq	%rcx, %rax
	je	.LBB11_40
# BB#36:                                # %if.then.233
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movq	%rsi, (%rdx)
	movq	(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB11_38
# BB#37:                                # %if.then.243
	movq	%rdx, 8(%rsi)
	jmp	.LBB11_39
.LBB11_20:                              # %if.then.99
	movq	144(%rbx), %rax
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB11_22
# BB#21:                                # %if.then.104
	movq	$0, 24(%rcx)
	movq	$0, 16(%rax)
.LBB11_22:                              # %if.end.110
	movq	8(%rax), %rcx
	movq	$0, (%rcx)
	movq	136(%rbx), %rcx
	movq	%rcx, (%rax)
	movq	%rax, 8(%rcx)
	movq	8(%rax), %rcx
	movq	%rcx, 144(%rbx)
	movq	%rax, 136(%rbx)
	movq	$0, 8(%rax)
	movq	%r12, 16(%rax)
	movq	224(%rbx), %rdi
	movq	(%rdi), %rbp
	movq	48(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB11_24
# BB#23:                                # %if.then.134
	callq	*%rcx
	movq	136(%rbx), %rax
	movq	224(%rbx), %rdi
	movq	(%rdi), %rbp
.LBB11_24:                              # %if.end.140
	leaq	23(%rax), %rcx
	leaq	184(%rbx), %r14
	movq	%rcx, 192(%rbx)
	addq	$16247, %rax            # imm = 0x3F77
	movq	%rax, 200(%rbx)
	movq	16(%r12), %rax
	decq	%rax
	leaq	160(%rbx), %r15
	movq	%rax, 160(%rbx)
	movq	8(%r12), %rax
	movq	8(%rax), %rax
	movq	%rax, 168(%rbx)
	movl	$1, %ecx
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*16(%rbp)
	testl	%eax, %eax
	jne	.LBB11_34
# BB#25:                                # %if.then.163
	movq	160(%rbx), %rsi
	movq	168(%rbx), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %rsi
	je	.LBB11_33
# BB#26:                                # %if.then.170
	movq	%rdx, %rcx
	subq	%rsi, %rcx
	movslq	%ecx, %rax
	testl	%eax, %eax
	jle	.LBB11_33
# BB#27:                                # %for.body.179.lr.ph
	leaq	1(%rsi), %rdi
	movq	%rdi, (%r15)
	movb	1(%rsi), %dil
	movq	8(%r12), %rbp
	movq	(%rbp), %rbp
	subq	%rax, %rbp
	movb	%dil, 20(%rbp)
	cmpl	$1, %eax
	je	.LBB11_33
# BB#28:                                # %for.body.179.for.body.179_crit_edge.preheader
	subl	%esi, %edx
	movl	$1, %esi
	testb	$1, %dl
	jne	.LBB11_30
# BB#29:                                # %for.body.179.for.body.179_crit_edge.prol
	movq	%rax, %rsi
	negq	%rsi
	movq	(%r15), %rdi
	leaq	1(%rdi), %rbp
	movq	%rbp, (%r15)
	movb	1(%rdi), %dil
	movq	8(%r12), %rbp
	movq	(%rbp), %rbp
	movb	%dil, 21(%rbp,%rsi)
	movl	$2, %esi
.LBB11_30:                              # %for.body.179.for.body.179_crit_edge.preheader.split
	cmpl	$2, %edx
	je	.LBB11_33
# BB#31:                                # %for.body.179.for.body.179_crit_edge.preheader.split.split
	movslq	%ecx, %rdx
	subl	%esi, %ecx
	subq	%rdx, %rsi
	.align	16, 0x90
.LBB11_32:                              # %for.body.179.for.body.179_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdx
	leaq	1(%rdx), %rdi
	movq	%rdi, (%r15)
	movb	1(%rdx), %dl
	movq	8(%r12), %rdi
	movq	(%rdi), %rdi
	movb	%dl, 20(%rdi,%rsi)
	movq	(%r15), %rdx
	leaq	1(%rdx), %rdi
	movq	%rdi, (%r15)
	movb	1(%rdx), %dl
	movq	8(%r12), %rdi
	movq	(%rdi), %rdi
	movb	%dl, 21(%rdi,%rsi)
	addq	$2, %rsi
	addl	$-2, %ecx
	jne	.LBB11_32
.LBB11_33:                              # %if.end.194
	movq	8(%r12), %rcx
	movq	(%rcx), %rcx
	negq	%rax
	leaq	19(%rcx,%rax), %rax
	movq	%rax, 160(%rbx)
	movq	8(%rcx), %rax
	movq	%rax, 168(%rbx)
	movq	224(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$1, %ecx
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*16(%rax)
	testl	%eax, %eax
	je	.LBB11_42
.LBB11_34:                              # %if.end.225
	movq	136(%rbx), %rax
	movq	%rax, 24(%r12)
	jmp	.LBB11_40
.LBB11_38:                              # %if.else.249
	movq	%rdx, 144(%rbx)
.LBB11_39:                              # %if.end.253
	movq	%rax, 8(%rcx)
	movq	%rcx, (%rax)
	movq	%rax, 136(%rbx)
	movq	$0, 8(%rax)
.LBB11_40:                              # %if.end.265
	leaq	24(%rax), %rcx
	movq	%rcx, 104(%rbx)
	addq	$16248, %rax            # imm = 0x3F78
	movq	%rax, 112(%rbx)
.LBB11_41:                              # %cleanup.274
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_42:                              # %if.then.219
	movq	(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	errprintf               # TAILCALL
.LBB11_10:                              # %allocateWithReserve.exit.thread
	movq	$0, 136(%rbx)
	jmp	.LBB11_41
.Lfunc_end11:
	.size	memfile_get_pdata, .Lfunc_end11-memfile_get_pdata
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.quad	20                      # 0x14
	.quad	16244                   # 0x3f74
	.text
	.align	16, 0x90
	.type	memfile_init_empty,@function
memfile_init_empty:                     # @memfile_init_empty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 32
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
.Ltmp86:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	$0, 128(%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 72(%rbx)
	movdqu	%xmm0, 88(%rbx)
	movq	$0, 136(%rbx)
	movl	$0, 208(%rbx)
	movq	$0, 120(%rbx)
	movq	8(%rbx), %rdi
	movl	$16248, %esi            # imm = 0x3F78
	movl	$.L.str.11, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB12_1
# BB#3:                                 # %if.end
	addq	$16248, 120(%rbx)       # imm = 0x3F78
	movq	$0, 8(%r14)
	movq	8(%rbx), %rdi
	movl	$32, %esi
	movl	$.L.str.13, %edx
	callq	*64(%rdi)
	testq	%rax, %rax
	je	.LBB12_4
# BB#5:                                 # %if.end.22
	addq	$32, 120(%rbx)
	movq	%rax, 80(%rbx)
	movq	%rax, 72(%rbx)
	movq	$0, (%rax)
	movq	%r14, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movd	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	paddq	.LCPI12_0(%rip), %xmm0
	movdqu	%xmm0, 104(%rbx)
	movl	$0, 152(%rbx)
	xorl	%eax, %eax
	jmp	.LBB12_6
.LBB12_1:                               # %if.then
	movq	(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.12, %esi
	jmp	.LBB12_2
.LBB12_4:                               # %if.then.12
	movq	8(%rbx), %rdi
	movl	$.L.str.13, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	addq	$-16248, 120(%rbx)      # imm = 0xFFFFFFFFFFFFC088
	movq	(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.14, %esi
.LBB12_2:                               # %cleanup
	xorl	%eax, %eax
	callq	errprintf
	movl	$-25, %eax
.LBB12_6:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	memfile_init_empty, .Lfunc_end12-memfile_init_empty
	.cfi_endproc

	.align	16, 0x90
	.type	memfile_free_mem,@function
memfile_free_mem:                       # @memfile_free_mem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 32
.Ltmp90:
	.cfi_offset %rbx, -32
.Ltmp91:
	.cfi_offset %r14, -24
.Ltmp92:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	72(%r15), %r14
	testq	%r14, %r14
	je	.LBB13_13
# BB#1:                                 # %for.body.lr.ph
	movq	8(%r14), %rsi
	movq	%rsi, %rcx
	movq	%r14, %rax
	jmp	.LBB13_2
	.align	16, 0x90
.LBB13_5:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	8(%rax), %rcx
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%rcx)
	je	.LBB13_4
# BB#3:                                 # %if.then.4
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	$0, 8(%rax)
.LBB13_4:                               # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB13_5
# BB#6:                                 # %for.end
	testq	%rsi, %rsi
	je	.LBB13_9
# BB#7:                                 # %for.end
	movq	8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB13_9
	.align	16, 0x90
.LBB13_8:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movq	8(%r15), %rdi
	movl	$.L.str.23, %edx
	callq	*24(%rdi)
	addq	$-16248, 120(%r15)      # imm = 0xFFFFFFFFFFFFC088
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB13_8
.LBB13_9:                               # %while.cond.14.preheader
	testq	%r14, %r14
	je	.LBB13_13
	.align	16, 0x90
.LBB13_10:                              # %while.body.16
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB13_12
# BB#11:                                # %if.then.19
                                        #   in Loop: Header=BB13_10 Depth=1
	movq	8(%r15), %rdi
	movl	$.L.str.24, %edx
	callq	*24(%rdi)
	addq	$-16248, 120(%r15)      # imm = 0xFFFFFFFFFFFFC088
.LBB13_12:                              # %if.end.27
                                        #   in Loop: Header=BB13_10 Depth=1
	movq	(%r14), %rbx
	movq	8(%r15), %rdi
	movl	$.L.str.16, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	addq	$-32, 120(%r15)
	testq	%rbx, %rbx
	movq	%rbx, %r14
	jne	.LBB13_10
.LBB13_13:                              # %while.end.35
	movq	$0, 72(%r15)
	cmpl	$0, 208(%r15)
	je	.LBB13_19
# BB#14:                                # %if.then.37
	movq	224(%r15), %rdi
	movq	(%rdi), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB13_16
# BB#15:                                # %if.then.39
	callq	*%rax
.LBB13_16:                              # %if.end.44
	movq	216(%r15), %rdi
	movq	(%rdi), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB13_18
# BB#17:                                # %if.then.48
	callq	*%rax
.LBB13_18:                              # %if.end.53
	movl	$0, 208(%r15)
.LBB13_19:                              # %while.cond.56.preheader
	movq	136(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB13_21
	.align	16, 0x90
.LBB13_20:                              # %while.body.58
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movq	8(%r15), %rdi
	movl	$.L.str.17, %edx
	callq	*24(%rdi)
	addq	$-16248, 120(%r15)      # imm = 0xFFFFFFFFFFFFC088
	movq	%rbx, 136(%r15)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB13_20
.LBB13_21:                              # %while.end.68
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	memfile_free_mem, .Lfunc_end13-memfile_free_mem
	.cfi_endproc

	.align	16, 0x90
	.type	compress_log_blk,@function
compress_log_blk:                       # @compress_log_blk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp96:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp97:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp99:
	.cfi_def_cfa_offset 80
.Ltmp100:
	.cfi_offset %rbx, -56
.Ltmp101:
	.cfi_offset %r12, -48
.Ltmp102:
	.cfi_offset %r13, -40
.Ltmp103:
	.cfi_offset %r14, -32
.Ltmp104:
	.cfi_offset %r15, -24
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	8(%r13), %rax
	leaq	19(%rax), %rcx
	leaq	160(%rbx), %r14
	movq	%rcx, 160(%rbx)
	addq	$16243, %rax            # imm = 0x3F73
	movq	%rax, 168(%rbx)
	movq	128(%rbx), %rax
	movq	%rax, 8(%r13)
	leaq	184(%rbx), %r15
	movq	192(%rbx), %r12
	leaq	1(%r12), %rax
	movq	%rax, 16(%r13)
	movq	216(%rbx), %rdi
	movq	(%rdi), %rbp
	movq	48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB14_2
# BB#1:                                 # %if.then
	callq	*%rax
	movq	192(%rbx), %r12
	movq	216(%rbx), %rdi
	movq	(%rdi), %rbp
.LBB14_2:                               # %if.end
	movl	$1, %ecx
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*16(%rbp)
	movl	%eax, %ebp
	movq	%r15, %rcx
	movq	192(%rbx), %r15
	movq	8(%r13), %rax
	movq	%r15, 8(%rax)
	movq	%r14, %rax
	xorl	%r14d, %r14d
	cmpl	$1, %ebp
	jne	.LBB14_3
# BB#4:                                 # %if.then.24
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rax, %r15
	movq	8(%rbx), %rdi
	movq	200(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$16248, %esi            # imm = 0x3F78
	movl	$.L.str.26, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB14_6
# BB#5:
	xorl	%r14d, %r14d
	jmp	.LBB14_9
.LBB14_3:
	xorl	%eax, %eax
	movq	%r12, %r13
	jmp	.LBB14_12
.LBB14_6:                               # %if.then.i
	movl	48(%rbx), %eax
	movl	$-25, %r14d
	testl	%eax, %eax
	jle	.LBB14_15
# BB#7:                                 # %if.then.20.i
	movq	40(%rbx), %rbp
	movq	(%rbp), %rcx
	movq	%rcx, 40(%rbx)
	decl	%eax
	movl	%eax, 48(%rbx)
	testq	%rbp, %rbp
	setne	%al
	je	.LBB14_15
# BB#8:
	movzbl	%al, %r14d
.LBB14_9:                               # %if.end.30
	addq	$16248, 120(%rbx)       # imm = 0x3F78
	movq	$0, (%rbp)
	movq	8(%r13), %rax
	movq	%rbp, (%rax)
	movq	%rbp, 128(%rbx)
	leaq	19(%rbp), %r13
	movq	%r13, 192(%rbx)
	leaq	16243(%rbp), %rax
	movq	%rax, 200(%rbx)
	movq	216(%rbx), %rdi
	movq	(%rdi), %rax
	movl	$1, %ecx
	movq	%r15, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*16(%rax)
	testl	%eax, %eax
	je	.LBB14_11
# BB#10:                                # %if.then.54
	movq	(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	$-100, %r14d
	jmp	.LBB14_15
.LBB14_11:                              # %if.end.59
	movq	8(%rsp), %rax           # 8-byte Reload
	subq	%r12, %rax
	movq	192(%rbx), %r15
	movq	%r15, 8(%rbp)
	xorl	%ebp, %ebp
.LBB14_12:                              # %if.end.63
	subq	%r13, %r15
	addq	%rax, %r15
	cmpq	$16225, %r15            # imm = 0x3F61
	jl	.LBB14_14
# BB#13:                                # %if.then.70
	movq	(%rbx), %r12
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbx), %rdi
	movl	$.L.str.35, %esi
	movl	$16224, %edx            # imm = 0x3F60
	xorl	%eax, %eax
	movq	%r15, %rcx
	callq	errprintf
.LBB14_14:                              # %if.end.76
	testl	%ebp, %ebp
	movl	$-12, %eax
	cmovsl	%eax, %r14d
.LBB14_15:                              # %cleanup
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	compress_log_blk, .Lfunc_end14-compress_log_blk
	.cfi_endproc

	.type	clist_io_procs_memory,@object # @clist_io_procs_memory
	.data
	.globl	clist_io_procs_memory
	.align	8
clist_io_procs_memory:
	.quad	memfile_fopen
	.quad	memfile_fclose
	.quad	memfile_unlink
	.quad	memfile_fwrite_chars
	.quad	memfile_fread_chars
	.quad	memfile_set_memory_warning
	.quad	memfile_ferror_code
	.quad	memfile_ftell
	.quad	memfile_rewind
	.quad	memfile_fseek
	.size	clist_io_procs_memory, 80

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%p"
	.size	.L.str, 3

	.type	st_MEMFILE,@object      # @st_MEMFILE
	.section	.rodata,"a",@progbits
	.align	8
st_MEMFILE:
	.long	232                     # 0xe8
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	MEMFILE_reloc_ptrs
	.size	st_MEMFILE, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"memfile_fopen_instance(MEMFILE)"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"memfile_open_scratch(%s): gs_alloc_struct failed\n"
	.size	.L.str.2, 50

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"memfile_fopen"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"memfile_open_scratch(decompress_state)"
	.size	.L.str.4, 39

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"memfile_open_scratch(MEMFILE)"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"memfile_open_scratch(compress_state)"
	.size	.L.str.6, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"MEMFILE"
	.size	.L.str.7, 8

	.type	MEMFILE_reloc_ptrs,@object # @MEMFILE_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
MEMFILE_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	MEMFILE_enum_ptrs
	.size	MEMFILE_reloc_ptrs, 24

	.type	MEMFILE_enum_ptrs,@object # @MEMFILE_enum_ptrs
	.align	2
MEMFILE_enum_ptrs:
	.short	0                       # 0x0
	.short	216                     # 0xd8
	.short	0                       # 0x0
	.short	224                     # 0xe0
	.size	MEMFILE_enum_ptrs, 8

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"memfile raw buffer"
	.size	.L.str.8, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Decompression required more than one full block!\n"
	.size	.L.str.10, 50

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"memfile pphys"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"memfile_init_empty: MALLOC for 'pphys' failed\n"
	.size	.L.str.12, 47

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"memfile_init_empty"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"memfile_init_empty: MALLOC for log_curr_blk failed\n"
	.size	.L.str.14, 52

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Could not find %p on memfile openlist\n"
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"memfile_free_mem(log_blk)"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"memfile_free_mem(raw)"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"memfile_close_and_unlink(MEMFILE)"
	.size	.L.str.18, 34

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Attempt to delete a memfile still open for read: %p\n"
	.size	.L.str.19, 53

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"memfile_set_block_size"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"memfile_close_and_unlink(decompress_state)"
	.size	.L.str.21, 43

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"memfile_close_and_unlink(compress_state)"
	.size	.L.str.22, 41

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"memfile_free_mem(pphys)"
	.size	.L.str.23, 24

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"memfile_free_mem(phys_blk)"
	.size	.L.str.24, 27

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	" Write file truncate -- need to free physical blocks.\n"
	.size	.L.str.25, 55

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"memfile newphys"
	.size	.L.str.26, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"memfile newbp"
	.size	.L.str.28, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"memfile_next_blk(oldphys)"
	.size	.L.str.30, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Compression required more than one full block!\n"
	.size	.L.str.34, 48

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\nCompression didn't - raw=%d, compressed=%ld\n"
	.size	.L.str.35, 46

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"memfile_rewind(%p) with discard_data=true failed: "
	.size	.L.str.36, 51


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
