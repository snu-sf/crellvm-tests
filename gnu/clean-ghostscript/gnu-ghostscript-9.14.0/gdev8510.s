	.text
	.file	"gdev8510.bc"
	.align	16, 0x90
	.type	m8510_print_page,@function
m8510_print_page:                       # @m8510_print_page
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
	subq	$152, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 208
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
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r14d
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.2, %ecx
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, %r13
	movq	%r13, 96(%rsp)          # 8-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.3, %ecx
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	24(%rbp), %rax
	movq	%rbp, %rbx
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.4, %ecx
	movl	%r14d, %edx
	callq	*88(%rdi)
	movq	%rax, %rbp
	testq	%r13, %r13
	movl	$-25, %r15d
	je	.LBB0_12
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB0_12
# BB#2:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB0_12
# BB#3:                                 # %if.end
	movq	%r12, 104(%rsp)         # 8-byte Spill
	movl	$.L.str.5, %edi
	movl	$1, %esi
	movl	$9, %edx
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	fwrite
	cmpl	$0, 836(%rbx)
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	jle	.LBB0_11
# BB#4:                                 # %for.cond.preheader.lr.ph
	movslq	%r14d, %rax
	leaq	(%r13,%rax), %r15
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	imulq	$7, %rax, %rcx
	leaq	(%r13,%rcx), %rsi
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r13,%rcx), %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,4), %rcx
	leaq	(%r13,%rcx), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	(%r13,%rax,4), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rax,4), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,2), %rcx
	leaq	(%r13,%rcx), %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	(%r13,%rax,2), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	(%rdx,%rax,2), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_5:                                # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	movq	%rbx, %rbp
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movq	88(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	%r12d, %esi
	orl	$1, %esi
	movq	%rbp, %rdi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	%r12d, %ebx
	orl	$2, %ebx
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	%r12d, %esi
	orl	$3, %esi
	movq	%rbp, %rdi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	leal	2(%rbx), %esi
	movq	%rbp, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	addl	$3, %ebx
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movq	%rbp, %rbx
	movq	%r13, %rbp
	movl	%r12d, %r13d
	orl	$6, %r13d
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	%r12d, %esi
	orl	$7, %esi
	movq	%rbx, %rdi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	leal	2(%r13), %esi
	movq	%rbx, %rdi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	leal	3(%r13), %esi
	movq	%rbx, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	leal	4(%r13), %esi
	movq	%rbx, %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	leal	5(%r13), %esi
	movq	%rbx, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	leal	6(%r13), %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	addl	$7, %r13d
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	144(%rsp), %rdx         # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	%r12d, %esi
	orl	$14, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	%r12d, %esi
	orl	$15, %esi
	movq	%rbx, %rdi
	movq	104(%rsp), %rdx         # 8-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	addl	$16, %r12d
	movl	%r12d, 116(%rsp)        # 4-byte Spill
	testl	%r14d, %r14d
	movq	120(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rbx
	jle	.LBB0_6
	.align	16, 0x90
.LBB0_7:                                # %for.body.32
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %ecx
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	memflip8x8
	incq	%rbp
	addq	$8, %rbx
	cmpq	%r15, %rbp
	jb	.LBB0_7
# BB#8:                                 # %for.end.35
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%edx, %edx
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	m8510_output_run
	testl	%r14d, %r14d
	movq	%r12, %rbx
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	jle	.LBB0_10
	.align	16, 0x90
.LBB0_9:                                # %for.body.40
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1, %ecx
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	memflip8x8
	incq	%rbp
	addq	$8, %rbx
	cmpq	%r13, %rbp
	jb	.LBB0_9
	jmp	.LBB0_10
	.align	16, 0x90
.LBB0_6:                                # %for.end.35.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%edx, %edx
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	m8510_output_run
	movq	144(%rsp), %r13         # 8-byte Reload
.LBB0_10:                               # %for.end.44
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, 120(%rsp)         # 8-byte Spill
	movq	%r13, 144(%rsp)         # 8-byte Spill
	movl	$1, %edx
	movq	128(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	m8510_output_run
	movl	116(%rsp), %r12d        # 4-byte Reload
	cmpl	836(%rbx), %r12d
	movq	96(%rsp), %r13          # 8-byte Reload
	jl	.LBB0_5
.LBB0_11:                               # %while.end
	movl	$.L.str.6, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	136(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rcx
	callq	fwrite
	movq	%rbp, %rdi
	callq	fflush
	xorl	%r15d, %r15d
	movq	104(%rsp), %r12         # 8-byte Reload
	movq	120(%rsp), %rbp         # 8-byte Reload
.LBB0_12:                               # %out.47
	testq	%rbp, %rbp
	je	.LBB0_14
# BB#13:                                # %if.then.48
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB0_14:                               # %if.end.54
	testq	%r12, %r12
	je	.LBB0_16
# BB#15:                                # %if.then.56
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB0_16:                               # %if.end.63
	testq	%r13, %r13
	je	.LBB0_18
# BB#17:                                # %if.then.65
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB0_18:                               # %if.end.72
	movl	%r15d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	m8510_print_page, .Lfunc_end0-m8510_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	m8510_output_run,@function
m8510_output_run:                       # @m8510_output_run
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
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 64
.Ltmp19:
	.cfi_offset %rbx, -48
.Ltmp20:
	.cfi_offset %r12, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movslq	832(%rdi), %rax
	leaq	(%rax,%rbp), %rax
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	subq	%rbp, %rbx
	jbe	.LBB1_10
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, -1(%rax)
	jne	.LBB1_10
# BB#3:                                 # %land.lhs.true.4
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, -2(%rax)
	jne	.LBB1_10
# BB#4:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, -3(%rax)
	jne	.LBB1_10
# BB#5:                                 # %land.lhs.true.14
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, -4(%rax)
	jne	.LBB1_10
# BB#6:                                 # %land.lhs.true.19
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, -5(%rax)
	jne	.LBB1_10
# BB#7:                                 # %land.lhs.true.24
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, -6(%rax)
	jne	.LBB1_10
# BB#8:                                 # %land.lhs.true.29
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, -7(%rax)
	jne	.LBB1_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, -8(%rax)
	leaq	-8(%rax), %rax
	je	.LBB1_1
.LBB1_10:                               # %while.end
	testl	%ebx, %ebx
	je	.LBB1_12
# BB#11:                                # %if.then
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbx), %edx
	sarl	$3, %edx
	leaq	6(%rsp), %r15
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	movl	$1, %esi
	movl	$5, %edx
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r12, %rcx
	callq	fwrite
	movl	$.L.str.8, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
.LBB1_12:                               # %if.end
	testl	%r14d, %r14d
	je	.LBB1_14
# BB#13:                                # %if.then.46
	movl	$.L.str.9, %edi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r12, %rcx
	callq	fwrite
.LBB1_14:                               # %if.end.48
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	m8510_output_run, .Lfunc_end1-m8510_output_run
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"m8510"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_m8510_device,@object # @gs_m8510_device
	.section	.rodata,"a",@progbits
	.globl	gs_m8510_device
	.align	8
gs_m8510_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	1360                    # 0x550
	.long	1584                    # 0x630
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1126170624              # float 1.600000e+02
	.long	1125122048              # float 1.440000e+02
	.long	1126170624              # float 1.600000e+02
	.long	1125122048              # float 1.440000e+02
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1108344832              # float 3.600000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	m8510_print_page
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
	.size	gs_m8510_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"m8510_print_page(in1)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"m8510_print_page(in2)"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"m8510_print_page(out)"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033m2\033P\033T16"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033c1"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033g%03d"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\r"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
