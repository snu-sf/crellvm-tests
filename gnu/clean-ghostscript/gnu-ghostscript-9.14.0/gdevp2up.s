	.text
	.file	"gdevp2up.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pcx2up_print_page,@function
pcx2up_print_page:                      # @pcx2up_print_page
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$9056, %rsp             # imm = 0x2360
.Ltmp5:
	.cfi_def_cfa_offset 9104
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	cmpl	$0, 18472(%r14)
	je	.LBB0_8
# BB#1:                                 # %if.else
	movss	884(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	leaq	48(%rsp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_save_page
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_7
# BB#2:                                 # %if.end
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	gs_pcx2up_device(%rip), %r15
	leaq	18480(%r14), %r12
	movq	%r12, 16(%rsp)
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	movq	%rbx, 32(%rsp)
	leal	(%rax,%rax,2), %eax
	addl	832(%r14), %eax
	movl	%eax, 40(%rsp)
	movl	$0, 44(%rsp)
	movq	24(%r14), %rdi
	movl	$.L.str.2, %edx
	movl	%r15d, %esi
	callq	*64(%rdi)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB0_7
# BB#3:                                 # %if.end.25
	movl	$gs_pcx2up_device, %esi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movq	%rbx, %rdi
	callq	check_device_separable
	movq	%rbx, %rdi
	callq	gx_device_fill_in_procs
	movq	gs_pcx256_device+1144(%rip), %rax
	movq	%rax, 1144(%rbx)
	movq	gs_pcx256_device+12968(%rip), %rcx
	movq	%rcx, 12968(%rbx)
	movups	8968(%r12), %xmm0
	movups	%xmm0, 1080(%rbx)
	movq	$0, 1064(%rbx)
	movq	1088(%rbx), %rcx
	movq	%rcx, 1072(%rbx)
	movl	1080(%rbx), %ecx
	movl	%ecx, 832(%rbx)
	movl	$0, 17156(%rbx)
	movq	%rbx, %rdi
	callq	*%rax
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_7
# BB#4:                                 # %if.end.45
	movl	$1, 84(%rbx)
	movq	17176(%r14), %rax
	movq	%rax, 17176(%rbx)
	leaq	16(%rsp), %rsi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	gdev_prn_render_pages
	movl	%eax, %ebp
	cmpq	$0, 17176(%r14)
	je	.LBB0_6
# BB#5:                                 # %if.then.52
	movq	$0, 17176(%rbx)
.LBB0_6:                                # %if.end.54
	movq	%rbx, %rdi
	callq	gs_closedevice
	movl	$0, 18472(%r14)
.LBB0_7:                                # %cleanup.62
	movl	%ebp, %eax
	addq	$9056, %rsp             # imm = 0x2360
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_8:                                # %if.then
	movl	$1, 18472(%r14)
	leaq	18480(%r14), %rsi
	movq	%r14, %rdi
	addq	$9056, %rsp             # imm = 0x2360
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gdev_prn_save_page      # TAILCALL
.Lfunc_end0:
	.size	pcx2up_print_page, .Lfunc_end0-pcx2up_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pcx2up_open,@function
pcx2up_open:                            # @pcx2up_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 64
.Ltmp13:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1096(%rbx), %rax
	movq	%rax, 32(%rsp)
	movups	1064(%rbx), %xmm0
	movups	1080(%rbx), %xmm1
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	$0, 1064(%rbx)
	movl	832(%rbx), %eax
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	cvttsd2si	%xmm0, %ecx
	leal	(%rcx,%rax,2), %eax
	movl	%eax, 1080(%rbx)
	movq	$500000, 1088(%rbx)     # imm = 0x7A120
	callq	gdev_prn_open
	movq	32(%rsp), %rcx
	movq	%rcx, 1096(%rbx)
	movaps	(%rsp), %xmm0
	movaps	16(%rsp), %xmm1
	movups	%xmm1, 1080(%rbx)
	movups	%xmm0, 1064(%rbx)
	movl	$0, 18472(%rbx)
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	pcx2up_open, .Lfunc_end1-pcx2up_open
	.cfi_endproc

	.type	pcx2up_procs,@object    # @pcx2up_procs
	.section	.rodata,"a",@progbits
	.align	8
pcx2up_procs:
	.quad	pcx2up_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	pc_8bit_map_rgb_color
	.quad	pc_8bit_map_color_rgb
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
	.size	pcx2up_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pcx2up"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_pcx2up_device,@object # @gs_pcx2up_device
	.data
	.globl	gs_pcx2up_device
	.align	8
gs_pcx2up_device:
	.long	27488                   # 0x6b60
	.zero	4
	.quad	pcx2up_procs
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
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	6                       # 0x6
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
	.quad	pcx2up_print_page
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
	.long	0                       # 0x0
	.zero	4
	.zero	9008
	.size	gs_pcx2up_device, 27488

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"pcx2up_print_page(device)"
	.size	.L.str.2, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
