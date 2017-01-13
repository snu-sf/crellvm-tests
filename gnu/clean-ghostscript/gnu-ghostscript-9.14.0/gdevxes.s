	.text
	.file	"gdevxes.bc"
	.align	16, 0x90
	.type	xes_print_page,@function
xes_print_page:                         # @xes_print_page
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	836(%rbp), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	24(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	200(%rcx), %rdi
	movl	$1, %edx
	movl	$.L.str.3, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, %r14
	movl	$-25, %r15d
	testq	%r14, %r14
	je	.LBB0_23
# BB#1:                                 # %for.cond.preheader.i
	cmpl	$0, 836(%rbp)
	movq	%rbp, %rdi
	jle	.LBB0_2
# BB#3:                                 # %for.body.lr.ph.i
	movl	60(%rsp), %edx          # 4-byte Reload
	movslq	%edx, %rcx
	leaq	-1(%r14,%rcx), %r15
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	movl	%edx, %r12d
	xorl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB0_4
	.align	16, 0x90
.LBB0_8:                                # %for.body.51.lr.ph.i
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	subl	%r14d, %edx
	cmpl	%edx, %r12d
	cmovlel	%r12d, %edx
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	%ebp, %ecx
	cmovll	%ebp, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%r15, %rcx
	movq	%r13, %rdi
	.align	16, 0x90
.LBB0_9:                                # %for.body.51.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rcx)
	jne	.LBB0_11
# BB#10:                                # %for.inc.55.i
                                        #   in Loop: Header=BB0_9 Depth=2
	decq	%rcx
	cmpq	%r14, %rcx
	jae	.LBB0_9
	jmp	.LBB0_12
.LBB0_11:                               # %if.then.60.i
                                        #   in Loop: Header=BB0_4 Depth=1
	subl	%r14d, %ecx
	movl	80(%rsp), %esi          # 4-byte Reload
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_4:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	movq	%rdi, %r13
	movl	%ebp, %esi
	movq	%r14, %rdx
	movl	60(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	cmpq	%r15, %r14
	movq	%r14, %rdx
	ja	.LBB0_5
	.align	16, 0x90
.LBB0_6:                                # %for.body.25.i
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rdx)
	jne	.LBB0_8
# BB#7:                                 # %for.inc.i
                                        #   in Loop: Header=BB0_6 Depth=2
	incq	%rdx
	cmpq	%r15, %rdx
	jbe	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	%r12d, %edx
	movq	%r13, %rdi
.LBB0_12:                               # %for.inc.77.i
                                        #   in Loop: Header=BB0_4 Depth=1
	incl	%ebp
	cmpl	836(%rdi), %ebp
	movl	%edx, %r12d
	jl	.LBB0_4
	jmp	.LBB0_13
.LBB0_2:
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
.LBB0_13:                               # %for.end.78.i
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	80(%rsp), %eax          # 4-byte Reload
	subl	%edx, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	leal	1(%rcx), %r13d
	movq	64(%rsp), %r14          # 8-byte Reload
	subl	%r14d, %r13d
	addl	$3, %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	leal	(%rax,%rax,2), %ebp
	leal	(%rbp,%rdx), %r15d
	movl	60(%rsp), %eax          # 4-byte Reload
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	movq	%rdx, %r12
	callq	fputs
	leal	(,%r12,8), %ecx
	movl	$3300, %r8d             # imm = 0xCE4
	subl	%r14d, %r8d
	shll	$3, %ebp
	movl	%r13d, (%rsp)
	movl	$.L.str.4, %esi
	movl	$.L.str.5, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %r9d
	callq	fprintf
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	jg	.LBB0_22
# BB#14:                                # %for.body.104.lr.ph.i
	decl	%r15d
	movl	%r15d, 20(%rsp)         # 4-byte Spill
	movslq	%r15d, %rax
	movslq	%r12d, %rcx
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %r13
	movq	%r13, 72(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_15:                               # %for.body.104.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_32 Depth 3
                                        #         Child Loop BB0_40 Depth 4
                                        #         Child Loop BB0_35 Depth 4
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %esi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%r15d, %eax
	movq	8(%rsp), %rdi           # 8-byte Reload
	jg	.LBB0_16
	.align	16, 0x90
.LBB0_25:                               # %for.body.111.i
                                        #   Parent Loop BB0_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_32 Depth 3
                                        #         Child Loop BB0_40 Depth 4
                                        #         Child Loop BB0_35 Depth 4
	movb	$0, 102(%rsp)
	movw	$0, 100(%rsp)
	leaq	1(%rdi), %rcx
	movb	(%rdi), %r15b
	movb	%r15b, 100(%rsp)
	cmpq	%r13, %rcx
	jbe	.LBB0_27
# BB#26:                                #   in Loop: Header=BB0_25 Depth=2
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_27:                               # %if.then.118.i
                                        #   in Loop: Header=BB0_25 Depth=2
	leaq	2(%rdi), %rcx
	movb	1(%rdi), %al
	movb	%al, 101(%rsp)
	movl	$2, %edx
.LBB0_28:                               # %if.end.121.i
                                        #   in Loop: Header=BB0_25 Depth=2
	cmpq	%r13, %rcx
	jbe	.LBB0_30
# BB#29:                                #   in Loop: Header=BB0_25 Depth=2
	xorl	%edx, %edx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_30:                               # %if.then.124.i
                                        #   in Loop: Header=BB0_25 Depth=2
	leaq	1(%rdi,%rdx), %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movb	(%rcx), %dl
	movb	%dl, 102(%rsp)
.LBB0_31:                               # %if.end.127.i
                                        #   in Loop: Header=BB0_25 Depth=2
	movb	%dl, %cl
	andb	$63, %cl
	addb	$63, %cl
	movb	%cl, 103(%rsp)
	shrb	$6, %dl
	movb	%al, %cl
	shlb	$2, %cl
	andb	$60, %cl
	orb	%dl, %cl
	addb	$63, %cl
	movb	%cl, 102(%rsp)
	shrb	$4, %al
	movb	%r15b, %cl
	shlb	$4, %cl
	andb	$48, %cl
	orb	%al, %cl
	addb	$63, %cl
	movb	%cl, 101(%rsp)
	shrb	$2, %r15b
	addb	$63, %r15b
	movb	%r15b, 100(%rsp)
	xorl	%r13d, %r13d
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_44:                               # %for.inc.207.for.body.161_crit_edge.i
                                        #   in Loop: Header=BB0_32 Depth=3
	movb	100(%rsp,%r13), %r15b
.LBB0_32:                               # %for.body.161.i
                                        #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_40 Depth 4
                                        #         Child Loop BB0_35 Depth 4
	movl	%r12d, %edx
	movzbl	%bpl, %r14d
	movzbl	%r15b, %eax
	cmpl	%r14d, %eax
	jne	.LBB0_37
# BB#33:                                # %if.then.167.i
                                        #   in Loop: Header=BB0_32 Depth=3
	incl	%edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	movb	%r15b, %bpl
	movl	%edx, %r12d
	jne	.LBB0_43
# BB#34:                                # %if.then.171.i
                                        #   in Loop: Header=BB0_32 Depth=3
	movl	$.L.str.6, %esi
	movl	$32767, %edx            # imm = 0x7FFF
	xorl	%eax, %eax
	leaq	92(%rsp), %rdi
	callq	gs_sprintf
	cltq
	movb	$0, 92(%rsp,%rax)
	movb	92(%rsp), %al
	testb	%al, %al
	leaq	93(%rsp), %rbp
	je	.LBB0_36
	.align	16, 0x90
.LBB0_35:                               # %for.body.178.i
                                        #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        #       Parent Loop BB0_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	movb	(%rbp), %al
	incq	%rbp
	testb	%al, %al
	jne	.LBB0_35
.LBB0_36:                               # %for.end.183.i
                                        #   in Loop: Header=BB0_32 Depth=3
	movl	%r14d, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	jmp	.LBB0_43
	.align	16, 0x90
.LBB0_37:                               # %if.else.i
                                        #   in Loop: Header=BB0_32 Depth=3
	movl	$1, %r12d
	testl	%edx, %edx
	je	.LBB0_42
# BB#38:                                # %if.else.i
                                        #   in Loop: Header=BB0_32 Depth=3
	cmpl	$1, %edx
	je	.LBB0_41
# BB#39:                                # %sw.default.i
                                        #   in Loop: Header=BB0_32 Depth=3
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	leaq	92(%rsp), %rdi
	callq	gs_sprintf
	cltq
	movb	$0, 92(%rsp,%rax)
	movb	92(%rsp), %al
	testb	%al, %al
	leaq	93(%rsp), %rbp
	je	.LBB0_41
	.align	16, 0x90
.LBB0_40:                               # %for.body.196.i
                                        #   Parent Loop BB0_15 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        #       Parent Loop BB0_32 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movsbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	movb	(%rbp), %al
	incq	%rbp
	testb	%al, %al
	jne	.LBB0_40
.LBB0_41:                               # %for.end.201.i
                                        #   in Loop: Header=BB0_32 Depth=3
	movl	%r14d, %edi
	movq	%rbx, %rsi
	callq	fputc
.LBB0_42:                               # %for.inc.207.i
                                        #   in Loop: Header=BB0_32 Depth=3
	movb	%r15b, %bpl
.LBB0_43:                               # %for.inc.207.i
                                        #   in Loop: Header=BB0_32 Depth=3
	incq	%r13
	cmpq	$4, %r13
	jne	.LBB0_44
# BB#24:                                # %for.cond.108.loopexit.i
                                        #   in Loop: Header=BB0_25 Depth=2
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	cmpq	%r13, %rdi
	jbe	.LBB0_25
.LBB0_16:                               # %for.inc.211.i
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %eax
	leal	1(%rax), %eax
	movl	%eax, %r14d
	movl	20(%rsp), %r15d         # 4-byte Reload
	jl	.LBB0_15
# BB#17:                                # %for.end.213.i
	testl	%r12d, %r12d
	je	.LBB0_22
# BB#18:                                # %for.end.213.i
	cmpl	$1, %r12d
	je	.LBB0_21
# BB#19:                                # %sw.default.217.i
	leaq	92(%rsp), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movl	%r12d, %edx
	callq	gs_sprintf
	cltq
	movb	$0, 92(%rsp,%rax)
	movb	92(%rsp), %al
	testb	%al, %al
	leaq	93(%rsp), %r14
	je	.LBB0_21
	.align	16, 0x90
.LBB0_20:                               # %for.body.225.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%al, %edi
	movq	%rbx, %rsi
	callq	fputc
	movb	(%r14), %al
	incq	%r14
	testb	%al, %al
	jne	.LBB0_20
.LBB0_21:                               # %for.end.230.i
	movzbl	%bpl, %edi
	movq	%rbx, %rsi
	callq	fputc
.LBB0_22:                               # %sw.epilog.233.i
	xorl	%r15d, %r15d
	movl	$.L.str.7, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movq	%rbx, %rdi
	callq	fflush
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
.LBB0_23:                               # %sixel_print_page.exit
	movl	%r15d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xes_print_page, .Lfunc_end0-xes_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	sixel_output_page,@function
sixel_output_page:                      # @sixel_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB1_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gdev_prn_output_page    # TAILCALL
.LBB1_1:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sixel_output_page, .Lfunc_end1-sixel_output_page
	.cfi_endproc

	.type	xes_procs,@object       # @xes_procs
	.data
	.align	8
xes_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	sixel_output_page
	.quad	gdev_prn_close
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
	.size	xes_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"xes"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_xes_device,@object   # @gs_xes_device
	.data
	.globl	gs_xes_device
	.align	8
gs_xes_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	xes_procs
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
	.long	0                       # float 0.000000e+00
	.long	1105618534              # float 2.880000e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
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
	.quad	xes_print_page
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
	.size	gs_xes_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\033+X\n"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sixel_print_page"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s%d,%d,%d,%d\n"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033gw1;"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%d"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\f%s"
	.size	.L.str.7, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
