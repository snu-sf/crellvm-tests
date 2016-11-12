	.text
	.file	"gdev4081.bc"
	.align	16, 0x90
	.type	r4081_print_page,@function
r4081_print_page:                       # @r4081_print_page
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r15d
	movl	832(%r14), %r13d
	addl	$7, %r13d
	andl	$-8, %r13d
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%r13d, %esi
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-1, %eax
	testq	%rbx, %rbx
	je	.LBB0_13
# BB#1:                                 # %while.cond.preheader
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movl	836(%r14), %r12d
	movq	%rbx, %r13
	incq	%r13
	leal	-1(%r15), %eax
	cltq
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB0_4
	.align	16, 0x90
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %esi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	gdev_prn_copy_scan_lines
	cmpb	$0, (%rbx)
	jne	.LBB0_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB0_4
# BB#14:                                # %if.end.19
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%ebp
	cmpl	%r12d, %ebp
	jl	.LBB0_2
.LBB0_4:                                # %while.cond.20.preheader
	movq	%r15, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB0_5:                                # %while.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %r15d
	movl	%r15d, %r14d
	subl	%ebp, %r14d
	jle	.LBB0_11
# BB#6:                                 # %while.body.23
                                        #   in Loop: Header=BB0_5 Depth=1
	leal	-1(%r15), %r12d
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r12d, %esi
	movq	%rbx, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	cmpb	$0, (%rbx)
	jne	.LBB0_8
# BB#7:                                 # %lor.lhs.false.30
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_5
.LBB0_8:                                # %while.end.38
	imull	$720, %ebp, %eax        # imm = 0x2D0
	addl	$720, %eax              # imm = 0x2D0
	cltq
	imulq	$458129845, %rax, %r8   # imm = 0x1B4E81B5
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$37, %r8
	addl	%eax, %r8d
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rdi
	movl	4(%rsp), %edx           # 4-byte Reload
	movl	%r14d, %ecx
	callq	fprintf
	cmpl	%ebp, %r15d
	movq	16(%rsp), %r12          # 8-byte Reload
	jle	.LBB0_12
# BB#9:                                 # %while.body.45.lr.ph
	movslq	%r12d, %r14
	.align	16, 0x90
.LBB0_10:                               # %while.body.45
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %esi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r13, %rcx
	callq	fwrite
	incl	%ebp
	cmpl	%ebp, %r15d
	jne	.LBB0_10
	jmp	.LBB0_12
.LBB0_11:                               # %while.end.50.critedge
	imull	$720, %ebp, %eax        # imm = 0x2D0
	addl	$720, %eax              # imm = 0x2D0
	cltq
	imulq	$458129845, %rax, %r8   # imm = 0x1B4E81B5
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$37, %r8
	addl	%eax, %r8d
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rdi
	movl	4(%rsp), %edx           # 4-byte Reload
	movl	%r14d, %ecx
	callq	fprintf
.LBB0_12:                               # %while.end.50
	movl	$.L.str.4, %edi
	movq	%r13, %rsi
	callq	fputs
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_13:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	r4081_print_page, .Lfunc_end0-r4081_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r4081"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_r4081_device,@object # @gs_r4081_device
	.section	.rodata,"a",@progbits
	.globl	gs_r4081_device
	.align	8
gs_r4081_device:
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
	.long	2550                    # 0x9f6
	.long	3300                    # 0xce4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	3264610304              # float -7.500000e+01
	.long	3258974208              # float -4.800000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1094210028              # float 1.152000e+01
	.long	1099956224              # float 1.800000e+01
	.long	1094210028              # float 1.152000e+01
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
	.quad	r4081_print_page
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
	.size	gs_r4081_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"r4081_print_page(out)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\033\rP\033\022YB2 \033\022G3,%d,%d,1,1,1,%d@"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\f\033\rP"
	.size	.L.str.4, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
