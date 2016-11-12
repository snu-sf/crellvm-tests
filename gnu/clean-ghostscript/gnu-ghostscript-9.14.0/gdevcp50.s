	.text
	.file	"gdevcp50.bc"
	.align	16, 0x90
	.type	cp50_print_page,@function
cp50_print_page:                        # @cp50_print_page
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
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	24(%rbx), %rcx
	movq	200(%rcx), %rdi
	movl	$1, %edx
	movl	$.L.str.2, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, %rbp
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$379200, %esi           # imm = 0x5C940
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$379200, %esi           # imm = 0x5C940
	movl	$1, %edx
	movl	$.L.str.4, %ecx
	callq	*88(%rdi)
	movq	%rax, %r13
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$379200, %esi           # imm = 0x5C940
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$379200, %esi           # imm = 0x5C940
	movl	$1, %edx
	movl	$.L.str.6, %ecx
	callq	*88(%rdi)
	movq	%rax, %r15
	testq	%rbp, %rbp
	je	.LBB0_5
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB0_5
# BB#2:                                 # %entry
	testq	%r13, %r13
	je	.LBB0_5
# BB#3:                                 # %entry
	testq	%r12, %r12
	je	.LBB0_5
# BB#4:                                 # %entry
	testq	%r15, %r15
	je	.LBB0_5
# BB#15:                                # %if.end.81
	movl	$-1, %esi
	movl	$379200, %edx           # imm = 0x5C940
	movq	%r14, %rdi
	callq	memset
	movl	$-1, %esi
	movl	$379200, %edx           # imm = 0x5C940
	movq	%r13, %rdi
	callq	memset
	movl	$-1, %esi
	movl	$379200, %edx           # imm = 0x5C940
	movq	%r12, %rdi
	callq	memset
	movl	$-1, %esi
	movl	$379200, %edx           # imm = 0x5C940
	movq	%r15, %rdi
	movq	%r15, (%rsp)            # 8-byte Spill
	callq	memset
	xorl	%ebx, %ebx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r15, %rdi
	callq	fprintf
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movq	24(%rsp), %rax          # 8-byte Reload
	movb	18472(%rax), %al
	movb	%al, 37(%rsp)
	leaq	37(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite
	movb	$1, 39(%rsp)
	movb	$-38, 38(%rsp)
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	leaq	39(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite
	leaq	38(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fwrite
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	movl	$140, %r15d
	.align	16, 0x90
.LBB0_16:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
	movq	24(%rsp), %rdi          # 8-byte Reload
	movl	%r15d, %esi
	movq	%rbp, %rdx
	movl	20(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	$182, %eax
	movq	%rbx, %rcx
	.align	16, 0x90
.LBB0_17:                               # %for.body
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-2(%rbp,%rax), %dl
	movb	%dl, (%r14,%rcx)
	movb	-1(%rbp,%rax), %dl
	movb	%dl, (%r13,%rcx)
	movb	(%rbp,%rax), %dl
	movb	%dl, (%r12,%rcx)
	incq	%rcx
	addq	$3, %rax
	cmpq	$1604, %rax             # imm = 0x644
	jne	.LBB0_17
# BB#18:                                # %for.end
                                        #   in Loop: Header=BB0_16 Depth=1
	incq	%r15
	addq	$474, %rbx              # imm = 0x1DA
	cmpq	$934, %r15              # imm = 0x3A6
	jne	.LBB0_16
# BB#19:                                # %for.cond.127.preheader.preheader
	movq	(%rsp), %r15            # 8-byte Reload
	leaq	1(%r15), %r8
	movq	%r14, %rcx
	addq	$378726, %rcx           # imm = 0x5C766
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_20:                               # %for.cond.127.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	movq	%rcx, %rsi
	movq	%r8, %rdi
	movl	$801, %ebx              # imm = 0x321
	.align	16, 0x90
.LBB0_21:                               # %for.body.130
                                        #   Parent Loop BB0_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rsi), %al
	movb	%al, -1(%rdi)
	movb	-474(%rsi), %al
	movb	%al, (%rdi)
	addq	$-2, %rbx
	addq	$2, %rdi
	addq	$-948, %rsi             # imm = 0xFFFFFFFFFFFFFC4C
	cmpq	$1, %rbx
	jg	.LBB0_21
# BB#22:                                # %for.inc.142
                                        #   in Loop: Header=BB0_20 Depth=1
	incq	%rdx
	addq	$800, %r8               # imm = 0x320
	incq	%rcx
	cmpq	$474, %rdx              # imm = 0x1DA
	jne	.LBB0_20
# BB#23:                                # %for.end.144
	movl	$1, %esi
	movl	$379200, %edx           # imm = 0x5C940
	movq	%r15, %rdi
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	fwrite
	leaq	1(%r15), %r8
	movq	%r13, %rcx
	addq	$378726, %rcx           # imm = 0x5C766
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_24:                               # %for.cond.150.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
	movq	%rcx, %rsi
	movq	%r8, %rdi
	movl	$801, %ebx              # imm = 0x321
	.align	16, 0x90
.LBB0_25:                               # %for.body.153
                                        #   Parent Loop BB0_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rsi), %al
	movb	%al, -1(%rdi)
	movb	-474(%rsi), %al
	movb	%al, (%rdi)
	addq	$-2, %rbx
	addq	$2, %rdi
	addq	$-948, %rsi             # imm = 0xFFFFFFFFFFFFFC4C
	cmpq	$1, %rbx
	jg	.LBB0_25
# BB#26:                                # %for.inc.166
                                        #   in Loop: Header=BB0_24 Depth=1
	incq	%rdx
	addq	$800, %r8               # imm = 0x320
	incq	%rcx
	cmpq	$474, %rdx              # imm = 0x1DA
	jne	.LBB0_24
# BB#27:                                # %for.end.168
	movl	$1, %esi
	movl	$379200, %edx           # imm = 0x5C940
	movq	%r15, %rdi
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	fwrite
	movq	%r15, %r8
	incq	%r8
	movq	%r12, %rcx
	addq	$378726, %rcx           # imm = 0x5C766
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_28:                               # %for.cond.174.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
	movq	%rcx, %rsi
	movq	%r8, %rdi
	movl	$801, %ebx              # imm = 0x321
	.align	16, 0x90
.LBB0_29:                               # %for.body.177
                                        #   Parent Loop BB0_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rsi), %al
	movb	%al, -1(%rdi)
	movb	-474(%rsi), %al
	movb	%al, (%rdi)
	addq	$-2, %rbx
	addq	$2, %rdi
	addq	$-948, %rsi             # imm = 0xFFFFFFFFFFFFFC4C
	cmpq	$1, %rbx
	jg	.LBB0_29
# BB#30:                                # %for.inc.190
                                        #   in Loop: Header=BB0_28 Depth=1
	incq	%rdx
	addq	$800, %r8               # imm = 0x320
	incq	%rcx
	cmpq	$474, %rdx              # imm = 0x1DA
	jne	.LBB0_28
# BB#31:                                # %for.end.192
	movl	$1, %esi
	movl	$379200, %edx           # imm = 0x5C940
	movq	%r15, %rdi
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	fwrite
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%ebx, %ebx
	jmp	.LBB0_32
.LBB0_5:                                # %if.then
	testq	%rbp, %rbp
	je	.LBB0_7
# BB#6:                                 # %if.then.39
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.2, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB0_7:                                # %if.end
	testq	%r14, %r14
	je	.LBB0_9
# BB#8:                                 # %if.then.46
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB0_9:                                # %if.end.53
	testq	%r13, %r13
	je	.LBB0_11
# BB#10:                                # %if.then.55
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.4, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB0_11:                               # %if.end.62
	testq	%r12, %r12
	je	.LBB0_13
# BB#12:                                # %if.then.64
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
.LBB0_13:                               # %if.end.71
	movl	$-1, %ebx
	testq	%r15, %r15
	je	.LBB0_32
# BB#14:                                # %if.then.73
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB0_32:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cp50_print_page, .Lfunc_end0-cp50_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	cp50_output_page,@function
cp50_output_page:                       # @cp50_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB1_1
# BB#2:                                 # %if.end
	movl	%r15d, 18472(%rbx)
	movq	17176(%rbx), %rsi
	movq	%rbx, %rdi
	callq	*12968(%rbx)
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	gdev_prn_close_printer
	movl	%eax, %r13d
	cmpq	$0, 17184(%rbx)
	je	.LBB1_4
# BB#3:                                 # %if.then.4
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	*gs_clist_device_procs+24(%rip)
	movl	%eax, %r12d
.LBB1_4:                                # %if.end.6
	testl	%ebp, %ebp
	js	.LBB1_7
# BB#5:                                 # %if.end.9
	testl	%r13d, %r13d
	movl	%r13d, %ebp
	js	.LBB1_7
# BB#6:                                 # %if.end.12
	testl	%r12d, %r12d
	movl	%r12d, %ebp
	js	.LBB1_7
# BB#8:                                 # %if.end.15
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_finish_output_page   # TAILCALL
.LBB1_1:
	movl	%r12d, %ebp
.LBB1_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cp50_output_page, .Lfunc_end1-cp50_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	cp50_rgb_color,@function
cp50_rgb_color:                         # @cp50_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$8, %eax
	andl	$16711680, %eax         # imm = 0xFF0000
	movzwl	2(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orq	%rax, %rcx
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	orq	%rcx, %rax
	retq
.Lfunc_end2:
	.size	cp50_rgb_color, .Lfunc_end2-cp50_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	cp50_color_rgb,@function
cp50_color_rgb:                         # @cp50_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movzbl	%al, %ecx
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, 4(%rdx)
	movzbl	%ah, %ecx  # NOREX
	imull	$257, %ecx, %ecx        # imm = 0x101
	movw	%cx, 2(%rdx)
	shrl	$16, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	cp50_color_rgb, .Lfunc_end3-cp50_color_rgb
	.cfi_endproc

	.type	cp50_procs,@object      # @cp50_procs
	.data
	.align	8
cp50_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	cp50_output_page
	.quad	gdev_prn_close
	.quad	cp50_rgb_color
	.quad	cp50_color_rgb
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
	.size	cp50_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cp50"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_cp50_device,@object  # @gs_cp50_device
	.section	.rodata,"a",@progbits
	.globl	gs_cp50_device
	.align	8
gs_cp50_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	cp50_procs
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
	.long	601                     # 0x259
	.long	1103                    # 0x44f
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1133280854              # float 2.809870e+02
	.long	1137989533              # float 4.246845e+02
	.zero	16
	.long	0                       # 0x0
	.long	1125777408              # float 1.540000e+02
	.long	1127940096              # float 1.870000e+02
	.long	1125777408              # float 1.540000e+02
	.long	1127940096              # float 1.870000e+02
	.long	3262135665              # float -6.006000e+01
	.long	3272359936              # float -1.402500e+02
	.long	1105241047              # float 2.808000e+01
	.long	1115884093              # float 6.552000e+01
	.long	1106750996              # float 3.096000e+01
	.long	1113063424              # float 5.400000e+01
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
	.quad	cp50_print_page
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
	.size	gs_cp50_device, 18480

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cp50_print_page(out)"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cp50_print_page(r_plane)"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cp50_print_page(g_plane)"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cp50_print_page(b_plane)"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cp50_print_page(t_plane)"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033A"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033F\b\001"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033F\b\003"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033N"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033S2"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\001"
	.size	.L.str.12, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
