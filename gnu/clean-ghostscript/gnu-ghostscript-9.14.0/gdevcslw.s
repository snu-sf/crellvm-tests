	.text
	.file	"gdevcslw.bc"
	.align	16, 0x90
	.type	coslw_print_page,@function
coslw_print_page:                       # @coslw_print_page
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%rdi, %r14
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movslq	%eax, %r13
	addq	$7, %r13
	movl	%r13d, %r12d
	andl	$-8, %r12d
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$8, %edx
	movl	$.L.str.3, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	gdev_prn_print_scan_lines
	movl	%eax, %ebp
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB0_16
# BB#1:                                 # %if.end
	movl	%r12d, %edx
	shlq	$3, %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	xorl	%ecx, %ecx
	subl	832(%r14), %ecx
	movq	$-1, %rax
	shlq	%cl, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	jle	.LBB0_15
# BB#2:                                 # %for.body.lr.ph
	andq	$-8, %r13
	leaq	(%r13,%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_10 Depth 2
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	%rbx, %rdx
	movl	48(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	js	.LBB0_4
# BB#5:                                 # %if.end.22
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	andq	%rcx, -8(%rdx)
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB0_6:                                # %while.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r13
	cmpq	%rbx, %r13
	jbe	.LBB0_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	-8(%r13), %rcx
	cmpq	$0, -8(%r13)
	je	.LBB0_6
.LBB0_8:                                # %while.end
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpq	%rbx, %r13
	je	.LBB0_17
# BB#9:                                 # %while.cond.33.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, 52(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	jle	.LBB0_11
	.align	16, 0x90
.LBB0_10:                               # %while.body.36
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, %ebp              # imm = 0x100
	movl	$255, %r14d
	cmovll	%ebp, %r14d
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	fprintf
	subl	%r14d, %ebp
	jg	.LBB0_10
.LBB0_11:                               # %while.end.43
                                        #   in Loop: Header=BB0_3 Depth=1
	subl	%ebx, %r13d
	cmpl	$56, %r13d
	movl	$56, %eax
	cmovgl	%eax, %r13d
	cmpl	%r13d, 20(%rsp)         # 4-byte Folded Reload
	je	.LBB0_13
# BB#12:                                # %if.then.51
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	fprintf
	movl	%r13d, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
.LBB0_13:                               # %if.end.53
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$.L.str.6, %edi
	movq	%r15, %rsi
	callq	fputs
	movslq	%r13d, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%r15, %rcx
	callq	fwrite
	movq	8(%rsp), %r14           # 8-byte Reload
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_17:                               # %if.then.31
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, 52(%rsp)          # 4-byte Spill
	incl	%ebp
.LBB0_14:                               # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	incl	%r12d
	cmpl	%eax, %r12d
	jl	.LBB0_3
	jmp	.LBB0_15
.LBB0_4:
	movl	%eax, 52(%rsp)          # 4-byte Spill
.LBB0_15:                               # %for.end
	movl	$.L.str.7, %edi
	movq	%r15, %rsi
	callq	fputs
	movq	24(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	52(%rsp), %eax          # 4-byte Reload
.LBB0_16:                               # %cleanup.64
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	coslw_print_page, .Lfunc_end0-coslw_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"coslw2p"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_coslw2p_device,@object # @gs_coslw2p_device
	.section	.rodata,"a",@progbits
	.globl	gs_coslw2p_device
	.align	8
gs_coslw2p_device:
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
	.long	2560                    # 0xa00
	.long	5120                    # 0x1400
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1152647168              # float 1.440000e+03
	.long	1161035776              # float 2.880000e+03
	.zero	16
	.long	0                       # 0x0
	.long	1124073472              # float 1.280000e+02
	.long	1124073472              # float 1.280000e+02
	.long	1124073472              # float 1.280000e+02
	.long	1124073472              # float 1.280000e+02
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
	.quad	coslw_print_page
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
	.size	gs_coslw2p_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"coslwxl"
	.size	.L.str.2, 8

	.type	gs_coslwxl_device,@object # @gs_coslwxl_device
	.section	.rodata,"a",@progbits
	.globl	gs_coslwxl_device
	.align	8
gs_coslwxl_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	4080                    # 0xff0
	.long	8160                    # 0x1fe0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1152647168              # float 1.440000e+03
	.long	1161035776              # float 2.880000e+03
	.zero	16
	.long	0                       # 0x0
	.long	1129054208              # float 2.040000e+02
	.long	1129054208              # float 2.040000e+02
	.long	1129054208              # float 2.040000e+02
	.long	1129054208              # float 2.040000e+02
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
	.quad	coslw_print_page
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
	.size	gs_coslwxl_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"coslw_print_page"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033f\001%c"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033D%c"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\026"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033E"
	.size	.L.str.7, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
