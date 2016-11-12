	.text
	.file	"gdevatx.bc"
	.align	16, 0x90
	.type	atx23_print_page,@function
atx23_print_page:                       # @atx23_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$72, %edx
	jmp	atx_print_page          # TAILCALL
.Lfunc_end0:
	.size	atx23_print_page, .Lfunc_end0-atx23_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	atx24_print_page,@function
atx24_print_page:                       # @atx24_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$104, %edx
	jmp	atx_print_page          # TAILCALL
.Lfunc_end1:
	.size	atx24_print_page, .Lfunc_end1-atx24_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	atx38_print_page,@function
atx38_print_page:                       # @atx38_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$300, %edx              # imm = 0x12C
	jmp	atx_print_page          # TAILCALL
.Lfunc_end2:
	.size	atx38_print_page, .Lfunc_end2-atx38_print_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1116733440              # float 72
.LCPI3_1:
	.long	1143193600              # float 655
.LCPI3_2:
	.long	1120403456              # float 100
	.text
	.align	16, 0x90
	.type	atx_print_page,@function
atx_print_page:                         # @atx_print_page
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
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 144
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
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movss	912(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	920(%rbx), %xmm0
	divss	.LCPI3_0(%rip), %xmm0
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI3_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	cvttss2si	%xmm2, %ecx
	movl	836(%rbx), %eax
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	divss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	mulss	.LCPI3_2(%rip), %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %r15d
	movq	24(%rbx), %rbp
	movq	%rbp, (%rsp)            # 8-byte Spill
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %r14d
	sarl	%r14d
	cmpl	$511, %r14d             # imm = 0x1FF
	movl	$510, %r13d             # imm = 0x1FE
	cmovll	%r14d, %r13d
	cmpl	$300, %r15d             # imm = 0x12C
	movl	$300, %r12d             # imm = 0x12C
	cmovgel	%r15d, %r12d
	movl	$.L.str.4, %edx
	movq	%rbp, %rdi
	movl	%eax, %esi
	callq	*64(%rbp)
	movq	%rax, %rbx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.5, %edx
	movq	%rbp, %rdi
	movl	%r13d, %esi
	callq	*64(%rbp)
	testq	%rbx, %rbx
	movl	$-25, %r15d
	je	.LBB3_38
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB3_38
# BB#2:                                 # %if.end.37
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.6, %edi
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputs
	movzbl	%r12b, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%r12d, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	jle	.LBB3_37
# BB#3:                                 # %for.body.lr.ph
	movq	32(%rsp), %rax          # 8-byte Reload
	cltq
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	72(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	%r13d, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$2, %edx
	subq	%rcx, %rdx
	notl	%r14d
	cmpl	$-512, %r14d            # imm = 0xFFFFFFFFFFFFFE00
	movl	$-511, %eax             # imm = 0xFFFFFFFFFFFFFE01
	cmovgl	%r14d, %eax
	notl	%eax
	cltq
	subq	%rax, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_14 Depth 2
                                        #       Child Loop BB3_31 Depth 3
                                        #       Child Loop BB3_18 Depth 3
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %esi
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	80(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	80(%rsp), %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rcx
	.align	16, 0x90
.LBB3_5:                                # %for.cond.41
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbp
	cmpq	%rax, %rbp
	jbe	.LBB3_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_5 Depth=2
	cmpb	$0, -1(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB3_5 Depth=2
	leaq	-2(%rbp), %rcx
	cmpb	$0, -2(%rbp)
	je	.LBB3_5
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpq	%rax, %rbp
	je	.LBB3_9
# BB#10:                                # %if.end.57
                                        #   in Loop: Header=BB3_4 Depth=1
	testl	%ebx, %ebx
	je	.LBB3_12
# BB#11:                                # %if.then.58
                                        #   in Loop: Header=BB3_4 Depth=1
	incl	%ebx
	movl	$.L.str.7, %edi
	movq	%rbx, %r15
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputs
	movzbl	%r15b, %edi
	movq	%rbx, %rsi
	callq	fputc
	movq	%r15, %rax
	movzbl	%ah, %edi  # NOREX
	movq	%rbx, %rsi
	callq	fputc
	movq	80(%rsp), %rax
.LBB3_12:                               # %if.end.60
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	%rbp, %rcx
	subq	%rax, %rcx
	movq	16(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %r12
	cmpq	%rdx, %rcx
	cmovleq	%rbp, %r12
	movq	%r12, %rcx
	subq	%rax, %rcx
	cmpl	$50, %ecx
	jl	.LBB3_34
# BB#13:                                # %if.end.5.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	movslq	%ecx, %rcx
	movl	$2, %r8d
	subq	%rax, %r8
	movl	%r12d, %edx
	subl	%eax, %edx
	movslq	%edx, %rdx
	subq	%rdx, %r8
	movq	8(%rsp), %r15           # 8-byte Reload
	leaq	(%rcx,%rax), %r9
	leaq	(%rdx,%rax), %r10
.LBB3_14:                               # %if.end.5.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_31 Depth 3
                                        #       Child Loop BB3_18 Depth 3
	cmpq	72(%rsp), %r15          # 8-byte Folded Reload
	je	.LBB3_34
# BB#15:                                # %if.end.9.i
                                        #   in Loop: Header=BB3_14 Depth=2
	movzbl	1(%rax), %ecx
	movzbl	(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB3_30
# BB#16:                                # %if.then.16.i
                                        #   in Loop: Header=BB3_14 Depth=2
	movb	%cl, 1(%r15)
	leaq	2(%rax), %rdx
	movl	$1, %ecx
	cmpq	%r9, %rdx
	movq	%r9, %rdi
	je	.LBB3_24
# BB#17:                                # %lor.lhs.false.24.i.preheader
                                        #   in Loop: Header=BB3_14 Depth=2
	addq	$4, %rax
	movl	$1, %ebp
	movq	%rdx, %rdi
	.align	16, 0x90
.LBB3_18:                               # %lor.lhs.false.24.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-2(%rax), %ecx
	movzbl	-3(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB3_22
# BB#19:                                # %lor.lhs.false.31.i
                                        #   in Loop: Header=BB3_18 Depth=3
	movzbl	%cl, %ecx
	movzbl	-1(%rax), %edx
	cmpl	%ecx, %edx
	jne	.LBB3_23
# BB#20:                                # %if.end.41.i
                                        #   in Loop: Header=BB3_18 Depth=3
	leal	1(%rbp), %ecx
	addq	$2, %rdi
	cmpq	%rax, %r10
	je	.LBB3_24
# BB#21:                                # %if.end.41.i
                                        #   in Loop: Header=BB3_18 Depth=3
	addq	$2, %rax
	cmpl	$126, %ebp
	movl	%ecx, %ebp
	jne	.LBB3_18
	jmp	.LBB3_24
	.align	16, 0x90
.LBB3_30:                               # %if.else.i
                                        #   in Loop: Header=BB3_14 Depth=2
	movb	$127, (%r15)
	leaq	(%rax,%r8), %r11
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%r15,%rcx), %rcx
	movl	$1, %ebx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_31:                               # %Scan_Uncompressed_Pair.i
                                        #   Parent Loop BB3_4 Depth=1
                                        #     Parent Loop BB3_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movl	%ebx, %ebp
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	je	.LBB3_34
# BB#32:                                # %if.end.62.i
                                        #   in Loop: Header=BB3_31 Depth=3
	movb	(%rax,%rdx), %bl
	movb	%bl, 2(%r15,%rdx)
	movb	1(%rax,%rdx), %bl
	movb	%bl, 3(%r15,%rdx)
	movq	%r11, %rsi
	addq	%rdx, %rsi
	je	.LBB3_29
# BB#33:                                # %if.end.62.i
                                        #   in Loop: Header=BB3_31 Depth=3
	cmpl	$508, %edx              # imm = 0x1FC
	je	.LBB3_29
# BB#28:                                # %lor.lhs.false.48.i
                                        #   in Loop: Header=BB3_31 Depth=3
	leaq	2(%rdx), %rsi
	leal	1(%rbp), %ebx
	movzbl	2(%rax,%rdx), %edi
	movzbl	3(%rax,%rdx), %r13d
	cmpl	%edi, %r13d
	jne	.LBB3_31
.LBB3_29:                               # %if.end.62.i.if.then.55.i_crit_edge
                                        #   in Loop: Header=BB3_14 Depth=2
	leaq	2(%rax,%rdx), %rdi
	leaq	4(%r15,%rdx), %rax
	movb	%bpl, 1(%r15)
	movq	%rax, %r15
	jmp	.LBB3_25
.LBB3_22:                               # %lor.lhs.false.24.i.if.then.38.i.loopexit_crit_edge
                                        #   in Loop: Header=BB3_14 Depth=2
	addq	$-2, %rax
	movq	%rax, %rdi
.LBB3_23:                               # %if.then.38.i
                                        #   in Loop: Header=BB3_14 Depth=2
	movl	%ebp, %ecx
.LBB3_24:                               # %if.then.38.i
                                        #   in Loop: Header=BB3_14 Depth=2
	subl	$-128, %ecx
	movb	%cl, (%r15)
	addq	$2, %r15
.LBB3_25:                               # %New_Segment.backedge.i
                                        #   in Loop: Header=BB3_14 Depth=2
	cmpq	%r9, %rdi
	movq	%rdi, %rax
	jne	.LBB3_14
# BB#26:                                # %atx_compress.exit
                                        #   in Loop: Header=BB3_4 Depth=1
	subq	8(%rsp), %r15           # 8-byte Folded Reload
	testl	%r15d, %r15d
	js	.LBB3_34
# BB#27:                                # %if.then.75
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	$.L.str.8, %edi
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputs
	movl	%r15d, %eax
	shrl	$31, %eax
	leal	(%rax,%r15), %edi
	sarl	%edi
	movq	%rbx, %rsi
	callq	fputc
	movslq	%r15d, %rdx
	movl	$1, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rcx
	jmp	.LBB3_35
	.align	16, 0x90
.LBB3_34:                               # %if.else
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	%r12, %rbx
	subq	80(%rsp), %rbx
	movl	$.L.str.9, %edi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	fputs
	movzbl	%bl, %edi
	movq	%rbp, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%rbp, %rsi
	callq	fputc
	movq	80(%rsp), %rdi
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%rbp, %rcx
.LBB3_35:                               # %cleanup
                                        #   in Loop: Header=BB3_4 Depth=1
	callq	fwrite
	xorl	%ebx, %ebx
	jmp	.LBB3_36
	.align	16, 0x90
.LBB3_9:                                # %if.then.56
                                        #   in Loop: Header=BB3_4 Depth=1
	incl	%ebx
.LBB3_36:                               # %cleanup
                                        #   in Loop: Header=BB3_4 Depth=1
	incl	%r14d
	cmpl	52(%rsp), %r14d         # 4-byte Folded Reload
	jl	.LBB3_4
.LBB3_37:                               # %for.end.91
	movl	$.L.str.10, %edi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	fputs
	xorl	%r15d, %r15d
	movq	8(%rsp), %rax           # 8-byte Reload
.LBB3_38:                               # %done
	movl	$.L.str.5, %edx
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movl	%r15d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	atx_print_page, .Lfunc_end3-atx_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"atx23"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_atx23_device,@object # @gs_atx23_device
	.section	.rodata,"a",@progbits
	.globl	gs_atx23_device
	.align	8
gs_atx23_device:
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
	.long	568                     # 0x238
	.long	711                     # 0x2c7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1128887624              # float 2.014581e+02
	.long	1132211558              # float 2.521773e+02
	.zero	16
	.long	0                       # 0x0
	.long	1128988672              # float 2.030000e+02
	.long	1128988672              # float 2.030000e+02
	.long	1128988672              # float 2.030000e+02
	.long	1128988672              # float 2.030000e+02
	.zero	8
	.long	1099956224              # float 1.800000e+01
	.long	1091567616              # float 9.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	1091567616              # float 9.000000e+00
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
	.quad	atx23_print_page
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
	.size	gs_atx23_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"atx24"
	.size	.L.str.2, 6

	.type	gs_atx24_device,@object # @gs_atx24_device
	.section	.rodata,"a",@progbits
	.globl	gs_atx24_device
	.align	8
gs_atx24_device:
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
	.long	832                     # 0x340
	.long	711                     # 0x2c7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1133743099              # float 2.950936e+02
	.long	1132211558              # float 2.521773e+02
	.zero	16
	.long	0                       # 0x0
	.long	1128988672              # float 2.030000e+02
	.long	1128988672              # float 2.030000e+02
	.long	1128988672              # float 2.030000e+02
	.long	1128988672              # float 2.030000e+02
	.zero	8
	.long	1096701444              # float 1.389600e+01
	.long	1091567616              # float 9.000000e+00
	.long	1096701444              # float 1.389600e+01
	.long	1091567616              # float 9.000000e+00
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
	.quad	atx24_print_page
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
	.size	gs_atx24_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"atx38"
	.size	.L.str.3, 6

	.type	gs_atx38_device,@object # @gs_atx38_device
	.section	.rodata,"a",@progbits
	.globl	gs_atx38_device
	.align	8
gs_atx38_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	prn_bg_procs
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
	.long	2400                    # 0x960
	.long	1050                    # 0x41a
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141899264              # float 5.760000e+02
	.long	1132199936              # float 2.520000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.zero	8
	.long	1099956224              # float 1.800000e+01
	.long	1091567616              # float 9.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	1091567616              # float 9.000000e+00
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
	.quad	atx38_print_page
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
	.size	gs_atx38_device, 18472

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"atx_print_page(buf)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"atx_print_page(compressed)"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033f"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033L"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033x"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033d"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033e"
	.size	.L.str.10, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
