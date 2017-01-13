	.text
	.file	"sbcp.bc"
	.align	16, 0x90
	.type	s_BCPE_process,@function
s_BCPE_process:                         # @s_BCPE_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
.Ltmp2:
	.cfi_offset %rbx, -24
.Ltmp3:
	.cfi_offset %r14, -16
	movl	$4024827845, %r8d       # imm = 0xEFE5FFC5
	movq	(%rsi), %rax
	movq	8(%rsi), %r9
	movq	%r9, %r10
	subq	%rax, %r10
	movq	8(%rdx), %rdi
	movq	16(%rdx), %r11
	subq	%rdi, %r11
	cmpl	%r11d, %r10d
	movq	%r11, %rbx
	cmovbq	%r10, %rbx
	leaq	270139450(%r8), %rcx
	andq	%rbx, %rcx
	je	.LBB0_8
# BB#1:                                 # %while.body.lr.ph.i
	leaq	(%rcx,%rax), %rcx
	incq	%rax
	.align	16, 0x90
.LBB0_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ebx
	cmpq	$31, %rbx
	ja	.LBB0_6
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB0_2 Depth=1
	btq	%rbx, %r8
	jb	.LBB0_6
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rax, %r9
	je	.LBB0_7
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$1, 1(%rdi)
	incq	%rdi
	xorb	$64, %bl
	decl	%r11d
	leaq	-1(%rcx), %r14
	cmpl	%r10d, %r11d
	cmovbq	%r14, %rcx
.LBB0_6:                                # %cleanup.thread.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	%bl, 1(%rdi)
	incq	%rdi
	cmpq	%rcx, %rax
	leaq	1(%rax), %rax
	jb	.LBB0_2
.LBB0_7:                                # %if.then.i.s_xBCPE_process.exit.loopexit_crit_edge
	decq	%rax
.LBB0_8:                                # %s_xBCPE_process.exit
	movq	%rax, (%rsi)
	movq	%rdi, 8(%rdx)
	cmpq	%r9, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	s_BCPE_process, .Lfunc_end0-s_BCPE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_TBCPE_process,@function
s_TBCPE_process:                        # @s_TBCPE_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 24
.Ltmp6:
	.cfi_offset %rbx, -24
.Ltmp7:
	.cfi_offset %r14, -16
	movl	$3890610117, %r8d       # imm = 0xE7E5FFC5
	movq	(%rsi), %rax
	movq	8(%rsi), %r9
	movq	%r9, %r10
	subq	%rax, %r10
	movq	8(%rdx), %rdi
	movq	16(%rdx), %r11
	subq	%rdi, %r11
	cmpl	%r11d, %r10d
	movq	%r11, %rbx
	cmovbq	%r10, %rbx
	leaq	404357178(%r8), %rcx
	andq	%rbx, %rcx
	je	.LBB1_8
# BB#1:                                 # %while.body.lr.ph.i
	leaq	(%rcx,%rax), %rcx
	incq	%rax
	.align	16, 0x90
.LBB1_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ebx
	cmpq	$31, %rbx
	ja	.LBB1_6
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB1_2 Depth=1
	btq	%rbx, %r8
	jb	.LBB1_6
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rax, %r9
	je	.LBB1_7
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$1, 1(%rdi)
	incq	%rdi
	xorb	$64, %bl
	decl	%r11d
	leaq	-1(%rcx), %r14
	cmpl	%r10d, %r11d
	cmovbq	%r14, %rcx
.LBB1_6:                                # %cleanup.thread.i
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	%bl, 1(%rdi)
	incq	%rdi
	cmpq	%rcx, %rax
	leaq	1(%rax), %rax
	jb	.LBB1_2
.LBB1_7:                                # %if.then.i.s_xBCPE_process.exit.loopexit_crit_edge
	decq	%rax
.LBB1_8:                                # %s_xBCPE_process.exit
	movq	%rax, (%rsi)
	movq	%rdi, 8(%rdx)
	cmpq	%r9, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	s_TBCPE_process, .Lfunc_end1-s_TBCPE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_BCPD_init,@function
s_BCPD_init:                            # @s_BCPD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 128(%rdi)
	movl	$0, 136(%rdi)
	movl	$0, 132(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	s_BCPD_init, .Lfunc_end2-s_BCPD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_BCPD_process,@function
s_BCPD_process:                         # @s_BCPD_process
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	jmp	s_xBCPD_process         # TAILCALL
.Lfunc_end3:
	.size	s_BCPD_process, .Lfunc_end3-s_BCPD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_TBCPD_process,@function
s_TBCPD_process:                        # @s_TBCPD_process
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %ecx
	jmp	s_xBCPD_process         # TAILCALL
.Lfunc_end4:
	.size	s_TBCPD_process, .Lfunc_end4-s_TBCPD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_xBCPD_process,@function
s_xBCPD_process:                        # @s_xBCPD_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 80
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	(%rsi), %r12
	movq	8(%rsi), %r10
	movq	8(%rdx), %r14
	movq	16(%rdx), %r13
	movl	128(%r15), %r9d
	movl	136(%r15), %ebp
	testl	%ecx, %ecx
	sete	%al
	movzbl	%al, %eax
	leal	3(%rax,%rax), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
                                        # implicit-def: EAX
	jmp	.LBB5_1
.LBB5_30:                               # %if.end.60
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	%bl, 1(%r14)
	incq	%r14
	xorl	%ebp, %ebp
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB5_1:                                # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
	movq	%r12, %r8
	testl	%ebp, %ebp
	je	.LBB5_5
	.align	16, 0x90
.LBB5_2:                                # %if.then
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %r13
	je	.LBB5_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB5_2 Depth=2
	movq	144(%r15), %rbx
	leaq	1(%rbx), %rdi
	movq	%rdi, 144(%r15)
	movb	1(%rbx), %bl
	movb	%bl, 1(%r14)
	incq	%r14
	decl	%ebp
	jne	.LBB5_2
.LBB5_5:                                # %if.end.8
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	%r10, %r8
	je	.LBB5_6
# BB#7:                                 # %if.end.11
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	1(%r8), %r12
	movzbl	1(%r8), %ebx
	cmpl	$31, %ebx
	ja	.LBB5_11
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%ebp, %ebp
	cmpl	$18, %ebx
	jg	.LBB5_14
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB5_1 Depth=1
	leal	-1(%rbx), %edi
	cmpl	$4, %edi
	jbe	.LBB5_13
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$17, %ebx
	jne	.LBB5_11
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_14:                               # %if.then.15
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$19, %ebx
	je	.LBB5_1
# BB#15:                                # %if.then.15
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$28, %ebx
	je	.LBB5_1
# BB#16:                                # %if.then.15
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$20, %ebx
	jne	.LBB5_11
# BB#17:                                # %sw.bb.32
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%r15, %rdi
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movq	%r10, %rbp
	callq	*120(%r15)
	jmp	.LBB5_19
.LBB5_13:                               # %if.then.15
                                        #   in Loop: Header=BB5_1 Depth=1
	jmpq	*.LJTI5_0(,%rdi,8)
.LBB5_31:                               # %sw.bb
                                        #   in Loop: Header=BB5_1 Depth=1
	testl	%r9d, %r9d
	movl	$-2, %ecx
	cmovnel	%ecx, %eax
	movl	$1, %ecx
	cmovel	%ecx, %r9d
	setne	%cl
	movzbl	%cl, %ecx
	jmp	.LBB5_32
.LBB5_11:                               # %if.end.39
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	%r13, %r14
	je	.LBB5_12
# BB#21:                                # %if.end.44
                                        #   in Loop: Header=BB5_1 Depth=1
	testl	%r9d, %r9d
	je	.LBB5_30
# BB#22:                                # %if.then.46
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%r9d, %r9d
	movl	%ebx, %ecx
	addl	$-65, %ecx
	cmpl	$27, %ecx
	ja	.LBB5_23
# BB#24:                                # %if.then.46
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$135069725, %edi        # imm = 0x80D001D
	btl	%ecx, %edi
	jae	.LBB5_25
.LBB5_29:                               # %sw.bb.52
                                        #   in Loop: Header=BB5_1 Depth=1
	xorb	$64, %bl
	jmp	.LBB5_30
.LBB5_25:                               # %if.then.46
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$26, %ecx
	jne	.LBB5_26
# BB#28:                                # %sw.bb.48
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB5_29
	jmp	.LBB5_23
.LBB5_18:                               # %sw.bb.20
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%r15, %rdi
	movq	%rsi, %rbx
	movl	%r9d, 4(%rsp)           # 4-byte Spill
	movq	%r10, %rbp
	callq	*112(%r15)
.LBB5_19:                               # %cleanup
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%rbp, %r10
	movl	4(%rsp), %r9d           # 4-byte Reload
	movq	%rbx, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%eax, %ecx
	shrl	$31, %ecx
.LBB5_32:                               # %cleanup
                                        #   in Loop: Header=BB5_1 Depth=1
	leal	3(%rcx,%rcx), %edi
.LBB5_33:                               # %cleanup
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%ebp, %ebp
	cmpl	$3, %edi
	je	.LBB5_1
	jmp	.LBB5_34
.LBB5_26:                               # %if.then.46
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$12, %ecx
	jne	.LBB5_23
# BB#27:                                # %sw.bb.55
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	movl	$-2, %ecx
	cmovel	%ecx, %eax
	xorl	%r9d, %r9d
	movl	8(%rsp), %edi           # 4-byte Reload
	jmp	.LBB5_33
.LBB5_3:                                # %if.then.5
	cmpq	%r10, %r8
	sbbl	%eax, %eax
	andl	$1, %eax
	movq	%r13, %r14
	movq	%r8, %r12
.LBB5_35:                               # %out
	movl	%ebp, 136(%r15)
	movl	%r9d, 128(%r15)
	movq	%r12, (%rsi)
	movq	%r14, 8(%rdx)
.LBB5_36:                               # %cleanup.66
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_6:
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movq	%r10, %r12
	jmp	.LBB5_35
.LBB5_23:
	movl	$-2, %eax
	xorl	%ebp, %ebp
	jmp	.LBB5_35
.LBB5_20:                               # %sw.bb.25
	testl	%r9d, %r9d
	sete	%al
	movzbl	%al, %eax
	orl	$-2, %eax
	xorl	%ebp, %ebp
	jmp	.LBB5_35
.LBB5_12:
	movq	%r13, %r14
	movl	$1, %eax
	xorl	%ebp, %ebp
	movq	%r8, %r12
	jmp	.LBB5_35
.LBB5_34:                               # %cleanup
	cmpl	$5, %edi
	jne	.LBB5_36
	jmp	.LBB5_35
.Lfunc_end5:
	.size	s_xBCPD_process, .Lfunc_end5-s_xBCPD_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_31
	.quad	.LBB5_11
	.quad	.LBB5_18
	.quad	.LBB5_20
	.quad	.LBB5_1

	.type	s_BCPE_template,@object # @s_BCPE_template
	.globl	s_BCPE_template
	.align	8
s_BCPE_template:
	.quad	st_stream_state
	.quad	0
	.quad	s_BCPE_process
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	0
	.quad	0
	.quad	0
	.size	s_BCPE_template, 56

	.type	s_TBCPE_template,@object # @s_TBCPE_template
	.globl	s_TBCPE_template
	.align	8
s_TBCPE_template:
	.quad	st_stream_state
	.quad	0
	.quad	s_TBCPE_process
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	0
	.quad	0
	.quad	0
	.size	s_TBCPE_template, 56

	.type	st_BCPD_state,@object   # @st_BCPD_state
	.align	8
st_BCPD_state:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_BCPD_state, 64

	.type	s_BCPD_template,@object # @s_BCPD_template
	.globl	s_BCPD_template
	.align	8
s_BCPD_template:
	.quad	st_BCPD_state
	.quad	s_BCPD_init
	.quad	s_BCPD_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	s_BCPD_init
	.size	s_BCPD_template, 56

	.type	s_TBCPD_template,@object # @s_TBCPD_template
	.globl	s_TBCPD_template
	.align	8
s_TBCPD_template:
	.quad	st_BCPD_state
	.quad	s_BCPD_init
	.quad	s_TBCPD_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	0
	.quad	s_BCPD_init
	.size	s_TBCPD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(T)BCPDecode state"
	.size	.L.str, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
