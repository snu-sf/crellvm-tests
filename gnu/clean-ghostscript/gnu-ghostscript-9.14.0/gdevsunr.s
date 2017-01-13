	.text
	.file	"gdevsunr.bc"
	.align	16, 0x90
	.type	sunhmono_print_page,@function
sunhmono_print_page:                    # @sunhmono_print_page
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r12d
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB0_7
# BB#1:                                 # %if.end
	leal	1(%r12), %eax
	andl	$-2, %eax
	movl	$1504078485, (%rsp)     # imm = 0x59A66A95
	movl	832(%rbx), %ecx
	movl	%ecx, 4(%rsp)
	movl	836(%rbx), %ecx
	movl	%ecx, 8(%rsp)
	movl	$1, 12(%rsp)
	imull	%ecx, %eax
	movl	%eax, 16(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	(%rsp), %rdi
	movl	$1, %esi
	movl	$32, %edx
	movq	%r14, %rcx
	callq	fwrite
	cmpl	$0, 836(%rbx)
	jle	.LBB0_6
# BB#2:                                 # %for.body.lr.ph
	movslq	%r12d, %r13
	andl	$1, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	leaq	32(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	32(%rsp), %rdi
	movl	$1, %esi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	fwrite
	testl	%r12d, %r12d
	je	.LBB0_5
# BB#4:                                 # %if.then.10
                                        #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	fputc
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	incl	%ebp
	cmpl	836(%rbx), %ebp
	jl	.LBB0_3
.LBB0_6:                                # %for.end
	movl	$.L.str.3, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	callq	fwrite
	xorl	%ebp, %ebp
.LBB0_7:                                # %out
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sunhmono_print_page, .Lfunc_end0-sunhmono_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sunhmono"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_sunhmono_device,@object # @gs_sunhmono_device
	.section	.rodata,"a",@progbits
	.globl	gs_sunhmono_device
	.align	8
gs_sunhmono_device:
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
	.quad	sunhmono_print_page
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
	.size	gs_sunhmono_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"rasterfile_print_page(in)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"};\n"
	.size	.L.str.3, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
