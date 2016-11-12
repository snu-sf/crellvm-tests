	.text
	.file	"gdevcif.bc"
	.align	16, 0x90
	.type	cif_print_page,@function
cif_print_page:                         # @cif_print_page
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
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	%r14, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	24(%r14), %rcx
	movq	200(%rcx), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#1:                                 # %if.end
	leaq	13056(%r14), %r15
	movl	$46, %esi
	movq	%r15, %rdi
	callq	strchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_2
# BB#3:                                 # %if.else
	subq	%r15, %rbp
	jmp	.LBB0_4
.LBB0_2:                                # %if.then.6
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %rbp
	incq	%rbp
.LBB0_4:                                # %if.end.13
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r12
	movslq	%ebp, %rbp
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	strncpy
	movb	$0, (%r12,%rbp)
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	fprintf
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	cmpl	$0, 836(%r14)
	jle	.LBB0_16
# BB#5:                                 # %for.body.lr.ph
	xorl	%eax, %eax
                                        # implicit-def: EBP
	.align	16, 0x90
.LBB0_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_8 Depth 3
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	movl	8(%rsp), %r14d          # 4-byte Reload
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	testl	%r14d, %r14d
	movl	$0, %r13d
	movl	$0, %r14d
	movl	$0, %r15d
	jle	.LBB0_15
	.align	16, 0x90
.LBB0_7:                                # %for.cond.38.preheader
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	movl	%r13d, 12(%rsp)         # 4-byte Spill
	movl	$8, %r12d
	.align	16, 0x90
.LBB0_8:                                # %for.body.41
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx,%r14), %eax
	leal	-1(%r12), %ecx
	btl	%ecx, %eax
	jae	.LBB0_10
# BB#9:                                 # %if.then.45
                                        #   in Loop: Header=BB0_8 Depth=3
	testl	%r15d, %r15d
	cmovel	%r13d, %ebp
	incl	%r15d
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_10:                               # %if.else.51
                                        #   in Loop: Header=BB0_8 Depth=3
	testl	%r15d, %r15d
	je	.LBB0_11
# BB#12:                                # %if.then.54
                                        #   in Loop: Header=BB0_8 Depth=3
	leal	(,%r15,4), %edx
	addl	%r15d, %r15d
	leal	(%r15,%rbp,4), %ecx
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	836(%rax), %r8d
	movq	32(%rsp), %rax          # 8-byte Reload
	subl	%eax, %r8d
	shll	$2, %r8d
	xorl	%r15d, %r15d
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	jmp	.LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=3
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB0_13:                               # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=3
	incl	%r13d
	decl	%r12d
	jg	.LBB0_8
# BB#14:                                # %for.inc.65
                                        #   in Loop: Header=BB0_7 Depth=2
	incq	%r14
	movl	12(%rsp), %r13d         # 4-byte Reload
	addl	$8, %r13d
	cmpl	8(%rsp), %r14d          # 4-byte Folded Reload
	jne	.LBB0_7
.LBB0_15:                               # %for.inc.68
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	24(%rsp), %r14          # 8-byte Reload
	cmpl	836(%r14), %eax
	jl	.LBB0_6
.LBB0_16:                               # %for.end.70
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_17:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cif_print_page, .Lfunc_end0-cif_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cif"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_cif_device,@object   # @gs_cif_device
	.section	.rodata,"a",@progbits
	.globl	gs_cif_device
	.align	8
gs_cif_device:
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
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.quad	cif_print_page
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
	.size	gs_cif_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cif_print_page(in)"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cif_print_page(s)"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DS1 25 1;\n9 %s;\nLCP;\n"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"B%d 4 %d %d;\n"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DF;\nC1;\nE\n"
	.size	.L.str.6, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
