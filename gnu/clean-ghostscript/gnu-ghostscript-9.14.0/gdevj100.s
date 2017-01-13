	.text
	.file	"gdevj100.bc"
	.align	16, 0x90
	.type	jj100_print_page,@function
jj100_print_page:                       # @jj100_print_page
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
	subq	$184, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 240
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
	movq	%rdi, %r15
	movq	%r15, 48(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebp
	movl	836(%r15), %r14d
	movl	%r14d, 44(%rsp)         # 4-byte Spill
	movl	%ebp, %r12d
	shll	$4, %r12d
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$48, %esi
	movl	$.L.str.2, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$48, %esi
	movl	$.L.str.3, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, %rcx
	testq	%rbx, %rbx
	movl	$-1, %eax
	je	.LBB0_47
# BB#1:                                 # %entry
	testq	%rcx, %rcx
	je	.LBB0_47
# BB#2:                                 # %if.end
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	17176(%r15), %rsi
	movl	$.L.str.4, %edi
	callq	fputs
	movq	17176(%r15), %rsi
	movl	$.L.str.5, %edi
	callq	fputs
	movq	17176(%r15), %rsi
	movl	$.L.str.6, %edi
	callq	fputs
	testl	%r14d, %r14d
	movq	%rbx, %r8
	jle	.LBB0_46
# BB#3:                                 # %while.body.lr.ph
	leal	(%r12,%r12,2), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	leaq	1(%r8), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	leal	(,%rbp,8), %eax
	movslq	%ebp, %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	$1, %edx
	movq	80(%rsp), %rcx          # 8-byte Reload
	subq	%rcx, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	cltq
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	(%r12,%r12,2), %eax
	cltq
	leaq	-1(%rax,%rcx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                # %if.end.26
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%r14d, %ebx
	subl	%r13d, %ebx
	cmpl	$48, %ebx
	movl	$48, %eax
	cmovgl	%eax, %ebx
	movl	%ebx, %r14d
	movq	96(%rsp), %rax          # 8-byte Reload
	imull	%eax, %r14d
	cmpb	$0, (%r8)
	jne	.LBB0_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	-1(%r14), %eax
	movslq	%eax, %rdx
	movq	%r8, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r8, %r12
	callq	memcmp
	movq	%r12, %r8
	testl	%eax, %eax
	je	.LBB0_7
.LBB0_8:                                # %if.end.37
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$47, %ebx
	jg	.LBB0_10
# BB#9:                                 # %if.then.40
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$48, %eax
	subl	%ebx, %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %eax
	movslq	%r14d, %rcx
	leaq	(%rcx,%r8), %rdi
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB0_10:                               # %if.end.47
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%r13d, 60(%rsp)         # 4-byte Spill
	cmpl	$16, %ebp
	leaq	160(%rsp), %rbx
	jl	.LBB0_12
	.align	16, 0x90
.LBB0_11:                               # %while.body.52
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.7, %esi
	movl	$31, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	17176(%r15), %rsi
	movq	%rbx, %rdi
	callq	fputs
	addl	$-15, %ebp
	cmpl	$15, %ebp
	jg	.LBB0_11
.LBB0_12:                               # %while.end
                                        #   in Loop: Header=BB0_4 Depth=1
	testl	%ebp, %ebp
	movl	$0, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	jle	.LBB0_14
# BB#13:                                # %if.then.60
                                        #   in Loop: Header=BB0_4 Depth=1
	addl	$16, %ebp
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	leaq	160(%rsp), %rbx
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	gs_sprintf
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	17176(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB0_14:                               # %for.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_17 Depth 4
	movq	96(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_35
# BB#15:                                # %for.body.79.lr.ph
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rbp
	movq	64(%rsp), %rax          # 8-byte Reload
	imulq	%rcx, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r10
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_16:                               # %for.body.79
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_17 Depth 4
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r10, 112(%rsp)         # 8-byte Spill
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movb	$1, %bl
	movl	$8, %ebp
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_17:                               # %for.body.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%ecx, 140(%rsp)         # 4-byte Spill
	movl	%edx, 152(%rsp)         # 4-byte Spill
	movzbl	(%r10), %r14d
	testw	$128, %r14w
	movl	$0, %edx
	je	.LBB0_19
# BB#18:                                # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movb	%bl, %dl
.LBB0_19:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	testb	$64, %r14b
	movl	$0, %ecx
	je	.LBB0_21
# BB#20:                                # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movb	%bl, %cl
.LBB0_21:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	testb	$32, %r14b
	movl	$0, %r8d
	je	.LBB0_23
# BB#22:                                # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movb	%bl, %r8b
.LBB0_23:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	testb	$16, %r14b
	movl	$0, %edi
	je	.LBB0_25
# BB#24:                                # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movb	%bl, %dil
.LBB0_25:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movl	%ebp, 156(%rsp)         # 4-byte Spill
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	%esi, 148(%rsp)         # 4-byte Spill
	testb	$8, %r14b
	movl	$0, %esi
	je	.LBB0_27
# BB#26:                                # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movb	%bl, %sil
.LBB0_27:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movl	%edi, 136(%rsp)         # 4-byte Spill
	movl	%r8d, %eax
	testb	$4, %r14b
	movl	$0, %r9d
	je	.LBB0_29
# BB#28:                                # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movb	%bl, %r9b
.LBB0_29:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	testb	$2, %r14b
	movl	$0, %r8d
	je	.LBB0_31
# BB#30:                                # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movb	%bl, %r8b
.LBB0_31:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	testb	$1, %r14b
	movl	$0, %ebp
	je	.LBB0_33
# BB#32:                                # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	movb	%bl, %bpl
.LBB0_33:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=4
	orb	%dl, %r15b
	orb	%cl, %r12b
	orb	%al, %r13b
	movl	136(%rsp), %eax         # 4-byte Reload
	orb	%al, %r11b
	movl	140(%rsp), %ecx         # 4-byte Reload
	orb	%sil, %cl
	movl	152(%rsp), %edx         # 4-byte Reload
	orb	%r9b, %dl
	movl	144(%rsp), %eax         # 4-byte Reload
	orb	%r8b, %al
	movl	148(%rsp), %esi         # 4-byte Reload
	orb	%bpl, %sil
	addq	128(%rsp), %r10         # 8-byte Folded Reload
	addb	%bl, %bl
	movl	156(%rsp), %ebp         # 4-byte Reload
	decl	%ebp
	jne	.LBB0_17
# BB#34:                                # %jj100_transpose_8x8.exit
                                        #   in Loop: Header=BB0_16 Depth=3
	movq	120(%rsp), %rbp         # 8-byte Reload
	movb	%r15b, (%rbp)
	movb	%r12b, 6(%rbp)
	movb	%r13b, 12(%rbp)
	movb	%r11b, 18(%rbp)
	movb	%cl, 24(%rbp)
	movb	%dl, 30(%rbp)
	movb	%al, 36(%rbp)
	movb	%sil, 42(%rbp)
	movq	112(%rsp), %r10         # 8-byte Reload
	incq	%r10
	addq	$48, %rbp
	movl	108(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_16
.LBB0_35:                               # %for.inc.84
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	incq	%rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpq	$6, %rax
	jne	.LBB0_14
# BB#36:                                #   in Loop: Header=BB0_4 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB0_37:                               # %while.cond.90
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbx
	cmpq	%rsi, %rbx
	jb	.LBB0_39
# BB#38:                                # %while.body.93
                                        #   in Loop: Header=BB0_37 Depth=2
	leaq	-1(%rbx), %rax
	cmpb	$0, (%rbx)
	je	.LBB0_37
.LBB0_39:                               # %while.end.98
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx), %rax
	cltq
	imulq	$715827883, %rax, %rcx  # imm = 0x2AAAAAAB
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %eax
	movl	44(%rsp), %r14d         # 4-byte Reload
	je	.LBB0_41
# BB#40:                                # %if.then.103
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$6, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rax
	addq	%rax, %rbx
.LBB0_41:                               # %if.end.107
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpq	%rbx, %rsi
	movq	%rsi, %rbp
	ja	.LBB0_44
	.align	16, 0x90
.LBB0_42:                               # %while.body.111
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rbp)
	jne	.LBB0_44
# BB#43:                                # %if.end.114
                                        #   in Loop: Header=BB0_42 Depth=2
	incq	%rbp
	cmpq	%rbx, %rbp
	jbe	.LBB0_42
.LBB0_44:                               # %while.end.116
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rbp, %rcx
	subq	%rsi, %rcx
	movq	%rcx, %rax
	movabsq	$3074457345618258603, %rdx # imm = 0x2AAAAAAAAAAAAAAB
	movq	%rdx, %rdi
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	shlq	$2, %rdx
	leaq	(%rdx,%rdx,2), %rax
	subq	%rax, %rcx
	subq	%rcx, %rbp
	movq	%rbp, %rax
	subq	%rsi, %rax
	imulq	%rdi
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	%rdx
	addq	%rax, %rdx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	leaq	160(%rsp), %r12
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	17176(%r15), %rsi
	movq	%r12, %rdi
	callq	fputs
	subl	%ebp, %ebx
	incl	%ebx
	movslq	%ebx, %r13
	imulq	$715827883, %r13, %rdx  # imm = 0x2AAAAAAB
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	17176(%r15), %rsi
	movq	%r12, %rdi
	callq	fputs
	movq	17176(%r15), %rcx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	fwrite
	movq	17176(%r15), %rsi
	movl	$13, %edi
	callq	fputc
	movl	$1, %ebp
	movl	60(%rsp), %r13d         # 4-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
.LBB0_45:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_4 Depth=1
	addl	$48, %r13d
	cmpl	%r13d, %r14d
	jg	.LBB0_4
	jmp	.LBB0_46
.LBB0_7:                                # %if.then.36
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	%ebp
	movl	44(%rsp), %r14d         # 4-byte Reload
	jmp	.LBB0_45
	.align	16, 0x90
.LBB0_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_42 Depth 2
	movq	%r15, %rdi
	movl	%r13d, %esi
	movq	%r8, %rdx
	movl	40(%rsp), %ecx          # 4-byte Reload
	movq	%r8, %rbx
	callq	gdev_prn_copy_scan_lines
	movq	%rbx, %r8
	testl	%eax, %eax
	jns	.LBB0_5
.LBB0_46:                               # %while.end.159
	movq	17176(%r15), %rsi
	movl	$12, %edi
	movq	%r8, %rbx
	callq	fputc
	movq	17176(%r15), %rdi
	callq	fflush
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r15), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_47:                               # %cleanup.179
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jj100_print_page, .Lfunc_end0-jj100_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jj100"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_jj100_device,@object # @gs_jj100_device
	.data
	.globl	gs_jj100_device
	.align	8
gs_jj100_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_std_procs
	.quad	.L.str
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
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2952                    # 0xb88
	.long	4140                    # 0x102c
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142135194              # float 5.904000e+02
	.long	1146028032              # float 8.280000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.zero	8
	.zero	16
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
	.quad	jj100_print_page
	.quad	gx_default_print_page_copies
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
	.size	gs_jj100_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"jj100_print_page(in)"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"jj100_print_page(out)"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033P"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033G"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033T16"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\037%c"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033F%04d"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\034bP,48,%04d."
	.size	.L.str.9, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
