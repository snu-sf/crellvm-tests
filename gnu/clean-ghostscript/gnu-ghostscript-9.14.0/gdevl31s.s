	.text
	.file	"gdevl31s.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1133903872              # float 300
	.text
	.align	16, 0x90
	.type	lj3100sw_print_page_copies,@function
lj3100sw_print_page_copies:             # @lj3100sw_print_page_copies
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
	subq	$4312, %rsp             # imm = 0x10D8
.Ltmp6:
	.cfi_def_cfa_offset 4368
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
	movq	%rsi, %r13
	movq	%rdi, %rbx
	leaq	208(%rsp), %r12
	movq	%r12, 200(%rsp)
	movl	$media, %esi
	movl	$2, %edx
	callq	select_medium
	movl	%eax, %r14d
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 180(%rsp)        # 4-byte Spill
	ucomiss	.LCPI0_0(%rip), %xmm0
	seta	%al
	movzbl	%al, %r15d
	movl	832(%rbx), %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	836(%rbx), %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movq	24(%rbx), %rbp
	movq	200(%rbp), %rdi
	movl	$1, %edx
	movl	$.L.str.12, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB0_66
# BB#1:                                 # %if.end
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movslq	%r14d, %rax
	shlq	$2, %rax
	leaq	(%r15,%r15,4), %rcx
	movl	height(%rax,%rcx,8), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	width(,%r15,4), %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movq	%r15, 128(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	callq	gdev_prn_file_is_new
	testl	%eax, %eax
	je	.LBB0_14
# BB#2:                                 # %if.then.15
	movl	%r14d, 176(%rsp)        # 4-byte Spill
	movl	$1, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	movq	%r13, %r15
	callq	fputc
	leaq	4304(%rsp), %r13
	movl	$12, %ebp
	movq	200(%rsp), %rcx
	.align	16, 0x90
.LBB0_3:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r13, %rcx
	movq	%rcx, %rdi
	jb	.LBB0_6
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rdi
	subq	%r12, %rcx
	testl	%ecx, %ecx
	je	.LBB0_6
# BB#5:                                 # %if.then.i.246
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movq	%r15, %rsi
	movq	%rcx, %r14
	callq	fputc
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	fputc
	movzbl	%r14b, %edi
	movq	%r15, %rsi
	callq	fputc
	movq	%r14, %rax
	movzbl	%ah, %edi  # NOREX
	movq	%r15, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	fputc
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	fwrite
	movq	%r12, 200(%rsp)
	movq	%r12, %rdi
.LBB0_6:                                # %if.end.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	%ebp, %rbp
	movq	%r13, %rax
	subq	%rdi, %rax
	cmpq	%rax, %rbp
	movl	%ebp, %ebx
	cmovgel	%eax, %ebx
	cmovleq	%rbp, %rax
	movslq	%eax, %r14
	movl	$27, %esi
	movq	%r14, %rdx
	callq	memset
	movq	%r14, %rcx
	addq	200(%rsp), %rcx
	movq	%rcx, 200(%rsp)
	subl	%ebx, %ebp
	jne	.LBB0_3
# BB#7:                                 # %lj3100sw_output_repeated_data_bytes.exit
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	gs_sprintf
	movslq	%eax, %r14
	addq	200(%rsp), %r14
	movq	%r14, 200(%rsp)
	movl	$5520, %ebp             # imm = 0x1590
	leaq	208(%rsp), %r12
	.align	16, 0x90
.LBB0_8:                                # %while.body.i.102
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r13, %r14
	movq	%r14, %rdi
	jb	.LBB0_11
# BB#9:                                 # %if.then.i.104
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	%r14, %rdi
	subq	%r12, %r14
	testl	%r14d, %r14d
	je	.LBB0_11
# BB#10:                                # %if.then.i.256
                                        #   in Loop: Header=BB0_8 Depth=1
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	fputc
	movzbl	%r14b, %edi
	movq	%r15, %rsi
	callq	fputc
	movq	%r14, %rax
	movzbl	%ah, %edi  # NOREX
	movq	%r15, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	fputc
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	fwrite
	movq	%r12, 200(%rsp)
	movq	%r12, %rdi
.LBB0_11:                               # %if.end.i.117
                                        #   in Loop: Header=BB0_8 Depth=1
	movslq	%ebp, %rbp
	movq	%r13, %rax
	subq	%rdi, %rax
	cmpq	%rax, %rbp
	movl	%ebp, %ebx
	cmovgel	%eax, %ebx
	cmovleq	%rbp, %rax
	movslq	%eax, %r14
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	memset
	addq	200(%rsp), %r14
	movq	%r14, 200(%rsp)
	subl	%ebx, %ebp
	jne	.LBB0_8
# BB#12:                                # %lj3100sw_output_repeated_data_bytes.exit118
	movss	180(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	seta	%al
	movzbl	%al, %eax
	leal	2(,%rax,4), %eax
	movl	176(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 48(%rsp)
	movl	124(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movl	%eax, (%rsp)
	movl	$0, 64(%rsp)
	movq	$.L.str.21, 56(%rsp)
	movq	$.L.str.20, 40(%rsp)
	movl	$0, 32(%rsp)
	movq	$.L.str.19, 24(%rsp)
	movq	$.L.str.18, 8(%rsp)
	movl	$.L.str.14, %esi
	movl	$.L.str.15, %edx
	movl	$-1, %r8d
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	movl	$.L.str.16, %ecx
	movq	%r14, %rdi
	callq	gs_sprintf
	movslq	%eax, %rbx
	addq	200(%rsp), %rbx
	movq	%rbx, 200(%rsp)
	leaq	208(%rsp), %rbp
	subq	%rbp, %rbx
	testl	%ebx, %ebx
	movq	%r15, %r13
	je	.LBB0_14
# BB#13:                                # %if.then.i.124
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%rbp, 200(%rsp)
.LBB0_14:                               # %if.end.25
	movq	104(%rsp), %r14         # 8-byte Reload
	movl	944(%r14), %ebx
	movl	$3, %r12d
	movl	$3, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movq	200(%rsp), %rdi
	movl	$.L.str.22, %esi
	movl	$.L.str.23, %edx
	movl	$1, %ecx
	movl	$.L.str.24, %r8d
	xorl	%eax, %eax
	callq	gs_sprintf
	movq	200(%rsp), %rcx
	cltq
	leaq	1(%rcx,%rax), %rdx
	movq	%rdx, 200(%rsp)
	movb	$0, (%rcx,%rax)
	leaq	208(%rsp), %rsi
	leaq	200(%rsp), %rdx
	movq	%r13, %rdi
	callq	lj3100sw_output_newline
	leaq	4304(%rsp), %r8
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	jle	.LBB0_46
# BB#15:                                # %for.body.lr.ph
	movq	%r13, 144(%rsp)         # 8-byte Spill
	movq	%r8, %r15
	movl	124(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, %eax
	movq	184(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	leal	(%rcx,%rdx), %eax
	movl	%eax, 140(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB0_16:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #         Child Loop BB0_29 Depth 4
	cmpl	112(%rsp), %ebp         # 4-byte Folded Reload
	jge	.LBB0_43
# BB#17:                                # %for.body.39.lr.ph
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%ebp, 120(%rsp)         # 4-byte Spill
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	192(%rsp), %rcx
	callq	gdev_prn_get_bits
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_18:                               # %for.body.39
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #         Child Loop BB0_29 Depth 4
	movl	%edi, %eax
	movq	160(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movl	$0, %edx
	jl	.LBB0_21
# BB#19:                                # %for.body.39
                                        #   in Loop: Header=BB0_18 Depth=2
	cmpl	140(%rsp), %edi         # 4-byte Folded Reload
	movl	$0, %edx
	jge	.LBB0_21
# BB#20:                                # %if.then.46
                                        #   in Loop: Header=BB0_18 Depth=2
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	(%rcx,%rax), %ecx
	movl	%esi, %ebp
	movl	%ecx, %esi
	andl	$248, %esi
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movq	192(%rsp), %rdx
	movzbl	(%rdx,%rcx), %edx
	subl	%esi, %eax
	movl	%ebp, %esi
	movl	$7, %ecx
	subl	%eax, %ecx
	shrl	%cl, %edx
	andl	$1, %edx
.LBB0_21:                               # %if.end.54
                                        #   in Loop: Header=BB0_18 Depth=2
	testl	%esi, %esi
	sete	%al
	cmpl	%r13d, %edi
	movzbl	%al, %eax
	cmovnel	%edx, %eax
	movl	%eax, 176(%rsp)         # 4-byte Spill
	cmpl	%esi, %eax
	jne	.LBB0_23
# BB#22:                                # %if.then.62
                                        #   in Loop: Header=BB0_18 Depth=2
	incl	%r14d
	jmp	.LBB0_37
	.align	16, 0x90
.LBB0_23:                               # %if.else
                                        #   in Loop: Header=BB0_18 Depth=2
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	testl	%esi, %esi
	movq	%r15, %rbp
	jne	.LBB0_25
# BB#24:                                # %if.else
                                        #   in Loop: Header=BB0_18 Depth=2
	cmpl	%r13d, %r14d
	jne	.LBB0_25
# BB#67:                                # %if.then.68
                                        #   in Loop: Header=BB0_18 Depth=2
	movq	%rbp, %r15
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	208(%rsp), %rsi
	leaq	200(%rsp), %rdx
	movq	128(%rsp), %rcx         # 8-byte Reload
	callq	lj3100sw_output_empty_line
	xorl	%esi, %esi
	movl	%r13d, %r14d
	jmp	.LBB0_36
	.align	16, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_18 Depth=2
	movq	144(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB0_26:                               # %while.body
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_29 Depth 4
	movl	%esi, 184(%rsp)         # 4-byte Spill
	movl	%r12d, %eax
	cmpl	$65, %r14d
	movl	$64, %ecx
	cmovll	%r14d, %ecx
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	movslq	%ecx, %rdx
	movslq	%esi, %rcx
	imulq	$520, %rcx, %rsi        # imm = 0x208
	movl	code(%rsi,%rdx,8), %r12d
	movb	%bl, %cl
	shll	%cl, %r12d
	orl	%eax, %r12d
	movl	code+4(%rsi,%rdx,8), %eax
	leal	(%rax,%rbx), %r15d
	cmpl	$8, %r15d
	jl	.LBB0_27
# BB#28:                                # %while.body.89.lr.ph
                                        #   in Loop: Header=BB0_26 Depth=3
	addl	%ebx, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_29:                               # %while.body.89
                                        #   Parent Loop BB0_16 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_26 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	200(%rsp), %rax
	cmpq	%rbp, %rax
	jb	.LBB0_32
# BB#30:                                # %if.then.i.134
                                        #   in Loop: Header=BB0_29 Depth=4
	movq	%rax, %rbx
	leaq	208(%rsp), %rcx
	subq	%rcx, %rbx
	testl	%ebx, %ebx
	je	.LBB0_32
# BB#31:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_29 Depth=4
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	leaq	208(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%rbx, 200(%rsp)
	movq	%rbx, %rax
.LBB0_32:                               # %lj3100sw_output_data_byte.exit
                                        #   in Loop: Header=BB0_29 Depth=4
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rsp)
	movb	%r12b, (%rax)
	shrl	$8, %r12d
	addl	$-8, %r15d
	cmpl	$7, %r15d
	jg	.LBB0_29
# BB#33:                                # %while.cond.86.while.end_crit_edge
                                        #   in Loop: Header=BB0_26 Depth=3
	movq	168(%rsp), %rax         # 8-byte Reload
	andl	$7, %eax
	movl	%eax, %ebx
	jmp	.LBB0_34
	.align	16, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_26 Depth=3
	movl	%r15d, %ebx
.LBB0_34:                               # %while.end
                                        #   in Loop: Header=BB0_26 Depth=3
	movl	184(%rsp), %esi         # 4-byte Reload
	movl	180(%rsp), %eax         # 4-byte Reload
	addl	$-64, %r14d
	cmpl	$64, %eax
	movl	176(%rsp), %ecx         # 4-byte Reload
	cmovnel	%ecx, %esi
	movl	$1, %eax
	cmovnel	%eax, %r14d
	cmpl	%esi, %ecx
	jne	.LBB0_26
# BB#35:                                #   in Loop: Header=BB0_18 Depth=2
	movq	%rbp, %r15
	movl	176(%rsp), %esi         # 4-byte Reload
	movq	%r13, 144(%rsp)         # 8-byte Spill
	movl	124(%rsp), %r13d        # 4-byte Reload
.LBB0_36:                               # %if.end.102
                                        #   in Loop: Header=BB0_18 Depth=2
	movq	152(%rsp), %rdi         # 8-byte Reload
.LBB0_37:                               # %if.end.102
                                        #   in Loop: Header=BB0_18 Depth=2
	cmpl	%r13d, %edi
	leal	1(%rdi), %eax
	movl	%eax, %edi
	jl	.LBB0_18
# BB#38:                                # %for.end
                                        #   in Loop: Header=BB0_16 Depth=1
	testl	%ebx, %ebx
	movq	104(%rsp), %r14         # 8-byte Reload
	je	.LBB0_44
# BB#39:                                # %if.then.105
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	200(%rsp), %rax
	cmpq	%r15, %rax
	jb	.LBB0_42
# BB#40:                                # %if.then.i.143
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	%rax, %rdx
	leaq	208(%rsp), %rcx
	subq	%rcx, %rdx
	testl	%edx, %edx
	je	.LBB0_42
# BB#41:                                # %if.then.i.i.147
                                        #   in Loop: Header=BB0_16 Depth=1
	xorl	%edi, %edi
	movq	144(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%rdx, %rbp
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
	movq	%rbp, %rax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movslq	%ebp, %rdx
	movl	$1, %esi
	leaq	208(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	movq	%r14, 200(%rsp)
	movq	%r14, %rax
	movq	104(%rsp), %r14         # 8-byte Reload
.LBB0_42:                               # %lj3100sw_output_data_byte.exit151
                                        #   in Loop: Header=BB0_16 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rsp)
	movb	%r12b, (%rax)
	jmp	.LBB0_44
	.align	16, 0x90
.LBB0_43:                               # %if.else.109
                                        #   in Loop: Header=BB0_16 Depth=1
	movl	%ebp, 120(%rsp)         # 4-byte Spill
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	208(%rsp), %rsi
	leaq	200(%rsp), %rdx
	movq	128(%rsp), %rcx         # 8-byte Reload
	callq	lj3100sw_output_empty_line
.LBB0_44:                               # %if.end.111
                                        #   in Loop: Header=BB0_16 Depth=1
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	208(%rsp), %rsi
	leaq	200(%rsp), %rdx
	callq	lj3100sw_output_newline
	movl	120(%rsp), %ebp         # 4-byte Reload
	incl	%ebp
	cmpl	116(%rsp), %ebp         # 4-byte Folded Reload
	jne	.LBB0_16
# BB#45:
	movq	%r15, %r8
	movq	144(%rsp), %r13         # 8-byte Reload
	movl	$3, %r12d
	.align	16, 0x90
.LBB0_46:                               # %for.body.119
                                        # =>This Inner Loop Header: Depth=1
	movq	200(%rsp), %rax
	cmpq	%r8, %rax
	jb	.LBB0_49
# BB#47:                                # %if.then.i.158
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	%rax, %rbx
	leaq	208(%rsp), %rcx
	subq	%rcx, %rbx
	testl	%ebx, %ebx
	je	.LBB0_49
# BB#48:                                # %if.then.i.i.162
                                        #   in Loop: Header=BB0_46 Depth=1
	xorl	%edi, %edi
	movq	%r13, %rsi
	movq	%r8, %r14
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	leaq	208(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%r14, %r8
	movq	%rbx, 200(%rsp)
	movq	%rbx, %rax
.LBB0_49:                               # %lj3100sw_output_data_byte.exit165
                                        #   in Loop: Header=BB0_46 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rsp)
	movb	$0, (%rax)
	movq	200(%rsp), %rax
	cmpq	%r8, %rax
	jb	.LBB0_52
# BB#50:                                # %if.then.i.172
                                        #   in Loop: Header=BB0_46 Depth=1
	leaq	208(%rsp), %r15
	movq	%rax, %rbx
	subq	%r15, %rbx
	testl	%ebx, %ebx
	je	.LBB0_52
# BB#51:                                # %if.then.i.i.176
                                        #   in Loop: Header=BB0_46 Depth=1
	xorl	%edi, %edi
	movq	%r13, %rsi
	movq	%r8, %r14
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%r14, %r8
	movq	%r15, 200(%rsp)
	movq	%r15, %rax
.LBB0_52:                               # %lj3100sw_output_data_byte.exit179
                                        #   in Loop: Header=BB0_46 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rsp)
	movb	$8, (%rax)
	movq	200(%rsp), %rax
	cmpq	%r8, %rax
	jb	.LBB0_55
# BB#53:                                # %if.then.i.186
                                        #   in Loop: Header=BB0_46 Depth=1
	leaq	208(%rsp), %r15
	movq	%rax, %rbx
	subq	%r15, %rbx
	testl	%ebx, %ebx
	je	.LBB0_55
# BB#54:                                # %if.then.i.i.190
                                        #   in Loop: Header=BB0_46 Depth=1
	xorl	%edi, %edi
	movq	%r13, %rsi
	movq	%r8, %r14
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%r14, %r8
	movq	%r15, 200(%rsp)
	movq	%r15, %rax
.LBB0_55:                               # %lj3100sw_output_data_byte.exit193
                                        #   in Loop: Header=BB0_46 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 200(%rsp)
	movb	$-128, (%rax)
	decl	%r12d
	jne	.LBB0_46
# BB#56:                                # %for.end.125
	movq	200(%rsp), %rax
	movl	$520, %ebp              # imm = 0x208
	leaq	208(%rsp), %r14
	.align	16, 0x90
.LBB0_57:                               # %while.body.i.200
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r8, %rax
	movq	%rax, %rdi
	jb	.LBB0_60
# BB#58:                                # %if.then.i.202
                                        #   in Loop: Header=BB0_57 Depth=1
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	movq	%rax, %rdi
	je	.LBB0_60
# BB#59:                                # %if.then.i.320
                                        #   in Loop: Header=BB0_57 Depth=1
	xorl	%edi, %edi
	movq	%r13, %rsi
	movq	%r8, %r15
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%r15, %r8
	movq	%r14, 200(%rsp)
	movq	%r14, %rdi
.LBB0_60:                               # %if.end.i.215
                                        #   in Loop: Header=BB0_57 Depth=1
	movslq	%ebp, %rbp
	movq	%r8, %rax
	subq	%rdi, %rax
	cmpq	%rax, %rbp
	movl	%ebp, %r12d
	cmovgel	%eax, %r12d
	cmovleq	%rbp, %rax
	movslq	%eax, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%r8, %r15
	callq	memset
	movq	%rbx, %rax
	movq	%r15, %r8
	addq	200(%rsp), %rax
	movq	%rax, 200(%rsp)
	subl	%r12d, %ebp
	jne	.LBB0_57
# BB#61:                                # %lj3100sw_output_repeated_data_bytes.exit216
	leaq	208(%rsp), %rbp
	subq	%rbp, %rax
	testl	%eax, %eax
	je	.LBB0_63
# BB#62:                                # %if.then.i.224
	xorl	%edi, %edi
	movq	%r13, %rsi
	movq	%rax, %rbx
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%rbp, 200(%rsp)
.LBB0_63:                               # %lj3100sw_flush_buffer.exit226
	movl	$4, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movq	104(%rsp), %r15         # 8-byte Reload
	cmpl	$0, 944(%r15)
	jle	.LBB0_65
	.align	16, 0x90
.LBB0_64:                               # %for.body.132
                                        # =>This Inner Loop Header: Depth=1
	movl	$54, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	incl	%ebx
	movl	944(%r15), %eax
	shll	$2, %eax
	cmpl	%eax, %ebx
	jl	.LBB0_64
.LBB0_65:                               # %for.end.135
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	200(%rax), %rdi
	movl	$.L.str.12, %edx
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_66:                               # %cleanup
	addq	$4312, %rsp             # imm = 0x10D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lj3100sw_print_page_copies, .Lfunc_end0-lj3100sw_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	lj3100sw_close,@function
lj3100sw_close:                         # @lj3100sw_close
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
	movq	%rdi, %r14
	movq	17176(%r14), %rbx
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$4, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$.L.str.11, %edi
	movq	%rbx, %rsi
	callq	fputs
	cmpl	$0, 944(%r14)
	jle	.LBB1_2
	.align	16, 0x90
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$54, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	incl	%ebp
	movl	944(%r14), %eax
	shll	$2, %eax
	cmpl	%eax, %ebp
	jl	.LBB1_1
.LBB1_2:                                # %for.end
	movl	$2, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	fputc
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end1:
	.size	lj3100sw_close, .Lfunc_end1-lj3100sw_close
	.cfi_endproc

	.align	16, 0x90
	.type	lj3100sw_output_newline,@function
lj3100sw_output_newline:                # @lj3100sw_output_newline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 48
.Ltmp24:
	.cfi_offset %rbx, -48
.Ltmp25:
	.cfi_offset %r12, -40
.Ltmp26:
	.cfi_offset %r13, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	(%r15), %rax
	leaq	4096(%r14), %r12
	cmpq	%r12, %rax
	jb	.LBB2_3
# BB#1:                                 # %if.then.i
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB2_3
# BB#2:                                 # %if.then.i.i
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB2_3:                                # %lj3100sw_output_data_byte.exit
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$0, (%rax)
	movq	(%r15), %rax
	cmpq	%r12, %rax
	jb	.LBB2_6
# BB#4:                                 # %if.then.i.13
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB2_6
# BB#5:                                 # %if.then.i.i.17
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB2_6:                                # %lj3100sw_output_data_byte.exit19
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$0, (%rax)
	movq	(%r15), %rax
	cmpq	%r12, %rax
	jb	.LBB2_9
# BB#7:                                 # %if.then.i.26
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB2_9
# BB#8:                                 # %if.then.i.i.30
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r13, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r13, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB2_9:                                # %lj3100sw_output_data_byte.exit32
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$-128, (%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	lj3100sw_output_newline, .Lfunc_end2-lj3100sw_output_newline
	.cfi_endproc

	.align	16, 0x90
	.type	lj3100sw_output_empty_line,@function
lj3100sw_output_empty_line:             # @lj3100sw_output_empty_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 64
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	(%r15), %rax
	leaq	4096(%r14), %r12
	cmpq	%r12, %rax
	jb	.LBB3_3
# BB#1:                                 # %if.then.i
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB3_3
# BB#2:                                 # %if.then.i.i
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB3_3:                                # %lj3100sw_output_data_byte.exit
	leaq	1(%rax), %rcx
	testl	%r13d, %r13d
	movq	%rcx, (%r15)
	movb	$-128, (%rax)
	movq	(%r15), %rax
	je	.LBB3_14
# BB#4:                                 # %if.then
	cmpq	%r12, %rax
	jb	.LBB3_7
# BB#5:                                 # %if.then.i.19
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB3_7
# BB#6:                                 # %if.then.i.i.23
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB3_7:                                # %lj3100sw_output_data_byte.exit25
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$15, (%rax)
	movq	(%r15), %rax
	cmpq	%r12, %rax
	jb	.LBB3_10
# BB#8:                                 # %if.then.i.32
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB3_10
# BB#9:                                 # %if.then.i.i.36
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB3_10:                               # %lj3100sw_output_data_byte.exit38
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$120, (%rax)
	movq	(%r15), %rax
	cmpq	%r12, %rax
	jb	.LBB3_13
# BB#11:                                # %if.then.i.45
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB3_13
# BB#12:                                # %if.then.i.i.49
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB3_13:                               # %lj3100sw_output_data_byte.exit51
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$-84, (%rax)
	jmp	.LBB3_21
.LBB3_14:                               # %if.else
	cmpq	%r12, %rax
	jb	.LBB3_17
# BB#15:                                # %if.then.i.58
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB3_17
# BB#16:                                # %if.then.i.i.62
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB3_17:                               # %lj3100sw_output_data_byte.exit64
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$-121, (%rax)
	movq	(%r15), %rax
	cmpq	%r12, %rax
	jb	.LBB3_20
# BB#18:                                # %if.then.i.71
	movq	%rax, %rbx
	subq	%r14, %rbx
	testl	%ebx, %ebx
	je	.LBB3_20
# BB#19:                                # %if.then.i.i.75
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movq	%r14, (%r15)
	movq	%r14, %rax
.LBB3_20:                               # %lj3100sw_output_data_byte.exit77
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$13, (%rax)
.LBB3_21:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lj3100sw_output_empty_line, .Lfunc_end3-lj3100sw_output_empty_line
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"a4"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"letter"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"legal"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"com10"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"c5"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dl"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"b5"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"monarch"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"executive"
	.size	.L.str.8, 10

	.type	media,@object           # @media
	.data
	.globl	media
	.align	16
media:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	0
	.size	media, 80

	.type	height,@object          # @height
	.section	.rodata,"a",@progbits
	.globl	height
	.align	16
height:
	.long	3447                    # 0xd77
	.long	3240                    # 0xca8
	.long	4140                    # 0x102c
	.long	5587                    # 0x15d3
	.long	2644                    # 0xa54
	.long	5083                    # 0x13db
	.long	2975                    # 0xb9f
	.long	4387                    # 0x1123
	.long	3090                    # 0xc12
	.long	0                       # 0x0
	.long	6894                    # 0x1aee
	.long	6480                    # 0x1950
	.long	8280                    # 0x2058
	.long	11167                   # 0x2b9f
	.long	5288                    # 0x14a8
	.long	10159                   # 0x27af
	.long	5950                    # 0x173e
	.long	8767                    # 0x223f
	.long	6180                    # 0x1824
	.long	0                       # 0x0
	.size	height, 80

	.type	width,@object           # @width
	.globl	width
	.align	4
width:
	.long	2528                    # 0x9e0
	.long	5056                    # 0x13c0
	.size	width, 8

	.type	prn_lj3100sw_procs,@object # @prn_lj3100sw_procs
	.data
	.align	8
prn_lj3100sw_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	lj3100sw_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	prn_lj3100sw_procs, 584

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"lj3100sw"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"DeviceGray"
	.size	.L.str.10, 11

	.type	gs_lj3100sw_device,@object # @gs_lj3100sw_device
	.data
	.globl	gs_lj3100sw_device
	.align	8
gs_lj3100sw_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_lj3100sw_procs
	.quad	.L.str.9
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.10
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3263430656              # float -6.600000e+01
	.long	3264217088              # float -7.200000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1097229926              # float 1.440000e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	0
	.quad	lj3100sw_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.size	gs_lj3100sw_device, 18472

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"XX\r\n"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"lj3100sw_print_page"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\r\nBD"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s\r\n%s %d\r\n%s %d\r\n%s %d\r\n%s %d\r\n%s %d\r\n%s %d\r\n"
	.size	.L.str.14, 47

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"NJ"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"PQ"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"RE"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"SL"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"LM"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"PS"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"PC"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s %d\r\n%s\r\n"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"CM"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"PD"
	.size	.L.str.24, 3

	.type	code,@object            # @code
	.section	.rodata,"a",@progbits
	.align	16
code:
	.long	172                     # 0xac
	.long	8                       # 0x8
	.long	56                      # 0x38
	.long	6                       # 0x6
	.long	14                      # 0xe
	.long	4                       # 0x4
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	13                      # 0xd
	.long	4                       # 0x4
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	15                      # 0xf
	.long	4                       # 0x4
	.long	25                      # 0x19
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	28                      # 0x1c
	.long	5                       # 0x5
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	48                      # 0x30
	.long	6                       # 0x6
	.long	11                      # 0xb
	.long	6                       # 0x6
	.long	43                      # 0x2b
	.long	6                       # 0x6
	.long	21                      # 0x15
	.long	6                       # 0x6
	.long	53                      # 0x35
	.long	6                       # 0x6
	.long	114                     # 0x72
	.long	7                       # 0x7
	.long	24                      # 0x18
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	7                       # 0x7
	.long	116                     # 0x74
	.long	7                       # 0x7
	.long	96                      # 0x60
	.long	7                       # 0x7
	.long	16                      # 0x10
	.long	7                       # 0x7
	.long	10                      # 0xa
	.long	7                       # 0x7
	.long	106                     # 0x6a
	.long	7                       # 0x7
	.long	100                     # 0x64
	.long	7                       # 0x7
	.long	18                      # 0x12
	.long	7                       # 0x7
	.long	12                      # 0xc
	.long	7                       # 0x7
	.long	64                      # 0x40
	.long	8                       # 0x8
	.long	192                     # 0xc0
	.long	8                       # 0x8
	.long	88                      # 0x58
	.long	8                       # 0x8
	.long	216                     # 0xd8
	.long	8                       # 0x8
	.long	72                      # 0x48
	.long	8                       # 0x8
	.long	200                     # 0xc8
	.long	8                       # 0x8
	.long	40                      # 0x28
	.long	8                       # 0x8
	.long	168                     # 0xa8
	.long	8                       # 0x8
	.long	104                     # 0x68
	.long	8                       # 0x8
	.long	232                     # 0xe8
	.long	8                       # 0x8
	.long	20                      # 0x14
	.long	8                       # 0x8
	.long	148                     # 0x94
	.long	8                       # 0x8
	.long	84                      # 0x54
	.long	8                       # 0x8
	.long	212                     # 0xd4
	.long	8                       # 0x8
	.long	52                      # 0x34
	.long	8                       # 0x8
	.long	180                     # 0xb4
	.long	8                       # 0x8
	.long	32                      # 0x20
	.long	8                       # 0x8
	.long	160                     # 0xa0
	.long	8                       # 0x8
	.long	80                      # 0x50
	.long	8                       # 0x8
	.long	208                     # 0xd0
	.long	8                       # 0x8
	.long	74                      # 0x4a
	.long	8                       # 0x8
	.long	202                     # 0xca
	.long	8                       # 0x8
	.long	42                      # 0x2a
	.long	8                       # 0x8
	.long	170                     # 0xaa
	.long	8                       # 0x8
	.long	36                      # 0x24
	.long	8                       # 0x8
	.long	164                     # 0xa4
	.long	8                       # 0x8
	.long	26                      # 0x1a
	.long	8                       # 0x8
	.long	154                     # 0x9a
	.long	8                       # 0x8
	.long	90                      # 0x5a
	.long	8                       # 0x8
	.long	218                     # 0xda
	.long	8                       # 0x8
	.long	82                      # 0x52
	.long	8                       # 0x8
	.long	210                     # 0xd2
	.long	8                       # 0x8
	.long	76                      # 0x4c
	.long	8                       # 0x8
	.long	204                     # 0xcc
	.long	8                       # 0x8
	.long	44                      # 0x2c
	.long	8                       # 0x8
	.long	27                      # 0x1b
	.long	5                       # 0x5
	.long	944                     # 0x3b0
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	12                      # 0xc
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	24                      # 0x18
	.long	5                       # 0x5
	.long	40                      # 0x28
	.long	6                       # 0x6
	.long	8                       # 0x8
	.long	6                       # 0x6
	.long	16                      # 0x10
	.long	7                       # 0x7
	.long	80                      # 0x50
	.long	7                       # 0x7
	.long	112                     # 0x70
	.long	7                       # 0x7
	.long	32                      # 0x20
	.long	8                       # 0x8
	.long	224                     # 0xe0
	.long	8                       # 0x8
	.long	48                      # 0x30
	.long	9                       # 0x9
	.long	928                     # 0x3a0
	.long	10                      # 0xa
	.long	96                      # 0x60
	.long	10                      # 0xa
	.long	64                      # 0x40
	.long	10                      # 0xa
	.long	1840                    # 0x730
	.long	11                      # 0xb
	.long	176                     # 0xb0
	.long	11                      # 0xb
	.long	432                     # 0x1b0
	.long	11                      # 0xb
	.long	1888                    # 0x760
	.long	11                      # 0xb
	.long	160                     # 0xa0
	.long	11                      # 0xb
	.long	1856                    # 0x740
	.long	11                      # 0xb
	.long	192                     # 0xc0
	.long	11                      # 0xb
	.long	1328                    # 0x530
	.long	12                      # 0xc
	.long	3376                    # 0xd30
	.long	12                      # 0xc
	.long	816                     # 0x330
	.long	12                      # 0xc
	.long	2864                    # 0xb30
	.long	12                      # 0xc
	.long	352                     # 0x160
	.long	12                      # 0xc
	.long	2400                    # 0x960
	.long	12                      # 0xc
	.long	1376                    # 0x560
	.long	12                      # 0xc
	.long	3424                    # 0xd60
	.long	12                      # 0xc
	.long	1200                    # 0x4b0
	.long	12                      # 0xc
	.long	3248                    # 0xcb0
	.long	12                      # 0xc
	.long	688                     # 0x2b0
	.long	12                      # 0xc
	.long	2736                    # 0xab0
	.long	12                      # 0xc
	.long	1712                    # 0x6b0
	.long	12                      # 0xc
	.long	3760                    # 0xeb0
	.long	12                      # 0xc
	.long	864                     # 0x360
	.long	12                      # 0xc
	.long	2912                    # 0xb60
	.long	12                      # 0xc
	.long	1456                    # 0x5b0
	.long	12                      # 0xc
	.long	3504                    # 0xdb0
	.long	12                      # 0xc
	.long	672                     # 0x2a0
	.long	12                      # 0xc
	.long	2720                    # 0xaa0
	.long	12                      # 0xc
	.long	1696                    # 0x6a0
	.long	12                      # 0xc
	.long	3744                    # 0xea0
	.long	12                      # 0xc
	.long	608                     # 0x260
	.long	12                      # 0xc
	.long	2656                    # 0xa60
	.long	12                      # 0xc
	.long	1184                    # 0x4a0
	.long	12                      # 0xc
	.long	3232                    # 0xca0
	.long	12                      # 0xc
	.long	576                     # 0x240
	.long	12                      # 0xc
	.long	3776                    # 0xec0
	.long	12                      # 0xc
	.long	448                     # 0x1c0
	.long	12                      # 0xc
	.long	3648                    # 0xe40
	.long	12                      # 0xc
	.long	320                     # 0x140
	.long	12                      # 0xc
	.long	416                     # 0x1a0
	.long	12                      # 0xc
	.long	2464                    # 0x9a0
	.long	12                      # 0xc
	.long	3392                    # 0xd40
	.long	12                      # 0xc
	.long	832                     # 0x340
	.long	12                      # 0xc
	.long	1440                    # 0x5a0
	.long	12                      # 0xc
	.long	1632                    # 0x660
	.long	12                      # 0xc
	.long	3680                    # 0xe60
	.long	12                      # 0xc
	.long	960                     # 0x3c0
	.long	10                      # 0xa
	.size	code, 1040


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
