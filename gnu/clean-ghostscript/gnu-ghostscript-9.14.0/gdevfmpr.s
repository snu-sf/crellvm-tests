	.text
	.file	"gdevfmpr.bc"
	.align	16, 0x90
	.type	fmpr_print_page,@function
fmpr_print_page:                        # @fmpr_print_page
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
	movq	%rdi, %r14
	movq	%r14, 48(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebp
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	836(%r14), %r13d
	movl	%r13d, 44(%rsp)         # 4-byte Spill
	leal	(,%rbp,8), %ebx
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$24, %esi
	movl	$.L.str.2, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$24, %esi
	movl	$.L.str.3, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	%r12, 72(%rsp)          # 8-byte Spill
	testq	%r15, %r15
	movl	$-1, %eax
	je	.LBB0_43
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB0_43
# BB#2:                                 # %if.end
	movq	17176(%r14), %rsi
	movl	$.L.str.4, %edi
	callq	fputs
	movq	17176(%r14), %rsi
	movl	$.L.str.5, %edi
	callq	fputs
	testl	%r13d, %r13d
	jle	.LBB0_42
# BB#3:                                 # %while.body.lr.ph
	leal	(%rbx,%rbx,2), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	leaq	1(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	cltq
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$1, %eax
	subq	%r12, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	%ebx, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	(%rbx,%rbx,2), %eax
	cltq
	leaq	-1(%rax,%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_5:                                # %if.end.23
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%r13d, %ebx
	subl	%ebp, %ebx
	cmpl	$24, %ebx
	movl	$24, %eax
	cmovgl	%eax, %ebx
	movl	%ebx, %r12d
	movq	96(%rsp), %rax          # 8-byte Reload
	imull	%eax, %r12d
	cmpb	$0, (%r15)
	jne	.LBB0_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=1
	leal	-1(%r12), %eax
	movslq	%eax, %rdx
	movq	%r15, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_7
.LBB0_8:                                # %if.end.35
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	%ebp, 60(%rsp)          # 4-byte Spill
	cmpl	$23, %ebx
	movl	$0, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	jg	.LBB0_10
# BB#9:                                 # %if.then.38
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$24, %eax
	subl	%ebx, %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %eax
	movslq	%r12d, %rcx
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %rdi
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB0_10:                               # %for.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_13 Depth 4
	movq	96(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_31
# BB#11:                                # %for.body.58.lr.ph
                                        #   in Loop: Header=BB0_10 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	movq	64(%rsp), %rax          # 8-byte Reload
	imulq	%rcx, %rax
	movq	80(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r10
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_12:                               # %for.body.58
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_13 Depth 4
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r10, 112(%rsp)         # 8-byte Spill
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movb	$-128, %bl
	movl	$8, %edx
	xorl	%eax, %eax
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB0_13:                               # %for.body.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        #       Parent Loop BB0_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movzbl	(%r10), %r14d
	testw	$128, %r14w
	movl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movb	%bl, %al
.LBB0_15:                               # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movl	%edi, %r15d
	testb	$64, %r14b
	movl	$0, %ebp
	je	.LBB0_17
# BB#16:                                # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movb	%bl, %bpl
.LBB0_17:                               # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	testb	$32, %r14b
	movl	$0, %edi
	je	.LBB0_19
# BB#18:                                # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movb	%bl, %dil
.LBB0_19:                               # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movl	%ecx, 140(%rsp)         # 4-byte Spill
	movl	%esi, 148(%rsp)         # 4-byte Spill
	testb	$16, %r14b
	movl	$0, %ecx
	je	.LBB0_21
# BB#20:                                # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movb	%bl, %cl
.LBB0_21:                               # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movl	%edi, %ecx
	movl	%ebp, 144(%rsp)         # 4-byte Spill
	movl	%eax, %esi
	testb	$8, %r14b
	movl	$0, %ebp
	je	.LBB0_23
# BB#22:                                # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movb	%bl, %bpl
.LBB0_23:                               # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	testb	$4, %r14b
	movl	$0, %r9d
	movl	%r15d, %edi
	je	.LBB0_25
# BB#24:                                # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movb	%bl, %r9b
.LBB0_25:                               # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movl	%edx, 152(%rsp)         # 4-byte Spill
	testb	$2, %r14b
	movl	$0, %r15d
	je	.LBB0_27
# BB#26:                                # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movb	%bl, %r15b
.LBB0_27:                               # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	testb	$1, %r14b
	movl	$0, %eax
	je	.LBB0_29
# BB#28:                                # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	movb	%bl, %al
.LBB0_29:                               # %for.body.i
                                        #   in Loop: Header=BB0_13 Depth=4
	orb	%sil, %r8b
	movl	144(%rsp), %edx         # 4-byte Reload
	orb	%dl, %r12b
	orb	%cl, %r13b
	movl	136(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %r11b
	orb	%bpl, %dil
	movl	140(%rsp), %ecx         # 4-byte Reload
	orb	%r9b, %cl
	movl	148(%rsp), %esi         # 4-byte Reload
	orb	%r15b, %sil
	movl	156(%rsp), %edx         # 4-byte Reload
	orb	%al, %dl
	movl	%edx, %eax
	addq	128(%rsp), %r10         # 8-byte Folded Reload
	shrb	%bl
	movl	152(%rsp), %edx         # 4-byte Reload
	decl	%edx
	jne	.LBB0_13
# BB#30:                                # %fmpr_transpose_8x8.exit
                                        #   in Loop: Header=BB0_12 Depth=3
	movq	120(%rsp), %rdx         # 8-byte Reload
	movb	%r8b, (%rdx)
	movb	%r12b, 3(%rdx)
	movb	%r13b, 6(%rdx)
	movb	%r11b, 9(%rdx)
	movb	%dil, 12(%rdx)
	movb	%cl, 15(%rdx)
	movb	%sil, 18(%rdx)
	movb	%al, 21(%rdx)
	movq	112(%rsp), %r10         # 8-byte Reload
	incq	%r10
	addq	$24, %rdx
	movl	108(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_12
.LBB0_31:                               # %for.inc.62
                                        #   in Loop: Header=BB0_10 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	incq	%rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpq	$3, %rax
	jne	.LBB0_10
# BB#32:                                #   in Loop: Header=BB0_4 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	72(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB0_33:                               # %while.cond.68
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rbx
	jb	.LBB0_35
# BB#34:                                # %while.body.71
                                        #   in Loop: Header=BB0_33 Depth=2
	leaq	-1(%rbx), %rax
	cmpb	$0, (%rbx)
	je	.LBB0_33
.LBB0_35:                               # %while.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx), %rax
	cltq
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %eax
	movq	48(%rsp), %r14          # 8-byte Reload
	je	.LBB0_37
# BB#36:                                # %if.then.80
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$3, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rax
	addq	%rax, %rbx
.LBB0_37:                               # %if.end.84
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	80(%rsp), %r15          # 8-byte Reload
	cmpq	%rbx, %r12
	movq	%r12, %r13
	ja	.LBB0_40
	.align	16, 0x90
.LBB0_38:                               # %while.body.88
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r13)
	jne	.LBB0_40
# BB#39:                                # %if.end.91
                                        #   in Loop: Header=BB0_38 Depth=2
	incq	%r13
	cmpq	%rbx, %r13
	jbe	.LBB0_38
.LBB0_40:                               # %while.end.93
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%r13, %rcx
	subq	%r12, %rcx
	movq	%rcx, %rax
	movabsq	$6148914691236517206, %rdx # imm = 0x5555555555555556
	movq	%rdx, %rsi
	imulq	%rsi
	movq	%rdx, %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	leaq	(%rax,%rax,2), %rax
	subq	%rax, %rcx
	subq	%rcx, %r13
	movq	%r13, %rax
	subq	%r12, %rax
	imulq	%rsi
	movq	%rdx, %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	leaq	160(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rcx, %rdx
	callq	gs_sprintf
	movq	17176(%r14), %rsi
	movq	%rbp, %rdi
	callq	fputs
	subl	%r13d, %ebx
	incl	%ebx
	movslq	%ebx, %rbx
	imulq	$1431655766, %rbx, %rdx # imm = 0x55555556
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	17176(%r14), %rsi
	movq	%rbp, %rdi
	callq	fputs
	movq	17176(%r14), %rcx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	fwrite
	movq	17176(%r14), %rsi
	movl	$10, %edi
	callq	fputc
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	44(%rsp), %r13d         # 4-byte Reload
.LBB0_41:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_4 Depth=1
	addl	$24, %ebp
	cmpl	%ebp, %r13d
	jg	.LBB0_4
	jmp	.LBB0_42
.LBB0_7:                                # %if.then.33
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	17176(%r14), %rsi
	movl	$10, %edi
	callq	fputc
	movq	72(%rsp), %r12          # 8-byte Reload
	jmp	.LBB0_41
	.align	16, 0x90
.LBB0_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #         Child Loop BB0_13 Depth 4
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_38 Depth 2
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	movl	56(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	jns	.LBB0_5
.LBB0_42:                               # %while.end.128
	movq	17176(%r14), %rsi
	movl	$12, %edi
	callq	fputc
	movq	17176(%r14), %rdi
	callq	fflush
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_43:                               # %cleanup.146
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fmpr_print_page, .Lfunc_end0-fmpr_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fmpr"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_fmpr_device,@object  # @gs_fmpr_device
	.data
	.globl	gs_fmpr_device
	.align	8
gs_fmpr_device:
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
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
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
	.quad	fmpr_print_page
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
	.size	gs_fmpr_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"fmpr_print_page(in)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"fmpr_print_page(out)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033c"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033Q1 `\033[24;18 G"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033[%da"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033Q%d W"
	.size	.L.str.7, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
