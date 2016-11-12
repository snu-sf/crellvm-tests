	.text
	.file	"gdevmiff.bc"
	.align	16, 0x90
	.type	miff24_print_page,@function
miff24_print_page:                      # @miff24_print_page
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movl	$1, %esi
	callq	gx_device_raster
	movq	24(%rbp), %rdi
	movl	$.L.str.2, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_14
# BB#1:                                 # %if.end
	movl	$.L.str.3, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.4, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	832(%rbp), %edx
	movl	$0, 4(%rsp)             # 4-byte Folded Spill
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.6, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	836(%rbp), %edx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.8, %edi
	movq	%rbx, %rsi
	callq	fputs
	cmpl	$0, 836(%rbp)
	jle	.LBB0_13
# BB#2:                                 # %for.body.lr.ph
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	16(%rsp), %rcx
	callq	gdev_prn_get_bits
	movl	%eax, 4(%rsp)           # 4-byte Spill
	testl	%eax, %eax
	js	.LBB0_13
# BB#4:                                 # %if.end.14
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	832(%rbp), %rcx
	testq	%rcx, %rcx
	jle	.LBB0_12
# BB#5:                                 # %while.cond.17.preheader.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	16(%rsp), %rax
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rcx,%rax), %r15
	leaq	-3(%r15), %r14
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_6:                                # %land.lhs.true
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %rax
	jae	.LBB0_11
# BB#7:                                 # %land.lhs.true.21
                                        #   in Loop: Header=BB0_6 Depth=2
	movzbl	3(%rax), %ecx
	movzbl	(%rax), %edx
	cmpl	%ecx, %edx
	jne	.LBB0_11
# BB#8:                                 # %land.lhs.true.26
                                        #   in Loop: Header=BB0_6 Depth=2
	movzbl	4(%rax), %ecx
	movzbl	1(%rax), %edx
	cmpl	%ecx, %edx
	jne	.LBB0_11
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB0_6 Depth=2
	movzbl	5(%rax), %ecx
	movzbl	2(%rax), %edx
	cmpl	%ecx, %edx
	jne	.LBB0_11
# BB#10:                                # %while.body.39
                                        #   in Loop: Header=BB0_6 Depth=2
	addq	$3, %rax
	incl	%r13d
	movq	%rax, 16(%rsp)
	cmpl	$255, %r13d
	jl	.LBB0_6
	.align	16, 0x90
.LBB0_11:                               # %while.end
                                        #   in Loop: Header=BB0_6 Depth=2
	movzbl	(%rax), %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movzbl	1(%rax), %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movq	16(%rsp), %rax
	movzbl	2(%rax), %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movl	%r13d, %edi
	movq	%rbx, %rsi
	callq	_IO_putc
	movq	16(%rsp), %rax
	addq	$3, %rax
	movq	%rax, 16(%rsp)
	cmpq	%r15, %rax
	movl	$0, %r13d
	jb	.LBB0_6
.LBB0_12:                               # %cleanup
                                        #   in Loop: Header=BB0_3 Depth=1
	incl	%r12d
	cmpl	836(%rbp), %r12d
	jl	.LBB0_3
.LBB0_13:                               # %for.end
	movq	24(%rbp), %rdi
	movl	$.L.str.2, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	movl	4(%rsp), %ecx           # 4-byte Reload
.LBB0_14:                               # %cleanup.58
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	miff24_print_page, .Lfunc_end0-miff24_print_page
	.cfi_endproc

	.type	miff24_procs,@object    # @miff24_procs
	.section	.rodata,"a",@progbits
	.align	8
miff24_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	miff24_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"miff24"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_miff24_device,@object # @gs_miff24_device
	.section	.rodata,"a",@progbits
	.globl	gs_miff24_device
	.align	8
gs_miff24_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	miff24_procs
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1                       # 0x1
	.long	256                     # 0x100
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
	.quad	miff24_print_page
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
	.size	gs_miff24_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"miff line buffer"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"id=ImageMagick\n"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"class=DirectClass\n"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"columns=%d\n"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"compression=RunlengthEncoded\n"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"rows=%d\n"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	":\n"
	.size	.L.str.8, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
