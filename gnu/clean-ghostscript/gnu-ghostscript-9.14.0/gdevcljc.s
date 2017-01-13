	.text
	.file	"gdevcljc.bc"
	.align	16, 0x90
	.type	cljc_print_page,@function
cljc_print_page:                        # @cljc_print_page
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
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	24(%rdi), %r12
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%rdi, %r14
	callq	gx_device_raster
	movl	%eax, %ebx
	movl	%ebx, %ebp
	shrl	$3, %ebp
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*64(%r12)
	testq	%rax, %rax
	movq	%rax, %r15
	je	.LBB0_1
# BB#2:                                 # %lor.lhs.false
	movl	$-25, 68(%rsp)          # 4-byte Folded Spill
	leal	1(%rbx,%rbp), %r13d
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.3, %edx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	*64(%r12)
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB0_3
# BB#4:                                 # %lor.lhs.false.7
	movq	%rax, %rbp
	movl	$.L.str.4, %edx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	*64(%r12)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movq	%r15, 32(%rsp)          # 8-byte Spill
	je	.LBB0_5
# BB#6:                                 # %if.end
	movq	%r14, %r15
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	callq	gdev_pcl_paper_size
	movl	%eax, %ecx
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movl	%r13d, 68(%rsp)         # 4-byte Spill
	movq	%rbx, %r14
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movl	%ecx, %edx
	callq	fprintf
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	cvttss2si	884(%r15), %edx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$8, 8(%rsp)
	movl	$8, (%rsp)
	movl	$.L.str.8, %esi
	movl	$0, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$8, %r9d
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	movslq	68(%rsp), %rdx          # 4-byte Folded Reload
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	cmpl	$0, 836(%r15)
	jle	.LBB0_7
# BB#8:
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	%eax, 68(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB0_11
# BB#10:                                # %if.end.26
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	callq	gdev_pcl_mode3compress
	movl	%eax, %r15d
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r15d, %edx
	callq	fprintf
	movslq	%r15d, %rdx
	movq	48(%rsp), %r15          # 8-byte Reload
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r13, %rcx
	callq	fwrite
	incl	%r12d
	cmpl	836(%r15), %r12d
	jl	.LBB0_9
	jmp	.LBB0_11
.LBB0_1:
	movl	$-25, 68(%rsp)          # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	%r15, %r14
	jmp	.LBB0_12
.LBB0_3:
	xorl	%r13d, %r13d
	movq	%r15, %r14
	jmp	.LBB0_12
.LBB0_5:
	xorl	%esi, %esi
	movq	%rbp, %r13
	movq	32(%rsp), %r14          # 8-byte Reload
	jmp	.LBB0_12
.LBB0_7:
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB0_11:                               # %for.end
	movl	$.L.str.11, %edi
	movq	%r13, %rsi
	callq	fputs
	movq	16(%rsp), %r12          # 8-byte Reload
	movq	%rbp, %r13
	movq	56(%rsp), %rsi          # 8-byte Reload
.LBB0_12:                               # %out
	movl	$.L.str.4, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movl	$.L.str.3, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*24(%r12)
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*24(%r12)
	movl	68(%rsp), %eax          # 4-byte Reload
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cljc_print_page, .Lfunc_end0-cljc_print_page
	.cfi_endproc

	.type	cljc_procs,@object      # @cljc_procs
	.data
	.align	8
cljc_procs:
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
	.size	cljc_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cljet5c"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_cljet5c_device,@object # @gs_cljet5c_device
	.section	.rodata,"a",@progbits
	.globl	gs_cljet5c_device
	.align	8
gs_cljet5c_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	cljc_procs
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
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
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
	.long	3259524710              # float -5.010000e+01
	.long	3259524710              # float -5.010000e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
	.long	1094738510              # float 1.202400e+01
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
	.quad	cljc_print_page
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
	.size	gs_cljet5c_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cljc_print_page(data)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cljc_print_page(cdata)"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cljc_print_page(prow)"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033E\033&u300D\033&l%dA"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033*v1N\033*v1O"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033*t4J\033*t%dR"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033*v6W%c%c%c%c%c%c"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033&l0e-180u36Z\033*p0x0Y\033*r1A\033*b3M"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033*b%dW"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033*rC\f"
	.size	.L.str.11, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
