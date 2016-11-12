	.text
	.file	"gdevop4w.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4625140522314157261     # double 15.9
.LCPI0_1:
	.quad	4622832427505129882     # double 11.800000000000001
.LCPI0_2:
	.quad	4622438362537734963     # double 11.1
.LCPI0_3:
	.quad	4620862102668155290     # double 8.3000000000000007
	.text
	.align	16, 0x90
	.type	oki4w_print_page,@function
oki4w_print_page:                       # @oki4w_print_page
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
	subq	$120, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 176
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movslq	%eax, %r12
	addq	$7, %r12
	movl	%r12d, %ebp
	andl	$-8, %ebp
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$8, %edx
	movl	$.L.str.2, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cvttss2si	884(%rbx), %eax
	cvttss2si	888(%rbx), %r14d
	cltd
	idivl	%r14d
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	callq	gdev_prn_print_scan_lines
	movl	%eax, 84(%rsp)          # 4-byte Spill
	cvtsi2ssl	836(%rbx), %xmm0
	divss	888(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$27, %r13d
	ucomisd	.LCPI0_0(%rip), %xmm0
	jae	.LBB0_4
# BB#1:                                 # %cond.false.i
	movl	$3, %r13d
	ucomisd	.LCPI0_1(%rip), %xmm0
	jae	.LBB0_4
# BB#2:                                 # %cond.false.7.i
	movl	$26, %r13d
	ucomisd	.LCPI0_2(%rip), %xmm0
	jae	.LBB0_4
# BB#3:                                 # %cond.false.12.i
	ucomisd	.LCPI0_3(%rip), %xmm0
	movl	$2, %eax
	movl	$25, %r13d
	cmovael	%eax, %r13d
.LBB0_4:                                # %oki_paper_size.exit
	movl	$-25, %eax
	movq	88(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB0_23
# BB#5:                                 # %if.end
	movl	%ebp, %edx
	shlq	$3, %rdx
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	cmpl	$300, %r14d             # imm = 0x12C
	setne	%al
	movzbl	%al, %eax
	leal	5(%rax,%rax), %eax
	cmpl	$150, %r14d
	movl	$3, %edx
	cmovnel	%eax, %edx
	movl	%edx, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	%r13d, 8(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.3, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r15, %r13
	movl	%edx, %ecx
	callq	fprintf
	xorl	%ecx, %ecx
	movq	96(%rsp), %rax          # 8-byte Reload
	subl	832(%rax), %ecx
	movq	$-1, %rax
	shlq	%cl, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	cmpl	$0, 84(%rsp)            # 4-byte Folded Reload
	jle	.LBB0_22
# BB#6:                                 # %for.body.lr.ph
	shrq	$3, %r12
	movq	%r12, %rax
	shlq	$33, %rax
	sarq	$29, %rax
	leaq	(%rax,%rbx), %r15
	movq	%r15, 112(%rsp)         # 8-byte Spill
	shlq	$32, %r12
	sarq	$29, %r12
	leaq	(%r12,%rbx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %esi
	movq	%rbx, %rdx
	movl	76(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	js	.LBB0_8
# BB#9:                                 # %if.end.45
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	%ebp, 108(%rsp)         # 4-byte Spill
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	andq	%rax, -8(%rcx)
	movq	%rcx, %rax
	.align	16, 0x90
.LBB0_10:                               # %while.cond
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r12
	cmpq	%rbx, %r12
	jbe	.LBB0_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB0_10 Depth=2
	leaq	-8(%r12), %rax
	cmpq	$0, -8(%r12)
	je	.LBB0_10
.LBB0_12:                               # %while.end
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpq	%rbx, %r12
	movq	%r15, %rbp
	je	.LBB0_13
# BB#14:                                # %if.end.56
                                        #   in Loop: Header=BB0_7 Depth=1
	cmpl	108(%rsp), %r14d        # 4-byte Folded Reload
	jne	.LBB0_16
# BB#15:                                # %if.then.59
                                        #   in Loop: Header=BB0_7 Depth=1
	testl	%r14d, %r14d
	jg	.LBB0_17
	jmp	.LBB0_18
	.align	16, 0x90
.LBB0_13:                               # %if.then.55
                                        #   in Loop: Header=BB0_7 Depth=1
	incl	%r14d
	movq	%r13, %r12
	jmp	.LBB0_21
	.align	16, 0x90
.LBB0_16:                               # %if.else.66
                                        #   in Loop: Header=BB0_7 Depth=1
	testl	%r14d, %r14d
	je	.LBB0_18
.LBB0_17:                               # %if.then.69
                                        #   in Loop: Header=BB0_7 Depth=1
	movzbl	%r14b, %edx
	sarl	$8, %r14d
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r14d, %ecx
	callq	fprintf
.LBB0_18:                               # %if.else.81
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	gdev_pcl_mode2compress
	xorl	%r14d, %r14d
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	movq	%r13, %r12
	jle	.LBB0_21
# BB#19:                                # %for.body.87.lr.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	%eax, %r15d
	movzbl	%r15b, %ebx
	movslq	%r15d, %rbp
	sarl	$8, %r15d
	movl	72(%rsp), %r13d         # 4-byte Reload
	.align	16, 0x90
.LBB0_20:                               # %for.body.87
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%r14d, %r14d
	movl	$.L.str.5, %esi
	movl	$2, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %ecx
	movl	%r15d, %r8d
	callq	fprintf
	movl	$1, %esi
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	fwrite
	decl	%r13d
	jne	.LBB0_20
.LBB0_21:                               # %for.inc.95
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	%r12, %r13
	movq	112(%rsp), %r15         # 8-byte Reload
	movl	108(%rsp), %ebp         # 4-byte Reload
	incl	%ebp
	cmpl	84(%rsp), %ebp          # 4-byte Folded Reload
	movq	88(%rsp), %rbx          # 8-byte Reload
	jl	.LBB0_7
	jmp	.LBB0_22
.LBB0_8:
	movl	%eax, 80(%rsp)          # 4-byte Spill
.LBB0_22:                               # %for.end.97
	movl	$.L.str.6, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	80(%rsp), %eax          # 4-byte Reload
.LBB0_23:                               # %cleanup.106
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	oki4w_print_page, .Lfunc_end0-oki4w_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4625140522314157261     # double 15.9
.LCPI1_1:
	.quad	4622832427505129882     # double 11.800000000000001
.LCPI1_2:
	.quad	4622438362537734963     # double 11.1
	.text
	.align	16, 0x90
	.type	oki4w_open,@function
oki4w_open:                             # @oki4w_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvtsi2ssl	836(%rbx), %xmm0
	divss	888(%rbx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$oki4w_open.m_letter, %esi
	ucomisd	.LCPI1_0(%rip), %xmm0
	jae	.LBB1_4
# BB#1:                                 # %entry
	ucomisd	.LCPI1_1(%rip), %xmm0
	jae	.LBB1_4
# BB#2:                                 # %cond.false.7.i
	movl	$oki4w_open.m_a4, %esi
	ucomisd	.LCPI1_2(%rip), %xmm0
	jae	.LBB1_4
# BB#3:                                 # %cond.false.12.i
	movl	$oki4w_open.m_letter, %esi
.LBB1_4:                                # %oki_paper_size.exit
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gx_device_set_margins
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end1:
	.size	oki4w_open, .Lfunc_end1-oki4w_open
	.cfi_endproc

	.align	16, 0x90
	.type	oki4w_close,@function
oki4w_close:                            # @oki4w_close
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	oki4w_close, .Lfunc_end2-oki4w_close
	.cfi_endproc

	.type	prn_hp_procs,@object    # @prn_hp_procs
	.data
	.align	8
prn_hp_procs:
	.quad	oki4w_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	oki4w_close
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
	.size	prn_hp_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"oki4w"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_oki4w_device,@object # @gs_oki4w_device
	.data
	.globl	gs_oki4w_device
	.align	8
gs_oki4w_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_hp_procs
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
	.quad	oki4w_print_page
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
	.size	gs_oki4w_device, 18472

	.type	oki4w_open.m_a4,@object # @oki4w_open.m_a4
	.section	.rodata,"a",@progbits
	.align	16
oki4w_open.m_a4:
	.long	1040187392              # float 1.250000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1040187392              # float 1.250000e-01
	.long	1032805417              # float 7.000000e-02
	.size	oki4w_open.m_a4, 16

	.type	oki4w_open.m_letter,@object # @oki4w_open.m_letter
	.align	16
oki4w_open.m_letter:
	.long	1040187392              # float 1.250000e-01
	.long	1048576000              # float 2.500000e-01
	.long	1040187392              # float 1.250000e-01
	.long	1032805417              # float 7.000000e-02
	.size	oki4w_open.m_letter, 16

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"oki4w_print_page"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\033%%-98765X\034\024\003Ai\020\034\024\005Ae%cf%c\034\024\tBa%cb\002c\001e%c\034\1779\033&B\033&A\007%c\001%c\001%c%c%c%c\033$A"
	.size	.L.str.3, 68

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033*B%c%c"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033*A%c%c%c"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033$B\033\177%c"
	.size	.L.str.6, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
