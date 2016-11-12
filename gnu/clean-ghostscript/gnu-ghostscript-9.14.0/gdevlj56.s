	.text
	.file	"gdevlj56.bc"
	.align	16, 0x90
	.type	ljet5_print_page,@function
ljet5_print_page:                       # @ljet5_print_page
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
	subq	$616, %rsp              # imm = 0x268
.Ltmp6:
	.cfi_def_cfa_offset 672
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
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	24(%r13), %r14
	xorl	%esi, %esi
	callq	gx_device_raster
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	%eax, %ecx
	leaq	7(%rcx), %r12
	shrq	$3, %r12
	imulq	$33818641, %rcx, %rdx   # imm = 0x2040811
	shrq	$32, %rdx
	movl	%eax, %ecx
	subl	%edx, %ecx
	shrl	%ecx
	addl	%edx, %ecx
	shrl	$6, %ecx
	leal	1(%rax,%rcx), %ebp
	movl	$8, %edx
	movl	$.L.str.3, %ecx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	*88(%r14)
	movq	%rax, %rbx
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	*64(%r14)
	movq	%rax, %r15
	testq	%rbx, %rbx
	movl	$-25, %ebp
	je	.LBB0_13
# BB#1:                                 # %entry
	testq	%r15, %r15
	je	.LBB0_13
# BB#2:                                 # %if.end
	leaq	264(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	s_init
	leaq	64(%rsp), %rdx
	movl	$200, %ecx
	movq	%rbp, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	swrite_file
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	px_write_page_header
	movq	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	px_write_select_media
	movl	$ljet5_print_page.page_header, %esi
	movl	$9, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
	movzwl	108(%r13), %eax
	leaq	264(%rsp), %rdi
	cmpl	$1, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then.16
	movl	$ljet5_print_page.mono_header, %esi
	movl	$16, %edx
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
	movl	$ljet5_print_page.gray_header, %esi
	movl	$5, %edx
.LBB0_5:                                # %if.end.17
	callq	px_put_bytes
	movl	832(%r13), %esi
	leaq	264(%rsp), %rbp
	movq	%rbp, %rdi
	callq	px_put_us
	movl	$108, %esi
	movq	%rbp, %rdi
	callq	px_put_a
	movl	836(%r13), %esi
	movq	%rbp, %rdi
	callq	px_put_us
	movl	$107, %esi
	movq	%rbp, %rdi
	callq	px_put_a
	movl	832(%r13), %esi
	movl	836(%r13), %edx
	movq	%rbp, %rdi
	callq	px_put_usp
	movzwl	108(%r13), %eax
	cmpl	$1, %eax
	jne	.LBB0_7
# BB#6:                                 # %if.then.25
	movq	%r14, 32(%rsp)          # 8-byte Spill
	leaq	264(%rsp), %rdi
	movl	$ljet5_print_page.mono_image_header, %esi
	jmp	.LBB0_8
.LBB0_7:                                # %if.else.26
	movq	%r14, 32(%rsp)          # 8-byte Spill
	leaq	264(%rsp), %rdi
	movl	$ljet5_print_page.gray_image_header, %esi
.LBB0_8:                                # %for.cond.preheader
	movl	$11, %edx
	callq	px_put_bytes
	movl	$0, 48(%rsp)            # 4-byte Folded Spill
	cmpl	$0, 836(%r13)
	jle	.LBB0_12
# BB#9:                                 # %for.body.lr.ph
	leaq	(%rbx,%r12,8), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	leaq	264(%rsp), %rbp
	.align	16, 0x90
.LBB0_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%rbx, %rdx
	movq	56(%rsp), %rcx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	%eax, 48(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB0_12
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	px_put_us
	movl	$ljet5_print_page.line_header, %esi
	movl	$12, %edx
	movq	%rbp, %rdi
	callq	px_put_bytes
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %rdx
	callq	gdev_pcl_mode2compress_padded
	movq	%r13, %r14
	movl	%eax, %r13d
	movq	%rbp, %rdi
	movl	%r13d, %esi
	callq	px_put_data_length
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movq	%r14, %r13
	callq	px_put_bytes
	incl	%r12d
	cmpl	836(%r13), %r12d
	jl	.LBB0_10
.LBB0_12:                               # %fin
	leaq	264(%rsp), %r14
	movl	$178, %esi
	movq	%r14, %rdi
	callq	spputc
	movl	$68, %esi
	movq	%r14, %rdi
	callq	spputc
	movq	%r14, %rdi
	callq	*472(%rsp)
	movq	32(%rsp), %r14          # 8-byte Reload
	movl	48(%rsp), %ebp          # 4-byte Reload
.LBB0_13:                               # %cleanup.44
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	movl	%ebp, %eax
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ljet5_print_page, .Lfunc_end0-ljet5_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	ljet5_open,@function
ljet5_open:                             # @ljet5_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	subq	$408, %rsp              # imm = 0x198
.Ltmp15:
	.cfi_def_cfa_offset 432
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	callq	gdev_prn_open
	testl	%eax, %eax
	js	.LBB1_3
# BB#1:                                 # %if.end
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB1_3
# BB#2:                                 # %if.end.4
	movq	24(%rbx), %rsi
	leaq	56(%rsp), %r14
	movq	%r14, %rdi
	callq	s_init
	movq	17176(%rbx), %rsi
	leaq	(%rsp), %rdx
	movl	$50, %ecx
	movq	%r14, %rdi
	callq	swrite_file
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	px_write_file_header
	movq	%r14, %rdi
	callq	*264(%rsp)
	xorl	%eax, %eax
.LBB1_3:                                # %cleanup
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	ljet5_open, .Lfunc_end1-ljet5_open
	.cfi_endproc

	.align	16, 0x90
	.type	ljet5_close,@function
ljet5_close:                            # @ljet5_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB2_1
# BB#2:                                 # %if.end
	movq	17176(%rbx), %rdi
	callq	px_write_file_trailer
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.LBB2_1:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	ljet5_close, .Lfunc_end2-ljet5_close
	.cfi_endproc

	.type	ljet5_procs,@object     # @ljet5_procs
	.section	.rodata,"a",@progbits
	.align	8
ljet5_procs:
	.quad	ljet5_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	ljet5_close
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
	.size	ljet5_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lj5mono"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_lj5mono_device,@object # @gs_lj5mono_device
	.section	.rodata,"a",@progbits
	.globl	gs_lj5mono_device
	.align	8
gs_lj5mono_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	ljet5_procs
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	ljet5_print_page
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
	.size	gs_lj5mono_device, 18472

	.type	lj5gray_procs,@object   # @lj5gray_procs
	.align	8
lj5gray_procs:
	.quad	ljet5_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	ljet5_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
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
	.size	lj5gray_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"lj5gray"
	.size	.L.str.2, 8

	.type	gs_lj5gray_device,@object # @gs_lj5gray_device
	.section	.rodata,"a",@progbits
	.globl	gs_lj5gray_device
	.align	8
gs_lj5gray_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	lj5gray_procs
	.quad	.L.str.2
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
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	ljet5_print_page
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
	.size	gs_lj5gray_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"ljet5(line)"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ljet5(out)"
	.size	.L.str.4, 11

	.type	ljet5_print_page.page_header,@object # @ljet5_print_page.page_header
	.section	.rodata,"a",@progbits
ljet5_print_page.page_header:
	.ascii	"C\321\000\000\000\000\370Lk"
	.size	ljet5_print_page.page_header, 9

	.type	ljet5_print_page.mono_header,@object # @ljet5_print_page.mono_header
	.align	16
ljet5_print_page.mono_header:
	.ascii	"\300\001\370\003\300\002\370\002\310\300\002\377\000\370\006j"
	.size	ljet5_print_page.mono_header, 16

	.type	ljet5_print_page.gray_header,@object # @ljet5_print_page.gray_header
ljet5_print_page.gray_header:
	.ascii	"\300\001\370\003j"
	.size	ljet5_print_page.gray_header, 5

	.type	ljet5_print_page.mono_image_header,@object # @ljet5_print_page.mono_image_header
ljet5_print_page.mono_image_header:
	.ascii	"\370g\300\001\370d\300\000\370b\260"
	.size	ljet5_print_page.mono_image_header, 11

	.type	ljet5_print_page.gray_image_header,@object # @ljet5_print_page.gray_image_header
ljet5_print_page.gray_image_header:
	.ascii	"\370g\300\000\370d\300\002\370b\260"
	.size	ljet5_print_page.gray_image_header, 11

	.type	ljet5_print_page.line_header,@object # @ljet5_print_page.line_header
ljet5_print_page.line_header:
	.ascii	"\370m\301\001\000\370c\300\001\370e\261"
	.size	ljet5_print_page.line_header, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
