	.text
	.file	"gdevlbp8.bc"
	.align	16, 0x90
	.type	lbp8_print_page,@function
lbp8_print_page:                        # @lbp8_print_page
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
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp6:
	.cfi_def_cfa_offset 736
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
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	$lbp8_init, %edi
	movl	$31, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_device_raster
	movl	%eax, 28(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
	subl	832(%r15), %ecx
	andb	$7, %cl
	movl	$255, %eax
	shll	%cl, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	cmpl	$0, 836(%r15)
	jle	.LBB0_24
# BB#1:                                 # %for.body.lr.ph.i
	leaq	32(%rsp), %rdx
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_2:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_13 Depth 3
                                        #         Child Loop BB0_14 Depth 4
	movq	%r15, %rdi
	movl	%r13d, %esi
	movq	%rdx, %rbp
	movl	28(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movq	%rbp, %rdx
	movzbl	350(%rsp), %eax
	andl	24(%rsp), %eax          # 4-byte Folded Reload
	movb	%al, 350(%rsp)
	leaq	351(%rsp), %rax
	.align	16, 0x90
.LBB0_3:                                # %while.cond.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r12
	cmpq	%rdx, %r12
	jbe	.LBB0_4
# BB#5:                                 # %land.rhs.i
                                        #   in Loop: Header=BB0_3 Depth=2
	leaq	-1(%r12), %rax
	movb	$1, %bpl
	cmpb	$0, -1(%r12)
	je	.LBB0_3
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%ebp, %ebp
.LBB0_6:                                # %while.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rdx, %r12
	je	.LBB0_23
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%r13d, %ecx
	subl	%r14d, %ecx
	movl	$.L.str.2, %esi
	movq	%rdx, %r14
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movq	%r14, %rdx
	testb	%bpl, %bpl
	movl	%r13d, %r14d
	je	.LBB0_23
# BB#8:                                 # %while.cond.27.preheader.lr.ph.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%r13d, 20(%rsp)         # 4-byte Spill
	xorl	%ebp, %ebp
	movq	%rdx, %r15
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_11:                               # %while.body.35.i
                                        #   in Loop: Header=BB0_9 Depth=2
	addl	$8, %ebp
	incq	%r15
.LBB0_9:                                # %while.cond.27.preheader.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
                                        #         Child Loop BB0_14 Depth 4
	cmpq	%r12, %r15
	jae	.LBB0_12
# BB#10:                                # %land.rhs.30.i
                                        #   in Loop: Header=BB0_9 Depth=2
	cmpb	$0, (%r15)
	je	.LBB0_11
.LBB0_12:                               # %while.end.37.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%r12d, %r14d
	subl	%r15d, %r14d
	xorl	%r13d, %r13d
	movl	$1, %eax
	cmpl	$23, %r14d
	jl	.LBB0_20
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_16:                               # %if.then.54.i
                                        #   in Loop: Header=BB0_13 Depth=3
	addl	%eax, %r13d
	movl	%r13d, %eax
.LBB0_13:                               # %while.cond.42.outer.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
	movslq	%eax, %rcx
	leaq	(%rcx,%r15), %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_14:                               # %while.cond.42.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        #       Parent Loop BB0_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%rcx,%rdx), %rsi
	cmpq	%r12, %rsi
	jae	.LBB0_19
# BB#15:                                # %while.body.48.i
                                        #   in Loop: Header=BB0_14 Depth=4
	leaq	1(%rdx), %r13
	cmpb	$0, (%rcx,%rdx)
	jne	.LBB0_16
# BB#17:                                # %if.else.i
                                        #   in Loop: Header=BB0_14 Depth=4
	leaq	-1(%r13), %rdx
	cmpq	$20, %rdx
	movq	%r13, %rdx
	jl	.LBB0_14
# BB#18:                                # %if.end.62.i.loopexitsplit
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%eax, %r14d
	jmp	.LBB0_20
.LBB0_19:                               # %while.cond.42.i.if.end.62.i.loopexit_crit_edge
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%eax, %r14d
	movl	%edx, %r13d
.LBB0_20:                               # %if.end.62.i
                                        #   in Loop: Header=BB0_9 Depth=2
	testl	%r14d, %r14d
	je	.LBB0_22
# BB#21:                                # %if.end.66.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	$.L.str.3, %esi
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	fprintf
	movl	$.L.str.4, %esi
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %ecx
	movl	%r14d, %r8d
	callq	fprintf
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	addl	%r14d, %r13d
	movslq	%r13d, %rax
	addq	%rax, %r15
	leal	(%rbp,%r13,8), %ebp
	cmpq	%r12, %r15
	jb	.LBB0_9
.LBB0_22:                               #   in Loop: Header=BB0_2 Depth=1
	movl	20(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, %r14d
	movq	8(%rsp), %r15           # 8-byte Reload
	leaq	32(%rsp), %rdx
.LBB0_23:                               # %if.end.77.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%r13d
	cmpl	836(%r15), %r13d
	jl	.LBB0_2
.LBB0_24:                               # %can_print_page.exit
	movl	$.L.str.5, %esi
	movl	$27, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	xorl	%eax, %eax
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lbp8_print_page, .Lfunc_end0-lbp8_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lbp8"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_lbp8_device,@object  # @gs_lbp8_device
	.section	.rodata,"a",@progbits
	.globl	gs_lbp8_device
	.align	8
gs_lbp8_device:
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
	.long	3258974208              # float -4.800000e+01
	.long	3262906368              # float -6.300000e+01
	.long	1094210028              # float 1.152000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1102598636              # float 2.304000e+01
	.long	1097984901              # float 1.512000e+01
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
	.quad	lbp8_print_page
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
	.size	gs_lbp8_device, 18472

	.type	lbp8_init,@object       # @lbp8_init
	.align	16
lbp8_init:
	.ascii	"\033;\033c\033;\033[2&z\033[14p\033[11h\033[7 I\033[63k"
	.size	lbp8_init, 31

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%c[%de"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%c[%d`"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%c[%d;%d;300;.r"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%c="
	.size	.L.str.5, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
