	.text
	.file	"gdevtknk.bc"
	.align	16, 0x90
	.type	tekink_print_page,@function
tekink_print_page:                      # @tekink_print_page
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
	subq	$136, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 192
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
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	%r15, 80(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	832(%r15), %edx
	leal	7(%rdx), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rdx,%rcx), %ebp
	sarl	$3, %ebp
	leal	4(%rax,%rbp,4), %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	movq	%rcx, %r14
	je	.LBB0_54
# BB#1:                                 # %if.end
	movl	$.L.str, %edi
	callq	strlen
	movq	16(%r15), %rdi
	cmpq	$3, %rax
	ja	.LBB0_9
# BB#2:                                 # %cond.true
	movzbl	(%rdi), %r12d
	addl	$-116, %r12d
	testq	%rax, %rax
	je	.LBB0_10
# BB#3:                                 # %cond.true
	testl	%r12d, %r12d
	jne	.LBB0_10
# BB#4:                                 # %if.then.26
	movzbl	1(%rdi), %r12d
	addl	$-101, %r12d
	cmpq	$2, %rax
	jb	.LBB0_10
# BB#5:                                 # %if.then.26
	testl	%r12d, %r12d
	jne	.LBB0_10
# BB#6:                                 # %if.then.36
	movzbl	2(%rdi), %r12d
	addl	$-107, %r12d
	cmpq	$3, %rax
	jb	.LBB0_10
# BB#7:                                 # %if.then.36
	testl	%r12d, %r12d
	jne	.LBB0_10
# BB#8:                                 # %if.then.46
	movzbl	3(%rdi), %r12d
	addl	$-52, %r12d
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false
	movl	$.L.str, %esi
	callq	strcmp
	movl	%eax, %r12d
.LBB0_10:                               # %cond.end
	movl	%r12d, 76(%rsp)         # 4-byte Spill
	movl	836(%r15), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB0_50
# BB#11:                                # %for.body.lr.ph
	leal	1(%rbp), %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movslq	%ecx, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%r14, 48(%rsp)          # 8-byte Spill
	leaq	(%r14,%rcx), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movslq	%eax, %r13
	movq	%r13, 104(%rsp)         # 8-byte Spill
	leaq	(%rdx,%r13), %rsi
	leaq	(%rsi,%r13), %rdi
	leal	4(,%rbp,4), %eax
	leaq	1(%rdx), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	incq	%rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	leaq	(%rdi,%r13), %rdx
	incq	%rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	incq	%rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	cltq
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movslq	%ebp, %rax
	movq	%r14, %rbp
	addq	%rcx, %rax
	leaq	1(%rbp,%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB0_12:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movq	64(%rsp), %rcx          # 8-byte Reload
	callq	gdev_prn_copy_scan_lines
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movl	$1, %edx
	movq	88(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_13
# BB#14:                                #   in Loop: Header=BB0_12 Depth=1
	movb	$-128, %cl
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	xorl	%r13d, %r13d
	movq	(%rsp), %r9             # 8-byte Reload
	movq	16(%rsp), %r10          # 8-byte Reload
	movq	24(%rsp), %r11          # 8-byte Reload
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%rbp, %rax
	.align	16, 0x90
.LBB0_15:                               # %for.body.71
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %ebp
	xorl	%edi, %edi
	testb	$1, %bpl
	movl	$0, %ebx
	je	.LBB0_17
# BB#16:                                # %for.body.71
                                        #   in Loop: Header=BB0_15 Depth=2
	movb	%cl, %bl
.LBB0_17:                               # %for.body.71
                                        #   in Loop: Header=BB0_15 Depth=2
	testb	$2, %bpl
	movl	$0, %edx
	je	.LBB0_19
# BB#18:                                # %for.body.71
                                        #   in Loop: Header=BB0_15 Depth=2
	movb	%cl, %dl
.LBB0_19:                               # %for.body.71
                                        #   in Loop: Header=BB0_15 Depth=2
	testb	$4, %bpl
	movl	$0, %r8d
	je	.LBB0_21
# BB#20:                                # %for.body.71
                                        #   in Loop: Header=BB0_15 Depth=2
	movb	%cl, %r8b
.LBB0_21:                               # %for.body.71
                                        #   in Loop: Header=BB0_15 Depth=2
	testb	$8, %bpl
	je	.LBB0_23
# BB#22:                                # %for.body.71
                                        #   in Loop: Header=BB0_15 Depth=2
	movb	%cl, %dil
.LBB0_23:                               # %for.body.71
                                        #   in Loop: Header=BB0_15 Depth=2
	orb	%bl, %r13b
	orb	%dl, %sil
	orb	%r8b, %r12b
	orb	%dil, %r14b
	shrb	%cl
	jne	.LBB0_25
# BB#24:                                # %if.then.109
                                        #   in Loop: Header=BB0_15 Depth=2
	movb	%r13b, (%r15)
	incq	%r15
	movb	%sil, (%r11)
	incq	%r11
	movb	%r14b, (%r9)
	incq	%r9
	movb	%r12b, (%r10)
	incq	%r10
	movb	$-128, %cl
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
.LBB0_25:                               # %for.inc
                                        #   in Loop: Header=BB0_15 Depth=2
	incq	%rax
	cmpq	128(%rsp), %rax         # 8-byte Folded Reload
	jb	.LBB0_15
# BB#26:                                # %for.end
                                        #   in Loop: Header=BB0_12 Depth=1
	movzbl	%cl, %eax
	cmpl	$128, %eax
	je	.LBB0_28
# BB#27:                                # %if.then.118
                                        #   in Loop: Header=BB0_12 Depth=1
	movb	%r13b, (%r15)
	movb	%sil, (%r11)
	movb	%r14b, (%r9)
	movb	%r12b, (%r10)
.LBB0_28:                               # %for.body.123
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	40(%rsp), %r12          # 8-byte Reload
	xorl	%r14d, %r14d
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
	movl	$1, %edx
	jmp	.LBB0_29
	.align	16, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	40(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB0_29:                               # %for.body.123
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_37 Depth 3
	movq	%r14, %rax
	imulq	%r13, %rax
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %r15
	movb	$-1, (%rcx,%rax)
	movq	%r12, %rbp
	.align	16, 0x90
.LBB0_30:                               # %while.cond
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, -1(%rbp)
	leaq	-1(%rbp), %rbp
	je	.LBB0_30
# BB#31:                                # %while.end
                                        #   in Loop: Header=BB0_29 Depth=2
	subq	%r15, %rbp
	testl	%ebp, %ebp
	movq	120(%rsp), %rax         # 8-byte Reload
	je	.LBB0_40
# BB#32:                                # %if.then.137
                                        #   in Loop: Header=BB0_29 Depth=2
	testl	%eax, %eax
	je	.LBB0_33
# BB#34:                                # %if.then.139
                                        #   in Loop: Header=BB0_29 Depth=2
	movq	%rbx, %rcx
	movq	112(%rsp), %rdx         # 8-byte Reload
	leal	(%rdx,%rax), %esi
	leal	1(%rdx,%rax), %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	1(%rax,%rsi), %ebx
	sarl	$2, %ebx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	subl	%eax, %ebx
	jle	.LBB0_35
# BB#36:                                # %for.body.148.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%rcx, %r13
	.align	16, 0x90
.LBB0_37:                               # %for.body.148
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$.L.str.2, %edi
	movq	%r13, %rsi
	callq	fputs
	decl	%ebx
	jne	.LBB0_37
# BB#38:                                #   in Loop: Header=BB0_29 Depth=2
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%r13, %rbx
	movq	104(%rsp), %r13         # 8-byte Reload
	jmp	.LBB0_39
	.align	16, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_29 Depth=2
	movq	112(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB0_39
.LBB0_35:                               #   in Loop: Header=BB0_29 Depth=2
	movl	%esi, %eax
	movq	%rcx, %rbx
	movq	%rax, %rcx
.LBB0_39:                               # %if.end.153
                                        #   in Loop: Header=BB0_29 Depth=2
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	(%rax,%rcx), %eax
	andl	$-4, %eax
	subl	%eax, %ecx
	leaq	(,%r14,4), %rax
	leal	48(%rax,%rcx), %edx
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	fprintf
	incq	%r15
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	xorl	%edx, %edx
.LBB0_40:                               # %for.inc.162
                                        #   in Loop: Header=BB0_29 Depth=2
	incq	%r14
	addq	%r13, %r12
	cmpq	$4, %r14
	jne	.LBB0_29
# BB#41:                                # %for.end.164
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	76(%rsp), %r12d         # 4-byte Reload
	testl	%r12d, %r12d
	jne	.LBB0_44
# BB#42:                                # %for.end.164
                                        #   in Loop: Header=BB0_12 Depth=1
	testl	%edx, %edx
	je	.LBB0_44
# BB#43:                                # %if.then.168
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	sbbl	$-1, %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	80(%rsp), %r15          # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB0_47
	.align	16, 0x90
.LBB0_44:                               # %if.else
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	112(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	(%rax,%rbp), %eax
	andl	$-4, %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB0_46
# BB#45:                                # %if.then.176
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB0_46:                               # %if.end.178
                                        #   in Loop: Header=BB0_12 Depth=1
	incl	%ebp
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	80(%rsp), %r15          # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rax
	movq	%rcx, %rbp
.LBB0_47:                               # %for.inc.181
                                        #   in Loop: Header=BB0_12 Depth=1
	incl	%esi
	cmpl	72(%rsp), %esi          # 4-byte Folded Reload
	jne	.LBB0_12
# BB#48:                                # %for.end.183
	movq	%rbp, %r14
	testb	$3, %al
	je	.LBB0_50
# BB#49:                                # %if.then.186
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB0_50:                               # %if.end.188
	testl	%r12d, %r12d
	je	.LBB0_51
# BB#52:                                # %if.else.192
	movl	$.L.str.5, %edi
	jmp	.LBB0_53
.LBB0_51:                               # %if.then.190
	movl	$.L.str.4, %edi
.LBB0_53:                               # %if.end.194
	movq	%rbx, %rsi
	callq	fputs
	movq	%r14, %rdi
	callq	free
	xorl	%eax, %eax
.LBB0_54:                               # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tekink_print_page, .Lfunc_end0-tekink_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	tekink_map_rgb_color,@function
tekink_map_rgb_color:                   # @tekink_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	movzwl	2(%rsi), %ecx
	movzwl	4(%rsi), %edx
	shrl	$15, %edx
	shlq	$2, %rdx
	shrl	$15, %ecx
	addq	%rcx, %rcx
	shrl	$15, %eax
	orq	%rcx, %rax
	orq	%rdx, %rax
	movq	rgb_to_index(,%rax,8), %rax
	retq
.Lfunc_end1:
	.size	tekink_map_rgb_color, .Lfunc_end1-tekink_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	tekink_map_color_rgb,@function
tekink_map_color_rgb:                   # @tekink_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %ecx
	andl	$65520, %ecx            # imm = 0xFFF0
	movl	$-1, %eax
	cmpq	$15, %rcx
	ja	.LBB2_3
# BB#1:                                 # %if.end
	movzwl	%si, %ecx
	movl	$60072, %esi            # imm = 0xEAA8
	btq	%rcx, %rsi
	jb	.LBB2_3
# BB#2:                                 # %for.cond.preheader
	leaq	(%rcx,%rcx,2), %rax
	movl	index_to_rgb(%rax,%rax), %ecx
	movl	%ecx, (%rdx)
	movw	index_to_rgb+4(%rax,%rax), %ax
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
.LBB2_3:                                # %cleanup
	retq
.Lfunc_end2:
	.size	tekink_map_color_rgb, .Lfunc_end2-tekink_map_color_rgb
	.cfi_endproc

	.type	tekink_procs,@object    # @tekink_procs
	.data
	.align	8
tekink_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	tekink_map_rgb_color
	.quad	tekink_map_color_rgb
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
	.size	tekink_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tek4696"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_tek4696_device,@object # @gs_tek4696_device
	.section	.rodata,"a",@progbits
	.globl	gs_tek4696_device
	.align	8
gs_tek4696_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	tekink_procs
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
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
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
	.long	1020                    # 0x3fc
	.long	1440                    # 0x5a0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1146617856              # float 8.640000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1123024896              # float 1.200000e+02
	.long	1123024896              # float 1.200000e+02
	.long	1123024896              # float 1.200000e+02
	.long	1123024896              # float 1.200000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
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
	.quad	tekink_print_page
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
	.size	gs_tek4696_device, 18472

	.type	rgb_to_index,@object    # @rgb_to_index
	.align	16
rgb_to_index:
	.quad	1                       # 0x1
	.quad	6                       # 0x6
	.quad	12                      # 0xc
	.quad	4                       # 0x4
	.quad	10                      # 0xa
	.quad	2                       # 0x2
	.quad	8                       # 0x8
	.quad	0                       # 0x0
	.size	rgb_to_index, 64

	.type	index_to_rgb,@object    # @index_to_rgb
	.align	16
index_to_rgb:
	.zero	6,255
	.zero	6
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	65535                   # 0xffff
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.size	index_to_rgb, 96

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"\033A"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\033I%c%03d"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n\n\n\n\n"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\f"
	.size	.L.str.5, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
