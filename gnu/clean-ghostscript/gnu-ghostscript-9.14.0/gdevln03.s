	.text
	.file	"gdevln03.bc"
	.align	16, 0x90
	.type	ln03_print_page,@function
ln03_print_page:                        # @ln03_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.8, %edx
	movl	$.L.str.9, %ecx
	jmp	sixel_print_page        # TAILCALL
.Lfunc_end0:
	.size	ln03_print_page, .Lfunc_end0-ln03_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	dl2100_print_page,@function
dl2100_print_page:                      # @dl2100_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.12, %edx
	movl	$.L.str.9, %ecx
	jmp	sixel_print_page        # TAILCALL
.Lfunc_end1:
	.size	dl2100_print_page, .Lfunc_end1-dl2100_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	la50_print_page,@function
la50_print_page:                        # @la50_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.13, %edx
	movl	$.L.str.9, %ecx
	jmp	sixel_print_page        # TAILCALL
.Lfunc_end2:
	.size	la50_print_page, .Lfunc_end2-la50_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	la70_print_page,@function
la70_print_page:                        # @la70_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.14, %edx
	movl	$.L.str.9, %ecx
	jmp	sixel_print_page        # TAILCALL
.Lfunc_end3:
	.size	la70_print_page, .Lfunc_end3-la70_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	la75_print_page,@function
la75_print_page:                        # @la75_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.15, %edx
	movl	$.L.str.9, %ecx
	jmp	sixel_print_page        # TAILCALL
.Lfunc_end4:
	.size	la75_print_page, .Lfunc_end4-la75_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	la75plus_print_page,@function
la75plus_print_page:                    # @la75plus_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.16, %edx
	movl	$.L.str.9, %ecx
	jmp	sixel_print_page        # TAILCALL
.Lfunc_end5:
	.size	la75plus_print_page, .Lfunc_end5-la75plus_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	sxlcrt_print_page,@function
sxlcrt_print_page:                      # @sxlcrt_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.17, %edx
	movl	$.L.str.18, %ecx
	jmp	sixel_print_page        # TAILCALL
.Lfunc_end6:
	.size	sxlcrt_print_page, .Lfunc_end6-sxlcrt_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	sixel_output_page,@function
sixel_output_page:                      # @sixel_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gdev_prn_open_printer
	testl	%eax, %eax
	js	.LBB7_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gdev_prn_output_page    # TAILCALL
.LBB7_1:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sixel_output_page, .Lfunc_end7-sixel_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	sixel_print_page,@function
sixel_print_page:                       # @sixel_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 144
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	%r12, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebp
	leal	(%rbp,%rbp), %eax
	leal	(%rax,%rax,2), %esi
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.10, %ecx
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB8_44
# BB#1:                                 # %if.end
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	fputs
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r15
	cmpl	$0, 836(%r12)
	jle	.LBB8_2
# BB#3:                                 # %for.body.lr.ph
	movslq	%ebp, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 84(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	movq	32(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB8_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #       Child Loop BB8_12 Depth 3
                                        #       Child Loop BB8_23 Depth 3
                                        #     Child Loop BB8_33 Depth 2
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rbp, %rdx
	movl	20(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movl	832(%r12), %r8d
	testl	%r8d, %r8d
	jle	.LBB8_5
# BB#6:                                 #   in Loop: Header=BB8_4 Depth=1
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	movl	$1, 60(%rsp)            # 4-byte Folded Spill
	movl	$63, 84(%rsp)           # 4-byte Folded Spill
	movq	%rbp, %rdx
	movl	$128, %ebp
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB8_7:                                # %for.body.14
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_12 Depth 3
                                        #       Child Loop BB8_23 Depth 3
	movq	%rdx, %rax
	movzbl	(%rax), %ecx
	testl	%ebp, %ecx
	setne	%cl
	movzbl	%cl, %edx
	leal	63(%rdx), %esi
	movq	48(%rsp), %rbx          # 8-byte Reload
	leaq	(%rax,%rbx), %rcx
	movzbl	(%rax,%rbx), %edi
	addl	$65, %edx
	testl	%ebp, %edi
	cmovel	%esi, %edx
	movzbl	(%rbx,%rcx), %esi
	addq	%rbx, %rcx
	leal	4(%rdx), %edi
	testl	%ebp, %esi
	cmovel	%edx, %edi
	movzbl	(%rbx,%rcx), %edx
	addq	%rbx, %rcx
	leal	8(%rdi), %esi
	testl	%ebp, %edx
	cmovel	%edi, %esi
	movzbl	(%rbx,%rcx), %edx
	addq	%rbx, %rcx
	leal	16(%rsi), %edi
	testl	%ebp, %edx
	cmovel	%esi, %edi
	movzbl	(%rbx,%rcx), %ecx
	leal	32(%rdi), %ebx
	testl	%ebp, %ecx
	cmovel	%edi, %ebx
	sarl	%ebp
	leaq	1(%rax), %rdx
	testl	%ebp, %ebp
	movl	$128, %ecx
	cmovel	%ecx, %ebp
	cmovneq	%rax, %rdx
	cmpl	84(%rsp), %ebx          # 4-byte Folded Reload
	je	.LBB8_27
# BB#8:                                 # %if.then.62
                                        #   in Loop: Header=BB8_7 Depth=2
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB8_16
# BB#9:                                 # %while.cond.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	testl	%r13d, %r13d
	jle	.LBB8_10
# BB#11:                                # %while.body.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%r8, 72(%rsp)           # 8-byte Spill
	incl	%r13d
	.align	16, 0x90
.LBB8_12:                               # %while.body
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$79, %r15d
	jl	.LBB8_14
# BB#13:                                # %if.then.70
                                        #   in Loop: Header=BB8_12 Depth=3
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	xorl	%r15d, %r15d
.LBB8_14:                               # %if.end.72
                                        #   in Loop: Header=BB8_12 Depth=3
	movl	$45, %edi
	movq	%r14, %rsi
	callq	fputc
	incl	%r15d
	decl	%r13d
	cmpl	$1, %r13d
	jg	.LBB8_12
# BB#15:                                #   in Loop: Header=BB8_7 Depth=2
	xorl	%r13d, %r13d
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB8_16
.LBB8_10:                               #   in Loop: Header=BB8_7 Depth=2
	xorl	%r13d, %r13d
.LBB8_16:                               # %if.end.74
                                        #   in Loop: Header=BB8_7 Depth=2
	cmpl	$3, %r12d
	jle	.LBB8_17
# BB#19:                                # %if.then.77
                                        #   in Loop: Header=BB8_7 Depth=2
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%r8, 72(%rsp)           # 8-byte Spill
	cmpl	$75, %r15d
	jl	.LBB8_21
# BB#20:                                # %if.then.80
                                        #   in Loop: Header=BB8_7 Depth=2
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	xorl	%r15d, %r15d
.LBB8_21:                               # %if.end.82
                                        #   in Loop: Header=BB8_7 Depth=2
	cmpl	$9, %r12d
	setg	%al
	cmpl	$99, %r12d
	setg	%cl
	movzbl	%cl, %ecx
	cmpl	$999, %r12d             # imm = 0x3E7
	setg	%dl
	movzbl	%dl, %edx
	movzbl	%al, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	leal	3(%r15,%rax), %r15d
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r12d, %edx
	movl	84(%rsp), %ecx          # 4-byte Reload
	callq	fprintf
	jmp	.LBB8_26
	.align	16, 0x90
.LBB8_17:                               # %while.cond.94.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	testl	%r12d, %r12d
	jle	.LBB8_18
# BB#22:                                # %while.body.98.preheader
                                        #   in Loop: Header=BB8_7 Depth=2
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%r8, 72(%rsp)           # 8-byte Spill
	incl	%r12d
	.align	16, 0x90
.LBB8_23:                               # %while.body.98
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$79, %r15d
	jl	.LBB8_25
# BB#24:                                # %if.then.101
                                        #   in Loop: Header=BB8_23 Depth=3
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	xorl	%r15d, %r15d
.LBB8_25:                               # %if.end.103
                                        #   in Loop: Header=BB8_23 Depth=3
	movl	84(%rsp), %edi          # 4-byte Reload
	movq	%r14, %rsi
	callq	fputc
	incl	%r15d
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB8_23
.LBB8_26:                               #   in Loop: Header=BB8_7 Depth=2
	xorl	%r12d, %r12d
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	movq	72(%rsp), %r8           # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB8_27
.LBB8_18:                               #   in Loop: Header=BB8_7 Depth=2
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	xorl	%r12d, %r12d
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB8_27:                               # %if.end.108
                                        #   in Loop: Header=BB8_7 Depth=2
	incl	%r12d
	cmpl	$1, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jg	.LBB8_7
	jmp	.LBB8_28
	.align	16, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_4 Depth=1
	movl	%ebx, 44(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
	movl	84(%rsp), %ebx          # 4-byte Reload
.LBB8_28:                               # %for.end
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$63, %ebx
	je	.LBB8_29
# BB#30:                                # %if.then.112
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$3, %r12d
	jle	.LBB8_31
# BB#36:                                # %if.then.115
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$75, %r15d
	jl	.LBB8_38
# BB#37:                                # %if.then.118
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	xorl	%r15d, %r15d
.LBB8_38:                               # %if.end.120
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$9, %r12d
	setg	%al
	cmpl	$99, %r12d
	setg	%cl
	movzbl	%cl, %ecx
	cmpl	$999, %r12d             # imm = 0x3E7
	setg	%dl
	movzbl	%dl, %edx
	movzbl	%al, %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	leal	3(%r15,%rax), %r15d
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r12d, %edx
	movl	%ebx, %ecx
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	callq	fprintf
	jmp	.LBB8_39
	.align	16, 0x90
.LBB8_31:                               # %while.cond.133.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	testl	%r12d, %r12d
	jle	.LBB8_29
# BB#32:                                # %while.body.137.preheader
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	%ebx, 84(%rsp)          # 4-byte Spill
	incl	%r12d
	movl	44(%rsp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB8_33:                               # %while.body.137
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$79, %r15d
	jl	.LBB8_35
# BB#34:                                # %if.then.140
                                        #   in Loop: Header=BB8_33 Depth=2
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
	xorl	%r15d, %r15d
.LBB8_35:                               # %if.end.142
                                        #   in Loop: Header=BB8_33 Depth=2
	movl	84(%rsp), %edi          # 4-byte Reload
	movq	%r14, %rsi
	callq	fputc
	incl	%r15d
	decl	%r12d
	cmpl	$1, %r12d
	jg	.LBB8_33
	jmp	.LBB8_40
	.align	16, 0x90
.LBB8_29:                               #   in Loop: Header=BB8_4 Depth=1
	movl	%ebx, 84(%rsp)          # 4-byte Spill
.LBB8_39:                               # %for.inc.148
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	44(%rsp), %ebx          # 4-byte Reload
.LBB8_40:                               # %for.inc.148
                                        #   in Loop: Header=BB8_4 Depth=1
	addl	$6, %ebx
	incl	%r13d
	movq	24(%rsp), %r12          # 8-byte Reload
	cmpl	836(%r12), %ebx
	movq	32(%rsp), %rbp          # 8-byte Reload
	jl	.LBB8_4
	jmp	.LBB8_41
.LBB8_2:
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB8_41:                               # %for.end.151
	movslq	%r15d, %rbx
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r15, %rdi
	callq	strlen
	addq	%rbx, %rax
	cmpq	$80, %rax
	jb	.LBB8_43
# BB#42:                                # %if.then.157
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
.LBB8_43:                               # %if.end.159
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	fputs
	movq	%r14, %rdi
	callq	fflush
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.10, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB8_44:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sixel_print_page, .Lfunc_end8-sixel_print_page
	.cfi_endproc

	.type	sixel_procs,@object     # @sixel_procs
	.data
	.align	8
sixel_procs:
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
	.size	sixel_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ln03"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_ln03_device,@object  # @gs_ln03_device
	.data
	.globl	gs_ln03_device
	.align	8
gs_ln03_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	sixel_procs
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
	.quad	ln03_print_page
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
	.size	gs_ln03_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"dl2100"
	.size	.L.str.2, 7

	.type	gs_dl2100_device,@object # @gs_dl2100_device
	.data
	.globl	gs_dl2100_device
	.align	8
gs_dl2100_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	sixel_procs
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
	.quad	dl2100_print_page
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
	.size	gs_dl2100_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"la50"
	.size	.L.str.3, 5

	.type	gs_la50_device,@object  # @gs_la50_device
	.data
	.globl	gs_la50_device
	.align	8
gs_la50_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	sixel_procs
	.quad	.L.str.3
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
	.long	1224                    # 0x4c8
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1125122048              # float 1.440000e+02
	.long	1116733440              # float 7.200000e+01
	.long	1125122048              # float 1.440000e+02
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1108344832              # float 3.600000e+01
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
	.quad	la50_print_page
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
	.size	gs_la50_device, 18472

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"la70"
	.size	.L.str.4, 5

	.type	gs_la70_device,@object  # @gs_la70_device
	.data
	.globl	gs_la70_device
	.align	8
gs_la70_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	sixel_procs
	.quad	.L.str.4
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
	.long	1224                    # 0x4c8
	.long	1584                    # 0x630
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1125122048              # float 1.440000e+02
	.long	1125122048              # float 1.440000e+02
	.long	1125122048              # float 1.440000e+02
	.long	1125122048              # float 1.440000e+02
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1108344832              # float 3.600000e+01
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
	.quad	la70_print_page
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
	.size	gs_la70_device, 18472

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"la75"
	.size	.L.str.5, 5

	.type	gs_la75_device,@object  # @gs_la75_device
	.data
	.globl	gs_la75_device
	.align	8
gs_la75_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	sixel_procs
	.quad	.L.str.5
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
	.long	1224                    # 0x4c8
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1125122048              # float 1.440000e+02
	.long	1116733440              # float 7.200000e+01
	.long	1125122048              # float 1.440000e+02
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1108344832              # float 3.600000e+01
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
	.quad	la75_print_page
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
	.size	gs_la75_device, 18472

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"la75plus"
	.size	.L.str.6, 9

	.type	gs_la75plus_device,@object # @gs_la75plus_device
	.data
	.globl	gs_la75plus_device
	.align	8
gs_la75plus_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	sixel_procs
	.quad	.L.str.6
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
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.zero	8
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1105618534              # float 2.880000e+01
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
	.quad	la75plus_print_page
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
	.size	gs_la75plus_device, 18472

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"sxlcrt"
	.size	.L.str.7, 7

	.type	gs_sxlcrt_device,@object # @gs_sxlcrt_device
	.data
	.globl	gs_sxlcrt_device
	.align	8
gs_sxlcrt_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	sixel_procs
	.quad	.L.str.7
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
	.long	768                     # 0x300
	.long	352                     # 0x160
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1151467512              # float 1.295999e+03
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1110092467              # float 4.266670e+01
	.long	1107296256              # float 3.200000e+01
	.long	1110092467              # float 4.266670e+01
	.long	1107296256              # float 3.200000e+01
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
	.quad	sxlcrt_print_page
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
	.size	gs_sxlcrt_device, 18472

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"\033[!p\033[11h\033[7 I\033[?52h\033[0t\033[1;2475s\033P0;0;1q\"1;1"
	.size	.L.str.8, 46

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033\\\f"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"sixel_print_page"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"!%d%c"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033[!p\033[11h\033[7 I\033[?52h\033[0t\033[1;2475s\033[1;3510r\033P0;0;1q\"1;1"
	.size	.L.str.12, 55

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033Pq"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033P0;0;0q\"1;1"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\033P0;0;0q"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\033c\033P0;0;1q\"1;1"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033[?38l\033P0q"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\033\\\033[23;0H"
	.size	.L.str.18, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
