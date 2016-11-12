	.text
	.file	"gdevfmlbp.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4625140522314157261     # double 15.9
.LCPI0_1:
	.quad	4622832427505129882     # double 11.800000000000001
.LCPI0_2:
	.quad	4621368757626234470     # double 9.1999999999999993
.LCPI0_3:
	.quad	4622438362537734963     # double 11.1
.LCPI0_4:
	.quad	4622044297570340045     # double 10.4
.LCPI0_5:
	.quad	4620242857719391846     # double 7.5999999999999996
	.text
	.align	16, 0x90
	.type	fmlbp_print_page,@function
fmlbp_print_page:                       # @fmlbp_print_page
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
	subq	$72, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 128
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
	movq	%rdi, %rbp
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r13d
	movl	%r13d, 12(%rsp)         # 4-byte Spill
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$.L.str.2, %ecx
	movl	%r13d, %edx
	callq	*88(%rdi)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB0_32
# BB#1:                                 # %if.end
	movl	$can_inits, %edi
	movl	$2, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	xorl	%r12d, %r12d
	movl	$.L.str.3, %esi
	movl	$27, %edx
	movl	$81, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	cvttss2si	884(%rbp), %r8d
	movl	$.L.str.4, %esi
	movl	$27, %edx
	movl	$81, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	cvtsi2ssl	836(%rbp), %xmm1
	divss	888(%rbp), %xmm1
	cvtsi2ssl	832(%rbp), %xmm2
	divss	884(%rbp), %xmm2
	ucomiss	%xmm1, %xmm2
	seta	%al
	movaps	%xmm2, %xmm0
	maxss	%xmm1, %xmm0
	movzbl	%al, %ecx
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.9, %edx
	ucomisd	.LCPI0_0(%rip), %xmm0
	jae	.LBB0_9
# BB#2:                                 # %cond.false.i
	ucomisd	.LCPI0_1(%rip), %xmm0
	jae	.LBB0_3
# BB#4:                                 # %cond.false.16.i
	movl	$.L.str.12, %edx
	ucomisd	.LCPI0_3(%rip), %xmm0
	jae	.LBB0_9
# BB#5:                                 # %cond.false.21.i
	movl	$.L.str.13, %edx
	ucomisd	.LCPI0_4(%rip), %xmm0
	jae	.LBB0_9
# BB#6:                                 # %cond.false.26.i
	movl	$.L.str.14, %edx
	ucomisd	.LCPI0_2(%rip), %xmm0
	jae	.LBB0_9
# BB#7:                                 # %cond.false.31.i
	ucomisd	.LCPI0_5(%rip), %xmm0
	movl	$.L.str.15, %eax
	movl	$.L.str.16, %edx
	jmp	.LBB0_8
.LBB0_3:                                # %cond.true.12.i
	minss	%xmm2, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	ucomisd	.LCPI0_2(%rip), %xmm0
	movl	$.L.str.10, %eax
	movl	$.L.str.11, %edx
.LBB0_8:                                # %gdev_fmlbp_paper_size.exit
	cmovaeq	%rax, %rdx
.LBB0_9:                                # %gdev_fmlbp_paper_size.exit
	leaq	32(%rsp), %r14
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movl	$.L.str.5, %esi
	movl	$27, %edx
	movl	$81, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r14, %r8
	callq	fprintf
	movq	%rbp, %r14
	movq	%r14, (%rsp)            # 8-byte Spill
	subl	832(%r14), %r12d
	andb	$7, %r12b
	movl	$255, %eax
	movb	%r12b, %cl
	shll	%cl, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	cmpl	$0, 836(%r14)
	jle	.LBB0_31
# BB#10:                                # %for.body.lr.ph
	movslq	%r13d, %rax
	leaq	(%rax,%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_11:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_25 Depth 2
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	movl	%r13d, %ecx
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	js	.LBB0_32
# BB#12:                                # %if.end.18
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	-1(%rcx), %eax
	andl	24(%rsp), %eax          # 4-byte Folded Reload
	movb	%al, -1(%rcx)
	movq	%rcx, %rax
	.align	16, 0x90
.LBB0_13:                               # %while.cond
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r12
	cmpq	%r15, %r12
	jbe	.LBB0_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB0_13 Depth=2
	leaq	-1(%r12), %rax
	cmpb	$0, -1(%r12)
	je	.LBB0_13
.LBB0_15:                               # %while.end
                                        #   in Loop: Header=BB0_11 Depth=1
	cmpq	%r15, %r12
	je	.LBB0_30
# BB#16:                                # %while.cond.33.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	cmpq	%r15, %r12
	movq	%r15, %r13
	jbe	.LBB0_19
	.align	16, 0x90
.LBB0_17:                               # %land.rhs.36
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r13)
	jne	.LBB0_19
# BB#18:                                # %while.body.41
                                        #   in Loop: Header=BB0_17 Depth=2
	addl	$8, %r14d
	incq	%r13
	cmpq	%r12, %r13
	jb	.LBB0_17
.LBB0_19:                               # %while.end.43
                                        #   in Loop: Header=BB0_11 Depth=1
	subq	%r13, %r12
	movl	$28, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$34, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	leaq	48(%rsp), %rdi
	movl	%r14d, %edx
	callq	gs_sprintf
	movb	48(%rsp), %al
	testb	%al, %al
	leaq	49(%rsp), %rbp
	je	.LBB0_24
	.align	16, 0x90
.LBB0_20:                               # %while.body.i
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%al, %edi
	cmpb	$0, (%rbp)
	je	.LBB0_21
# BB#22:                                # %if.else.i
                                        #   in Loop: Header=BB0_20 Depth=2
	addl	$-16, %edi
	jmp	.LBB0_23
	.align	16, 0x90
.LBB0_21:                               # %if.then.i
                                        #   in Loop: Header=BB0_20 Depth=2
	addl	$48, %edi
.LBB0_23:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB0_20 Depth=2
	movq	%rbx, %rsi
	callq	fputc
	movb	(%rbp), %al
	incq	%rbp
	testb	%al, %al
	jne	.LBB0_20
.LBB0_24:                               # %while.end.i
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	leaq	48(%rsp), %rdi
	movl	28(%rsp), %edx          # 4-byte Reload
	callq	gs_sprintf
	movb	48(%rsp), %al
	testb	%al, %al
	leaq	49(%rsp), %rbp
	movq	(%rsp), %r14            # 8-byte Reload
	je	.LBB0_29
	.align	16, 0x90
.LBB0_25:                               # %while.body.13.i
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%al, %edi
	cmpb	$0, (%rbp)
	je	.LBB0_26
# BB#27:                                # %if.else.20.i
                                        #   in Loop: Header=BB0_25 Depth=2
	addl	$-16, %edi
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_26:                               # %if.then.16.i
                                        #   in Loop: Header=BB0_25 Depth=2
	addl	$64, %edi
.LBB0_28:                               # %while.cond.11.backedge.i
                                        #   in Loop: Header=BB0_25 Depth=2
	movq	%rbx, %rsi
	callq	fputc
	movb	(%rbp), %al
	incq	%rbp
	testb	%al, %al
	jne	.LBB0_25
.LBB0_29:                               # %goto_xy.exit
                                        #   in Loop: Header=BB0_11 Depth=1
	leal	(,%r12,8), %r9d
	movl	$.L.str.6, %esi
	movl	$27, %edx
	movl	$81, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r12d, %r8d
	callq	fprintf
	movslq	%r12d, %rdx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	movl	12(%rsp), %r13d         # 4-byte Reload
	movl	28(%rsp), %ebp          # 4-byte Reload
.LBB0_30:                               # %for.inc
                                        #   in Loop: Header=BB0_11 Depth=1
	incl	%ebp
	cmpl	836(%r14), %ebp
	jl	.LBB0_11
.LBB0_31:                               # %cleanup.cont.53
	movl	$12, %edi
	movq	%rbx, %rsi
	callq	fputc
	movq	%rbx, %rdi
	callq	fflush
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_32:                               # %cleanup.63
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fmlbp_print_page, .Lfunc_end0-fmlbp_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fmlbp"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_fmlbp_device,@object # @gs_fmlbp_device
	.data
	.globl	gs_fmlbp_device
	.align	8
gs_fmlbp_device:
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
	.long	3306                    # 0xcea
	.long	4678                    # 0x1246
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142211871              # float 5.950800e+02
	.long	1146258063              # float 8.420400e+02
	.zero	16
	.long	0                       # 0x0
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
	.long	1137180672              # float 4.000000e+02
	.long	3265265664              # float -8.000000e+01
	.long	3265265664              # float -8.000000e+01
	.long	1097229926              # float 1.440000e+01
	.long	1103731098              # float 2.520000e+01
	.long	1097984901              # float 1.512000e+01
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
	.quad	fmlbp_print_page
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
	.size	gs_fmlbp_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"fmlpr_print_page(data)"
	.size	.L.str.2, 23

	.type	can_inits,@object       # @can_inits
	.data
can_inits:
	.ascii	"\033c"
	.size	can_inits, 2

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%c%c%d!I"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%c%c%d!A"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%c%c%s!F"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c%c%d;%d;0!a"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fmlbp_print_page(data)"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s;%d"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0;3"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1;4"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"2;0"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0;4"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"3;0"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1;5"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"0;5"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"4;0"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%d"
	.size	.L.str.17, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
