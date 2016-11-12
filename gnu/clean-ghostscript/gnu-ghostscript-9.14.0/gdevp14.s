	.text
	.file	"gdevp14.bc"
	.align	16, 0x90
	.type	no_print_page,@function
no_print_page:                          # @no_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end0:
	.size	no_print_page, .Lfunc_end0-no_print_page
	.cfi_endproc

	.globl	pdf14_get_buffer_information
	.align	16, 0x90
	.type	pdf14_get_buffer_information,@function
pdf14_get_buffer_information:           # @pdf14_get_buffer_information
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
	movq	%rdx, %r15
	movq	%rsi, %r9
	movq	4152(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_17
# BB#1:                                 # %if.end
	movq	(%rax), %rbp
	movdqu	44(%rbp), %xmm0
	leaq	96(%rbp), %rax
	movq	%rax, 88(%r9)
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %ebx
	movl	832(%rdi), %eax
	movl	836(%rdi), %edx
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %r14d
	cmpl	%r14d, %edx
	cmovlel	%edx, %r14d
	movd	%xmm0, %r13d
	subl	%r13d, %ebx
	jle	.LBB1_17
# BB#2:                                 # %if.end
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %r10d
	subl	%r10d, %r14d
	testl	%r14d, %r14d
	jle	.LBB1_17
# BB#3:                                 # %lor.lhs.false.25
	movq	80(%rbp), %r8
	testq	%r8, %r8
	je	.LBB1_17
# BB#4:                                 # %if.end.28
	movl	68(%rbp), %edx
	movl	%edx, 56(%r9)
	movl	36(%rbp), %edx
	movl	%edx, 60(%r9)
	movl	52(%rbp), %edx
	subl	44(%rbp), %edx
	movl	%edx, 64(%r9)
	movl	56(%rbp), %esi
	subl	48(%rbp), %esi
	movl	%esi, 68(%r9)
	movl	4180(%rdi), %eax
	movl	%eax, 84(%r9)
	testl	%ecx, %ecx
	je	.LBB1_16
# BB#5:                                 # %if.then.47
	movq	$0, (%r9)
	movdqu	%xmm0, 32(%r9)
	cmpl	%edx, %ebx
	jl	.LBB1_7
# BB#6:                                 # %if.then.47
	cmpl	%esi, %r14d
	jl	.LBB1_7
# BB#14:                                # %if.else
	movl	64(%rbp), %eax
	movl	%eax, 52(%r9)
	movl	60(%rbp), %eax
	movl	%eax, 48(%r9)
	movq	80(%rbp), %rax
	movq	%rax, 8(%r9)
	movq	24(%rdi), %rax
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rax, 16(%r9)
	movq	$0, 80(%rbp)
	jmp	.LBB1_15
.LBB1_16:                               # %if.else.102
	movq	%rdi, (%r9)
	movl	64(%rbp), %ecx
	movl	%ecx, 52(%r9)
	movl	60(%rbp), %ecx
	movl	%ecx, 48(%r9)
	movq	%r8, 8(%r9)
	movq	24(%rdi), %rax
	movq	%rax, 16(%r9)
	movdqu	%xmm0, 32(%r9)
	jmp	.LBB1_17
.LBB1_7:                                # %if.then.54
	movl	%r10d, 48(%rsp)         # 4-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	addl	$3, %ebx
	andl	$-4, %ebx
	movl	%ebx, %r12d
	imull	%r14d, %r12d
	movl	%r12d, 52(%r9)
	movl	%ebx, 48(%r9)
	movl	68(%rbp), %esi
	imull	%r12d, %esi
	movl	$.L.str.12, %edx
	movq	%r15, %rdi
	movq	%r9, 40(%rsp)           # 8-byte Spill
	callq	*64(%r15)
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%rax, 8(%rdx)
	movq	%r15, 16(%rdx)
	movl	56(%rdx), %eax
	testl	%eax, %eax
	jle	.LBB1_15
# BB#8:                                 # %for.body.lr.ph
	movslq	%r13d, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movslq	%ebx, %r15
	movslq	%r12d, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movslq	48(%rsp), %rcx          # 4-byte Folded Reload
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB1_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	testl	%r14d, %r14d
	jle	.LBB1_13
# BB#10:                                # %for.body.81.lr.ph
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%rsi, %r13
	imulq	24(%rsp), %r13          # 8-byte Folded Reload
	addq	8(%rdx), %r13
	movslq	64(%rbp), %rax
	movslq	%esi, %rcx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	imulq	%rax, %rcx
	addq	80(%rbp), %rcx
	movslq	60(%rbp), %rbx
	imulq	16(%rsp), %rbx          # 8-byte Folded Reload
	addq	%rcx, %rbx
	addq	32(%rsp), %rbx          # 8-byte Folded Reload
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_11:                               # %for.body.81
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, %r13
	movslq	60(%rbp), %rax
	addq	%rax, %rbx
	incl	%r12d
	cmpl	%r14d, %r12d
	jl	.LBB1_11
# BB#12:                                # %for.cond.79.for.inc.88_crit_edge
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	56(%rdx), %eax
	movq	48(%rsp), %rsi          # 8-byte Reload
.LBB1_13:                               # %for.inc.88
                                        #   in Loop: Header=BB1_9 Depth=1
	incq	%rsi
	movslq	%eax, %rcx
	cmpq	%rcx, %rsi
	jl	.LBB1_9
.LBB1_15:                               # %if.end.99
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	*1176(%rdi)
.LBB1_17:                               # %cleanup
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf14_get_buffer_information, .Lfunc_end1-pdf14_get_buffer_information
	.cfi_endproc

	.globl	pdf14_disable_device
	.align	16, 0x90
	.type	pdf14_disable_device,@function
pdf14_disable_device:                   # @pdf14_disable_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	96(%rbx), %rdi
	movq	1728(%rbx), %rsi
	addq	$96, %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	leaq	1144(%rbx), %rdi
	xorl	%esi, %esi
	movl	$584, %edx              # imm = 0x248
	callq	memset
	movq	%rbx, %rdi
	callq	gx_device_forward_fill_in_procs
	movq	$gx_forward_close_device, 1176(%rbx)
	movq	$gx_forward_fill_rectangle, 1200(%rbx)
	movq	$gx_forward_fill_rectangle_hl_color, 1576(%rbx)
	movq	$gx_forward_tile_rectangle, 1208(%rbx)
	movq	$gx_forward_copy_mono, 1216(%rbx)
	movq	$gx_forward_copy_color, 1224(%rbx)
	movq	$gx_forward_get_page_device, 1296(%rbx)
	movq	$gx_forward_strip_tile_rectangle, 1416(%rbx)
	movq	$gx_forward_copy_alpha, 1312(%rbx)
	movq	$gx_forward_get_profile, 1680(%rbx)
	movq	$gx_forward_set_graphics_type_tag, 1688(%rbx)
	movq	$pdf14_forward_open_device, 1144(%rbx)
	movq	$pdf14_forward_put_params, 1256(%rbx)
	movq	$pdf14_forward_create_compositor, 1464(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	pdf14_disable_device, .Lfunc_end2-pdf14_disable_device
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_forward_create_compositor,@function
pdf14_forward_create_compositor:        # @pdf14_forward_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 32
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	movq	%rbx, (%rsi)
	movq	(%rdx), %rax
	movl	$gs_composite_pdf14trans_type, %esi
	cmpq	%rsi, %rax
	je	.LBB3_2
# BB#1:                                 # %entry
	movl	$gs_composite_pdf14trans_no_clist_writer_type, %esi
	cmpq	%rsi, %rax
	je	.LBB3_2
# BB#4:                                 # %if.end.3
	leaq	8(%rsp), %rsi
	callq	*1464(%rdi)
	testl	%eax, %eax
	js	.LBB3_6
# BB#5:                                 # %if.end.7
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_device_set_target
	xorl	%eax, %eax
	jmp	.LBB3_6
.LBB3_2:                                # %if.then
	xorl	%eax, %eax
	cmpl	$0, 40(%rdx)
	jne	.LBB3_6
# BB#3:                                 # %if.then.1
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	gx_update_pdf14_compositor
.LBB3_6:                                # %cleanup.8
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	pdf14_forward_create_compositor, .Lfunc_end3-pdf14_forward_create_compositor
	.cfi_endproc

	.globl	gs_pdf14_device_color_mon_set
	.align	16, 0x90
	.type	gs_pdf14_device_color_mon_set,@function
gs_pdf14_device_color_mon_set:          # @gs_pdf14_device_color_mon_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 32
.Ltmp20:
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movq	1728(%rdi), %rdi
	leaq	8(%rsp), %rsi
	callq	*1680(%rdi)
	testl	%eax, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	8(%rsp), %rcx
	movl	%ebx, 160(%rcx)
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gs_pdf14_device_color_mon_set, .Lfunc_end4-gs_pdf14_device_color_mon_set
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.text
	.align	16, 0x90
	.type	c_pdf14trans_create_default_compositor,@function
c_pdf14trans_create_default_compositor: # @c_pdf14trans_create_default_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 56
	subq	$5784, %rsp             # imm = 0x1698
.Ltmp27:
	.cfi_def_cfa_offset 5840
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	$0, 32(%rsp)
	xorl	%ebp, %ebp
	cmpl	$0, 40(%r13)
	jne	.LBB5_50
# BB#1:                                 # %sw.bb
	movl	1112(%rbx), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	1064(%rbx), %rax
	testq	%rax, %rax
	movl	$10000000, %ebp         # imm = 0x989680
	cmovnel	%eax, %ebp
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$16, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	jne	.LBB5_6
# BB#2:                                 # %land.lhs.true.i
	movq	%rbx, %rdi
	callq	gx_device_is_pattern_clist
	testl	%eax, %eax
	jne	.LBB5_6
# BB#3:                                 # %land.lhs.true.8.i
	movq	%rbx, %rdi
	callq	gx_device_is_pattern_accum
	testl	%eax, %eax
	jne	.LBB5_6
# BB#4:                                 # %land.lhs.true.12.i
	movq	%rbx, %rdi
	callq	gs_device_is_memory
	testl	%eax, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.i
	movl	832(%rbx), %eax
	testl	%eax, %eax
	movl	$1, %ecx
	cmovlel	%ecx, %eax
	imull	$120, %eax, %esi
	sarl	$3, %esi
	movslq	836(%rbx), %rdi
	xorl	%r8d, %r8d
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%rsi
	cmpq	%rax, %rdi
	cmovael	%r8d, %ebp
	cmovael	%ecx, %edi
	imull	%esi, %edi
	cmpl	%edi, %ebp
	sbbl	%eax, %eax
	andl	$1, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB5_6:                                # %if.end.36.i
	leaq	712(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_49
# BB#7:                                 # %if.end.42.i
	movq	712(%rsp), %rsi
	leaq	744(%rsp), %rdx
	leaq	720(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movq	%rbx, %rdi
	callq	pdf14_determine_default_blend_cs
	movl	$-15, %ebp
	movl	%eax, %ecx
	cmpl	$4, %eax
	ja	.LBB5_49
# BB#8:                                 # %if.end.42.i
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_9:                                # %sw.bb.i.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	752(%rsp), %rbp
	movl	$gs_pdf14_Gray_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	movq	%rbp, %rdi
	callq	memcpy
	movl	$1, 848(%rsp)
	movl	$1, 852(%rsp)
	movl	$255, 864(%rsp)
	movb	$0, 862(%rsp)
	movl	$256, 872(%rsp)         # imm = 0x100
	jmp	.LBB5_16
.LBB5_10:                               # %sw.bb.7.i.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	752(%rsp), %rbp
	movl	$gs_pdf14_RGB_device, %esi
	jmp	.LBB5_11
.LBB5_12:                               # %sw.bb.8.i.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	752(%rsp), %rbp
	movl	$gs_pdf14_CMYK_device, %esi
.LBB5_11:                               # %if.end.47.i
	movl	$5024, %edx             # imm = 0x13A0
	movq	%rbp, %rdi
	callq	memcpy
	jmp	.LBB5_16
.LBB5_13:                               # %sw.bb.9.i.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	44(%r13), %r14d
	movl	$gs_pdf14_CMYKspot_device, %ebp
	testl	%r14d, %r14d
	js	.LBB5_16
# BB#14:                                # %if.then.i.i
	leaq	752(%rsp), %rbp
	movl	$gs_pdf14_CMYKspot_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	movq	%rbp, %rdi
	callq	memcpy
	movl	%r14d, 2512(%rsp)
	addl	$4, %r14d
	cmpl	$64, %r14d
	movl	$64, %eax
	cmovlel	%r14d, %eax
	movl	%eax, 852(%rsp)
	shll	$3, %eax
	movw	%ax, 860(%rsp)
	jmp	.LBB5_16
.LBB5_15:                               # %sw.bb.27.i.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	752(%rsp), %rbp
	movl	$gs_pdf14_custom_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	movq	%rbp, %rdi
	callq	memcpy
	leaq	848(%rsp), %rdi
	leaq	96(%rbx), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	852(%rsp), %eax
	shll	$3, %eax
	movw	%ax, 860(%rsp)
	movaps	.LCPI5_0(%rip), %xmm0   # xmm0 = [255,255,256,256]
	movups	%xmm0, 864(%rsp)
.LBB5_16:                               # %if.end.47.i
	leaq	5776(%rsp), %rdi
	movq	%rbp, %rsi
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	%r14, %rdx
	callq	gs_copydevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_49
# BB#17:                                # %if.end.52.i
	movq	5776(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_pdf14_device_copy_params
	movq	5776(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_device_set_target
	movl	840(%rbx), %ecx
	movq	5776(%rsp), %rax
	movl	%ecx, 840(%rax)
	movl	844(%rbx), %ecx
	movl	%ecx, 844(%rax)
	movl	848(%rbx), %ecx
	movl	%ecx, 848(%rax)
	movq	744(%rsp), %rcx
	cmpl	$6, 16(%rcx)
	je	.LBB5_19
# BB#18:                                # %lor.lhs.false.i
	cmpl	$0, 4(%rcx)
	je	.LBB5_22
.LBB5_19:                               # %land.lhs.true.58.i
	movq	336(%r12), %rcx
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB5_22
# BB#20:                                # %if.then.61.i
	movq	1104(%rax), %rax
	movq	%rcx, (%rax)
	movq	336(%r12), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB5_22
# BB#21:                                # %do.body.69.i
	incq	288(%rax)
.LBB5_22:                               # %if.end.80.i
	movq	5776(%rsp), %rdi
	movl	100(%rdi), %eax
	movl	100(%rbx), %ecx
	cmpl	%ecx, %eax
	movl	20(%rsp), %edx          # 4-byte Reload
	jle	.LBB5_24
# BB#23:                                # %if.then.85.i
	movl	%ecx, 100(%rdi)
	movl	%ecx, %eax
.LBB5_24:                               # %if.end.90.i
	andl	$128, %edx
	movl	96(%rbx), %ecx
	cmpl	%ecx, 96(%rdi)
	jle	.LBB5_26
# BB#25:                                # %if.then.96.i
	movl	%ecx, 96(%rdi)
.LBB5_26:                               # %if.end.101.i
	shll	$3, %eax
	movw	%ax, 108(%rdi)
	testl	%edx, %edx
	je	.LBB5_28
# BB#27:                                # %if.then.108.i
	movq	$pdf14_encode_color_tag, 1552(%rdi)
	movq	5776(%rsp), %rdi
	addw	$8, 108(%rdi)
.LBB5_28:                               # %if.end.114.i
	callq	check_device_separable
	movq	5776(%rsp), %rdi
	callq	gx_device_fill_in_procs
	movq	360(%r12), %rax
	movq	5776(%rsp), %rcx
	movq	%rax, 4224(%rcx)
	movq	$pdf14_get_cmap_procs, 360(%r12)
	movq	5776(%rsp), %rsi
	movq	%r12, %rdi
	callq	gx_set_cmap_procs
	movq	5776(%rsp), %rdi
	xorl	%eax, %eax
	cmpl	$0, 100(%rdi)
	jle	.LBB5_31
# BB#29:
	movl	$-1, %ecx
	.align	16, 0x90
.LBB5_30:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	$8, 204(%rdi,%rax)
	movq	5776(%rsp), %rdx
	movl	100(%rdx), %esi
	addl	%ecx, %esi
	shll	$3, %esi
	movb	%sil, 140(%rdx,%rax)
	incq	%rax
	movq	5776(%rsp), %rdi
	movslq	100(%rdi), %rdx
	decl	%ecx
	cmpq	%rdx, %rax
	jl	.LBB5_30
.LBB5_31:                               # %for.end.i
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB5_33
# BB#32:                                # %if.then.132.i
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 832(%rdi)
.LBB5_33:                               # %if.end.135.i
	callq	*1144(%rdi)
	movl	%eax, %ebp
	movq	5776(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	224(%r12), %ecx
	movl	%ecx, 4168(%rax)
	movl	228(%r12), %edx
	movl	%edx, 4172(%rax)
	movd	%ecx, %xmm0
	movd	%edx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4176(%rax)
	movl	220(%r12), %ecx
	movl	%ecx, 4180(%rax)
	movl	272(%r12), %ecx
	movl	%ecx, 4188(%rax)
	movl	276(%r12), %ecx
	movl	%ecx, 4192(%rax)
	movl	$0, 4196(%rax)
	movq	$0, 5016(%rax)
	movq	5776(%rsp), %rax
	movq	128(%rbx), %rcx
	movq	%rcx, 128(%rax)
	movq	24(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB5_49
# BB#34:                                # %if.then.142.i
	movq	$0, 704(%rsp)
	movw	$32760, 46(%rsp)        # imm = 0x7FF8
	movl	$pdf14_accum_Gray, %esi
	movl	100(%rbx), %eax
	movl	$-100, %ebp
	cmpl	$1, %eax
	je	.LBB5_39
# BB#35:                                # %if.then.142.i
	cmpl	$4, %eax
	jne	.LBB5_36
# BB#38:                                # %sw.bb.149.i
	movl	$pdf14_accum_CMYK, %esi
	jmp	.LBB5_39
.LBB5_36:                               # %if.then.142.i
	cmpl	$3, %eax
	jne	.LBB5_49
# BB#37:                                # %sw.bb.148.i
	movl	$pdf14_accum_RGB, %esi
.LBB5_39:                               # %lor.lhs.false.152.i
	movq	(%r14), %rdx
	leaq	704(%rsp), %rdi
	callq	gs_copydevice
	testl	%eax, %eax
	js	.LBB5_49
# BB#40:                                # %if.end.157.i
	leaq	1064(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	5776(%rsp), %rax
	movq	704(%rsp), %rcx
	movq	%rax, 18472(%rcx)
	movq	704(%rsp), %rdi
	movl	$1, 136(%rdi)
	callq	set_linear_color_bits_mask_shift
	movq	704(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_pdf14_device_copy_params
	movq	704(%rsp), %rdi
	movl	$1, 1056(%rdi)
	callq	gx_device_fill_in_procs
	movq	704(%rsp), %rdi
	addq	$1064, %rdi             # imm = 0x428
	movl	$40, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movq	1064(%rbx), %rax
	movq	1072(%rbx), %rcx
	cmpq	%rcx, %rax
	cmovgeq	%rax, %rcx
	movslq	%ecx, %rax
	movq	704(%rsp), %rdi
	movq	%rax, 1072(%rdi)
	callq	gdev_prn_open
	testl	%eax, %eax
	js	.LBB5_41
# BB#42:                                # %lor.lhs.false.182.i
	movq	704(%rsp), %rax
	cmpq	$0, 17184(%rax)
	je	.LBB5_43
# BB#44:                                # %if.end.189.i
	movl	$4, %esi
	movq	%rax, %rdi
	callq	*1688(%rax)
	movq	1744(%r12), %rsi
	movq	704(%rsp), %r8
	leaq	46(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$-1, %r9d
	movq	%r12, %rcx
	callq	gx_remap_concrete_DGray
	testl	%eax, %eax
	js	.LBB5_49
# BB#45:                                # %if.end.196.i
	movq	704(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movq	%r12, %rsi
	callq	*1632(%rdi)
	movq	704(%rsp), %rdi
	leaq	32(%rsp), %rsi
	xorl	%r9d, %r9d
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	clist_create_compositor
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB5_49
# BB#46:                                # %if.end.203.i
	movq	5776(%rsp), %rbp
	leaq	96(%rbp), %rdi
	movq	1728(%rbp), %rsi
	addq	$96, %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	leaq	1144(%rbp), %rdi
	xorl	%esi, %esi
	movl	$584, %edx              # imm = 0x248
	callq	memset
	movq	%rbp, %rdi
	callq	gx_device_forward_fill_in_procs
	movq	$gx_forward_close_device, 1176(%rbp)
	movq	$gx_forward_fill_rectangle, 1200(%rbp)
	movq	$gx_forward_fill_rectangle_hl_color, 1576(%rbp)
	movq	$gx_forward_tile_rectangle, 1208(%rbp)
	movq	$gx_forward_copy_mono, 1216(%rbp)
	movq	$gx_forward_copy_color, 1224(%rbp)
	movq	$gx_forward_get_page_device, 1296(%rbp)
	movq	$gx_forward_strip_tile_rectangle, 1416(%rbp)
	movq	$gx_forward_copy_alpha, 1312(%rbp)
	movq	$gx_forward_get_profile, 1680(%rbp)
	movq	$gx_forward_set_graphics_type_tag, 1688(%rbp)
	movq	$pdf14_forward_open_device, 1144(%rbp)
	movq	$pdf14_forward_put_params, 1256(%rbp)
	movq	$pdf14_forward_create_compositor, 1464(%rbp)
	movq	5776(%rsp), %rbp
	movq	4152(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_48
# BB#47:                                # %if.then.i.76.i
	callq	pdf14_ctx_free
	movq	$0, 4152(%rbp)
.LBB5_48:                               # %cleanup.i
	movl	%ebx, %ebp
	jmp	.LBB5_49
.LBB5_41:                               # %if.end.157.if.then.185_crit_edge.i
	movq	704(%rsp), %rax
.LBB5_43:                               # %if.then.185.i
	movq	(%r14), %rdi
	movl	$.L.str.63, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
.LBB5_49:                               # %gs_pdf14_device_push.exit
	movq	32(%rsp), %rbx
.LBB5_50:                               # %sw.epilog
	movq	%rbx, (%r15)
	movl	%ebp, %eax
	addq	$5784, %rsp             # imm = 0x1698
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	c_pdf14trans_create_default_compositor, .Lfunc_end5-c_pdf14trans_create_default_compositor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_9
	.quad	.LBB5_10
	.quad	.LBB5_12
	.quad	.LBB5_13
	.quad	.LBB5_15

	.text
	.align	16, 0x90
	.type	c_pdf14trans_equal,@function
c_pdf14trans_equal:                     # @c_pdf14trans_equal
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	c_pdf14trans_equal, .Lfunc_end6-c_pdf14trans_equal
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	c_pdf14trans_write,@function
c_pdf14trans_write:                     # @c_pdf14trans_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 56
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp40:
	.cfi_def_cfa_offset 528
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	(%rbx), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	40(%r15), %ebp
	movl	$0, 92(%rsp)
	movq	$0, 80(%rsp)
	movl	11952(%r12), %r14d
	movl	11956(%r12), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	11960(%r12), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	leaq	40(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	testl	%eax, %eax
	js	.LBB7_54
# BB#1:                                 # %if.end
	movq	40(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	48(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	leaq	97(%rsp), %r13
	movb	%bpl, 96(%rsp)
	movl	%ebp, %ecx
	cmpl	$11, %ebp
	ja	.LBB7_48
# BB#2:                                 # %if.end
	leaq	40(%r15), %rsi
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	jmpq	*.LJTI7_0(,%rcx,8)
.LBB7_3:                                # %sw.bb
	movq	$0, 11960(%r12)
	movq	%rsi, %rbp
	leaq	4(%rbp), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	leaq	101(%rsp), %rdi
	addq	$700, %rbp              # imm = 0x2BC
	movl	$4, %edx
	movq	%rbp, %rsi
	callq	memcpy
	leaq	105(%rsp), %r13
	movq	72(%rsp), %rax
	cmpl	$6, 16(%rax)
	je	.LBB7_6
# BB#4:                                 # %lor.lhs.false
	cmpl	$0, 4(%rax)
	je	.LBB7_5
.LBB7_6:                                # %if.then.11
	movq	728(%r15), %rax
	movq	144(%rax), %rsi
	movq	%rsi, 10152(%r12)
	movq	%r12, %rdi
	callq	clist_icc_searchtable
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB7_8
# BB#7:
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB7_49
.LBB7_9:                                # %sw.bb.24
	addq	$700, %rsi              # imm = 0x2BC
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	leaq	101(%rsp), %r13
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	jmp	.LBB7_49
.LBB7_12:                               # %sw.bb.39
	leaq	620(%rsi), %r14
	movq	%r14, %rdi
	movq	%rsi, %rbp
	callq	cmd_write_ctm_return_length_nodevice
	movl	%eax, %r13d
	leaq	96(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rsi, %r14
	movl	%r13d, %edx
	callq	cmd_write_ctm
	movq	%rbp, %rdx
	testl	%eax, %eax
	js	.LBB7_54
# BB#13:                                # %if.end.44
	incl	32(%rsp)                # 4-byte Folded Spill
	movslq	%r13d, %rbp
	leaq	1(%rbp,%r14), %r13
	movl	52(%r15), %eax
	movl	56(%r15), %ecx
	andl	$1, %eax
	addl	%ecx, %ecx
	andl	$2, %ecx
	orl	%eax, %ecx
	movb	%cl, 1(%rbp,%r14)
	movb	640(%r15), %al
	movb	%al, 2(%rbp,%r14)
	movb	712(%r15), %al
	leaq	4(%rbp,%r14), %rdi
	movb	%al, 3(%rbp,%r14)
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leaq	668(%rdx), %rsi
	movl	$4, %edx
	callq	memcpy
	leaq	8(%rbp,%r14), %rdi
	leaq	648(%r15), %rsi
	movl	$4, %edx
	callq	memcpy
	leaq	12(%rbp,%r14), %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	addq	$612, %rsi              # imm = 0x264
	movl	$4, %edx
	callq	memcpy
	leaq	16(%rbp,%r14), %rdi
	leaq	64(%r15), %rsi
	movl	$32, %edx
	callq	memcpy
	leaq	48(%rbp,%r14), %rdi
	movl	704(%r15), %eax
	movl	%eax, 92(%rsp)
	leaq	92(%rsp), %rsi
	movl	$4, %edx
	callq	memcpy
	leaq	52(%rbp,%r14), %rbp
	cmpl	$5, 712(%r15)
	jne	.LBB7_16
# BB#14:                                # %if.then.82
	movq	728(%r15), %rax
	movq	144(%rax), %rsi
	movq	%rsi, 80(%rsp)
	movq	%r12, %rdi
	callq	clist_icc_searchtable
	testl	%eax, %eax
	jne	.LBB7_16
# BB#15:                                # %if.then.87
	movq	80(%rsp), %rsi
	movq	728(%r15), %rdx
	movq	%r12, %rdi
	callq	clist_icc_addentry
.LBB7_16:                               # %do.body.95
	leaq	80(%rsp), %rsi
	movl	$8, %edx
	movq	%rbp, %rdi
	callq	memcpy
	addq	$59, %r13
	movl	$1, %r14d
	jmp	.LBB7_48
.LBB7_10:                               # %sw.bb.31
	movl	32(%rsp), %ecx          # 4-byte Reload
	decl	%ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	28(%rsp), %eax          # 4-byte Reload
	orl	%ecx, %eax
	jne	.LBB7_48
	jmp	.LBB7_11
.LBB7_17:                               # %sw.bb.108
	leaq	620(%rsi), %rbp
	movq	%rbp, %rdi
	movq	%rsi, %r14
	callq	cmd_write_ctm_return_length_nodevice
	movl	%eax, %r13d
	leaq	96(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rsi, %rbp
	movl	%r13d, %edx
	callq	cmd_write_ctm
	movq	%r14, %rcx
	testl	%eax, %eax
	js	.LBB7_54
# BB#18:                                # %do.body.115
	movslq	%r13d, %r13
	leaq	1(%r13,%rbp), %rdi
	movq	%rcx, %r14
	leaq	60(%r14), %rsi
	movl	$4, %edx
	callq	memcpy
	movb	712(%r15), %al
	leaq	6(%r13,%rbp), %rdi
	movb	%al, 5(%r13,%rbp)
	leaq	668(%r14), %rsi
	movl	$4, %edx
	callq	memcpy
	movb	684(%r15), %al
	movb	%al, 10(%r13,%rbp)
	movb	108(%r15), %al
	movb	%al, 11(%r13,%rbp)
	movb	104(%r15), %al
	leaq	13(%r13,%rbp), %rdi
	movb	%al, 12(%r13,%rbp)
	leaq	64(%r15), %rsi
	movl	$32, %edx
	callq	memcpy
	leaq	45(%r13,%rbp), %rdi
	movl	704(%r15), %eax
	movl	%eax, 92(%rsp)
	leaq	92(%rsp), %rsi
	movl	$4, %edx
	callq	memcpy
	leaq	49(%r13,%rbp), %r13
	movl	104(%r15), %eax
	testl	%eax, %eax
	je	.LBB7_20
# BB#19:                                # %if.then.149
	shll	$2, %eax
	leaq	112(%r15), %rsi
	movslq	%eax, %rbp
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	(%r13,%rbp), %rdi
	leaq	368(%r15), %rsi
	movl	$4, %edx
	callq	memcpy
	leaq	4(%r13,%rbp), %r13
.LBB7_20:                               # %if.end.159
	movl	$256, %ebp              # imm = 0x100
	cmpl	$0, 68(%r14)
	je	.LBB7_22
# BB#21:                                # %select.mid
	xorl	%ebp, %ebp
.LBB7_22:                               # %select.end
	incl	28(%rsp)                # 4-byte Folded Spill
	cmpl	$5, 712(%r15)
	jne	.LBB7_25
# BB#23:                                # %if.then.167
	movq	728(%r15), %rax
	movq	144(%rax), %rsi
	movq	%rsi, 80(%rsp)
	movq	%r12, %rdi
	callq	clist_icc_searchtable
	testl	%eax, %eax
	jne	.LBB7_25
# BB#24:                                # %if.then.172
	movq	80(%rsp), %rsi
	movq	728(%r15), %rdx
	movq	%r12, %rdi
	callq	clist_icc_addentry
.LBB7_25:                               # %do.body.181
	leaq	80(%rsp), %rsi
	movl	$8, %edx
	movq	%r13, %rdi
	callq	memcpy
	addq	$8, %r13
	movl	$1, %r14d
	jmp	.LBB7_49
.LBB7_26:                               # %sw.bb.194
	movl	28(%rsp), %eax          # 4-byte Reload
	decl	%eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	orl	32(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB7_48
.LBB7_11:                               # %if.then.36
	movl	11964(%r12), %r14d
	jmp	.LBB7_48
.LBB7_27:                               # %sw.bb.204
	movl	640(%r15), %ecx
	movl	$1, %edi
	testl	%ecx, %ecx
	jne	.LBB7_31
# BB#28:                                # %lor.lhs.false.208
	movss	648(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_31
	jp	.LBB7_31
# BB#29:                                # %lor.lhs.false.214
	movss	612(%rsi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI7_0(%rip), %xmm0
	jne	.LBB7_31
	jp	.LBB7_31
# BB#30:                                # %if.else.221
	xorl	%eax, %eax
	movl	28(%rsp), %edx          # 4-byte Reload
	orl	32(%rsp), %edx          # 4-byte Folded Reload
	cmovel	%eax, %r14d
	movl	%r14d, %edi
.LBB7_31:                               # %if.end.229
	movl	28(%rsp), %eax          # 4-byte Reload
	orl	32(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB7_33
# BB#32:                                # %if.then.235
	movl	%edi, 11964(%r12)
.LBB7_33:                               # %if.end.237
	movl	48(%r15), %eax
	movb	%al, 97(%rsp)
	movl	$2, %edx
	testb	$1, %al
	jne	.LBB7_35
# BB#34:
	leaq	98(%rsp), %r13
	jmp	.LBB7_36
.LBB7_35:                               # %if.then.243
	leaq	99(%rsp), %r13
	movb	%cl, 98(%rsp)
	movl	$3, %edx
.LBB7_36:                               # %if.end.247
	testb	$2, %al
	je	.LBB7_38
# BB#37:                                # %if.then.251
	movb	604(%rsi), %cl
	movb	%cl, (%r13)
	leaq	97(%rsp,%rdx), %r13
.LBB7_38:                               # %if.end.254
	movl	%edi, %r14d
	movq	%rsi, %rbp
	testb	$8, %al
	je	.LBB7_40
# BB#39:                                # %do.body.259
	leaq	648(%r15), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	addq	$4, %r13
	movl	48(%r15), %eax
.LBB7_40:                               # %if.end.266
	testb	$4, %al
	je	.LBB7_42
# BB#41:                                # %do.body.271
	leaq	612(%rbp), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	addq	$4, %r13
	movl	48(%r15), %eax
.LBB7_42:                               # %if.end.278
	testb	$16, %al
	je	.LBB7_44
# BB#43:                                # %do.body.283
	leaq	688(%r15), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	addq	$4, %r13
	movl	48(%r15), %eax
.LBB7_44:                               # %if.end.288
	movq	%rbp, %rsi
	testb	$32, %al
	je	.LBB7_46
# BB#45:                                # %do.body.293
	addq	$652, %rsi              # imm = 0x28C
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	addq	$4, %r13
	movl	48(%r15), %eax
.LBB7_46:                               # %if.end.298
	testb	$64, %al
	je	.LBB7_48
# BB#47:                                # %do.body.303
	leaq	696(%r15), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	addq	$4, %r13
.LBB7_48:                               # %sw.epilog
	xorl	%ebp, %ebp
.LBB7_49:                               # %sw.epilog
	leaq	96(%rsp), %rax
	subq	%rax, %r13
	movl	%ebp, %ebp
	leaq	(%r13,%rbp), %rcx
	movl	%ecx, (%rbx)
	movl	$-15, %eax
	cmpl	36(%rsp), %ecx          # 4-byte Folded Reload
	jg	.LBB7_54
# BB#50:                                # %if.end.321
	movq	%rcx, %rbx
	shlq	$32, %rbx
	movabsq	$12884901888, %rdx      # imm = 0x300000000
	leaq	(%rdx,%rbx), %rdx
	sarq	$32, %rdx
	cmpq	$617, %rdx              # imm = 0x269
	ja	.LBB7_54
# BB#51:                                # %if.end.327
	subl	%ebp, %ecx
	movslq	%ecx, %rdx
	leaq	96(%rsp), %rsi
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	callq	memcpy
	testl	%ebp, %ebp
	je	.LBB7_53
# BB#52:                                # %if.then.332
	sarq	$32, %rbx
	addq	%rbx, %r13
	subq	%rbp, %r13
	addq	$384, %r15              # imm = 0x180
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memcpy
.LBB7_53:                               # %do.end.343
	movl	%r14d, 11952(%r12)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 11956(%r12)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 11960(%r12)
	xorl	%eax, %eax
.LBB7_54:                               # %cleanup
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_8:                                # %if.then.17
	movq	728(%r15), %rdx
	movq	144(%rdx), %rsi
	movq	%r12, %rdi
	callq	clist_icc_addentry
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB7_49
.LBB7_5:
	xorl	%ebp, %ebp
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB7_49
.Lfunc_end7:
	.size	c_pdf14trans_write, .Lfunc_end7-c_pdf14trans_write
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_3
	.quad	.LBB7_9
	.quad	.LBB7_49
	.quad	.LBB7_12
	.quad	.LBB7_10
	.quad	.LBB7_17
	.quad	.LBB7_26
	.quad	.LBB7_27
	.quad	.LBB7_49
	.quad	.LBB7_49
	.quad	.LBB7_54
	.quad	.LBB7_54

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	c_pdf14trans_read,@function
c_pdf14trans_read:                      # @c_pdf14trans_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp53:
	.cfi_def_cfa_offset 768
.Ltmp54:
	.cfi_offset %rbx, -56
.Ltmp55:
	.cfi_offset %r12, -48
.Ltmp56:
	.cfi_offset %r13, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r14
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	movl	$704, %edx              # imm = 0x2C0
	callq	memset
	movl	$-15, %eax
	testl	%ebx, %ebx
	je	.LBB8_29
# BB#1:                                 # %if.end
	leaq	1(%r12), %rbp
	movzbl	(%r12), %eax
	movl	%eax, 8(%rsp)
	leaq	628(%rsp), %rbx
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	8(%rsp), %ecx
	cmpq	$11, %rcx
	ja	.LBB8_27
# BB#2:                                 # %if.end
	xorl	%eax, %eax
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_3:                                # %do.body.2
	leaq	12(%rsp), %rdi
	movl	$4, %edx
	movq	%rbp, %rsi
	callq	memcpy
	leaq	5(%r12), %rsi
	leaq	708(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy
	leaq	9(%r12), %rbp
	jmp	.LBB8_27
.LBB8_4:                                # %do.body.12
	leaq	708(%rsp), %rdi
	movl	$4, %edx
	movq	%rbp, %rsi
	callq	memcpy
	leaq	5(%r12), %rbp
	jmp	.LBB8_27
.LBB8_5:                                # %sw.bb.19
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cmd_read_matrix
	movq	%rax, %rbp
	movzbl	(%rbp), %eax
	andl	$1, %eax
	movl	%eax, 20(%rsp)
	movzbl	(%rbp), %eax
	shrl	%eax
	andl	$1, %eax
	movl	%eax, 24(%rsp)
	movzbl	1(%rbp), %eax
	movl	%eax, 608(%rsp)
	leaq	3(%rbp), %rsi
	movzbl	2(%rbp), %eax
	movl	%eax, 680(%rsp)
	leaq	676(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy
	leaq	7(%rbp), %rsi
	leaq	616(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy
	leaq	11(%rbp), %rsi
	leaq	620(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy
	leaq	15(%rbp), %rsi
	leaq	32(%rsp), %rdi
	movl	$32, %edx
	callq	memcpy
	leaq	47(%rbp), %rsi
	leaq	672(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy
	leaq	51(%rbp), %rsi
	leaq	688(%rsp), %rdi
	movl	$8, %edx
	callq	memcpy
	addq	$59, %rbp
	jmp	.LBB8_27
.LBB8_6:                                # %sw.bb.61
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cmd_read_matrix
	movq	%rax, %r13
	leaq	68(%rsp), %rdi
	movl	$4, %edx
	movq	%r13, %rsi
	callq	memcpy
	leaq	5(%r13), %rsi
	movzbl	4(%r13), %eax
	movl	%eax, 680(%rsp)
	leaq	676(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy
	movzbl	9(%r13), %eax
	movl	%eax, 652(%rsp)
	movzbl	10(%r13), %eax
	movl	%eax, 76(%rsp)
	leaq	12(%r13), %rsi
	movzbl	11(%r13), %eax
	movl	%eax, 72(%rsp)
	leaq	32(%rsp), %rdi
	movl	$32, %edx
	callq	memcpy
	leaq	44(%r13), %rsi
	leaq	672(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy
	addq	$48, %r13
	movl	72(%rsp), %eax
	testl	%eax, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.97
	shll	$2, %eax
	leaq	80(%rsp), %rdi
	movslq	%eax, %rbx
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	leaq	(%r13,%rbx), %rsi
	leaq	336(%rsp), %rdi
	movl	$4, %edx
	callq	memcpy
	leaq	4(%r13,%rbx), %r13
.LBB8_8:                                # %do.body.107
	leaq	688(%rsp), %rdi
	movl	$8, %edx
	movq	%r13, %rsi
	callq	memcpy
	leaq	8(%r13), %rbp
	cmpl	$0, 76(%rsp)
	je	.LBB8_11
# BB#9:                                 # %for.body.preheader
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB8_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movb	%al, 352(%rsp,%rbx)
	leal	1(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	.LCPI8_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movb	%al, 353(%rsp,%rbx)
	addq	$2, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	jne	.LBB8_10
	jmp	.LBB8_27
.LBB8_12:                               # %sw.bb.132
	movzbl	1(%r12), %eax
	movl	%eax, 16(%rsp)
	movl	$2, %ecx
	testb	$1, %al
	jne	.LBB8_14
# BB#13:
	leaq	2(%r12), %rbp
	jmp	.LBB8_15
.LBB8_14:                               # %if.then.138
	leaq	3(%r12), %rbp
	movzbl	2(%r12), %ecx
	movl	%ecx, 608(%rsp)
	movl	$3, %ecx
.LBB8_15:                               # %if.end.142
	testb	$2, %al
	je	.LBB8_17
# BB#16:                                # %if.then.146
	movzbl	(%rbp), %edx
	leaq	1(%r12,%rcx), %rbp
	movl	%edx, 612(%rsp)
.LBB8_17:                               # %if.end.149
	testb	$8, %al
	je	.LBB8_19
# BB#18:                                # %do.body.154
	leaq	616(%rsp), %rdi
	movl	$4, %edx
	movq	%rbp, %rsi
	callq	memcpy
	addq	$4, %rbp
	movl	16(%rsp), %eax
.LBB8_19:                               # %if.end.161
	testb	$4, %al
	je	.LBB8_21
# BB#20:                                # %do.body.166
	leaq	620(%rsp), %rdi
	movl	$4, %edx
	movq	%rbp, %rsi
	callq	memcpy
	addq	$4, %rbp
	movl	16(%rsp), %eax
.LBB8_21:                               # %if.end.173
	testb	$16, %al
	je	.LBB8_23
# BB#22:                                # %do.body.178
	leaq	656(%rsp), %rdi
	movl	$4, %edx
	movq	%rbp, %rsi
	callq	memcpy
	addq	$4, %rbp
	movl	16(%rsp), %eax
.LBB8_23:                               # %if.end.183
	testb	$32, %al
	je	.LBB8_25
# BB#24:                                # %do.body.188
	leaq	660(%rsp), %rdi
	movl	$4, %edx
	movq	%rbp, %rsi
	callq	memcpy
	addq	$4, %rbp
	movl	16(%rsp), %eax
.LBB8_25:                               # %if.end.193
	testb	$64, %al
	je	.LBB8_27
# BB#26:                                # %do.body.198
	leaq	664(%rsp), %rdi
	movl	$4, %edx
	movq	%rbp, %rsi
	callq	memcpy
	addq	$4, %rbp
	jmp	.LBB8_27
.LBB8_11:                               # %do.body.123
	leaq	352(%rsp), %rdi
	movl	$256, %edx              # imm = 0x100
	movq	%rbp, %rsi
	callq	memcpy
	addq	$264, %r13              # imm = 0x108
	movq	%r13, %rbp
.LBB8_27:                               # %sw.epilog
	movl	$st_pdf14trans, %esi
	movl	$.L.str.64, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB8_29
# BB#28:                                # %if.end.208
	movq	$gs_composite_pdf14trans_type, (%rbx)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_next_ids
	movq	%rax, 8(%rbx)
	movq	%rbx, %rdi
	addq	$40, %rdi
	leaq	8(%rsp), %rsi
	movl	$704, %edx              # imm = 0x2C0
	callq	memcpy
	movl	$0, 16(%rbx)
	movq	%rbx, (%r14)
	subq	%r12, %rbp
	movq	%rbp, %rax
	shlq	$32, %rax
	movabsq	$12884901888, %rcx      # imm = 0x300000000
	addq	%rax, %rcx
	sarq	$32, %rcx
	cmpq	$617, %rcx              # imm = 0x269
	movl	$-15, %eax
	cmovbel	%ebp, %eax
.LBB8_29:                               # %cleanup
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	c_pdf14trans_read, .Lfunc_end8-c_pdf14trans_read
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_27
	.quad	.LBB8_5
	.quad	.LBB8_27
	.quad	.LBB8_6
	.quad	.LBB8_27
	.quad	.LBB8_12
	.quad	.LBB8_27
	.quad	.LBB8_27
	.quad	.LBB8_29
	.quad	.LBB8_29

	.text
	.align	16, 0x90
	.type	c_pdf14trans_adjust_ctm,@function
c_pdf14trans_adjust_ctm:                # @c_pdf14trans_adjust_ctm
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 32
	movq	676(%rdi), %rax
	movq	%rax, 16(%rsp)
	movups	660(%rdi), %xmm0
	movaps	%xmm0, (%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%esi, %xmm0
	movss	16(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 16(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%edx, %xmm0
	movss	20(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm1
	movss	%xmm1, 20(%rsp)
	leaq	(%rsp), %rsi
	movq	%rcx, %rdi
	callq	gs_imager_setmatrix
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
.Lfunc_end9:
	.size	c_pdf14trans_adjust_ctm, .Lfunc_end9-c_pdf14trans_adjust_ctm
	.cfi_endproc

	.align	16, 0x90
	.type	c_pdf14trans_is_closing,@function
c_pdf14trans_is_closing:                # @c_pdf14trans_is_closing
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-28, %eax
	movl	40(%rdi), %ecx
	cmpq	$11, %rcx
	ja	.LBB10_32
# BB#1:                                 # %entry
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_31:                              # %sw.bb.1
	xorl	%eax, %eax
.LBB10_32:                              # %cleanup.26
	retq
.LBB10_2:                               # %sw.bb.2
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB10_32
	.align	16, 0x90
.LBB10_3:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rax
	xorl	%edx, %edx
	movzbl	(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB10_8
# BB#4:                                 # %if.then.i
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	40(%rcx), %eax
	movq	%rcx, (%rsi)
	cmpl	$7, %eax
	jne	.LBB10_5
.LBB10_7:                               # %if.end.41.i
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	24(%rcx), %rcx
	movl	$2, %edx
	testq	%rcx, %rcx
	jne	.LBB10_3
	jmp	.LBB10_8
.LBB10_5:                               # %if.then.i
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$1, %edx
	testl	%eax, %eax
	je	.LBB10_8
# BB#6:                                 # %if.then.7.i
                                        #   in Loop: Header=BB10_3 Depth=1
	addl	$-3, %eax
	cmpl	$3, %eax
	movl	$0, %edx
	jbe	.LBB10_7
.LBB10_8:                               # %find_opening_op.exit
	cmpl	$1, %edx
	movl	$5, %eax
	cmovnel	%edx, %eax
	retq
.LBB10_9:                               # %sw.bb.6
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_10
	.align	16, 0x90
.LBB10_11:                              # %for.cond.i.45
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rdx
	xorl	%eax, %eax
	movzbl	(%rdx), %edx
	cmpl	$3, %edx
	jne	.LBB10_32
# BB#12:                                # %if.then.i.49
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	40(%rcx), %edx
	movq	%rcx, (%rsi)
	cmpl	$7, %edx
	jne	.LBB10_13
.LBB10_15:                              # %if.end.41.i.55
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB10_11
	jmp	.LBB10_16
.LBB10_13:                              # %if.then.i.49
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	$6, %eax
	cmpl	$3, %edx
	je	.LBB10_32
# BB#14:                                # %if.then.7.i.52
                                        #   in Loop: Header=BB10_11 Depth=1
	addl	$-5, %edx
	cmpl	$1, %edx
	movl	$0, %eax
	jbe	.LBB10_15
	jmp	.LBB10_32
.LBB10_17:                              # %sw.bb.16
	movq	(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_18
	.align	16, 0x90
.LBB10_19:                              # %for.cond.i.28
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rdx
	xorl	%eax, %eax
	movzbl	(%rdx), %edx
	cmpl	$3, %edx
	jne	.LBB10_32
# BB#20:                                # %if.then.i.32
                                        #   in Loop: Header=BB10_19 Depth=1
	movl	40(%rcx), %edx
	movq	%rcx, (%rsi)
	movl	$6, %eax
	cmpl	$5, %edx
	je	.LBB10_32
# BB#21:                                # %if.end.i.34
                                        #   in Loop: Header=BB10_19 Depth=1
	cmpl	$7, %edx
	movl	$0, %eax
	jne	.LBB10_32
# BB#22:                                # %if.end.41.i.38
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB10_19
# BB#23:
	movl	$2, %eax
	retq
.LBB10_24:                              # %sw.bb.21
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	jmp	.LBB10_25
	.align	16, 0x90
.LBB10_30:                              # %if.end.21.i
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	24(%rcx), %rcx
.LBB10_25:                              # %sw.bb.21
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB10_32
# BB#26:                                # %for.cond.i.16
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	(%rcx), %rdx
	movzbl	(%rdx), %edx
	cmpl	$3, %edx
	jne	.LBB10_32
# BB#27:                                # %if.then.i.20
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	%rcx, (%rsi)
	cmpl	$7, 40(%rcx)
	jne	.LBB10_32
# BB#28:                                # %if.end.i.21
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	96(%rcx), %edx
	cmpl	96(%rdi), %edx
	jne	.LBB10_30
# BB#29:                                # %if.then.10.i
	movl	48(%rcx), %eax
	movl	48(%rdi), %ecx
	andl	%eax, %ecx
	cmpl	%eax, %ecx
	sete	%al
	movzbl	%al, %eax
	shll	$2, %eax
	retq
.LBB10_10:
	movl	$2, %eax
	retq
.LBB10_18:
	movl	$2, %eax
	retq
.LBB10_16:
	movl	$2, %eax
	retq
.Lfunc_end10:
	.size	c_pdf14trans_is_closing, .Lfunc_end10-c_pdf14trans_is_closing
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_31
	.quad	.LBB10_2
	.quad	.LBB10_31
	.quad	.LBB10_31
	.quad	.LBB10_9
	.quad	.LBB10_31
	.quad	.LBB10_17
	.quad	.LBB10_24
	.quad	.LBB10_31
	.quad	.LBB10_31
	.quad	.LBB10_31
	.quad	.LBB10_31

	.text
	.align	16, 0x90
	.type	c_pdf14trans_is_friendly,@function
c_pdf14trans_is_friendly:               # @c_pdf14trans_is_friendly
	.cfi_startproc
# BB#0:                                 # %entry
	testl	$-5, 40(%rdi)
	jne	.LBB11_5
# BB#1:                                 # %if.then
	movzbl	%sil, %eax
	cmpl	$6, %eax
	jne	.LBB11_2
# BB#4:                                 # %land.lhs.true.15
	andb	$-64, %dl
	movzbl	%dl, %ecx
	movl	$1, %eax
	cmpl	$128, %ecx
	je	.LBB11_6
	jmp	.LBB11_5
.LBB11_2:                               # %if.then
	cmpl	$223, %eax
	jne	.LBB11_5
# BB#3:                                 # %land.lhs.true
	andb	$-2, %dl
	movzbl	%dl, %ecx
	movl	$1, %eax
	cmpl	$2, %ecx
	je	.LBB11_6
.LBB11_5:                               # %if.end.21
	xorl	%eax, %eax
.LBB11_6:                               # %cleanup
	retq
.Lfunc_end11:
	.size	c_pdf14trans_is_friendly, .Lfunc_end11-c_pdf14trans_is_friendly
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.text
	.align	16, 0x90
	.type	c_pdf14trans_clist_write_update,@function
c_pdf14trans_clist_write_update:        # @c_pdf14trans_clist_write_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	subq	$5080, %rsp             # imm = 0x13D8
.Ltmp67:
	.cfi_def_cfa_offset 5136
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	40(%rbp), %eax
	cmpq	$11, %rax
	ja	.LBB12_37
# BB#1:                                 # %entry
	xorl	%r13d, %r13d
	jmpq	*.LJTI12_0(,%rax,8)
.LBB12_2:                               # %sw.bb
	movl	1112(%rbx), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB12_32
# BB#3:                                 # %if.end.i.i
	movq	8(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	16(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movq	%rbx, %rdi
	callq	pdf14_determine_default_blend_cs
	movl	$-15, %r13d
	movl	%eax, %ecx
	cmpl	$4, %eax
	ja	.LBB12_32
# BB#4:                                 # %if.end.i.i
	jmpq	*.LJTI12_1(,%rcx,8)
.LBB12_5:                               # %sw.bb.i.i.i
	leaq	48(%rsp), %rdi
	movl	$pdf14_clist_Gray_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	callq	memcpy
	movl	$1, 144(%rsp)
	movl	$1, 148(%rsp)
	movl	$255, 160(%rsp)
	movb	$0, 158(%rsp)
	movl	$256, 168(%rsp)         # imm = 0x100
	jmp	.LBB12_12
.LBB12_38:                              # %sw.epilog
	movq	%rbx, %rdi
	callq	clist_writer_check_empty_cropping_stack
	movl	%eax, %r13d
	movq	%rbx, (%r15)
	testl	%r13d, %r13d
	jns	.LBB12_39
	jmp	.LBB12_33
.LBB12_34:                              # %sw.bb.3
	movl	12228(%rbx), %eax
	jmp	.LBB12_36
.LBB12_35:                              # %sw.bb.7
	movl	12224(%rbx), %eax
	incl	%eax
	movl	%eax, 12224(%rbx)
	movl	%eax, 12228(%rbx)
.LBB12_36:                              # %sw.epilog.thread
	movl	%eax, 704(%rbp)
.LBB12_37:                              # %sw.epilog.thread
	movq	%rbx, (%r15)
.LBB12_39:                              # %if.end
	addq	$40, %rbp
	leaq	10336(%rbx), %rdi
	addq	$620, %rbp              # imm = 0x26C
	movq	%rbp, %rsi
	callq	gs_imager_setmatrix
	movl	%eax, %ebp
	movl	$2048, %esi             # imm = 0x800
	movq	%rbx, %rdi
	callq	cmd_clear_known
	movl	%ebp, %eax
	jmp	.LBB12_40
.LBB12_6:                               # %sw.bb.7.i.i.i
	leaq	48(%rsp), %rdi
	movl	$pdf14_clist_RGB_device, %esi
	jmp	.LBB12_7
.LBB12_8:                               # %sw.bb.8.i.i.i
	leaq	48(%rsp), %rdi
	movl	$pdf14_clist_CMYK_device, %esi
.LBB12_7:                               # %if.end.4.i.i
	movl	$5024, %edx             # imm = 0x13A0
	callq	memcpy
	jmp	.LBB12_12
.LBB12_9:                               # %sw.bb.9.i.i.i
	leaq	48(%rsp), %rdi
	movl	$pdf14_clist_CMYKspot_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	callq	memcpy
	movl	44(%rbp), %eax
	testl	%eax, %eax
	js	.LBB12_12
# BB#10:                                # %if.then.i.i.i
	movl	%eax, 1808(%rsp)
	addl	$4, %eax
	cmpl	$64, %eax
	movl	$64, %ecx
	cmovlel	%eax, %ecx
	movl	%ecx, 148(%rsp)
	shll	$3, %ecx
	movw	%cx, 156(%rsp)
	jmp	.LBB12_12
.LBB12_11:                              # %sw.bb.31.i.i.i
	leaq	48(%rsp), %rdi
	movl	$pdf14_clist_custom_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	callq	memcpy
	leaq	144(%rsp), %rdi
	leaq	96(%rbx), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	148(%rsp), %eax
	shll	$3, %eax
	movw	%ax, 156(%rsp)
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [255,255,256,256]
	movups	%xmm0, 160(%rsp)
.LBB12_12:                              # %if.end.4.i.i
	leaq	5072(%rsp), %rdi
	leaq	48(%rsp), %rsi
	movq	%r12, %rdx
	callq	gs_copydevice
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB12_32
# BB#13:                                # %if.end.8.i.i
	movq	5072(%rsp), %rdi
	movl	100(%rdi), %eax
	movl	100(%rbx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB12_15
# BB#14:                                # %if.then.12.i.i
	movl	%ecx, 100(%rdi)
	movl	%ecx, %eax
.LBB12_15:                              # %if.end.17.i.i
	movl	4(%rsp), %edx           # 4-byte Reload
	andl	$128, %edx
	movl	96(%rbx), %ecx
	cmpl	%ecx, 96(%rdi)
	jle	.LBB12_17
# BB#16:                                # %if.then.22.i.i
	movl	%ecx, 96(%rdi)
.LBB12_17:                              # %if.end.27.i.i
	shll	$3, %eax
	movw	%ax, 108(%rdi)
	movl	840(%rbx), %eax
	movl	%eax, 840(%rdi)
	movl	844(%rbx), %eax
	movl	%eax, 844(%rdi)
	movl	848(%rbx), %eax
	movl	%eax, 848(%rdi)
	testl	%edx, %edx
	je	.LBB12_19
# BB#18:                                # %if.then.34.i.i
	movq	$pdf14_encode_color_tag, 1552(%rdi)
	movq	5072(%rsp), %rdi
	addw	$8, 108(%rdi)
.LBB12_19:                              # %if.end.40.i.i
	callq	check_device_separable
	movq	5072(%rsp), %rdi
	callq	gx_device_fill_in_procs
	movq	5072(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_pdf14_device_copy_params
	movq	5072(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_device_set_target
	movq	5072(%rsp), %rdi
	xorl	%eax, %eax
	cmpl	$0, 100(%rdi)
	jle	.LBB12_22
# BB#20:
	movl	$-1, %ecx
	.align	16, 0x90
.LBB12_21:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movb	$8, 204(%rdi,%rax)
	movq	5072(%rsp), %rdx
	movl	100(%rdx), %esi
	addl	%ecx, %esi
	shll	$3, %esi
	movb	%sil, 140(%rdx,%rax)
	incq	%rax
	movq	5072(%rsp), %rdi
	movslq	100(%rdi), %rdx
	decl	%ecx
	cmpq	%rdx, %rax
	jl	.LBB12_21
.LBB12_22:                              # %for.end.i.i
	callq	*1144(%rdi)
	movl	%eax, %r13d
	movq	5072(%rsp), %rax
	movq	%rbx, 4208(%rax)
	movq	40(%rsp), %rax
	cmpl	$6, 16(%rax)
	je	.LBB12_24
# BB#23:                                # %lor.lhs.false.i.i
	cmpl	$0, 4(%rax)
	je	.LBB12_31
.LBB12_24:                              # %do.body.60.i.i
	movq	5072(%rsp), %rax
	movq	1104(%rax), %rcx
	movq	(%rcx), %rsi
	movq	336(%r14), %rcx
	movq	16(%rcx), %rdx
	cmpq	%rdx, %rsi
	je	.LBB12_31
# BB#25:                                # %do.body.65.i.i
	testq	%rdx, %rdx
	je	.LBB12_27
# BB#26:                                # %do.body.70.i.i
	incq	288(%rdx)
.LBB12_27:                              # %do.body.82.i.i
	testq	%rsi, %rsi
	je	.LBB12_30
# BB#28:                                # %do.end.91.i.i
	decq	288(%rsi)
	jne	.LBB12_30
# BB#29:                                # %do.end.110.i.i
	movq	296(%rsi), %rdi
	movl	$.L.str.77, %edx
	callq	*304(%rsi)
	movq	336(%r14), %rcx
	movq	5072(%rsp), %rax
.LBB12_30:                              # %do.end.133.i.i
	movq	16(%rcx), %rcx
	movq	1104(%rax), %rax
	movq	%rcx, (%rax)
.LBB12_31:                              # %if.end.142.i.i
	movq	5072(%rsp), %rax
	movq	1552(%rax), %rcx
	movq	%rcx, 4984(%rax)
	movq	5072(%rsp), %rax
	movq	1560(%rax), %rcx
	movq	%rcx, 4992(%rax)
	movq	5072(%rsp), %rax
	movq	1536(%rax), %rcx
	movq	%rcx, 5000(%rax)
	movq	5072(%rsp), %rax
	movq	1544(%rax), %rcx
	movq	%rcx, 5008(%rax)
	movl	136(%rbx), %eax
	movq	5072(%rsp), %rcx
	movl	%eax, 136(%rcx)
	movq	%rcx, (%r15)
.LBB12_32:                              # %gs_pdf14_clist_device_push.exit
	movq	(%r15), %rbp
	leaq	4232(%rbp), %rdi
	leaq	96(%rbx), %r12
	movl	$720, %edx              # imm = 0x2D0
	movq	%r12, %rsi
	callq	memcpy
	movq	(%r15), %rsi
	addq	$96, %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%r12, %rdi
	callq	memcpy
	movq	4264(%rbp), %rax
	movq	%rax, 128(%rbx)
	movq	%rax, 128(%rbp)
	movw	108(%rbp), %ax
	movw	%ax, 12252(%rbx)
	movl	104(%rbp), %eax
	movl	%eax, 12248(%rbx)
	movl	100(%rbp), %eax
	movl	%eax, 12244(%rbx)
	movl	116(%rbp), %eax
	movl	%eax, 12260(%rbx)
	movl	112(%rbp), %eax
	movl	%eax, 12256(%rbx)
	movups	1552(%rbx), %xmm0
	movups	%xmm0, 4952(%rbp)
	movq	4984(%rbp), %rax
	movq	%rax, 1552(%rbp)
	movq	%rax, 1552(%rbx)
	movq	4992(%rbp), %rax
	movq	%rax, 1560(%rbp)
	movq	%rax, 1560(%rbx)
	movups	1536(%rbx), %xmm0
	movups	%xmm0, 4968(%rbp)
	movq	5000(%rbp), %rax
	movq	%rax, 1536(%rbp)
	movq	%rax, 1536(%rbx)
	movq	5008(%rbp), %rax
	movq	%rax, 1544(%rbp)
	movq	%rax, 1544(%rbx)
	movq	360(%r14), %rax
	movq	%rax, 4224(%rbp)
	movq	$pdf14_get_cmap_procs, 360(%r14)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_set_cmap_procs
.LBB12_33:                              # %cleanup
	movl	%r13d, %eax
.LBB12_40:                              # %cleanup
	addq	$5080, %rsp             # imm = 0x13D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	c_pdf14trans_clist_write_update, .Lfunc_end12-c_pdf14trans_clist_write_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_2
	.quad	.LBB12_38
	.quad	.LBB12_37
	.quad	.LBB12_34
	.quad	.LBB12_37
	.quad	.LBB12_35
	.quad	.LBB12_37
	.quad	.LBB12_37
	.quad	.LBB12_37
	.quad	.LBB12_37
	.quad	.LBB12_33
	.quad	.LBB12_33
.LJTI12_1:
	.quad	.LBB12_5
	.quad	.LBB12_6
	.quad	.LBB12_8
	.quad	.LBB12_9
	.quad	.LBB12_11

	.text
	.align	16, 0x90
	.type	c_pdf14trans_clist_read_update,@function
c_pdf14trans_clist_read_update:         # @c_pdf14trans_clist_read_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp80:
	.cfi_def_cfa_offset 112
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	8(%rsp), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*1680(%r15)
	movq	8(%rsp), %rsi
	leaq	48(%rsp), %rdx
	leaq	16(%rsp), %r13
	xorl	%edi, %edi
	movq	%r13, %rcx
	callq	gsicc_extract_profile
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*1680(%r14)
	movq	8(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%edi, %edi
	movq	%r13, %rcx
	callq	gsicc_extract_profile
	cmpl	$0, 40(%rbx)
	jne	.LBB13_29
# BB#1:                                 # %sw.bb
	movq	40(%rsp), %rax
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	1104(%r14), %rax
	movq	(%rax), %rsi
	movq	48(%rsp), %rcx
	cmpq	%rcx, %rsi
	je	.LBB13_8
# BB#2:                                 # %do.body.5
	testq	%rcx, %rcx
	je	.LBB13_4
# BB#3:                                 # %do.body.7
	incq	288(%rcx)
.LBB13_4:                               # %do.body.13
	testq	%rsi, %rsi
	je	.LBB13_7
# BB#5:                                 # %do.end.22
	decq	288(%rsi)
	jne	.LBB13_7
# BB#6:                                 # %do.end.40
	movq	296(%rsi), %rdi
	movl	$.L.str.78, %edx
	callq	*304(%rsi)
	movq	48(%rsp), %rcx
	movq	1104(%r14), %rax
.LBB13_7:                               # %do.end.63
	movq	%rcx, (%rax)
.LBB13_8:                               # %do.end.69
	movq	40(%rsp), %rax
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%r15, %rdi
	callq	*1624(%r15)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB13_16
# BB#9:                                 # %land.lhs.true
	movl	24(%rbx), %eax
	testl	%eax, %eax
	je	.LBB13_16
# BB#10:                                # %if.then.77
	movl	100(%r14), %ebp
	leaq	1736(%r14), %r12
	movl	%eax, 1760(%r14)
	leal	4(%rax), %ecx
	cmpl	%ecx, %ebp
	movl	%ebp, %ecx
	jl	.LBB13_12
# BB#11:                                # %if.else.87
	addl	16(%r12), %eax
	movl	%eax, %ecx
.LBB13_12:                              # %if.end.94
	movl	%ecx, 100(%r14)
	movq	%r14, %rdi
	callq	devn_free_params
	movq	1360(%rbx), %rax
	movq	%rax, 3088(%r14)
	addq	$32, %r12
	addq	$1368, %rbx             # imm = 0x558
	movl	$1032, %edx             # imm = 0x408
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	$0, 4216(%r14)
	cmpl	100(%r14), %ebp
	je	.LBB13_16
# BB#13:                                # %if.then.100
	movq	4152(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB13_15
# BB#14:                                # %if.then.102
	callq	pdf14_ctx_free
.LBB13_15:                              # %if.end.104
	movq	%r14, %rdi
	callq	*1144(%r14)
.LBB13_16:                              # %if.end.108
	movq	48(%rsp), %rax
	cmpl	$6, 16(%rax)
	je	.LBB13_18
# BB#17:                                # %lor.lhs.false
	cmpl	$0, 4(%rax)
	je	.LBB13_29
.LBB13_18:                              # %if.then.111
	movq	10152(%r15), %rsi
	movq	%r15, %rdi
	callq	gsicc_read_serial_icc
	movq	%rax, 48(%rsp)
	movq	%r15, 264(%rax)
	movq	40(%rsp), %rax
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	1104(%r14), %rax
	movq	(%rax), %rsi
	movq	48(%rsp), %rcx
	cmpq	%rcx, %rsi
	je	.LBB13_25
# BB#19:                                # %do.body.122
	testq	%rcx, %rcx
	je	.LBB13_21
# BB#20:                                # %do.body.125
	incq	288(%rcx)
.LBB13_21:                              # %do.body.137
	testq	%rsi, %rsi
	je	.LBB13_24
# BB#22:                                # %do.end.146
	decq	288(%rsi)
	jne	.LBB13_24
# BB#23:                                # %do.end.165
	movq	296(%rsi), %rdi
	movl	$.L.str.78, %edx
	callq	*304(%rsi)
	movq	48(%rsp), %rcx
	movq	1104(%r14), %rax
.LBB13_24:                              # %do.end.191
	movq	%rcx, (%rax)
	movq	1104(%r14), %rax
	movq	(%rax), %rsi
.LBB13_25:                              # %do.body.198
	testq	%rsi, %rsi
	je	.LBB13_28
# BB#26:                                # %do.end.207
	decq	288(%rsi)
	jne	.LBB13_28
# BB#27:                                # %do.end.226
	movq	296(%rsi), %rdi
	movl	$.L.str.78, %edx
	callq	*304(%rsi)
	movq	1104(%r14), %rax
	movq	$0, (%rax)
.LBB13_28:                              # %do.end.252
	movq	40(%rsp), %rax
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
.LBB13_29:                              # %sw.epilog
	xorl	%eax, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	c_pdf14trans_clist_read_update, .Lfunc_end13-c_pdf14trans_clist_read_update
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI14_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	c_pdf14trans_get_cropping,@function
c_pdf14trans_get_cropping:              # @c_pdf14trans_get_cropping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 96
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movl	40(%rbp), %ecx
	xorl	%eax, %eax
	addl	$-3, %ecx
	cmpl	$8, %ecx
	ja	.LBB14_15
# BB#1:                                 # %entry
	leaq	40(%rbp), %rsi
	jmpq	*.LJTI14_0(,%rcx,8)
.LBB14_14:                              # %sw.bb.55
	movl	$2, %eax
	jmp	.LBB14_15
.LBB14_13:                              # %sw.bb.52
	movl	$3, %eax
	jmp	.LBB14_15
.LBB14_2:                               # %sw.bb.3
	addq	$620, %rsi              # imm = 0x26C
	addq	$64, %rbp
	leaq	8(%rsp), %rdx
	movq	%rbp, %rdi
	callq	gs_bbox_transform
	testl	%eax, %eax
                                        # implicit-def: EAX
                                        # implicit-def: EBP
	js	.LBB14_4
# BB#3:                                 # %if.end.i
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
.LBB14_4:                               # %pdf14_compute_group_device_int_rect.exit
	cmpl	%r12d, %ebp
	cmovgel	%ebp, %r12d
	jmp	.LBB14_5
.LBB14_6:                               # %sw.bb.16
	addq	$620, %rsi              # imm = 0x26C
	leaq	64(%rbp), %rdi
	leaq	8(%rsp), %rdx
	callq	gs_bbox_transform
	testl	%eax, %eax
                                        # implicit-def: EAX
                                        # implicit-def: R13D
	js	.LBB14_8
# BB#7:                                 # %if.end.i.42
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r13d
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
.LBB14_8:                               # %pdf14_compute_group_device_int_rect.exit44
	movss	368(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI14_0(%rip), %xmm0
	jne	.LBB14_9
	jnp	.LBB14_10
.LBB14_9:                               # %lor.lhs.false
	cmpl	$0, 656(%rbp)
	je	.LBB14_11
.LBB14_10:                              # %if.then
	cmpl	%r12d, %r13d
	cmovgel	%r13d, %r12d
.LBB14_5:                               # %cleanup
	movl	%r12d, (%r15)
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
.LBB14_12:                              # %cleanup
	subl	%r12d, %ebx
	movl	%ebx, (%r14)
	movl	$1, %eax
.LBB14_15:                              # %cleanup.56
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_11:                              # %if.else
	movl	%r12d, (%r15)
	jmp	.LBB14_12
.Lfunc_end14:
	.size	c_pdf14trans_get_cropping, .Lfunc_end14-c_pdf14trans_get_cropping
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_2
	.quad	.LBB14_14
	.quad	.LBB14_6
	.quad	.LBB14_14
	.quad	.LBB14_15
	.quad	.LBB14_13
	.quad	.LBB14_13
	.quad	.LBB14_14
	.quad	.LBB14_14

	.text
	.globl	gs_is_pdf14trans_compositor
	.align	16, 0x90
	.type	gs_is_pdf14trans_compositor,@function
gs_is_pdf14trans_compositor:            # @gs_is_pdf14trans_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	$gs_composite_pdf14trans_type, %ecx
	cmpq	%rcx, %rax
	sete	%cl
	movl	$gs_composite_pdf14trans_no_clist_writer_type, %edx
	cmpq	%rdx, %rax
	sete	%al
	orb	%cl, %al
	movzbl	%al, %eax
	retq
.Lfunc_end15:
	.size	gs_is_pdf14trans_compositor, .Lfunc_end15-gs_is_pdf14trans_compositor
	.cfi_endproc

	.globl	send_pdf14trans
	.align	16, 0x90
	.type	send_pdf14trans,@function
send_pdf14trans:                        # @send_pdf14trans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp106:
	.cfi_def_cfa_offset 64
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %rbp
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	148(%r13), %rax
	movq	%rax, 636(%rbp)
	movups	132(%r13), %xmm0
	movups	%xmm0, 620(%rbp)
	movl	$st_pdf14trans, %esi
	movl	$.L.str.64, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB16_2
# BB#1:                                 # %if.end
	movq	$gs_composite_pdf14trans_type, (%rbx)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gs_next_ids
	movq	%rax, 8(%rbx)
	movq	%rbx, %rdi
	addq	$40, %rdi
	movl	$704, %edx              # imm = 0x2C0
	movq	%rbp, %rsi
	callq	memcpy
	movl	$0, 16(%rbx)
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	*1464(%r15)
	movl	%eax, %ebp
	movq	8(%r13), %rdi
	movl	$.L.str.13, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	%ebp, %eax
	jmp	.LBB16_3
.LBB16_2:                               # %cleanup
	movl	$-25, %eax
.LBB16_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	send_pdf14trans, .Lfunc_end16-send_pdf14trans
	.cfi_endproc

	.globl	put_param_compressed_color_list_elem
	.align	16, 0x90
	.type	put_param_compressed_color_list_elem,@function
put_param_compressed_color_list_elem:   # @put_param_compressed_color_list_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp119:
	.cfi_def_cfa_offset 160
.Ltmp120:
	.cfi_offset %rbx, -56
.Ltmp121:
	.cfi_offset %r12, -48
.Ltmp122:
	.cfi_offset %r13, -40
.Ltmp123:
	.cfi_offset %r14, -32
.Ltmp124:
	.cfi_offset %r15, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movl	%r8d, %r13d
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbp
	leaq	88(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	param_read_string
	xorl	%r9d, %r9d
	testl	%eax, %eax
	jne	.LBB17_1
# BB#4:                                 # %sw.epilog
	movq	88(%rsp), %rbx
	movq	24(%rbp), %rdi
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	%r13d, %esi
	callq	alloc_compressed_color_list_elem
	movq	%rax, %r9
	movzbl	1(%rbx), %ecx
	movl	%ecx, 12(%r9)
	shll	$8, %ecx
	movzbl	(%rbx), %eax
	orl	%ecx, %eax
	movl	%eax, 12(%r9)
	movzbl	3(%rbx), %ecx
	movl	%ecx, 16(%r9)
	shll	$8, %ecx
	movzbl	2(%rbx), %edx
	orl	%ecx, %edx
	movl	%edx, 16(%r9)
	cmpl	$255, %edx
	ja	.LBB17_9
# BB#5:                                 # %for.body.33.lr.ph
	movq	%r12, %r8
	addq	$4, %rbx
	leaq	(%rdx,%rdx,2), %rax
	leaq	24(%r9,%rax,8), %rax
	movl	$256, %ecx              # imm = 0x100
	subl	%edx, %ecx
	.align	16, 0x90
.LBB17_6:                               # %for.body.33
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rbx), %esi
	movw	%si, (%rax)
	shll	$8, %esi
	movzbl	(%rbx), %edx
	orl	%esi, %edx
	movw	%dx, (%rax)
	movzbl	3(%rbx), %edi
	movw	%di, 2(%rax)
	shll	$8, %edi
	movzbl	2(%rbx), %esi
	orl	%edi, %esi
	movw	%si, 2(%rax)
	movzbl	4(%rbx), %edi
	movl	%edi, 4(%rax)
	movzbl	12(%rbx), %edi
	movq	%rdi, 8(%rax)
	shlq	$8, %rdi
	movzbl	11(%rbx), %ebp
	orq	%rdi, %rbp
	movq	%rbp, 8(%rax)
	shlq	$8, %rbp
	movzbl	10(%rbx), %edi
	orq	%rbp, %rdi
	movq	%rdi, 8(%rax)
	shlq	$8, %rdi
	movzbl	9(%rbx), %ebp
	orq	%rdi, %rbp
	movq	%rbp, 8(%rax)
	shlq	$8, %rbp
	movzbl	8(%rbx), %edi
	orq	%rbp, %rdi
	movq	%rdi, 8(%rax)
	shlq	$8, %rdi
	movzbl	7(%rbx), %ebp
	orq	%rdi, %rbp
	movq	%rbp, 8(%rax)
	shlq	$8, %rbp
	movzbl	6(%rbx), %edi
	orq	%rbp, %rdi
	movq	%rdi, 8(%rax)
	shlq	$8, %rdi
	movzbl	5(%rbx), %ebp
	orq	%rdi, %rbp
	movq	%rbp, 8(%rax)
	movzwl	%dx, %edx
	movzwl	%si, %esi
	cmpl	%esi, %edx
	jne	.LBB17_13
# BB#7:                                 #   in Loop: Header=BB17_6 Depth=1
	addq	$13, %rbx
	jmp	.LBB17_14
	.align	16, 0x90
.LBB17_13:                              # %if.then
                                        #   in Loop: Header=BB17_6 Depth=1
	movzbl	20(%rbx), %edx
	movq	%rdx, 16(%rax)
	shlq	$8, %rdx
	movzbl	19(%rbx), %esi
	orq	%rdx, %rsi
	movq	%rsi, 16(%rax)
	shlq	$8, %rsi
	movzbl	18(%rbx), %edx
	orq	%rsi, %rdx
	movq	%rdx, 16(%rax)
	shlq	$8, %rdx
	movzbl	17(%rbx), %esi
	orq	%rdx, %rsi
	movq	%rsi, 16(%rax)
	shlq	$8, %rsi
	movzbl	16(%rbx), %edx
	orq	%rsi, %rdx
	movq	%rdx, 16(%rax)
	shlq	$8, %rdx
	movzbl	15(%rbx), %esi
	orq	%rdx, %rsi
	movq	%rsi, 16(%rax)
	shlq	$8, %rsi
	movzbl	14(%rbx), %edx
	orq	%rsi, %rdx
	movq	%rdx, 16(%rax)
	shlq	$8, %rdx
	movzbl	13(%rbx), %esi
	orq	%rdx, %rsi
	movq	%rsi, 16(%rax)
	addq	$21, %rbx
.LBB17_14:                              # %for.inc.205
                                        #   in Loop: Header=BB17_6 Depth=1
	addq	$24, %rax
	decl	%ecx
	jne	.LBB17_6
# BB#8:                                 # %for.cond.30.for.cond.207.preheader_crit_edge
	movl	12(%r9), %eax
	movq	%r8, %r12
.LBB17_9:                               # %for.cond.207.preheader
	testl	%eax, %eax
	jle	.LBB17_3
# BB#10:                                # %for.body.211.lr.ph
	movq	%r12, 8(%rsp)           # 8-byte Spill
	decl	%r13d
	leaq	32(%rsp), %r12
	movq	%r15, %rbp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB17_11:                              # %for.body.211
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	movq	%r9, %rbx
	callq	gs_sprintf
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	leaq	24(%rsp), %rdx
	movq	%r12, %rcx
	movl	%r13d, %r8d
	callq	put_param_compressed_color_list_elem
	movq	%rbx, %r9
	movq	24(%rsp), %rax
	movq	%rax, 24(%r9,%r15,8)
	incq	%r15
	movslq	12(%r9), %rax
	cmpq	%rax, %r15
	jl	.LBB17_11
# BB#12:
	movq	8(%rsp), %r12           # 8-byte Reload
	jmp	.LBB17_3
.LBB17_1:                               # %entry
	cmpl	$1, %eax
	je	.LBB17_3
# BB#2:                                 # %sw.default
	movq	(%r15), %rcx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	*56(%rcx)
	xorl	%r9d, %r9d
.LBB17_3:                               # %cleanup
	movq	%r9, (%r12)
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	put_param_compressed_color_list_elem, .Lfunc_end17-put_param_compressed_color_list_elem
	.cfi_endproc

	.globl	put_param_pdf14_spot_names
	.align	16, 0x90
	.type	put_param_pdf14_spot_names,@function
put_param_pdf14_spot_names:             # @put_param_pdf14_spot_names
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 128
.Ltmp133:
	.cfi_offset %rbx, -56
.Ltmp134:
	.cfi_offset %r12, -48
.Ltmp135:
	.cfi_offset %r13, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	68(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB18_1
# BB#3:                                 # %sw.bb.2
	movl	68(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	$-15, %ebp
	cmpl	$63, %ecx
	ja	.LBB18_11
# BB#4:                                 # %for.cond.preheader
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%r14, (%rsp)            # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB18_10
# BB#5:                                 # %for.body.lr.ph
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	16(%rax), %r15
	leaq	16(%rsp), %r12
	leaq	48(%rsp), %r13
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB18_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	gs_sprintf
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB18_8
# BB#7:                                 # %sw.default.8
                                        #   in Loop: Header=BB18_6 Depth=1
	movq	(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	*56(%rcx)
	jmp	.LBB18_9
	.align	16, 0x90
.LBB18_8:                               # %sw.bb.13
                                        #   in Loop: Header=BB18_6 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	24(%rax), %rdi
	movl	56(%rsp), %esi
	movl	$.L.str.22, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	56(%rsp), %eax
	movl	%eax, -8(%r15)
	movq	%r14, (%r15)
.LBB18_9:                               # %sw.epilog
                                        #   in Loop: Header=BB18_6 Depth=1
	incq	%rbp
	movslq	68(%rsp), %rax
	addq	$16, %r15
	cmpq	%rax, %rbp
	jl	.LBB18_6
.LBB18_10:                              # %for.end
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	%eax, (%rcx)
	xorl	%ebp, %ebp
	jmp	.LBB18_11
.LBB18_1:                               # %entry
	cmpl	$1, %eax
	je	.LBB18_11
# BB#2:                                 # %sw.default
	movq	(%rbx), %rcx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*56(%rcx)
.LBB18_11:                              # %cleanup
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	put_param_pdf14_spot_names, .Lfunc_end18-put_param_pdf14_spot_names
	.cfi_endproc

	.globl	pdf14_put_devn_params
	.align	16, 0x90
	.type	pdf14_put_devn_params,@function
pdf14_put_devn_params:                  # @pdf14_put_devn_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 32
.Ltmp142:
	.cfi_offset %rbx, -32
.Ltmp143:
	.cfi_offset %r14, -24
.Ltmp144:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	1360(%rbx), %rdx
	movl	$.L.str.23, %ecx
	movl	$7, %r8d
	movq	%r14, %rsi
	callq	put_param_compressed_color_list_elem
	addq	$1368, %rbx             # imm = 0x558
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	put_param_pdf14_spot_names # TAILCALL
.Lfunc_end19:
	.size	pdf14_put_devn_params, .Lfunc_end19-pdf14_put_devn_params
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_open,@function
pdf14_open:                             # @pdf14_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp148:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp149:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp151:
	.cfi_def_cfa_offset 96
.Ltmp152:
	.cfi_offset %rbx, -56
.Ltmp153:
	.cfi_offset %r12, -48
.Ltmp154:
	.cfi_offset %r13, -40
.Ltmp155:
	.cfi_offset %r14, -32
.Ltmp156:
	.cfi_offset %r15, -24
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	$0, 24(%rsp)
	movl	832(%rbx), %eax
	movl	%eax, 32(%rsp)
	movl	836(%rbx), %eax
	movl	%eax, 36(%rsp)
	cmpl	$0, 104(%rbx)
	movl	100(%rbx), %r12d
	setne	%r13b
	movq	24(%rbx), %r14
	movl	1112(%rbx), %ebp
	movl	$st_pdf14_ctx, %esi
	movl	$.L.str.24, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB20_3
# BB#1:                                 # %if.end.i
	andl	$128, %ebp
	leal	1(%r12), %r9d
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	%r14, (%rsp)
	leaq	24(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%ebp, %esi
	callq	pdf14_buf_new
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB20_2
# BB#4:                                 # %do.end.i
	movq	80(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB20_8
# BB#5:                                 # %if.then.8.i
	cmpl	$0, 40(%r12)
	movl	64(%r12), %ecx
	movl	72(%r12), %eax
	je	.LBB20_7
# BB#6:                                 # %if.then.10.i
	decl	%eax
.LBB20_7:                               # %if.else.i
	imull	%ecx, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB20_8:                               # %if.end.20.i
	movzbl	%r13b, %ebp
	movq	$0, (%r12)
	movq	%r12, (%r15)
	movl	$st_pdf14_mask, %esi
	movl	$.L.str.30, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%r14, 16(%rax)
	movq	%rax, 8(%r15)
	movl	$st_pdf14_rcmask, %esi
	movl	$.L.str.32, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	movl	$0, %edx
	je	.LBB20_10
# BB#9:                                 # %do.body.i.i
	movq	$1, 8(%rcx)
	movq	%r14, 16(%rcx)
	movq	$rc_pdf14_maskbuf_free, 24(%rcx)
	movq	$0, (%rcx)
	movq	%r14, 32(%rcx)
	movq	%rcx, %rdx
.LBB20_10:                              # %pdf14_ctx_new.exit.thread11
	movq	8(%r15), %rcx
	movq	%rdx, (%rcx)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 44(%r15)
	movq	%r14, 16(%r15)
	movups	24(%rsp), %xmm0
	movups	%xmm0, 24(%r15)
	movl	%ebp, 40(%r15)
	movl	$0, 48(%r15)
	movl	$0, 52(%r15)
	movq	%r15, 4152(%rbx)
	movl	$1, 4216(%rbx)
	jmp	.LBB20_11
.LBB20_2:                               # %pdf14_ctx_new.exit.thread
	movl	$.L.str.24, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
.LBB20_3:                               # %pdf14_ctx_new.exit
	movq	$0, 4152(%rbx)
	movl	$-25, %eax
.LBB20_11:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pdf14_open, .Lfunc_end20-pdf14_open
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_output_page,@function
pdf14_output_page:                      # @pdf14_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB21_1
# BB#2:                                 # %if.then
	movq	1168(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.LBB21_1:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end21:
	.size	pdf14_output_page, .Lfunc_end21-pdf14_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_close,@function
pdf14_close:                            # @pdf14_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	4152(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB22_2
# BB#1:                                 # %if.then
	callq	pdf14_ctx_free
	movq	$0, 4152(%rbx)
.LBB22_2:                               # %if.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end22:
	.size	pdf14_close, .Lfunc_end22-pdf14_close
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_fill_rectangle,@function
pdf14_fill_rectangle:                   # @pdf14_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp160:
	.cfi_def_cfa_offset 32
	movq	4152(%rdi), %rax
	movq	(%rax), %r11
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB23_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%eax, %ecx
	xorl	%r10d, %r10d
	testl	%esi, %esi
	cmovsl	%r10d, %esi
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%edx, %eax
	addl	%eax, %r8d
	testl	%edx, %edx
	cmovsl	%r10d, %edx
.LBB23_2:                               # %do.body.9
	movl	832(%rdi), %eax
	movl	836(%rdi), %r10d
	subl	%esi, %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	subl	%edx, %r10d
	cmpl	%r10d, %r8d
	cmovlel	%r8d, %r10d
	testl	%eax, %eax
	jle	.LBB23_7
# BB#3:                                 # %do.body.9
	testl	%r10d, %r10d
	jle	.LBB23_7
# BB#4:                                 # %if.end.31
	cmpl	$0, 20(%r11)
	je	.LBB23_6
# BB#5:                                 # %if.then.32
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	movl	%eax, %ecx
	movl	%r10d, %r8d
	callq	pdf14_mark_fill_rectangle_ko_simple
	jmp	.LBB23_7
.LBB23_6:                               # %if.else
	movl	$0, 8(%rsp)
	movq	$0, (%rsp)
	movl	%eax, %ecx
	movl	%r10d, %r8d
	callq	pdf14_mark_fill_rectangle
.LBB23_7:                               # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
.Lfunc_end23:
	.size	pdf14_fill_rectangle, .Lfunc_end23-pdf14_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_copy_mono,@function
pdf14_copy_mono:                        # @pdf14_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp163:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp164:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp165:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp167:
	.cfi_def_cfa_offset 128
.Ltmp168:
	.cfi_offset %rbx, -56
.Ltmp169:
	.cfi_offset %r12, -48
.Ltmp170:
	.cfi_offset %r13, -40
.Ltmp171:
	.cfi_offset %r14, -32
.Ltmp172:
	.cfi_offset %r15, -24
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	144(%rsp), %eax
	movl	136(%rsp), %ebx
	movl	128(%rsp), %ebp
	movl	%ebp, %esi
	orl	%r9d, %esi
	js	.LBB24_2
# BB#1:
	movl	%ebp, %r10d
	jmp	.LBB24_5
.LBB24_2:                               # %if.then
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	leal	(%rbx,%rsi), %ebx
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	cmovsl	%r10d, %r9d
	subl	%esi, %edx
	testl	%ebp, %ebp
	js	.LBB24_4
# BB#3:
	movl	%ebp, %r10d
	jmp	.LBB24_5
.LBB24_4:                               # %if.then.5
	addl	%ebp, %eax
	imull	%ecx, %ebp
	movslq	%ebp, %rsi
	subq	%rsi, 48(%rsp)          # 8-byte Folded Spill
.LBB24_5:                               # %if.end.8
	movl	832(%r15), %esi
	movl	836(%r15), %ebp
	movl	%esi, %edi
	subl	%r9d, %edi
	cmpl	%edi, %ebx
	cmovlel	%ebx, %edi
	subl	%r10d, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LBB24_25
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB24_25
# BB#7:                                 # %do.end.26
	movq	%r9, 24(%rsp)           # 8-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	jle	.LBB24_25
# BB#8:                                 # %while.body.lr.ph
	movl	%edx, %eax
	notl	%eax
	andl	$7, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	sarl	$3, %edx
	movslq	%edx, %rax
	addq	%rax, 48(%rsp)          # 8-byte Folded Spill
	movslq	%ecx, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	subl	%esi, %eax
	notl	%ebx
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	negl	%ebx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB24_9:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_10 Depth 2
	movl	%r10d, 56(%rsp)         # 4-byte Spill
	movl	44(%rsp), %eax          # 4-byte Reload
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	-1(%rax), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	1(%rax), %rdx
	movzbl	(%rax), %edi
	xorl	%ebx, %ebx
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	movl	12(%rsp), %r14d         # 4-byte Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	xorl	%eax, %eax
	movq	152(%rsp), %r9
	.align	16, 0x90
.LBB24_10:                              # %do.body.31
                                        #   Parent Loop BB24_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %r12d
	movb	%r14b, %cl
	shrl	%cl, %r12d
	andl	$1, %r12d
	cmpl	%eax, %r12d
	jne	.LBB24_12
# BB#11:                                # %if.then.36
                                        #   in Loop: Header=BB24_10 Depth=2
	incl	%ebx
	jmp	.LBB24_17
	.align	16, 0x90
.LBB24_12:                              # %if.else
                                        #   in Loop: Header=BB24_10 Depth=2
	testl	%ebx, %ebx
	je	.LBB24_16
# BB#13:                                # %if.then.39
                                        #   in Loop: Header=BB24_10 Depth=2
	cmpq	$-1, %r9
	je	.LBB24_15
# BB#14:                                # %if.then.42
                                        #   in Loop: Header=BB24_10 Depth=2
	movl	$1, %r8d
	movl	%edi, 60(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movl	%ebp, %esi
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	%r10d, %edx
	movl	%ebx, %ecx
	callq	*1200(%r15)
	movl	60(%rsp), %edi          # 4-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	56(%rsp), %r10d         # 4-byte Reload
	testl	%eax, %eax
	js	.LBB24_25
.LBB24_15:                              # %if.end.47
                                        #   in Loop: Header=BB24_10 Depth=2
	addl	%ebx, %ebp
.LBB24_16:                              # %if.end.49
                                        #   in Loop: Header=BB24_10 Depth=2
	testl	%r12d, %r12d
	movq	152(%rsp), %r9
	cmovneq	160(%rsp), %r9
	movl	$1, %ebx
	movl	%r12d, %eax
.LBB24_17:                              # %if.end.50
                                        #   in Loop: Header=BB24_10 Depth=2
	testl	%r14d, %r14d
	je	.LBB24_18
# BB#19:                                # %if.else.56
                                        #   in Loop: Header=BB24_10 Depth=2
	decl	%r14d
	jmp	.LBB24_20
	.align	16, 0x90
.LBB24_18:                              # %if.then.53
                                        #   in Loop: Header=BB24_10 Depth=2
	movzbl	(%rdx), %edi
	incq	%rdx
	movl	$7, %r14d
.LBB24_20:                              # %do.cond.59
                                        #   in Loop: Header=BB24_10 Depth=2
	decl	%r13d
	cmpl	$1, %r13d
	jg	.LBB24_10
# BB#21:                                # %do.end.63
                                        #   in Loop: Header=BB24_9 Depth=1
	testl	%ebx, %ebx
	je	.LBB24_24
# BB#22:                                # %do.end.63
                                        #   in Loop: Header=BB24_9 Depth=1
	cmpq	$-1, %r9
	je	.LBB24_24
# BB#23:                                # %if.then.68
                                        #   in Loop: Header=BB24_9 Depth=1
	movl	$1, %r8d
	movq	%r15, %rdi
	movl	%ebp, %esi
	movl	%r10d, %edx
	movl	%ebx, %ecx
	movl	%r10d, %ebx
	callq	*1200(%r15)
	movl	%ebx, %r10d
	testl	%eax, %eax
	js	.LBB24_25
.LBB24_24:                              # %if.end.76
                                        #   in Loop: Header=BB24_9 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	addq	%rax, 48(%rsp)          # 8-byte Folded Spill
	incl	%r10d
	xorl	%eax, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	cmpl	$1, %ecx
	jg	.LBB24_9
.LBB24_25:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	pdf14_copy_mono, .Lfunc_end24-pdf14_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_put_params,@function
pdf14_put_params:                       # @pdf14_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp178:
	.cfi_def_cfa_offset 48
.Ltmp179:
	.cfi_offset %rbx, -40
.Ltmp180:
	.cfi_offset %r14, -32
.Ltmp181:
	.cfi_offset %r15, -24
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	1728(%r14), %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB25_6
# BB#1:                                 # %land.lhs.true
	movl	84(%rbx), %r15d
	movq	%rbx, %rdi
	callq	*1256(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB25_6
# BB#2:                                 # %if.then
	movq	%r14, %rdi
	callq	gx_device_decache_colors
	cmpl	$0, 84(%rbx)
	jne	.LBB25_5
# BB#3:                                 # %if.then.3
	movq	%r14, %rdi
	callq	gs_closedevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB25_5
# BB#4:                                 # %if.then.6
	testl	%r15d, %r15d
	setne	%al
	movzbl	%al, %ebp
.LBB25_5:                               # %if.end.8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_pdf14_device_copy_params
.LBB25_6:                               # %if.end.9
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	pdf14_put_params, .Lfunc_end25-pdf14_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_copy_alpha,@function
pdf14_copy_alpha:                       # @pdf14_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp183:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp184:
	.cfi_def_cfa_offset 64
.Ltmp185:
	.cfi_offset %rbx, -16
	movl	64(%rsp), %r10d
	movl	72(%rsp), %r8d
	movl	80(%rsp), %r11d
	movq	88(%rsp), %rax
	movl	96(%rsp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$0, 40(%rsp)
	movq	$0, 24(%rsp)
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	pdf14_copy_alpha_color
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end26:
	.size	pdf14_copy_alpha, .Lfunc_end26-pdf14_copy_alpha
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI27_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	pdf14_fill_path,@function
pdf14_fill_path:                        # @pdf14_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp187:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp188:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp189:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp190:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp191:
	.cfi_def_cfa_offset 56
	subq	$4056, %rsp             # imm = 0xFD8
.Ltmp192:
	.cfi_def_cfa_offset 4112
.Ltmp193:
	.cfi_offset %rbx, -56
.Ltmp194:
	.cfi_offset %r12, -48
.Ltmp195:
	.cfi_offset %r13, -40
.Ltmp196:
	.cfi_offset %r14, -32
.Ltmp197:
	.cfi_offset %r15, -24
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, %r14
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	leaq	104(%rsp), %rdi
	movl	$1616, %edx             # imm = 0x650
	callq	memcpy
	xorl	%r15d, %r15d
	testq	%r14, %r14
	movl	$0, %ecx
	je	.LBB27_40
# BB#1:                                 # %land.lhs.true
	movq	%r14, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB27_35
# BB#2:                                 # %if.then
	movq	%r14, %rdi
	callq	gx_pattern1_get_transptr
	testq	%rax, %rax
	jne	.LBB27_4
# BB#3:                                 # %lor.lhs.false
	movq	%r14, %rdi
	callq	gx_pattern1_clist_has_trans
	testl	%eax, %eax
	je	.LBB27_35
.LBB27_4:                               # %if.then.5
	testq	%r13, %r13
	je	.LBB27_6
# BB#5:                                 # %if.then.i
	movq	40(%r12), %rdx
	leaq	3704(%rsp), %rdi
	movl	$1, %ecx
	movq	%r13, %rsi
	callq	gx_cpath_init_local_shared_nested
	jmp	.LBB27_7
.LBB27_35:                              # %land.lhs.true.9
	movq	%r14, %rdi
	callq	gx_dc_is_pattern2_color
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB27_37
# BB#36:                                # %if.end.16.thread36
	movq	368(%r14), %r15
	movq	32(%r15), %rax
	movl	$1, 256(%rax)
	movq	%rbx, 264(%rax)
.LBB27_37:                              # %if.then.i.27
	movq	%r14, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB27_39
# BB#38:                                # %land.lhs.true.i
	movq	%r14, %rdi
	callq	gx_pattern1_get_transptr
	movl	$1, %ecx
	testq	%rax, %rax
	jne	.LBB27_40
.LBB27_39:                              # %if.else.i.28
	movq	%r14, %rdi
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
.LBB27_40:                              # %if.end.8.i
	movq	320(%rsp), %rax
	movzwl	%ax, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	jne	.LBB27_46
# BB#41:                                # %lor.lhs.false.i.29
	shrq	$32, %rax
	cmpl	$5, %eax
	ja	.LBB27_46
# BB#42:                                # %lor.lhs.false.i.29
	movl	$49, %edx
	btl	%eax, %edx
	jae	.LBB27_46
# BB#43:                                # %lor.lhs.false.21.i.30
	movss	328(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI27_0(%rip), %xmm0
	jne	.LBB27_46
	jp	.LBB27_46
# BB#44:                                # %lor.lhs.false.26.i.31
	testl	%ecx, %ecx
	jne	.LBB27_46
# BB#45:                                # %lor.lhs.false.26.i.31
	movss	332(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI27_0(%rip), %xmm0
	jne	.LBB27_46
	jnp	.LBB27_47
.LBB27_46:                              # %if.then.33.i
	orb	$4, 317(%rsp)
.LBB27_47:                              # %update_lop_for_pdf14.exit
	movl	224(%rbp), %eax
	movl	%eax, 4168(%rbx)
	movl	228(%rbp), %ecx
	movl	%ecx, 4172(%rbx)
	movd	%eax, %xmm0
	movd	%ecx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4176(%rbx)
	movl	220(%rbp), %eax
	movl	%eax, 4180(%rbx)
	movl	272(%rbp), %eax
	movl	%eax, 4188(%rbx)
	movl	276(%rbp), %eax
	movl	%eax, 4192(%rbx)
	movq	%rbx, 368(%rsp)
	movl	$1, 360(%rsp)
	leaq	104(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%r14, %r8
	movq	%r13, %r9
	callq	gx_default_fill_path
	movl	%eax, %r13d
	movq	$0, 368(%rsp)
	movl	$0, 360(%rsp)
	testq	%r15, %r15
	je	.LBB27_49
# BB#48:                                # %if.then.23
	movq	32(%r15), %rax
	movq	$0, 264(%rax)
	jmp	.LBB27_49
.LBB27_6:                               # %if.else.i
	leaq	4040(%rsp), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*1432(%rbx)
	movq	40(%r12), %rdx
	leaq	3704(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_cpath_init_local_shared
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gx_cpath_from_rectangle
.LBB27_7:                               # %if.end.i
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB27_34
# BB#8:                                 # %if.then.8.i
	movq	96(%rsp), %r15          # 8-byte Reload
	movl	(%r15), %edx
	leaq	3704(%rsp), %rdi
	leaq	104(%rsp), %rcx
	movq	%r12, %rsi
	movq	%r15, %r8
	callq	gx_cpath_intersect_with_params
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB27_34
# BB#9:                                 # %if.end.13.i
	movq	8(%r14), %rbp
	movq	192(%rbp), %rax
	testq	%rax, %rax
	je	.LBB27_15
# BB#10:                                # %if.then.15.i
	cmpl	$0, 3956(%rsp)
	js	.LBB27_15
# BB#11:                                # %lor.lhs.false.i
	cmpl	$0, 3960(%rsp)
	js	.LBB27_15
# BB#12:                                # %lor.lhs.false.21.i
	movl	64(%rax), %ecx
	shll	$8, %ecx
	cmpl	%ecx, 3964(%rsp)
	jg	.LBB27_15
# BB#13:                                # %lor.lhs.false.26.i
	movl	68(%rax), %eax
	shll	$8, %eax
	cmpl	%eax, 3968(%rsp)
	jg	.LBB27_15
# BB#14:                                # %if.end.61.i
	movq	40(%r12), %rdx
	leaq	3576(%rsp), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_path_init_local_shared
	movq	192(%rbp), %rax
	movl	32(%rax), %esi
	movl	36(%rax), %edx
	shll	$8, %esi
	shll	$8, %edx
	movl	40(%rax), %ecx
	shll	$8, %ecx
	movl	44(%rax), %r8d
	shll	$8, %r8d
	movq	%r12, %rdi
	callq	gx_path_add_rectangle
	movl	(%r15), %edx
	leaq	3704(%rsp), %rdi
	leaq	104(%rsp), %rcx
	movq	%r12, %rsi
	callq	gx_cpath_intersect
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB27_34
.LBB27_15:                              # %if.then.64.i
	leaq	3704(%rsp), %rdi
	leaq	4024(%rsp), %rsi
	callq	gx_cpath_outer_box
	movl	4024(%rsp), %ecx
	sarl	$8, %ecx
	movl	%ecx, 4008(%rsp)
	movl	4028(%rsp), %ebp
	sarl	$8, %ebp
	movl	%ebp, 4012(%rsp)
	movl	$255, %r15d
	movl	4032(%rsp), %r12d
	addl	%r15d, %r12d
	sarl	$8, %r12d
	movl	%r12d, 4016(%rsp)
	addl	4036(%rsp), %r15d
	sarl	$8, %r15d
	movl	%r15d, 4020(%rsp)
	movq	8(%r14), %rax
	cmpq	$0, 200(%rax)
	jne	.LBB27_19
# BB#16:                                # %if.then.90.i
	movl	%r12d, 84(%rsp)         # 4-byte Spill
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	movq	192(%rax), %rcx
	movl	56(%rcx), %edx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	84(%rcx), %esi
	movl	%esi, 80(%rsp)          # 4-byte Spill
	movq	4152(%rbx), %rdi
	leal	-1(%rdx), %edx
	movq	%rbx, 64(%rsp)
	leaq	104(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movl	%edx, 24(%rsp)
	movl	%esi, (%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	leaq	4008(%rsp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rax, %r12
	movl	$255, %r8d
	movl	$255, %r9d
	callq	pdf14_push_transparency_group
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB27_34
# BB#17:                                # %if.end.101.i
	cmpq	$0, 200(%r12)
	movq	%r12, %rax
	je	.LBB27_20
# BB#18:
	movl	96(%rsp), %ecx          # 4-byte Reload
	movl	84(%rsp), %r12d         # 4-byte Reload
.LBB27_19:                              # %if.end.189.thread.i
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	leaq	1720(%rsp), %rdi
	leaq	3704(%rsp), %rsi
	movq	%rbx, %rdx
	callq	gx_make_clip_device_on_stack
	movl	352(%r14), %eax
	movl	356(%r14), %ecx
	shlq	$32, %rcx
	orq	%rcx, %rax
	movq	%r14, 16(%rsp)
	leaq	1720(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movl	96(%rsp), %edi          # 4-byte Reload
	movl	%ebp, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %r8
	callq	gx_trans_pattern_fill_rect
	movq	%rbp, %rcx
.LBB27_32:                              # %if.end.197.i
	cmpq	$0, 200(%rcx)
	jne	.LBB27_34
# BB#33:                                # %if.then.200.i
	movq	4152(%rbx), %rsi
	movq	4144(%rbx), %rdx
	movl	100(%rbx), %ecx
	movq	1104(%rbx), %rax
	movq	(%rax), %r8
	leaq	104(%rsp), %rdi
	movq	%rbx, %r9
	callq	pdf14_pop_transparency_group
	movl	%eax, %r13d
.LBB27_34:                              # %pdf14_tile_pattern_fill.exit
	movq	$0, 368(%rsp)
	movl	$0, 360(%rsp)
.LBB27_49:                              # %cleanup
	movl	%r13d, %eax
	addq	$4056, %rsp             # imm = 0xFD8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_20:                              # %if.then.104.i
	movq	72(%rsp), %rcx          # 8-byte Reload
	cmpl	$5, %ecx
	setl	%dl
	movq	192(%rax), %rcx
	movl	$rgb_blending_procs, %edi
	movl	$cmyk_blending_procs, %esi
	cmovlq	%rdi, %rsi
	movzbl	%dl, %edx
	movq	%rsi, 72(%rcx)
	movl	%edx, 80(%rcx)
	movq	112(%rsp), %rdi
	movq	%rax, %rbp
	callq	new_pattern_trans_buff
	movq	%rax, %r15
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf14_get_buffer_information
	movq	%r15, %r9
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, 84(%r9)
	cmpb	$0, 209(%rbp)
	movl	$tile_rect_trans_simple, %eax
	movq	192(%rbp), %rcx
	movq	%rbp, %rsi
	je	.LBB27_22
# BB#21:                                # %select.mid
	movl	$tile_rect_trans_blend, %eax
.LBB27_22:                              # %select.end
	movq	%rax, 96(%rcx)
	movl	352(%r14), %eax
	movl	356(%r14), %r8d
	movq	3976(%rsp), %rcx
	movq	64(%rcx), %rbp
	testq	%rbp, %rbp
	movl	96(%rcx), %edx
	je	.LBB27_26
# BB#23:                                # %for.cond.preheader.i
	movl	%r13d, 84(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	movq	%rsi, %r13
	jle	.LBB27_28
# BB#24:                                # %do.end.lr.ph.i
	shlq	$32, %r8
	orq	%rax, %r8
	movq	%r8, 96(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
.LBB27_25:                              # %do.end.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rbp
	movl	24(%rbp), %edi
	movl	28(%rbp), %edx
	movl	16(%rbp), %esi
	movl	20(%rbp), %ecx
	movq	%r14, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	%r13, %r8
	movq	%r9, %r15
	callq	gx_trans_pattern_fill_rect
	movq	96(%rsp), %r8           # 8-byte Reload
	movq	%r15, %r9
	incl	%r12d
	movq	3976(%rsp), %rax
	cmpl	96(%rax), %r12d
	jl	.LBB27_25
	jmp	.LBB27_28
.LBB27_26:                              # %if.else.146.i
	movl	%r13d, 84(%rsp)         # 4-byte Spill
	cmpl	$1, %edx
	movq	%rsi, %r13
	jne	.LBB27_28
# BB#27:                                # %do.end.154.i
	movl	48(%rcx), %edi
	movl	52(%rcx), %edx
	movl	40(%rcx), %esi
	movl	44(%rcx), %ecx
	shlq	$32, %r8
	orq	%rax, %r8
	movq	%r14, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	%r13, %r8
	movq	%r9, %rbp
	callq	gx_trans_pattern_fill_rect
	movq	%rbp, %r9
.LBB27_28:                              # %if.end.189.i
	testq	%r9, %r9
	je	.LBB27_29
# BB#30:                                # %if.then.191.i
	movq	112(%rsp), %rdi
	movl	$.L.str.37, %edx
	movq	%r9, %rsi
	callq	*24(%rdi)
	movq	%r13, %rcx
	movq	192(%rcx), %rax
	movq	$0, 24(%rax)
	jmp	.LBB27_31
.LBB27_29:
	movq	%r13, %rcx
.LBB27_31:                              # %if.end.197.i
	movl	84(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB27_32
.Lfunc_end27:
	.size	pdf14_fill_path, .Lfunc_end27-pdf14_fill_path
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI28_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	pdf14_stroke_path,@function
pdf14_stroke_path:                      # @pdf14_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp200:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp201:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp202:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp203:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp204:
	.cfi_def_cfa_offset 56
	subq	$1624, %rsp             # imm = 0x658
.Ltmp205:
	.cfi_def_cfa_offset 1680
.Ltmp206:
	.cfi_offset %rbx, -56
.Ltmp207:
	.cfi_offset %r12, -48
.Ltmp208:
	.cfi_offset %r13, -40
.Ltmp209:
	.cfi_offset %r14, -32
.Ltmp210:
	.cfi_offset %r15, -24
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	movl	$1616, %edx             # imm = 0x650
	callq	memcpy
	xorl	%ecx, %ecx
	testq	%r13, %r13
	je	.LBB28_4
# BB#1:                                 # %if.then.i
	movq	%r13, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB28_3
# BB#2:                                 # %land.lhs.true.i
	movq	%r13, %rdi
	callq	gx_pattern1_get_transptr
	movl	$1, %ecx
	testq	%rax, %rax
	jne	.LBB28_4
.LBB28_3:                               # %if.else.i
	movq	%r13, %rdi
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
.LBB28_4:                               # %if.end.8.i
	movq	224(%rsp), %rax
	movzwl	%ax, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	jne	.LBB28_10
# BB#5:                                 # %lor.lhs.false.i
	shrq	$32, %rax
	cmpl	$5, %eax
	ja	.LBB28_10
# BB#6:                                 # %lor.lhs.false.i
	movl	$49, %edx
	btl	%eax, %edx
	jae	.LBB28_10
# BB#7:                                 # %lor.lhs.false.21.i
	movss	232(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI28_0(%rip), %xmm0
	jne	.LBB28_10
	jp	.LBB28_10
# BB#8:                                 # %lor.lhs.false.26.i
	testl	%ecx, %ecx
	jne	.LBB28_10
# BB#9:                                 # %lor.lhs.false.26.i
	movss	236(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI28_0(%rip), %xmm0
	jne	.LBB28_10
	jnp	.LBB28_11
.LBB28_10:                              # %if.then.33.i
	orb	$4, 221(%rsp)
.LBB28_11:                              # %update_lop_for_pdf14.exit
	movl	224(%rbp), %eax
	movl	%eax, 4168(%rbx)
	movl	228(%rbp), %ecx
	movl	%ecx, 4172(%rbx)
	movd	%eax, %xmm0
	movd	%ecx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4176(%rbx)
	movl	220(%rbp), %eax
	movl	%eax, 4180(%rbx)
	movl	272(%rbp), %eax
	movl	%eax, 4188(%rbx)
	movl	276(%rbp), %eax
	movl	%eax, 4192(%rbx)
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	%r14, %r9
	callq	gx_default_stroke_path
	addq	$1624, %rsp             # imm = 0x658
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	pdf14_stroke_path, .Lfunc_end28-pdf14_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_fill_mask,@function
pdf14_fill_mask:                        # @pdf14_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp213:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp214:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp215:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp216:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp217:
	.cfi_def_cfa_offset 56
	subq	$2008, %rsp             # imm = 0x7D8
.Ltmp218:
	.cfi_def_cfa_offset 2064
.Ltmp219:
	.cfi_offset %rbx, -56
.Ltmp220:
	.cfi_offset %r12, -48
.Ltmp221:
	.cfi_offset %r13, -40
.Ltmp222:
	.cfi_offset %r14, -32
.Ltmp223:
	.cfi_offset %r15, -24
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%r9, 120(%rsp)          # 8-byte Spill
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movl	%edx, 96(%rsp)          # 4-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	2088(%rsp), %r15
	movl	2080(%rsp), %r14d
	movl	2072(%rsp), %r12d
	movl	2064(%rsp), %ebp
	xorl	%ebx, %ebx
	testq	%r15, %r15
	movl	$0, %esi
	je	.LBB29_12
# BB#1:                                 # %land.lhs.true
	movq	%r15, %rdi
	callq	gx_dc_is_pattern1_color
	xorl	%ebx, %ebx
	testl	%eax, %eax
	movl	$0, %esi
	je	.LBB29_12
# BB#2:                                 # %if.then
	movq	%r15, %rdi
	callq	gx_pattern1_get_transptr
	xorl	%ebx, %ebx
	testq	%rax, %rax
	movl	$0, %esi
	je	.LBB29_12
# BB#3:                                 # %if.then.3
	movq	8(%r15), %rbx
	movq	192(%rbx), %rax
	cmpl	$4, 56(%rax)
	jg	.LBB29_5
# BB#4:                                 # %if.then.5
	movq	$rgb_blending_procs, 72(%rax)
	movl	$1, 80(%rax)
	jmp	.LBB29_6
.LBB29_5:                               # %if.else
	movq	$cmyk_blending_procs, 72(%rax)
	movl	$0, 80(%rax)
.LBB29_6:                               # %if.end
	movq	%r15, %rdi
	callq	gx_set_pattern_procs_trans
	cmpb	$0, 209(%rbx)
	movl	$tile_rect_trans_simple, %ecx
	movq	192(%rbx), %rax
	je	.LBB29_8
# BB#7:                                 # %select.mid
	movl	$tile_rect_trans_blend, %ecx
.LBB29_8:                               # %select.end
	movq	%rcx, 96(%rax)
	movq	120(%rsp), %rdx         # 8-byte Reload
	movl	%edx, 136(%rsp)
	xorl	%esi, %esi
	testl	%ebp, %ebp
	movl	%ebp, %ecx
	cmovsl	%esi, %ecx
	movl	%ecx, 140(%rsp)
	leal	(%r12,%rdx), %ecx
	movl	%ecx, 144(%rsp)
	leal	(%r14,%rbp), %ecx
	movl	%ecx, 148(%rsp)
	testl	%r12d, %r12d
	jle	.LBB29_12
# BB#9:                                 # %select.end
	testl	%r14d, %r14d
	jle	.LBB29_12
# BB#10:                                # %if.then.29
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	4152(%rbp), %rdi
	movl	56(%rax), %ecx
	movl	84(%rax), %eax
	decl	%ecx
	movl	%ecx, 24(%rsp)
	movl	%eax, (%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	leaq	136(%rsp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$255, %r9d
	callq	pdf14_push_transparency_group
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB29_22
# BB#11:                                # %if.end.37
	movq	24(%rbp), %rdi
	callq	new_pattern_trans_buff
	movq	%rax, %r12
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	pdf14_get_buffer_information
	movq	192(%rbx), %rax
	movq	%r12, 24(%rax)
	movl	2072(%rsp), %r12d
	movl	$1, %esi
.LBB29_12:                              # %if.end.44
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movq	%r12, %rbp
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	2112(%rsp), %rsi
	movl	2096(%rsp), %r13d
	testq	%rsi, %rsi
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %r12
	je	.LBB29_14
# BB#13:                                # %if.then.46
	leaq	152(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	gx_make_clip_device_on_stack
.LBB29_14:                              # %if.end.48
	cmpl	$2, %r13d
	jl	.LBB29_16
# BB#15:                                # %if.then.50
	movq	8(%r15), %rax
	movl	%r13d, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	2064(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%r12, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	96(%rsp), %edx          # 4-byte Reload
	movl	100(%rsp), %ecx         # 4-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movq	120(%rsp), %r9          # 8-byte Reload
	callq	*1312(%r12)
	jmp	.LBB29_17
.LBB29_16:                              # %if.else.53
	movl	2104(%rsp), %ecx
	movq	(%r15), %rax
	movl	%ecx, 32(%rsp)
	movq	%r12, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	2064(%rsp), %ecx
	movl	%ecx, (%rsp)
	movl	$0, 40(%rsp)
	movq	%r15, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	96(%rsp), %edx          # 4-byte Reload
	movl	100(%rsp), %ecx         # 4-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movq	120(%rsp), %r9          # 8-byte Reload
	callq	*48(%rax)
.LBB29_17:                              # %if.end.55
	movl	%eax, %r13d
	movl	84(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB29_22
# BB#18:                                # %if.then.57
	testl	%r13d, %r13d
	js	.LBB29_21
# BB#19:                                # %if.end.62
	leaq	128(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB29_21
# BB#20:                                # %if.then.64
	movq	4152(%rbx), %rsi
	movq	4144(%rbx), %rdx
	movl	100(%rbx), %ecx
	movq	128(%rsp), %rax
	movq	(%rax), %r8
	xorl	%edi, %edi
	movq	%rbx, %r9
	callq	pdf14_pop_transparency_group
	movl	%eax, %r13d
.LBB29_21:                              # %if.end.67
	movq	24(%rbx), %rdi
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	192(%rbx), %rax
	movq	24(%rax), %rsi
	movl	$.L.str.42, %edx
	callq	*24(%rdi)
	movq	192(%rbx), %rax
	movq	$0, 24(%rax)
.LBB29_22:                              # %cleanup
	movl	%r13d, %eax
	addq	$2008, %rsp             # imm = 0x7D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	pdf14_fill_mask, .Lfunc_end29-pdf14_fill_mask
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_begin_typed_image,@function
pdf14_begin_typed_image:                # @pdf14_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp226:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp227:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp228:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp229:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp230:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp231:
	.cfi_def_cfa_offset 288
.Ltmp232:
	.cfi_offset %rbx, -56
.Ltmp233:
	.cfi_offset %r12, -48
.Ltmp234:
	.cfi_offset %r13, -40
.Ltmp235:
	.cfi_offset %r14, -32
.Ltmp236:
	.cfi_offset %r15, -24
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r12
	testq	%rbx, %rbx
	je	.LBB30_26
# BB#1:                                 # %entry
	movl	584(%r15), %eax
	testl	%eax, %eax
	je	.LBB30_26
# BB#2:                                 # %land.lhs.true
	movq	304(%rsp), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	296(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	288(%rsp), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB30_26
# BB#3:                                 # %if.then.2
	movq	%rbx, %rdi
	callq	gx_pattern1_get_transptr
	testq	%rax, %rax
	je	.LBB30_26
# BB#4:                                 # %if.then.5
	movl	$gx_default_begin_image, %eax
	cmpq	%rax, 1392(%r12)
	je	.LBB30_26
# BB#5:                                 # %if.then.7
	movq	8(%rbx), %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	192(%rdi), %rax
	cmpl	$5, 56(%rax)
	setl	%cl
	movl	$rgb_blending_procs, %edx
	movl	$cmyk_blending_procs, %esi
	cmovlq	%rdx, %rsi
	movzbl	%cl, %ecx
	movq	%rsi, 72(%rax)
	movl	%ecx, 80(%rax)
	movl	220(%r14), %ecx
	movl	%ecx, 84(%rax)
	movl	$tile_rect_trans_simple, %ecx
	cmpb	$0, 209(%rdi)
	je	.LBB30_7
# BB#6:                                 # %select.mid
	movl	$tile_rect_trans_blend, %ecx
.LBB30_7:                               # %select.end
	movq	%rcx, 96(%rax)
	movq	%rbx, %rdi
	callq	gx_set_pattern_procs_trans
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	%rbx, %r9
	callq	gx_default_begin_typed_image
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB30_25
# BB#8:                                 # %if.end.16.i
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 144(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%r15), %xmm0
	movsd	%xmm0, 160(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	36(%r15), %xmm0
	movsd	%xmm0, 168(%rsp)
	leaq	8(%r15), %rsi
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %rdx
	callq	gs_bbox_transform_inverse
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB30_25
# BB#9:                                 # %if.end.26.i
	leaq	132(%r14), %rsi
	leaq	112(%rsp), %rdi
	leaq	200(%rsp), %rdx
	callq	gs_bbox_transform
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB30_25
# BB#10:                                # %do.body.i.i
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r13d
	movl	%r13d, 184(%rsp)
	movsd	208(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movl	%ebp, 188(%rsp)
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, 192(%rsp)
	movsd	224(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, 196(%rsp)
	movq	4152(%r12), %rdi
	movl	24(%rdi), %ecx
	cmpl	%r13d, %ecx
	jle	.LBB30_12
# BB#11:                                # %if.then.5.i.i
	movl	%ecx, 184(%rsp)
	movl	%ecx, %r13d
.LBB30_12:                              # %if.end.12.i.i
	movl	32(%rdi), %ecx
	cmpl	%ebx, %ecx
	jge	.LBB30_14
# BB#13:                                # %if.then.19.i.i
	movl	%ecx, 192(%rsp)
	movl	%ecx, %ebx
.LBB30_14:                              # %if.end.26.i.i
	movl	28(%rdi), %ecx
	cmpl	%ebp, %ecx
	jle	.LBB30_16
# BB#15:                                # %if.then.33.i.i
	movl	%ecx, 188(%rsp)
	movl	%ecx, %ebp
.LBB30_16:                              # %if.end.40.i.i
	movl	36(%rdi), %ecx
	cmpl	%eax, %ecx
	jge	.LBB30_18
# BB#17:                                # %if.then.48.i.i
	movl	%ecx, 196(%rsp)
	movl	%ecx, %eax
.LBB30_18:                              # %do.end.i.i
	cmpl	%r13d, %ebx
	jge	.LBB30_20
# BB#19:                                # %if.then.61.i.i
	movl	%r13d, 192(%rsp)
.LBB30_20:                              # %if.end.66.i.i
	cmpl	%ebp, %eax
	jge	.LBB30_22
# BB#21:                                # %if.then.72.i.i
	movl	%ebp, 196(%rsp)
.LBB30_22:                              # %if.end.31.i
	xorl	%ebx, %ebx
	cmpl	$0, 32(%r15)
	je	.LBB30_25
# BB#23:                                # %lor.lhs.false.i
	cmpl	$0, 36(%r15)
	je	.LBB30_25
# BB#24:                                # %do.end.i
	movl	220(%r14), %eax
	movq	80(%rsp), %r15          # 8-byte Reload
	movq	192(%r15), %rcx
	movl	56(%rcx), %ecx
	decl	%ecx
	movq	%r12, 64(%rsp)
	movq	%r14, 56(%rsp)
	movl	%ecx, 24(%rsp)
	movl	%eax, (%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	leaq	184(%rsp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$255, %r8d
	movl	$255, %r9d
	callq	pdf14_push_transparency_group
	movl	%eax, %ebx
	movq	8(%r14), %rdi
	callq	new_pattern_trans_buff
	movq	%rax, %rbp
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pdf14_get_buffer_information
	movq	192(%r15), %rax
	movq	%rbp, 24(%rax)
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	1208(%rcx), %rdx
	movq	%rdx, 104(%rax)
	movq	$pdf14_pattern_trans_render, 1208(%rcx)
	movl	$0, 220(%r15)
.LBB30_25:                              # %cleanup
	movl	%ebx, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_26:                              # %if.end.11
	movl	224(%r14), %eax
	movl	%eax, 4168(%r12)
	movl	228(%r14), %ecx
	movl	%ecx, 4172(%r12)
	movd	%eax, %xmm0
	movd	%ecx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4176(%r12)
	movl	220(%r14), %eax
	movl	%eax, 4180(%r12)
	movl	272(%r14), %eax
	movl	%eax, 4188(%r12)
	movl	276(%r14), %eax
	movl	%eax, 4192(%r12)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	%rbx, %r9
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_begin_typed_image # TAILCALL
.Lfunc_end30:
	.size	pdf14_begin_typed_image, .Lfunc_end30-pdf14_begin_typed_image
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_create_compositor,@function
pdf14_create_compositor:                # @pdf14_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp239:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp240:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp241:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp242:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp243:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp244:
	.cfi_def_cfa_offset 64
.Ltmp245:
	.cfi_offset %rbx, -56
.Ltmp246:
	.cfi_offset %r12, -48
.Ltmp247:
	.cfi_offset %r13, -40
.Ltmp248:
	.cfi_offset %r14, -32
.Ltmp249:
	.cfi_offset %r15, -24
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %rbp
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rbx), %rax
	movl	$gs_composite_pdf14trans_type, %ecx
	cmpq	%rcx, %rax
	je	.LBB31_9
# BB#1:                                 # %entry
	movl	$gs_composite_pdf14trans_no_clist_writer_type, %ecx
	cmpq	%rcx, %rax
	je	.LBB31_9
# BB#2:                                 # %if.else
	movq	%rbx, %rdi
	callq	gs_is_overprint_compositor
	testl	%eax, %eax
	je	.LBB31_6
# BB#3:                                 # %if.then.4
	movl	68(%rbx), %eax
	movl	%eax, 4196(%r15)
	cmpl	$0, 40(%rbx)
	je	.LBB31_7
# BB#4:                                 # %land.lhs.true
	cmpl	$0, 44(%rbx)
	je	.LBB31_5
.LBB31_7:                               # %if.else.13
	movb	100(%r15), %cl
	movl	$1, %eax
	shlq	%cl, %rax
	decq	%rax
	jmp	.LBB31_8
.LBB31_9:                               # %if.then
	movq	%r15, (%r14)
	movq	%r12, 4208(%r15)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_update_pdf14_compositor # TAILCALL
.LBB31_6:                               # %if.else.15
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%r12, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_no_create_compositor # TAILCALL
.LBB31_5:                               # %if.then.10
	movq	56(%rbx), %rax
.LBB31_8:                               # %cleanup
	movq	%rax, 4200(%r15)
	movq	%r15, (%r14)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pdf14_create_compositor, .Lfunc_end31-pdf14_create_compositor
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_text_begin,@function
pdf14_text_begin:                       # @pdf14_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp251:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp252:
	.cfi_def_cfa_offset 48
.Ltmp253:
	.cfi_offset %rbx, -16
	movq	48(%rsp), %r10
	movq	56(%rsp), %r11
	movl	224(%rsi), %eax
	movl	%eax, 4168(%rdi)
	movl	228(%rsi), %ebx
	movl	%ebx, 4172(%rdi)
	movd	%eax, %xmm0
	movd	%ebx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4176(%rdi)
	movl	220(%rsi), %eax
	movl	%eax, 4180(%rdi)
	movl	272(%rsi), %eax
	movl	%eax, 4188(%rdi)
	movl	276(%rsi), %eax
	movl	%eax, 4192(%rdi)
	leaq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	callq	gx_default_text_begin
	testl	%eax, %eax
	js	.LBB32_2
# BB#1:                                 # %if.end
	movq	64(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	%rdx, (%rcx)
.LBB32_2:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end32:
	.size	pdf14_text_begin, .Lfunc_end32-pdf14_text_begin
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4643176031446892544     # double 255
.LCPI33_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI33_2:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	pdf14_begin_transparency_group,@function
pdf14_begin_transparency_group:         # @pdf14_begin_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp255:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp256:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp257:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp258:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp259:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp260:
	.cfi_def_cfa_offset 256
.Ltmp261:
	.cfi_offset %rbx, -56
.Ltmp262:
	.cfi_offset %r12, -48
.Ltmp263:
	.cfi_offset %r13, -40
.Ltmp264:
	.cfi_offset %r14, -32
.Ltmp265:
	.cfi_offset %r15, -24
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movq	%rdx, %r14
	movq	%rdi, %r12
	movss	224(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	228(%rbp), %xmm0
	movss	%xmm0, 104(%rsp)        # 4-byte Spill
	movl	8(%rsi), %r15d
	movq	%rsi, %r13
	movl	$.L.str.5, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r12), %rdi
	cmpq	$3, %rcx
	ja	.LBB33_8
# BB#1:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB33_9
# BB#2:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB33_9
# BB#3:                                 # %if.then
	movzbl	1(%rdi), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB33_9
# BB#4:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB33_9
# BB#5:                                 # %if.then.22
	movzbl	2(%rdi), %eax
	addl	$-102, %eax
	cmpq	$3, %rcx
	jb	.LBB33_9
# BB#6:                                 # %if.then.22
	testl	%eax, %eax
	jne	.LBB33_9
# BB#7:                                 # %if.then.32
	movzbl	3(%rdi), %eax
	addl	$-49, %eax
	jmp	.LBB33_9
.LBB33_8:                               # %cond.false
	movl	$.L.str.5, %esi
	callq	strcmp
.LBB33_9:                               # %cond.end
	movb	$1, %cl
	testl	%eax, %eax
	je	.LBB33_11
# BB#10:                                # %lor.rhs
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	callq	*1664(%r12)
	testl	%eax, %eax
	setne	%cl
.LBB33_11:                              # %lor.end
	movb	%cl, 108(%rsp)          # 1-byte Spill
	leaq	112(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB33_46
# BB#12:                                # %if.end.50
	movq	112(%rsp), %rsi
	leaq	144(%rsp), %rdx
	leaq	120(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	leaq	132(%rbp), %rsi
	leaq	168(%rsp), %rdx
	movq	%r14, %rdi
	callq	gs_bbox_transform
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB33_46
# BB#13:                                # %do.body.i
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	%r15d, 92(%rsp)         # 4-byte Spill
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r14d
	movl	%r14d, 152(%rsp)
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movl	%ebp, 156(%rsp)
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, 160(%rsp)
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, 164(%rsp)
	movq	4152(%r12), %r15
	movl	24(%r15), %ecx
	cmpl	%r14d, %ecx
	jle	.LBB33_15
# BB#14:                                # %if.then.5.i
	movl	%ecx, 152(%rsp)
	movl	%ecx, %r14d
.LBB33_15:                              # %if.end.12.i
	movl	32(%r15), %ecx
	cmpl	%ebx, %ecx
	movq	%r13, %rsi
	jge	.LBB33_17
# BB#16:                                # %if.then.19.i
	movl	%ecx, 160(%rsp)
	movl	%ecx, %ebx
.LBB33_17:                              # %if.end.26.i
	movl	28(%r15), %ecx
	cmpl	%ebp, %ecx
	jle	.LBB33_19
# BB#18:                                # %if.then.33.i
	movl	%ecx, 156(%rsp)
	movl	%ecx, %ebp
.LBB33_19:                              # %if.end.40.i
	movl	36(%r15), %ecx
	cmpl	%eax, %ecx
	jge	.LBB33_21
# BB#20:                                # %if.then.48.i
	movl	%ecx, 164(%rsp)
	movl	%ecx, %eax
.LBB33_21:                              # %do.end.i
	cmpl	%r14d, %ebx
	jge	.LBB33_23
# BB#22:                                # %if.then.61.i
	movl	%r14d, 160(%rsp)
.LBB33_23:                              # %if.end.66.i
	cmpl	%ebp, %eax
	jge	.LBB33_25
# BB#24:                                # %if.then.72.i
	movl	%ebp, 164(%rsp)
.LBB33_25:                              # %do.end
	movl	32(%rsi), %r14d
	cmpl	$6, %r14d
	jne	.LBB33_30
# BB#26:                                # %if.then.59
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB33_28
# BB#27:                                # %if.then.61
	movl	68(%rax), %ecx
	decl	%ecx
	jmp	.LBB33_29
.LBB33_30:                              # %if.else.71
	movl	28(%rsi), %ecx
	movq	48(%rsi), %r13
	jmp	.LBB33_31
.LBB33_28:                              # %if.else
	movl	100(%r12), %ecx
.LBB33_29:                              # %if.end.65
	xorl	%r13d, %r13d
	cmpl	$5, %ecx
	setl	%al
	cmovlq	144(%rsp), %r13
	movzbl	%al, %r14d
	orl	$4, %r14d
.LBB33_31:                              # %if.end.74
	cmpb	$0, 108(%rsp)           # 1-byte Folded Reload
	je	.LBB33_32
# BB#48:                                # %if.end.115.thread
	movl	100(%r12), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	$0, 88(%rsp)            # 4-byte Folded Spill
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	jmp	.LBB33_42
.LBB33_32:                              # %if.then.76
	xorl	%eax, %eax
	testq	%r13, %r13
	movq	96(%rsp), %r15          # 8-byte Reload
	jne	.LBB33_36
# BB#33:                                # %land.lhs.true.79
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	4208(%r12), %rbx
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	movl	$0, %eax
	je	.LBB33_40
# BB#34:                                # %if.then.82
	movq	%rsi, %rax
	movq	40(%rax), %rsi
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	gsicc_read_serial_icc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB33_47
# BB#35:                                # %cleanup.thread
	movq	%rbx, 264(%r13)
	movl	$1, %eax
	movq	%rbp, %rsi
	movl	108(%rsp), %ecx         # 4-byte Reload
.LBB33_36:                              # %if.then.95
	cmpl	$0, 152(%r13)
	je	.LBB33_38
# BB#37:                                # %if.then.95.if.end.99_crit_edge
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	leaq	144(%r13), %rbx
	jmp	.LBB33_39
.LBB33_38:                              # %if.then.97
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	256(%r13), %rdi
	leaq	144(%r13), %rbx
	movl	220(%r13), %edx
	movq	%rsi, %rbp
	movq	%rbx, %rsi
	callq	gsicc_get_icc_buff_hash
	movq	%rbp, %rsi
	movl	$1, 152(%r13)
.LBB33_39:                              # %if.end.99
	movq	(%rbx), %rax
	movq	144(%rsp), %rcx
	cmpq	144(%rcx), %rax
	setne	%al
	movzbl	%al, %eax
.LBB33_40:                              # %if.end.115
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movq	40(%rsi), %rdx
	movq	%rsi, %rbp
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	%r15, %rcx
	movq	%r13, %r8
	callq	pdf14_update_device_color_procs
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB33_46
# BB#41:                                # %if.end.115.if.end.119_crit_edge
	movq	4152(%r12), %r15
	movq	%rbp, %rsi
.LBB33_42:                              # %if.end.119
	movss	104(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	12(%rsi), %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	mulsd	.LCPI33_0(%rip), %xmm0
	addsd	.LCPI33_1(%rip), %xmm0
	movq	%rsi, %r14
	callq	floor
	cvttsd2si	%xmm0, %ebx
	movq	96(%rsp), %rbp          # 8-byte Reload
	movss	228(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI33_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI33_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	220(%rbp), %ecx
	movl	20(%r14), %edx
	movl	24(%r14), %esi
	movq	144(%rsp), %rdi
	movq	%r12, 64(%rsp)
	movq	%rbp, 56(%rsp)
	movq	%rdi, 48(%rsp)
	movq	%r13, 40(%rsp)
	movl	88(%rsp), %edi          # 4-byte Reload
	movl	%edi, 32(%rsp)
	movl	108(%rsp), %edi         # 4-byte Reload
	movl	%edi, 24(%rsp)
	movl	%esi, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%ecx, (%rsp)
	movzbl	%bl, %r8d
	movzbl	%al, %r9d
	leaq	152(%rsp), %rsi
	movq	%r15, %rdi
	movl	92(%rsp), %edx          # 4-byte Reload
	movl	104(%rsp), %ecx         # 4-byte Reload
	callq	pdf14_push_transparency_group
	movl	%eax, %ebx
	testq	%r13, %r13
	je	.LBB33_46
# BB#43:                                # %if.end.119
	cmpl	$0, 84(%rsp)            # 4-byte Folded Reload
	je	.LBB33_46
# BB#44:                                # %do.end.140
	decq	288(%r13)
	jne	.LBB33_46
# BB#45:                                # %do.end.151
	movq	296(%r13), %rdi
	movl	$.L__func__.pdf14_begin_transparency_group, %edx
	movq	%r13, %rsi
	callq	*304(%r13)
	jmp	.LBB33_46
.LBB33_47:                              # %cleanup
	movl	$.L__func__.pdf14_begin_transparency_group, %edi
	movl	$.L.str.39, %esi
	movl	$3785, %edx             # imm = 0xEC9
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.48, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ebx
.LBB33_46:                              # %cleanup.165
	movl	%ebx, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	pdf14_begin_transparency_group, .Lfunc_end33-pdf14_begin_transparency_group
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_end_transparency_group,@function
pdf14_end_transparency_group:           # @pdf14_end_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp268:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp269:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp270:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp271:
	.cfi_def_cfa_offset 80
.Ltmp272:
	.cfi_offset %rbx, -40
.Ltmp273:
	.cfi_offset %r14, -32
.Ltmp274:
	.cfi_offset %r15, -24
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	(%rsp), %rsi
	callq	*1680(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB34_11
# BB#1:                                 # %if.end
	movq	(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	8(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movq	4152(%rbx), %rsi
	movq	4144(%rbx), %rdx
	movl	100(%rbx), %ecx
	movq	32(%rsp), %r8
	movq	%r15, %rdi
	movq	%rbx, %r9
	callq	pdf14_pop_transparency_group
	movl	%eax, %r14d
	movq	4152(%rbx), %rax
	movq	(%rax), %rax
	movq	136(%rax), %rbp
	cmpq	$0, 160(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %land.lhs.true
	cmpq	$0, 184(%rbp)
	je	.LBB34_11
.LBB34_3:                               # %if.then.20
	movq	152(%rbp), %rax
	movq	%rax, 360(%r15)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gx_set_cmap_procs
	movq	160(%rbp), %rax
	movq	%rax, 1536(%rbx)
	movq	184(%rbp), %rax
	movq	%rax, 1544(%rbx)
	movl	8(%rbp), %eax
	movl	%eax, 104(%rbx)
	movl	(%rbp), %eax
	movl	%eax, 100(%rbx)
	movl	4(%rbp), %eax
	movq	4152(%rbx), %rcx
	movl	%eax, 40(%rcx)
	movups	192(%rbp), %xmm0
	movups	%xmm0, 4136(%rbx)
	movzbl	140(%rbp), %eax
	movw	%ax, 108(%rbx)
	movl	148(%rbp), %eax
	movl	%eax, 116(%rbx)
	movl	144(%rbp), %eax
	movl	%eax, 112(%rbx)
	leaq	204(%rbx), %rdi
	leaq	76(%rbp), %rsi
	movl	$64, %edx
	callq	memcpy
	leaq	140(%rbx), %rdi
	leaq	12(%rbp), %rsi
	movl	$64, %edx
	callq	memcpy
	xorps	%xmm0, %xmm0
	movq	$0, 184(%rbp)
	movups	%xmm0, 152(%rbp)
	movq	208(%rbp), %rax
	testq	%rax, %rax
	je	.LBB34_11
# BB#4:                                 # %do.body.51
	movq	32(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB34_7
# BB#5:                                 # %do.end.56
	decq	288(%rsi)
	jne	.LBB34_7
# BB#6:                                 # %do.end.66
	movq	296(%rsi), %rdi
	movl	$.L.str.49, %edx
	callq	*304(%rsi)
	movq	$0, 32(%rsp)
	movq	208(%rbp), %rax
.LBB34_7:                               # %do.end.77
	movq	1104(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	208(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB34_10
# BB#8:                                 # %do.end.86
	decq	288(%rsi)
	jne	.LBB34_10
# BB#9:                                 # %do.end.101
	movq	296(%rsi), %rdi
	movl	$.L.str.49, %edx
	callq	*304(%rsi)
	movq	$0, 208(%rbp)
.LBB34_10:                              # %do.end.119
	movq	$0, 208(%rbp)
.LBB34_11:                              # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	pdf14_end_transparency_group, .Lfunc_end34-pdf14_end_transparency_group
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI35_0:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_1:
	.quad	4602678819172646912     # double 0.5
.LCPI35_2:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	pdf14_begin_transparency_mask,@function
pdf14_begin_transparency_mask:          # @pdf14_begin_transparency_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp277:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp278:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp279:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp280:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp281:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp282:
	.cfi_def_cfa_offset 144
.Ltmp283:
	.cfi_offset %rbx, -56
.Ltmp284:
	.cfi_offset %r12, -48
.Ltmp285:
	.cfi_offset %r13, -40
.Ltmp286:
	.cfi_offset %r14, -32
.Ltmp287:
	.cfi_offset %r15, -24
.Ltmp288:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	4152(%r15), %rax
	movq	16(%rax), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.50, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB35_40
# BB#1:                                 # %if.end
	leaq	132(%rbx), %rsi
	leaq	56(%rsp), %rdx
	movq	%r13, %rdi
	callq	gs_bbox_transform
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB35_40
# BB#2:                                 # %do.body.i
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r13d
	movl	%r13d, 40(%rsp)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movl	%ebp, 44(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, 48(%rsp)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, 52(%rsp)
	movq	4152(%r15), %rcx
	movl	24(%rcx), %edx
	cmpl	%r13d, %edx
	jle	.LBB35_4
# BB#3:                                 # %if.then.5.i
	movl	%edx, 40(%rsp)
	movl	%edx, %r13d
.LBB35_4:                               # %if.end.12.i
	movl	32(%rcx), %edx
	cmpl	%ebx, %edx
	jge	.LBB35_6
# BB#5:                                 # %if.then.19.i
	movl	%edx, 48(%rsp)
	movl	%edx, %ebx
.LBB35_6:                               # %if.end.26.i
	movl	28(%rcx), %edx
	cmpl	%ebp, %edx
	jle	.LBB35_8
# BB#7:                                 # %if.then.33.i
	movl	%edx, 44(%rsp)
	movl	%edx, %ebp
.LBB35_8:                               # %if.end.40.i
	movl	36(%rcx), %ecx
	cmpl	%eax, %ecx
	jge	.LBB35_10
# BB#9:                                 # %if.then.48.i
	movl	%ecx, 52(%rsp)
	movl	%ecx, %eax
.LBB35_10:                              # %do.end.i
	cmpl	%r13d, %ebx
	jge	.LBB35_12
# BB#11:                                # %if.then.61.i
	movl	%r13d, 48(%rsp)
.LBB35_12:                              # %if.end.66.i
	cmpl	%ebp, %eax
	jge	.LBB35_14
# BB#13:                                # %if.then.72.i
	movl	%ebp, 52(%rsp)
.LBB35_14:                              # %if.end.6
	cmpl	$0, 12(%r12)
	je	.LBB35_15
# BB#16:                                # %if.then.7
	movss	272(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI35_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI35_1(%rip), %xmm0
	cvttsd2si	%xmm0, %ebx
	jmp	.LBB35_17
.LBB35_15:
	xorl	%ebx, %ebx
.LBB35_17:                              # %do.end
	leaq	292(%r12), %rsi
	movl	$256, %edx              # imm = 0x100
	movq	%r14, %rdi
	callq	memcpy
	movl	8(%r12), %esi
	cmpl	$6, %esi
	jne	.LBB35_28
# BB#18:                                # %if.then.16
	movq	4152(%r15), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB35_20
# BB#19:                                # %if.then.19
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movl	68(%rax), %r13d
	decl	%r13d
	jmp	.LBB35_21
.LBB35_28:                              # %if.else.25
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movl	4(%r12), %r13d
	jmp	.LBB35_29
.LBB35_20:                              # %if.else
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movl	100(%r15), %r13d
.LBB35_21:                              # %if.end.22
	cmpl	$1, %r13d
	je	.LBB35_22
# BB#23:                                # %if.end.22
	cmpl	$4, %r13d
	jne	.LBB35_24
# BB#26:                                # %sw.bb.24
	movl	$2, %esi
	jmp	.LBB35_29
.LBB35_22:
	xorl	%esi, %esi
	movl	$1, %r13d
	jmp	.LBB35_29
.LBB35_24:                              # %if.end.22
	cmpl	$3, %r13d
	jne	.LBB35_27
# BB#25:                                # %sw.bb.23
	movl	$1, %esi
	jmp	.LBB35_29
.LBB35_27:                              # %sw.default
	movl	$4, %esi
.LBB35_29:                              # %if.end.28
	movq	552(%r12), %rdx
	movq	560(%r12), %r8
	movq	%r15, %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	pdf14_update_device_color_procs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB35_40
# BB#30:                                # %if.end.33
	movq	4152(%r15), %r15
	movl	280(%r12), %r8d
	movl	288(%r12), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	(%r12), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	12(%r12), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movss	272(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	incl	48(%r15)
	incl	%r13d
	movq	16(%r15), %rax
	movq	%rax, (%rsp)
	leaq	40(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%r13d, %r9d
	callq	pdf14_buf_new
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movl	$-25, %ebp
	je	.LBB35_40
# BB#31:                                # %if.end.i
	movl	28(%rsp), %eax          # 4-byte Reload
	movb	%al, 24(%rbx)
	movl	$1, 16(%rbx)
	movl	$0, 20(%rbx)
	movb	$-1, 25(%rbx)
	movl	$0, 28(%rbx)
	movq	%r14, 88(%rbx)
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 128(%rbx)
	movq	8(%r15), %rax
	movq	%rax, 112(%rbx)
	testq	%rax, %rax
	je	.LBB35_34
# BB#32:                                # %do.body.7.i
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB35_34
# BB#33:                                # %do.body.11.i
	incq	8(%rax)
.LBB35_34:                              # %if.end.22.i
	movq	(%r15), %rax
	movq	%rax, (%rbx)
	movq	%rbx, (%r15)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 124(%rbx)
	movq	80(%rbx), %r14
	xorl	%ebp, %ebp
	testq	%r14, %r14
	je	.LBB35_40
# BB#35:                                # %if.then.25.i
	cmpl	$0, 16(%rsp)            # 4-byte Folded Reload
	je	.LBB35_38
# BB#36:                                # %if.then.25.i
	xorps	%xmm0, %xmm0
	movss	20(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB35_37
	jnp	.LBB35_38
.LBB35_37:                              # %if.then.29.i
	movss	20(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI35_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movzbl	%al, %esi
	movslq	64(%rbx), %rdx
	movq	%r14, %rdi
	callq	memset
	movslq	64(%rbx), %rax
	addq	%rax, %r14
	movslq	68(%rbx), %rdx
	decq	%rdx
	imulq	%rax, %rdx
	movl	$255, %esi
	jmp	.LBB35_39
.LBB35_38:                              # %if.else.i
	movslq	68(%rbx), %rax
	movslq	64(%rbx), %rdx
	imulq	%rax, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
.LBB35_39:                              # %cleanup
	movq	%r14, %rdi
	callq	memset
.LBB35_40:                              # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	pdf14_begin_transparency_mask, .Lfunc_end35-pdf14_begin_transparency_mask
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI36_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	2                       # 0x2
	.text
	.align	16, 0x90
	.type	pdf14_end_transparency_mask,@function
pdf14_end_transparency_mask:            # @pdf14_end_transparency_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp290:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp291:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp292:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp293:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp294:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp295:
	.cfi_def_cfa_offset 160
.Ltmp296:
	.cfi_offset %rbx, -56
.Ltmp297:
	.cfi_offset %r12, -48
.Ltmp298:
	.cfi_offset %r13, -40
.Ltmp299:
	.cfi_offset %r14, -32
.Ltmp300:
	.cfi_offset %r15, -24
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	4152(%r15), %r14
	movq	(%r14), %r13
	movq	136(%r13), %rax
	movq	208(%rax), %rbp
	leaq	32(%rsp), %rsi
	callq	*1680(%r15)
	movq	32(%rsp), %rsi
	leaq	96(%rsp), %rdx
	leaq	40(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	decl	48(%r14)
	movl	$-1, %r12d
	testq	%rbp, %rbp
	je	.LBB36_3
# BB#1:                                 # %entry
	movq	96(%rsp), %rax
	testq	%rax, %rax
	je	.LBB36_3
# BB#2:                                 # %if.then.i
	movq	144(%rbp), %rcx
	cmpq	144(%rax), %rcx
	sete	%al
	movzbl	%al, %r12d
.LBB36_3:                               # %do.end.i
	movq	(%r13), %rax
	movq	%rax, (%r14)
	movq	$0, (%r13)
	movq	112(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB36_10
# BB#4:                                 # %do.body.7.i
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB36_9
# BB#5:                                 # %do.end.14.i
	movq	8(%rsi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 8(%rsi)
	cmpq	$2, %rax
	jne	.LBB36_6
# BB#7:                                 # %do.end.85.i
	movq	$0, 8(%rsi)
	jmp	.LBB36_8
.LBB36_6:                               # %do.end.14.i
	cmpq	$1, %rax
	jne	.LBB36_9
.LBB36_8:                               # %if.end.109.i
	movq	16(%rsi), %rdi
	movl	$.L.str.52, %edx
	callq	*24(%rsi)
	movq	112(%r13), %rax
	movq	$0, (%rax)
.LBB36_9:                               # %if.end.109.i
	movq	$0, 112(%r13)
	xorl	%esi, %esi
.LBB36_10:                              # %if.end.111.i
	cmpq	$0, 80(%r13)
	je	.LBB36_11
# BB#33:                                # %if.else.146.i
	movq	16(%r14), %rdi
	movl	64(%r13), %esi
	movl	$.L.str.53, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB36_34
# BB#35:                                # %if.end.154.i
	movslq	64(%r13), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movl	124(%r13), %eax
	testl	%eax, %eax
	je	.LBB36_36
# BB#38:                                # %if.else.173.i
	cmpl	$1, %r12d
	je	.LBB36_40
# BB#39:                                # %lor.lhs.false.i
	movl	68(%r13), %edx
	cmpl	$2, %edx
	jne	.LBB36_41
.LBB36_40:                              # %if.then.178.i
	movq	80(%r13), %rdi
	movl	52(%r13), %esi
	movl	56(%r13), %edx
	subl	44(%r13), %esi
	subl	48(%r13), %edx
	movl	60(%r13), %ecx
	movl	64(%r13), %r8d
	callq	smask_blend
	movl	52(%r13), %esi
	movl	56(%r13), %edi
	subl	48(%r13), %edi
	subl	44(%r13), %esi
	movl	60(%r13), %edx
	movq	80(%r13), %rcx
	jmp	.LBB36_37
.LBB36_11:                              # %if.then.114.i
	movzbl	24(%r13), %eax
	cmpl	$255, %eax
	je	.LBB36_12
# BB#21:                                # %if.else.128.i
	movq	8(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB36_29
# BB#22:                                # %if.then.132.i
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	jne	.LBB36_23
# BB#28:                                # %if.else.35.i.145.i
	movq	16(%r14), %rdi
	movl	$.L.str.54, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB36_29
	.align	16, 0x90
.LBB36_27:                              # %do.end.32.do.body_crit_edge.i.143.i
                                        #   in Loop: Header=BB36_23 Depth=1
	movq	(%rbp), %rsi
	movq	%rbp, %rbx
.LBB36_23:                              # %do.body.i.128.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB36_26
# BB#24:                                # %do.end.i.132.i
                                        #   in Loop: Header=BB36_23 Depth=1
	decq	8(%rsi)
	jne	.LBB36_26
# BB#25:                                # %do.end.17.i.135.i
                                        #   in Loop: Header=BB36_23 Depth=1
	movq	16(%rsi), %rdi
	movl	$.L.str.54, %edx
	callq	*24(%rsi)
	movq	$0, (%rbx)
.LBB36_26:                              # %do.end.32.i.140.i
                                        #   in Loop: Header=BB36_23 Depth=1
	movq	8(%rbx), %rbp
	movq	16(%rbx), %rdi
	movl	$.L.str.54, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	testq	%rbp, %rbp
	jne	.LBB36_27
.LBB36_29:                              # %if.end.135.i
	movq	16(%r14), %rbp
	movl	$st_pdf14_mask, %esi
	movl	$.L.str.30, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	%rax, 8(%r14)
	movq	16(%r14), %rbp
	movl	$st_pdf14_rcmask, %esi
	movl	$.L.str.32, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB36_31
# BB#30:                                # %do.body.i.154.i
	movq	$1, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	$rc_pdf14_maskbuf_free, 24(%rax)
	movq	$0, (%rax)
	movq	%rbp, 32(%rax)
	movq	%rax, %rcx
.LBB36_31:                              # %pdf14_rcmask_new.exit.i
	movq	8(%r14), %rax
	movq	%rcx, (%rax)
	movq	%r13, (%rcx)
	jmp	.LBB36_32
.LBB36_34:
	movl	$-25, %ebp
	jmp	.LBB36_58
.LBB36_36:                              # %if.then.160.i
	movl	$0, 52(%r14)
	movl	52(%r13), %esi
	movl	56(%r13), %edi
	subl	48(%r13), %edi
	subl	44(%r13), %esi
	movl	60(%r13), %edx
	movslq	64(%r13), %rcx
	addq	80(%r13), %rcx
.LBB36_37:                              # %if.end.258.i
	movq	%rbx, %r8
	callq	smask_copy
.LBB36_44:                              # %if.end.258.i
	movq	16(%r14), %rdi
	movq	80(%r13), %rsi
	movl	$.L.str.53, %edx
	callq	*24(%rdi)
	movq	%rbx, 80(%r13)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 68(%r13)
	movq	8(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB36_52
# BB#45:                                # %if.then.268.i
	movq	(%rbp), %rsi
	testq	%rsi, %rsi
	jne	.LBB36_46
# BB#51:                                # %if.else.35.i.177.i
	movq	16(%r14), %rdi
	movl	$.L.str.54, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB36_52
	.align	16, 0x90
.LBB36_50:                              # %do.end.32.do.body_crit_edge.i.175.i
                                        #   in Loop: Header=BB36_46 Depth=1
	movq	(%rbx), %rsi
	movq	%rbx, %rbp
.LBB36_46:                              # %do.body.i.160.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB36_49
# BB#47:                                # %do.end.i.164.i
                                        #   in Loop: Header=BB36_46 Depth=1
	decq	8(%rsi)
	jne	.LBB36_49
# BB#48:                                # %do.end.17.i.167.i
                                        #   in Loop: Header=BB36_46 Depth=1
	movq	16(%rsi), %rdi
	movl	$.L.str.54, %edx
	callq	*24(%rsi)
	movq	$0, (%rbp)
.LBB36_49:                              # %do.end.32.i.172.i
                                        #   in Loop: Header=BB36_46 Depth=1
	movq	8(%rbp), %rbx
	movq	16(%rbp), %rdi
	movl	$.L.str.54, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	testq	%rbx, %rbx
	jne	.LBB36_50
.LBB36_52:                              # %if.end.271.i
	movq	16(%r14), %rbp
	movl	$st_pdf14_mask, %esi
	movl	$.L.str.30, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.LBB36_53
# BB#54:                                # %if.end.279.i
	movq	16(%r14), %rbp
	movl	$st_pdf14_rcmask, %esi
	movl	$.L.str.32, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	testq	%rax, %rax
	je	.LBB36_55
# BB#56:                                # %if.end.289.i
	movq	$1, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	$rc_pdf14_maskbuf_free, 24(%rax)
	movq	%rbp, 32(%rax)
	movq	8(%r14), %rcx
	movq	%rax, (%rcx)
	movq	%r13, (%rax)
	jmp	.LBB36_57
.LBB36_53:
	movl	$-25, %ebp
	jmp	.LBB36_58
.LBB36_12:                              # %if.then.118.i
	movq	16(%r14), %rbp
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	88(%r13), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	80(%r13), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	136(%r13), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	8(%r13), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*24(%rbp)
	movq	8(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB36_32
# BB#13:                                # %if.then.123.i
	movq	(%rbp), %rsi
	testq	%rsi, %rsi
	jne	.LBB36_14
# BB#19:                                # %if.else.35.i.i
	movq	16(%r14), %rdi
	movl	$.L.str.54, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB36_20
	.align	16, 0x90
.LBB36_18:                              # %do.end.32.do.body_crit_edge.i.i
                                        #   in Loop: Header=BB36_14 Depth=1
	movq	(%rbx), %rsi
	movq	%rbx, %rbp
.LBB36_14:                              # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB36_17
# BB#15:                                # %do.end.i.i
                                        #   in Loop: Header=BB36_14 Depth=1
	decq	8(%rsi)
	jne	.LBB36_17
# BB#16:                                # %do.end.17.i.i
                                        #   in Loop: Header=BB36_14 Depth=1
	movq	16(%rsi), %rdi
	movl	$.L.str.54, %edx
	callq	*24(%rsi)
	movq	$0, (%rbp)
.LBB36_17:                              # %do.end.32.i.i
                                        #   in Loop: Header=BB36_14 Depth=1
	movq	8(%rbp), %rbx
	movq	16(%rbp), %rdi
	movl	$.L.str.54, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	testq	%rbx, %rbx
	jne	.LBB36_18
.LBB36_20:                              # %pdf14_free_mask_stack.exit.i
	movq	$0, 8(%r14)
	movl	$0, 52(%r14)
	jmp	.LBB36_57
.LBB36_32:                              # %if.end.145.i
	movl	$0, 52(%r14)
.LBB36_57:                              # %pdf14_pop_transparency_mask.exit
	xorl	%ebp, %ebp
.LBB36_58:                              # %pdf14_pop_transparency_mask.exit
	movq	4152(%r15), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB36_69
# BB#59:                                # %if.then
	movq	136(%rax), %rbx
	cmpq	$0, 160(%rbx)
	jne	.LBB36_61
# BB#60:                                # %land.lhs.true
	cmpq	$0, 184(%rbx)
	je	.LBB36_69
.LBB36_61:                              # %if.then.6
	movq	152(%rbx), %rax
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	%rax, 360(%rdi)
	movq	%r15, %rsi
	callq	gx_set_cmap_procs
	movq	160(%rbx), %rax
	movq	%rax, 1536(%r15)
	movq	184(%rbx), %rax
	movq	%rax, 1544(%r15)
	movl	8(%rbx), %eax
	movl	%eax, 104(%r15)
	movl	(%rbx), %eax
	movl	%eax, 100(%r15)
	movzbl	140(%rbx), %eax
	movw	%ax, 108(%r15)
	movl	4(%rbx), %eax
	movq	4152(%r15), %rcx
	movl	%eax, 40(%rcx)
	movups	192(%rbx), %xmm0
	movups	%xmm0, 4136(%r15)
	movl	148(%rbx), %eax
	movl	%eax, 116(%r15)
	movl	144(%rbx), %eax
	movl	%eax, 112(%r15)
	xorps	%xmm0, %xmm0
	movq	$0, 184(%rbx)
	movups	%xmm0, 152(%rbx)
	movups	168(%rbx), %xmm0
	movups	%xmm0, 1552(%r15)
	leaq	204(%r15), %rdi
	leaq	76(%rbx), %rsi
	movl	$64, %edx
	callq	memcpy
	leaq	140(%r15), %rdi
	leaq	12(%rbx), %rsi
	movl	$64, %edx
	callq	memcpy
	movq	208(%rbx), %rax
	testq	%rax, %rax
	je	.LBB36_69
# BB#62:                                # %do.body.35
	movq	1104(%r15), %rcx
	movq	(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB36_65
# BB#63:                                # %do.end.40
	decq	288(%rsi)
	jne	.LBB36_65
# BB#64:                                # %do.end.56
	movq	296(%rsi), %rdi
	movl	$.L.str.51, %edx
	callq	*304(%rsi)
	movq	1104(%r15), %rax
	movq	$0, (%rax)
	movq	208(%rbx), %rax
	movq	1104(%r15), %rcx
.LBB36_65:                              # %do.end.78
	movq	%rax, (%rcx)
	movq	208(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB36_68
# BB#66:                                # %do.end.90
	decq	288(%rsi)
	jne	.LBB36_68
# BB#67:                                # %do.end.105
	movq	296(%rsi), %rdi
	movl	$.L.str.51, %edx
	callq	*304(%rsi)
	movq	$0, 208(%rbx)
.LBB36_68:                              # %do.end.123
	movq	$0, 208(%rbx)
.LBB36_69:                              # %if.end.127
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_55:                              # %pdf14_rcmask_new.exit195.thread.i
	movq	8(%r14), %rax
	movq	$0, (%rax)
	movl	$-25, %ebp
	jmp	.LBB36_58
.LBB36_41:                              # %if.else.212.i
	cmpl	$-1, %r12d
	je	.LBB36_42
# BB#43:                                # %if.else.235.i
	movl	$0, 84(%rsp)
	movaps	.LCPI36_0(%rip), %xmm0  # xmm0 = [0,0,8,2]
	movaps	%xmm0, 64(%rsp)
	movl	$0, 80(%rsp)
	movq	96(%rsp), %rcx
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	8(%rdi), %r9
	movl	$0, (%rsp)
	leaq	64(%rsp), %r8
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	gsicc_get_link_profile
	movq	%rax, %rbp
	movl	52(%r13), %edx
	movl	56(%r13), %esi
	subl	48(%r13), %esi
	subl	44(%r13), %edx
	movl	68(%r13), %ecx
	movl	60(%r13), %r8d
	movl	64(%r13), %r9d
	movq	80(%r13), %rax
	movq	%rbp, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	callq	smask_icc
	movq	%rbp, %rdi
	callq	gsicc_release_link
	jmp	.LBB36_44
.LBB36_42:                              # %if.then.215.i
	movl	52(%r13), %esi
	movl	56(%r13), %edi
	subl	48(%r13), %edi
	subl	44(%r13), %esi
	movl	60(%r13), %ecx
	movl	64(%r13), %r8d
	movq	80(%r13), %r9
	movl	40(%r14), %ebp
	movl	%eax, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movq	%rbx, (%rsp)
	callq	smask_luminosity_mapping
	jmp	.LBB36_44
.Lfunc_end36:
	.size	pdf14_end_transparency_mask, .Lfunc_end36-pdf14_end_transparency_mask
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_discard_trans_layer,@function
pdf14_discard_trans_layer:              # @pdf14_discard_trans_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp302:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp303:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp304:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp305:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp306:
	.cfi_def_cfa_offset 48
.Ltmp307:
	.cfi_offset %rbx, -40
.Ltmp308:
	.cfi_offset %r12, -32
.Ltmp309:
	.cfi_offset %r14, -24
.Ltmp310:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	movq	4152(%r12), %r14
	movq	4160(%r12), %rax
	movq	5016(%r12), %r15
	testq	%rax, %rax
	je	.LBB37_2
# BB#1:                                 # %if.then
	movl	$1, 8(%rax)
	movq	%rsi, %rdi
	movq	%r12, %rsi
	callq	pdf14_decrement_smask_color
	movq	$0, 4160(%r12)
.LBB37_2:                               # %if.end
	testq	%r15, %r15
	jne	.LBB37_3
	jmp	.LBB37_9
	.align	16, 0x90
.LBB37_7:                               # %pdf14_pop_parent_color.exit
                                        #   in Loop: Header=BB37_3 Depth=1
	movq	216(%rbx), %rax
	movq	%rax, 5016(%r12)
	movq	24(%r12), %rdi
	movl	$.L.str.57, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB37_3:                               # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 216(%r15)
	je	.LBB37_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB37_3 Depth=1
	movq	5016(%r12), %rbx
	movq	208(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB37_7
# BB#5:                                 # %do.end.7.i
                                        #   in Loop: Header=BB37_3 Depth=1
	decq	288(%rsi)
	jne	.LBB37_7
# BB#6:                                 # %do.end.19.i
                                        #   in Loop: Header=BB37_3 Depth=1
	movq	296(%rsi), %rdi
	movl	$.L.str.56, %edx
	callq	*304(%rsi)
	movq	$0, 208(%rbx)
	jmp	.LBB37_7
.LBB37_8:                               # %while.end
	movq	24(%r12), %rdi
	movl	$.L.str.55, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	$0, 5016(%r12)
.LBB37_9:                               # %if.end.9
	testq	%r14, %r14
	je	.LBB37_24
# BB#10:                                # %if.then.11
	movq	8(%r14), %r15
	testq	%r15, %r15
	je	.LBB37_19
# BB#11:                                # %if.then.14
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	jne	.LBB37_12
# BB#17:                                # %if.else.35.i
	movq	16(%r14), %rdi
	movl	$.L.str.54, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	jmp	.LBB37_18
	.align	16, 0x90
.LBB37_16:                              # %do.end.32.do.body_crit_edge.i
                                        #   in Loop: Header=BB37_12 Depth=1
	movq	(%rbx), %rsi
	movq	%rbx, %r15
.LBB37_12:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	je	.LBB37_15
# BB#13:                                # %do.end.i
                                        #   in Loop: Header=BB37_12 Depth=1
	decq	8(%rsi)
	jne	.LBB37_15
# BB#14:                                # %do.end.17.i
                                        #   in Loop: Header=BB37_12 Depth=1
	movq	16(%rsi), %rdi
	movl	$.L.str.54, %edx
	callq	*24(%rsi)
	movq	$0, (%r15)
.LBB37_15:                              # %do.end.32.i
                                        #   in Loop: Header=BB37_12 Depth=1
	movq	8(%r15), %rbx
	movq	16(%r15), %rdi
	movl	$.L.str.54, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	testq	%rbx, %rbx
	jne	.LBB37_16
.LBB37_18:                              # %pdf14_free_mask_stack.exit
	movq	8(%r14), %rsi
	movq	16(%r14), %rdi
	movl	$.L.str.55, %edx
	callq	*24(%rdi)
	movq	$0, 8(%r14)
.LBB37_19:                              # %if.end.23
	movq	(%r14), %r12
	testq	%r12, %r12
	je	.LBB37_23
	.align	16, 0x90
.LBB37_20:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_21 Depth 2
	movq	(%r12), %r15
	movq	88(%r12), %rsi
	movq	16(%r14), %rdi
	movl	$.L.str.55, %edx
	callq	*24(%rdi)
	movq	16(%r14), %rdi
	movq	80(%r12), %rsi
	movl	$.L.str.55, %edx
	callq	*24(%rdi)
	movq	16(%r14), %rdi
	movq	8(%r12), %rsi
	movl	$.L.str.55, %edx
	callq	*24(%rdi)
	movq	16(%r14), %rdi
	movq	112(%r12), %rsi
	movl	$.L.str.55, %edx
	callq	*24(%rdi)
	movq	136(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB37_22
	.align	16, 0x90
.LBB37_21:                              # %for.body.44
                                        #   Parent Loop BB37_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	216(%rsi), %rbx
	movq	16(%r14), %rdi
	movl	$.L.str.55, %edx
	callq	*24(%rdi)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB37_21
.LBB37_22:                              # %for.end
                                        #   in Loop: Header=BB37_20 Depth=1
	movq	16(%r14), %rdi
	movl	$.L.str.55, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	testq	%r15, %r15
	movq	%r15, %r12
	jne	.LBB37_20
.LBB37_23:                              # %for.end.55
	movq	16(%r14), %rdi
	movl	$.L.str.55, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
.LBB37_24:                              # %if.end.60
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end37:
	.size	pdf14_discard_trans_layer, .Lfunc_end37-pdf14_discard_trans_layer
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_fill_rectangle_hl_color,@function
pdf14_fill_rectangle_hl_color:          # @pdf14_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp311:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp312:
	.cfi_def_cfa_offset 32
.Ltmp313:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	4152(%rdi), %rdx
	movq	(%rdx), %r9
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	%edx, %ebx
	orl	%esi, %ebx
	sarl	$8, %esi
	sarl	$8, %edx
	movl	8(%rax), %r8d
	sarl	$8, %r8d
	movl	%r8d, %r10d
	subl	%esi, %r10d
	movl	12(%rax), %eax
	sarl	$8, %eax
	movl	%eax, %r11d
	subl	%edx, %r11d
	sarl	$8, %ebx
	jns	.LBB38_2
# BB#1:                                 # %if.then
	xorl	%ebx, %ebx
	testl	%esi, %esi
	cmovsl	%ebx, %esi
	cmovsl	%r8d, %r10d
	testl	%edx, %edx
	cmovsl	%ebx, %edx
	cmovsl	%eax, %r11d
.LBB38_2:                               # %do.body.19
	movl	832(%rdi), %eax
	movl	836(%rdi), %r8d
	subl	%esi, %eax
	cmpl	%eax, %r10d
	cmovlel	%r10d, %eax
	subl	%edx, %r8d
	cmpl	%r8d, %r11d
	cmovlel	%r11d, %r8d
	testl	%eax, %eax
	jle	.LBB38_7
# BB#3:                                 # %do.body.19
	testl	%r8d, %r8d
	jle	.LBB38_7
# BB#4:                                 # %if.end.42
	cmpl	$0, 20(%r9)
	je	.LBB38_6
# BB#5:                                 # %if.then.43
	movq	%rcx, (%rsp)
	movl	$1, 8(%rsp)
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	callq	pdf14_mark_fill_rectangle_ko_simple
	jmp	.LBB38_7
.LBB38_6:                               # %if.else
	movq	%rcx, (%rsp)
	movl	$1, 8(%rsp)
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	callq	pdf14_mark_fill_rectangle
.LBB38_7:                               # %cleanup
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end38:
	.size	pdf14_fill_rectangle_hl_color, .Lfunc_end38-pdf14_fill_rectangle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_ret_devn_params,@function
pdf14_ret_devn_params:                  # @pdf14_ret_devn_params
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	1736(%rdi), %rax
	retq
.Lfunc_end39:
	.size	pdf14_ret_devn_params, .Lfunc_end39-pdf14_ret_devn_params
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_push_transparency_state,@function
pdf14_push_transparency_state:          # @pdf14_push_transparency_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp314:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp315:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp316:
	.cfi_def_cfa_offset 32
.Ltmp317:
	.cfi_offset %rbx, -24
.Ltmp318:
	.cfi_offset %r14, -16
	movq	4152(%rdi), %rbx
	cmpq	$0, 8(%rbx)
	je	.LBB40_4
# BB#1:                                 # %if.then
	movq	16(%rbx), %r14
	movl	$st_pdf14_mask, %esi
	movl	$.L.str.30, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%r14, 16(%rax)
	movq	8(%rbx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	testq	%rdx, %rdx
	je	.LBB40_3
# BB#2:                                 # %do.body.7
	incq	8(%rdx)
.LBB40_3:                               # %do.end.15
	movq	%rcx, 8(%rax)
	movq	%rax, 8(%rbx)
.LBB40_4:                               # %if.end.18
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end40:
	.size	pdf14_push_transparency_state, .Lfunc_end40-pdf14_push_transparency_state
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_pop_transparency_state,@function
pdf14_pop_transparency_state:           # @pdf14_pop_transparency_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp319:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp320:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp321:
	.cfi_def_cfa_offset 32
.Ltmp322:
	.cfi_offset %rbx, -24
.Ltmp323:
	.cfi_offset %r14, -16
	movq	4152(%rdi), %r14
	movq	8(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB41_8
# BB#1:                                 # %if.then
	movq	8(%rbx), %rax
	movq	%rax, 8(%r14)
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB41_4
# BB#2:                                 # %do.end.13
	decq	8(%rsi)
	jne	.LBB41_4
# BB#3:                                 # %do.end.25
	movq	16(%rsi), %rdi
	movl	$.L.str.58, %edx
	callq	*24(%rsi)
	movq	$0, (%rbx)
.LBB41_4:                               # %if.end.40
	movq	16(%rbx), %rdi
	movl	$.L.str.58, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	cmpl	$0, 48(%r14)
	jle	.LBB41_8
# BB#5:                                 # %if.then.44
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB41_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, 112(%rax)
	je	.LBB41_8
# BB#7:                                 # %if.then.49
	movq	8(%r14), %rcx
	movq	%rcx, 112(%rax)
.LBB41_8:                               # %if.end.55
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end41:
	.size	pdf14_pop_transparency_state, .Lfunc_end41-pdf14_pop_transparency_state
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_dev_spec_op,@function
pdf14_dev_spec_op:                      # @pdf14_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp324:
	.cfi_def_cfa_offset 16
	leal	-6(%rsi), %r8d
	cmpl	$5, %r8d
	ja	.LBB42_10
# BB#1:                                 # %entry
	movl	$1, %eax
	jmpq	*.LJTI42_0(,%r8,8)
.LBB42_2:                               # %if.then.2
	testq	%rdx, %rdx
	je	.LBB42_9
# BB#3:                                 # %if.then.2
	cmpl	$8, %ecx
	jne	.LBB42_9
# BB#4:                                 # %if.then.6
	movq	%rdi, (%rdx)
	popq	%rdx
	retq
.LBB42_5:                               # %if.then.11
	cmpq	%rdi, (%rdx)
	je	.LBB42_6
.LBB42_10:                              # %if.end.28
	popq	%rax
	jmp	gx_default_dev_spec_op  # TAILCALL
.LBB42_7:                               # %if.then.22
	leaq	(%rsp), %rsi
	callq	*1680(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB42_9
# BB#8:                                 # %if.then.25
	movq	(%rsp), %rax
	movl	168(%rax), %eax
.LBB42_9:                               # %return
	popq	%rdx
	retq
.LBB42_6:                               # %if.then.14
	movq	1728(%rdi), %rcx
	movq	%rcx, (%rdx)
	popq	%rdx
	retq
.Lfunc_end42:
	.size	pdf14_dev_spec_op, .Lfunc_end42-pdf14_dev_spec_op
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI42_0:
	.quad	.LBB42_9
	.quad	.LBB42_10
	.quad	.LBB42_10
	.quad	.LBB42_2
	.quad	.LBB42_5
	.quad	.LBB42_7

	.text
	.align	16, 0x90
	.type	pdf14_copy_planes,@function
pdf14_copy_planes:                      # @pdf14_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp325:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp326:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp327:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp328:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp329:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp330:
	.cfi_def_cfa_offset 56
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp331:
	.cfi_def_cfa_offset 816
.Ltmp332:
	.cfi_offset %rbx, -56
.Ltmp333:
	.cfi_offset %r12, -48
.Ltmp334:
	.cfi_offset %r13, -40
.Ltmp335:
	.cfi_offset %r14, -32
.Ltmp336:
	.cfi_offset %r15, -24
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	832(%rsp), %r8d
	movl	824(%rsp), %esi
	movl	816(%rsp), %eax
	movq	4152(%rdi), %rbp
	movq	(%rbp), %rbp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	100(%rdi), %r12d
	movq	%rdi, %rbx
	movl	%eax, %edi
	orl	%r9d, %edi
	jns	.LBB43_2
# BB#1:                                 # %if.then
	movl	%r9d, %edi
	sarl	$31, %edi
	andl	%r9d, %edi
	addl	%edi, %esi
	xorl	%edi, %edi
	testl	%r9d, %r9d
	cmovsl	%edi, %r9d
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	addl	%ebp, %r8d
	testl	%eax, %eax
	cmovsl	%edi, %eax
.LBB43_2:                               # %do.body.9
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movl	832(%rbx), %ebp
	movl	836(%rbx), %edi
	subl	%r9d, %ebp
	cmpl	%ebp, %esi
	cmovlel	%esi, %ebp
	movl	%ebp, 100(%rsp)         # 4-byte Spill
	subl	%eax, %edi
	cmpl	%edi, %r8d
	cmovlel	%r8d, %edi
	testl	%ebp, %ebp
	jle	.LBB43_19
# BB#3:                                 # %do.body.9
	testl	%edi, %edi
	jle	.LBB43_19
# BB#4:                                 # %if.end.31
	movq	$gx_dc_type_data_devn, 104(%rsp)
	jle	.LBB43_19
# BB#5:                                 # %for.body.lr.ph
	movslq	%edx, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movslq	%edi, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%r12d, %eax
	andl	$1, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	840(%rsp), %eax
	imull	%ecx, %eax
	movslq	%eax, %r15
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	56(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB43_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_8 Depth 2
                                        #       Child Loop BB43_13 Depth 3
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jle	.LBB43_18
# BB#7:                                 # %for.cond.36.preheader.lr.ph
                                        #   in Loop: Header=BB43_6 Depth=1
	addq	24(%rsp), %r13          # 8-byte Folded Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %r14d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB43_8:                               # %for.cond.36.preheader
                                        #   Parent Loop BB43_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB43_13 Depth 3
	testl	%r12d, %r12d
	jle	.LBB43_14
# BB#9:                                 # %for.body.38.preheader
                                        #   in Loop: Header=BB43_8 Depth=2
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	movl	$0, %esi
	je	.LBB43_11
# BB#10:                                # %for.body.38.prol
                                        #   in Loop: Header=BB43_8 Depth=2
	movzbl	(%r13), %eax
	shll	$8, %eax
	movw	%ax, 112(%rsp)
	movl	$1, %esi
.LBB43_11:                              # %for.body.38.preheader.split
                                        #   in Loop: Header=BB43_8 Depth=2
	cmpl	$1, %r12d
	je	.LBB43_14
# BB#12:                                # %for.body.38.preheader.split.split
                                        #   in Loop: Header=BB43_8 Depth=2
	movl	%r12d, %eax
	subl	%esi, %eax
	movq	%r15, %rcx
	imulq	%rsi, %rcx
	leaq	(%rcx,%r13), %rcx
	leaq	114(%rsp), %rdx
	leaq	(%rdx,%rsi,2), %rdx
	incq	%rsi
	imulq	%r15, %rsi
	leaq	(%rsi,%r13), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB43_13:                              # %for.body.38
                                        #   Parent Loop BB43_6 Depth=1
                                        #     Parent Loop BB43_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rcx,%rdi,2), %ebp
	shll	$8, %ebp
	movw	%bp, -2(%rdx)
	movzbl	(%rsi,%rdi,2), %ebp
	shll	$8, %ebp
	movw	%bp, (%rdx)
	addq	%r15, %rdi
	addq	$4, %rdx
	addl	$-2, %eax
	jne	.LBB43_13
.LBB43_14:                              # %for.end
                                        #   in Loop: Header=BB43_8 Depth=2
	leal	(%rbx,%r9), %esi
	movq	88(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 20(%rax)
	je	.LBB43_16
# BB#15:                                # %if.then.43
                                        #   in Loop: Header=BB43_8 Depth=2
	movq	%r9, %rbp
	leaq	104(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %edx
	callq	pdf14_mark_fill_rectangle_ko_simple
	jmp	.LBB43_17
	.align	16, 0x90
.LBB43_16:                              # %if.else
                                        #   in Loop: Header=BB43_8 Depth=2
	movq	%r9, %rbp
	leaq	104(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movl	$1, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %edx
	callq	pdf14_mark_fill_rectangle
.LBB43_17:                              # %if.end.53
                                        #   in Loop: Header=BB43_8 Depth=2
	incq	%r13
	incl	%ebx
	cmpl	100(%rsp), %ebx         # 4-byte Folded Reload
	movq	%rbp, %r9
	jl	.LBB43_8
.LBB43_18:                              # %for.end.56
                                        #   in Loop: Header=BB43_6 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdx
	imulq	48(%rsp), %rax          # 8-byte Folded Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r13
	incq	%rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	cmpq	40(%rsp), %rdx          # 8-byte Folded Reload
	jl	.LBB43_6
.LBB43_19:                              # %cleanup
	xorl	%eax, %eax
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	pdf14_copy_planes, .Lfunc_end43-pdf14_copy_planes
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_copy_alpha_hl_color,@function
pdf14_copy_alpha_hl_color:              # @pdf14_copy_alpha_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp338:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp339:
	.cfi_def_cfa_offset 64
.Ltmp340:
	.cfi_offset %rbx, -16
	movl	64(%rsp), %r10d
	movl	72(%rsp), %r8d
	movl	80(%rsp), %r11d
	movq	88(%rsp), %rax
	movl	96(%rsp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$1, 40(%rsp)
	movq	$0, 16(%rsp)
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	pdf14_copy_alpha_color
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end44:
	.size	pdf14_copy_alpha_hl_color, .Lfunc_end44-pdf14_copy_alpha_hl_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI45_0:
	.quad	4751297606873776128     # double 4294967295
	.text
	.align	16, 0x90
	.type	pdf14_buf_new,@function
pdf14_buf_new:                          # @pdf14_buf_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp341:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp342:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp343:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp344:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp345:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp346:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp347:
	.cfi_def_cfa_offset 96
.Ltmp348:
	.cfi_offset %rbx, -56
.Ltmp349:
	.cfi_offset %r12, -48
.Ltmp350:
	.cfi_offset %r13, -40
.Ltmp351:
	.cfi_offset %r14, -32
.Ltmp352:
	.cfi_offset %r15, -24
.Ltmp353:
	.cfi_offset %rbp, -16
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	8(%rdi), %r15d
	movl	12(%rdi), %r10d
	addl	$3, %r15d
	subl	(%rdi), %r15d
	andl	$-4, %r15d
	subl	4(%rdi), %r10d
	cmpl	$1, %ecx
	movl	%r9d, %ebx
	sbbl	$-1, %ebx
	testl	%edx, %edx
	setne	%al
	movzbl	%al, %eax
	leal	(%rax,%rbx), %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	testl	%esi, %esi
	setne	%al
	movzbl	%al, %eax
	leal	(%rax,%rdi), %eax
	cvtsi2sdl	%r15d, %xmm0
	cvtsi2sdl	%r10d, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	xorl	%ebp, %ebp
	ucomisd	.LCPI45_0(%rip), %xmm0
	ja	.LBB45_11
# BB#1:                                 # %if.end
	movq	96(%rsp), %r12
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	$st_pdf14_buf, %esi
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	movq	%rbx, (%rsp)            # 8-byte Spill
	movl	%r8d, %r13d
	movl	%r9d, %ebp
	movl	%r10d, %ebx
	movl	%ecx, %r14d
	callq	*72(%r12)
	movl	%r14d, %esi
	movl	%ebx, %r14d
	movl	%ebp, %r10d
	movl	%r13d, %r9d
	movl	24(%rsp), %edx          # 4-byte Reload
	movl	12(%rsp), %ebx          # 4-byte Reload
	movl	28(%rsp), %ecx          # 4-byte Reload
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB45_11
# BB#2:                                 # %if.end.20
	movq	$0, 8(%rbp)
	movq	$0, (%rbp)
	movl	$0, 16(%rbp)
	movl	$0, 20(%rbp)
	movl	%edx, 32(%rbp)
	movl	%esi, 36(%rbp)
	movl	%ecx, 40(%rbp)
	movq	32(%rsp), %r13          # 8-byte Reload
	movupd	(%r13), %xmm0
	movupd	%xmm0, 44(%rbp)
	movl	%r10d, 68(%rbp)
	movl	%ebx, 72(%rbp)
	movl	%r15d, 60(%rbp)
	movq	$0, 88(%rbp)
	movq	$0, 112(%rbp)
	movl	%r9d, 120(%rbp)
	movl	$0, 128(%rbp)
	movl	$st_pdf14_clr, %esi
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, 136(%rbp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 152(%rax)
	movq	$0, 184(%rax)
	movq	$0, 208(%rax)
	movq	$0, 216(%rax)
	movupd	%xmm0, 168(%rax)
	testl	%r14d, %r14d
	jle	.LBB45_3
# BB#4:                                 # %if.else
	imull	%r14d, %r15d
	movl	%r15d, 64(%rbp)
	imull	%r15d, %ebx
	movl	$.L.str.26, %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	*64(%r12)
	movq	%rax, 80(%rbp)
	testq	%rax, %rax
	je	.LBB45_5
# BB#6:                                 # %if.end.54
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB45_8
# BB#7:                                 # %if.then.56
	movq	(%rsp), %rbx            # 8-byte Reload
	imull	%r15d, %ebx
	movslq	%ebx, %rcx
	addq	%rcx, %rax
	movslq	%r15d, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB45_8:                               # %if.end.64
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB45_10
# BB#9:                                 # %if.then.66
	movq	16(%rsp), %rax          # 8-byte Reload
	imull	%r15d, %eax
	movslq	%eax, %rdi
	addq	80(%rbp), %rdi
	movslq	%r15d, %rdx
	movl	$8, %esi
	callq	memset
	jmp	.LBB45_10
.LBB45_3:                               # %if.then.41
	movl	$0, 64(%rbp)
	movq	$0, 80(%rbp)
.LBB45_10:                              # %if.end.80
	movl	8(%r13), %eax
	movl	%eax, 96(%rbp)
	movl	12(%r13), %eax
	movl	%eax, 100(%rbp)
	movl	(%r13), %eax
	movl	%eax, 104(%rbp)
	movl	4(%r13), %eax
	movl	%eax, 108(%rbp)
	jmp	.LBB45_11
.LBB45_5:                               # %if.then.52
	movl	$.L.str.27, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*24(%r12)
	xorl	%ebp, %ebp
.LBB45_11:                              # %cleanup
	movq	%rbp, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	pdf14_buf_new, .Lfunc_end45-pdf14_buf_new
	.cfi_endproc

	.align	16, 0x90
	.type	rc_pdf14_maskbuf_free,@function
rc_pdf14_maskbuf_free:                  # @rc_pdf14_maskbuf_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp354:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp355:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp356:
	.cfi_def_cfa_offset 32
.Ltmp357:
	.cfi_offset %rbx, -32
.Ltmp358:
	.cfi_offset %r14, -24
.Ltmp359:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB46_2
# BB#1:                                 # %if.then
	movq	112(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	88(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	80(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	136(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	8(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
.LBB46_2:                               # %if.end
	movq	24(%rbx), %rax
	movl	$.L.str.34, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end46:
	.size	rc_pdf14_maskbuf_free, .Lfunc_end46-rc_pdf14_maskbuf_free
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_ctx_free,@function
pdf14_ctx_free:                         # @pdf14_ctx_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp360:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp361:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp362:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp363:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp364:
	.cfi_def_cfa_offset 48
.Ltmp365:
	.cfi_offset %rbx, -40
.Ltmp366:
	.cfi_offset %r12, -32
.Ltmp367:
	.cfi_offset %r14, -24
.Ltmp368:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB47_5
# BB#1:                                 # %do.body
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB47_4
# BB#2:                                 # %do.end
	decq	8(%rax)
	jne	.LBB47_4
# BB#3:                                 # %do.end.19
	movq	16(%rax), %rdi
	movl	$.L.str.36, %edx
	movq	%rax, %rsi
	callq	*24(%rax)
	movq	8(%r14), %rsi
	movq	$0, (%rsi)
.LBB47_4:                               # %do.end.37
	movq	16(%r14), %rdi
	movl	$.L.str.36, %edx
	callq	*24(%rdi)
.LBB47_5:                               # %if.end.41
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB47_7
	.align	16, 0x90
.LBB47_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r12
	movq	112(%r15), %rsi
	movq	16(%r14), %rbx
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	88(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	80(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	136(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	8(%r15), %rsi
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movl	$.L.str.35, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	testq	%r12, %r12
	movq	%r12, %r15
	jne	.LBB47_6
.LBB47_7:                               # %for.end
	movq	16(%r14), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.36, %edx
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end47:
	.size	pdf14_ctx_free, .Lfunc_end47-pdf14_ctx_free
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI48_0:
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
.LCPI48_1:
	.quad	255                     # 0xff
	.quad	255                     # 0xff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI48_2:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pdf14_mark_fill_rectangle_ko_simple,@function
pdf14_mark_fill_rectangle_ko_simple:    # @pdf14_mark_fill_rectangle_ko_simple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp370:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp371:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp372:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp373:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp374:
	.cfi_def_cfa_offset 56
	subq	$520, %rsp              # imm = 0x208
.Ltmp375:
	.cfi_def_cfa_offset 576
.Ltmp376:
	.cfi_offset %rbx, -56
.Ltmp377:
	.cfi_offset %r12, -48
.Ltmp378:
	.cfi_offset %r13, -40
.Ltmp379:
	.cfi_offset %r14, -32
.Ltmp380:
	.cfi_offset %r15, -24
.Ltmp381:
	.cfi_offset %rbp, -16
	movl	%edx, 360(%rsp)         # 4-byte Spill
	movl	%esi, 336(%rsp)         # 4-byte Spill
	movq	%rdi, %r15
	movq	4152(%r15), %rax
	movq	(%rax), %rdx
	movslq	64(%rdx), %rdi
	movq	%rdi, 224(%rsp)         # 8-byte Spill
	movl	32(%rdx), %r12d
	movl	36(%rdx), %ebp
	movl	%ebp, 196(%rsp)         # 4-byte Spill
	testl	%ebp, %ebp
	movl	%edi, %esi
	cmovel	%ebp, %esi
	testl	%r12d, %r12d
	movl	%edi, %ebx
	cmovel	%r12d, %ebx
	cmpq	$0, 80(%rdx)
	je	.LBB48_116
# BB#1:                                 # %if.end
	movl	584(%rsp), %r10d
	movslq	60(%rdx), %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movl	68(%rdx), %r14d
	leal	-1(%r14), %r13d
	movl	40(%rdx), %ebp
	movl	%ebp, 192(%rsp)         # 4-byte Spill
	movl	40(%rax), %eax
	movl	$-129, %ebp
	andl	1112(%r15), %ebp
	movl	%ebp, 284(%rsp)         # 4-byte Spill
	testl	%r10d, %r10d
	je	.LBB48_22
# BB#2:                                 # %if.then.21
	movq	576(%rsp), %r10
	testl	%eax, %eax
	je	.LBB48_14
# BB#3:                                 # %for.cond.preheader
	movq	%rbx, 272(%rsp)         # 8-byte Spill
	movq	%r9, 296(%rsp)          # 8-byte Spill
	movl	%ecx, 304(%rsp)         # 4-byte Spill
	movl	%r8d, 312(%rsp)         # 4-byte Spill
	movl	%eax, 356(%rsp)         # 4-byte Spill
	movq	%rsi, 344(%rsp)         # 8-byte Spill
	movq	%rdx, 328(%rsp)         # 8-byte Spill
	cmpl	$2, %r14d
	jl	.LBB48_23
# BB#4:                                 # %for.body.lr.ph
	leal	-2(%r14), %edi
	leaq	1(%rdi), %rcx
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	leaq	16(%rax), %rax
	xorl	%esi, %esi
	movq	%rcx, %rdx
	andq	%rax, %rdx
	je	.LBB48_11
# BB#5:                                 # %vector.body.preheader
	leaq	1(%rdi), %rsi
	andq	%rax, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rax
	shrq	$4, %rax
	xorl	%ebp, %ebp
	btq	$4, %rsi
	jb	.LBB48_7
# BB#6:                                 # %vector.body.prol
	movdqu	8(%r10), %xmm0
	movdqu	24(%r10), %xmm1
	psrlw	$8, %xmm0
	psrlw	$8, %xmm1
	movdqa	.LCPI48_0(%rip), %xmm2  # xmm2 = [255,255,255,255,255,255,255,255]
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	movq	%xmm0, 448(%rsp)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, 456(%rsp)
	movl	$16, %ebp
.LBB48_7:                               # %vector.body.preheader.split
	testq	%rax, %rax
	je	.LBB48_10
# BB#8:                                 # %vector.body.preheader.split.split
	incq	%rdi
	movabsq	$8589934576, %rsi       # imm = 0x1FFFFFFF0
	andq	%rdi, %rsi
	subq	%rbp, %rsi
	leaq	56(%r10,%rbp,2), %rdi
	leaq	448(%rsp), %rax
	leaq	24(%rbp,%rax), %rbp
	movdqa	.LCPI48_0(%rip), %xmm0  # xmm0 = [255,255,255,255,255,255,255,255]
	.align	16, 0x90
.LBB48_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdi), %xmm1
	movdqu	-32(%rdi), %xmm2
	psrlw	$8, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, -24(%rbp)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	movq	%xmm2, -16(%rbp)
	movdqu	-16(%rdi), %xmm1
	movdqu	(%rdi), %xmm2
	psrlw	$8, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, -8(%rbp)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	movq	%xmm2, (%rbp)
	addq	$64, %rdi
	addq	$32, %rbp
	addq	$-32, %rsi
	jne	.LBB48_9
.LBB48_10:
	movq	%rdx, %rsi
.LBB48_11:                              # %middle.block
	cmpq	%rsi, %rcx
	je	.LBB48_23
# BB#12:                                # %for.body.preheader
	leaq	8(%r10,%rsi,2), %rax
	leaq	448(%rsp,%rsi), %rcx
	movl	%r13d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB48_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rax), %bl
	movb	%bl, (%rcx)
	addq	$2, %rax
	incq	%rcx
	decl	%edx
	jne	.LBB48_13
	jmp	.LBB48_23
.LBB48_22:                              # %if.else.52
	movq	%rbx, 272(%rsp)         # 8-byte Spill
	movl	%ecx, 304(%rsp)         # 4-byte Spill
	movl	%r8d, 312(%rsp)         # 4-byte Spill
	movl	%eax, 356(%rsp)         # 4-byte Spill
	movq	%rsi, 344(%rsp)         # 8-byte Spill
	movq	%rdx, 328(%rsp)         # 8-byte Spill
	movq	4136(%r15), %rax
	leaq	448(%rsp), %rcx
	movl	%r13d, %edi
	movq	%r9, %rsi
	movq	%r9, 296(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	callq	*(%rax)
	jmp	.LBB48_23
.LBB48_14:                              # %for.cond.31.preheader
	movq	%rbx, 272(%rsp)         # 8-byte Spill
	movq	%r9, 296(%rsp)          # 8-byte Spill
	movl	%ecx, 304(%rsp)         # 4-byte Spill
	movl	%r8d, 312(%rsp)         # 4-byte Spill
	movl	%eax, 356(%rsp)         # 4-byte Spill
	movq	%rsi, 344(%rsp)         # 8-byte Spill
	movq	%rdx, 328(%rsp)         # 8-byte Spill
	cmpl	$2, %r14d
	jl	.LBB48_23
# BB#15:                                # %for.body.34.lr.ph
	leal	-2(%r14), %eax
	leaq	1(%rax), %rcx
	movabsq	$8589934560, %rdx       # imm = 0x1FFFFFFE0
	leaq	28(%rdx), %rdx
	xorl	%esi, %esi
	andq	%rcx, %rdx
	je	.LBB48_19
# BB#16:                                # %vector.body62.preheader
	leaq	12(%r10), %rsi
	leaq	450(%rsp), %rdi
	incq	%rax
	movabsq	$8589934588, %rbp       # imm = 0x1FFFFFFFC
	andq	%rax, %rbp
	pxor	%xmm0, %xmm0
	movdqa	.LCPI48_1(%rip), %xmm1  # xmm1 = [255,255]
	.align	16, 0x90
.LBB48_17:                              # %vector.body62
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	psrlq	$8, %xmm3
	psrlq	$8, %xmm2
	pxor	%xmm1, %xmm3
	pxor	%xmm1, %xmm2
	pand	%xmm1, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, %eax
	movw	%ax, -2(%rdi)
	pand	%xmm1, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, %eax
	movw	%ax, (%rdi)
	addq	$8, %rsi
	addq	$4, %rdi
	addq	$-4, %rbp
	jne	.LBB48_17
# BB#18:
	movq	%rdx, %rsi
.LBB48_19:                              # %middle.block63
	cmpq	%rsi, %rcx
	je	.LBB48_23
# BB#20:                                # %for.body.34.preheader
	leaq	8(%r10,%rsi,2), %rax
	leaq	448(%rsp,%rsi), %rcx
	movl	%r13d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB48_21:                              # %for.body.34
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	shrl	$8, %esi
	notl	%esi
	movb	%sil, (%rcx)
	addq	$2, %rax
	incq	%rcx
	decl	%edx
	jne	.LBB48_21
.LBB48_23:                              # %if.end.53
	movl	%r14d, %ebp
	movq	224(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ebp
	movss	4176(%r15), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI48_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI48_3(%rip), %xmm0
	callq	floor
	movq	%r15, %rcx
	cvttsd2si	%xmm0, %r15d
	movslq	%r13d, %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movb	%r15b, 448(%rsp,%rax)
	movl	$255, 220(%rsp)         # 4-byte Folded Spill
	movl	$0, 292(%rsp)           # 4-byte Folded Spill
	cmpl	$0, 196(%rsp)           # 4-byte Folded Reload
	movl	$0, 288(%rsp)           # 4-byte Folded Spill
	je	.LBB48_25
# BB#24:                                # %if.then.61
	movss	4172(%rcx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI48_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI48_3(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	notb	%al
	movzbl	%al, %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
	movl	%ebp, 288(%rsp)         # 4-byte Spill
.LBB48_25:                              # %if.end.69
	movq	344(%rsp), %r10         # 8-byte Reload
	addl	%ebp, %r10d
	cmpl	$0, 192(%rsp)           # 4-byte Folded Reload
	je	.LBB48_27
# BB#26:                                # %if.then.71
	movq	272(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r10), %eax
	movl	%eax, 292(%rsp)         # 4-byte Spill
	leal	(,%r13,8), %ecx
	movq	296(%rsp), %rax         # 8-byte Reload
	shrq	%cl, %rax
	movzbl	%al, %eax
	movl	%eax, 284(%rsp)         # 4-byte Spill
.LBB48_27:                              # %if.end.77
	testl	%r12d, %r12d
	cmovel	%r12d, %r10d
	movq	328(%rsp), %r9          # 8-byte Reload
	movl	44(%r9), %r8d
	movl	48(%r9), %r12d
	xorl	%esi, %esi
	movl	336(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edi
	subl	%r8d, %edi
	cmovgel	%esi, %edi
	movl	%eax, %edx
	cmovlel	%r8d, %edx
	addl	304(%rsp), %edi         # 4-byte Folded Reload
	movl	360(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebp
	subl	%r12d, %ebp
	cmovgel	%esi, %ebp
	movl	%eax, %esi
	cmovlel	%r12d, %esi
	addl	312(%rsp), %ebp         # 4-byte Folded Reload
	leal	(%rdi,%rdx), %ebx
	movl	52(%r9), %eax
	movl	%eax, %ecx
	subl	%edx, %ecx
	cmpl	%eax, %ebx
	cmovlel	%edi, %ecx
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	leal	(%rbp,%rsi), %eax
	movl	56(%r9), %edi
	movl	%edi, %ecx
	subl	%esi, %ecx
	cmpl	%edi, %eax
	cmovlel	%ebp, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	cmpl	96(%r9), %edx
	movq	%r14, %r11
	jge	.LBB48_29
# BB#28:                                # %if.then.142
	movl	%edx, 96(%r9)
.LBB48_29:                              # %if.end.146
	cmpl	100(%r9), %esi
	jge	.LBB48_31
# BB#30:                                # %if.then.152
	movl	%esi, 100(%r9)
.LBB48_31:                              # %if.end.156
	movq	312(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rdx), %edi
	cmpl	104(%r9), %edi
	jle	.LBB48_33
# BB#32:                                # %if.then.163
	movl	%edi, 104(%r9)
.LBB48_33:                              # %if.end.168
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rsi), %edi
	cmpl	108(%r9), %edi
	jle	.LBB48_35
# BB#34:                                # %if.then.175
	movl	%edi, 108(%r9)
.LBB48_35:                              # %if.end.180
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB48_116
# BB#36:                                # %for.cond.197.preheader.lr.ph
	movq	80(%r9), %rcx
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	subl	%r8d, %edx
	movslq	%edx, %rax
	leaq	(%rax,%rcx), %rax
	subl	%r12d, %esi
	movq	64(%rsp), %rdi          # 8-byte Reload
	imull	%edi, %esi
	movslq	%esi, %rcx
	addq	%rax, %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	%r13, %rsi
	movq	%rsi, 320(%rsp)         # 8-byte Spill
	movl	%esi, %r14d
	movq	224(%rsp), %r13         # 8-byte Reload
	imull	%r13d, %r14d
	movl	360(%rsp), %edx         # 4-byte Reload
	cmpl	%edx, %r12d
	cmovgel	%r12d, %edx
	subl	%r12d, %edx
	movl	%edi, %eax
	imull	%edx, %eax
	movslq	%eax, %r12
	movl	336(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovgel	%r8d, %eax
	subl	%r8d, %eax
	movslq	%eax, %rcx
	addq	%rcx, %r12
	movq	%r12, 48(%rsp)          # 8-byte Spill
	leal	-2(%r11), %eax
	imull	%edi, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	leaq	1(%rsi), %rbx
	movq	%rbx, 248(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movq	%rcx, %rbp
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	movq	%rcx, %rdi
	andq	%rdi, %rbp
	movq	%rbp, 176(%rsp)         # 8-byte Spill
	setne	%r8b
	leaq	-32(%rbp), %rbp
	shrq	$5, %rbp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	andq	%rbx, %rdi
	movq	%rdi, 256(%rsp)         # 8-byte Spill
	setne	%bl
	leaq	-32(%rdi), %rdi
	shrq	$5, %rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	cmpl	$1, %r13d
	sete	%cl
	andb	%bl, %cl
	movb	%cl, 207(%rsp)          # 1-byte Spill
	andl	$1, %edi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	cmpl	$1, %r13d
	sete	%cl
	andb	%bl, %cl
	movb	%cl, 206(%rsp)          # 1-byte Spill
	cmpl	$1, %r13d
	sete	%cl
	andb	%r8b, %cl
	movb	%cl, 143(%rsp)          # 1-byte Spill
	andl	$1, %ebp
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	cmpl	$1, %r13d
	sete	%cl
	andb	%r8b, %cl
	movb	%cl, 142(%rsp)          # 1-byte Spill
	notb	%r15b
	movzbl	%r15b, %ecx
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	movslq	%r14d, %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	368(%rsp,%rax), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	(%r12,%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	pcmpeqd	%xmm2, %xmm2
	movslq	288(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 272(%rsp)         # 8-byte Spill
	movslq	292(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 264(%rsp)         # 8-byte Spill
	movslq	%r10d, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leaq	(%r12,%rsi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	368(%rsp,%rsi), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rsi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %rax
	leal	1(%r11), %ecx
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	leaq	(%r13,%r13), %r12
	leaq	(,%r13,4), %rcx
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB48_37:                              # %for.cond.197.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB48_39 Depth 2
                                        #       Child Loop BB48_47 Depth 3
                                        #       Child Loop BB48_54 Depth 3
                                        #       Child Loop BB48_63 Depth 3
                                        #       Child Loop BB48_68 Depth 3
                                        #       Child Loop BB48_71 Depth 3
                                        #       Child Loop BB48_83 Depth 3
                                        #       Child Loop BB48_90 Depth 3
                                        #       Child Loop BB48_99 Depth 3
                                        #       Child Loop BB48_104 Depth 3
                                        #       Child Loop BB48_107 Depth 3
	movq	312(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movq	%rax, %r13
	jle	.LBB48_115
# BB#38:                                #   in Loop: Header=BB48_37 Depth=1
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rax
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rsi
	imulq	%rsi, %rax
	movq	48(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rax), %rdx
	movq	%rdx, 304(%rsp)         # 8-byte Spill
	movq	24(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rax), %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	imulq	%rsi, %rcx
	movq	40(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rcx), %rdx
	movq	%rdx, 296(%rsp)         # 8-byte Spill
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	(%rdx,%rcx), %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movq	112(%rsp), %r15         # 8-byte Reload
	.align	16, 0x90
.LBB48_39:                              # %for.body.200
                                        #   Parent Loop BB48_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB48_47 Depth 3
                                        #       Child Loop BB48_54 Depth 3
                                        #       Child Loop BB48_63 Depth 3
                                        #       Child Loop BB48_68 Depth 3
                                        #       Child Loop BB48_71 Depth 3
                                        #       Child Loop BB48_83 Depth 3
                                        #       Child Loop BB48_90 Depth 3
                                        #       Child Loop BB48_99 Depth 3
                                        #       Child Loop BB48_104 Depth 3
                                        #       Child Loop BB48_107 Depth 3
	movq	304(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r8
	movq	296(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rax
	leaq	(%rax,%rcx), %rax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	movl	356(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB48_40
# BB#56:                                # %for.cond.203.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	%r8, 328(%rsp)          # 8-byte Spill
	testl	%r11d, %r11d
	jle	.LBB48_72
# BB#57:                                # %overflow.checked167
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpb	$0, 207(%rsp)           # 1-byte Folded Reload
	movl	$0, %edi
	movq	256(%rsp), %rdx         # 8-byte Reload
	je	.LBB48_65
# BB#58:                                # %vector.memcheck187
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	368(%rsp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB48_60
# BB#59:                                # %vector.memcheck187
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	336(%rsp), %rax         # 8-byte Reload
	cmpq	168(%rsp), %rax         # 8-byte Folded Reload
	movl	$0, %edi
	jbe	.LBB48_65
.LBB48_60:                              # %vector.body163.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	$0, 144(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB48_62
# BB#61:                                # %vector.body163.prol
                                        #   in Loop: Header=BB48_39 Depth=2
	movupd	(%r15), %xmm0
	movdqu	16(%r15), %xmm1
	movapd	%xmm0, 368(%rsp)
	movdqa	%xmm1, 384(%rsp)
	movl	$32, %ecx
.LBB48_62:                              # %vector.body163.preheader.split
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	$0, 152(%rsp)           # 8-byte Folded Reload
	movq	%rdx, %rdi
	je	.LBB48_65
	.align	16, 0x90
.LBB48_63:                              # %vector.body163
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r15,%rcx), %xmm0
	movups	16(%r15,%rcx), %xmm1
	movaps	%xmm0, 368(%rsp,%rcx)
	movaps	%xmm1, 384(%rsp,%rcx)
	movupd	32(%r15,%rcx), %xmm0
	movdqu	48(%r15,%rcx), %xmm1
	movapd	%xmm0, 400(%rsp,%rcx)
	movdqa	%xmm1, 416(%rsp,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB48_63
# BB#64:                                #   in Loop: Header=BB48_39 Depth=2
	movq	%rdx, %rdi
	.align	16, 0x90
.LBB48_65:                              # %middle.block164
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	%rdi, 248(%rsp)         # 8-byte Folded Reload
	je	.LBB48_72
# BB#66:                                # %for.body.206.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%edi, %edx
	orl	$1, %edx
	movl	200(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %esi
	subl	%edx, %esi
	movl	%r11d, %ecx
	subl	%edx, %ecx
	testb	$3, %sil
	je	.LBB48_69
# BB#67:                                # %for.body.206.prol.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	224(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdx
	imulq	%rdi, %rdx
	leaq	(%rdx,%r15), %rdx
	leal	1(%rdi), %eax
	movl	%ebx, %esi
	subl	%eax, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB48_68:                              # %for.body.206.prol
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rdx), %bl
	movb	%bl, 368(%rsp,%rdi)
	incq	%rdi
	addq	%rbp, %rdx
	incl	%esi
	jne	.LBB48_68
.LBB48_69:                              # %for.body.206.preheader.split
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpl	$3, %ecx
	jb	.LBB48_72
# BB#70:                                # %for.body.206.preheader.split.split
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%r11d, %ecx
	subl	%edi, %ecx
	leaq	371(%rsp), %rax
	leaq	(%rax,%rdi), %rdx
	leaq	3(%rdi), %r8
	movq	224(%rsp), %rax         # 8-byte Reload
	imulq	%rax, %r8
	leaq	2(%rdi), %rsi
	imulq	%rax, %rsi
	movq	%rax, %rbp
	imulq	%rdi, %rbp
	incq	%rdi
	imulq	%rax, %rdi
	movq	%r15, %rbx
	.align	16, 0x90
.LBB48_71:                              # %for.body.206
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rbp,%rbx), %al
	movb	%al, -3(%rdx)
	movb	(%rdi,%rbx), %al
	movb	%al, -2(%rdx)
	movb	(%rsi,%rbx), %al
	movb	%al, -1(%rdx)
	movb	(%r8,%rbx), %al
	movb	%al, (%rdx)
	addq	$4, %rdx
	addq	360(%rsp), %rbx         # 8-byte Folded Reload
	addl	$-4, %ecx
	jne	.LBB48_71
	jmp	.LBB48_72
	.align	16, 0x90
.LBB48_40:                              # %for.cond.216.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpl	$2, %r11d
	jl	.LBB48_55
# BB#41:                                # %overflow.checked208
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpb	$0, 142(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	176(%rsp), %rdx         # 8-byte Reload
	je	.LBB48_49
# BB#42:                                # %vector.memcheck228
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r14), %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	368(%rsp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB48_44
# BB#43:                                # %vector.memcheck228
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	120(%rsp), %r8          # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB48_49
.LBB48_44:                              # %vector.body204.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB48_46
# BB#45:                                # %vector.body204.prol
                                        #   in Loop: Header=BB48_39 Depth=2
	movdqu	(%r15), %xmm0
	movdqu	16(%r15), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, 368(%rsp)
	movdqa	%xmm1, 384(%rsp)
	movl	$32, %ecx
.LBB48_46:                              # %vector.body204.preheader.split
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB48_49
	.align	16, 0x90
.LBB48_47:                              # %vector.body204
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	(%r15,%rcx), %xmm0
	movdqu	16(%r15,%rcx), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, 368(%rsp,%rcx)
	movdqa	%xmm1, 384(%rsp,%rcx)
	movdqu	32(%r15,%rcx), %xmm0
	movdqu	48(%r15,%rcx), %xmm1
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqa	%xmm0, 400(%rsp,%rcx)
	movdqa	%xmm1, 416(%rsp,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB48_47
# BB#48:                                #   in Loop: Header=BB48_39 Depth=2
	movq	%rdx, %rax
.LBB48_49:                              # %middle.block205
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	%rax, 184(%rsp)         # 8-byte Folded Reload
	je	.LBB48_55
# BB#50:                                # %for.body.219.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%r11d, %edx
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB48_52
# BB#51:                                # %for.body.219.prol
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	%rax, %rdx
	imulq	224(%rsp), %rdx         # 8-byte Folded Reload
	movb	(%r15,%rdx), %dl
	notb	%dl
	movb	%dl, 368(%rsp,%rax)
	orq	$1, %rax
.LBB48_52:                              # %for.body.219.preheader.split
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpl	%ecx, %r13d
	je	.LBB48_55
# BB#53:                                # %for.body.219.preheader.split.split
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%r13d, %ecx
	subl	%eax, %ecx
	leaq	369(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rsi
	imulq	%rax, %rsi
	leaq	(%rsi,%r15), %rsi
	incq	%rax
	imulq	%rdi, %rax
	leaq	(%rax,%r15), %rax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB48_54:                              # %for.body.219
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi,%rdi), %bl
	notb	%bl
	movb	%bl, -1(%rdx)
	movb	(%rax,%rdi), %bl
	notb	%bl
	movb	%bl, (%rdx)
	addq	$2, %rdx
	addq	%r12, %rdi
	addl	$-2, %ecx
	jne	.LBB48_54
	.align	16, 0x90
.LBB48_55:                              # %for.end.230
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	%r8, 328(%rsp)          # 8-byte Spill
	movq	232(%rsp), %rax         # 8-byte Reload
	movb	(%r15,%rax), %al
	movq	240(%rsp), %rcx         # 8-byte Reload
	movb	%al, 368(%rsp,%rcx)
.LBB48_72:                              # %if.end.236
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	%r10, %rbp
	cmpl	$0, 16(%r9)
	je	.LBB48_74
# BB#73:                                # %if.then.238
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	%r9, %rbx
	leaq	368(%rsp), %rdi
	leaq	448(%rsp), %rsi
	movl	%r13d, %edx
	movq	%r11, %r13
	callq	art_pdf_knockoutisolated_group_8
	jmp	.LBB48_75
	.align	16, 0x90
.LBB48_74:                              # %if.else.241
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	%r9, %rbx
	movq	272(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax), %rsi
	cmpl	$0, 196(%rsp)           # 4-byte Folded Reload
	movl	$0, %ecx
	cmoveq	%rcx, %rsi
	movq	264(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax), %rdx
	cmpl	$0, 192(%rsp)           # 4-byte Folded Reload
	cmoveq	%rcx, %rdx
	movl	$255, (%rsp)
	movl	284(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %r8d
	leaq	368(%rsp), %rdi
	leaq	448(%rsp), %rcx
	movl	%r13d, %r9d
	movq	%r11, %r13
	callq	art_pdf_composite_knockout_simple_8
.LBB48_75:                              # %if.end.259
                                        #   in Loop: Header=BB48_39 Depth=2
	pcmpeqd	%xmm2, %xmm2
	movq	%r13, %r11
	movq	%rbp, %r10
	movl	356(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	%rbx, %r9
	je	.LBB48_76
# BB#92:                                # %for.cond.262.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%eax, 356(%rsp)         # 4-byte Spill
	testl	%r11d, %r11d
	jle	.LBB48_108
# BB#93:                                # %overflow.checked92
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpb	$0, 206(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	256(%rsp), %rdx         # 8-byte Reload
	je	.LBB48_101
# BB#94:                                # %vector.memcheck
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	328(%rsp), %rax         # 8-byte Reload
	cmpq	168(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB48_96
# BB#95:                                # %vector.memcheck
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	368(%rsp), %rcx
	cmpq	%rax, %rcx
	movl	$0, %eax
	jbe	.LBB48_101
.LBB48_96:                              # %vector.body88.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	$0, 144(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB48_98
# BB#97:                                # %vector.body88.prol
                                        #   in Loop: Header=BB48_39 Depth=2
	movapd	368(%rsp), %xmm0
	movdqa	384(%rsp), %xmm1
	movupd	%xmm0, (%r15)
	movdqu	%xmm1, 16(%r15)
	movl	$32, %ecx
.LBB48_98:                              # %vector.body88.preheader.split
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	$0, 152(%rsp)           # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB48_101
	.align	16, 0x90
.LBB48_99:                              # %vector.body88
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movaps	368(%rsp,%rcx), %xmm0
	movaps	384(%rsp,%rcx), %xmm1
	movups	%xmm0, (%r15,%rcx)
	movups	%xmm1, 16(%r15,%rcx)
	movapd	400(%rsp,%rcx), %xmm0
	movdqa	416(%rsp,%rcx), %xmm1
	movupd	%xmm0, 32(%r15,%rcx)
	movdqu	%xmm1, 48(%r15,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB48_99
# BB#100:                               #   in Loop: Header=BB48_39 Depth=2
	movq	%rdx, %rax
	.align	16, 0x90
.LBB48_101:                             # %middle.block89
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	%rax, 248(%rsp)         # 8-byte Folded Reload
	je	.LBB48_108
# BB#102:                               # %for.body.265.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%eax, %edx
	orl	$1, %edx
	movl	200(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %esi
	subl	%edx, %esi
	movl	%r11d, %ecx
	subl	%edx, %ecx
	testb	$3, %sil
	je	.LBB48_105
# BB#103:                               # %for.body.265.prol.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	224(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%r15), %rdx
	leal	1(%rax), %edi
	movl	%ebx, %esi
	subl	%edi, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB48_104:                             # %for.body.265.prol
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	368(%rsp,%rax), %bl
	movb	%bl, (%rdx)
	incq	%rax
	addq	%rbp, %rdx
	incl	%esi
	jne	.LBB48_104
.LBB48_105:                             # %for.body.265.preheader.split
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpl	$3, %ecx
	jb	.LBB48_108
# BB#106:                               # %for.body.265.preheader.split.split
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%r11d, %ecx
	subl	%eax, %ecx
	leaq	3(%rax), %r8
	movq	224(%rsp), %rdx         # 8-byte Reload
	imulq	%rdx, %r8
	leaq	371(%rsp), %rsi
	leaq	(%rsi,%rax), %rsi
	leaq	2(%rax), %rdi
	imulq	%rdx, %rdi
	movq	%rdx, %rbp
	imulq	%rax, %rbp
	incq	%rax
	imulq	%rdx, %rax
	movq	%r15, %rbx
	.align	16, 0x90
.LBB48_107:                             # %for.body.265
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-3(%rsi), %dl
	movb	%dl, (%rbp,%rbx)
	movb	-2(%rsi), %dl
	movb	%dl, (%rax,%rbx)
	movb	-1(%rsi), %dl
	movb	%dl, (%rdi,%rbx)
	movb	(%rsi), %dl
	movb	%dl, (%r8,%rbx)
	addq	360(%rsp), %rbx         # 8-byte Folded Reload
	addq	$4, %rsi
	addl	$-4, %ecx
	jne	.LBB48_107
	jmp	.LBB48_108
	.align	16, 0x90
.LBB48_76:                              # %for.cond.275.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%eax, 356(%rsp)         # 4-byte Spill
	cmpl	$2, %r11d
	jl	.LBB48_91
# BB#77:                                # %overflow.checked126
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpb	$0, 143(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	176(%rsp), %rdx         # 8-byte Reload
	je	.LBB48_85
# BB#78:                                # %vector.memcheck146
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	336(%rsp), %rax         # 8-byte Reload
	cmpq	120(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB48_80
# BB#79:                                # %vector.memcheck146
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r14), %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	368(%rsp), %rcx
	cmpq	%rax, %rcx
	movl	$0, %eax
	jbe	.LBB48_85
.LBB48_80:                              # %vector.body122.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	$0, 72(%rsp)            # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB48_82
# BB#81:                                # %vector.body122.prol
                                        #   in Loop: Header=BB48_39 Depth=2
	movdqa	368(%rsp), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	384(%rsp), %xmm1
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%r15)
	movdqu	%xmm1, 16(%r15)
	movl	$32, %ecx
.LBB48_82:                              # %vector.body122.preheader.split
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB48_85
	.align	16, 0x90
.LBB48_83:                              # %vector.body122
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	368(%rsp,%rcx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	384(%rsp,%rcx), %xmm1
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%r15,%rcx)
	movdqu	%xmm1, 16(%r15,%rcx)
	movdqa	400(%rsp,%rcx), %xmm0
	pxor	%xmm2, %xmm0
	movdqa	416(%rsp,%rcx), %xmm1
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, 32(%r15,%rcx)
	movdqu	%xmm1, 48(%r15,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB48_83
# BB#84:                                #   in Loop: Header=BB48_39 Depth=2
	movq	%rdx, %rax
.LBB48_85:                              # %middle.block123
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpq	%rax, 184(%rsp)         # 8-byte Folded Reload
	je	.LBB48_91
# BB#86:                                # %for.body.278.preheader
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%r11d, %edx
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB48_88
# BB#87:                                # %for.body.278.prol
                                        #   in Loop: Header=BB48_39 Depth=2
	movb	368(%rsp,%rax), %dl
	notb	%dl
	movq	%rax, %rsi
	imulq	224(%rsp), %rsi         # 8-byte Folded Reload
	movb	%dl, (%r15,%rsi)
	orq	$1, %rax
.LBB48_88:                              # %for.body.278.preheader.split
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	320(%rsp), %rdx         # 8-byte Reload
	cmpl	%ecx, %edx
	je	.LBB48_91
# BB#89:                                # %for.body.278.preheader.split.split
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	320(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	leaq	369(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rsi
	imulq	%rax, %rsi
	leaq	(%rsi,%r15), %rsi
	incq	%rax
	imulq	%rdi, %rax
	leaq	(%rax,%r15), %rax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB48_90:                              # %for.body.278
                                        #   Parent Loop BB48_37 Depth=1
                                        #     Parent Loop BB48_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-1(%rdx), %bl
	notb	%bl
	movb	%bl, (%rsi,%rdi)
	movb	(%rdx), %bl
	notb	%bl
	movb	%bl, (%rax,%rdi)
	addq	$2, %rdx
	addq	%r12, %rdi
	addl	$-2, %ecx
	jne	.LBB48_90
	.align	16, 0x90
.LBB48_91:                              # %for.end.289
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	240(%rsp), %rax         # 8-byte Reload
	movb	368(%rsp,%rax), %al
	movq	232(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%r15,%rcx)
.LBB48_108:                             # %if.end.295
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpl	$0, 292(%rsp)           # 4-byte Folded Reload
	je	.LBB48_110
# BB#109:                               # %if.then.297
                                        #   in Loop: Header=BB48_39 Depth=2
	movl	284(%rsp), %eax         # 4-byte Reload
	movq	264(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%r15,%rcx)
.LBB48_110:                             # %if.end.301
                                        #   in Loop: Header=BB48_39 Depth=2
	testl	%r10d, %r10d
	je	.LBB48_112
# BB#111:                               # %if.then.303
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	208(%rsp), %rdx         # 8-byte Reload
	movzbl	(%r15,%rdx), %eax
	xorl	$255, %eax
	imull	216(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r15,%rdx)
.LBB48_112:                             # %if.end.318
                                        #   in Loop: Header=BB48_39 Depth=2
	cmpl	$0, 288(%rsp)           # 4-byte Folded Reload
	movq	320(%rsp), %r13         # 8-byte Reload
	je	.LBB48_114
# BB#113:                               # %if.then.320
                                        #   in Loop: Header=BB48_39 Depth=2
	movq	272(%rsp), %rdx         # 8-byte Reload
	movzbl	(%r15,%rdx), %eax
	xorl	$255, %eax
	imull	220(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r15,%rdx)
.LBB48_114:                             # %if.end.337
                                        #   in Loop: Header=BB48_39 Depth=2
	incq	%r15
	incq	%r14
	movq	312(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r14d
	jl	.LBB48_39
.LBB48_115:                             # %for.end.340
                                        #   in Loop: Header=BB48_37 Depth=1
	movq	%r13, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	addq	64(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rdx         # 8-byte Reload
	incq	%rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	56(%rsp), %rcx          # 8-byte Reload
	cmpl	%ecx, %edx
	jl	.LBB48_37
.LBB48_116:                             # %cleanup
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	pdf14_mark_fill_rectangle_ko_simple, .Lfunc_end48-pdf14_mark_fill_rectangle_ko_simple
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI49_0:
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
.LCPI49_1:
	.quad	255                     # 0xff
	.quad	255                     # 0xff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI49_2:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI49_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pdf14_mark_fill_rectangle,@function
pdf14_mark_fill_rectangle:              # @pdf14_mark_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp382:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp383:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp384:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp385:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp386:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp387:
	.cfi_def_cfa_offset 56
	subq	$376, %rsp              # imm = 0x178
.Ltmp388:
	.cfi_def_cfa_offset 432
.Ltmp389:
	.cfi_offset %rbx, -56
.Ltmp390:
	.cfi_offset %r12, -48
.Ltmp391:
	.cfi_offset %r13, -40
.Ltmp392:
	.cfi_offset %r14, -32
.Ltmp393:
	.cfi_offset %r15, -24
.Ltmp394:
	.cfi_offset %rbp, -16
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movl	%edx, %r13d
	movq	%rdi, %r12
	movq	4152(%r12), %rcx
	movq	(%rcx), %r14
	movslq	64(%r14), %rdi
	movl	32(%r14), %eax
	movl	36(%r14), %edx
	movl	%edx, 200(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	movl	%edi, %ebp
	cmovel	%edx, %ebp
	testl	%eax, %eax
	movl	%edi, %ebx
	cmovel	%eax, %ebx
	cmpq	$0, 80(%r14)
	je	.LBB49_107
# BB#1:                                 # %if.end
	movl	440(%rsp), %r15d
	movl	4180(%r12), %edx
	movl	%edx, 188(%rsp)         # 4-byte Spill
	movl	4188(%r12), %edx
	movl	%edx, 84(%rsp)          # 4-byte Spill
	movl	40(%rcx), %ecx
	movl	%ecx, 168(%rsp)         # 4-byte Spill
	movl	60(%r14), %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	movl	68(%r14), %ecx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leal	-1(%rcx), %r11d
	movl	4196(%r12), %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movq	4200(%r12), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	40(%r14), %r10d
	movl	$0, 192(%rsp)           # 4-byte Folded Spill
	testl	%r10d, %r10d
	je	.LBB49_3
# BB#2:                                 # %if.then.19
	leal	(,%r11,8), %ecx
	movq	%r9, %rdx
	shrq	%cl, %rdx
	movzbl	%dl, %ecx
	movl	%ecx, 192(%rsp)         # 4-byte Spill
.LBB49_3:                               # %if.end.21
	movq	%r11, 144(%rsp)         # 8-byte Spill
	testl	%r15d, %r15d
	je	.LBB49_24
# BB#4:                                 # %if.then.23
	movq	432(%rsp), %r11
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	cmpl	$0, 168(%rsp)           # 4-byte Folded Reload
	je	.LBB49_16
# BB#5:                                 # %for.cond.preheader
	movl	%r8d, 216(%rsp)         # 4-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	movl	%r10d, 104(%rsp)        # 4-byte Spill
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%esi, 124(%rsp)         # 4-byte Spill
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB49_25
# BB#6:                                 # %for.body.lr.ph
	movq	152(%rsp), %rax         # 8-byte Reload
	leal	-2(%rax), %esi
	leaq	1(%rsi), %r9
	xorl	%edi, %edi
	movq	%r9, %rdx
	andq	%rcx, %rdx
	je	.LBB49_13
# BB#7:                                 # %vector.body.preheader
	leaq	1(%rsi), %rdi
	andq	%rcx, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rax
	shrq	$4, %rax
	xorl	%ebx, %ebx
	btq	$4, %rdi
	jb	.LBB49_9
# BB#8:                                 # %vector.body.prol
	movdqu	8(%r11), %xmm0
	movdqu	24(%r11), %xmm1
	psrlw	$8, %xmm0
	psrlw	$8, %xmm1
	movdqa	.LCPI49_0(%rip), %xmm2  # xmm2 = [255,255,255,255,255,255,255,255]
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	movq	%xmm0, 304(%rsp)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, 312(%rsp)
	movl	$16, %ebx
.LBB49_9:                               # %vector.body.preheader.split
	testq	%rax, %rax
	je	.LBB49_12
# BB#10:                                # %vector.body.preheader.split.split
	incq	%rsi
	andq	%rcx, %rsi
	subq	%rbx, %rsi
	leaq	56(%r11,%rbx,2), %rax
	leaq	304(%rsp), %rcx
	leaq	24(%rbx,%rcx), %rcx
	movdqa	.LCPI49_0(%rip), %xmm0  # xmm0 = [255,255,255,255,255,255,255,255]
	.align	16, 0x90
.LBB49_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rax), %xmm1
	movdqu	-32(%rax), %xmm2
	psrlw	$8, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, -24(%rcx)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	movq	%xmm2, -16(%rcx)
	movdqu	-16(%rax), %xmm1
	movdqu	(%rax), %xmm2
	psrlw	$8, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, -8(%rcx)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	movq	%xmm2, (%rcx)
	addq	$64, %rax
	addq	$32, %rcx
	addq	$-32, %rsi
	jne	.LBB49_11
.LBB49_12:
	movq	%rdx, %rdi
.LBB49_13:                              # %middle.block
	cmpq	%rdi, %r9
	je	.LBB49_25
# BB#14:                                # %for.body.preheader
	leaq	8(%r11,%rdi,2), %rax
	leaq	304(%rsp,%rdi), %rcx
	movq	144(%rsp), %rdx         # 8-byte Reload
	subl	%edi, %edx
	.align	16, 0x90
.LBB49_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rax), %bl
	movb	%bl, (%rcx)
	addq	$2, %rax
	incq	%rcx
	decl	%edx
	jne	.LBB49_15
	jmp	.LBB49_25
.LBB49_24:                              # %if.else.57
	movl	%r8d, 216(%rsp)         # 4-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	movl	%r10d, 104(%rsp)        # 4-byte Spill
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%esi, 124(%rsp)         # 4-byte Spill
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movq	4136(%r12), %rax
	leaq	304(%rsp), %rcx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%r12, %rdx
	callq	*(%rax)
	jmp	.LBB49_25
.LBB49_16:                              # %for.cond.36.preheader
	movl	%r8d, 216(%rsp)         # 4-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	movl	%r10d, 104(%rsp)        # 4-byte Spill
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%esi, 124(%rsp)         # 4-byte Spill
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB49_25
# BB#17:                                # %for.body.39.lr.ph
	movq	152(%rsp), %rax         # 8-byte Reload
	leal	-2(%rax), %ebx
	leaq	1(%rbx), %rdx
	addq	$12, %rcx
	xorl	%esi, %esi
	andq	%rdx, %rcx
	je	.LBB49_21
# BB#18:                                # %vector.body96.preheader
	leaq	12(%r11), %rsi
	leaq	306(%rsp), %rdi
	incq	%rbx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rbx, %rax
	pxor	%xmm0, %xmm0
	movdqa	.LCPI49_1(%rip), %xmm1  # xmm1 = [255,255]
	.align	16, 0x90
.LBB49_19:                              # %vector.body96
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	psrlq	$8, %xmm3
	psrlq	$8, %xmm2
	pxor	%xmm1, %xmm3
	pxor	%xmm1, %xmm2
	pand	%xmm1, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, %ebx
	movw	%bx, -2(%rdi)
	pand	%xmm1, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, %ebx
	movw	%bx, (%rdi)
	addq	$8, %rsi
	addq	$4, %rdi
	addq	$-4, %rax
	jne	.LBB49_19
# BB#20:
	movq	%rcx, %rsi
.LBB49_21:                              # %middle.block97
	cmpq	%rsi, %rdx
	je	.LBB49_25
# BB#22:                                # %for.body.39.preheader
	leaq	8(%r11,%rsi,2), %rax
	leaq	304(%rsp,%rsi), %rcx
	movq	144(%rsp), %rdx         # 8-byte Reload
	subl	%esi, %edx
	.align	16, 0x90
.LBB49_23:                              # %for.body.39
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	shrl	$8, %esi
	notl	%esi
	movb	%sil, (%rcx)
	addq	$2, %rax
	incq	%rcx
	decl	%edx
	jne	.LBB49_23
.LBB49_25:                              # %if.end.58
	movss	4176(%r12), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI49_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI49_3(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r15d
	movq	144(%rsp), %rax         # 8-byte Reload
	cltq
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movb	%r15b, 304(%rsp,%rax)
	movl	$255, 196(%rsp)         # 4-byte Folded Spill
	cmpl	$0, 200(%rsp)           # 4-byte Folded Reload
	je	.LBB49_27
# BB#26:                                # %if.then.66
	movss	4172(%r12), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI49_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI49_3(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	notb	%al
	movzbl	%al, %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
.LBB49_27:                              # %if.end.73
	movl	44(%r14), %r11d
	movl	48(%r14), %edx
	xorl	%ecx, %ecx
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edi
	subl	%r11d, %edi
	cmovgel	%ecx, %edi
	movl	%eax, %esi
	cmovlel	%r11d, %esi
	addl	128(%rsp), %edi         # 4-byte Folded Reload
	movl	%r13d, %ebp
	subl	%edx, %ebp
	cmovgel	%ecx, %ebp
	cmovlel	%edx, %r13d
	addl	216(%rsp), %ebp         # 4-byte Folded Reload
	leal	(%rdi,%rsi), %ebx
	movl	52(%r14), %r10d
	movl	%r10d, %ecx
	subl	%esi, %ecx
	cmpl	%r10d, %ebx
	cmovlel	%edi, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leal	(%rbp,%r13), %edi
	movl	56(%r14), %ebx
	movl	%ebx, %ecx
	subl	%r13d, %ecx
	cmpl	%ebx, %edi
	cmovlel	%ebp, %ecx
	cmpl	96(%r14), %esi
	jge	.LBB49_29
# BB#28:                                # %if.then.129
	movl	%esi, 96(%r14)
.LBB49_29:                              # %if.end.133
	movq	152(%rsp), %rdi         # 8-byte Reload
	movq	136(%rsp), %r8          # 8-byte Reload
	imull	%r8d, %edi
	movq	%rdi, 216(%rsp)         # 8-byte Spill
	cmpl	100(%r14), %r13d
	movq	%r12, 176(%rsp)         # 8-byte Spill
	movq	144(%rsp), %rbp         # 8-byte Reload
	jge	.LBB49_31
# BB#30:                                # %if.then.139
	movl	%r13d, 100(%r14)
.LBB49_31:                              # %if.end.143
	movq	216(%rsp), %rdi         # 8-byte Reload
	movq	96(%rsp), %rbx          # 8-byte Reload
	leal	(%rbx,%rdi), %r9d
	movq	32(%rsp), %rdi          # 8-byte Reload
	leal	(%rdi,%rsi), %edi
	cmpl	104(%r14), %edi
	jle	.LBB49_33
# BB#32:                                # %if.then.150
	movl	%edi, 104(%r14)
.LBB49_33:                              # %if.end.155
	movq	208(%rsp), %rdi         # 8-byte Reload
	leal	(%rdi,%r9), %edi
	movl	%edi, 208(%rsp)         # 4-byte Spill
	leal	(%rcx,%r13), %edi
	cmpl	108(%r14), %edi
	jle	.LBB49_35
# BB#34:                                # %if.then.162
	movl	%edi, 108(%r14)
.LBB49_35:                              # %if.end.167
	subl	%r11d, %esi
	movslq	%esi, %rsi
	addq	80(%r14), %rsi
	subl	%edx, %r13d
	movl	160(%rsp), %edi         # 4-byte Reload
	imull	%edi, %r13d
	movslq	%r13d, %r14
	addq	%rsi, %r14
	movl	112(%rsp), %edx         # 4-byte Reload
	testl	%edx, %edx
	cmovel	%edx, %r9d
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movl	200(%rsp), %esi         # 4-byte Reload
	testl	%esi, %esi
	movq	216(%rsp), %rdx         # 8-byte Reload
	cmovel	%esi, %edx
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movl	104(%rsp), %esi         # 4-byte Reload
	testl	%esi, %esi
	notb	%r15b
	movl	208(%rsp), %edx         # 4-byte Reload
	cmovel	%esi, %edx
	movl	%edx, 208(%rsp)         # 4-byte Spill
	movq	32(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %edi
	cmpl	$0, 168(%rsp)           # 4-byte Folded Reload
	je	.LBB49_37
# BB#36:                                # %if.end.167
	cmpl	$1, %ebp
	jne	.LBB49_37
# BB#41:                                # %for.cond.200.preheader
	testl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	jle	.LBB49_107
# BB#42:                                # %for.cond.204.preheader.lr.ph
	movslq	%edi, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movzbl	%r15b, %ecx
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	cmpl	%eax, %r11d
	movl	%eax, %edx
	cmovgel	%r11d, %edx
	movl	%edx, %ecx
	negl	%ecx
	movl	%r11d, %esi
	notl	%esi
	notl	%eax
	cmpl	%eax, %esi
	cmovgel	%esi, %eax
	addl	%r11d, %eax
	subl	128(%rsp), %eax         # 4-byte Folded Reload
	subl	%edx, %eax
	notl	%r10d
	cmpl	%r10d, %eax
	cmovgel	%eax, %r10d
	subl	%r10d, %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movslq	%r9d, %rbx
	movq	216(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %r12
	movslq	208(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 168(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB49_43:                              # %for.cond.204.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_44 Depth 2
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	152(%rsp), %r15d        # 4-byte Reload
	jle	.LBB49_58
	.align	16, 0x90
.LBB49_44:                              # %for.body.207
                                        #   Parent Loop BB49_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 305(%rsp)
	je	.LBB49_48
# BB#45:                                # %if.else.213
                                        #   in Loop: Header=BB49_44 Depth=2
	cmpb	$0, (%r8,%r14)
	je	.LBB49_46
# BB#47:                                # %if.else.225
                                        #   in Loop: Header=BB49_44 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	4144(%rax), %rcx
	movq	%r14, %rdi
	leaq	304(%rsp), %rsi
	movl	188(%rsp), %edx         # 4-byte Reload
	movq	%r8, %rbp
	movq	%r9, %r13
	callq	art_pdf_composite_pixel_alpha_8_fast_mono
	movq	%r13, %r9
	movq	%rbp, %r8
	jmp	.LBB49_48
	.align	16, 0x90
.LBB49_46:                              # %if.then.219
                                        #   in Loop: Header=BB49_44 Depth=2
	movb	304(%rsp), %al
	movb	%al, (%r14)
	movb	305(%rsp), %al
	movb	%al, (%r8,%r14)
.LBB49_48:                              # %if.end.228
                                        #   in Loop: Header=BB49_44 Depth=2
	testl	%r9d, %r9d
	je	.LBB49_50
# BB#49:                                # %if.then.230
                                        #   in Loop: Header=BB49_44 Depth=2
	movzbl	(%rbx,%r14), %eax
	xorl	$255, %eax
	imull	200(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%rbx,%r14)
.LBB49_50:                              # %if.end.245
                                        #   in Loop: Header=BB49_44 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB49_52
# BB#51:                                # %if.then.247
                                        #   in Loop: Header=BB49_44 Depth=2
	movzbl	(%r12,%r14), %eax
	xorl	$255, %eax
	imull	196(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r12,%r14)
.LBB49_52:                              # %if.end.264
                                        #   in Loop: Header=BB49_44 Depth=2
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	je	.LBB49_57
# BB#53:                                # %if.then.266
                                        #   in Loop: Header=BB49_44 Depth=2
	movzbl	(%r8,%r14), %eax
	cmpl	$255, %eax
	je	.LBB49_54
# BB#55:                                # %if.else.276
                                        #   in Loop: Header=BB49_44 Depth=2
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%r14), %eax
	orl	192(%rsp), %eax         # 4-byte Folded Reload
	andb	$-9, %al
	jmp	.LBB49_56
	.align	16, 0x90
.LBB49_54:                              # %if.then.272
                                        #   in Loop: Header=BB49_44 Depth=2
	movl	192(%rsp), %eax         # 4-byte Reload
	movq	168(%rsp), %rcx         # 8-byte Reload
.LBB49_56:                              # %if.end.285
                                        #   in Loop: Header=BB49_44 Depth=2
	movb	%al, (%rcx,%r14)
.LBB49_57:                              # %if.end.285
                                        #   in Loop: Header=BB49_44 Depth=2
	incq	%r14
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB49_44
.LBB49_58:                              # %for.end.287
                                        #   in Loop: Header=BB49_43 Depth=1
	addq	160(%rsp), %r14         # 8-byte Folded Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jg	.LBB49_43
	jmp	.LBB49_107
.LBB49_37:                              # %for.cond.294.preheader
	testl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	88(%rsp), %r10          # 8-byte Reload
	jle	.LBB49_107
# BB#38:                                # %for.cond.298.preheader.lr.ph
	movslq	%edi, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	%ebp, %eax
	imull	%r8d, %eax
	movslq	%eax, %r11
	movslq	208(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	cltq
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movslq	%r9d, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movzbl	%r15b, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	leal	-2(%rax), %edx
	movl	%edx, 68(%rsp)          # 4-byte Spill
	movl	%eax, %edx
	andl	$3, %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movl	%ebp, %edx
	andl	$1, %edx
	movl	%edx, 64(%rsp)          # 4-byte Spill
	leaq	(%r8,%r8), %rbp
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	andl	$3, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	(,%r8,4), %r15
	movq	%r15, 96(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB49_39:                              # %for.cond.298.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_59 Depth 2
                                        #       Child Loop BB49_65 Depth 3
                                        #       Child Loop BB49_90 Depth 3
                                        #       Child Loop BB49_92 Depth 3
                                        #       Child Loop BB49_72 Depth 3
                                        #       Child Loop BB49_78 Depth 3
                                        #       Child Loop BB49_81 Depth 3
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %r12d
	movq	%r14, %r13
	jle	.LBB49_40
	.align	16, 0x90
.LBB49_59:                              # %for.body.301
                                        #   Parent Loop BB49_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB49_65 Depth 3
                                        #       Child Loop BB49_90 Depth 3
                                        #       Child Loop BB49_92 Depth 3
                                        #       Child Loop BB49_72 Depth 3
                                        #       Child Loop BB49_78 Depth 3
                                        #       Child Loop BB49_81 Depth 3
	movq	%rax, 200(%rsp)         # 8-byte Spill
	cmpl	$0, 168(%rsp)           # 4-byte Folded Reload
	je	.LBB49_60
# BB#74:                                # %if.then.303
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpb	$0, 304(%rsp,%r10)
	je	.LBB49_96
# BB#75:                                # %if.else.310
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpb	$0, (%r13,%r11)
	je	.LBB49_76
# BB#82:                                # %if.else.330
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	4144(%rax), %r8
	movq	%r13, %rdi
	leaq	304(%rsp), %rsi
	movq	144(%rsp), %rdx         # 8-byte Reload
	movl	188(%rsp), %ecx         # 4-byte Reload
	movq	%r9, %rbx
	movq	136(%rsp), %r9          # 8-byte Reload
	movq	%r10, %rbp
	movq	%r12, %r14
	movq	%r11, %r12
	callq	art_pdf_composite_pixel_alpha_8_fast
	movq	%r12, %r11
	movq	%r14, %r12
	movq	96(%rsp), %r15          # 8-byte Reload
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	%rbp, %r10
	movq	%rbx, %r9
	jmp	.LBB49_96
	.align	16, 0x90
.LBB49_60:                              # %for.cond.336.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	movq	176(%rsp), %r8          # 8-byte Reload
	jl	.LBB49_66
# BB#61:                                # %for.body.339.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movl	$0, %esi
	je	.LBB49_63
# BB#62:                                # %for.body.339.prol
                                        #   in Loop: Header=BB49_59 Depth=2
	movb	(%r13), %al
	notb	%al
	movb	%al, 224(%rsp)
	movl	$1, %esi
.LBB49_63:                              # %for.body.339.preheader.split
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB49_66
# BB#64:                                # %for.body.339.preheader.split.split
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	144(%rsp), %rax         # 8-byte Reload
	subl	%esi, %eax
	leaq	225(%rsp), %rcx
	leaq	(%rcx,%rsi), %rcx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rdx
	imulq	%rsi, %rdx
	leaq	(%rdx,%r12), %rdx
	incq	%rsi
	imulq	%rdi, %rsi
	leaq	(%rsi,%r12), %rsi
	movq	%r14, %rdi
	.align	16, 0x90
.LBB49_65:                              # %for.body.339
                                        #   Parent Loop BB49_39 Depth=1
                                        #     Parent Loop BB49_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rdx,%rdi), %bl
	notb	%bl
	movb	%bl, -1(%rcx)
	movb	(%rsi,%rdi), %bl
	notb	%bl
	movb	%bl, (%rcx)
	addq	$2, %rcx
	addq	%rbp, %rdi
	addl	$-2, %eax
	jne	.LBB49_65
.LBB49_66:                              # %for.end.350
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	%rbp, %r15
	movb	(%r13,%r11), %al
	movb	%al, 224(%rsp,%r10)
	movq	4144(%r8), %r8
	leaq	224(%rsp), %rdi
	leaq	304(%rsp), %rsi
	movq	144(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %edx
	movl	188(%rsp), %ecx         # 4-byte Reload
	movq	%r11, %rbp
	callq	art_pdf_composite_pixel_alpha_8
	movq	%rbp, %r11
	cmpl	$0, 84(%rsp)            # 4-byte Folded Reload
	je	.LBB49_67
# BB#83:                                # %land.lhs.true.360
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpb	$0, (%r13,%r11)
	je	.LBB49_67
# BB#84:                                # %if.then.367
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB49_91
# BB#85:                                # %for.cond.370.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	72(%rsp), %r9           # 8-byte Reload
	movq	88(%rsp), %r10          # 8-byte Reload
	movq	%r15, %r8
	movq	96(%rsp), %r15          # 8-byte Reload
	jl	.LBB49_95
# BB#86:                                # %for.body.373.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movl	$0, %esi
	je	.LBB49_88
# BB#87:                                # %for.body.373.prol
                                        #   in Loop: Header=BB49_59 Depth=2
	movzbl	(%r13), %eax
	xorl	$255, %eax
	movzbl	224(%rsp), %ecx
	imull	%eax, %ecx
	shrl	$8, %ecx
	notl	%ecx
	movb	%cl, (%r13)
	movl	$1, %esi
.LBB49_88:                              # %for.body.373.preheader.split
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB49_95
# BB#89:                                # %for.body.373.preheader.split.split
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	144(%rsp), %rax         # 8-byte Reload
	subl	%esi, %eax
	leaq	225(%rsp), %rcx
	leaq	(%rcx,%rsi), %rcx
	movq	%rdi, %rdx
	imulq	%rsi, %rdx
	leaq	(%rdx,%r13), %rdx
	incq	%rsi
	imulq	%rdi, %rsi
	leaq	(%rsi,%r13), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB49_90:                              # %for.body.373
                                        #   Parent Loop BB49_39 Depth=1
                                        #     Parent Loop BB49_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx,%rdi), %ebp
	xorl	$255, %ebp
	movzbl	-1(%rcx), %ebx
	imull	%ebp, %ebx
	shrl	$8, %ebx
	notl	%ebx
	movb	%bl, (%rdx,%rdi)
	movzbl	(%rsi,%rdi), %ebp
	xorl	$255, %ebp
	movzbl	(%rcx), %ebx
	imull	%ebp, %ebx
	shrl	$8, %ebx
	notl	%ebx
	movb	%bl, (%rsi,%rdi)
	addq	$2, %rcx
	addq	%r8, %rdi
	addl	$-2, %eax
	jne	.LBB49_90
	jmp	.LBB49_95
	.align	16, 0x90
.LBB49_67:                              # %for.cond.422.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	movq	72(%rsp), %r9           # 8-byte Reload
	jl	.LBB49_73
# BB#68:                                # %for.body.425.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 64(%rsp)            # 4-byte Folded Reload
	movl	$0, %esi
	je	.LBB49_70
# BB#69:                                # %for.body.425.prol
                                        #   in Loop: Header=BB49_59 Depth=2
	movb	224(%rsp), %al
	notb	%al
	movb	%al, (%r13)
	movl	$1, %esi
.LBB49_70:                              # %for.body.425.preheader.split
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	je	.LBB49_73
# BB#71:                                # %for.body.425.preheader.split.split
                                        #   in Loop: Header=BB49_59 Depth=2
	movl	%ebx, %eax
	subl	%esi, %eax
	leaq	225(%rsp), %rcx
	leaq	(%rcx,%rsi), %rcx
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rdx
	imulq	%rsi, %rdx
	leaq	(%rdx,%r13), %rdx
	incq	%rsi
	imulq	%rdi, %rsi
	leaq	(%rsi,%r13), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB49_72:                              # %for.body.425
                                        #   Parent Loop BB49_39 Depth=1
                                        #     Parent Loop BB49_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-1(%rcx), %bl
	notb	%bl
	movb	%bl, (%rdx,%rdi)
	movb	(%rcx), %bl
	notb	%bl
	movb	%bl, (%rsi,%rdi)
	addq	$2, %rcx
	addq	%r15, %rdi
	addl	$-2, %eax
	jne	.LBB49_72
.LBB49_73:                              # %for.end.436
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	88(%rsp), %r10          # 8-byte Reload
	movb	224(%rsp,%r10), %al
	movb	%al, (%r13,%r11)
	movq	96(%rsp), %r15          # 8-byte Reload
	jmp	.LBB49_96
.LBB49_76:                              # %for.cond.318.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	152(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB49_96
# BB#77:                                # %for.body.321.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movq	%r13, %rcx
	movl	$0, %eax
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	16(%rsp), %rdi          # 8-byte Reload
	je	.LBB49_79
	.align	16, 0x90
.LBB49_78:                              # %for.body.321.prol
                                        #   Parent Loop BB49_39 Depth=1
                                        #     Parent Loop BB49_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	304(%rsp,%rax), %dl
	movb	%dl, (%rcx)
	incq	%rax
	addq	%rsi, %rcx
	cmpl	%eax, %edi
	jne	.LBB49_78
.LBB49_79:                              # %for.body.321.preheader.split
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	144(%rsp), %rcx         # 8-byte Reload
	cmpl	$3, %ecx
	jb	.LBB49_96
# BB#80:                                # %for.body.321.preheader.split.split
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	152(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	leaq	3(%rax), %r8
	movq	136(%rsp), %rdx         # 8-byte Reload
	imulq	%rdx, %r8
	leaq	307(%rsp), %rsi
	leaq	(%rsi,%rax), %rsi
	leaq	2(%rax), %rdi
	imulq	%rdx, %rdi
	movq	%rdx, %rbx
	imulq	%rax, %rbx
	incq	%rax
	imulq	%rdx, %rax
	movq	%r13, %rbp
	.align	16, 0x90
.LBB49_81:                              # %for.body.321
                                        #   Parent Loop BB49_39 Depth=1
                                        #     Parent Loop BB49_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-3(%rsi), %dl
	movb	%dl, (%rbx,%rbp)
	movb	-2(%rsi), %dl
	movb	%dl, (%rax,%rbp)
	movb	-1(%rsi), %dl
	movb	%dl, (%rdi,%rbp)
	movb	(%rsi), %dl
	movb	%dl, (%r8,%rbp)
	addq	%r15, %rbp
	addq	$4, %rsi
	addl	$-4, %ecx
	jne	.LBB49_81
	jmp	.LBB49_96
.LBB49_91:                              # %for.cond.394.preheader
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	8(%rsp), %rdx           # 8-byte Reload
	testq	%rdx, %rdx
	movq	%r13, %rax
	leaq	224(%rsp), %rcx
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	72(%rsp), %r9           # 8-byte Reload
	movq	88(%rsp), %r10          # 8-byte Reload
	movq	96(%rsp), %r15          # 8-byte Reload
	je	.LBB49_95
	.align	16, 0x90
.LBB49_92:                              # %for.body.397
                                        #   Parent Loop BB49_39 Depth=1
                                        #     Parent Loop BB49_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %dl
	je	.LBB49_94
# BB#93:                                # %if.then.401
                                        #   in Loop: Header=BB49_92 Depth=3
	movb	(%rcx), %bl
	notb	%bl
	movb	%bl, (%rax)
.LBB49_94:                              # %for.inc.411
                                        #   in Loop: Header=BB49_92 Depth=3
	shrq	%rdx
	incq	%rcx
	addq	%rsi, %rax
	testq	%rdx, %rdx
	jne	.LBB49_92
.LBB49_95:                              # %if.end.415
                                        #   in Loop: Header=BB49_59 Depth=2
	movb	224(%rsp,%r10), %al
	movb	%al, (%r13,%r11)
	.align	16, 0x90
.LBB49_96:                              # %if.end.443
                                        #   in Loop: Header=BB49_59 Depth=2
	testl	%r9d, %r9d
	je	.LBB49_98
# BB#97:                                # %if.then.445
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	128(%rsp), %rdx         # 8-byte Reload
	movzbl	(%r13,%rdx), %eax
	xorl	$255, %eax
	imull	124(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r13,%rdx)
.LBB49_98:                              # %if.end.462
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB49_100
# BB#99:                                # %if.then.464
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	112(%rsp), %rdx         # 8-byte Reload
	movzbl	(%r13,%rdx), %eax
	xorl	$255, %eax
	imull	196(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r13,%rdx)
.LBB49_100:                             # %if.end.481
                                        #   in Loop: Header=BB49_59 Depth=2
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	movq	160(%rsp), %rbp         # 8-byte Reload
	je	.LBB49_105
# BB#101:                               # %if.then.483
                                        #   in Loop: Header=BB49_59 Depth=2
	movzbl	224(%rsp,%r10), %eax
	cmpl	$255, %eax
	je	.LBB49_102
# BB#103:                               # %if.else.493
                                        #   in Loop: Header=BB49_59 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	movzbl	(%r13,%rcx), %eax
	orl	192(%rsp), %eax         # 4-byte Folded Reload
	andb	$-9, %al
	jmp	.LBB49_104
	.align	16, 0x90
.LBB49_102:                             # %if.then.489
                                        #   in Loop: Header=BB49_59 Depth=2
	movl	192(%rsp), %eax         # 4-byte Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
.LBB49_104:                             # %if.end.503
                                        #   in Loop: Header=BB49_59 Depth=2
	movb	%al, (%r13,%rcx)
.LBB49_105:                             # %if.end.503
                                        #   in Loop: Header=BB49_59 Depth=2
	incq	%r13
	incq	%r12
	movq	200(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	jg	.LBB49_59
	jmp	.LBB49_106
	.align	16, 0x90
.LBB49_40:                              #   in Loop: Header=BB49_39 Depth=1
	movq	%r14, %r13
.LBB49_106:                             # %for.end.507
                                        #   in Loop: Header=BB49_39 Depth=1
	addq	(%rsp), %r13            # 8-byte Folded Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r13, %r14
	jg	.LBB49_39
.LBB49_107:                             # %cleanup
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	pdf14_mark_fill_rectangle, .Lfunc_end49-pdf14_mark_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pdf14_device_copy_params,@function
gs_pdf14_device_copy_params:            # @gs_pdf14_device_copy_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp395:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp396:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp397:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp398:
	.cfi_def_cfa_offset 48
.Ltmp399:
	.cfi_offset %rbx, -32
.Ltmp400:
	.cfi_offset %r14, -24
.Ltmp401:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	832(%r14), %eax
	movl	%eax, 832(%rbx)
	movl	836(%r14), %eax
	movl	%eax, 836(%rbx)
	leaq	856(%rbx), %rdi
	leaq	856(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	leaq	864(%rbx), %rdi
	leaq	864(%r14), %rsi
	movl	$16, %edx
	callq	memcpy
	movl	880(%r14), %eax
	movl	%eax, 880(%rbx)
	leaq	884(%rbx), %rdi
	leaq	884(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	leaq	892(%rbx), %rdi
	leaq	892(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	leaq	900(%rbx), %rdi
	leaq	900(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	leaq	908(%rbx), %rdi
	leaq	908(%r14), %rsi
	movl	$16, %edx
	callq	memcpy
	movq	928(%r14), %rax
	movq	%rax, 928(%rbx)
	movl	1052(%r14), %eax
	movl	%eax, 1052(%rbx)
	leaq	1064(%rbx), %rdi
	leaq	1064(%r14), %rsi
	movl	$40, %edx
	callq	memcpy
	cmpq	$0, 1104(%rbx)
	jne	.LBB50_4
# BB#1:                                 # %if.then
	movq	24(%rbx), %rdi
	callq	gsicc_new_device_profile_array
	movq	%rax, %r15
	movq	%r15, 1104(%rbx)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1680(%r14)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, (%r15)
	movq	8(%rsp), %rcx
	movq	1104(%rbx), %rdx
	movl	168(%rcx), %esi
	movl	%esi, 168(%rdx)
	movups	152(%rcx), %xmm0
	movups	%xmm0, 152(%rdx)
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB50_3
# BB#2:                                 # %do.body.52
	incq	288(%rax)
.LBB50_3:                               # %do.end.59
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	8(%rsp), %rax
	movq	72(%rax), %rcx
	movq	%rcx, 72(%r15)
	movups	56(%rax), %xmm0
	movups	%xmm0, 56(%r15)
	movl	172(%rax), %eax
	movl	%eax, 172(%r15)
.LBB50_4:                               # %if.end.69
	movl	1112(%r14), %eax
	movl	%eax, 1112(%rbx)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end50:
	.size	gs_pdf14_device_copy_params, .Lfunc_end50-gs_pdf14_device_copy_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI51_0:
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
.LCPI51_1:
	.quad	255                     # 0xff
	.quad	255                     # 0xff
.LCPI51_4:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI51_2:
	.long	1132396544              # float 255
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI51_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pdf14_copy_alpha_color,@function
pdf14_copy_alpha_color:                 # @pdf14_copy_alpha_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp403:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp404:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp405:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp406:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp407:
	.cfi_def_cfa_offset 56
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp408:
	.cfi_def_cfa_offset 736
.Ltmp409:
	.cfi_offset %rbx, -56
.Ltmp410:
	.cfi_offset %r12, -48
.Ltmp411:
	.cfi_offset %r13, -40
.Ltmp412:
	.cfi_offset %r14, -32
.Ltmp413:
	.cfi_offset %r15, -24
.Ltmp414:
	.cfi_offset %rbp, -16
	movl	%ecx, 520(%rsp)         # 4-byte Spill
	movl	%edx, 100(%rsp)         # 4-byte Spill
	movq	%rsi, %r10
	movq	4152(%rdi), %rcx
	movq	(%rcx), %r14
	movslq	64(%r14), %r15
	movl	32(%r14), %eax
	movl	%eax, 392(%rsp)         # 4-byte Spill
	movl	36(%r14), %edx
	movl	%edx, 476(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	movl	%r15d, %esi
	cmovel	%edx, %esi
	movq	%rsi, 512(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	%r15d, %edx
	cmovel	%eax, %edx
	movq	%rdx, 480(%rsp)         # 8-byte Spill
	cmpq	$0, 80(%r14)
	je	.LBB51_152
# BB#1:                                 # %if.end
	movl	776(%rsp), %ebp
	movq	752(%rsp), %rsi
	movq	%rdi, %rdx
	movl	4180(%rdx), %edi
	movl	%edi, 300(%rsp)         # 4-byte Spill
	movl	4188(%rdx), %edi
	movl	%edi, 296(%rsp)         # 4-byte Spill
	movl	40(%rcx), %r13d
	movslq	60(%r14), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movl	20(%r14), %ecx
	movl	%ecx, 388(%rsp)         # 4-byte Spill
	movl	68(%r14), %eax
	leal	-1(%rax), %edi
	movl	4196(%rdx), %ecx
	movl	%ecx, 228(%rsp)         # 4-byte Spill
	movq	4200(%rdx), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	40(%r14), %ecx
	movl	%ecx, 460(%rsp)         # 4-byte Spill
	movl	$0, 420(%rsp)           # 4-byte Folded Spill
	testl	%ecx, %ecx
	je	.LBB51_3
# BB#2:                                 # %if.then.21
	leal	(,%rdi,8), %ecx
	movq	%rsi, %rbx
	shrq	%cl, %rbx
	movzbl	%bl, %ecx
	movl	%ecx, 420(%rsp)         # 4-byte Spill
.LBB51_3:                               # %if.end.23
	testl	%ebp, %ebp
	je	.LBB51_24
# BB#4:                                 # %if.then.25
	movq	760(%rsp), %r11
	movq	%r8, %rbp
	movq	%r9, %r12
	testl	%r13d, %r13d
	je	.LBB51_16
# BB#5:                                 # %for.cond.preheader
	movq	%rdi, 464(%rsp)         # 8-byte Spill
	movq	%r10, 504(%rsp)         # 8-byte Spill
	cmpl	$2, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jl	.LBB51_25
# BB#6:                                 # %for.body.lr.ph
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	-2(%rax), %esi
	leaq	1(%rsi), %r9
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	leaq	16(%rax), %rcx
	xorl	%edi, %edi
	movq	%r9, %rbx
	andq	%rcx, %rbx
	je	.LBB51_13
# BB#7:                                 # %vector.body.preheader
	leaq	1(%rsi), %rax
	andq	%rcx, %rax
	addq	$-16, %rax
	movq	%rax, %rcx
	shrq	$4, %rcx
	xorl	%edi, %edi
	btq	$4, %rax
	jb	.LBB51_9
# BB#8:                                 # %vector.body.prol
	movdqu	8(%r11), %xmm0
	movdqu	24(%r11), %xmm1
	psrlw	$8, %xmm0
	psrlw	$8, %xmm1
	movdqa	.LCPI51_0(%rip), %xmm2  # xmm2 = [255,255,255,255,255,255,255,255]
	pand	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	movq	%xmm0, 608(%rsp)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, 616(%rsp)
	movl	$16, %edi
.LBB51_9:                               # %vector.body.preheader.split
	testq	%rcx, %rcx
	je	.LBB51_12
# BB#10:                                # %vector.body.preheader.split.split
	incq	%rsi
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rsi, %rax
	subq	%rdi, %rax
	leaq	56(%r11,%rdi,2), %rsi
	leaq	608(%rsp), %rcx
	leaq	24(%rdi,%rcx), %rdi
	movdqa	.LCPI51_0(%rip), %xmm0  # xmm0 = [255,255,255,255,255,255,255,255]
	.align	16, 0x90
.LBB51_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rsi), %xmm1
	movdqu	-32(%rsi), %xmm2
	psrlw	$8, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, -24(%rdi)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	movq	%xmm2, -16(%rdi)
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	psrlw	$8, %xmm1
	psrlw	$8, %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, -8(%rdi)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	movq	%xmm2, (%rdi)
	addq	$64, %rsi
	addq	$32, %rdi
	addq	$-32, %rax
	jne	.LBB51_11
.LBB51_12:
	movq	%rbx, %rdi
.LBB51_13:                              # %middle.block
	cmpq	%rdi, %r9
	je	.LBB51_25
# BB#14:                                # %for.body.preheader
	leaq	8(%r11,%rdi,2), %rax
	leaq	608(%rsp,%rdi), %rcx
	movq	464(%rsp), %rsi         # 8-byte Reload
	subl	%edi, %esi
	.align	16, 0x90
.LBB51_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rax), %bl
	movb	%bl, (%rcx)
	addq	$2, %rax
	incq	%rcx
	decl	%esi
	jne	.LBB51_15
	jmp	.LBB51_25
.LBB51_24:                              # %if.else.59
	movq	%r8, %rbp
	movq	%r9, %r12
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r10, 504(%rsp)         # 8-byte Spill
	movq	4136(%rdx), %rax
	leaq	608(%rsp), %rcx
	movq	%rdi, 464(%rsp)         # 8-byte Spill
	movq	%rdx, %rbx
	callq	*(%rax)
	movq	%rbx, %rdx
	jmp	.LBB51_25
.LBB51_16:                              # %for.cond.38.preheader
	movq	%rdi, 464(%rsp)         # 8-byte Spill
	movq	%r10, 504(%rsp)         # 8-byte Spill
	cmpl	$2, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	jl	.LBB51_25
# BB#17:                                # %for.body.41.lr.ph
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	-2(%rax), %ecx
	leaq	1(%rcx), %r9
	movabsq	$8589934560, %rax       # imm = 0x1FFFFFFE0
	leaq	28(%rax), %rbx
	xorl	%esi, %esi
	andq	%r9, %rbx
	je	.LBB51_21
# BB#18:                                # %vector.body85.preheader
	leaq	12(%r11), %rsi
	leaq	610(%rsp), %rdi
	incq	%rcx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rcx, %rax
	pxor	%xmm0, %xmm0
	movdqa	.LCPI51_1(%rip), %xmm1  # xmm1 = [255,255]
	.align	16, 0x90
.LBB51_19:                              # %vector.body85
                                        # =>This Inner Loop Header: Depth=1
	movd	-4(%rsi), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpckldq	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	psrlq	$8, %xmm3
	psrlq	$8, %xmm2
	pxor	%xmm1, %xmm3
	pxor	%xmm1, %xmm2
	pand	%xmm1, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, %ecx
	movw	%cx, -2(%rdi)
	pand	%xmm1, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, %ecx
	movw	%cx, (%rdi)
	addq	$8, %rsi
	addq	$4, %rdi
	addq	$-4, %rax
	jne	.LBB51_19
# BB#20:
	movq	%rbx, %rsi
.LBB51_21:                              # %middle.block86
	cmpq	%rsi, %r9
	je	.LBB51_25
# BB#22:                                # %for.body.41.preheader
	leaq	8(%r11,%rsi,2), %rax
	leaq	608(%rsp,%rsi), %rcx
	movq	464(%rsp), %rdi         # 8-byte Reload
	subl	%esi, %edi
	.align	16, 0x90
.LBB51_23:                              # %for.body.41
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	shrl	$8, %esi
	notl	%esi
	movb	%sil, (%rcx)
	addq	$2, %rax
	incq	%rcx
	decl	%edi
	jne	.LBB51_23
.LBB51_25:                              # %if.end.60
	movss	4176(%rdx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI51_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI51_3(%rip), %xmm0
	movq	%rdx, %rbx
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 396(%rsp)         # 4-byte Spill
	movq	464(%rsp), %rax         # 8-byte Reload
	cltq
	movq	%rax, 496(%rsp)         # 8-byte Spill
	movb	%cl, 608(%rsp,%rax)
	movl	$255, 380(%rsp)         # 4-byte Folded Spill
	cmpl	$0, 476(%rsp)           # 4-byte Folded Reload
	je	.LBB51_27
# BB#26:                                # %if.then.68
	movss	4172(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI51_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI51_3(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	notl	%eax
	movzbl	%al, %eax
	movl	%eax, 380(%rsp)         # 4-byte Spill
.LBB51_27:                              # %if.end.75
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	movl	736(%rsp), %edx
	movl	44(%r14), %r8d
	movq	%rbp, %r9
	cmpl	%r9d, %r8d
	movl	%r13d, %r10d
	jle	.LBB51_29
# BB#28:                                # %if.then.79
	movl	100(%rsp), %eax         # 4-byte Reload
	subl	%r9d, %eax
	addl	%r8d, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	addl	%r9d, %edx
	subl	%r8d, %edx
	movl	%r8d, %r9d
.LBB51_29:                              # %if.end.94
	movq	%r12, %rbp
	movl	744(%rsp), %ecx
	movl	48(%r14), %r12d
	cmpl	%ebp, %r12d
	jle	.LBB51_31
# BB#30:                                # %if.then.100
	subl	%r12d, %ebp
	leal	(%rcx,%rbp), %ecx
	imull	520(%rsp), %ebp         # 4-byte Folded Reload
	movslq	%ebp, %rsi
	subq	%rsi, 504(%rsp)         # 8-byte Folded Spill
	movl	%r12d, %ebp
.LBB51_31:                              # %if.end.114
	leal	(%r9,%rdx), %esi
	movl	52(%r14), %eax
	movl	56(%r14), %ebx
	movl	%eax, %edi
	subl	%r9d, %edi
	cmpl	%eax, %esi
	cmovgl	%edi, %edx
	leal	(%rbp,%rcx), %eax
	movl	%ebx, %esi
	subl	%ebp, %esi
	cmpl	%ebx, %eax
	cmovlel	%ecx, %esi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	cmpl	96(%r14), %r9d
	jge	.LBB51_33
# BB#32:                                # %if.then.142
	movl	%r9d, 96(%r14)
.LBB51_33:                              # %if.end.146
	cmpl	100(%r14), %ebp
	jge	.LBB51_35
# BB#34:                                # %if.then.152
	movl	%ebp, 100(%r14)
.LBB51_35:                              # %if.end.156
	leal	(%rdx,%r9), %ecx
	cmpl	104(%r14), %ecx
	jle	.LBB51_37
# BB#36:                                # %if.then.163
	movl	%ecx, 104(%r14)
.LBB51_37:                              # %if.end.168
	movq	184(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbp), %ecx
	cmpl	108(%r14), %ecx
	jle	.LBB51_39
# BB#38:                                # %if.then.175
	movl	%ecx, 108(%r14)
.LBB51_39:                              # %if.end.180
	movq	184(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB51_152
# BB#40:                                # %for.cond.199.preheader.lr.ph
	movq	%rdx, 488(%rsp)         # 8-byte Spill
	movq	16(%rsp), %r13          # 8-byte Reload
	imull	%r15d, %r13d
	movq	%r13, 448(%rsp)         # 8-byte Spill
	movq	80(%r14), %rbx
	subl	%r8d, %r9d
	movslq	%r9d, %rsi
	leaq	(%rbx,%rsi), %rdx
	subl	%r12d, %ebp
	movl	%ebp, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	imull	%ecx, %eax
	cltq
	addq	%rax, %rdx
	movq	%rdx, 256(%rsp)         # 8-byte Spill
	movq	464(%rsp), %r11         # 8-byte Reload
	movl	%r11d, %edx
	imull	%r15d, %edx
	movl	%edx, 424(%rsp)         # 4-byte Spill
	addq	%rsi, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	-2(%rax), %eax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	movl	%ecx, %edi
	imull	%ebp, %edi
	movslq	%edi, %r14
	addq	%rsi, %r14
	movq	%r14, 80(%rsp)          # 8-byte Spill
	movl	%ecx, %edi
	imull	%ebp, %edi
	movslq	%edi, %r8
	addq	%rsi, %r8
	movq	%r8, 72(%rsp)           # 8-byte Spill
	leaq	1(%rax), %rdi
	movq	%rdi, 352(%rsp)         # 8-byte Spill
	imull	%ecx, %ebp
	movslq	%ebp, %r12
	addq	%rsi, %r12
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rcx
	movabsq	$8589934560, %rsi       # imm = 0x1FFFFFFE0
	andq	%rsi, %rcx
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	setne	%r9b
	leaq	-32(%rcx), %rax
	shrq	$5, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leaq	1(%r11), %rcx
	movq	%rcx, 440(%rsp)         # 8-byte Spill
	andq	%rsi, %rcx
	movq	%rcx, 432(%rsp)         # 8-byte Spill
	setne	%dl
	leaq	-32(%rcx), %rcx
	shrq	$5, %rcx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	cmpl	$1, %r15d
	sete	%r13b
	andb	%dl, %r13b
	movb	%r13b, 387(%rsp)        # 1-byte Spill
	andl	$1, %ecx
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	cmpl	$1, %r15d
	sete	%cl
	andb	%dl, %cl
	movb	%cl, 319(%rsp)          # 1-byte Spill
	cmpl	$1, %r15d
	sete	%cl
	andb	%r9b, %cl
	movb	%cl, 99(%rsp)           # 1-byte Spill
	andl	$1, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	addq	$24, %rsi
	andq	%rdi, %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	setne	%cl
	cmpl	$1, %r15d
	sete	%al
	andb	%cl, %al
	movb	%al, 119(%rsp)          # 1-byte Spill
	cmpl	$1, %r15d
	sete	%al
	andb	%r9b, %al
	movb	%al, 295(%rsp)          # 1-byte Spill
	movq	512(%rsp), %rax         # 8-byte Reload
	movq	448(%rsp), %rdx         # 8-byte Reload
	leal	(%rax,%rdx), %ecx
	movq	480(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rcx), %esi
	movslq	520(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movq	16(%rsp), %r9           # 8-byte Reload
	movslq	%esi, %rax
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movslq	424(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 424(%rsp)         # 8-byte Spill
	movq	360(%rsp), %rcx         # 8-byte Reload
	leaq	(%r14,%rcx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	528(%rsp,%rcx), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	leaq	(%r8,%rcx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rdi, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	pcmpeqd	%xmm5, %xmm5
	movl	396(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	movl	%eax, 348(%rsp)         # 4-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r11), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	528(%rsp,%r11), %rax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	leaq	(%r12,%r11), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leal	1(%r9), %eax
	movl	%eax, 360(%rsp)         # 4-byte Spill
	leaq	(%r15,%r15), %rbp
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	leaq	(,%r15,4), %rax
	movq	%rax, 520(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB51_41:                              # %for.cond.199.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_43 Depth 2
                                        #       Child Loop BB51_51 Depth 3
                                        #       Child Loop BB51_58 Depth 3
                                        #       Child Loop BB51_67 Depth 3
                                        #       Child Loop BB51_72 Depth 3
                                        #       Child Loop BB51_75 Depth 3
                                        #       Child Loop BB51_128 Depth 3
                                        #       Child Loop BB51_135 Depth 3
                                        #       Child Loop BB51_137 Depth 3
                                        #       Child Loop BB51_114 Depth 3
                                        #       Child Loop BB51_121 Depth 3
                                        #       Child Loop BB51_97 Depth 3
                                        #       Child Loop BB51_102 Depth 3
                                        #       Child Loop BB51_105 Depth 3
	movq	488(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	%rbx, %r14
	jle	.LBB51_151
# BB#42:                                #   in Loop: Header=BB51_41 Depth=1
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rax
	movq	248(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rsi
	imulq	%rsi, %rax
	movq	72(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rax), %rdi
	movq	%rdi, 200(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rax), %rbx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	imulq	%rsi, %rcx
	movq	64(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rcx), %rsi
	movq	%rsi, 280(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rcx), %rsi
	movq	%rsi, 328(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rcx), %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	leaq	(%rdi,%rcx), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rcx), %rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %rcx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r11d
	movq	256(%rsp), %r12         # 8-byte Reload
	.align	16, 0x90
.LBB51_43:                              # %for.body.202
                                        #   Parent Loop BB51_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB51_51 Depth 3
                                        #       Child Loop BB51_58 Depth 3
                                        #       Child Loop BB51_67 Depth 3
                                        #       Child Loop BB51_72 Depth 3
                                        #       Child Loop BB51_75 Depth 3
                                        #       Child Loop BB51_128 Depth 3
                                        #       Child Loop BB51_135 Depth 3
                                        #       Child Loop BB51_137 Depth 3
                                        #       Child Loop BB51_114 Depth 3
                                        #       Child Loop BB51_121 Depth 3
                                        #       Child Loop BB51_97 Depth 3
                                        #       Child Loop BB51_102 Depth 3
                                        #       Child Loop BB51_105 Depth 3
	movl	%r10d, %r13d
	testl	%r10d, %r10d
	je	.LBB51_44
# BB#60:                                # %for.cond.205.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%rcx, 512(%rsp)         # 8-byte Spill
	movq	%rbp, %r10
	testl	%r9d, %r9d
	jle	.LBB51_76
# BB#61:                                # %overflow.checked228
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpb	$0, 387(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	432(%rsp), %rdx         # 8-byte Reload
	je	.LBB51_69
# BB#62:                                # %vector.memcheck246
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	328(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	leaq	528(%rsp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB51_64
# BB#63:                                # %vector.memcheck246
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	cmpq	336(%rsp), %rax         # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB51_69
.LBB51_64:                              # %vector.body224.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	$0, 264(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB51_66
# BB#65:                                # %vector.body224.prol
                                        #   in Loop: Header=BB51_43 Depth=2
	movupd	(%r12), %xmm0
	movdqu	16(%r12), %xmm1
	movapd	%xmm0, 528(%rsp)
	movdqa	%xmm1, 544(%rsp)
	movl	$32, %ecx
.LBB51_66:                              # %vector.body224.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	$0, 272(%rsp)           # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB51_69
	.align	16, 0x90
.LBB51_67:                              # %vector.body224
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r12,%rcx), %xmm0
	movups	16(%r12,%rcx), %xmm1
	movaps	%xmm0, 528(%rsp,%rcx)
	movaps	%xmm1, 544(%rsp,%rcx)
	movupd	32(%r12,%rcx), %xmm0
	movdqu	48(%r12,%rcx), %xmm1
	movapd	%xmm0, 560(%rsp,%rcx)
	movdqa	%xmm1, 576(%rsp,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB51_67
# BB#68:                                #   in Loop: Header=BB51_43 Depth=2
	movq	%rdx, %rax
	.align	16, 0x90
.LBB51_69:                              # %middle.block225
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	%rax, 440(%rsp)         # 8-byte Folded Reload
	je	.LBB51_76
# BB#70:                                # %for.body.208.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	%eax, %edx
	orl	$1, %edx
	movl	360(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %esi
	subl	%edx, %esi
	movl	%r9d, %ecx
	subl	%edx, %ecx
	testb	$3, %sil
	je	.LBB51_73
# BB#71:                                # %for.body.208.prol.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%r15, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%r12), %rdx
	leal	1(%rax), %edi
	movl	%ebp, %esi
	subl	%edi, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB51_72:                              # %for.body.208.prol
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rdx), %bl
	movb	%bl, 528(%rsp,%rax)
	incq	%rax
	addq	%r15, %rdx
	incl	%esi
	jne	.LBB51_72
.LBB51_73:                              # %for.body.208.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$3, %ecx
	jb	.LBB51_76
# BB#74:                                # %for.body.208.preheader.split.split
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	%r9d, %ecx
	subl	%eax, %ecx
	leaq	531(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	leaq	3(%rax), %r8
	imulq	%r15, %r8
	leaq	2(%rax), %rdi
	imulq	%r15, %rdi
	movq	%r15, %rsi
	imulq	%rax, %rsi
	incq	%rax
	imulq	%r15, %rax
	movq	%r12, %rbp
	.align	16, 0x90
.LBB51_75:                              # %for.body.208
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi,%rbp), %bl
	movb	%bl, -3(%rdx)
	movb	(%rax,%rbp), %bl
	movb	%bl, -2(%rdx)
	movb	(%rdi,%rbp), %bl
	movb	%bl, -1(%rdx)
	movb	(%r8,%rbp), %bl
	movb	%bl, (%rdx)
	addq	$4, %rdx
	addq	520(%rsp), %rbp         # 8-byte Folded Reload
	addl	$-4, %ecx
	jne	.LBB51_75
	jmp	.LBB51_76
	.align	16, 0x90
.LBB51_44:                              # %for.cond.218.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%rcx, 512(%rsp)         # 8-byte Spill
	cmpl	$2, %r9d
	jl	.LBB51_59
# BB#45:                                # %overflow.checked267
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpb	$0, 295(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	320(%rsp), %rdx         # 8-byte Reload
	je	.LBB51_53
# BB#46:                                # %vector.memcheck285
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	leaq	528(%rsp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB51_48
# BB#47:                                # %vector.memcheck285
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	cmpq	216(%rsp), %rax         # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB51_53
.LBB51_48:                              # %vector.body263.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB51_50
# BB#49:                                # %vector.body263.prol
                                        #   in Loop: Header=BB51_43 Depth=2
	movdqu	(%r12), %xmm0
	movdqu	16(%r12), %xmm1
	pxor	%xmm5, %xmm0
	pxor	%xmm5, %xmm1
	movdqa	%xmm0, 528(%rsp)
	movdqa	%xmm1, 544(%rsp)
	movl	$32, %ecx
.LBB51_50:                              # %vector.body263.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	$0, 176(%rsp)           # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB51_53
	.align	16, 0x90
.LBB51_51:                              # %vector.body263
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	(%r12,%rcx), %xmm0
	movdqu	16(%r12,%rcx), %xmm1
	pxor	%xmm5, %xmm0
	pxor	%xmm5, %xmm1
	movdqa	%xmm0, 528(%rsp,%rcx)
	movdqa	%xmm1, 544(%rsp,%rcx)
	movdqu	32(%r12,%rcx), %xmm0
	movdqu	48(%r12,%rcx), %xmm1
	pxor	%xmm5, %xmm0
	pxor	%xmm5, %xmm1
	movdqa	%xmm0, 560(%rsp,%rcx)
	movdqa	%xmm1, 576(%rsp,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB51_51
# BB#52:                                #   in Loop: Header=BB51_43 Depth=2
	movq	%rdx, %rax
.LBB51_53:                              # %middle.block264
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	%rax, 352(%rsp)         # 8-byte Folded Reload
	je	.LBB51_59
# BB#54:                                # %for.body.221.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%r9d, %edx
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB51_56
# BB#55:                                # %for.body.221.prol
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%rax, %rdx
	imulq	%r15, %rdx
	movb	(%r12,%rdx), %dl
	notb	%dl
	movb	%dl, 528(%rsp,%rax)
	orq	$1, %rax
.LBB51_56:                              # %for.body.221.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	464(%rsp), %rdx         # 8-byte Reload
	cmpl	%ecx, %edx
	je	.LBB51_59
# BB#57:                                # %for.body.221.preheader.split.split
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	464(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	leaq	529(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	movq	%r15, %rsi
	imulq	%rax, %rsi
	leaq	(%rsi,%r12), %rsi
	incq	%rax
	imulq	%r15, %rax
	leaq	(%rax,%r12), %rax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB51_58:                              # %for.body.221
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rsi,%rdi), %bl
	notb	%bl
	movb	%bl, -1(%rdx)
	movb	(%rax,%rdi), %bl
	notb	%bl
	movb	%bl, (%rdx)
	addq	$2, %rdx
	addq	%rbp, %rdi
	addl	$-2, %ecx
	jne	.LBB51_58
	.align	16, 0x90
.LBB51_59:                              # %for.end.232
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%rbp, %r10
	movq	424(%rsp), %rax         # 8-byte Reload
	movb	(%r12,%rax), %al
	movq	496(%rsp), %rcx         # 8-byte Reload
	movb	%al, 528(%rsp,%rcx)
.LBB51_76:                              # %if.end.238
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	%r11d, %eax
	cmpl	$2, 768(%rsp)
	jne	.LBB51_78
# BB#77:                                # %if.then.241
                                        #   in Loop: Header=BB51_43 Depth=2
	sarl	$2, %eax
	cltq
	movq	504(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	leal	(%r11,%r11), %ecx
	notl	%ecx
	andb	$6, %cl
	shrl	%cl, %eax
	andl	$3, %eax
	leal	(%rax,%rax,4), %ecx
	jmp	.LBB51_79
	.align	16, 0x90
.LBB51_78:                              # %if.else.251
                                        #   in Loop: Header=BB51_43 Depth=2
	sarl	%eax
	cltq
	movq	504(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %ecx
	movl	%ecx, %eax
	andl	$15, %eax
	shrl	$4, %ecx
	testb	$1, %r11b
	cmovnel	%eax, %ecx
.LBB51_79:                              # %if.end.264
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%r10, %rbp
	movl	%r13d, %r10d
	testl	%ecx, %ecx
	je	.LBB51_150
# BB#80:                                # %if.end.264
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%r15, %r13
	cmpl	$15, %ecx
	movl	396(%rsp), %eax         # 4-byte Reload
	je	.LBB51_83
# BB#81:                                # %if.then.270
                                        #   in Loop: Header=BB51_43 Depth=2
	imull	$17, %ecx, %eax
	movl	348(%rsp), %ecx         # 4-byte Reload
	cmpl	$255, %ecx
	je	.LBB51_83
# BB#82:                                # %if.then.275
                                        #   in Loop: Header=BB51_43 Depth=2
	imull	%ecx, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	sarl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	sarl	$8, %eax
.LBB51_83:                              # %if.end.289
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%r9, %r15
	movl	%r10d, %ebp
	cmpl	$0, 388(%rsp)           # 4-byte Folded Reload
	movq	496(%rsp), %rcx         # 8-byte Reload
	movb	%al, 608(%rsp,%rcx)
	je	.LBB51_88
# BB#84:                                # %if.then.291
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$0, 476(%rsp)           # 4-byte Folded Reload
	je	.LBB51_86
# BB#85:                                # %cond.true.296
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%r11, 480(%rsp)         # 8-byte Spill
	movq	504(%rsp), %rbx         # 8-byte Reload
	movq	408(%rsp), %rax         # 8-byte Reload
	leaq	(%r12,%rax), %rsi
	movq	400(%rsp), %rax         # 8-byte Reload
	leaq	(%r12,%rax), %rdx
	cmpl	$0, 460(%rsp)           # 4-byte Folded Reload
	movl	$0, %eax
	cmoveq	%rax, %rdx
	movl	$255, (%rsp)
	movl	420(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %r8d
	leaq	528(%rsp), %rdi
	leaq	608(%rsp), %rcx
	movq	464(%rsp), %r9          # 8-byte Reload
	callq	art_pdf_composite_knockout_simple_8
	jmp	.LBB51_87
.LBB51_88:                              # %if.else.315
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%r11, 480(%rsp)         # 8-byte Spill
	movq	504(%rsp), %rbx         # 8-byte Reload
	movq	304(%rsp), %rax         # 8-byte Reload
	movq	4144(%rax), %r8
	leaq	528(%rsp), %rdi
	leaq	608(%rsp), %rsi
	movq	464(%rsp), %rdx         # 8-byte Reload
	movl	300(%rsp), %ecx         # 4-byte Reload
	callq	art_pdf_composite_pixel_alpha_8
	pxor	%xmm7, %xmm7
	movapd	.LCPI51_4(%rip), %xmm6  # xmm6 = [255,255,255,255]
	jmp	.LBB51_89
.LBB51_86:                              # %if.else.311
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%r11, 480(%rsp)         # 8-byte Spill
	movq	504(%rsp), %rbx         # 8-byte Reload
	leaq	528(%rsp), %rdi
	leaq	608(%rsp), %rsi
	movq	464(%rsp), %rdx         # 8-byte Reload
	callq	art_pdf_knockoutisolated_group_8
.LBB51_87:                              # %if.end.318
                                        #   in Loop: Header=BB51_43 Depth=2
	pxor	%xmm7, %xmm7
	movapd	.LCPI51_4(%rip), %xmm0  # xmm0 = [255,255,255,255]
	movapd	%xmm0, %xmm6
.LBB51_89:                              # %if.end.318
                                        #   in Loop: Header=BB51_43 Depth=2
	pcmpeqd	%xmm5, %xmm5
	movl	%ebp, %r10d
	movq	%r15, %r9
	movq	%r13, %r15
	movq	%rbx, 504(%rsp)         # 8-byte Spill
	testl	%r10d, %r10d
	je	.LBB51_106
# BB#90:                                # %for.cond.321.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	testl	%r9d, %r9d
	jle	.LBB51_141
# BB#91:                                # %overflow.checked115
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpb	$0, 319(%rsp)           # 1-byte Folded Reload
	movl	$0, %eax
	movq	432(%rsp), %rdx         # 8-byte Reload
	je	.LBB51_99
# BB#92:                                # %vector.memcheck
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	cmpq	336(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB51_94
# BB#93:                                # %vector.memcheck
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	leaq	528(%rsp), %rcx
	cmpq	%rax, %rcx
	movl	$0, %eax
	jbe	.LBB51_99
.LBB51_94:                              # %vector.body111.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	$0, 264(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB51_96
# BB#95:                                # %vector.body111.prol
                                        #   in Loop: Header=BB51_43 Depth=2
	movapd	528(%rsp), %xmm0
	movdqa	544(%rsp), %xmm1
	movupd	%xmm0, (%r12)
	movdqu	%xmm1, 16(%r12)
	movl	$32, %ecx
.LBB51_96:                              # %vector.body111.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	$0, 272(%rsp)           # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB51_99
	.align	16, 0x90
.LBB51_97:                              # %vector.body111
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movaps	528(%rsp,%rcx), %xmm0
	movaps	544(%rsp,%rcx), %xmm1
	movups	%xmm0, (%r12,%rcx)
	movups	%xmm1, 16(%r12,%rcx)
	movapd	560(%rsp,%rcx), %xmm0
	movdqa	576(%rsp,%rcx), %xmm1
	movupd	%xmm0, 32(%r12,%rcx)
	movdqu	%xmm1, 48(%r12,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB51_97
# BB#98:                                #   in Loop: Header=BB51_43 Depth=2
	movq	%rdx, %rax
.LBB51_99:                              # %middle.block112
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	%rax, 440(%rsp)         # 8-byte Folded Reload
	je	.LBB51_141
# BB#100:                               # %for.body.324.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	%eax, %edx
	orl	$1, %edx
	movl	360(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %esi
	subl	%edx, %esi
	movl	%r9d, %ecx
	subl	%edx, %ecx
	testb	$3, %sil
	je	.LBB51_103
# BB#101:                               # %for.body.324.prol.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%r15, %rdx
	imulq	%rax, %rdx
	leaq	(%rdx,%r12), %rdx
	leal	1(%rax), %edi
	movl	%ebp, %esi
	subl	%edi, %esi
	andl	$3, %esi
	negl	%esi
	.align	16, 0x90
.LBB51_102:                             # %for.body.324.prol
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	528(%rsp,%rax), %bl
	movb	%bl, (%rdx)
	incq	%rax
	addq	%r15, %rdx
	incl	%esi
	jne	.LBB51_102
.LBB51_103:                             # %for.body.324.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$3, %ecx
	jb	.LBB51_141
# BB#104:                               # %for.body.324.preheader.split.split
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	%r9d, %ecx
	subl	%eax, %ecx
	leaq	3(%rax), %r8
	imulq	%r15, %r8
	leaq	531(%rsp), %rdx
	leaq	(%rdx,%rax), %rsi
	leaq	2(%rax), %rdi
	imulq	%r15, %rdi
	movq	%r15, %rbx
	imulq	%rax, %rbx
	incq	%rax
	imulq	%r15, %rax
	movq	%r12, %rbp
	.align	16, 0x90
.LBB51_105:                             # %for.body.324
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-3(%rsi), %dl
	movb	%dl, (%rbx,%rbp)
	movb	-2(%rsi), %dl
	movb	%dl, (%rax,%rbp)
	movb	-1(%rsi), %dl
	movb	%dl, (%rdi,%rbp)
	movb	(%rsi), %dl
	movb	%dl, (%r8,%rbp)
	addq	520(%rsp), %rbp         # 8-byte Folded Reload
	addq	$4, %rsi
	addl	$-4, %ecx
	jne	.LBB51_105
	jmp	.LBB51_141
.LBB51_106:                             # %if.else.333
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$0, 296(%rsp)           # 4-byte Folded Reload
	je	.LBB51_107
# BB#122:                               # %if.then.335
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$0, 228(%rsp)           # 4-byte Folded Reload
	je	.LBB51_136
# BB#123:                               # %for.cond.338.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$2, %r9d
	movq	448(%rsp), %r8          # 8-byte Reload
	jl	.LBB51_140
# BB#124:                               # %overflow.checked187
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpb	$0, 119(%rsp)           # 1-byte Folded Reload
	movl	$0, %ecx
	movq	104(%rsp), %rdx         # 8-byte Reload
	je	.LBB51_130
# BB#125:                               # %vector.memcheck205
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	cmpq	216(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB51_126
# BB#127:                               # %vector.memcheck205
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	leaq	528(%rsp), %rcx
	cmpq	%rax, %rcx
	movl	$0, %eax
	movl	$0, %ecx
	jbe	.LBB51_130
	jmp	.LBB51_128
.LBB51_107:                             # %for.cond.390.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$2, %r9d
	movq	448(%rsp), %rbp         # 8-byte Reload
	jl	.LBB51_140
# BB#108:                               # %overflow.checked148
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpb	$0, 99(%rsp)            # 1-byte Folded Reload
	movl	$0, %eax
	movq	320(%rsp), %rdx         # 8-byte Reload
	je	.LBB51_116
# BB#109:                               # %vector.memcheck166
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	cmpq	216(%rsp), %rax         # 8-byte Folded Reload
	ja	.LBB51_111
# BB#110:                               # %vector.memcheck166
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	512(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%r14), %rax
	leaq	528(%rsp), %rcx
	cmpq	%rax, %rcx
	movl	$0, %eax
	jbe	.LBB51_116
.LBB51_111:                             # %vector.body144.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB51_113
# BB#112:                               # %vector.body144.prol
                                        #   in Loop: Header=BB51_43 Depth=2
	movdqa	528(%rsp), %xmm0
	pxor	%xmm5, %xmm0
	movdqa	544(%rsp), %xmm1
	pxor	%xmm5, %xmm1
	movdqu	%xmm0, (%r12)
	movdqu	%xmm1, 16(%r12)
	movl	$32, %ecx
.LBB51_113:                             # %vector.body144.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	$0, 176(%rsp)           # 8-byte Folded Reload
	movq	%rdx, %rax
	je	.LBB51_116
	.align	16, 0x90
.LBB51_114:                             # %vector.body144
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	528(%rsp,%rcx), %xmm0
	pxor	%xmm5, %xmm0
	movdqa	544(%rsp,%rcx), %xmm1
	pxor	%xmm5, %xmm1
	movdqu	%xmm0, (%r12,%rcx)
	movdqu	%xmm1, 16(%r12,%rcx)
	movdqa	560(%rsp,%rcx), %xmm0
	pxor	%xmm5, %xmm0
	movdqa	576(%rsp,%rcx), %xmm1
	pxor	%xmm5, %xmm1
	movdqu	%xmm0, 32(%r12,%rcx)
	movdqu	%xmm1, 48(%r12,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB51_114
# BB#115:                               #   in Loop: Header=BB51_43 Depth=2
	movq	%rdx, %rax
.LBB51_116:                             # %middle.block145
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	%rax, 352(%rsp)         # 8-byte Folded Reload
	je	.LBB51_140
# BB#117:                               # %for.body.393.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%r9d, %edx
	subl	%ecx, %edx
	testb	$1, %dl
	je	.LBB51_119
# BB#118:                               # %for.body.393.prol
                                        #   in Loop: Header=BB51_43 Depth=2
	movb	528(%rsp,%rax), %dl
	notb	%dl
	movq	%rax, %rsi
	imulq	%r15, %rsi
	movb	%dl, (%r12,%rsi)
	orq	$1, %rax
.LBB51_119:                             # %for.body.393.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	464(%rsp), %rdx         # 8-byte Reload
	cmpl	%ecx, %edx
	je	.LBB51_140
# BB#120:                               # %for.body.393.preheader.split.split
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	464(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	leaq	529(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	movq	%r15, %rsi
	imulq	%rax, %rsi
	leaq	(%rsi,%r12), %rsi
	incq	%rax
	imulq	%r15, %rax
	leaq	(%rax,%r12), %rax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB51_121:                             # %for.body.393
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	-1(%rdx), %bl
	notb	%bl
	movb	%bl, (%rsi,%rdi)
	movb	(%rdx), %bl
	notb	%bl
	movb	%bl, (%rax,%rdi)
	addq	$2, %rdx
	addq	%rbp, %rdi
	addl	$-2, %ecx
	jne	.LBB51_121
	jmp	.LBB51_140
.LBB51_136:                             # %for.cond.362.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	136(%rsp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	movq	%r12, %rax
	leaq	528(%rsp), %rcx
	je	.LBB51_140
	.align	16, 0x90
.LBB51_137:                             # %for.body.365
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %dl
	je	.LBB51_139
# BB#138:                               # %if.then.369
                                        #   in Loop: Header=BB51_137 Depth=3
	movb	(%rcx), %bl
	notb	%bl
	movb	%bl, (%rax)
.LBB51_139:                             # %for.inc.379
                                        #   in Loop: Header=BB51_137 Depth=3
	shrq	%rdx
	incq	%rcx
	addq	%r15, %rax
	testq	%rdx, %rdx
	jne	.LBB51_137
	jmp	.LBB51_140
.LBB51_126:                             #   in Loop: Header=BB51_43 Depth=2
	xorl	%eax, %eax
	.align	16, 0x90
.LBB51_128:                             # %vector.body183
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	(%r12,%rax), %xmm0      # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	movd	4(%r12,%rax), %xmm1     # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pandn	%xmm6, %xmm0
	pandn	%xmm6, %xmm1
	movd	528(%rsp,%rax), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movd	532(%rsp,%rax), %xmm3   # xmm3 = mem[0],zero,zero,zero
	punpcklbw	%xmm7, %xmm2    # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1],xmm2[2],xmm7[2],xmm2[3],xmm7[3],xmm2[4],xmm7[4],xmm2[5],xmm7[5],xmm2[6],xmm7[6],xmm2[7],xmm7[7]
	punpcklwd	%xmm7, %xmm2    # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1],xmm2[2],xmm7[2],xmm2[3],xmm7[3]
	punpcklbw	%xmm7, %xmm3    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3],xmm3[4],xmm7[4],xmm3[5],xmm7[5],xmm3[6],xmm7[6],xmm3[7],xmm7[7]
	punpcklwd	%xmm7, %xmm3    # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1],xmm3[2],xmm7[2],xmm3[3],xmm7[3]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psrld	$8, %xmm0
	psrld	$8, %xmm1
	pxor	%xmm6, %xmm0
	pxor	%xmm6, %xmm1
	pand	%xmm6, %xmm0
	packuswb	%xmm0, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, (%r12,%rax)
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, 4(%r12,%rax)
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.LBB51_128
# BB#129:                               #   in Loop: Header=BB51_43 Depth=2
	movq	24(%rsp), %rcx          # 8-byte Reload
.LBB51_130:                             # %middle.block184
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpq	%rcx, 352(%rsp)         # 8-byte Folded Reload
	je	.LBB51_140
# BB#131:                               # %for.body.341.preheader
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	%ecx, %eax
	orl	$1, %eax
	movl	%r9d, %edx
	subl	%eax, %edx
	testb	$1, %dl
	je	.LBB51_133
# BB#132:                               # %for.body.341.prol
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	%rcx, %rdx
	imulq	%r15, %rdx
	movzbl	(%r12,%rdx), %esi
	xorl	$255, %esi
	movzbl	528(%rsp,%rcx), %edi
	imull	%esi, %edi
	shrl	$8, %edi
	notl	%edi
	movb	%dil, (%r12,%rdx)
	orq	$1, %rcx
.LBB51_133:                             # %for.body.341.preheader.split
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	464(%rsp), %rdx         # 8-byte Reload
	cmpl	%eax, %edx
	je	.LBB51_140
# BB#134:                               # %for.body.341.preheader.split.split
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	464(%rsp), %rax         # 8-byte Reload
	subl	%ecx, %eax
	leaq	529(%rsp), %rdx
	leaq	(%rdx,%rcx), %rdx
	movq	%r15, %rsi
	imulq	%rcx, %rsi
	leaq	(%rsi,%r12), %rsi
	incq	%rcx
	imulq	%r15, %rcx
	leaq	(%rcx,%r12), %rcx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB51_135:                             # %for.body.341
                                        #   Parent Loop BB51_41 Depth=1
                                        #     Parent Loop BB51_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rsi,%rdi), %ebp
	xorl	$255, %ebp
	movzbl	-1(%rdx), %ebx
	imull	%ebp, %ebx
	shrl	$8, %ebx
	notl	%ebx
	movb	%bl, (%rsi,%rdi)
	movzbl	(%rcx,%rdi), %ebp
	xorl	$255, %ebp
	movzbl	(%rdx), %ebx
	imull	%ebp, %ebx
	shrl	$8, %ebx
	notl	%ebx
	movb	%bl, (%rcx,%rdi)
	addq	$2, %rdx
	addq	%r8, %rdi
	addl	$-2, %eax
	jne	.LBB51_135
.LBB51_140:                             # %for.end.404
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	496(%rsp), %rax         # 8-byte Reload
	movb	528(%rsp,%rax), %al
	movq	424(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%r12,%rcx)
.LBB51_141:                             # %if.end.411
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$0, 392(%rsp)           # 4-byte Folded Reload
	je	.LBB51_143
# BB#142:                               # %if.then.413
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	368(%rsp), %rdx         # 8-byte Reload
	movzbl	(%r12,%rdx), %eax
	xorl	$255, %eax
	movq	496(%rsp), %rcx         # 8-byte Reload
	movzbl	608(%rsp,%rcx), %ecx
	xorl	$255, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	subl	$-128, %eax
	shrl	$8, %eax
	leal	128(%rax,%rcx), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r12,%rdx)
.LBB51_143:                             # %if.end.433
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$0, 476(%rsp)           # 4-byte Folded Reload
	je	.LBB51_145
# BB#144:                               # %if.then.435
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	408(%rsp), %rdx         # 8-byte Reload
	movzbl	(%r12,%rdx), %eax
	xorl	$255, %eax
	imull	380(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	shrl	$8, %eax
	movl	$255, %ecx
	subl	%eax, %ecx
	movb	%cl, (%r12,%rdx)
.LBB51_145:                             # %if.end.453
                                        #   in Loop: Header=BB51_43 Depth=2
	cmpl	$0, 460(%rsp)           # 4-byte Folded Reload
	movq	448(%rsp), %rbp         # 8-byte Reload
	movq	480(%rsp), %r11         # 8-byte Reload
	je	.LBB51_150
# BB#146:                               # %if.then.455
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	496(%rsp), %rax         # 8-byte Reload
	movzbl	528(%rsp,%rax), %eax
	cmpl	$255, %eax
	je	.LBB51_147
# BB#148:                               # %if.else.465
                                        #   in Loop: Header=BB51_43 Depth=2
	movq	400(%rsp), %rcx         # 8-byte Reload
	movzbl	(%r12,%rcx), %eax
	orl	420(%rsp), %eax         # 4-byte Folded Reload
	andb	$-9, %al
	jmp	.LBB51_149
.LBB51_147:                             # %if.then.461
                                        #   in Loop: Header=BB51_43 Depth=2
	movl	420(%rsp), %eax         # 4-byte Reload
	movq	400(%rsp), %rcx         # 8-byte Reload
.LBB51_149:                             # %if.end.475
                                        #   in Loop: Header=BB51_43 Depth=2
	movb	%al, (%r12,%rcx)
.LBB51_150:                             # %if.end.475
                                        #   in Loop: Header=BB51_43 Depth=2
	incq	%r12
	movq	512(%rsp), %rcx         # 8-byte Reload
	incq	%rcx
	incl	%r11d
	movq	488(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB51_43
.LBB51_151:                             # %for.end.479
                                        #   in Loop: Header=BB51_41 Depth=1
	movq	%r14, %rbx
	movq	256(%rsp), %rax         # 8-byte Reload
	addq	192(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movq	248(%rsp), %rcx         # 8-byte Reload
	incq	%rcx
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	movq	504(%rsp), %rax         # 8-byte Reload
	addq	160(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 504(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB51_41
.LBB51_152:                             # %cleanup
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	pdf14_copy_alpha_color, .Lfunc_end51-pdf14_copy_alpha_color
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_push_transparency_group,@function
pdf14_push_transparency_group:          # @pdf14_push_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp415:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp416:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp417:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp418:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp419:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp420:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp421:
	.cfi_def_cfa_offset 128
.Ltmp422:
	.cfi_offset %rbx, -56
.Ltmp423:
	.cfi_offset %r12, -48
.Ltmp424:
	.cfi_offset %r13, -40
.Ltmp425:
	.cfi_offset %r14, -32
.Ltmp426:
	.cfi_offset %r15, -24
.Ltmp427:
	.cfi_offset %rbp, -16
	movl	%r9d, 64(%rsp)          # 4-byte Spill
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edx, %r12d
	movq	%rdi, %rbx
	movq	192(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	184(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	176(%rsp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	168(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	160(%rsp), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	152(%rsp), %r9d
	movl	144(%rsp), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	136(%rsp), %r15d
	movq	(%rbx), %r13
	cmpl	$0, 36(%r13)
	movb	$1, %al
	movl	128(%rsp), %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	jne	.LBB52_2
# BB#1:                                 # %lor.rhs
	cmpl	$0, 20(%r13)
	setne	%al
.LBB52_2:                               # %lor.end
	movzbl	%al, %ecx
	movl	40(%r13), %eax
	testl	%r12d, %r12d
	sete	%dl
	movzbl	%dl, %edx
	incl	%r9d
	movq	16(%rbx), %rdi
	movq	%rdi, (%rsp)
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%r15d, %r8d
	callq	pdf14_buf_new
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB52_27
# BB#3:                                 # %if.end
	movl	%r12d, 16(%r14)
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 20(%r14)
	movl	60(%rsp), %eax          # 4-byte Reload
	movb	%al, 24(%r14)
	movl	64(%rsp), %eax          # 4-byte Reload
	movb	%al, 25(%r14)
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 28(%r14)
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 128(%r14)
	movq	8(%rbx), %rax
	movq	%rax, 112(%r14)
	movq	$0, 8(%rbx)
	movq	%r13, (%r14)
	movq	%r14, (%rbx)
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	jne	.LBB52_27
# BB#4:                                 # %if.end
	movq	80(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB52_27
# BB#5:                                 # %while.body.i
	movq	%rbx, %r15
	movq	%r13, %rbx
	testl	%r12d, %r12d
	jne	.LBB52_8
# BB#6:                                 # %if.end.i
	testl	%ecx, %ecx
	jne	.LBB52_13
# BB#7:                                 # %land.lhs.true.8.i
	cmpl	$0, 20(%rbx)
	je	.LBB52_9
.LBB52_8:                               # %if.then.26
	movslq	64(%r14), %rax
	movl	68(%r14), %ecx
	cmpl	$1, 36(%r14)
	sbbl	$-1, %ecx
	cmpl	$0, 32(%r14)
	setne	%dl
	movzbl	%dl, %edx
	addl	%ecx, %edx
	cmpl	$0, 40(%r14)
	setne	%cl
	movzbl	%cl, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rdx
	imulq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB52_12:                              # %if.end.49
	cmpl	$0, 20(%r14)
	je	.LBB52_27
.LBB52_13:                              # %if.then.52
	movq	16(%r15), %rdi
	movl	68(%r14), %esi
	imull	64(%r14), %esi
	movl	$.L.str.38, %edx
	callq	*64(%rdi)
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.LBB52_28
# BB#14:                                # %if.end.69
	xorl	%ebp, %ebp
	cmpl	$0, 16(%r14)
	je	.LBB52_15
# BB#29:                                # %if.then.72
	movslq	68(%r14), %rcx
	movslq	64(%r14), %rdx
	imulq	%rcx, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	jmp	.LBB52_27
.LBB52_28:                              # %if.then.63
	movq	16(%r15), %rdi
	xorl	%esi, %esi
	movl	$.L.str.38, %edx
	callq	*24(%rdi)
	movl	$.L.str.38, %edi
	movl	$.L.str.39, %esi
	movl	$888, %edx              # imm = 0x378
	xorl	%ecx, %ecx
	movl	$-25, %r8d
	movl	$.L.str.40, %r9d
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_throw_imp            # TAILCALL
.LBB52_15:
	movq	%rbx, %rcx
	movq	%rcx, %rax
	movq	%r15, %rdx
	.align	16, 0x90
.LBB52_16:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 16(%rax)
	jne	.LBB52_20
# BB#17:                                # %if.end.85
                                        #   in Loop: Header=BB52_16 Depth=1
	cmpl	$0, 20(%rax)
	jne	.LBB52_20
# BB#18:                                # %if.end.89
                                        #   in Loop: Header=BB52_16 Depth=1
	movq	%rax, %rbp
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB52_16
# BB#19:
	movq	%rcx, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB52_23
.LBB52_20:                              # %if.else.94
	testq	%rbp, %rbp
	je	.LBB52_21
# BB#22:                                # %if.else.98
	movq	136(%rbp), %rcx
	movq	208(%rcx), %rcx
	jmp	.LBB52_23
.LBB52_9:                               # %if.then.41
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	je	.LBB52_10
# BB#11:                                # %if.else.44
	movq	16(%r15), %r8
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$0, 8(%rsp)
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	pdf14_preserve_backdrop_cm
	jmp	.LBB52_12
.LBB52_21:
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB52_23:                              # %if.end.100
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	je	.LBB52_24
# BB#25:                                # %if.else.103
	movq	16(%rdx), %r8
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, (%rsp)
	movl	$0, 8(%rsp)
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	pdf14_preserve_backdrop_cm
	jmp	.LBB52_26
.LBB52_24:                              # %if.then.102
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	pdf14_preserve_backdrop
.LBB52_26:                              # %if.end.106
	movq	8(%r14), %rdi
	movq	80(%r14), %rsi
	movslq	68(%r14), %rax
	movslq	64(%r14), %rdx
	imulq	%rax, %rdx
	callq	memcpy
	xorl	%ebp, %ebp
.LBB52_27:                              # %cleanup
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB52_10:                              # %if.then.43
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf14_preserve_backdrop
	jmp	.LBB52_12
.Lfunc_end52:
	.size	pdf14_push_transparency_group, .Lfunc_end52-pdf14_push_transparency_group
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI53_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	8                       # 0x8
	.long	2                       # 0x2
	.text
	.align	16, 0x90
	.type	pdf14_pop_transparency_group,@function
pdf14_pop_transparency_group:           # @pdf14_pop_transparency_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp428:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp429:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp430:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp431:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp432:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp433:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp434:
	.cfi_def_cfa_offset 304
.Ltmp435:
	.cfi_offset %rbx, -56
.Ltmp436:
	.cfi_offset %r12, -48
.Ltmp437:
	.cfi_offset %r13, -40
.Ltmp438:
	.cfi_offset %r14, -32
.Ltmp439:
	.cfi_offset %r15, -24
.Ltmp440:
	.cfi_offset %rbp, -16
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%rdi, %r11
	movq	(%rsi), %rbx
	movq	(%rbx), %r15
	movq	112(%rbx), %r12
	movl	4188(%r9), %ebp
	movl	4196(%r9), %r10d
	movq	4200(%r9), %rsi
	xorl	%edi, %edi
	testq	%r12, %r12
	je	.LBB53_2
# BB#1:                                 # %if.else
	movq	(%r12), %rax
	movq	(%rax), %rdi
.LBB53_2:                               # %if.end
	movl	$-15, %eax
	testq	%r15, %r15
	je	.LBB53_61
# BB#3:                                 # %do.body
	movl	44(%rbx), %eax
	cmpl	96(%rbx), %eax
	jle	.LBB53_5
# BB#4:                                 # %if.then.11
	movl	%eax, 96(%rbx)
.LBB53_5:                               # %if.end.18
	movl	52(%rbx), %eax
	cmpl	104(%rbx), %eax
	jge	.LBB53_7
# BB#6:                                 # %if.then.25
	movl	%eax, 104(%rbx)
.LBB53_7:                               # %if.end.32
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movl	48(%rbx), %eax
	cmpl	100(%rbx), %eax
	jle	.LBB53_9
# BB#8:                                 # %if.then.39
	movl	%eax, 100(%rbx)
.LBB53_9:                               # %if.end.46
	movl	%ebp, %esi
	movq	%r11, %rbp
	movl	56(%rbx), %eax
	movl	108(%rbx), %r13d
	cmpl	%r13d, %eax
	jge	.LBB53_11
# BB#10:                                # %if.then.54
	movl	%eax, 108(%rbx)
	movl	%eax, %r13d
.LBB53_11:                              # %do.body.62
	movl	44(%r15), %r11d
	cmpl	96(%r15), %r11d
	jle	.LBB53_13
# BB#12:                                # %if.then.70
	movl	%r11d, 96(%r15)
.LBB53_13:                              # %if.end.77
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movl	52(%r15), %r14d
	cmpl	104(%r15), %r14d
	jge	.LBB53_15
# BB#14:                                # %if.then.85
	movl	%r14d, 104(%r15)
.LBB53_15:                              # %if.end.92
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movl	%r10d, 96(%rsp)         # 4-byte Spill
	movq	%r8, 120(%rsp)          # 8-byte Spill
	movl	48(%r15), %r9d
	cmpl	100(%r15), %r9d
	jle	.LBB53_17
# BB#16:                                # %if.then.100
	movl	%r9d, 100(%r15)
.LBB53_17:                              # %if.end.107
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	56(%r15), %r10d
	cmpl	108(%r15), %r10d
	jge	.LBB53_19
# BB#18:                                # %if.then.115
	movl	%r10d, 108(%r15)
	movl	108(%rbx), %r13d
.LBB53_19:                              # %do.end.124
	movl	96(%rbx), %ecx
	movl	100(%rbx), %edx
	cmpl	%r9d, %edx
	cmovgel	%edx, %r9d
	cmpl	%r10d, %r13d
	cmovlel	%r13d, %r10d
	cmpl	%r11d, %ecx
	cmovgel	%ecx, %r11d
	movl	104(%rbx), %eax
	cmpl	%r14d, %eax
	cmovlel	%eax, %r14d
	movl	%r14d, 132(%rsp)        # 4-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	movq	%rdi, %rbp
	je	.LBB53_25
# BB#20:                                # %do.body.191
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB53_23
# BB#21:                                # %do.end.199
	decq	8(%rax)
	jne	.LBB53_24
# BB#22:                                # %do.end.213
	movq	16(%rax), %rdi
	movl	$.L.str.41, %edx
	movq	%rax, %rsi
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	%r11d, 68(%rsp)         # 4-byte Spill
	movl	%r9d, %ebp
	movl	%r10d, 64(%rsp)         # 4-byte Spill
	callq	*24(%rax)
	movl	64(%rsp), %r10d         # 4-byte Reload
	movl	%ebp, %r9d
	movl	68(%rsp), %r11d         # 4-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	movq	$0, (%rsi)
.LBB53_23:                              # %if.then.237
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movl	$.L.str.41, %edx
	movl	%r11d, %r13d
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movl	%r9d, %r15d
	movl	%r10d, %r14d
	callq	*24(%rdi)
	movl	%r14d, %r10d
	movl	%r15d, %r9d
	movq	72(%rsp), %r15          # 8-byte Reload
	movl	%r13d, %r11d
.LBB53_24:                              # %if.end.241
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	$0, 8(%rax)
.LBB53_25:                              # %if.end.243
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%r12, 8(%rax)
	movq	$0, 112(%rbx)
	cmpl	$0, 120(%rbx)
	jne	.LBB53_57
# BB#26:                                # %if.end.248
	testq	%rbp, %rbp
	je	.LBB53_29
# BB#27:                                # %land.lhs.true
	cmpq	$0, 80(%rbp)
	jne	.LBB53_29
# BB#28:                                # %land.lhs.true.251
	movzbl	24(%rbp), %eax
	cmpl	$255, %eax
	je	.LBB53_57
.LBB53_29:                              # %if.end.255
	movq	136(%r15), %rax
	movq	208(%rax), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.LBB53_31
# BB#30:                                # %if.then.258
	movq	144(%rcx), %rdx
	movq	120(%rsp), %rsi         # 8-byte Reload
	cmpq	144(%rsi), %rdx
	setne	%dl
	movzbl	%dl, %edx
.LBB53_31:                              # %if.end.265
	cmpq	$0, 160(%rax)
	je	.LBB53_37
# BB#32:                                # %land.lhs.true.269
	testl	%edx, %edx
	jne	.LBB53_38
# BB#33:                                # %land.lhs.true.269
	movl	128(%rsp), %edx         # 4-byte Reload
	cmpl	%edx, (%rax)
	je	.LBB53_34
	jmp	.LBB53_38
.LBB53_37:                              # %lor.lhs.false
	testl	%edx, %edx
	je	.LBB53_34
.LBB53_38:                              # %if.then.274
	cmpl	%r10d, %r9d
	jge	.LBB53_57
# BB#39:                                # %if.then.274
	cmpl	132(%rsp), %r11d        # 4-byte Folded Reload
	jge	.LBB53_57
# BB#40:                                # %if.then.280
	movl	%r10d, 64(%rsp)         # 4-byte Spill
	movl	%r9d, 104(%rsp)         # 4-byte Spill
	movl	%r11d, 68(%rsp)         # 4-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	72(%rbx), %r12d
	subl	128(%rsp), %r12d        # 4-byte Folded Reload
	movl	(%rax), %r14d
	leal	(%r14,%r12), %ebp
	movq	120(%rsp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB53_53
# BB#41:                                # %if.then.280
	testq	%rcx, %rcx
	je	.LBB53_53
# BB#42:                                # %if.then.291
	movl	$0, 244(%rsp)
	movaps	.LCPI53_0(%rip), %xmm0  # xmm0 = [0,1,8,2]
	movaps	%xmm0, 224(%rsp)
	movl	$0, 240(%rsp)
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	8(%rdi), %r9
	movl	$0, (%rsp)
	leaq	224(%rsp), %r8
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	gsicc_get_link_profile
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB53_53
# BB#43:                                # %if.then.297
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	cmpl	$0, 116(%r13)
	jne	.LBB53_49
# BB#44:                                # %if.then.299
	movl	128(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r14d
	movl	%ebp, %esi
	jne	.LBB53_45
# BB#47:                                # %if.else.322
	movq	80(%rbx), %rbp
	jmp	.LBB53_48
.LBB53_34:                              # %if.else.396
	cmpl	%r10d, %r9d
	jge	.LBB53_57
# BB#35:                                # %if.else.396
	cmpl	132(%rsp), %r11d        # 4-byte Folded Reload
	jge	.LBB53_57
# BB#36:                                # %if.then.402
	movl	68(%r15), %eax
	movq	136(%rsp), %rdx         # 8-byte Reload
	movl	40(%rdx), %ecx
	movq	16(%rdx), %rdx
	movq	%rdx, 56(%rsp)
	movl	96(%rsp), %edx          # 4-byte Reload
	movl	%edx, 48(%rsp)
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, 40(%rsp)
	movl	100(%rsp), %edx         # 4-byte Reload
	movl	%edx, 32(%rsp)
	movq	104(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movl	%r11d, %ecx
	jmp	.LBB53_56
.LBB53_53:                              # %if.then.365
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	imull	64(%rbx), %ebp
	movl	$.L.str.26, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	movq	72(%rsp), %rbp          # 8-byte Reload
	movl	128(%rsp), %ecx         # 4-byte Reload
	je	.LBB53_61
# BB#54:                                # %if.end.376
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	16(%rax), %rax
	movq	80(%rbx), %rdi
	movl	60(%rbx), %esi
	movl	64(%rbx), %edx
	movq	44(%rbx), %r8
	movq	52(%rbx), %r9
	movl	%r12d, 16(%rsp)
	movq	%rax, %r12
	movl	%r14d, 8(%rsp)
	movq	%r13, (%rsp)
	callq	gs_transform_color_buffer_generic
	movq	(%r12), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str.35, %edx
	callq	*24(%rdi)
	movq	%rbp, %rdx
	movq	%r13, 80(%rbx)
	jmp	.LBB53_55
.LBB53_45:                              # %if.then.302
	movq	%r13, 120(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	16(%rcx), %rdi
	imull	64(%rbx), %esi
	movl	$.L.str.26, %edx
	movl	%eax, %r13d
	callq	*64(%rdi)
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB53_61
# BB#46:                                # %if.end.310
	movl	64(%rbx), %eax
	movl	%eax, %ecx
	imull	%eax, %r12d
	imull	%r14d, %eax
	movslq	%eax, %rdi
	addq	%rbp, %rdi
	imull	%r13d, %ecx
	movslq	%ecx, %rsi
	addq	80(%rbx), %rsi
	movslq	%r12d, %rdx
	callq	memcpy
	movl	%r13d, %eax
	movq	120(%rsp), %r13         # 8-byte Reload
.LBB53_48:                              # %if.end.324
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	52(%rbx), %esi
	movl	56(%rbx), %r12d
	subl	48(%rbx), %r12d
	subl	44(%rbx), %esi
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movl	64(%rbx), %edx
	movl	60(%rbx), %ecx
	movl	%esi, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, (%rsp)
	movzbl	%al, %esi
	leaq	184(%rsp), %rbp
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rbp, %rdi
	callq	gsicc_init_buffer
	movq	136(%r15), %rax
	movl	60(%rbx), %ecx
	movl	64(%rbx), %edx
	movzbl	(%rax), %esi
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, (%rsp)
	leaq	144(%rsp), %r12
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r12, %rdi
	callq	gsicc_init_buffer
	movq	80(%rbx), %r8
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	movq	120(%rsp), %r9          # 8-byte Reload
	callq	*8(%r13)
.LBB53_49:                              # %if.end.348
	movq	%r13, %rdi
	callq	gsicc_release_link
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	16(%rax), %r12
	cmpl	128(%rsp), %r14d        # 4-byte Folded Reload
	je	.LBB53_50
# BB#51:                                # %if.end.348
	movl	116(%r13), %eax
	testl	%eax, %eax
	jne	.LBB53_50
# BB#52:                                # %if.then.354
	movq	(%r12), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str.35, %edx
	callq	*24(%rdi)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 80(%rbx)
	movq	72(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB53_55
.LBB53_50:
	movq	72(%rsp), %rdx          # 8-byte Reload
.LBB53_55:                              # %if.end.387
	movl	68(%rsp), %ecx          # 4-byte Reload
	movl	104(%rsp), %r9d         # 4-byte Reload
	movl	64(%rsp), %r8d          # 4-byte Reload
	movl	68(%r15), %eax
	movl	%eax, 68(%rbx)
	movl	72(%r15), %eax
	movl	%eax, 72(%rbx)
	movl	68(%r15), %eax
	movq	136(%r15), %rsi
	movl	4(%rsi), %edi
	movq	200(%rsi), %rbp
	movq	(%r12), %rsi
	movq	%rsi, 56(%rsp)
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, 40(%rsp)
	movq	%rbp, 24(%rsp)
	movl	%edi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rdx, %rbp
.LBB53_56:                              # %exit
	movl	132(%rsp), %r8d         # 4-byte Reload
	callq	pdf14_compose_group
.LBB53_57:                              # %exit
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
	testq	%rbp, %rbp
	je	.LBB53_60
# BB#58:                                # %exit
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	48(%rax), %eax
	testl	%eax, %eax
	jle	.LBB53_60
# BB#59:                                # %if.then.413
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	$1, 52(%rax)
.LBB53_60:                              # %do.end.417
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rbp
	movq	112(%rbx), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	88(%rbx), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	80(%rbx), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	136(%rbx), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movq	8(%rbx), %rsi
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L.str.35, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	xorl	%eax, %eax
.LBB53_61:                              # %cleanup
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	pdf14_pop_transparency_group, .Lfunc_end53-pdf14_pop_transparency_group
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_pattern_trans_render,@function
pdf14_pattern_trans_render:             # @pdf14_pattern_trans_render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp441:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp442:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp443:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp444:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp445:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp446:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp447:
	.cfi_def_cfa_offset 80
.Ltmp448:
	.cfi_offset %rbx, -56
.Ltmp449:
	.cfi_offset %r12, -48
.Ltmp450:
	.cfi_offset %r13, -40
.Ltmp451:
	.cfi_offset %r14, -32
.Ltmp452:
	.cfi_offset %r15, -24
.Ltmp453:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, %ebx
	movq	1216(%rdi), %r14
	movq	24440(%rdi), %r13
	movq	8(%r13), %r12
	movq	192(%r12), %rax
	callq	*104(%rax)
	movl	%eax, %ebp
	testl	%ebx, %ebx
	jne	.LBB54_8
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	js	.LBB54_8
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 220(%r12)
	jne	.LBB54_8
# BB#3:                                 # %if.then.4
	cmpl	$0, (%r14)
	je	.LBB54_5
# BB#4:                                 # %if.then.5
	movq	%r14, %rdi
	callq	gs_end_transparency_group
	jmp	.LBB54_7
.LBB54_5:                               # %if.else
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB54_8
# BB#6:                                 # %cleanup.thread
	leaq	16(%rsp), %rdx
	movl	$9, %esi
	movl	$8, %ecx
	movq	%r15, %rdi
	callq	*1664(%r15)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movq	16(%rsp), %r9
	cmovleq	%rcx, %r9
	movq	4152(%r9), %rsi
	movq	4144(%r9), %rdx
	movl	100(%r9), %ecx
	movq	8(%rsp), %rax
	movq	(%rax), %r8
	xorl	%edi, %edi
	callq	pdf14_pop_transparency_group
.LBB54_7:                               # %if.end.13
	movl	%eax, %ebp
	movq	8(%r13), %rax
	movl	$1, 220(%rax)
	movq	8(%r14), %rdi
	movq	192(%r12), %rax
	movq	24(%rax), %rsi
	movl	$.L.str.43, %edx
	callq	*24(%rdi)
	movq	192(%r12), %rax
	movq	$0, 24(%rax)
.LBB54_8:                               # %cleanup.24
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	pdf14_pattern_trans_render, .Lfunc_end54-pdf14_pattern_trans_render
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI55_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.text
	.align	16, 0x90
	.type	gx_update_pdf14_compositor,@function
gx_update_pdf14_compositor:             # @gx_update_pdf14_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp454:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp455:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp456:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp457:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp458:
	.cfi_def_cfa_offset 48
	subq	$5728, %rsp             # imm = 0x1660
.Ltmp459:
	.cfi_def_cfa_offset 5776
.Ltmp460:
	.cfi_offset %rbx, -48
.Ltmp461:
	.cfi_offset %r12, -40
.Ltmp462:
	.cfi_offset %r14, -32
.Ltmp463:
	.cfi_offset %r15, -24
.Ltmp464:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r12
	leaq	40(%rbx), %rsi
	leaq	(%rsp), %rdi
	movl	$704, %edx              # imm = 0x2C0
	callq	memcpy
	movl	16(%rbx), %eax
	movl	%eax, 660(%rsp)
	xorl	%r15d, %r15d
	movl	(%rsp), %eax
	cmpq	$11, %rax
	ja	.LBB55_43
# BB#1:                                 # %entry
	jmpq	*.LJTI55_0(,%rax,8)
.LBB55_2:                               # %sw.bb
	cmpl	$0, 700(%rsp)
	jne	.LBB55_43
# BB#3:                                 # %if.then
	movl	$0, 4180(%r12)
	movq	$0, 4168(%r12)
	movq	1728(%r12), %r14
	movq	%r14, %rdi
	callq	pdf14_determine_default_blend_cs
	movl	%eax, %ecx
	cmpl	$4, %eax
	ja	.LBB55_43
# BB#4:                                 # %if.then
	jmpq	*.LJTI55_1(,%rcx,8)
.LBB55_5:                               # %sw.bb.i.i
	leaq	704(%rsp), %rbp
	movl	$gs_pdf14_Gray_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	movq	%rbp, %rdi
	callq	memcpy
	movl	$1, 800(%rsp)
	movl	$1, 804(%rsp)
	movl	$255, 816(%rsp)
	movb	$0, 814(%rsp)
	movl	$256, 824(%rsp)         # imm = 0x100
	jmp	.LBB55_12
.LBB55_18:                              # %sw.bb.10
	cmpl	$0, 700(%rsp)
	jne	.LBB55_43
# BB#19:                                # %do.end
	movq	4224(%r12), %rax
	movq	%rax, 360(%rbp)
	movq	1728(%r12), %rsi
	movq	%rbp, %rdi
	callq	gx_set_cmap_procs
	leaq	704(%rsp), %rbx
	movl	$1616, %edx             # imm = 0x650
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movl	$252, 916(%rsp)
	movq	4136(%r12), %rax
	movq	1728(%r12), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*8(%rax)
	jmp	.LBB55_14
.LBB55_13:                              # %sw.bb.3
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_abort_trans_device
.LBB55_14:                              # %sw.bb.3
	movl	%eax, %r15d
	cmpl	$0, 4216(%r12)
	je	.LBB55_16
# BB#15:                                # %if.then.6
	movq	%r12, %rdi
	callq	devn_free_params
.LBB55_16:                              # %if.end.7
	leaq	96(%r12), %rdi
	movq	1728(%r12), %rsi
	addq	$96, %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	leaq	1144(%r12), %rdi
	xorl	%esi, %esi
	movl	$584, %edx              # imm = 0x248
	callq	memset
	movq	%r12, %rdi
	callq	gx_device_forward_fill_in_procs
	movq	$gx_forward_close_device, 1176(%r12)
	movq	$gx_forward_fill_rectangle, 1200(%r12)
	movq	$gx_forward_fill_rectangle_hl_color, 1576(%r12)
	movq	$gx_forward_tile_rectangle, 1208(%r12)
	movq	$gx_forward_copy_mono, 1216(%r12)
	movq	$gx_forward_copy_color, 1224(%r12)
	movq	$gx_forward_get_page_device, 1296(%r12)
	movq	$gx_forward_strip_tile_rectangle, 1416(%r12)
	movq	$gx_forward_copy_alpha, 1312(%r12)
	movq	$gx_forward_get_profile, 1680(%r12)
	movq	$gx_forward_set_graphics_type_tag, 1688(%r12)
	movq	$pdf14_forward_open_device, 1144(%r12)
	movq	$pdf14_forward_put_params, 1256(%r12)
	movq	$pdf14_forward_create_compositor, 1464(%r12)
	movq	4152(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB55_43
# BB#17:                                # %if.then.i
	callq	pdf14_ctx_free
	movq	$0, 4152(%r12)
	jmp	.LBB55_43
.LBB55_20:                              # %sw.bb.23
	leaq	(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_begin_transparency_group
	movl	%eax, %r15d
	jmp	.LBB55_43
.LBB55_21:                              # %sw.bb.25
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_end_transparency_group
	movl	%eax, %r15d
	jmp	.LBB55_43
.LBB55_22:                              # %sw.bb.27
	leaq	(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_begin_transparency_mask
	movl	%eax, %r15d
	jmp	.LBB55_43
.LBB55_23:                              # %sw.bb.29
	leaq	(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_end_transparency_mask
	movl	%eax, %r15d
	jmp	.LBB55_43
.LBB55_24:                              # %sw.bb.31
	movl	48(%rbx), %eax
	testb	$1, %al
	je	.LBB55_26
# BB#25:                                # %if.then.i.27
	movl	640(%rbx), %ecx
	movl	%ecx, 220(%rbp)
.LBB55_26:                              # %if.end.i.28
	testb	$2, %al
	je	.LBB55_28
# BB#27:                                # %if.then.5.i
	movl	644(%rbx), %ecx
	movl	%ecx, 248(%rbp)
.LBB55_28:                              # %if.end.7.i
	testb	$4, %al
	je	.LBB55_30
# BB#29:                                # %if.then.11.i
	movl	652(%rbx), %ecx
	movl	%ecx, 228(%rbp)
.LBB55_30:                              # %if.end.14.i
	testb	$8, %al
	je	.LBB55_32
# BB#31:                                # %if.then.18.i
	movl	648(%rbx), %ecx
	movl	%ecx, 224(%rbp)
.LBB55_32:                              # %if.end.22.i
	testb	$16, %al
	je	.LBB55_34
# BB#33:                                # %if.then.26.i
	movl	688(%rbx), %ecx
	movl	%ecx, 272(%rbp)
.LBB55_34:                              # %if.end.28.i
	testb	$32, %al
	je	.LBB55_36
# BB#35:                                # %if.then.32.i
	movl	692(%rbx), %ecx
	movl	%ecx, 276(%rbp)
.LBB55_36:                              # %if.end.34.i
	testb	$64, %al
	je	.LBB55_38
# BB#37:                                # %if.then.38.i
	movl	696(%rbx), %eax
	movl	%eax, 4196(%r12)
.LBB55_38:                              # %pdf14_set_params.exit
	movl	224(%rbp), %eax
	movl	%eax, 4168(%r12)
	movl	228(%rbp), %ecx
	movl	%ecx, 4172(%r12)
	movd	%eax, %xmm0
	movd	%ecx, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 4176(%r12)
	movl	220(%rbp), %eax
	movl	%eax, 4180(%r12)
	movl	272(%rbp), %eax
	movl	%eax, 4188(%r12)
	movl	276(%rbp), %eax
	movl	%eax, 4192(%r12)
	jmp	.LBB55_43
.LBB55_39:                              # %sw.bb.33
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_push_transparency_state
	movl	%eax, %r15d
	jmp	.LBB55_43
.LBB55_40:                              # %sw.bb.35
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gx_pop_transparency_state
	movl	%eax, %r15d
	jmp	.LBB55_43
.LBB55_41:                              # %sw.bb.37
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	pdf14_increment_smask_color
	movl	%eax, %r15d
	jmp	.LBB55_43
.LBB55_42:                              # %sw.bb.39
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	pdf14_decrement_smask_color
.LBB55_43:                              # %sw.epilog
	movl	%r15d, %eax
	addq	$5728, %rsp             # imm = 0x1660
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB55_6:                               # %sw.bb.7.i.i
	leaq	704(%rsp), %rbp
	movl	$gs_pdf14_RGB_device, %esi
	jmp	.LBB55_7
.LBB55_8:                               # %sw.bb.8.i.i
	leaq	704(%rsp), %rbp
	movl	$gs_pdf14_CMYK_device, %esi
.LBB55_7:                               # %if.end.i
	movl	$5024, %edx             # imm = 0x13A0
	movq	%rbp, %rdi
	callq	memcpy
	jmp	.LBB55_12
.LBB55_9:                               # %sw.bb.9.i.i
	movl	44(%rbx), %ebx
	movl	$gs_pdf14_CMYKspot_device, %ebp
	testl	%ebx, %ebx
	js	.LBB55_12
# BB#10:                                # %if.then.i.i
	leaq	704(%rsp), %rbp
	movl	$gs_pdf14_CMYKspot_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	movq	%rbp, %rdi
	callq	memcpy
	movl	%ebx, 2464(%rsp)
	addl	$4, %ebx
	cmpl	$64, %ebx
	movl	$64, %eax
	cmovlel	%ebx, %eax
	movl	%eax, 804(%rsp)
	shll	$3, %eax
	movw	%ax, 812(%rsp)
	jmp	.LBB55_12
.LBB55_11:                              # %sw.bb.27.i.i
	leaq	704(%rsp), %rbp
	movl	$gs_pdf14_custom_device, %esi
	movl	$5024, %edx             # imm = 0x13A0
	movq	%rbp, %rdi
	callq	memcpy
	leaq	800(%rsp), %rdi
	leaq	96(%r14), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	804(%rsp), %eax
	shll	$3, %eax
	movw	%ax, 812(%rsp)
	movaps	.LCPI55_0(%rip), %xmm0  # xmm0 = [255,255,256,256]
	movups	%xmm0, 816(%rsp)
.LBB55_12:                              # %if.end.i
	leaq	96(%r12), %rdi
	leaq	96(%rbp), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movl	840(%r14), %eax
	movl	%eax, 840(%r12)
	movl	844(%r14), %eax
	movl	%eax, 844(%r12)
	movl	848(%r14), %eax
	movl	%eax, 848(%r12)
	leaq	1144(%r12), %rdi
	leaq	1144(%rbp), %rsi
	movl	$584, %edx              # imm = 0x248
	callq	memcpy
	movq	8(%rbp), %rax
	movq	%rax, 8(%r12)
	movq	%r12, %rdi
	callq	gx_device_set_procs
	movq	%r12, %rdi
	callq	gx_device_fill_in_procs
	movq	%r12, %rdi
	callq	check_device_separable
	movq	%r12, %rdi
	callq	*1144(%r12)
	jmp	.LBB55_43
.Lfunc_end55:
	.size	gx_update_pdf14_compositor, .Lfunc_end55-gx_update_pdf14_compositor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI55_0:
	.quad	.LBB55_2
	.quad	.LBB55_18
	.quad	.LBB55_13
	.quad	.LBB55_20
	.quad	.LBB55_21
	.quad	.LBB55_22
	.quad	.LBB55_23
	.quad	.LBB55_24
	.quad	.LBB55_39
	.quad	.LBB55_40
	.quad	.LBB55_41
	.quad	.LBB55_42
.LJTI55_1:
	.quad	.LBB55_5
	.quad	.LBB55_6
	.quad	.LBB55_8
	.quad	.LBB55_9
	.quad	.LBB55_11

	.text
	.align	16, 0x90
	.type	pdf14_increment_smask_color,@function
pdf14_increment_smask_color:            # @pdf14_increment_smask_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp465:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp466:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp467:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp468:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp469:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp470:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp471:
	.cfi_def_cfa_offset 64
.Ltmp472:
	.cfi_offset %rbx, -56
.Ltmp473:
	.cfi_offset %r12, -48
.Ltmp474:
	.cfi_offset %r13, -40
.Ltmp475:
	.cfi_offset %r14, -32
.Ltmp476:
	.cfi_offset %r15, -24
.Ltmp477:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movq	336(%r13), %rax
	movq	56(%rax), %rbx
	movq	4160(%rbp), %rax
	testq	%rbx, %rbx
	je	.LBB56_3
# BB#1:                                 # %entry
	testq	%rax, %rax
	jne	.LBB56_3
# BB#2:                                 # %land.lhs.true.5
	xorl	%r15d, %r15d
	cmpl	$0, 32(%rbx)
	jne	.LBB56_42
.LBB56_3:                               # %if.end
	testq	%rax, %rax
	je	.LBB56_5
# BB#4:                                 # %if.then.10
	incl	8(%rax)
	xorl	%r15d, %r15d
	jmp	.LBB56_42
.LBB56_5:                               # %if.else
	movq	24(%rbp), %rdi
	movl	$st_pdf14_smaskcolor, %esi
	movl	$.L.str.44, %edx
	callq	*72(%rdi)
	movq	%rax, %r14
	movl	$-1, %r15d
	testq	%r14, %r14
	je	.LBB56_42
# BB#6:                                 # %if.end.15
	movq	24(%rbp), %rdi
	callq	gsicc_new_iccsmask
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB56_42
# BB#7:                                 # %if.end.21
	movq	%r14, 4160(%rbp)
	movq	336(%r13), %rsi
	movdqu	8(%rsi), %xmm0
	movdqu	%xmm0, (%rax)
	movq	24(%rsi), %rdi
	movq	%rdi, 16(%rax)
	movq	(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	movq	8(%rbx), %rbp
	movq	%rbp, 16(%rsi)
	movq	16(%rbx), %rdx
	movq	%rdx, 24(%rsi)
	movq	56(%rsi), %rsi
	movl	$1, 32(%rsi)
	movl	$1, 8(%r14)
	xorl	%r15d, %r15d
	cmpl	$0, (%r13)
	je	.LBB56_42
# BB#8:                                 # %for.cond.preheader
	movq	1744(%r13), %r12
	movq	64(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB56_26
# BB#9:                                 # %if.then.50
	movl	16(%rsi), %ebx
	cmpl	$3, %ebx
	je	.LBB56_17
# BB#10:                                # %if.then.50
	cmpl	$2, %ebx
	jne	.LBB56_11
# BB#15:                                # %sw.bb.59
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rax
	movq	144(%rsi), %rcx
	cmpq	144(%rax), %rcx
	je	.LBB56_20
# BB#16:                                # %select.mid71
	movq	%rsi, %rbp
	jmp	.LBB56_20
.LBB56_17:                              # %sw.bb.69
	movq	144(%rsi), %rax
	cmpq	144(%rdi), %rax
	je	.LBB56_19
# BB#18:                                # %select.mid73
	movq	%rsi, %rdx
.LBB56_19:                              # %select.end72
	movq	%rdx, %rbp
	jmp	.LBB56_20
.LBB56_11:                              # %if.then.50
	cmpl	$1, %ebx
	movq	%rsi, %rbp
	jne	.LBB56_20
# BB#12:                                # %sw.bb
	movq	144(%rsi), %rdx
	movq	(%rax), %rax
	cmpq	144(%rax), %rdx
	je	.LBB56_14
# BB#13:                                # %select.mid
	movq	%rsi, %rcx
.LBB56_14:                              # %select.end
	movq	%rcx, %rbp
.LBB56_20:                              # %do.body.79
	cmpq	%rbp, %rsi
	je	.LBB56_26
# BB#21:                                # %do.body.83
	testq	%rbp, %rbp
	je	.LBB56_23
# BB#22:                                # %do.body.86
	incq	288(%rbp)
.LBB56_23:                              # %do.end.104
	decq	288(%rsi)
	jne	.LBB56_25
# BB#24:                                # %do.end.118
	movq	296(%rsi), %rdi
	movl	$.L.str.44, %edx
	callq	*304(%rsi)
.LBB56_25:                              # %do.end.137
	movq	%rbp, 64(%r12)
.LBB56_26:                              # %if.end.142
	movq	1768(%r13), %rbp
	movq	64(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB56_42
# BB#27:                                # %if.then.50.1
	movl	16(%rsi), %eax
	cmpl	$1, %eax
	je	.LBB56_34
# BB#28:                                # %if.then.50.1
	cmpl	$2, %eax
	jne	.LBB56_29
# BB#32:                                # %sw.bb.59.1
	movq	144(%rsi), %rax
	movq	(%r14), %rcx
	movq	8(%rcx), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbx
	jne	.LBB56_36
# BB#33:                                # %if.then.65.1
	movq	336(%r13), %rax
	movq	16(%rax), %rbx
	jmp	.LBB56_36
.LBB56_34:                              # %sw.bb.1
	movq	144(%rsi), %rax
	movq	(%r14), %rcx
	movq	(%rcx), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbx
	jne	.LBB56_36
# BB#35:                                # %if.then.55.1
	movq	336(%r13), %rax
	movq	8(%rax), %rbx
	jmp	.LBB56_36
.LBB56_29:                              # %if.then.50.1
	cmpl	$3, %eax
	movq	%rsi, %rbx
	jne	.LBB56_36
# BB#30:                                # %sw.bb.69.1
	movq	144(%rsi), %rax
	movq	(%r14), %rcx
	movq	16(%rcx), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbx
	jne	.LBB56_36
# BB#31:                                # %if.then.75.1
	movq	336(%r13), %rax
	movq	24(%rax), %rbx
.LBB56_36:                              # %do.body.79.1
	cmpq	%rbx, %rsi
	je	.LBB56_42
# BB#37:                                # %do.body.83.1
	testq	%rbx, %rbx
	je	.LBB56_39
# BB#38:                                # %do.body.86.1
	incq	288(%rbx)
.LBB56_39:                              # %do.end.104.1
	decq	288(%rsi)
	jne	.LBB56_41
# BB#40:                                # %do.end.118.1
	movq	296(%rsi), %rdi
	movl	$.L.str.44, %edx
	callq	*304(%rsi)
.LBB56_41:                              # %do.end.137.1
	movq	%rbx, 64(%rbp)
.LBB56_42:                              # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	pdf14_increment_smask_color, .Lfunc_end56-pdf14_increment_smask_color
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_decrement_smask_color,@function
pdf14_decrement_smask_color:            # @pdf14_decrement_smask_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp478:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp479:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp480:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp481:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp482:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp483:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp484:
	.cfi_def_cfa_offset 64
.Ltmp485:
	.cfi_offset %rbx, -56
.Ltmp486:
	.cfi_offset %r12, -48
.Ltmp487:
	.cfi_offset %r13, -40
.Ltmp488:
	.cfi_offset %r14, -32
.Ltmp489:
	.cfi_offset %r15, -24
.Ltmp490:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	4160(%r14), %r15
	testq	%r15, %r15
	je	.LBB57_29
# BB#1:                                 # %if.then.10
	movq	336(%rbx), %r12
	decl	8(%r15)
	jne	.LBB57_29
# BB#2:                                 # %do.end.16
	cmpl	$0, (%rbx)
	movq	%r15, %rsi
	je	.LBB57_25
# BB#3:                                 # %for.cond.preheader
	movq	1744(%rbx), %r13
	movq	64(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB57_19
# BB#4:                                 # %if.then.24
	movl	16(%rsi), %eax
	cmpl	$3, %eax
	je	.LBB57_11
# BB#5:                                 # %if.then.24
	cmpl	$2, %eax
	jne	.LBB57_6
# BB#9:                                 # %sw.bb.30
	movq	144(%rsi), %rax
	movq	16(%r12), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbp
	jne	.LBB57_13
# BB#10:                                # %if.then.35
	movq	(%r15), %rax
	movq	8(%rax), %rbp
	jmp	.LBB57_13
.LBB57_11:                              # %sw.bb.38
	movq	144(%rsi), %rax
	movq	24(%r12), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbp
	jne	.LBB57_13
# BB#12:                                # %if.then.43
	movq	(%r15), %rax
	movq	16(%rax), %rbp
	jmp	.LBB57_13
.LBB57_6:                               # %if.then.24
	cmpl	$1, %eax
	movq	%rsi, %rbp
	jne	.LBB57_13
# BB#7:                                 # %sw.bb
	movq	144(%rsi), %rax
	movq	8(%r12), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbp
	jne	.LBB57_13
# BB#8:                                 # %if.then.28
	movq	(%r15), %rax
	movq	(%rax), %rbp
.LBB57_13:                              # %do.body.46
	cmpq	%rbp, %rsi
	je	.LBB57_19
# BB#14:                                # %do.body.50
	testq	%rbp, %rbp
	je	.LBB57_16
# BB#15:                                # %do.body.53
	incq	288(%rbp)
.LBB57_16:                              # %do.end.70
	decq	288(%rsi)
	jne	.LBB57_18
# BB#17:                                # %do.end.84
	movq	296(%rsi), %rdi
	movl	$.L.str.46, %edx
	callq	*304(%rsi)
.LBB57_18:                              # %do.end.101
	movq	%rbp, 64(%r13)
.LBB57_19:                              # %if.end.106
	movq	1768(%rbx), %r13
	movq	64(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB57_40
# BB#20:                                # %if.then.24.1
	movl	16(%rsi), %eax
	cmpl	$1, %eax
	je	.LBB57_32
# BB#21:                                # %if.then.24.1
	cmpl	$2, %eax
	jne	.LBB57_22
# BB#30:                                # %sw.bb.30.1
	movq	144(%rsi), %rax
	movq	336(%rbx), %rcx
	movq	16(%rcx), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbp
	jne	.LBB57_34
# BB#31:                                # %if.then.35.1
	movq	(%r15), %rax
	movq	8(%rax), %rbp
	jmp	.LBB57_34
.LBB57_32:                              # %sw.bb.1
	movq	144(%rsi), %rax
	movq	336(%rbx), %rcx
	movq	8(%rcx), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbp
	jne	.LBB57_34
# BB#33:                                # %if.then.28.1
	movq	(%r15), %rax
	movq	(%rax), %rbp
	jmp	.LBB57_34
.LBB57_22:                              # %if.then.24.1
	cmpl	$3, %eax
	movq	%rsi, %rbp
	jne	.LBB57_34
# BB#23:                                # %sw.bb.38.1
	movq	144(%rsi), %rax
	movq	336(%rbx), %rcx
	movq	24(%rcx), %rcx
	cmpq	144(%rcx), %rax
	movq	%rsi, %rbp
	jne	.LBB57_34
# BB#24:                                # %if.then.43.1
	movq	(%r15), %rax
	movq	16(%rax), %rbp
.LBB57_34:                              # %do.body.46.1
	cmpq	%rbp, %rsi
	je	.LBB57_40
# BB#35:                                # %do.body.50.1
	testq	%rbp, %rbp
	je	.LBB57_37
# BB#36:                                # %do.body.53.1
	incq	288(%rbp)
.LBB57_37:                              # %do.end.70.1
	decq	288(%rsi)
	jne	.LBB57_39
# BB#38:                                # %do.end.84.1
	movq	296(%rsi), %rdi
	movl	$.L.str.46, %edx
	callq	*304(%rsi)
.LBB57_39:                              # %do.end.101.1
	movq	%rbp, 64(%r13)
.LBB57_40:                              # %if.end.106.1
	movq	4160(%r14), %rsi
.LBB57_25:                              # %if.end.108
	movq	(%r15), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 8(%r12)
	movq	16(%rax), %rax
	movq	%rax, 24(%r12)
	movq	56(%r12), %rax
	movl	$0, 32(%rax)
	testq	%rsi, %rsi
	je	.LBB57_29
# BB#26:                                # %if.then.i
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB57_28
# BB#27:                                # %if.then.3.i
	movq	24(%r14), %rdi
	movl	$.L.str.47, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	movq	4160(%r14), %rsi
.LBB57_28:                              # %if.end.i
	movq	24(%r14), %rdi
	movl	$.L.str.47, %edx
	callq	*24(%rdi)
	movq	$0, 4160(%r14)
.LBB57_29:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	pdf14_decrement_smask_color, .Lfunc_end57-pdf14_decrement_smask_color
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_determine_default_blend_cs,@function
pdf14_determine_default_blend_cs:       # @pdf14_determine_default_blend_cs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp491:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp492:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp493:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp494:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp495:
	.cfi_def_cfa_offset 48
.Ltmp496:
	.cfi_offset %rbx, -48
.Ltmp497:
	.cfi_offset %r12, -40
.Ltmp498:
	.cfi_offset %r14, -32
.Ltmp499:
	.cfi_offset %r15, -24
.Ltmp500:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	100(%rbx), %eax
	cmpl	$1, 104(%rbx)
	jne	.LBB58_3
# BB#1:                                 # %entry.if.then_crit_edge
	cmpl	$1, %eax
	setne	%bpl
	jmp	.LBB58_2
.LBB58_3:                               # %lor.lhs.false
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	jne	.LBB58_4
.LBB58_2:                               # %if.then
	movzbl	%bpl, %eax
	jmp	.LBB58_14
.LBB58_4:                               # %for.cond.preheader
	movq	DeviceCMYKComponents(%rip), %r14
	movq	1544(%rbx), %r15
	movq	%r14, %rdi
	callq	strlen
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	*%r15
	movl	%eax, %r14d
	cmpl	$64, %r14d
	setne	%al
	testl	%r14d, %r14d
	movzbl	%al, %r15d
	cmovsl	%ebp, %r15d
	shrl	$31, %r14d
	xorl	$1, %r14d
	movq	DeviceCMYKComponents+8(%rip), %rbp
	movq	1544(%rbx), %r12
	movq	%rbp, %rdi
	callq	strlen
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	*%r12
	testl	%eax, %eax
	js	.LBB58_6
# BB#5:                                 # %if.then.12.1
	incl	%r14d
	cmpl	$64, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %r15d
.LBB58_6:                               # %if.end.17.1
	movq	DeviceCMYKComponents+16(%rip), %rbp
	movq	1544(%rbx), %r12
	movq	%rbp, %rdi
	callq	strlen
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	*%r12
	testl	%eax, %eax
	js	.LBB58_8
# BB#7:                                 # %if.then.12.2
	incl	%r14d
	cmpl	$64, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %r15d
.LBB58_8:                               # %if.end.17.2
	movq	DeviceCMYKComponents+24(%rip), %rbp
	movq	1544(%rbx), %r12
	movq	%rbp, %rdi
	callq	strlen
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	*%r12
	testl	%eax, %eax
	js	.LBB58_10
# BB#9:                                 # %if.then.12.3
	incl	%r14d
	cmpl	$64, %eax
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %r15d
.LBB58_10:                              # %if.end.17.3
	cmpl	$4, %r15d
	jne	.LBB58_13
# BB#11:                                # %land.lhs.true
	cmpl	$4, 100(%rbx)
	jne	.LBB58_13
# BB#12:                                # %land.lhs.true.25
	movl	$2, %eax
	cmpl	$4, 96(%rbx)
	je	.LBB58_14
.LBB58_13:                              # %if.end.30
	cmpl	$4, %r14d
	setne	%al
	movzbl	%al, %eax
	addl	$3, %eax
.LBB58_14:                              # %return
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end58:
	.size	pdf14_determine_default_blend_cs, .Lfunc_end58-pdf14_determine_default_blend_cs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_update_device_color_procs,@function
pdf14_update_device_color_procs:        # @pdf14_update_device_color_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp501:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp502:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp503:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp504:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp505:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp506:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp507:
	.cfi_def_cfa_offset 160
.Ltmp508:
	.cfi_offset %rbx, -56
.Ltmp509:
	.cfi_offset %r12, -48
.Ltmp510:
	.cfi_offset %r13, -40
.Ltmp511:
	.cfi_offset %r14, -32
.Ltmp512:
	.cfi_offset %r15, -24
.Ltmp513:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movl	$0, 100(%rsp)
	movl	$0, 96(%rsp)
	movq	4152(%rbx), %rax
	movq	(%rax), %rcx
	movl	$-21, %eax
	testq	%rcx, %rcx
	je	.LBB59_36
# BB#1:                                 # %if.then
	movl	1112(%rbx), %esi
	movq	136(%rcx), %r14
	movq	$0, 152(%r14)
	movq	$0, 160(%r14)
	movq	$0, 184(%r14)
	movl	$-15, %eax
	movl	%r12d, %ecx
	cmpl	$5, %r12d
	ja	.LBB59_36
# BB#2:                                 # %if.then
	jmpq	*.LJTI59_0(,%rcx,8)
.LBB59_3:                               # %for.cond.preheader
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movb	$8, 100(%rsp)
	movb	$16, 96(%rsp)
	movb	$8, 101(%rsp)
	movb	$8, 97(%rsp)
	movb	$8, 102(%rsp)
	movb	$0, 98(%rsp)
	movl	$gs_pdf14_RGB_device, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$rgb_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movb	$24, 7(%rsp)            # 1-byte Folded Spill
	movl	$3, (%rsp)              # 4-byte Folded Spill
	movl	$1, 20(%rsp)            # 4-byte Folded Spill
	jmp	.LBB59_22
.LBB59_4:                               # %sw.bb
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movb	$8, 100(%rsp)
	movb	$0, 96(%rsp)
	movl	$gs_pdf14_Gray_device, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$gray_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movb	$8, 7(%rsp)             # 1-byte Folded Spill
	movl	$1, 20(%rsp)            # 4-byte Folded Spill
	jmp	.LBB59_21
.LBB59_5:                               # %sw.bb.9
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	cmpl	$4, 100(%rbx)
	movb	$8, 100(%rsp)
	movb	$24, 96(%rsp)
	movb	$8, 101(%rsp)
	movb	$16, 97(%rsp)
	movb	$8, 102(%rsp)
	movb	$8, 98(%rsp)
	movb	$8, 103(%rsp)
	movb	$0, 99(%rsp)
	movl	$cmykspot_pdf14_procs, %eax
	jg	.LBB59_7
# BB#6:                                 # %select.mid
	movl	$cmyk_pdf14_procs, %eax
.LBB59_7:                               # %select.end
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$gs_pdf14_CMYK_device, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movb	$32, 7(%rsp)            # 1-byte Folded Spill
	movl	$4, (%rsp)              # 4-byte Folded Spill
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	jmp	.LBB59_22
.LBB59_8:                               # %sw.bb.29
	testq	%r8, %r8
	je	.LBB59_9
# BB#13:                                # %do.body.45
	movl	%esi, 44(%rsp)          # 4-byte Spill
	incq	288(%r8)
	jmp	.LBB59_14
.LBB59_9:                               # %land.lhs.true
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	4208(%rbx), %rbp
	xorl	%r8d, %r8d
	testq	%rbp, %rbp
	je	.LBB59_14
# BB#10:                                # %if.then.34
	movq	%rbp, %rdi
	movq	%rdx, %rsi
	callq	gsicc_read_serial_icc
	movq	%rax, %r8
	testq	%r8, %r8
	je	.LBB59_11
# BB#12:                                # %if.end.40
	movq	%rbp, 264(%r8)
.LBB59_14:                              # %if.end.55
	movzbl	(%r8), %edx
	cmpl	$4, %edx
	setne	%al
	movb	%dl, %cl
	shlb	$3, %cl
	cmpl	$1, %edx
	movzbl	%al, %eax
	je	.LBB59_20
# BB#15:                                # %if.end.55
	cmpl	$3, %edx
	jne	.LBB59_16
# BB#19:                                # %for.cond.68.preheader
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movb	%cl, 7(%rsp)            # 1-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movb	$8, 100(%rsp)
	movb	$16, 96(%rsp)
	movb	$8, 101(%rsp)
	movb	$8, 97(%rsp)
	movb	$8, 102(%rsp)
	movb	$0, 98(%rsp)
	movl	$gs_pdf14_RGB_device, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$rgb_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$3, (%rsp)              # 4-byte Folded Spill
	jmp	.LBB59_22
.LBB59_20:                              # %sw.bb.64
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movb	%cl, 7(%rsp)            # 1-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movb	$8, 100(%rsp)
	movb	$0, 96(%rsp)
	movl	$gs_pdf14_Gray_device, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$gray_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
.LBB59_21:                              # %do.end.100
	movl	$1, (%rsp)              # 4-byte Folded Spill
.LBB59_22:                              # %do.end.100
	movq	360(%r15), %rax
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%rax, 152(%r14)
	movq	1536(%rbx), %rax
	movq	%rax, 160(%r14)
	movq	1544(%rbx), %rax
	movq	%rax, 184(%r14)
	movl	104(%rbx), %eax
	movl	%eax, 8(%r14)
	movl	100(%rbx), %eax
	movl	%eax, (%r14)
	movq	4152(%rbx), %rax
	movl	40(%rax), %eax
	movl	%eax, 4(%r14)
	movups	4136(%rbx), %xmm0
	movups	%xmm0, 192(%r14)
	movb	108(%rbx), %al
	movb	%al, 140(%r14)
	leaq	76(%r14), %rdi
	leaq	204(%rbx), %rbp
	movl	$64, %edx
	movq	%rbp, %rsi
	callq	memcpy
	leaq	12(%r14), %rdi
	leaq	140(%rbx), %r13
	movl	$64, %edx
	movq	%r13, %rsi
	callq	memcpy
	movl	116(%rbx), %eax
	movl	%eax, 148(%r14)
	movl	112(%rbx), %eax
	movl	%eax, 144(%r14)
	movups	1552(%rbx), %xmm0
	movups	%xmm0, 168(%r14)
	cmpl	$5, %r12d
	sete	%al
	movq	56(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	setne	%r15b
	andb	%al, %r15b
	movzbl	%r15b, %eax
	cmpl	$1, %eax
	jne	.LBB59_23
# BB#24:                                # %if.then.134
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	64(%rsp), %rsi
	leaq	208(%r14), %rdx
	leaq	72(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movq	1552(%rbx), %rax
	jmp	.LBB59_25
.LBB59_23:
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movd	%xmm0, %rax
.LBB59_25:                              # %if.end.137
	movl	44(%rsp), %edx          # 4-byte Reload
	movl	(%rsp), %r12d           # 4-byte Reload
	andl	$128, %edx
	cmpl	$1, %r12d
	jne	.LBB59_30
# BB#26:                                # %if.end.137
	movl	$pdf14_compressed_encode_color, %ecx
	cmpq	%rcx, %rax
	jne	.LBB59_30
# BB#27:                                # %if.then.145
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	416(%rax), %rcx
	movq	%rcx, 1560(%rbx)
	testl	%edx, %edx
	jne	.LBB59_28
# BB#29:                                # %if.else.153
	movq	408(%rax), %rax
	movq	%rax, 1552(%rbx)
	jmp	.LBB59_30
.LBB59_28:                              # %if.then.150
	movq	$pdf14_encode_color_tag, 1552(%rbx)
.LBB59_30:                              # %if.end.159
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	$pdf14_get_cmap_procs_group, 360(%rdi)
	movl	%edx, %ebp
	movq	%rbx, %rsi
	callq	gx_set_cmap_procs
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	movq	8(%rcx), %rax
	movups	392(%rax), %xmm0
	movups	%xmm0, 1536(%rbx)
	movq	4144(%rcx), %rax
	movq	%rax, 4144(%rbx)
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 104(%rbx)
	movl	%r12d, 100(%rbx)
	movq	4152(%rbx), %rax
	movl	%ecx, 40(%rax)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 4136(%rbx)
	testl	%ebp, %ebp
	je	.LBB59_31
# BB#32:                                # %if.end.159
	movb	7(%rsp), %al            # 1-byte Reload
	addb	$8, %al
	jmp	.LBB59_33
.LBB59_31:
	movb	7(%rsp), %al            # 1-byte Reload
.LBB59_33:                              # %if.end.159
	movq	24(%rsp), %rbp          # 8-byte Reload
	movzbl	%al, %eax
	movw	%ax, 108(%rbx)
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%rbp, %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	memset
	leaq	100(%rsp), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcpy
	leaq	96(%rsp), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	movabsq	$1095216660735, %rax    # imm = 0xFF000000FF
	movq	%rax, 112(%rbx)
	movl	$1, %eax
	testb	%r15b, %r15b
	je	.LBB59_36
# BB#34:                                # %if.then.208
	movq	1104(%rbx), %rcx
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	208(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB59_36
# BB#35:                                # %do.body.214
	incq	288(%rcx)
.LBB59_36:                              # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB59_16:                              # %if.end.55
	cmpl	$4, %edx
	jne	.LBB59_17
# BB#18:                                # %for.cond.83.preheader
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movb	%cl, 7(%rsp)            # 1-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movb	$8, 100(%rsp)
	movb	$24, 96(%rsp)
	movb	$8, 101(%rsp)
	movb	$16, 97(%rsp)
	movb	$8, 102(%rsp)
	movb	$8, 98(%rsp)
	movb	$8, 103(%rsp)
	movb	$0, 99(%rsp)
	movl	$gs_pdf14_CMYK_device, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$cmyk_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$4, (%rsp)              # 4-byte Folded Spill
	jmp	.LBB59_22
.LBB59_17:
	movl	%edx, (%rsp)            # 4-byte Spill
	xorl	%edx, %edx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movb	%cl, 7(%rsp)            # 1-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB59_22
.LBB59_11:                              # %if.then.38
	movl	$.L__func__.pdf14_update_device_color_procs, %edi
	movl	$.L.str.39, %esi
	movl	$3989, %edx             # imm = 0xF95
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.48, %r9d
	xorl	%eax, %eax
	callq	gs_throw_imp
	jmp	.LBB59_36
.Lfunc_end59:
	.size	pdf14_update_device_color_procs, .Lfunc_end59-pdf14_update_device_color_procs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI59_0:
	.quad	.LBB59_4
	.quad	.LBB59_3
	.quad	.LBB59_5
	.quad	.LBB59_3
	.quad	.LBB59_36
	.quad	.LBB59_8

	.text
	.align	16, 0x90
	.type	pdf14_get_cmap_procs_group,@function
pdf14_get_cmap_procs_group:             # @pdf14_get_cmap_procs_group
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$pdf14_cmap_many_group, %eax
	retq
.Lfunc_end60:
	.size	pdf14_get_cmap_procs_group, .Lfunc_end60-pdf14_get_cmap_procs_group
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_gray_direct_group,@function
pdf14_cmap_gray_direct_group:           # @pdf14_cmap_gray_direct_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp514:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp515:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp516:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp517:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp518:
	.cfi_def_cfa_offset 304
.Ltmp519:
	.cfi_offset %rbx, -40
.Ltmp520:
	.cfi_offset %r14, -32
.Ltmp521:
	.cfi_offset %r15, -24
.Ltmp522:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rsi, %r14
	movl	%edi, %ebp
	movq	264(%rdx), %rax
	testq	%rax, %rax
	cmovneq	%rax, %r15
	movl	100(%r15), %ebx
	cmpl	$1, %ebx
	jne	.LBB61_2
# BB#1:                                 # %if.then.6
	movswl	%bp, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, (%rsp)
	jmp	.LBB61_10
.LBB61_2:                               # %if.else.13
	movq	%r15, %rdi
	callq	*1536(%r15)
	movswl	%bp, %esi
	leaq	128(%rsp), %rdx
	movq	%r15, %rdi
	callq	*(%rax)
	testl	%ebx, %ebx
	jle	.LBB61_10
# BB#3:                                 # %for.body.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movq	%rax, %rdx
	andq	%rbp, %rdx
	je	.LBB61_7
# BB#4:                                 # %vector.body.preheader
	leaq	136(%rsp), %rsi
	leaq	8(%rsp), %rdi
	incq	%rcx
	andq	%rbp, %rcx
	.align	16, 0x90
.LBB61_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB61_5
# BB#6:
	movq	%rdx, %rsi
.LBB61_7:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB61_10
# BB#8:                                 # %for.body.preheader35
	leaq	128(%rsp,%rsi,2), %rax
	leaq	(%rsp,%rsi,2), %rcx
	subl	%esi, %ebx
	.align	16, 0x90
.LBB61_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebx
	jne	.LBB61_9
.LBB61_10:                              # %for.end
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1552(%r15)
	cmpq	$-1, %rax
	je	.LBB61_12
# BB#11:                                # %if.then.36
	movq	%rax, 8(%r14)
	movq	$gx_dc_type_data_pure, (%r14)
.LBB61_12:                              # %if.end.41
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	pdf14_cmap_gray_direct_group, .Lfunc_end61-pdf14_cmap_gray_direct_group
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_rgb_direct_group,@function
pdf14_cmap_rgb_direct_group:            # @pdf14_cmap_rgb_direct_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp523:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp524:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp525:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp526:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp527:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp528:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp529:
	.cfi_def_cfa_offset 336
.Ltmp530:
	.cfi_offset %rbx, -56
.Ltmp531:
	.cfi_offset %r12, -48
.Ltmp532:
	.cfi_offset %r13, -40
.Ltmp533:
	.cfi_offset %r14, -32
.Ltmp534:
	.cfi_offset %r15, -24
.Ltmp535:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, %rbp
	movl	%edx, %r15d
	movl	%esi, %r12d
	movl	%edi, %ebx
	movq	264(%rbp), %rax
	testq	%rax, %rax
	cmovneq	%rax, %r13
	movl	100(%r13), %r14d
	cmpl	$3, %r14d
	jne	.LBB62_3
# BB#1:                                 # %if.then.6
	movq	%rcx, %rbp
	movswl	%bx, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 16(%rsp)
	movswl	%r12w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 18(%rsp)
	movswl	%r15w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 20(%rsp)
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	cmpq	$-1, %rax
	je	.LBB62_13
# BB#2:                                 # %if.then.25
	movq	%rax, 8(%rbp)
	movq	$gx_dc_type_data_pure, (%rbp)
	jmp	.LBB62_13
.LBB62_3:                               # %if.else.27
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%r13, %rdi
	callq	*1536(%r13)
	movswl	%bx, %edx
	movswl	%r12w, %ecx
	movswl	%r15w, %r8d
	leaq	144(%rsp), %r9
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*8(%rax)
	testl	%r14d, %r14d
	jle	.LBB62_11
# BB#4:                                 # %for.body.preheader
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movq	%rax, %rdx
	andq	%rbp, %rdx
	je	.LBB62_8
# BB#5:                                 # %vector.body.preheader
	leaq	152(%rsp), %rsi
	leaq	24(%rsp), %rdi
	incq	%rcx
	andq	%rbp, %rcx
	.align	16, 0x90
.LBB62_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB62_6
# BB#7:
	movq	%rdx, %rsi
.LBB62_8:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB62_11
# BB#9:                                 # %for.body.preheader42
	leaq	144(%rsp,%rsi,2), %rax
	leaq	16(%rsp,%rsi,2), %rcx
	subl	%esi, %r14d
	.align	16, 0x90
.LBB62_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r14d
	jne	.LBB62_10
.LBB62_11:                              # %for.end
	leaq	16(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	cmpq	$-1, %rax
	je	.LBB62_13
# BB#12:                                # %if.then.50
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
.LBB62_13:                              # %if.end.55
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	pdf14_cmap_rgb_direct_group, .Lfunc_end62-pdf14_cmap_rgb_direct_group
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_cmyk_direct_group,@function
pdf14_cmap_cmyk_direct_group:           # @pdf14_cmap_cmyk_direct_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp536:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp537:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp538:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp539:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp540:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp541:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp542:
	.cfi_def_cfa_offset 336
.Ltmp543:
	.cfi_offset %rbx, -56
.Ltmp544:
	.cfi_offset %r12, -48
.Ltmp545:
	.cfi_offset %r13, -40
.Ltmp546:
	.cfi_offset %r14, -32
.Ltmp547:
	.cfi_offset %r15, -24
.Ltmp548:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %r13d
	movl	%edi, %ebp
	movq	264(%r9), %rbx
	testq	%rbx, %rbx
	cmoveq	336(%rsp), %rbx
	movl	100(%rbx), %r14d
	cmpl	$4, %r14d
	jne	.LBB63_3
# BB#1:                                 # %if.then.6
	movq	%r8, %r14
	movswl	%bp, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 16(%rsp)
	movswl	%r13w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 18(%rsp)
	movswl	%r12w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 20(%rsp)
	movswl	%r15w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 22(%rsp)
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB63_13
# BB#2:                                 # %if.then.32
	movq	%rax, 8(%r14)
	movq	$gx_dc_type_data_pure, (%r14)
	jmp	.LBB63_13
.LBB63_3:                               # %if.else.34
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	movswl	%bp, %esi
	movswl	%r13w, %edx
	movswl	%r12w, %ecx
	movswl	%r15w, %r8d
	leaq	144(%rsp), %r9
	movq	%rbx, %rdi
	callq	*16(%rax)
	testl	%r14d, %r14d
	jle	.LBB63_11
# BB#4:                                 # %for.body.preheader
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movq	%rax, %rdx
	andq	%rbp, %rdx
	je	.LBB63_8
# BB#5:                                 # %vector.body.preheader
	leaq	152(%rsp), %rsi
	leaq	24(%rsp), %rdi
	incq	%rcx
	andq	%rbp, %rcx
	.align	16, 0x90
.LBB63_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB63_6
# BB#7:
	movq	%rdx, %rsi
.LBB63_8:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB63_11
# BB#9:                                 # %for.body.preheader44
	leaq	144(%rsp,%rsi,2), %rax
	leaq	16(%rsp,%rsi,2), %rcx
	subl	%esi, %r14d
	.align	16, 0x90
.LBB63_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r14d
	jne	.LBB63_10
.LBB63_11:                              # %for.end
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB63_13
# BB#12:                                # %if.then.57
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
.LBB63_13:                              # %if.end.62
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	pdf14_cmap_cmyk_direct_group, .Lfunc_end63-pdf14_cmap_cmyk_direct_group
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_rgb_alpha_direct,@function
pdf14_cmap_rgb_alpha_direct:            # @pdf14_cmap_rgb_alpha_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp549:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp550:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp551:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp552:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp553:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp554:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp555:
	.cfi_def_cfa_offset 336
.Ltmp556:
	.cfi_offset %rbx, -56
.Ltmp557:
	.cfi_offset %r12, -48
.Ltmp558:
	.cfi_offset %r13, -40
.Ltmp559:
	.cfi_offset %r14, -32
.Ltmp560:
	.cfi_offset %r15, -24
.Ltmp561:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, (%rsp)             # 8-byte Spill
	movl	%ecx, %ebp
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movl	%esi, 8(%rsp)           # 4-byte Spill
	movl	%edi, %r15d
	movq	264(%r12), %r14
	testq	%r14, %r14
	cmoveq	336(%rsp), %r14
	movl	100(%r14), %r13d
	movq	%r14, %rdi
	callq	*1536(%r14)
	leaq	144(%rsp), %rbx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movl	8(%rsp), %ecx           # 4-byte Reload
	movl	12(%rsp), %r8d          # 4-byte Reload
	movq	%rbx, %r9
	callq	*8(%rax)
	movzwl	%bp, %eax
	cmpl	$32760, %eax            # imm = 0x7FF8
	je	.LBB64_7
# BB#1:                                 # %for.cond.preheader
	testl	%r13d, %r13d
	jle	.LBB64_15
# BB#2:                                 # %for.body.preheader
	xorl	%ecx, %ecx
	testb	$1, %r13b
	je	.LBB64_4
# BB#3:                                 # %for.body.prol
	movw	144(%rsp), %ax
	imulw	%bp, %ax
	cwtl
	movswq	%ax, %rcx
	imulq	$-2146959231, %rcx, %rcx # imm = 0xFFFFFFFF80080081
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	shrl	$14, %ecx
	addl	%eax, %ecx
	movw	%cx, 144(%rsp)
	movl	$1, %ecx
.LBB64_4:                               # %for.body.preheader.split
	cmpl	$1, %r13d
	je	.LBB64_7
# BB#5:                                 # %for.body.preheader.split.split
	movl	%r13d, %eax
	subl	%ecx, %eax
	leaq	2(%rcx,%rcx), %rcx
	orq	%rcx, %rbx
	.align	16, 0x90
.LBB64_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	-2(%rbx), %cx
	imulw	%bp, %cx
	movswl	%cx, %ecx
	movswq	%cx, %rdx
	imulq	$-2146959231, %rdx, %rdx # imm = 0xFFFFFFFF80080081
	shrq	$32, %rdx
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	shrl	$14, %edx
	addl	%ecx, %edx
	movw	%dx, -2(%rbx)
	movw	(%rbx), %cx
	imulw	%bp, %cx
	movswl	%cx, %ecx
	movswq	%cx, %rdx
	imulq	$-2146959231, %rdx, %rdx # imm = 0xFFFFFFFF80080081
	shrq	$32, %rdx
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	shrl	$14, %edx
	addl	%ecx, %edx
	movw	%dx, (%rbx)
	addq	$4, %rbx
	addl	$-2, %eax
	jne	.LBB64_6
.LBB64_7:                               # %for.cond.17.preheader
	testl	%r13d, %r13d
	jle	.LBB64_15
# BB#8:                                 # %for.body.20.preheader
	leal	-1(%r13), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movq	%rax, %rdx
	andq	%rbp, %rdx
	je	.LBB64_12
# BB#9:                                 # %vector.body.preheader
	leaq	152(%rsp), %rsi
	leaq	24(%rsp), %rdi
	incq	%rcx
	andq	%rbp, %rcx
	.align	16, 0x90
.LBB64_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB64_10
# BB#11:
	movq	%rdx, %rsi
.LBB64_12:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB64_15
# BB#13:                                # %for.body.20.preheader39
	leaq	144(%rsp,%rsi,2), %rax
	leaq	16(%rsp,%rsi,2), %rcx
	subl	%esi, %r13d
	.align	16, 0x90
.LBB64_14:                              # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r13d
	jne	.LBB64_14
.LBB64_15:                              # %for.end.33
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1552(%r14)
	cmpq	$-1, %rax
	je	.LBB64_17
# BB#16:                                # %if.then.39
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
.LBB64_17:                              # %if.end.40
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	pdf14_cmap_rgb_alpha_direct, .Lfunc_end64-pdf14_cmap_rgb_alpha_direct
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_separation_direct,@function
pdf14_cmap_separation_direct:           # @pdf14_cmap_separation_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp562:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp563:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp564:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp565:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp566:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp567:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp568:
	.cfi_def_cfa_offset 352
.Ltmp569:
	.cfi_offset %rbx, -56
.Ltmp570:
	.cfi_offset %r12, -48
.Ltmp571:
	.cfi_offset %r13, -40
.Ltmp572:
	.cfi_offset %r14, -32
.Ltmp573:
	.cfi_offset %r15, -24
.Ltmp574:
	.cfi_offset %rbp, -16
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	movl	100(%rcx), %r15d
	movl	104(%rcx), %r8d
	cmpl	$1, 1028(%rdx)
	jne	.LBB65_18
# BB#1:                                 # %if.then
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%edi, %ecx
	cmpl	$1, %r8d
	cmovnew	%di, %cx
	movl	1036(%rdx), %eax
	movl	%eax, %ebp
	decl	%ebp
	js	.LBB65_13
# BB#2:                                 # %for.body.lr.ph
	movslq	%ebp, %r14
	leaq	1(%rbp), %r11
	movq	%r11, %r13
	andq	%r12, %r13
	xorl	%esi, %esi
	movq	%r11, %r10
	andq	%r12, %r10
	je	.LBB65_10
# BB#3:                                 # %vector.ph116
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movd	%ecx, %xmm0
	leal	-1(%rax), %r9d
	leaq	1(%r9), %rdi
	andq	%r12, %rdi
	addq	$-16, %rdi
	movl	%edi, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%ebx, %ebx
	testb	$3, %sil
	je	.LBB65_6
# BB#4:                                 # %vector.body106.prol.preheader
	pshufd	$196, %xmm0, %xmm1      # xmm1 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,1,2,3,4,4,4,4]
	movslq	%r9d, %rsi
	leaq	146(%rsp,%rsi,2), %rbp
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB65_5:                               # %vector.body106.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm1, (%rbp)
	movdqu	%xmm1, -16(%rbp)
	addq	$16, %rbx
	addq	$-32, %rbp
	incq	%rax
	jne	.LBB65_5
.LBB65_6:                               # %vector.ph116.split
	movq	%r14, %rax
	subq	%r13, %rax
	movl	%r14d, %ebp
	subl	%r13d, %ebp
	cmpq	$48, %rdi
	jb	.LBB65_9
# BB#7:                                 # %vector.ph116.split.split
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	leaq	1(%r9), %rdx
	andq	%r12, %rdx
	subq	%rbx, %rdx
	movslq	%r9d, %rsi
	addq	$-7, %rsi
	subq	%rbx, %rsi
	leaq	160(%rsp,%rsi,2), %rsi
	.align	16, 0x90
.LBB65_8:                               # %vector.body106
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -112(%rsi)
	addq	$-128, %rsi
	addq	$-64, %rdx
	jne	.LBB65_8
.LBB65_9:
	movq	%rax, %r14
	movq	%r10, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
.LBB65_10:                              # %middle.block107
	cmpq	%rsi, %r11
	je	.LBB65_13
# BB#11:                                # %for.body.preheader
	leaq	160(%rsp,%r14,2), %rax
	.align	16, 0x90
.LBB65_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%rax)
	addq	$-2, %rax
	decl	%ebp
	jns	.LBB65_12
	jmp	.LBB65_13
.LBB65_18:                              # %if.else
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	1036(%rdx), %eax
	movl	%eax, %ebp
	decl	%ebp
	js	.LBB65_30
# BB#19:                                # %for.body.lr.ph.i
	movslq	%ebp, %r14
	leaq	1(%rbp), %r11
	movq	%r11, %rcx
	andq	%r12, %rcx
	xorl	%esi, %esi
	movq	%r11, %r10
	andq	%r12, %r10
	je	.LBB65_27
# BB#20:                                # %vector.body.preheader
	movq	%rdx, %r13
	leal	-1(%rax), %r9d
	leaq	1(%r9), %rsi
	andq	%r12, %rsi
	addq	$-16, %rsi
	movl	%esi, %edx
	shrl	$4, %edx
	incl	%edx
	xorl	%ebx, %ebx
	testb	$3, %dl
	je	.LBB65_23
# BB#21:                                # %vector.body.prol.preheader
	movslq	%r9d, %rdx
	leaq	146(%rsp,%rdx,2), %rbp
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%ebx, %ebx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB65_22:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbp)
	movdqu	%xmm0, -16(%rbp)
	addq	$16, %rbx
	addq	$-32, %rbp
	incq	%rax
	jne	.LBB65_22
.LBB65_23:                              # %vector.body.preheader.split
	movq	%r14, %rax
	subq	%rcx, %rax
	movl	%r14d, %ebp
	subl	%ecx, %ebp
	cmpq	$48, %rsi
	jb	.LBB65_26
# BB#24:                                # %vector.body.preheader.split.split
	leaq	1(%r9), %rcx
	andq	%r12, %rcx
	subq	%rbx, %rcx
	movslq	%r9d, %rdx
	addq	$-7, %rdx
	subq	%rbx, %rdx
	leaq	160(%rsp,%rdx,2), %rdx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB65_25:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, -16(%rdx)
	movdqu	%xmm0, -32(%rdx)
	movdqu	%xmm0, -48(%rdx)
	movdqu	%xmm0, -64(%rdx)
	movdqu	%xmm0, -80(%rdx)
	movdqu	%xmm0, -96(%rdx)
	movdqu	%xmm0, -112(%rdx)
	addq	$-128, %rdx
	addq	$-64, %rcx
	jne	.LBB65_25
.LBB65_26:
	movq	%rax, %r14
	movq	%r10, %rsi
	movq	%r13, %rdx
.LBB65_27:                              # %middle.block
	cmpq	%rsi, %r11
	je	.LBB65_30
# BB#28:                                # %for.body.i.preheader
	leaq	160(%rsp,%r14,2), %rax
	.align	16, 0x90
.LBB65_29:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$-2, %rax
	decl	%ebp
	jns	.LBB65_29
.LBB65_30:                              # %for.end.i
	movl	1032(%rdx), %ecx
	movl	%ecx, %eax
	decl	%eax
	js	.LBB65_13
# BB#31:                                # %for.body.4.lr.ph.i
	movslq	%eax, %rsi
	testb	$1, %cl
	je	.LBB65_35
# BB#32:                                # %for.body.4.i.prol
	movslq	1048(%rdx,%rsi,4), %rax
	testq	%rax, %rax
	js	.LBB65_34
# BB#33:                                # %if.then.i.prol
	movw	%di, 160(%rsp,%rax,2)
.LBB65_34:                              # %for.cond.2.backedge.i.prol
	leal	-2(%rcx), %eax
	decq	%rsi
.LBB65_35:                              # %for.body.4.lr.ph.i.split
	cmpl	$1, %ecx
	je	.LBB65_13
# BB#36:                                # %for.body.4.lr.ph.i.split.split
	leaq	1048(%rdx,%rsi,4), %rcx
	.align	16, 0x90
.LBB65_37:                              # %for.body.4.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB65_38
# BB#41:                                # %if.then.i
                                        #   in Loop: Header=BB65_37 Depth=1
	movw	%di, 160(%rsp,%rsi,2)
.LBB65_38:                              # %for.cond.2.backedge.i
                                        #   in Loop: Header=BB65_37 Depth=1
	movslq	-4(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB65_40
# BB#39:                                # %if.then.i.1
                                        #   in Loop: Header=BB65_37 Depth=1
	movw	%di, 160(%rsp,%rsi,2)
.LBB65_40:                              # %for.cond.2.backedge.i.1
                                        #   in Loop: Header=BB65_37 Depth=1
	addq	$-8, %rcx
	addl	$-2, %eax
	jns	.LBB65_37
.LBB65_13:                              # %if.end.12
	cmpl	$1, %r8d
	jne	.LBB65_14
# BB#42:                                # %for.cond.15.preheader
	testl	%r15d, %r15d
	movq	%r15, 16(%rsp)          # 8-byte Spill
	jle	.LBB65_52
# BB#43:                                # %for.body.18.preheader
	addq	$496, %rdx              # imm = 0x1F0
	leaq	160(%rsp), %rbp
	leaq	32(%rsp), %rbx
	movl	$gs_identity_transfer, %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	.align	16, 0x90
.LBB65_44:                              # %for.body.18
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rsi
	movw	(%rbp), %r14w
	movswl	%r14w, %r15d
	cmpq	%rcx, 24(%rsi)
	je	.LBB65_45
# BB#46:                                # %cond.end
                                        #   in Loop: Header=BB65_44 Depth=1
	addq	$56, %rsi
	movl	%r15d, %edi
	movq	%rdx, %r12
	callq	gx_color_frac_map
	movl	$gs_identity_transfer, %ecx
	movq	%r12, %rdx
	movq	(%rdx), %rsi
	movswl	%ax, %r12d
	addl	%r12d, %r12d
	cmpq	%rcx, 24(%rsi)
	je	.LBB65_48
# BB#47:                                # %cond.false.45
                                        #   in Loop: Header=BB65_44 Depth=1
	addq	$56, %rsi
	movl	%r15d, %edi
	movq	%rdx, %r14
	callq	gx_color_frac_map
	movq	%r14, %rdx
	movw	%ax, %r14w
	jmp	.LBB65_48
	.align	16, 0x90
.LBB65_45:                              # %cond.end.thread
                                        #   in Loop: Header=BB65_44 Depth=1
	addl	%r15d, %r15d
	movl	%r15d, %r12d
.LBB65_48:                              # %cond.end.55
                                        #   in Loop: Header=BB65_44 Depth=1
	movswl	%r14w, %eax
	shrl	$11, %eax
	addl	%r12d, %eax
	movw	%ax, (%rbx)
	addq	$2, %rbp
	addq	$2, %rbx
	addq	$8, %rdx
	decl	%r13d
	movl	$gs_identity_transfer, %ecx
	jne	.LBB65_44
	jmp	.LBB65_52
.LBB65_14:                              # %for.cond.63.preheader
	testl	%r15d, %r15d
	movq	%r15, 16(%rsp)          # 8-byte Spill
	jle	.LBB65_52
# BB#15:                                # %for.body.66.preheader
	addq	$496, %rdx              # imm = 0x1F0
	leaq	160(%rsp), %r14
	leaq	32(%rsp), %r15
	movl	$gs_identity_transfer, %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	.align	16, 0x90
.LBB65_16:                              # %for.body.66
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rsi
	movw	$32760, %bp             # imm = 0x7FF8
	subw	(%r14), %bp
	cmpq	%rcx, 24(%rsi)
	je	.LBB65_17
# BB#49:                                # %cond.end.94
                                        #   in Loop: Header=BB65_16 Depth=1
	addq	$56, %rsi
	movswl	%bp, %edi
	movl	%edi, 24(%rsp)          # 4-byte Spill
	movq	%rdx, %rbx
	callq	gx_color_frac_map
	movl	$gs_identity_transfer, %ecx
	movq	%rbx, %rdx
	movq	(%rdx), %rsi
	cwtl
	movl	$32760, %r12d           # imm = 0x7FF8
	subl	%eax, %r12d
	addl	%r12d, %r12d
	cmpq	%rcx, 24(%rsi)
	je	.LBB65_51
# BB#50:                                # %cond.false.112
                                        #   in Loop: Header=BB65_16 Depth=1
	addq	$56, %rsi
	movl	24(%rsp), %edi          # 4-byte Reload
	movq	%rdx, %rbx
	callq	gx_color_frac_map
	movq	%rbx, %rdx
	movw	%ax, %bp
	jmp	.LBB65_51
	.align	16, 0x90
.LBB65_17:                              # %cond.end.94.thread
                                        #   in Loop: Header=BB65_16 Depth=1
	movswl	%bp, %eax
	movl	$32760, %r12d           # imm = 0x7FF8
	subl	%eax, %r12d
	addl	%r12d, %r12d
.LBB65_51:                              # %cond.end.125
                                        #   in Loop: Header=BB65_16 Depth=1
	movswl	%bp, %eax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	shrl	$11, %ecx
	addl	%r12d, %ecx
	movw	%cx, (%r15)
	addq	$2, %r14
	addq	$2, %r15
	addq	$8, %rdx
	decl	%r13d
	movl	$gs_identity_transfer, %ecx
	jne	.LBB65_16
.LBB65_52:                              # %if.end.136
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	je	.LBB65_65
# BB#53:                                # %for.cond.140.preheader
	movq	16(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	movq	(%rsp), %r8             # 8-byte Reload
	jle	.LBB65_64
# BB#54:                                # %for.body.143.lr.ph
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %r9
	xorl	%esi, %esi
	movq	%r9, %rdx
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rdx
	je	.LBB65_61
# BB#55:                                # %vector.body143.preheader
	leaq	1(%rcx), %rsi
	andq	%rax, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rbp
	shrq	$4, %rbp
	xorl	%edi, %edi
	btq	$4, %rsi
	jb	.LBB65_57
# BB#56:                                # %vector.body143.prol
	movdqa	32(%rsp), %xmm0
	movdqa	48(%rsp), %xmm1
	movdqu	%xmm0, 8(%r8)
	movdqu	%xmm1, 24(%r8)
	movl	$16, %edi
.LBB65_57:                              # %vector.body143.preheader.split
	testq	%rbp, %rbp
	je	.LBB65_60
# BB#58:                                # %vector.body143.preheader.split.split
	incq	%rcx
	andq	%rax, %rcx
	subq	%rdi, %rcx
	leaq	80(%rsp,%rdi,2), %rsi
	leaq	56(%r8,%rdi,2), %rdi
	.align	16, 0x90
.LBB65_59:                              # %vector.body143
                                        # =>This Inner Loop Header: Depth=1
	movaps	-48(%rsi), %xmm0
	movaps	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movdqa	-16(%rsi), %xmm0
	movdqa	(%rsi), %xmm1
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rcx
	jne	.LBB65_59
.LBB65_60:
	movq	%rdx, %rsi
.LBB65_61:                              # %middle.block144
	cmpq	%rsi, %r9
	je	.LBB65_64
# BB#62:                                # %for.body.143.preheader
	leaq	32(%rsp,%rsi,2), %rax
	leaq	8(%r8,%rsi,2), %rcx
	subl	%esi, %ebx
	.align	16, 0x90
.LBB65_63:                              # %for.body.143
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rax), %dx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebx
	jne	.LBB65_63
.LBB65_64:                              # %for.end.151
	movq	$gx_dc_type_data_devn, (%r8)
	jmp	.LBB65_67
.LBB65_65:                              # %if.else.152
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB65_67
# BB#66:                                # %if.then.158
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
.LBB65_67:                              # %if.end.162
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	pdf14_cmap_separation_direct, .Lfunc_end65-pdf14_cmap_separation_direct
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_devicen_direct,@function
pdf14_cmap_devicen_direct:              # @pdf14_cmap_devicen_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp575:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp576:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp577:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp578:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp579:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp580:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp581:
	.cfi_def_cfa_offset 352
.Ltmp582:
	.cfi_offset %rbx, -56
.Ltmp583:
	.cfi_offset %r12, -48
.Ltmp584:
	.cfi_offset %r13, -40
.Ltmp585:
	.cfi_offset %r14, -32
.Ltmp586:
	.cfi_offset %r15, -24
.Ltmp587:
	.cfi_offset %rbp, -16
	movabsq	$8589934576, %r14       # imm = 0x1FFFFFFF0
	movq	264(%rdx), %rax
	testq	%rax, %rax
	cmovneq	%rax, %rcx
	movl	100(%rcx), %r15d
	movl	1036(%rdx), %ebp
	movl	%ebp, %r12d
	decl	%r12d
	js	.LBB66_12
# BB#1:                                 # %for.body.lr.ph.i
	movslq	%r12d, %r11
	leaq	1(%r12), %r9
	movq	%r9, %r13
	andq	%r14, %r13
	xorl	%ebx, %ebx
	movq	%r9, %r10
	andq	%r14, %r10
	je	.LBB66_9
# BB#2:                                 # %vector.body.preheader
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leal	-1(%rbp), %r8d
	leaq	1(%r8), %rax
	andq	%r14, %rax
	movq	%r14, %rdi
	addq	$-16, %rax
	movl	%eax, %edx
	shrl	$4, %edx
	incl	%edx
	xorl	%ebx, %ebx
	testb	$3, %dl
	je	.LBB66_5
# BB#3:                                 # %vector.body.prol.preheader
	movslq	%r8d, %rdx
	leaq	146(%rsp,%rdx,2), %rdx
	andl	$48, %ebp
	addl	$-16, %ebp
	shrl	$4, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB66_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdx)
	movups	%xmm0, -16(%rdx)
	addq	$16, %rbx
	addq	$-32, %rdx
	incq	%rbp
	jne	.LBB66_4
.LBB66_5:                               # %vector.body.preheader.split
	movq	%r11, %r14
	subq	%r13, %r14
	movl	%r11d, %r12d
	subl	%r13d, %r12d
	cmpq	$48, %rax
	jb	.LBB66_8
# BB#6:                                 # %vector.body.preheader.split.split
	leaq	1(%r8), %rax
	andq	%rdi, %rax
	subq	%rbx, %rax
	movslq	%r8d, %rbp
	addq	$-7, %rbp
	subq	%rbx, %rbp
	leaq	160(%rsp,%rbp,2), %rbp
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB66_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbp)
	movups	%xmm0, -16(%rbp)
	movups	%xmm0, -32(%rbp)
	movups	%xmm0, -48(%rbp)
	movups	%xmm0, -64(%rbp)
	movups	%xmm0, -80(%rbp)
	movups	%xmm0, -96(%rbp)
	movups	%xmm0, -112(%rbp)
	addq	$-128, %rbp
	addq	$-64, %rax
	jne	.LBB66_7
.LBB66_8:
	movq	%r14, %r11
	movq	%r10, %rbx
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	16(%rsp), %rdi          # 8-byte Reload
.LBB66_9:                               # %middle.block
	cmpq	%rbx, %r9
	je	.LBB66_12
# BB#10:                                # %for.body.i.preheader
	leaq	160(%rsp,%r11,2), %rax
	.align	16, 0x90
.LBB66_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$-2, %rax
	decl	%r12d
	jns	.LBB66_11
.LBB66_12:                              # %for.end.i
	movl	1032(%rdx), %ebx
	movl	%ebx, %r8d
	decl	%r8d
	js	.LBB66_23
# BB#13:                                # %for.body.4.lr.ph.i
	movslq	%r8d, %rax
	testb	$1, %bl
	je	.LBB66_17
# BB#14:                                # %for.body.4.i.prol
	movslq	1048(%rdx,%rax,4), %r8
	testq	%r8, %r8
	js	.LBB66_16
# BB#15:                                # %if.then.i.prol
	movw	(%rdi,%rax,2), %bp
	movw	%bp, 160(%rsp,%r8,2)
.LBB66_16:                              # %for.cond.2.backedge.i.prol
	leal	-2(%rbx), %r8d
	decq	%rax
.LBB66_17:                              # %for.body.4.lr.ph.i.split
	cmpl	$1, %ebx
	je	.LBB66_23
# BB#18:                                # %for.body.4.lr.ph.i.split.split
	leaq	1048(%rdx,%rax,4), %rbx
	leaq	(%rdi,%rax,2), %rax
	.align	16, 0x90
.LBB66_19:                              # %for.body.4.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbx), %rbp
	testq	%rbp, %rbp
	js	.LBB66_20
# BB#54:                                # %if.then.i
                                        #   in Loop: Header=BB66_19 Depth=1
	movw	(%rax), %di
	movw	%di, 160(%rsp,%rbp,2)
.LBB66_20:                              # %for.cond.2.backedge.i
                                        #   in Loop: Header=BB66_19 Depth=1
	movslq	-4(%rbx), %rbp
	testq	%rbp, %rbp
	js	.LBB66_22
# BB#21:                                # %if.then.i.1
                                        #   in Loop: Header=BB66_19 Depth=1
	movw	-2(%rax), %di
	movw	%di, 160(%rsp,%rbp,2)
.LBB66_22:                              # %for.cond.2.backedge.i.1
                                        #   in Loop: Header=BB66_19 Depth=1
	addq	$-8, %rbx
	addq	$-4, %rax
	addl	$-2, %r8d
	jns	.LBB66_19
.LBB66_23:                              # %map_components_to_colorants.exit
	cmpl	$1, 104(%rcx)
	jne	.LBB66_24
# BB#28:                                # %for.cond.preheader
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	testl	%r15d, %r15d
	movq	%r15, 16(%rsp)          # 8-byte Spill
	jle	.LBB66_38
# BB#29:                                # %for.body.preheader
	addq	$496, %rdx              # imm = 0x1F0
	leaq	160(%rsp), %rbp
	leaq	32(%rsp), %rbx
	movl	$gs_identity_transfer, %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	.align	16, 0x90
.LBB66_30:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rsi
	movw	(%rbp), %r14w
	movswl	%r14w, %r15d
	cmpq	%rcx, 24(%rsi)
	je	.LBB66_31
# BB#32:                                # %cond.end
                                        #   in Loop: Header=BB66_30 Depth=1
	addq	$56, %rsi
	movl	%r15d, %edi
	movq	%rdx, %r12
	callq	gx_color_frac_map
	movl	$gs_identity_transfer, %ecx
	movq	%r12, %rdx
	movq	(%rdx), %rsi
	movswl	%ax, %r12d
	addl	%r12d, %r12d
	cmpq	%rcx, 24(%rsi)
	je	.LBB66_34
# BB#33:                                # %cond.false.31
                                        #   in Loop: Header=BB66_30 Depth=1
	addq	$56, %rsi
	movl	%r15d, %edi
	movq	%rdx, %r14
	callq	gx_color_frac_map
	movq	%r14, %rdx
	movw	%ax, %r14w
	jmp	.LBB66_34
	.align	16, 0x90
.LBB66_31:                              # %cond.end.thread
                                        #   in Loop: Header=BB66_30 Depth=1
	addl	%r15d, %r15d
	movl	%r15d, %r12d
.LBB66_34:                              # %cond.end.41
                                        #   in Loop: Header=BB66_30 Depth=1
	movswl	%r14w, %eax
	shrl	$11, %eax
	addl	%r12d, %eax
	movw	%ax, (%rbx)
	addq	$2, %rbp
	addq	$2, %rbx
	addq	$8, %rdx
	decl	%r13d
	movl	$gs_identity_transfer, %ecx
	jne	.LBB66_30
	jmp	.LBB66_38
.LBB66_24:                              # %for.cond.47.preheader
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	testl	%r15d, %r15d
	movq	%r15, 16(%rsp)          # 8-byte Spill
	jle	.LBB66_38
# BB#25:                                # %for.body.50.preheader
	addq	$496, %rdx              # imm = 0x1F0
	leaq	160(%rsp), %r14
	leaq	32(%rsp), %r15
	movl	$gs_identity_transfer, %ecx
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	.align	16, 0x90
.LBB66_26:                              # %for.body.50
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rsi
	movw	$32760, %bp             # imm = 0x7FF8
	subw	(%r14), %bp
	cmpq	%rcx, 24(%rsi)
	je	.LBB66_27
# BB#35:                                # %cond.end.77
                                        #   in Loop: Header=BB66_26 Depth=1
	addq	$56, %rsi
	movswl	%bp, %edi
	movl	%edi, 24(%rsp)          # 4-byte Spill
	movq	%rdx, %rbx
	callq	gx_color_frac_map
	movl	$gs_identity_transfer, %ecx
	movq	%rbx, %rdx
	movq	(%rdx), %rsi
	cwtl
	movl	$32760, %r12d           # imm = 0x7FF8
	subl	%eax, %r12d
	addl	%r12d, %r12d
	cmpq	%rcx, 24(%rsi)
	je	.LBB66_37
# BB#36:                                # %cond.false.95
                                        #   in Loop: Header=BB66_26 Depth=1
	addq	$56, %rsi
	movl	24(%rsp), %edi          # 4-byte Reload
	movq	%rdx, %rbx
	callq	gx_color_frac_map
	movq	%rbx, %rdx
	movw	%ax, %bp
	jmp	.LBB66_37
	.align	16, 0x90
.LBB66_27:                              # %cond.end.77.thread
                                        #   in Loop: Header=BB66_26 Depth=1
	movswl	%bp, %eax
	movl	$32760, %r12d           # imm = 0x7FF8
	subl	%eax, %r12d
	addl	%r12d, %r12d
.LBB66_37:                              # %cond.end.108
                                        #   in Loop: Header=BB66_26 Depth=1
	movswl	%bp, %eax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	shrl	$11, %ecx
	addl	%r12d, %ecx
	movw	%cx, (%r15)
	addq	$2, %r14
	addq	$2, %r15
	addq	$8, %rdx
	decl	%r13d
	movl	$gs_identity_transfer, %ecx
	jne	.LBB66_26
.LBB66_38:                              # %if.end.119
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	je	.LBB66_51
# BB#39:                                # %for.cond.122.preheader
	movq	16(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	movq	(%rsp), %r8             # 8-byte Reload
	jle	.LBB66_50
# BB#40:                                # %for.body.125.lr.ph
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %r9
	xorl	%esi, %esi
	movq	%r9, %rdx
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rdx
	je	.LBB66_47
# BB#41:                                # %vector.body93.preheader
	leaq	1(%rcx), %rsi
	andq	%rax, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rbp
	shrq	$4, %rbp
	xorl	%edi, %edi
	btq	$4, %rsi
	jb	.LBB66_43
# BB#42:                                # %vector.body93.prol
	movaps	32(%rsp), %xmm0
	movaps	48(%rsp), %xmm1
	movups	%xmm0, 8(%r8)
	movups	%xmm1, 24(%r8)
	movl	$16, %edi
.LBB66_43:                              # %vector.body93.preheader.split
	testq	%rbp, %rbp
	je	.LBB66_46
# BB#44:                                # %vector.body93.preheader.split.split
	incq	%rcx
	andq	%rax, %rcx
	subq	%rdi, %rcx
	leaq	80(%rsp,%rdi,2), %rsi
	leaq	56(%r8,%rdi,2), %rdi
	.align	16, 0x90
.LBB66_45:                              # %vector.body93
                                        # =>This Inner Loop Header: Depth=1
	movaps	-48(%rsi), %xmm0
	movaps	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movaps	-16(%rsi), %xmm0
	movaps	(%rsi), %xmm1
	movups	%xmm0, -16(%rdi)
	movups	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rcx
	jne	.LBB66_45
.LBB66_46:
	movq	%rdx, %rsi
.LBB66_47:                              # %middle.block94
	cmpq	%rsi, %r9
	je	.LBB66_50
# BB#48:                                # %for.body.125.preheader
	leaq	32(%rsp,%rsi,2), %rax
	leaq	8(%r8,%rsi,2), %rcx
	subl	%esi, %ebx
	.align	16, 0x90
.LBB66_49:                              # %for.body.125
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rax), %dx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebx
	jne	.LBB66_49
.LBB66_50:                              # %for.end.133
	movq	$gx_dc_type_data_devn, (%r8)
	jmp	.LBB66_53
.LBB66_51:                              # %if.else.134
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB66_53
# BB#52:                                # %if.then.140
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
.LBB66_53:                              # %if.end.144
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	pdf14_cmap_devicen_direct, .Lfunc_end66-pdf14_cmap_devicen_direct
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_is_halftoned,@function
pdf14_cmap_is_halftoned:                # @pdf14_cmap_is_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end67:
	.size	pdf14_cmap_is_halftoned, .Lfunc_end67-pdf14_cmap_is_halftoned
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_device_enum_ptrs,@function
pdf14_device_enum_ptrs:                 # @pdf14_device_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp588:
	.cfi_def_cfa_offset 16
.Ltmp589:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	movl	%ecx, %eax
	cmpl	$6, %ecx
	jbe	.LBB68_1
# BB#2:                                 # %sw.default
	addl	$-7, %ecx
	movl	%ecx, %edx
	subl	1768(%rsi), %edx
	jge	.LBB68_4
# BB#3:                                 # %if.then
	movslq	%ecx, %rax
	shlq	$4, %rax
	movq	1784(%rsi,%rax), %rax
	jmp	.LBB68_14
.LBB68_1:                               # %entry
	jmpq	*.LJTI68_0(,%rax,8)
.LBB68_6:                               # %sw.bb
	movq	4152(%rsi), %rax
	jmp	.LBB68_14
.LBB68_4:                               # %if.end
	xorl	%eax, %eax
	cmpl	3104(%rsi), %edx
	jge	.LBB68_15
# BB#5:                                 # %if.then.10
	movslq	%edx, %rax
	shlq	$4, %rax
	movq	3120(%rsi,%rax), %rax
	jmp	.LBB68_14
.LBB68_7:                               # %sw.bb.20
	movq	5016(%rsi), %rax
	jmp	.LBB68_14
.LBB68_8:                               # %sw.bb.22
	movq	4160(%rsi), %rax
	jmp	.LBB68_14
.LBB68_9:                               # %sw.bb.24
	movq	1728(%rsi), %rdi
	jmp	.LBB68_13
.LBB68_10:                              # %sw.bb.26
	movq	3088(%rsi), %rax
	jmp	.LBB68_14
.LBB68_11:                              # %sw.bb.29
	movq	3096(%rsi), %rax
	jmp	.LBB68_14
.LBB68_12:                              # %sw.bb.32
	movq	4208(%rsi), %rdi
.LBB68_13:                              # %cleanup
	callq	gx_device_enum_ptr
.LBB68_14:                              # %cleanup
	movq	%rax, (%rbx)
	movl	$ptr_struct_procs, %eax
.LBB68_15:                              # %cleanup
	popq	%rbx
	retq
.Lfunc_end68:
	.size	pdf14_device_enum_ptrs, .Lfunc_end68-pdf14_device_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI68_0:
	.quad	.LBB68_6
	.quad	.LBB68_7
	.quad	.LBB68_8
	.quad	.LBB68_9
	.quad	.LBB68_10
	.quad	.LBB68_11
	.quad	.LBB68_12

	.text
	.align	16, 0x90
	.type	pdf14_device_reloc_ptrs,@function
pdf14_device_reloc_ptrs:                # @pdf14_device_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp590:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp591:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp592:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp593:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp594:
	.cfi_def_cfa_offset 48
.Ltmp595:
	.cfi_offset %rbx, -40
.Ltmp596:
	.cfi_offset %r12, -32
.Ltmp597:
	.cfi_offset %r14, -24
.Ltmp598:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdi, %r14
	movq	(%r15), %rax
	movq	(%rax), %rcx
	cmpl	$0, 1768(%r14)
	jle	.LBB69_3
# BB#1:                                 # %for.body.lr.ph
	leaq	1784(%r14), %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB69_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	callq	*%rcx
	movq	%rax, (%rbx)
	incq	%r12
	movslq	1768(%r14), %rax
	movq	(%r15), %rcx
	movq	(%rcx), %rcx
	addq	$16, %rbx
	cmpq	%rax, %r12
	jl	.LBB69_2
.LBB69_3:                               # %for.end
	movq	3088(%r14), %rdi
	movq	%r15, %rsi
	callq	*%rcx
	movq	%rax, 3088(%r14)
	movq	(%r15), %rax
	movq	3096(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 3096(%r14)
	movq	(%r15), %rax
	movq	4152(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 4152(%r14)
	movq	(%r15), %rax
	movq	4160(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 4160(%r14)
	movq	(%r15), %rax
	movq	5016(%r14), %rdi
	movq	%r15, %rsi
	callq	*(%rax)
	movq	%rax, 5016(%r14)
	movq	1728(%r14), %rdi
	movq	%r15, %rsi
	callq	gx_device_reloc_ptr
	movq	%rax, 1728(%r14)
	movq	4208(%r14), %rdi
	movq	%r15, %rsi
	callq	gx_device_reloc_ptr
	movq	%rax, 4208(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end69:
	.size	pdf14_device_reloc_ptrs, .Lfunc_end69-pdf14_device_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_put_image,@function
pdf14_put_image:                        # @pdf14_put_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp599:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp600:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp601:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp602:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp603:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp604:
	.cfi_def_cfa_offset 56
	subq	$808, %rsp              # imm = 0x328
.Ltmp605:
	.cfi_def_cfa_offset 864
.Ltmp606:
	.cfi_offset %rbx, -56
.Ltmp607:
	.cfi_offset %r12, -48
.Ltmp608:
	.cfi_offset %r13, -40
.Ltmp609:
	.cfi_offset %r14, -32
.Ltmp610:
	.cfi_offset %r15, -24
.Ltmp611:
	.cfi_offset %rbp, -16
	movq	4152(%rdi), %rax
	movq	(%rax), %r14
	xorl	%r13d, %r13d
	cmpl	40(%rax), %r13d
	sbbb	%r8b, %r8b
	cmpq	$0, (%r14)
	je	.LBB70_3
# BB#1:                                 # %if.then
	movl	$.L__func__.pdf14_put_image, %edi
	movl	$.L.str.39, %esi
	movl	$1724, %edx             # imm = 0x6BC
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.60, %r9d
.LBB70_2:                               # %cleanup.267
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %r13d
.LBB70_40:                              # %cleanup.267
	movl	%r13d, %eax
	addq	$808, %rsp              # imm = 0x328
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB70_3:                               # %do.body.4
	movl	44(%r14), %ebx
	movl	48(%r14), %r9d
	movl	52(%r14), %ebp
	movl	56(%r14), %r12d
	movl	96(%r14), %eax
	movl	100(%r14), %ecx
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	movl	104(%r14), %eax
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	cmpl	%r9d, %ecx
	cmovgel	%ecx, %r9d
	movl	108(%r14), %eax
	cmpl	%r12d, %eax
	cmovlel	%eax, %r12d
	movl	832(%rdi), %eax
	movl	836(%rdi), %ecx
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	cmpl	%r12d, %ecx
	cmovlel	%ecx, %r12d
	subl	%ebx, %ebp
	jle	.LBB70_40
# BB#4:                                 # %do.body.4
	subl	%r9d, %r12d
	testl	%r12d, %r12d
	jle	.LBB70_40
# BB#5:                                 # %lor.lhs.false.90
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movl	%ebx, 112(%rsp)         # 4-byte Spill
	movl	%r9d, 124(%rsp)         # 4-byte Spill
	movb	%r8b, 103(%rsp)         # 1-byte Spill
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movl	%ebp, 128(%rsp)         # 4-byte Spill
	movq	80(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB70_40
# BB#6:                                 # %if.end.94
	movl	68(%r14), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movslq	60(%r14), %r15
	leaq	152(%rsp), %rsi
	movq	%rdx, %rdi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	callq	*1680(%rdi)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB70_40
# BB#7:                                 # %if.end.106
	cmpq	$0, 152(%rsp)
	je	.LBB70_8
# BB#9:                                 # %if.end.112
	movq	80(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rcx), %ebp
	movslq	124(%rsp), %rax         # 4-byte Folded Reload
	imulq	%rax, %r15
	addq	%r15, %rbx
	movslq	112(%rsp), %r15         # 4-byte Folded Reload
	addq	%rbx, %r15
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	1656(%rax), %rax
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB70_19
# BB#10:                                # %if.then.116
	cmpl	$0, 40(%r14)
	movl	%ecx, %esi
	jne	.LBB70_12
# BB#11:                                # %select.mid
	xorl	%esi, %esi
.LBB70_12:                              # %select.end
	movl	%esi, 104(%rsp)         # 4-byte Spill
	movl	60(%r14), %ecx
	movl	64(%r14), %edx
	movl	%esi, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%r12d, (%rsp)
	movq	72(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	movl	112(%rsp), %ecx         # 4-byte Reload
	movl	124(%rsp), %r8d         # 4-byte Reload
	movl	128(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %r9d
	callq	*%rax
	testl	%eax, %eax
	je	.LBB70_14
# BB#13:
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movl	%ebp, %edi
	jmp	.LBB70_15
.LBB70_8:                               # %if.then.109
	movl	$-100, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.pdf14_put_image, %edi
	movl	$.L.str.39, %esi
	movl	$1748, %edx             # imm = 0x6D4
	xorl	%ecx, %ecx
	movl	$-100, %r8d
	movl	$.L.str.61, %r9d
	jmp	.LBB70_2
.LBB70_14:                              # %if.then.132
	movl	60(%r14), %ecx
	movl	64(%r14), %r8d
	movzbl	103(%rsp), %eax         # 1-byte Folded Reload
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r12d, %edx
	movl	%ebp, %r9d
	callq	gx_blend_image_buffer
	movl	60(%r14), %eax
	movl	64(%r14), %ecx
	movl	104(%rsp), %edx         # 4-byte Reload
	movl	%edx, 32(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r12d, (%rsp)
	movl	$0, 24(%rsp)
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	movl	112(%rsp), %ecx         # 4-byte Reload
	movl	124(%rsp), %r8d         # 4-byte Reload
	movl	%ebx, %r9d
	callq	*1656(%r13)
	xorl	%edi, %edi
	movl	$1, 60(%rsp)            # 4-byte Folded Spill
.LBB70_15:                              # %if.end.144
	testl	%eax, %eax
	jle	.LBB70_19
# BB#16:                                # %if.then.147
	xorl	%r13d, %r13d
	subl	%eax, %r12d
	jle	.LBB70_40
# BB#17:                                # %while.body.lr.ph
	movq	72(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB70_18:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	72(%r14), %edx
	addl	124(%rsp), %eax         # 4-byte Folded Reload
	movl	60(%r14), %ecx
	movl	64(%r14), %esi
	movl	104(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, 32(%rsp)
	movl	%edi, 24(%rsp)
	movl	%esi, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%r12d, (%rsp)
	movl	%edi, %ebp
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	112(%rsp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	movl	128(%rsp), %r9d         # 4-byte Reload
	callq	*1656(%rbx)
	movl	%ebp, %edi
	subl	%eax, %r12d
	jg	.LBB70_18
	jmp	.LBB70_40
.LBB70_19:                              # %if.end.164
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdx
	leaq	192(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_cspace_build_ICC
	movl	$-25, %r13d
	cmpq	$0, 192(%rsp)
	je	.LBB70_40
# BB#20:                                # %if.end.169
	testl	%eax, %eax
	movl	%eax, %r13d
	js	.LBB70_40
# BB#21:                                # %if.end.173
	leaq	160(%rsp), %rsi
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	*1680(%rdi)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB70_39
# BB#22:                                # %if.end.180
	movq	160(%rsp), %rsi
	movq	192(%rsp), %rdx
	addq	$64, %rdx
	leaq	168(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movq	192(%rsp), %rdi
	movq	64(%rdi), %rax
	addq	$64, %rdi
	testq	%rax, %rax
	je	.LBB70_24
# BB#23:                                # %do.body.185
	incq	288(%rax)
.LBB70_24:                              # %do.end.194
	callq	gscms_set_icc_range
	movq	192(%rsp), %rsi
	leaq	208(%rsp), %r13
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	gs_image_t_init_adjust
	movl	128(%rsp), %ebx         # 4-byte Reload
	cvtsi2ssl	%ebx, %xmm0
	movss	%xmm0, 216(%rsp)
	cvtsi2ssl	%r12d, %xmm1
	movss	%xmm1, 228(%rsp)
	movl	%ebx, 240(%rsp)
	movl	%r12d, 244(%rsp)
	movl	$8, 248(%rsp)
	movq	88(%rsp), %rsi          # 8-byte Reload
	movss	%xmm0, 132(%rsi)
	movl	$0, 136(%rsi)
	movl	$0, 140(%rsi)
	movss	%xmm1, 144(%rsi)
	movl	112(%rsp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 148(%rsi)
	movl	124(%rsp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 152(%rsi)
	movq	8(%rsi), %rax
	leaq	200(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rcx
	callq	*1440(%rdi)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB70_39
# BB#25:                                # %if.end.220
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	%ebx, %esi
	imull	%ebp, %esi
	movl	%esi, 72(%rsp)          # 4-byte Spill
	movl	$.L__func__.pdf14_put_image, %edx
	callq	*64(%rdi)
	movq	%rax, 112(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	jle	.LBB70_38
# BB#26:                                # %for.body.lr.ph
	movslq	%ebp, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movslq	128(%rsp), %rbx         # 4-byte Folded Reload
	movq	80(%rsp), %rax          # 8-byte Reload
	andl	$1, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	incq	%rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
.LBB70_27:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_29 Depth 2
                                        #       Child Loop BB70_34 Depth 3
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB70_36
# BB#28:                                # %for.cond.231.preheader
                                        #   in Loop: Header=BB70_27 Depth=1
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpl	$0, 128(%rsp)           # 4-byte Folded Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	$0, %ecx
	movq	80(%rsp), %r9           # 8-byte Reload
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	104(%rsp), %r10         # 8-byte Reload
	movq	%rbx, %r11
	jle	.LBB70_37
	.align	16, 0x90
.LBB70_29:                              # %for.cond.235.preheader
                                        #   Parent Loop BB70_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB70_34 Depth 3
	cmpl	$2, %r9d
	jl	.LBB70_35
# BB#30:                                # %for.body.238.lr.ph
                                        #   in Loop: Header=BB70_29 Depth=2
	cmpl	$0, 124(%rsp)           # 4-byte Folded Reload
	movl	$0, %edx
	jne	.LBB70_32
# BB#31:                                # %for.body.238.prol
                                        #   in Loop: Header=BB70_29 Depth=2
	movq	%rcx, %rdi
	imulq	%r10, %rdi
	movslq	%ecx, %rsi
	movb	(%r15,%rsi), %dl
	movb	%dl, (%r8,%rdi)
	movl	$1, %edx
.LBB70_32:                              # %for.body.238.lr.ph.split
                                        #   in Loop: Header=BB70_29 Depth=2
	cmpl	$2, %r9d
	je	.LBB70_35
# BB#33:                                # %for.body.238.lr.ph.split.split
                                        #   in Loop: Header=BB70_29 Depth=2
	leaq	(%rax,%rdx), %rsi
	.align	16, 0x90
.LBB70_34:                              # %for.body.238
                                        #   Parent Loop BB70_27 Depth=1
                                        #     Parent Loop BB70_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	64(%r14), %edi
	imull	%edx, %edi
	addl	%ecx, %edi
	movslq	%edi, %rdi
	movb	(%r15,%rdi), %bl
	movb	%bl, -1(%rsi)
	leal	1(%rdx), %edi
	imull	64(%r14), %edi
	addl	%ecx, %edi
	movslq	%edi, %rdi
	movb	(%r15,%rdi), %bl
	movb	%bl, (%rsi)
	addq	$2, %rdx
	addq	$2, %rsi
	cmpl	%edx, %ebp
	jne	.LBB70_34
.LBB70_35:                              # %for.inc.247
                                        #   in Loop: Header=BB70_29 Depth=2
	incq	%rcx
	addq	%r10, %rax
	cmpq	%r11, %rcx
	jl	.LBB70_29
	jmp	.LBB70_37
.LBB70_36:                              # %if.else
                                        #   in Loop: Header=BB70_27 Depth=1
	movl	64(%r14), %edx
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, (%rsp)
	movzbl	103(%rsp), %r9d         # 1-byte Folded Reload
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movl	128(%rsp), %ecx         # 4-byte Reload
	movl	%ebp, %r8d
	callq	gx_build_blended_image_row
	movq	112(%rsp), %r8          # 8-byte Reload
	movq	104(%rsp), %r10         # 8-byte Reload
	movq	%rbx, %r11
.LBB70_37:                              # %if.end.251
                                        #   in Loop: Header=BB70_27 Depth=1
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movq	%r11, %rbx
	movq	%r10, 104(%rsp)         # 8-byte Spill
	movq	%r8, 136(%rsp)
	movl	$0, 144(%rsp)
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 148(%rsp)
	movq	200(%rsp), %rdi
	movq	8(%rdi), %rax
	movl	$1, %edx
	leaq	136(%rsp), %rsi
	leaq	132(%rsp), %rcx
	callq	*(%rax)
	movslq	60(%r14), %rax
	addq	%rax, %r15
	movq	88(%rsp), %rax          # 8-byte Reload
	incl	%eax
	cmpl	%r12d, %eax
	jl	.LBB70_27
.LBB70_38:                              # %for.end.261
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L__func__.pdf14_put_image, %edx
	movq	112(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movq	200(%rsp), %rdi
	movq	8(%rdi), %rax
	movl	$1, %esi
	callq	*8(%rax)
.LBB70_39:                              # %cleanup.267
	movq	192(%rsp), %rdi
	movl	$.L__func__.pdf14_put_image, %esi
	callq	rc_decrement_only_cs
	jmp	.LBB70_40
.Lfunc_end70:
	.size	pdf14_put_image, .Lfunc_end70-pdf14_put_image
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmykspot_get_color_mapping_procs,@function
pdf14_cmykspot_get_color_mapping_procs: # @pdf14_cmykspot_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$pdf14_DeviceCMYKspot_procs, %eax
	retq
.Lfunc_end71:
	.size	pdf14_cmykspot_get_color_mapping_procs, .Lfunc_end71-pdf14_cmykspot_get_color_mapping_procs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmykspot_get_color_comp_index,@function
pdf14_cmykspot_get_color_comp_index:    # @pdf14_cmykspot_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp612:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp613:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp614:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp615:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp616:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp617:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp618:
	.cfi_def_cfa_offset 64
.Ltmp619:
	.cfi_offset %rbx, -56
.Ltmp620:
	.cfi_offset %r12, -48
.Ltmp621:
	.cfi_offset %r13, -40
.Ltmp622:
	.cfi_offset %r14, -32
.Ltmp623:
	.cfi_offset %r15, -24
.Ltmp624:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	1728(%r12), %r15
	movq	1544(%r15), %r8
	movl	$pdf14_cmykspot_get_color_comp_index, %eax
	cmpq	%rax, %r8
	jne	.LBB72_2
# BB#1:                                 # %if.then
	movq	4976(%r12), %r8
.LBB72_2:                               # %if.end
	testl	%ebp, %ebp
	je	.LBB72_10
# BB#3:                                 # %if.end.3
	movq	%r8, (%rsp)             # 8-byte Spill
	leaq	1736(%r12), %r14
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	check_pcm_and_separation_names
	movl	%ebx, %edx
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB72_9
# BB#4:                                 # %if.end.7
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%edx, %r15d
	movl	%ebp, %ecx
	callq	*(%rsp)                 # 8-byte Folded Reload
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB72_9
# BB#5:                                 # %if.end.7
	cmpl	$64, %ebx
	je	.LBB72_9
# BB#6:                                 # %if.end.12
	movq	%r13, (%rsp)            # 8-byte Spill
	movl	%r15d, %esi
	movslq	32(%r14), %rbp
	cmpq	$62, %rbp
	movl	$64, %ebx
	jg	.LBB72_9
# BB#7:                                 # %if.then.14
	leal	1(%rbp), %eax
	movl	%eax, 1768(%r12)
	movq	24(%r12), %rax
	movq	(%rax), %rdi
	movl	$.L.str.62, %edx
	movl	%esi, %r13d
	callq	*64(%rdi)
	movq	%rax, %r15
	movslq	%r13d, %rdx
	movq	%r15, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	memcpy
	movq	%rbp, %rax
	shlq	$4, %rax
	movl	%r13d, 40(%r14,%rax)
	movq	%r15, 48(%r14,%rax)
	movslq	1752(%r12), %rax
	addq	%rbp, %rax
	cmpl	100(%r12), %eax
	jge	.LBB72_9
# BB#8:                                 # %if.else
	movl	%eax, 1068(%r14,%rax,4)
	movl	%eax, %ebx
.LBB72_9:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB72_10:                              # %if.then.2
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%r8                    # TAILCALL
.Lfunc_end72:
	.size	pdf14_cmykspot_get_color_comp_index, .Lfunc_end72-pdf14_cmykspot_get_color_comp_index
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmykspot_put_image,@function
pdf14_cmykspot_put_image:               # @pdf14_cmykspot_put_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp625:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp626:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp627:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp628:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp629:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp630:
	.cfi_def_cfa_offset 128
.Ltmp631:
	.cfi_offset %rbx, -48
.Ltmp632:
	.cfi_offset %r12, -40
.Ltmp633:
	.cfi_offset %r14, -32
.Ltmp634:
	.cfi_offset %r15, -24
.Ltmp635:
	.cfi_offset %rbp, -16
	movq	4152(%rdi), %rax
	movq	(%rax), %r15
	movups	44(%r15), %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	60(%r15), %ecx
	movl	64(%r15), %r10d
	xorl	%esi, %esi
	cmpl	40(%rax), %esi
	sbbb	%r14b, %r14b
	movl	68(%r15), %r11d
	movl	96(%r15), %eax
	movq	64(%rsp), %r8
	movq	%r8, %r9
	shrq	$32, %r9
	cmpl	%r8d, %eax
	jle	.LBB73_2
# BB#1:                                 # %if.then
	movl	%eax, 64(%rsp)
	movl	%eax, %r8d
.LBB73_2:                               # %if.end
	movl	104(%r15), %eax
	movq	72(%rsp), %rbx
	movq	%rbx, %rbp
	shrq	$32, %rbp
	cmpl	%ebx, %eax
	jge	.LBB73_4
# BB#3:                                 # %if.then.20
	movl	%eax, 72(%rsp)
	movl	%eax, %ebx
.LBB73_4:                               # %if.end.26
	movl	100(%r15), %eax
	cmpl	%r9d, %eax
	jle	.LBB73_6
# BB#5:                                 # %if.then.33
	movl	%eax, 68(%rsp)
	movl	%eax, %r9d
.LBB73_6:                               # %if.end.39
	movl	108(%r15), %eax
	cmpl	%ebp, %eax
	jge	.LBB73_8
# BB#7:                                 # %if.then.47
	movl	%eax, 76(%rsp)
	movl	%eax, %ebp
.LBB73_8:                               # %do.end.55
	movl	832(%rdi), %eax
	movl	836(%rdi), %esi
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	cmpl	%ebp, %esi
	cmovlel	%esi, %ebp
	xorl	%eax, %eax
	subl	%r8d, %ebx
	jle	.LBB73_12
# BB#9:                                 # %do.end.55
	subl	%r9d, %ebp
	testl	%ebp, %ebp
	jle	.LBB73_12
# BB#10:                                # %lor.lhs.false.87
	movq	80(%r15), %r12
	testq	%r12, %r12
	je	.LBB73_12
# BB#11:                                # %if.end.91
	addq	$1768, %rdi             # imm = 0x6E8
	decl	%r11d
	movl	%ecx, %eax
	imull	%r9d, %eax
	cltq
	addq	%rax, %r12
	movslq	%r8d, %rsi
	addq	%r12, %rsi
	movl	40(%r15), %eax
	movq	%rdi, 56(%rsp)
	movaps	64(%rsp), %xmm0
	movups	%xmm0, 40(%rsp)
	movl	%eax, 32(%rsp)
	movzbl	%r14b, %eax
	movl	%eax, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%ebx, (%rsp)
	movq	%rdx, %rdi
	movl	%r10d, %edx
	callq	gx_put_blended_image_cmykspot
.LBB73_12:                              # %cleanup
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end73:
	.size	pdf14_cmykspot_put_image, .Lfunc_end73-pdf14_cmykspot_put_image
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_custom_put_image,@function
pdf14_custom_put_image:                 # @pdf14_custom_put_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp636:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp637:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp638:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp639:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp640:
	.cfi_def_cfa_offset 80
.Ltmp641:
	.cfi_offset %rbx, -40
.Ltmp642:
	.cfi_offset %r14, -32
.Ltmp643:
	.cfi_offset %r15, -24
.Ltmp644:
	.cfi_offset %rbp, -16
	movq	4152(%rdi), %rcx
	movq	(%rcx), %rsi
	movl	44(%rsi), %r8d
	movl	48(%rsi), %r9d
	movl	52(%rsi), %r11d
	movl	56(%rsi), %eax
	xorl	%ebp, %ebp
	cmpl	40(%rcx), %ebp
	sbbb	%r14b, %r14b
	movl	96(%rsi), %ebp
	cmpl	%r8d, %ebp
	cmovll	%r8d, %ebp
	movl	104(%rsi), %ecx
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	movl	100(%rsi), %ebx
	cmpl	%r9d, %ebx
	cmovll	%r9d, %ebx
	movl	108(%rsi), %ecx
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	832(%rdi), %ecx
	movl	836(%rdi), %edi
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	cmpl	%eax, %edi
	cmovlel	%edi, %eax
	subl	%ebp, %r11d
	jle	.LBB74_4
# BB#1:                                 # %entry
	subl	%ebx, %eax
	testl	%eax, %eax
	jle	.LBB74_4
# BB#2:                                 # %lor.lhs.false.91
	movq	80(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB74_4
# BB#3:                                 # %if.end.95
	movl	64(%rsi), %r10d
	movl	60(%rsi), %ecx
	movl	68(%rsi), %r15d
	decl	%r15d
	imull	%ecx, %ebx
	movslq	%ebx, %rsi
	addq	%rsi, %rdi
	movslq	%ebp, %rsi
	addq	%rdi, %rsi
	movzbl	%r14b, %edi
	movl	%edi, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r11d, (%rsp)
	movq	%rdx, %rdi
	movl	%r10d, %edx
	callq	gx_put_blended_image_custom
	jmp	.LBB74_5
.LBB74_4:                               # %cleanup
	xorl	%eax, %eax
.LBB74_5:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end74:
	.size	pdf14_custom_put_image, .Lfunc_end74-pdf14_custom_put_image
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_forward_open_device,@function
pdf14_forward_open_device:              # @pdf14_forward_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp645:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp646:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp647:
	.cfi_def_cfa_offset 32
.Ltmp648:
	.cfi_offset %rbx, -32
.Ltmp649:
	.cfi_offset %r14, -24
.Ltmp650:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	1728(%r15), %r14
	movl	$-1, %ebx
	testq	%r14, %r14
	je	.LBB75_3
# BB#1:                                 # %if.end
	movq	%r14, %rdi
	callq	gs_opendevice
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB75_3
# BB#2:                                 # %if.then.2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_device_copy_params
.LBB75_3:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end75:
	.size	pdf14_forward_open_device, .Lfunc_end75-pdf14_forward_open_device
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_forward_put_params,@function
pdf14_forward_put_params:               # @pdf14_forward_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp651:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp652:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp653:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp654:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp655:
	.cfi_def_cfa_offset 48
.Ltmp656:
	.cfi_offset %rbx, -40
.Ltmp657:
	.cfi_offset %r14, -32
.Ltmp658:
	.cfi_offset %r15, -24
.Ltmp659:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	1728(%r14), %rbx
	xorl	%ebp, %ebp
	testq	%rbx, %rbx
	je	.LBB76_6
# BB#1:                                 # %land.lhs.true
	movl	84(%rbx), %r15d
	movq	%rbx, %rdi
	callq	*1256(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB76_6
# BB#2:                                 # %if.then
	movq	%r14, %rdi
	callq	gx_device_decache_colors
	cmpl	$0, 84(%rbx)
	jne	.LBB76_5
# BB#3:                                 # %if.then.3
	movq	%r14, %rdi
	callq	gs_closedevice
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB76_5
# BB#4:                                 # %if.then.6
	testl	%r15d, %r15d
	setne	%al
	movzbl	%al, %ebp
.LBB76_5:                               # %if.end.8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gx_device_copy_params
.LBB76_6:                               # %if.end.9
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end76:
	.size	pdf14_forward_put_params, .Lfunc_end76-pdf14_forward_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_get_cmap_procs,@function
pdf14_get_cmap_procs:                   # @pdf14_get_cmap_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$pdf14_cmap_many, %eax
	retq
.Lfunc_end77:
	.size	pdf14_get_cmap_procs, .Lfunc_end77-pdf14_get_cmap_procs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_gray_direct,@function
pdf14_cmap_gray_direct:                 # @pdf14_cmap_gray_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp660:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp661:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp662:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp663:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp664:
	.cfi_def_cfa_offset 304
.Ltmp665:
	.cfi_offset %rbx, -40
.Ltmp666:
	.cfi_offset %r14, -32
.Ltmp667:
	.cfi_offset %r15, -24
.Ltmp668:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movl	%edi, %r15d
	movq	264(%rdx), %rax
	testq	%rax, %rax
	cmovneq	%rax, %rbx
	movl	100(%rbx), %ebp
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	leaq	128(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*(%rax)
	testl	%ebp, %ebp
	jle	.LBB78_8
# BB#1:                                 # %for.body.preheader
	leal	-1(%rbp), %ecx
	leaq	1(%rcx), %r8
	xorl	%esi, %esi
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	movq	%r8, %rdx
	andq	%rax, %rdx
	je	.LBB78_5
# BB#2:                                 # %vector.body.preheader
	leaq	136(%rsp), %rsi
	leaq	8(%rsp), %rdi
	incq	%rcx
	andq	%rax, %rcx
	.align	16, 0x90
.LBB78_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB78_3
# BB#4:
	movq	%rdx, %rsi
.LBB78_5:                               # %middle.block
	cmpq	%rsi, %r8
	je	.LBB78_8
# BB#6:                                 # %for.body.preheader24
	leaq	128(%rsp,%rsi,2), %rax
	leaq	(%rsp,%rsi,2), %rcx
	subl	%esi, %ebp
	.align	16, 0x90
.LBB78_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebp
	jne	.LBB78_7
.LBB78_8:                               # %for.end
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB78_10
# BB#9:                                 # %if.then.15
	movq	%rax, 8(%r14)
	movq	$gx_dc_type_data_pure, (%r14)
.LBB78_10:                              # %if.end.16
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end78:
	.size	pdf14_cmap_gray_direct, .Lfunc_end78-pdf14_cmap_gray_direct
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_rgb_direct,@function
pdf14_cmap_rgb_direct:                  # @pdf14_cmap_rgb_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp669:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp670:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp671:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp672:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp673:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp674:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp675:
	.cfi_def_cfa_offset 336
.Ltmp676:
	.cfi_offset %rbx, -56
.Ltmp677:
	.cfi_offset %r12, -48
.Ltmp678:
	.cfi_offset %r13, -40
.Ltmp679:
	.cfi_offset %r14, -32
.Ltmp680:
	.cfi_offset %r15, -24
.Ltmp681:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %rbx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movl	%edi, %ebp
	movq	264(%rbx), %rax
	testq	%rax, %rax
	cmovneq	%rax, %r15
	movl	100(%r15), %r14d
	movq	%r15, %rdi
	callq	*1536(%r15)
	leaq	144(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movl	%r13d, %ecx
	movl	%r12d, %r8d
	callq	*8(%rax)
	testl	%r14d, %r14d
	jle	.LBB79_8
# BB#1:                                 # %for.body.preheader
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movq	%rax, %rdx
	andq	%rbp, %rdx
	je	.LBB79_5
# BB#2:                                 # %vector.body.preheader
	leaq	152(%rsp), %rsi
	leaq	24(%rsp), %rdi
	incq	%rcx
	andq	%rbp, %rcx
	.align	16, 0x90
.LBB79_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB79_3
# BB#4:
	movq	%rdx, %rsi
.LBB79_5:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB79_8
# BB#6:                                 # %for.body.preheader25
	leaq	144(%rsp,%rsi,2), %rax
	leaq	16(%rsp,%rsi,2), %rcx
	subl	%esi, %r14d
	.align	16, 0x90
.LBB79_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r14d
	jne	.LBB79_7
.LBB79_8:                               # %for.end
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1552(%r15)
	cmpq	$-1, %rax
	je	.LBB79_10
# BB#9:                                 # %if.then.15
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
.LBB79_10:                              # %if.end.16
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end79:
	.size	pdf14_cmap_rgb_direct, .Lfunc_end79-pdf14_cmap_rgb_direct
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_cmap_cmyk_direct,@function
pdf14_cmap_cmyk_direct:                 # @pdf14_cmap_cmyk_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp682:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp683:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp684:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp685:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp686:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp687:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp688:
	.cfi_def_cfa_offset 336
.Ltmp689:
	.cfi_offset %rbx, -56
.Ltmp690:
	.cfi_offset %r12, -48
.Ltmp691:
	.cfi_offset %r13, -40
.Ltmp692:
	.cfi_offset %r14, -32
.Ltmp693:
	.cfi_offset %r15, -24
.Ltmp694:
	.cfi_offset %rbp, -16
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %r13d
	movl	%edi, %ebp
	movq	264(%r9), %rbx
	testq	%rbx, %rbx
	cmoveq	336(%rsp), %rbx
	movl	100(%rbx), %r14d
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	leaq	144(%rsp), %r9
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	callq	*16(%rax)
	testl	%r14d, %r14d
	jle	.LBB80_8
# BB#1:                                 # %for.body.preheader
	leal	-1(%r14), %ebp
	leaq	1(%rbp), %rax
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	leaq	8(%rcx), %rcx
	xorl	%esi, %esi
	andq	%rax, %rcx
	je	.LBB80_5
# BB#2:                                 # %vector.body.preheader
	leaq	152(%rsp), %rdx
	leaq	24(%rsp), %rsi
	incq	%rbp
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	andq	%rbp, %rdi
	.align	16, 0x90
.LBB80_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rdx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rsi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi)
	addq	$16, %rdx
	addq	$16, %rsi
	addq	$-8, %rdi
	jne	.LBB80_3
# BB#4:
	movq	%rcx, %rsi
.LBB80_5:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB80_8
# BB#6:                                 # %for.body.preheader65
	leaq	144(%rsp,%rsi,2), %rax
	leaq	16(%rsp,%rsi,2), %rcx
	movl	%r14d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB80_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %esi
	movl	%esi, %edi
	shrl	$11, %edi
	leal	(%rdi,%rsi,2), %esi
	movw	%si, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB80_7
.LBB80_8:                               # %for.end
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	je	.LBB80_21
# BB#9:                                 # %for.cond.13.preheader
	testl	%r14d, %r14d
	movq	8(%rsp), %rbx           # 8-byte Reload
	jle	.LBB80_20
# BB#10:                                # %for.body.16.lr.ph
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %r8
	xorl	%esi, %esi
	movq	%r8, %rdx
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rdx
	je	.LBB80_17
# BB#11:                                # %vector.body40.preheader
	leaq	1(%rcx), %rsi
	andq	%rax, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rbp
	shrq	$4, %rbp
	xorl	%edi, %edi
	btq	$4, %rsi
	jb	.LBB80_13
# BB#12:                                # %vector.body40.prol
	movdqa	16(%rsp), %xmm0
	movdqa	32(%rsp), %xmm1
	movdqu	%xmm0, 8(%rbx)
	movdqu	%xmm1, 24(%rbx)
	movl	$16, %edi
.LBB80_13:                              # %vector.body40.preheader.split
	testq	%rbp, %rbp
	je	.LBB80_16
# BB#14:                                # %vector.body40.preheader.split.split
	incq	%rcx
	andq	%rax, %rcx
	subq	%rdi, %rcx
	leaq	64(%rsp,%rdi,2), %rsi
	leaq	56(%rbx,%rdi,2), %rdi
	.align	16, 0x90
.LBB80_15:                              # %vector.body40
                                        # =>This Inner Loop Header: Depth=1
	movaps	-48(%rsi), %xmm0
	movaps	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movdqa	-16(%rsi), %xmm0
	movdqa	(%rsi), %xmm1
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rcx
	jne	.LBB80_15
.LBB80_16:
	movq	%rdx, %rsi
.LBB80_17:                              # %middle.block41
	cmpq	%rsi, %r8
	je	.LBB80_20
# BB#18:                                # %for.body.16.preheader
	leaq	16(%rsp,%rsi,2), %rax
	leaq	8(%rbx,%rsi,2), %rcx
	subl	%esi, %r14d
	.align	16, 0x90
.LBB80_19:                              # %for.body.16
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rax), %dx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r14d
	jne	.LBB80_19
.LBB80_20:                              # %for.end.23
	movq	$gx_dc_type_data_devn, (%rbx)
	jmp	.LBB80_23
.LBB80_21:                              # %if.else.24
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB80_23
# BB#22:                                # %if.then.30
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
.LBB80_23:                              # %if.end.34
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end80:
	.size	pdf14_cmap_cmyk_direct, .Lfunc_end80-pdf14_cmap_cmyk_direct
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI81_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	pdf14_clist_fill_path,@function
pdf14_clist_fill_path:                  # @pdf14_clist_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp695:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp696:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp697:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp698:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp699:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp700:
	.cfi_def_cfa_offset 56
	subq	$1688, %rsp             # imm = 0x698
.Ltmp701:
	.cfi_def_cfa_offset 1744
.Ltmp702:
	.cfi_offset %rbx, -56
.Ltmp703:
	.cfi_offset %r12, -48
.Ltmp704:
	.cfi_offset %r13, -40
.Ltmp705:
	.cfi_offset %r14, -32
.Ltmp706:
	.cfi_offset %r15, -24
.Ltmp707:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %r14
	leaq	72(%rsp), %rdi
	movl	$1616, %edx             # imm = 0x650
	callq	memcpy
	leaq	64(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1680(%r14)
	testl	%eax, %eax
	js	.LBB81_20
# BB#1:                                 # %if.end
	movq	1728(%r14), %rdi
	leaq	56(%rsp), %rsi
	callq	*1680(%rdi)
	testl	%eax, %eax
	js	.LBB81_20
# BB#2:                                 # %if.end.7
	movq	56(%rsp), %rsi
	xorl	%eax, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	24(%rsp), %rdx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	leaq	32(%rsp), %rbx
	xorl	%edi, %edi
	movq	%rbx, %rcx
	callq	gsicc_extract_profile
	movq	64(%rsp), %rsi
	leaq	16(%rsp), %rdx
	xorl	%edi, %edi
	movq	%rbx, %rcx
	movq	8(%rsp), %rbx           # 8-byte Reload
	callq	gsicc_extract_profile
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	pdf14_clist_update_params
	testl	%eax, %eax
	js	.LBB81_20
# BB#3:                                 # %if.end.11
	testq	%r13, %r13
	movl	$0, %ebp
	je	.LBB81_11
# BB#4:                                 # %land.lhs.true
	movq	%r13, %rdi
	callq	gx_dc_is_pattern2_color
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB81_6
# BB#5:                                 # %if.then.14
	movq	368(%r13), %rbp
	movq	32(%rbp), %rax
	movl	$1, 256(%rax)
	movq	%r14, 264(%rax)
.LBB81_6:                               # %if.then.i
	movq	%r13, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB81_9
# BB#7:                                 # %land.lhs.true.i
	movq	%r13, %rdi
	callq	gx_pattern1_get_transptr
	testq	%rax, %rax
	je	.LBB81_9
# BB#8:
	movl	$1, %eax
	jmp	.LBB81_10
.LBB81_9:                               # %if.else.i
	movq	%r13, %rdi
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB81_10:                              # %if.end.8.i
	movq	%rax, (%rsp)            # 8-byte Spill
.LBB81_11:                              # %if.end.8.i
	movq	288(%rsp), %rax
	movzwl	%ax, %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	jne	.LBB81_17
# BB#12:                                # %lor.lhs.false.i
	shrq	$32, %rax
	cmpl	$5, %eax
	ja	.LBB81_17
# BB#13:                                # %lor.lhs.false.i
	movl	$49, %ecx
	btl	%eax, %ecx
	jae	.LBB81_17
# BB#14:                                # %lor.lhs.false.21.i
	movss	296(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI81_0(%rip), %xmm0
	jne	.LBB81_17
	jp	.LBB81_17
# BB#15:                                # %lor.lhs.false.26.i
	movq	(%rsp), %rax            # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB81_17
# BB#16:                                # %lor.lhs.false.26.i
	movss	300(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI81_0(%rip), %xmm0
	jne	.LBB81_17
	jnp	.LBB81_18
.LBB81_17:                              # %if.then.33.i
	orb	$4, 285(%rsp)
.LBB81_18:                              # %update_lop_for_pdf14.exit
	movq	%r14, 336(%rsp)
	movl	$1, 328(%rsp)
	leaq	72(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	%rbx, %r9
	callq	gx_forward_fill_path
	movq	$0, 336(%rsp)
	movl	$0, 328(%rsp)
	testq	%rbp, %rbp
	je	.LBB81_20
# BB#19:                                # %if.then.23
	movq	32(%rbp), %rcx
	movq	$0, 264(%rcx)
.LBB81_20:                              # %cleanup
	addq	$1688, %rsp             # imm = 0x698
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end81:
	.size	pdf14_clist_fill_path, .Lfunc_end81-pdf14_clist_fill_path
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI82_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	pdf14_clist_stroke_path,@function
pdf14_clist_stroke_path:                # @pdf14_clist_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp708:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp709:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp710:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp711:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp712:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp713:
	.cfi_def_cfa_offset 56
	subq	$1624, %rsp             # imm = 0x658
.Ltmp714:
	.cfi_def_cfa_offset 1680
.Ltmp715:
	.cfi_offset %rbx, -56
.Ltmp716:
	.cfi_offset %r12, -48
.Ltmp717:
	.cfi_offset %r13, -40
.Ltmp718:
	.cfi_offset %r14, -32
.Ltmp719:
	.cfi_offset %r15, -24
.Ltmp720:
	.cfi_offset %rbp, -16
	movq	%r9, (%rsp)             # 8-byte Spill
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	movl	$1616, %edx             # imm = 0x650
	callq	memcpy
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	pdf14_clist_update_params
	testl	%eax, %eax
	js	.LBB82_17
# BB#1:                                 # %if.end
	testq	%r13, %r13
	movl	$0, %ebp
	je	.LBB82_8
# BB#2:                                 # %land.lhs.true
	movq	%r13, %rdi
	callq	gx_dc_is_pattern2_color
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB82_5
# BB#3:                                 # %land.lhs.true.3
	xorl	%ebp, %ebp
	cmpq	$0, 5016(%rbx)
	je	.LBB82_5
# BB#4:                                 # %if.then.5
	movq	368(%r13), %rbp
	movq	32(%rbp), %rax
	movl	$1, 256(%rax)
	movq	%rbx, 264(%rax)
.LBB82_5:                               # %if.then.i
	movq	%r13, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB82_7
# BB#6:                                 # %land.lhs.true.i
	movq	%r13, %rdi
	callq	gx_pattern1_get_transptr
	movl	$1, %r14d
	testq	%rax, %rax
	jne	.LBB82_8
.LBB82_7:                               # %if.else.i
	movq	%r13, %rdi
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %r14d
.LBB82_8:                               # %if.end.8.i
	movq	224(%rsp), %rax
	movzwl	%ax, %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	jne	.LBB82_14
# BB#9:                                 # %lor.lhs.false.i
	shrq	$32, %rax
	cmpl	$5, %eax
	ja	.LBB82_14
# BB#10:                                # %lor.lhs.false.i
	movl	$49, %ecx
	btl	%eax, %ecx
	jae	.LBB82_14
# BB#11:                                # %lor.lhs.false.21.i
	movss	232(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI82_0(%rip), %xmm0
	jne	.LBB82_14
	jp	.LBB82_14
# BB#12:                                # %lor.lhs.false.26.i
	testl	%r14d, %r14d
	jne	.LBB82_14
# BB#13:                                # %lor.lhs.false.26.i
	movss	236(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI82_0(%rip), %xmm0
	jne	.LBB82_14
	jnp	.LBB82_15
.LBB82_14:                              # %if.then.33.i
	orb	$4, 221(%rsp)
.LBB82_15:                              # %update_lop_for_pdf14.exit
	movq	%rbx, 272(%rsp)
	movl	$1, 264(%rsp)
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	(%rsp), %r9             # 8-byte Reload
	callq	gx_forward_stroke_path
	movq	$0, 272(%rsp)
	movl	$0, 264(%rsp)
	testq	%rbp, %rbp
	je	.LBB82_17
# BB#16:                                # %if.then.14
	movq	32(%rbp), %rcx
	movq	$0, 264(%rcx)
.LBB82_17:                              # %cleanup
	addq	$1624, %rsp             # imm = 0x658
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end82:
	.size	pdf14_clist_stroke_path, .Lfunc_end82-pdf14_clist_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_clist_begin_image,@function
pdf14_clist_begin_image:                # @pdf14_clist_begin_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp721:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp722:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp723:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp724:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp725:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp726:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp727:
	.cfi_def_cfa_offset 112
.Ltmp728:
	.cfi_offset %rbx, -56
.Ltmp729:
	.cfi_offset %r12, -48
.Ltmp730:
	.cfi_offset %r13, -40
.Ltmp731:
	.cfi_offset %r14, -32
.Ltmp732:
	.cfi_offset %r15, -24
.Ltmp733:
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	128(%rsp), %r12
	movq	120(%rsp), %r15
	movq	112(%rsp), %r14
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	pdf14_clist_update_params
	testl	%eax, %eax
	js	.LBB83_2
# BB#1:                                 # %if.end
	movq	%r12, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r14, (%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	gx_forward_begin_image
	testl	%eax, %eax
	js	.LBB83_3
.LBB83_2:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB83_3:                               # %if.then.3
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_begin_image  # TAILCALL
.Lfunc_end83:
	.size	pdf14_clist_begin_image, .Lfunc_end83-pdf14_clist_begin_image
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI84_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	pdf14_clist_begin_typed_image,@function
pdf14_clist_begin_typed_image:          # @pdf14_clist_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp734:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp735:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp736:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp737:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp738:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp739:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp740:
	.cfi_def_cfa_offset 256
.Ltmp741:
	.cfi_offset %rbx, -56
.Ltmp742:
	.cfi_offset %r12, -48
.Ltmp743:
	.cfi_offset %r13, -40
.Ltmp744:
	.cfi_offset %r14, -32
.Ltmp745:
	.cfi_offset %r15, -24
.Ltmp746:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbp
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	pdf14_clist_update_params
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB84_15
# BB#1:                                 # %if.end
	movq	272(%rsp), %rbx
	movq	264(%rsp), %r13
	movq	256(%rsp), %r12
	movl	$1, 256(%r15)
	movq	%rbp, 264(%r15)
	testq	%r14, %r14
	je	.LBB84_12
# BB#2:                                 # %if.end
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	584(%rax), %eax
	testl	%eax, %eax
	je	.LBB84_12
# BB#3:                                 # %land.lhs.true
	movq	%r14, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB84_12
# BB#4:                                 # %if.then.5
	movq	%r14, %rdi
	callq	gx_pattern1_get_transptr
	testq	%rax, %rax
	je	.LBB84_12
# BB#5:                                 # %if.then.8
	movl	$pdf14_clist_begin_image, %eax
	cmpq	%rax, 1392(%rbp)
	je	.LBB84_12
# BB#6:                                 # %if.then.10
	movq	8(%r14), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	192(%rax), %rax
	cmpl	$4, 56(%rax)
	jg	.LBB84_8
# BB#7:                                 # %if.then.12
	movq	$rgb_blending_procs, 72(%rax)
	movl	$1, 80(%rax)
	jmp	.LBB84_9
.LBB84_12:                              # %if.end.46
	movq	%rbx, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	%r12, (%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r15, %r13
	movq	%r14, %r9
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	64(%rsp), %r15          # 8-byte Reload
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %r8
	callq	gx_forward_begin_typed_image
	movq	%r12, %rcx
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB84_14
# BB#13:                                # %if.then.50
	movq	272(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%rbx, %r8
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	gx_default_begin_typed_image
	movl	%eax, %r12d
.LBB84_14:                              # %if.else.54
	movl	$0, 256(%r13)
	movq	$0, 264(%r13)
.LBB84_15:                              # %cleanup
	movl	%r12d, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB84_8:                               # %if.else
	movq	$cmyk_blending_procs, 72(%rax)
	movl	$0, 80(%rax)
.LBB84_9:                               # %if.end.19
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	220(%r15), %ecx
	movl	%ecx, 84(%rax)
	movq	%rbx, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	%r12, (%rsp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%r14, %r9
	callq	gx_default_begin_typed_image
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB84_15
# BB#10:                                # %if.end.24
	movq	(%rbx), %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)
	movq	64(%rsp), %rsi          # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%rsi), %xmm0
	movsd	%xmm0, 176(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	36(%rsi), %xmm0
	movsd	%xmm0, 184(%rsp)
	addq	$8, %rsi
	leaq	160(%rsp), %rdi
	leaq	128(%rsp), %rdx
	callq	gs_bbox_transform_inverse
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB84_15
# BB#11:                                # %do.end
	movl	$0, 96(%rsp)
	movl	$1, %eax
	movd	%eax, %xmm0
	movupd	%xmm0, 80(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 112(%rsp)
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	192(%rbp), %rax
	movl	56(%rax), %eax
	decl	%eax
	movl	%eax, 100(%rsp)
	movq	$0, 72(%rsp)
	leaq	72(%rsp), %rsi
	leaq	128(%rsp), %rdx
	movq	%r15, %rdi
	callq	gs_begin_transparency_group
	movq	1208(%r14), %rax
	movq	192(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	$pdf14_pattern_trans_render, 1208(%r14)
	movl	$0, 220(%rbp)
	movl	$0, 256(%r15)
	movq	$0, 264(%r15)
	jmp	.LBB84_15
.Lfunc_end84:
	.size	pdf14_clist_begin_typed_image, .Lfunc_end84-pdf14_clist_begin_typed_image
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI85_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.text
	.align	16, 0x90
	.type	pdf14_clist_create_compositor,@function
pdf14_clist_create_compositor:          # @pdf14_clist_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp747:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp748:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp749:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp750:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp751:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp752:
	.cfi_def_cfa_offset 56
	subq	$1784, %rsp             # imm = 0x6F8
.Ltmp753:
	.cfi_def_cfa_offset 1840
.Ltmp754:
	.cfi_offset %rbx, -56
.Ltmp755:
	.cfi_offset %r12, -48
.Ltmp756:
	.cfi_offset %r13, -40
.Ltmp757:
	.cfi_offset %r14, -32
.Ltmp758:
	.cfi_offset %r15, -24
.Ltmp759:
	.cfi_offset %rbp, -16
	movq	%rcx, %r10
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	(%rbp), %rax
	movl	$gs_composite_pdf14trans_type, %ecx
	cmpq	%rcx, %rax
	sete	%cl
	movl	$gs_composite_pdf14trans_no_clist_writer_type, %edx
	cmpq	%rdx, %rax
	sete	%r14b
	orb	%cl, %r14b
	movzbl	%r14b, %eax
	cmpl	$1, %eax
	jne	.LBB85_85
# BB#1:                                 # %if.then
	movl	40(%rbp), %eax
	cmpq	$11, %rax
	ja	.LBB85_85
# BB#2:                                 # %if.then
	leaq	40(%rbp), %rcx
	jmpq	*.LJTI85_0(,%rax,8)
.LBB85_3:                               # %sw.bb
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	leaq	4232(%r12), %rdi
	movq	1728(%r12), %rbp
	addq	$96, %rbp
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbp, %rsi
	movq	%r10, %r14
	movq	%r9, %r15
	callq	memcpy
	leaq	96(%r12), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbp, %rdi
	callq	memcpy
	movq	1728(%r12), %rax
	movups	1552(%rax), %xmm0
	movups	%xmm0, 4952(%r12)
	movq	4984(%r12), %rcx
	movq	%rcx, 1552(%r12)
	movq	%rcx, 1552(%rax)
	movq	4992(%r12), %rcx
	movq	%rcx, 1560(%r12)
	movq	%rcx, 1560(%rax)
	movups	1536(%rax), %xmm0
	movups	%xmm0, 4968(%r12)
	movq	5000(%r12), %rcx
	movq	%rcx, 1536(%r12)
	movq	%rcx, 1536(%rax)
	movq	5008(%r12), %rcx
	movq	%rcx, 1544(%r12)
	movq	%rcx, 1544(%rax)
	movq	360(%r14), %rax
	movq	%rax, 4224(%r12)
	movq	$pdf14_get_cmap_procs, 360(%r14)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gx_set_cmap_procs
	movq	1728(%r12), %rbp
	movq	%rbp, %rdi
	callq	pdf14_determine_default_blend_cs
	movq	%r15, %r9
	movq	%rbx, %rsi
	movl	$-15, %edx
	movl	%eax, %ecx
	cmpl	$4, %eax
	ja	.LBB85_13
# BB#4:                                 # %sw.bb
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	jmpq	*.LJTI85_1(,%rcx,8)
.LBB85_5:                               # %sw.bb.i.i
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r14, 80(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %rdi
	movl	$pdf14_clist_Gray_device+128, %esi
	movl	$1600, %edx             # imm = 0x640
	callq	memcpy
	movl	$1, %r15d
	movw	$8, %ax
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	movl	$1, %ebx
	movl	$1, %r14d
	jmp	.LBB85_12
.LBB85_15:                              # %sw.bb.39
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	1728(%r12), %rdi
	addq	$96, %rdi
	leaq	4232(%r12), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%r10, %rbx
	callq	memcpy
	movq	1728(%r12), %rsi
	movups	4952(%r12), %xmm0
	movups	%xmm0, 1552(%rsi)
	movups	4968(%r12), %xmm0
	movups	%xmm0, 1536(%rsi)
	movq	4224(%r12), %rax
	movq	%rax, 360(%rbx)
	movq	%rbx, %rdi
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	callq	gx_set_cmap_procs
	movq	4208(%r12), %rax
	movq	$0, 128(%rsp)
	cmpl	$0, 12148(%rax)
	jne	.LBB85_25
# BB#16:                                # %if.end.i.276
	movq	24(%r12), %rsi
	leaq	176(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_c_param_list_write
	movq	3088(%r12), %rdx
	leaq	128(%rsp), %r8
	movl	$.L.str.23, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	get_param_compressed_color_list_elem
	movl	1768(%r12), %eax
	movl	%eax, 160(%rsp)
	testl	%eax, %eax
	je	.LBB85_22
# BB#17:                                # %if.end.i.i
	leaq	176(%rsp), %rdi
	leaq	160(%rsp), %rdx
	movl	$.L.str.20, %esi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB85_22
# BB#18:                                # %if.end.i.i
	movl	160(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB85_22
# BB#19:                                # %for.body.lr.ph.i.i
	movq	128(%rsp), %rax
	leaq	1784(%r12), %rbp
	xorl	%r13d, %r13d
.LBB85_20:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	24(%r12), %rbx
	movq	64(%rbx), %r15
	movl	$.L.str.71, %edi
	callq	strlen
	leal	10(%rax), %esi
	movl	$.L.str.72, %edx
	movq	%rbx, %rdi
	callq	*%r15
	movq	%rax, %r15
	movq	24(%r12), %rdi
	movl	$st_keyname_link_list, %esi
	movl	$.L.str.72, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rbx)
	movq	%r15, 8(%rbx)
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	gs_sprintf
	movl	-8(%rbp), %eax
	movl	%eax, 112(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 104(%rsp)
	movl	$0, 116(%rsp)
	leaq	176(%rsp), %rdi
	movq	%r15, %rsi
	leaq	104(%rsp), %rdx
	callq	param_write_string
	incq	%r13
	movslq	160(%rsp), %rax
	addq	$16, %rbp
	cmpq	%rax, %r13
	movq	%rbx, %rax
	jl	.LBB85_20
# BB#21:                                # %get_param_spot_color_names.exit.loopexit.i
	movq	%rbx, 128(%rsp)
.LBB85_22:                              # %get_param_spot_color_names.exit.i
	movq	1728(%r12), %rbx
	leaq	176(%rsp), %r15
	movq	%r15, %rdi
	callq	gs_c_param_list_read
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*1256(%rbx)
	movq	%r15, %rdi
	callq	gs_c_param_list_release
	movq	128(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB85_25
# BB#23:                                # %while.body.lr.ph.i.i
	movq	24(%r12), %rbx
.LBB85_24:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbp
	movl	$.L.str.73, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	testq	%rbp, %rbp
	movq	%rbp, %rsi
	jne	.LBB85_24
.LBB85_25:                              # %pdf14_clist_get_param_compressed_color_list.exit
	movq	1728(%r12), %rsi
	leaq	96(%r12), %rdi
	addq	$96, %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	leaq	1144(%r12), %rdi
	xorl	%esi, %esi
	movl	$584, %edx              # imm = 0x248
	callq	memset
	movq	%r12, %rdi
	callq	gx_device_forward_fill_in_procs
	movq	$gx_forward_close_device, 1176(%r12)
	movq	$gx_forward_fill_rectangle, 1200(%r12)
	movq	$gx_forward_fill_rectangle_hl_color, 1576(%r12)
	movq	$gx_forward_tile_rectangle, 1208(%r12)
	movq	$gx_forward_copy_mono, 1216(%r12)
	movq	$gx_forward_copy_color, 1224(%r12)
	movq	$gx_forward_get_page_device, 1296(%r12)
	movq	$gx_forward_strip_tile_rectangle, 1416(%r12)
	movq	$gx_forward_copy_alpha, 1312(%r12)
	movq	$gx_forward_get_profile, 1680(%r12)
	movq	$gx_forward_set_graphics_type_tag, 1688(%r12)
	movq	$pdf14_forward_open_device, 1144(%r12)
	movq	$pdf14_forward_put_params, 1256(%r12)
	movq	$pdf14_clist_forward_create_compositor, 1464(%r12)
	movq	1728(%r12), %rdi
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	callq	cmd_put_color_mapping
	movq	%rbx, %r10
	movl	%eax, %edx
	testl	%edx, %edx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	88(%rsp), %rbx          # 8-byte Reload
	jns	.LBB85_85
	jmp	.LBB85_108
.LBB85_26:                              # %sw.bb.69
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%r12, %r15
	movq	%r10, %r12
	movq	%r9, %r13
	movb	%r14b, 47(%rsp)         # 1-byte Spill
	movq	%r8, %r14
	callq	pdf14_clist_update_params
	movq	%r14, %r9
	movb	47(%rsp), %r14b         # 1-byte Reload
	movq	%r13, %r8
	movq	%r12, %rsi
	movq	%r15, %rdi
	movq	%rbp, %rcx
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB85_108
# BB#27:                                # %if.end.74
	movl	104(%rcx), %eax
	testl	%eax, %eax
	je	.LBB85_29
# BB#28:                                # %land.lhs.true
	movl	$-15, %edx
	cmpl	100(%rdi), %eax
	jne	.LBB85_108
.LBB85_29:                              # %if.end.82
	movq	%r9, %r12
	movq	%r8, %r15
	movq	%rbx, %r13
	movq	%rcx, %rbp
	movq	%rdi, %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	callq	pdf14_push_parent_color
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB85_38
# BB#30:                                # %cond.true
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	movq	%r13, %rbx
	movq	%r15, %r9
	movq	%r12, %r8
	je	.LBB85_31
# BB#32:                                # %cond.true
	testl	%eax, %eax
	movq	80(%rsp), %r10          # 8-byte Reload
	jne	.LBB85_39
# BB#33:                                # %if.then.94
	movzbl	1(%rdi), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB85_39
# BB#34:                                # %if.then.94
	testl	%eax, %eax
	jne	.LBB85_39
# BB#35:                                # %if.then.104
	movzbl	2(%rdi), %eax
	addl	$-102, %eax
	cmpq	$3, %rcx
	jb	.LBB85_39
# BB#36:                                # %if.then.104
	testl	%eax, %eax
	jne	.LBB85_39
# BB#37:                                # %if.then.114
	movzbl	3(%rdi), %eax
	addl	$-49, %eax
	jmp	.LBB85_39
.LBB85_55:                              # %land.lhs.true.218
	movq	%r8, %r13
	movq	%r9, %r15
	movq	%r10, 80(%rsp)          # 8-byte Spill
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r12), %rdi
	cmpq	$3, %rcx
	ja	.LBB85_63
# BB#56:                                # %cond.true.222
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	movq	%r13, %rbp
	je	.LBB85_64
# BB#57:                                # %cond.true.222
	testl	%eax, %eax
	jne	.LBB85_64
# BB#58:                                # %if.then.237
	movzbl	1(%rdi), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB85_64
# BB#59:                                # %if.then.237
	testl	%eax, %eax
	jne	.LBB85_64
# BB#60:                                # %if.then.247
	movzbl	2(%rdi), %eax
	addl	$-102, %eax
	cmpq	$3, %rcx
	jb	.LBB85_64
# BB#61:                                # %if.then.247
	testl	%eax, %eax
	jne	.LBB85_64
# BB#62:                                # %if.then.257
	movzbl	3(%rdi), %eax
	addl	$-49, %eax
	jmp	.LBB85_64
.LBB85_54:                              # %sw.bb.200
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%r10, %r13
	movq	%r9, %r15
	movb	%r14b, %bl
	movq	%r8, %r14
	callq	pdf14_push_parent_color
	movl	712(%rbp), %esi
	movq	728(%rbp), %rcx
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	pdf14_update_device_color_procs_push_c
	movq	%r14, %r8
	movb	%bl, %r14b
	movq	%r15, %r9
	movq	%r13, %r10
	movq	88(%rsp), %rbx          # 8-byte Reload
.LBB85_53:                              # %if.then.190
	movl	%eax, %edx
	testl	%edx, %edx
	jns	.LBB85_85
	jmp	.LBB85_108
.LBB85_81:                              # %sw.bb.349
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r8, %r15
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%r12, %r13
	movq	%r10, %r12
	callq	pdf14_update_device_color_procs_pop_c
	movq	5016(%r13), %rbx
	movq	208(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB85_84
# BB#82:                                # %do.end.7.i.291
	decq	288(%rsi)
	jne	.LBB85_84
# BB#83:                                # %do.end.19.i.294
	movq	296(%rsi), %rdi
	movl	$.L.str.56, %edx
	callq	*304(%rsi)
	movq	$0, 208(%rbx)
.LBB85_84:                              # %pdf14_pop_parent_color.exit298
	movq	216(%rbx), %rax
	movq	%rax, 5016(%r13)
	movq	24(%r13), %rdi
	movl	$.L.str.57, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	%r15, %r8
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%r12, %r10
	movq	%r13, %r12
	jmp	.LBB85_85
.LBB85_95:                              # %sw.bb.359
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r10, %rsi
	callq	pdf14_clist_update_params
	movq	%r12, (%rbx)
	jmp	.LBB85_109
.LBB85_92:                              # %sw.bb.355
	movq	%r10, %rdi
	movq	%r12, %rsi
	callq	pdf14_increment_smask_color
	movq	%r12, (%rbx)
	jmp	.LBB85_109
.LBB85_94:                              # %sw.bb.357
	movq	%r10, %rdi
	movq	%r12, %rsi
	callq	pdf14_decrement_smask_color
	movq	%r12, (%rbx)
	xorl	%edx, %edx
	jmp	.LBB85_108
.LBB85_63:                              # %cond.false.266
	movl	$.L.str.18, %esi
	callq	strcmp
	movq	%r13, %rbp
.LBB85_64:                              # %cond.end.269
	testl	%eax, %eax
	je	.LBB85_77
# BB#65:                                # %land.lhs.true.279
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r12), %rdi
	cmpq	$3, %rcx
	ja	.LBB85_73
# BB#66:                                # %cond.true.283
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB85_74
# BB#67:                                # %cond.true.283
	testl	%eax, %eax
	jne	.LBB85_74
# BB#68:                                # %if.then.298
	movzbl	1(%rdi), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB85_74
# BB#69:                                # %if.then.298
	testl	%eax, %eax
	jne	.LBB85_74
# BB#70:                                # %if.then.308
	movzbl	2(%rdi), %eax
	addl	$-102, %eax
	cmpq	$3, %rcx
	jb	.LBB85_74
# BB#71:                                # %if.then.308
	testl	%eax, %eax
	jne	.LBB85_74
# BB#72:                                # %if.then.318
	movzbl	3(%rdi), %eax
	addl	$-49, %eax
	jmp	.LBB85_74
.LBB85_73:                              # %cond.false.327
	movl	$.L.str.17, %esi
	callq	strcmp
.LBB85_74:                              # %cond.end.330
	testl	%eax, %eax
	je	.LBB85_77
# BB#75:                                # %lor.rhs.334
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	callq	*1664(%r12)
	testl	%eax, %eax
	jne	.LBB85_77
# BB#76:                                # %if.then.342
	movq	%r12, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	pdf14_update_device_color_procs_pop_c
.LBB85_77:                              # %if.end.348
	movq	5016(%r12), %rbx
	movq	208(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB85_80
# BB#78:                                # %do.end.7.i
	decq	288(%rsi)
	jne	.LBB85_80
# BB#79:                                # %do.end.19.i
	movq	296(%rsi), %rdi
	movl	$.L.str.56, %edx
	callq	*304(%rsi)
	movq	$0, 208(%rbx)
.LBB85_80:                              # %pdf14_pop_parent_color.exit
	movq	216(%rbx), %rax
	movq	%rax, 5016(%r12)
	movq	24(%r12), %rdi
	movl	$.L.str.57, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	%rbp, %r8
	movq	%r15, %r9
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	80(%rsp), %r10          # 8-byte Reload
.LBB85_85:                              # %if.end.362
	movq	1728(%r12), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r10, %rcx
	movq	%r12, %r15
	movq	%r10, %r12
	movq	%r8, %r13
	callq	*1464(%rdi)
	movl	%eax, %edx
	testb	%r14b, %r14b
	je	.LBB85_105
# BB#86:                                # %land.lhs.true.369
	cmpl	$1, 40(%rbp)
	jne	.LBB85_105
# BB#87:                                # %land.lhs.true.374
	movq	1728(%r15), %rax
	movl	$st_pdf14_accum, %ecx
	cmpq	%rcx, 32(%rax)
	je	.LBB85_88
.LBB85_105:                             # %if.end.489
	movq	%rbx, %rax
	movq	(%rax), %rsi
	cmpq	1728(%r15), %rsi
	je	.LBB85_107
# BB#106:                               # %if.then.493
	movq	%r15, %rdi
	movq	%rax, %r14
	movq	%rdx, %rbx
	callq	gx_device_set_target
	movq	%rbx, %rdx
	movq	%r14, %rax
.LBB85_107:                             # %if.end.494
	movq	%r15, (%rax)
.LBB85_108:                             # %cleanup.495
	movl	%edx, %eax
.LBB85_109:                             # %cleanup.495
	addq	$1784, %rsp             # imm = 0x6F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB85_88:                              # %if.then.378
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	64(%r13), %rbx
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gx_device_raster
	movl	$.L.str.67, %edx
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	*%rbx
	movq	%rax, %r14
	movq	%r12, 80(%rsp)          # 8-byte Spill
	movq	1728(%r15), %rbp
	movq	18472(%rbp), %rax
	movq	1728(%rax), %r13
	movq	8(%r12), %rdx
	leaq	152(%rsp), %rdi
	xorl	%esi, %esi
	callq	gs_cspace_build_ICC
	testq	%r14, %r14
	movq	%r15, %r12
	je	.LBB85_104
# BB#89:                                # %if.then.378
	movq	152(%rsp), %rax
	testq	%rax, %rax
	je	.LBB85_104
# BB#90:                                # %if.end.404
	leaq	96(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB85_91
# BB#96:                                # %if.end.410
	movq	96(%rsp), %rsi
	movq	152(%rsp), %rdx
	addq	$64, %rdx
	leaq	104(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movq	152(%rsp), %rdi
	movq	64(%rdi), %rax
	addq	$64, %rdi
	testq	%rax, %rax
	je	.LBB85_98
# BB#97:                                # %do.body.414
	incq	288(%rax)
.LBB85_98:                              # %do.end.421
	callq	gscms_set_icc_range
	movq	152(%rsp), %rsi
	leaq	176(%rsp), %rbx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gs_image_t_init_adjust
	movl	832(%r12), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 184(%rsp)
	movl	836(%r12), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm1, 196(%rsp)
	movl	%eax, 208(%rsp)
	movl	%ecx, 212(%rsp)
	movl	$8, 216(%rsp)
	movq	80(%rsp), %rsi          # 8-byte Reload
	movss	%xmm0, 132(%rsi)
	movl	$0, 136(%rsi)
	movl	$0, 140(%rsi)
	movss	%xmm1, 144(%rsi)
	movl	$0, 148(%rsi)
	movl	$0, 152(%rsi)
	movq	8(%rsi), %rax
	leaq	144(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbx, %rcx
	callq	*1440(%r13)
	testl	%eax, %eax
	js	.LBB85_104
# BB#99:                                # %for.cond.preheader
	cmpl	$0, 836(%rbp)
	jle	.LBB85_103
# BB#100:                               # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	172(%rsp), %r15
.LBB85_102:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	leaq	160(%rsp), %rcx
	callq	*1240(%rbp)
	movq	160(%rsp), %rax
	movq	%rax, 128(%rsp)
	movl	$0, 136(%rsp)
	movl	100(%rbp), %eax
	imull	832(%rbp), %eax
	movl	%eax, 140(%rsp)
	movq	144(%rsp), %rdi
	movq	8(%rdi), %rax
	movl	$1, %edx
	leaq	128(%rsp), %rsi
	movq	%r15, %rcx
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB85_104
# BB#101:                               # %for.cond
                                        #   in Loop: Header=BB85_102 Depth=1
	incl	%ebx
	cmpl	836(%rbp), %ebx
	jl	.LBB85_102
.LBB85_103:                             # %for.end
	movq	144(%rsp), %rdi
	movq	8(%rdi), %rax
	movl	$1, %esi
	callq	*8(%rax)
.LBB85_104:                             # %put_accum_error
	movq	24(%r12), %rdi
	movl	$.L__func__.pdf14_put_image, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	152(%rsp), %rdi
	movl	$.L__func__.pdf14_put_image, %esi
	callq	rc_decrement_only_cs
	movq	%rbp, %rdi
	callq	*1176(%rbp)
	movq	1728(%r12), %rax
	movq	18472(%rax), %rsi
	movq	%r12, %rdi
	callq	gx_device_set_target
	movq	1728(%r12), %rax
	movq	%rax, 4208(%r12)
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$96, %r12
	addq	$96, %r13
	movl	$720, %edx              # imm = 0x2D0
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movq	24(%rbp), %rdi
	movl	$.L.str.68, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	xorl	%edx, %edx
	jmp	.LBB85_108
.LBB85_91:                              # %if.then.409
	movq	152(%rsp), %rdi
	movl	$.L__func__.pdf14_put_image, %esi
	callq	rc_decrement_only_cs
	movl	%ebx, %edx
	jmp	.LBB85_108
.LBB85_38:                              # %cond.false
	movl	$.L.str.18, %esi
	callq	strcmp
	movq	%r13, %rbx
	movq	80(%rsp), %r10          # 8-byte Reload
	movq	%r15, %r9
	movq	%r12, %r8
	jmp	.LBB85_39
.LBB85_6:                               # %sw.bb.7.i.i
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r14, 80(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %rdi
	movl	$pdf14_clist_RGB_device+128, %esi
	movl	$1600, %edx             # imm = 0x640
	callq	memcpy
	movl	$3, %ebx
	movl	$1, %r15d
	movw	$24, %ax
	movb	$-1, %cl
	xorl	%r13d, %r13d
	movl	$3, %r14d
	jmp	.LBB85_12
.LBB85_7:                               # %sw.bb.8.i.i
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r14, 80(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %rdi
	movl	$pdf14_clist_CMYK_device+128, %esi
	movl	$1600, %edx             # imm = 0x640
	callq	memcpy
	movl	$4, %ebx
	xorl	%r13d, %r13d
	movw	$32, %ax
	movb	$3, %cl
	xorl	%r15d, %r15d
	movl	$4, %r14d
	jmp	.LBB85_12
.LBB85_8:                               # %sw.bb.9.i.i
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r14, 80(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %rdi
	movl	$pdf14_clist_CMYKspot_device+128, %esi
	movl	$1600, %edx             # imm = 0x640
	callq	memcpy
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	44(%rax), %ebx
	movb	$63, %cl
	testl	%ebx, %ebx
	js	.LBB85_9
# BB#10:                                # %if.then.i.i
	addl	$4, %ebx
	cmpl	$64, %ebx
	movl	$64, %r14d
	cmovgl	%r14d, %ebx
	leal	(,%rbx,8), %eax
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	jmp	.LBB85_12
.LBB85_11:                              # %sw.bb.31.i.i
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r14, 80(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %rdi
	movl	$pdf14_clist_custom_device+128, %esi
	movl	$1600, %edx             # imm = 0x640
	callq	memcpy
	movq	96(%rbp), %r14
	movq	104(%rbp), %r15
	movq	%r14, %rbx
	shrq	$32, %rbx
	movq	%r15, %rax
	shrq	$48, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r15, %r13
	shrq	$56, %r13
	movq	%rbp, %rsi
	subq	$-128, %rsi
	movl	$688, %edx              # imm = 0x2B0
	leaq	176(%rsp), %rdi
	callq	memcpy
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, %rax
	shlq	$3, %rax
	jmp	.LBB85_12
.LBB85_31:
	movq	80(%rsp), %r10          # 8-byte Reload
.LBB85_39:                              # %cond.end
	testl	%eax, %eax
	movq	32(%rsp), %r12          # 8-byte Reload
	je	.LBB85_85
# BB#40:                                # %land.lhs.true.132
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%r9, %r13
	movq	%r12, %r15
	movq	%r10, %r12
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r15), %rdi
	cmpq	$3, %rcx
	ja	.LBB85_49
# BB#41:                                # %cond.true.136
	movzbl	(%rdi), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	movq	%r12, %r10
	movq	%r13, %r9
	movq	48(%rsp), %r8           # 8-byte Reload
	je	.LBB85_42
# BB#43:                                # %cond.true.136
	testl	%eax, %eax
	movq	%r15, %r12
	jne	.LBB85_50
# BB#44:                                # %if.then.151
	movzbl	1(%rdi), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB85_50
# BB#45:                                # %if.then.151
	testl	%eax, %eax
	jne	.LBB85_50
# BB#46:                                # %if.then.161
	movzbl	2(%rdi), %eax
	addl	$-102, %eax
	cmpq	$3, %rcx
	jb	.LBB85_50
# BB#47:                                # %if.then.161
	testl	%eax, %eax
	jne	.LBB85_50
# BB#48:                                # %if.then.171
	movzbl	3(%rdi), %eax
	addl	$-49, %eax
	jmp	.LBB85_50
.LBB85_49:                              # %cond.false.180
	movl	$.L.str.17, %esi
	callq	strcmp
	movq	%r12, %r10
	movq	%r15, %r12
	movq	%r13, %r9
	movq	48(%rsp), %r8           # 8-byte Reload
	jmp	.LBB85_50
.LBB85_9:
	movl	$64, %ebx
	xorl	%r13d, %r13d
	movw	$64, %ax
	xorl	%r15d, %r15d
	movl	$64, %r14d
.LBB85_12:                              # %if.end.i
	movl	%r14d, 96(%r12)
	movl	%ebx, 100(%r12)
	movl	%r15d, 104(%r12)
	movw	%ax, 108(%r12)
	movb	%cl, 110(%r12)
	movb	%r13b, 111(%r12)
	movaps	.LCPI85_0(%rip), %xmm0  # xmm0 = [255,255,256,256]
	movups	%xmm0, 112(%r12)
	movq	%r12, %rdi
	subq	$-128, %rdi
	leaq	176(%rsp), %rsi
	movl	$688, %edx              # imm = 0x2B0
	callq	memcpy
	leaq	1144(%r12), %rdi
	leaq	1192(%rsp), %rsi
	movl	$584, %edx              # imm = 0x248
	callq	memcpy
	movl	840(%rbp), %eax
	movl	%eax, 840(%r12)
	movl	844(%rbp), %eax
	movl	%eax, 844(%r12)
	movl	848(%rbp), %eax
	movl	%eax, 848(%r12)
	movq	%r12, %rdi
	callq	gx_device_fill_in_procs
	movq	%r12, %rdi
	callq	check_device_separable
	xorl	%edx, %edx
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %r14          # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
.LBB85_13:                              # %pdf14_recreate_clist_device.exit
	movl	$0, 4184(%r12)
	movl	$0, 4180(%r12)
	movq	$0, 4168(%r12)
	testl	%edx, %edx
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rcx
	js	.LBB85_108
# BB#14:                                # %if.end
	movq	32(%rdi), %rax
	movq	%rax, 208(%rsp)
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movaps	%xmm1, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movq	$gs_composite_pdf14trans_no_clist_writer_type, 176(%rsp)
	movq	1728(%r12), %rdi
	leaq	176(%rsp), %rdx
	movq	%rsi, %rbx
	callq	*1464(%rdi)
	movl	%eax, %edx
	movq	%r12, (%rbx)
	jmp	.LBB85_108
.LBB85_42:
	movq	%r15, %r12
.LBB85_50:                              # %cond.end.183
	testl	%eax, %eax
	je	.LBB85_85
# BB#51:                                # %lor.rhs
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r12, %r15
	movq	%r10, %r12
	movq	%r9, %r13
	movq	%r8, %r14
	callq	*1664(%r15)
	movq	%r14, %r8
	movb	47(%rsp), %r14b         # 1-byte Reload
	movq	%r13, %r9
	movq	%r12, %r10
	movq	%r15, %r12
	testl	%eax, %eax
	jne	.LBB85_85
# BB#52:                                # %if.then.190
	movl	712(%rbp), %esi
	movq	728(%rbp), %rcx
	movq	%r12, %rdi
	movq	%r10, %rdx
	movq	%r12, %r15
	movq	%r10, %r12
	movq	%r9, %r13
	movq	%r8, %r14
	callq	pdf14_update_device_color_procs_push_c
	movq	%r14, %r8
	movb	47(%rsp), %r14b         # 1-byte Reload
	movq	%r13, %r9
	movq	%r12, %r10
	movq	%r15, %r12
	jmp	.LBB85_53
.Lfunc_end85:
	.size	pdf14_clist_create_compositor, .Lfunc_end85-pdf14_clist_create_compositor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI85_0:
	.quad	.LBB85_3
	.quad	.LBB85_15
	.quad	.LBB85_85
	.quad	.LBB85_26
	.quad	.LBB85_55
	.quad	.LBB85_54
	.quad	.LBB85_81
	.quad	.LBB85_95
	.quad	.LBB85_85
	.quad	.LBB85_85
	.quad	.LBB85_92
	.quad	.LBB85_94
.LJTI85_1:
	.quad	.LBB85_5
	.quad	.LBB85_6
	.quad	.LBB85_7
	.quad	.LBB85_8
	.quad	.LBB85_11

	.text
	.align	16, 0x90
	.type	pdf14_clist_text_begin,@function
pdf14_clist_text_begin:                 # @pdf14_clist_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp760:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp761:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp762:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp763:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp764:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp765:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp766:
	.cfi_def_cfa_offset 96
.Ltmp767:
	.cfi_offset %rbx, -56
.Ltmp768:
	.cfi_offset %r12, -48
.Ltmp769:
	.cfi_offset %r13, -40
.Ltmp770:
	.cfi_offset %r14, -32
.Ltmp771:
	.cfi_offset %r15, -24
.Ltmp772:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	pdf14_clist_update_params
	testl	%eax, %eax
	js	.LBB86_3
# BB#1:                                 # %if.end
	movq	104(%rsp), %rax
	movq	96(%rsp), %rcx
	leaq	32(%rsp), %rdx
	movq	%rdx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%rcx, (%rsp)
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	gx_forward_text_begin
	testl	%eax, %eax
	js	.LBB86_3
# BB#2:                                 # %if.end.4
	movq	112(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, (%rcx)
.LBB86_3:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end86:
	.size	pdf14_clist_text_begin, .Lfunc_end86-pdf14_clist_text_begin
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_clist_update_params,@function
pdf14_clist_update_params:              # @pdf14_clist_update_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp773:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp774:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp775:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp776:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp777:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp778:
	.cfi_def_cfa_offset 56
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp779:
	.cfi_def_cfa_offset 784
.Ltmp780:
	.cfi_offset %rbx, -56
.Ltmp781:
	.cfi_offset %r12, -48
.Ltmp782:
	.cfi_offset %r13, -40
.Ltmp783:
	.cfi_offset %r14, -32
.Ltmp784:
	.cfi_offset %r15, -24
.Ltmp785:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbp
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r12
	xorps	%xmm0, %xmm0
	movups	%xmm0, 700(%rsp)
	movaps	%xmm0, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	leaq	128(%rsp), %rdi
	xorl	%esi, %esi
	movl	$544, %edx              # imm = 0x220
	callq	memset
	xorps	%xmm0, %xmm0
	movups	%xmm0, 108(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movq	$0, 80(%rsp)
	movl	220(%r14), %eax
	cmpl	4180(%r12), %eax
	movl	$0, %ecx
	movl	$0, %r15d
	je	.LBB87_2
# BB#1:                                 # %if.then
	movl	%eax, 4180(%r12)
	movl	$1, %r15d
	movl	%eax, %ecx
.LBB87_2:                               # %if.end
	movl	248(%r14), %eax
	cmpl	4184(%r12), %eax
	jne	.LBB87_4
# BB#3:
	xorl	%eax, %eax
	jmp	.LBB87_5
.LBB87_4:                               # %if.then.8
	orl	$2, %r15d
	movl	%eax, 4184(%r12)
.LBB87_5:                               # %if.end.13
	movss	228(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	4172(%r12), %xmm0
	jne	.LBB87_7
	jp	.LBB87_7
	jmp	.LBB87_6
.LBB87_7:                               # %if.then.16
	orl	$4, %r15d
	movss	%xmm0, 4172(%r12)
	jmp	.LBB87_8
.LBB87_6:
	xorps	%xmm0, %xmm0
.LBB87_8:                               # %if.end.23
	movss	224(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	4168(%r12), %xmm1
	jne	.LBB87_10
	jp	.LBB87_10
	jmp	.LBB87_9
.LBB87_10:                              # %if.then.27
	orl	$8, %r15d
	movss	%xmm1, 4168(%r12)
	jmp	.LBB87_11
.LBB87_9:
	xorps	%xmm1, %xmm1
.LBB87_11:                              # %if.end.34
	movl	272(%r14), %edx
	cmpl	4188(%r12), %edx
	jne	.LBB87_13
# BB#12:
	xorl	%edx, %edx
	jmp	.LBB87_14
.LBB87_13:                              # %if.then.37
	orl	$16, %r15d
	movl	%edx, 4188(%r12)
.LBB87_14:                              # %if.end.42
	movl	276(%r14), %esi
	cmpl	4192(%r12), %esi
	jne	.LBB87_16
# BB#15:
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movl	%eax, 20(%rsp)          # 4-byte Spill
	xorl	%esi, %esi
	jmp	.LBB87_17
.LBB87_16:                              # %if.then.45
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	movss	%xmm0, 16(%rsp)         # 4-byte Spill
	movl	%eax, 20(%rsp)          # 4-byte Spill
	orl	$32, %r15d
	movl	%esi, 4192(%r12)
.LBB87_17:                              # %if.end.50
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	je	.LBB87_19
# BB#18:                                # %if.then.51
	movq	636(%rbp), %rax
	movq	%rax, 116(%rsp)
	movups	620(%rbp), %xmm0
	movups	%xmm0, 100(%rsp)
	movups	24(%rbp), %xmm0
	movups	40(%rbp), %xmm1
	movups	%xmm1, 700(%rsp)
	movups	%xmm0, 684(%rsp)
.LBB87_19:                              # %if.end.54
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	je	.LBB87_22
# BB#20:                                # %if.then.57
	movq	8(%r14), %r13
	movl	$st_pdf14trans, %esi
	movl	$.L.str.64, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbp
	movl	$-25, %ebx
	testq	%rbp, %rbp
	je	.LBB87_22
# BB#21:                                # %if.end.60
	movq	$gs_composite_pdf14trans_type, (%rbp)
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gs_next_ids
	movq	%rax, 8(%rbp)
	movl	$7, 40(%rbp)
	movl	$0, 44(%rbp)
	movl	%r15d, 48(%rbp)
	movups	700(%rsp), %xmm0
	movups	%xmm0, 80(%rbp)
	movaps	672(%rsp), %xmm0
	movaps	688(%rsp), %xmm1
	movups	%xmm1, 68(%rbp)
	movups	%xmm0, 52(%rbp)
	movq	%rbp, %rdi
	addq	$96, %rdi
	leaq	128(%rsp), %rsi
	movl	$544, %edx              # imm = 0x220
	callq	memcpy
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 640(%rbp)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 644(%rbp)
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 648(%rbp)
	movss	16(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 652(%rbp)
	movups	108(%rsp), %xmm0
	movups	%xmm0, 668(%rbp)
	movaps	96(%rsp), %xmm0
	movups	%xmm0, 656(%rbp)
	movl	$0, 684(%rbp)
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 688(%rbp)
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 692(%rbp)
	movq	80(%rsp), %rax
	movq	%rax, 728(%rbp)
	movaps	48(%rsp), %xmm0
	movaps	64(%rsp), %xmm1
	movups	%xmm1, 712(%rbp)
	movups	%xmm0, 696(%rbp)
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 736(%rbp)
	movl	$0, 740(%rbp)
	movl	$0, 16(%rbp)
	movq	1728(%r12), %rdi
	movq	8(%r14), %r8
	leaq	40(%rsp), %rsi
	xorl	%r9d, %r9d
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	*1464(%rdi)
	movl	%eax, %ebx
	movq	8(%r14), %rdi
	movl	$.L.str.66, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB87_22:                              # %cleanup
	movl	%ebx, %eax
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end87:
	.size	pdf14_clist_update_params, .Lfunc_end87-pdf14_clist_update_params
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_push_parent_color,@function
pdf14_push_parent_color:                # @pdf14_push_parent_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp786:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp787:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp788:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp789:
	.cfi_def_cfa_offset 80
.Ltmp790:
	.cfi_offset %rbx, -32
.Ltmp791:
	.cfi_offset %r14, -24
.Ltmp792:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	8(%rsp), %rsi
	callq	*1680(%r14)
	movq	8(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	16(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movq	24(%r14), %rdi
	movl	$st_pdf14_clr, %esi
	movl	$.L.str.74, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	movq	5016(%r14), %rax
	movq	%rax, 216(%rbx)
	movq	%rbx, 5016(%r14)
	movq	360(%r15), %rax
	movq	%rax, 152(%rbx)
	movq	1536(%r14), %rax
	movq	%rax, 160(%rbx)
	movq	1544(%r14), %rax
	movq	%rax, 184(%rbx)
	movl	104(%r14), %eax
	movl	%eax, 8(%rbx)
	movl	100(%r14), %eax
	movl	%eax, (%rbx)
	movups	4136(%r14), %xmm0
	movups	%xmm0, 192(%rbx)
	movb	108(%r14), %al
	movb	%al, 140(%rbx)
	movl	116(%r14), %eax
	movl	%eax, 148(%rbx)
	movl	112(%r14), %eax
	movl	%eax, 144(%rbx)
	movups	1552(%r14), %xmm0
	movups	%xmm0, 168(%rbx)
	leaq	76(%rbx), %rdi
	leaq	204(%r14), %rsi
	movl	$64, %edx
	callq	memcpy
	leaq	12(%rbx), %rdi
	leaq	140(%r14), %rsi
	movl	$64, %edx
	callq	memcpy
	movq	40(%rsp), %rax
	movq	%rax, 208(%rbx)
	movq	40(%rsp), %rax
	testq	%rax, %rax
	je	.LBB88_2
# BB#1:                                 # %do.body.27
	incq	288(%rax)
.LBB88_2:                               # %do.end.34
	movq	4152(%r14), %rax
	testq	%rax, %rax
	je	.LBB88_4
# BB#3:                                 # %if.then.36
	movl	40(%rax), %eax
	movl	%eax, 4(%rbx)
.LBB88_4:                               # %if.end.38
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end88:
	.size	pdf14_push_parent_color, .Lfunc_end88-pdf14_push_parent_color
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_update_device_color_procs_push_c,@function
pdf14_update_device_color_procs_push_c: # @pdf14_update_device_color_procs_push_c
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp793:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp794:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp795:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp796:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp797:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp798:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp799:
	.cfi_def_cfa_offset 144
.Ltmp800:
	.cfi_offset %rbx, -56
.Ltmp801:
	.cfi_offset %r12, -48
.Ltmp802:
	.cfi_offset %r13, -40
.Ltmp803:
	.cfi_offset %r14, -32
.Ltmp804:
	.cfi_offset %r15, -24
.Ltmp805:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	4208(%rbx), %r13
	movl	$0, 84(%rsp)
	movl	$0, 80(%rsp)
	movl	1112(%rbx), %ecx
	cmpl	$5, %r12d
	jne	.LBB89_4
# BB#1:                                 # %entry
	testq	%r14, %r14
	jne	.LBB89_4
# BB#2:                                 # %if.then
	movl	$.L__func__.pdf14_update_device_color_procs_push_c, %edi
	movl	$.L.str.39, %esi
	movl	$4139, %edx             # imm = 0x102B
	xorl	%ecx, %ecx
	movl	$-23, %r8d
	movl	$.L.str.75, %r9d
.LBB89_3:                               # %cleanup
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ebp
	jmp	.LBB89_36
.LBB89_4:                               # %do.end
	movl	%r12d, %eax
	cmpl	$6, %r12d
	ja	.LBB89_25
# BB#5:                                 # %do.end
	xorl	%ebp, %ebp
	jmpq	*.LJTI89_0(,%rax,8)
.LBB89_8:                               # %sw.bb.6
	cmpl	$3, 100(%rbx)
	je	.LBB89_36
# BB#9:                                 # %for.cond.preheader
	movb	$8, 84(%rsp)
	movb	$16, 80(%rsp)
	movb	$8, 85(%rsp)
	movb	$8, 81(%rsp)
	movb	$8, 86(%rsp)
	movb	$0, 82(%rsp)
	movl	$rgb_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$gs_pdf14_RGB_device, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movb	$24, %bpl
.LBB89_19:                              # %if.then.92
	movl	$3, 36(%rsp)            # 4-byte Folded Spill
	movl	$1, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB89_22
.LBB89_25:                              # %sw.default.90
	movl	$-15, %ebp
.LBB89_36:                              # %cleanup
	movl	%ebp, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB89_6:                               # %sw.bb
	cmpl	$1, 100(%rbx)
	je	.LBB89_36
# BB#7:                                 # %if.then.3
	movb	$8, 84(%rsp)
	movb	$0, 80(%rsp)
	movl	$gray_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$gs_pdf14_Gray_device, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movb	$8, %bpl
	jmp	.LBB89_21
.LBB89_10:                              # %sw.bb.16
	cmpl	$4, 100(%rbx)
	je	.LBB89_36
# BB#11:                                # %if.then.21
	movb	$8, 84(%rsp)
	movb	$24, 80(%rsp)
	movb	$8, 85(%rsp)
	movb	$16, 81(%rsp)
	movb	$8, 86(%rsp)
	movb	$8, 82(%rsp)
	movb	$8, 87(%rsp)
	movb	$0, 83(%rsp)
	movl	$cmykspot_pdf14_procs, %eax
	movl	$cmyk_pdf14_procs, %edx
	cmovgq	%rax, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	$gs_pdf14_CMYK_device, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movb	$32, %bpl
.LBB89_17:                              # %if.then.92
	movl	$4, 36(%rsp)            # 4-byte Folded Spill
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	jmp	.LBB89_22
.LBB89_12:                              # %sw.bb.43
	leaq	40(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	callq	*1680(%rbx)
	movq	40(%rsp), %rsi
	xorl	%ebp, %ebp
	leaq	72(%rsp), %rdx
	leaq	48(%rsp), %rcx
	xorl	%edi, %edi
	callq	gsicc_extract_profile
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	72(%rsp), %rax
	movq	144(%rax), %rax
	cmpq	144(%r14), %rax
	je	.LBB89_36
# BB#13:                                # %if.then.48
	movzbl	(%r14), %eax
	movb	%al, %bpl
	shlb	$3, %bpl
	cmpl	$1, %eax
	je	.LBB89_20
# BB#14:                                # %if.then.48
	cmpl	$3, %eax
	jne	.LBB89_15
# BB#18:                                # %for.cond.58.preheader
	movb	$8, 84(%rsp)
	movb	$16, 80(%rsp)
	movb	$8, 85(%rsp)
	movb	$8, 81(%rsp)
	movb	$8, 86(%rsp)
	movb	$0, 82(%rsp)
	movl	$rgb_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$gs_pdf14_RGB_device, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB89_19
.LBB89_20:                              # %sw.bb.54
	movb	$8, 84(%rsp)
	movb	$0, 80(%rsp)
	movl	$gray_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$gs_pdf14_Gray_device, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB89_21:                              # %if.then.92
	movl	$1, 32(%rsp)            # 4-byte Folded Spill
	movl	$1, 36(%rsp)            # 4-byte Folded Spill
.LBB89_22:                              # %if.then.92
	andl	$128, %ecx
	jne	.LBB89_23
# BB#26:                                # %if.then.92
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	jmp	.LBB89_27
.LBB89_23:
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	addb	$8, %bpl
.LBB89_27:                              # %if.then.92
	movq	$pdf14_get_cmap_procs_group, 360(%r15)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gx_set_cmap_procs
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	movq	8(%rcx), %rax
	movups	392(%rax), %xmm0
	movups	%xmm0, 1536(%rbx)
	movq	4144(%rcx), %rax
	movq	%rax, 4144(%rbx)
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 104(%rbx)
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 100(%rbx)
	movl	$255, 116(%rbx)
	movl	$255, 112(%rbx)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 4136(%rbx)
	movzbl	%bpl, %eax
	movw	%ax, 108(%rbx)
	leaq	204(%rbx), %r15
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%r15, %rdi
	callq	memset
	leaq	140(%rbx), %rbp
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%rbp, %rdi
	callq	memset
	leaq	84(%rsp), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcpy
	leaq	80(%rsp), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcpy
	cmpl	$1, 36(%rsp)            # 4-byte Folded Reload
	jne	.LBB89_32
# BB#28:                                # %if.then.92
	movl	$pdf14_compressed_encode_color, %eax
	cmpq	%rax, 1552(%rbx)
	jne	.LBB89_32
# BB#29:                                # %if.then.133
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	416(%rax), %rcx
	movq	%rcx, 1560(%rbx)
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB89_31
# BB#30:                                # %if.then.138
	movq	$pdf14_encode_color_tag, 1552(%rbx)
	jmp	.LBB89_32
.LBB89_31:                              # %if.else.141
	movq	408(%rax), %rax
	movq	%rax, 1552(%rbx)
.LBB89_32:                              # %if.end.147
	movw	108(%rbx), %ax
	movw	%ax, 12252(%r13)
	movl	104(%rbx), %eax
	movl	%eax, 12248(%r13)
	movl	100(%rbx), %eax
	movl	%eax, 12244(%r13)
	movl	116(%rbx), %eax
	movl	%eax, 12260(%r13)
	movl	112(%rbx), %eax
	movl	%eax, 12256(%r13)
	cmpl	$5, %r12d
	jne	.LBB89_34
# BB#33:                                # %if.then.169
	movq	1104(%rbx), %rax
	movq	%r14, (%rax)
.LBB89_34:                              # %if.end.171
	movq	4152(%rbx), %rax
	movl	$1, %ebp
	testq	%rax, %rax
	je	.LBB89_36
# BB#35:                                # %if.then.173
	movl	32(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 40(%rax)
	jmp	.LBB89_36
.LBB89_15:                              # %if.then.48
	cmpl	$4, %eax
	jne	.LBB89_24
# BB#16:                                # %for.cond.73.preheader
	movb	$8, 84(%rsp)
	movb	$24, 80(%rsp)
	movb	$8, 85(%rsp)
	movb	$16, 81(%rsp)
	movb	$8, 86(%rsp)
	movb	$8, 82(%rsp)
	movb	$8, 87(%rsp)
	movb	$0, 83(%rsp)
	movl	$cmyk_pdf14_procs, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$gs_pdf14_CMYK_device, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB89_17
.LBB89_24:                              # %sw.default
	movl	$.L__func__.pdf14_update_device_color_procs_push_c, %edi
	movl	$.L.str.39, %esi
	movl	$4242, %edx             # imm = 0x1092
	xorl	%ecx, %ecx
	movl	$-23, %r8d
	movl	$.L.str.76, %r9d
	jmp	.LBB89_3
.Lfunc_end89:
	.size	pdf14_update_device_color_procs_push_c, .Lfunc_end89-pdf14_update_device_color_procs_push_c
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI89_0:
	.quad	.LBB89_6
	.quad	.LBB89_8
	.quad	.LBB89_10
	.quad	.LBB89_8
	.quad	.LBB89_25
	.quad	.LBB89_12
	.quad	.LBB89_36

	.text
	.align	16, 0x90
	.type	pdf14_update_device_color_procs_pop_c,@function
pdf14_update_device_color_procs_pop_c:  # @pdf14_update_device_color_procs_pop_c
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp806:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp807:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp808:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp809:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp810:
	.cfi_def_cfa_offset 48
.Ltmp811:
	.cfi_offset %rbx, -48
.Ltmp812:
	.cfi_offset %r12, -40
.Ltmp813:
	.cfi_offset %r13, -32
.Ltmp814:
	.cfi_offset %r14, -24
.Ltmp815:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	5016(%rbx), %r13
	movq	4208(%rbx), %r14
	cmpq	$0, 160(%r13)
	jne	.LBB90_2
# BB#1:                                 # %land.lhs.true
	cmpq	$0, 184(%r13)
	je	.LBB90_5
.LBB90_2:                               # %do.end.4
	movq	152(%r13), %rax
	movq	%rax, 360(%rsi)
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	gx_set_cmap_procs
	movq	160(%r13), %rax
	movq	%rax, 1536(%rbx)
	movq	184(%r13), %rax
	movq	%rax, 1544(%rbx)
	movl	8(%r13), %eax
	movl	%eax, 104(%rbx)
	movzbl	140(%r13), %eax
	movw	%ax, 108(%rbx)
	movl	(%r13), %eax
	movl	%eax, 100(%rbx)
	movups	192(%r13), %xmm0
	movups	%xmm0, 4136(%rbx)
	movl	148(%r13), %eax
	movl	%eax, 116(%rbx)
	movl	144(%r13), %eax
	movl	%eax, 112(%rbx)
	movups	168(%r13), %xmm0
	movups	%xmm0, 1552(%rbx)
	leaq	204(%rbx), %rdi
	leaq	76(%r13), %r15
	movl	$64, %edx
	movq	%r15, %rsi
	callq	memcpy
	leaq	140(%rbx), %rdi
	leaq	12(%r13), %r12
	movl	$64, %edx
	movq	%r12, %rsi
	callq	memcpy
	movw	108(%rbx), %ax
	movw	%ax, 12252(%r14)
	movl	104(%rbx), %eax
	movl	%eax, 12248(%r14)
	movl	100(%rbx), %eax
	movl	%eax, 12244(%r14)
	movl	116(%rbx), %eax
	movl	%eax, 12260(%r14)
	movl	112(%rbx), %eax
	movl	%eax, 12256(%r14)
	leaq	12348(%r14), %rdi
	movl	$64, %edx
	movq	%r15, %rsi
	callq	memcpy
	addq	$12284, %r14            # imm = 0x2FFC
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	4152(%rbx), %rax
	testq	%rax, %rax
	je	.LBB90_4
# BB#3:                                 # %if.then.52
	movl	4(%r13), %ecx
	movl	%ecx, 40(%rax)
.LBB90_4:                               # %if.end
	movq	208(%r13), %rax
	movq	1104(%rbx), %rcx
	movq	%rax, (%rcx)
.LBB90_5:                               # %if.end.60
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end90:
	.size	pdf14_update_device_color_procs_pop_c, .Lfunc_end90-pdf14_update_device_color_procs_pop_c
	.cfi_endproc

	.align	16, 0x90
	.type	get_param_compressed_color_list_elem,@function
get_param_compressed_color_list_elem:   # @get_param_compressed_color_list_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp816:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp817:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp818:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp819:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp820:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp821:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp822:
	.cfi_def_cfa_offset 96
.Ltmp823:
	.cfi_offset %rbx, -56
.Ltmp824:
	.cfi_offset %r12, -48
.Ltmp825:
	.cfi_offset %r13, -40
.Ltmp826:
	.cfi_offset %r14, -32
.Ltmp827:
	.cfi_offset %r15, -24
.Ltmp828:
	.cfi_offset %rbp, -16
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	testq	%r13, %r13
	je	.LBB91_10
# BB#1:                                 # %if.end
	movq	%rcx, %r14
	movq	24(%r15), %rdi
	movl	$6150, %esi             # imm = 0x1806
	movl	$.L.str.69, %edx
	callq	*64(%rdi)
	movq	%rax, 24(%rsp)
	movl	$0, 36(%rsp)
	movb	12(%r13), %cl
	movb	%cl, (%rax)
	movb	13(%r13), %cl
	movb	%cl, 1(%rax)
	movb	16(%r13), %cl
	movb	%cl, 2(%rax)
	movb	17(%r13), %cl
	movb	%cl, 3(%rax)
	movslq	16(%r13), %rsi
	addq	$4, %rax
	cmpq	$255, %rsi
	jg	.LBB91_7
# BB#2:                                 # %for.cond.19.preheader.lr.ph
	leaq	(%rsi,%rsi,2), %rcx
	leaq	24(%r13,%rcx,8), %rcx
	movl	$256, %edx              # imm = 0x100
	subl	%esi, %edx
	.align	16, 0x90
.LBB91_3:                               # %for.cond.19.preheader
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rcx), %bl
	movb	%bl, (%rax)
	movb	1(%rcx), %bl
	movb	%bl, 1(%rax)
	movb	2(%rcx), %bl
	movb	%bl, 2(%rax)
	movb	3(%rcx), %bl
	movb	%bl, 3(%rax)
	movb	4(%rcx), %bl
	movb	%bl, 4(%rax)
	movb	8(%rcx), %bl
	movb	%bl, 5(%rax)
	movb	9(%rcx), %bl
	movb	%bl, 6(%rax)
	movb	10(%rcx), %bl
	movb	%bl, 7(%rax)
	movb	11(%rcx), %bl
	movb	%bl, 8(%rax)
	movb	12(%rcx), %bl
	movb	%bl, 9(%rax)
	movb	13(%rcx), %bl
	movb	%bl, 10(%rax)
	movb	14(%rcx), %bl
	movb	%bl, 11(%rax)
	movb	15(%rcx), %bl
	movb	%bl, 12(%rax)
	movzwl	2(%rcx), %esi
	movzwl	(%rcx), %edi
	cmpl	%esi, %edi
	jne	.LBB91_5
# BB#4:                                 #   in Loop: Header=BB91_3 Depth=1
	addq	$13, %rax
	jmp	.LBB91_6
	.align	16, 0x90
.LBB91_5:                               # %for.cond.93.preheader
                                        #   in Loop: Header=BB91_3 Depth=1
	movb	16(%rcx), %bl
	movb	%bl, 13(%rax)
	movb	17(%rcx), %bl
	movb	%bl, 14(%rax)
	movb	18(%rcx), %bl
	movb	%bl, 15(%rax)
	movb	19(%rcx), %bl
	movb	%bl, 16(%rax)
	movb	20(%rcx), %bl
	movb	%bl, 17(%rax)
	movb	21(%rcx), %bl
	movb	%bl, 18(%rax)
	movb	22(%rcx), %bl
	movb	%bl, 19(%rax)
	movb	23(%rcx), %bl
	movb	%bl, 20(%rax)
	addq	$21, %rax
.LBB91_6:                               # %for.inc.111
                                        #   in Loop: Header=BB91_3 Depth=1
	addq	$24, %rcx
	decl	%edx
	jne	.LBB91_3
.LBB91_7:                               # %for.end.113
	subl	24(%rsp), %eax
	movl	%eax, 32(%rsp)
	leaq	24(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	param_write_string
	movq	24(%r15), %rdi
	movq	24(%rsp), %rsi
	movl	$.L.str.69, %edx
	callq	*24(%rdi)
	cmpl	$0, 12(%r13)
	jle	.LBB91_10
# BB#8:                                 # %for.body.125.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB91_9:                               # %for.body.125
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r15), %r12
	movq	64(%r12), %rbx
	movq	%r14, %rdi
	callq	strlen
	leal	10(%rax), %esi
	movl	$.L.str.69, %edx
	movq	%r12, %rdi
	movq	%r13, %r12
	movq	8(%rsp), %r13           # 8-byte Reload
	callq	*%rbx
	movq	%rax, %rbx
	movq	24(%r15), %rdi
	movl	$st_keyname_link_list, %esi
	movl	$.L.str.69, %edx
	callq	*72(%rdi)
	movq	(%r13), %rcx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	%rax, (%r13)
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movl	%ebp, %ecx
	callq	gs_sprintf
	movq	24(%r12,%rbp,8), %rdx
	movq	%r15, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rcx
	movq	%r13, %r8
	callq	get_param_compressed_color_list_elem
	incq	%rbp
	movslq	12(%r12), %rax
	movq	%r12, %r13
	cmpq	%rax, %rbp
	jl	.LBB91_9
.LBB91_10:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end91:
	.size	get_param_compressed_color_list_elem, .Lfunc_end91-get_param_compressed_color_list_elem
	.cfi_endproc

	.align	16, 0x90
	.type	pdf14_clist_forward_create_compositor,@function
pdf14_clist_forward_create_compositor:  # @pdf14_clist_forward_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp829:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp830:
	.cfi_def_cfa_offset 32
.Ltmp831:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	movq	%rbx, (%rsi)
	movq	(%rdx), %rax
	movl	$gs_composite_pdf14trans_type, %esi
	cmpq	%rsi, %rax
	je	.LBB92_2
# BB#1:                                 # %entry
	movl	$gs_composite_pdf14trans_no_clist_writer_type, %esi
	cmpq	%rsi, %rax
	je	.LBB92_2
# BB#4:                                 # %if.end.3
	leaq	8(%rsp), %rsi
	callq	*1464(%rdi)
	testl	%eax, %eax
	js	.LBB92_6
# BB#5:                                 # %if.end.7
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_device_set_target
	xorl	%eax, %eax
	jmp	.LBB92_6
.LBB92_2:                               # %if.then
	xorl	%eax, %eax
	cmpl	$0, 40(%rdx)
	jne	.LBB92_6
# BB#3:                                 # %if.then.1
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pdf14_clist_create_compositor
.LBB92_6:                               # %cleanup.8
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end92:
	.size	pdf14_clist_forward_create_compositor, .Lfunc_end92-pdf14_clist_forward_create_compositor
	.cfi_endproc

	.type	pdf14_Gray_procs,@object # @pdf14_Gray_procs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_Gray_procs:
	.quad	pdf14_open
	.quad	0
	.quad	0
	.quad	pdf14_output_page
	.quad	pdf14_close
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	pdf14_fill_rectangle
	.quad	0
	.quad	pdf14_copy_mono
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha
	.quad	0
	.quad	0
	.quad	pdf14_fill_path
	.quad	pdf14_stroke_path
	.quad	pdf14_fill_mask
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
	.quad	pdf14_begin_typed_image
	.quad	0
	.quad	0
	.quad	pdf14_create_compositor
	.quad	0
	.quad	pdf14_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	pdf14_discard_trans_layer
	.quad	gx_default_DevGray_get_color_mapping_procs
	.quad	gx_default_DevGray_get_color_comp_index
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	0
	.quad	pdf14_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	pdf14_ret_devn_params
	.quad	0
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	pdf14_copy_planes
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha_hl_color
	.quad	0
	.size	pdf14_Gray_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf14gray"
	.size	.L.str, 10

	.type	st_pdf14_device,@object # @st_pdf14_device
	.section	.rodata,"a",@progbits
	.align	8
st_pdf14_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	.L.str.59
	.quad	0
	.quad	0
	.quad	pdf14_device_enum_ptrs
	.quad	pdf14_device_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_pdf14_device, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gray_pdf14_procs,@object # @gray_pdf14_procs
	.section	.rodata,"a",@progbits
	.align	8
gray_pdf14_procs:
	.quad	pdf14_unpack_additive
	.quad	pdf14_put_image
	.size	gray_pdf14_procs, 16

	.type	gray_blending_procs,@object # @gray_blending_procs
	.align	8
gray_blending_procs:
	.quad	art_blend_luminosity_custom_8
	.quad	art_blend_saturation_custom_8
	.size	gray_blending_procs, 16

	.type	gs_pdf14_Gray_device,@object # @gs_pdf14_Gray_device
	.globl	gs_pdf14_Gray_device
	.align	8
gs_pdf14_Gray_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_Gray_procs
	.quad	.L.str
	.quad	0
	.quad	st_pdf14_device
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
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	4                       # 0x4
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
	.quad	0
	.zero	2400
	.quad	gray_pdf14_procs
	.quad	gray_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	gs_pdf14_Gray_device, 5024

	.type	pdf14_RGB_procs,@object # @pdf14_RGB_procs
	.align	8
pdf14_RGB_procs:
	.quad	pdf14_open
	.quad	0
	.quad	0
	.quad	pdf14_output_page
	.quad	pdf14_close
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	pdf14_fill_rectangle
	.quad	0
	.quad	pdf14_copy_mono
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha
	.quad	0
	.quad	0
	.quad	pdf14_fill_path
	.quad	pdf14_stroke_path
	.quad	pdf14_fill_mask
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
	.quad	pdf14_begin_typed_image
	.quad	0
	.quad	0
	.quad	pdf14_create_compositor
	.quad	0
	.quad	pdf14_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	pdf14_discard_trans_layer
	.quad	gx_default_DevRGB_get_color_mapping_procs
	.quad	gx_default_DevRGB_get_color_comp_index
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	0
	.quad	pdf14_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	pdf14_ret_devn_params
	.quad	0
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	pdf14_copy_planes
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha_hl_color
	.quad	0
	.size	pdf14_RGB_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"pdf14RGB"
	.size	.L.str.2, 9

	.type	rgb_pdf14_procs,@object # @rgb_pdf14_procs
	.section	.rodata,"a",@progbits
	.align	8
rgb_pdf14_procs:
	.quad	pdf14_unpack_additive
	.quad	pdf14_put_image
	.size	rgb_pdf14_procs, 16

	.type	rgb_blending_procs,@object # @rgb_blending_procs
	.align	8
rgb_blending_procs:
	.quad	art_blend_luminosity_rgb_8
	.quad	art_blend_saturation_rgb_8
	.size	rgb_blending_procs, 16

	.type	gs_pdf14_RGB_device,@object # @gs_pdf14_RGB_device
	.globl	gs_pdf14_RGB_device
	.align	8
gs_pdf14_RGB_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_RGB_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_pdf14_device
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
	.quad	0
	.zero	2400
	.quad	rgb_pdf14_procs
	.quad	rgb_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	gs_pdf14_RGB_device, 5024

	.type	pdf14_CMYK_procs,@object # @pdf14_CMYK_procs
	.align	8
pdf14_CMYK_procs:
	.quad	pdf14_open
	.quad	0
	.quad	0
	.quad	pdf14_output_page
	.quad	pdf14_close
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	pdf14_fill_rectangle
	.quad	0
	.quad	pdf14_copy_mono
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha
	.quad	0
	.quad	0
	.quad	pdf14_fill_path
	.quad	pdf14_stroke_path
	.quad	pdf14_fill_mask
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
	.quad	pdf14_begin_typed_image
	.quad	0
	.quad	0
	.quad	pdf14_create_compositor
	.quad	0
	.quad	pdf14_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	pdf14_discard_trans_layer
	.quad	gx_default_DevCMYK_get_color_mapping_procs
	.quad	gx_default_DevCMYK_get_color_comp_index
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	0
	.quad	pdf14_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	pdf14_ret_devn_params
	.quad	0
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	pdf14_copy_planes
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha_hl_color
	.quad	0
	.size	pdf14_CMYK_procs, 584

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"pdf14cmyk"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DeviceCMYK"
	.size	.L.str.4, 11

	.type	cmyk_pdf14_procs,@object # @cmyk_pdf14_procs
	.section	.rodata,"a",@progbits
	.align	8
cmyk_pdf14_procs:
	.quad	pdf14_unpack_subtractive
	.quad	pdf14_put_image
	.size	cmyk_pdf14_procs, 16

	.type	cmyk_blending_procs,@object # @cmyk_blending_procs
	.align	8
cmyk_blending_procs:
	.quad	art_blend_luminosity_cmyk_8
	.quad	art_blend_saturation_cmyk_8
	.size	cmyk_blending_procs, 16

	.type	gs_pdf14_CMYK_device,@object # @gs_pdf14_CMYK_device
	.globl	gs_pdf14_CMYK_device
	.align	8
gs_pdf14_CMYK_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_CMYK_procs
	.quad	.L.str.3
	.quad	0
	.quad	st_pdf14_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
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
	.quad	.L.str.4
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
	.quad	0
	.zero	2400
	.quad	cmyk_pdf14_procs
	.quad	cmyk_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	gs_pdf14_CMYK_device, 5024

	.type	pdf14_CMYKspot_procs,@object # @pdf14_CMYKspot_procs
	.align	8
pdf14_CMYKspot_procs:
	.quad	pdf14_open
	.quad	0
	.quad	0
	.quad	pdf14_output_page
	.quad	pdf14_close
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	pdf14_fill_rectangle
	.quad	0
	.quad	pdf14_copy_mono
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha
	.quad	0
	.quad	0
	.quad	pdf14_fill_path
	.quad	pdf14_stroke_path
	.quad	pdf14_fill_mask
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
	.quad	pdf14_begin_typed_image
	.quad	0
	.quad	0
	.quad	pdf14_create_compositor
	.quad	0
	.quad	pdf14_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	pdf14_discard_trans_layer
	.quad	pdf14_cmykspot_get_color_mapping_procs
	.quad	pdf14_cmykspot_get_color_comp_index
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	0
	.quad	pdf14_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	pdf14_ret_devn_params
	.quad	0
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	pdf14_copy_planes
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha_hl_color
	.quad	0
	.size	pdf14_CMYKspot_procs, 584

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"pdf14cmykspot"
	.size	.L.str.5, 14

	.type	cmykspot_pdf14_procs,@object # @cmykspot_pdf14_procs
	.section	.rodata,"a",@progbits
	.align	8
cmykspot_pdf14_procs:
	.quad	pdf14_unpack_compressed
	.quad	pdf14_cmykspot_put_image
	.size	cmykspot_pdf14_procs, 16

	.type	gs_pdf14_CMYKspot_device,@object # @gs_pdf14_CMYKspot_device
	.globl	gs_pdf14_CMYKspot_device
	.align	8
gs_pdf14_CMYKspot_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_CMYKspot_procs
	.quad	.L.str.5
	.quad	0
	.quad	st_pdf14_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.short	64                      # 0x40
	.byte	63                      # 0x3f
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
	.quad	.L.str.4
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
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	DeviceCMYKComponents
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.zero	1032
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	1032
	.quad	cmykspot_pdf14_procs
	.quad	cmyk_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	gs_pdf14_CMYKspot_device, 5024

	.type	pdf14_custom_procs,@object # @pdf14_custom_procs
	.align	8
pdf14_custom_procs:
	.quad	pdf14_open
	.quad	0
	.quad	0
	.quad	pdf14_output_page
	.quad	pdf14_close
	.quad	gx_forward_encode_color
	.quad	gx_forward_decode_color
	.quad	pdf14_fill_rectangle
	.quad	0
	.quad	pdf14_copy_mono
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha
	.quad	0
	.quad	0
	.quad	pdf14_fill_path
	.quad	pdf14_stroke_path
	.quad	pdf14_fill_mask
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
	.quad	pdf14_begin_typed_image
	.quad	0
	.quad	0
	.quad	pdf14_create_compositor
	.quad	0
	.quad	pdf14_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	pdf14_discard_trans_layer
	.quad	gx_forward_get_color_mapping_procs
	.quad	gx_forward_get_color_comp_index
	.quad	gx_forward_encode_color
	.quad	gx_forward_decode_color
	.quad	0
	.quad	pdf14_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	pdf14_ret_devn_params
	.quad	0
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	pdf14_copy_planes
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pdf14_copy_alpha_hl_color
	.quad	0
	.size	pdf14_custom_procs, 584

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"pdf14custom"
	.size	.L.str.6, 12

	.type	custom_pdf14_procs,@object # @custom_pdf14_procs
	.section	.rodata,"a",@progbits
	.align	8
custom_pdf14_procs:
	.quad	pdf14_unpack_custom
	.quad	pdf14_custom_put_image
	.size	custom_pdf14_procs, 16

	.type	custom_blending_procs,@object # @custom_blending_procs
	.align	8
custom_blending_procs:
	.quad	art_blend_luminosity_custom_8
	.quad	art_blend_saturation_custom_8
	.size	custom_blending_procs, 16

	.type	gs_pdf14_custom_device,@object # @gs_pdf14_custom_device
	.globl	gs_pdf14_custom_device
	.align	8
gs_pdf14_custom_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_custom_procs
	.quad	.L.str.6
	.quad	0
	.quad	st_pdf14_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.short	64                      # 0x40
	.byte	63                      # 0x3f
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
	.quad	.L.str.4
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
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	DeviceCMYKComponents
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.zero	1032
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	1032
	.quad	custom_pdf14_procs
	.quad	custom_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	gs_pdf14_custom_device, 5024

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gx_device_pdf14_accum"
	.size	.L.str.7, 22

	.type	pdf14_accum_reloc_ptrs,@object # @pdf14_accum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_accum_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_device_printer
	.quad	pdf14_accum_enum_ptrs
	.size	pdf14_accum_reloc_ptrs, 24

	.type	st_pdf14_accum,@object  # @st_pdf14_accum
	.globl	st_pdf14_accum
	.align	8
st_pdf14_accum:
	.long	18480                   # 0x4830
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	pdf14_accum_reloc_ptrs
	.size	st_pdf14_accum, 64

	.type	pdf14_accum_Gray_procs,@object # @pdf14_accum_Gray_procs
	.align	8
pdf14_accum_Gray_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_close
	.quad	gx_default_8bit_map_gray_color
	.quad	gx_default_8bit_map_color_gray
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
	.size	pdf14_accum_Gray_procs, 584

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"pdf14-accum-Gray"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"DeviceGray"
	.size	.L.str.9, 11

	.type	pdf14_accum_Gray,@object # @pdf14_accum_Gray
	.section	.rodata,"a",@progbits
	.globl	pdf14_accum_Gray
	.align	8
pdf14_accum_Gray:
	.long	18480                   # 0x4830
	.zero	4
	.quad	pdf14_accum_Gray_procs
	.quad	.L.str.8
	.quad	0
	.quad	st_pdf14_accum
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
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.9
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
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
	.quad	no_print_page
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
	.quad	0
	.size	pdf14_accum_Gray, 18480

	.type	pdf14_accum_RGB_procs,@object # @pdf14_accum_RGB_procs
	.align	8
pdf14_accum_RGB_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	0
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
	.size	pdf14_accum_RGB_procs, 584

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"pdf14-accum-RGB"
	.size	.L.str.10, 16

	.type	pdf14_accum_RGB,@object # @pdf14_accum_RGB
	.section	.rodata,"a",@progbits
	.globl	pdf14_accum_RGB
	.align	8
pdf14_accum_RGB:
	.long	18480                   # 0x4830
	.zero	4
	.quad	pdf14_accum_RGB_procs
	.quad	.L.str.10
	.quad	0
	.quad	st_pdf14_accum
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
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
	.quad	no_print_page
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
	.quad	0
	.size	pdf14_accum_RGB, 18480

	.type	pdf14_accum_CMYK_procs,@object # @pdf14_accum_CMYK_procs
	.align	8
pdf14_accum_CMYK_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_close
	.quad	cmyk_8bit_map_cmyk_color
	.quad	cmyk_8bit_map_color_cmyk
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
	.size	pdf14_accum_CMYK_procs, 584

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"pdf14-accum-CMYK"
	.size	.L.str.11, 17

	.type	pdf14_accum_CMYK,@object # @pdf14_accum_CMYK
	.section	.rodata,"a",@progbits
	.globl	pdf14_accum_CMYK
	.align	8
pdf14_accum_CMYK:
	.long	18480                   # 0x4830
	.zero	4
	.quad	pdf14_accum_CMYK_procs
	.quad	.L.str.11
	.quad	0
	.quad	st_pdf14_accum
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
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
	.quad	.L.str.4
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
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
	.quad	no_print_page
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
	.quad	0
	.size	pdf14_accum_CMYK, 18480

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"pdf14_get_buffer_information"
	.size	.L.str.12, 29

	.type	gs_composite_pdf14trans_type,@object # @gs_composite_pdf14trans_type
	.section	.rodata,"a",@progbits
	.globl	gs_composite_pdf14trans_type
	.align	8
gs_composite_pdf14trans_type:
	.byte	3                       # 0x3
	.zero	7
	.quad	c_pdf14trans_create_default_compositor
	.quad	c_pdf14trans_equal
	.quad	c_pdf14trans_write
	.quad	c_pdf14trans_read
	.quad	c_pdf14trans_adjust_ctm
	.quad	c_pdf14trans_is_closing
	.quad	c_pdf14trans_is_friendly
	.quad	c_pdf14trans_clist_write_update
	.quad	c_pdf14trans_clist_read_update
	.quad	c_pdf14trans_get_cropping
	.size	gs_composite_pdf14trans_type, 88

	.type	gs_composite_pdf14trans_no_clist_writer_type,@object # @gs_composite_pdf14trans_no_clist_writer_type
	.globl	gs_composite_pdf14trans_no_clist_writer_type
	.align	8
gs_composite_pdf14trans_no_clist_writer_type:
	.byte	3                       # 0x3
	.zero	7
	.quad	c_pdf14trans_create_default_compositor
	.quad	c_pdf14trans_equal
	.quad	c_pdf14trans_write
	.quad	c_pdf14trans_read
	.quad	c_pdf14trans_adjust_ctm
	.quad	c_pdf14trans_is_closing
	.quad	c_pdf14trans_is_friendly
	.quad	gx_default_composite_clist_write_update
	.quad	c_pdf14trans_clist_read_update
	.quad	c_pdf14trans_get_cropping
	.size	gs_composite_pdf14trans_no_clist_writer_type, 88

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"send_pdf14trans"
	.size	.L.str.13, 16

	.type	pdf14_clist_Gray_procs,@object # @pdf14_clist_Gray_procs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_clist_Gray_procs:
	.quad	0
	.quad	gx_forward_get_initial_matrix
	.quad	gx_forward_sync_output
	.quad	gx_forward_output_page
	.quad	gx_forward_close_device
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	gx_forward_fill_rectangle
	.quad	gx_forward_tile_rectangle
	.quad	gx_forward_copy_mono
	.quad	gx_forward_copy_color
	.quad	0
	.quad	gx_forward_get_bits
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	pdf14_encode_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	0
	.quad	gx_forward_get_page_device
	.quad	0
	.quad	gx_forward_copy_alpha
	.quad	gx_forward_get_band
	.quad	gx_forward_copy_rop
	.quad	pdf14_clist_fill_path
	.quad	pdf14_clist_stroke_path
	.quad	gx_forward_fill_mask
	.quad	gx_forward_fill_trapezoid
	.quad	gx_forward_fill_parallelogram
	.quad	gx_forward_fill_triangle
	.quad	gx_forward_draw_thin_line
	.quad	pdf14_clist_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_forward_strip_tile_rectangle
	.quad	gx_forward_strip_copy_rop
	.quad	gx_forward_get_clipping_box
	.quad	pdf14_clist_begin_typed_image
	.quad	gx_forward_get_bits_rectangle
	.quad	0
	.quad	pdf14_clist_create_compositor
	.quad	gx_forward_get_hardware_params
	.quad	pdf14_clist_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	0
	.quad	gx_default_DevGray_get_color_mapping_procs
	.quad	gx_default_DevGray_get_color_comp_index
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	0
	.quad	gx_forward_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	gx_forward_ret_devn_params
	.quad	gx_forward_fillpage
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_copy_alpha_hl_color
	.quad	0
	.size	pdf14_clist_Gray_procs, 584

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"pdf14clistgray"
	.size	.L.str.14, 15

	.type	pdf14_clist_Gray_device,@object # @pdf14_clist_Gray_device
	.section	.rodata,"a",@progbits
	.globl	pdf14_clist_Gray_device
	.align	8
pdf14_clist_Gray_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_clist_Gray_procs
	.quad	.L.str.14
	.quad	0
	.quad	st_pdf14_device
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
	.quad	0
	.zero	2400
	.quad	gray_pdf14_procs
	.quad	gray_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pdf14_clist_Gray_device, 5024

	.type	pdf14_clist_RGB_procs,@object # @pdf14_clist_RGB_procs
	.align	8
pdf14_clist_RGB_procs:
	.quad	0
	.quad	gx_forward_get_initial_matrix
	.quad	gx_forward_sync_output
	.quad	gx_forward_output_page
	.quad	gx_forward_close_device
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	gx_forward_fill_rectangle
	.quad	gx_forward_tile_rectangle
	.quad	gx_forward_copy_mono
	.quad	gx_forward_copy_color
	.quad	0
	.quad	gx_forward_get_bits
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	pdf14_encode_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	0
	.quad	gx_forward_get_page_device
	.quad	0
	.quad	gx_forward_copy_alpha
	.quad	gx_forward_get_band
	.quad	gx_forward_copy_rop
	.quad	pdf14_clist_fill_path
	.quad	pdf14_clist_stroke_path
	.quad	gx_forward_fill_mask
	.quad	gx_forward_fill_trapezoid
	.quad	gx_forward_fill_parallelogram
	.quad	gx_forward_fill_triangle
	.quad	gx_forward_draw_thin_line
	.quad	pdf14_clist_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_forward_strip_tile_rectangle
	.quad	gx_forward_strip_copy_rop
	.quad	gx_forward_get_clipping_box
	.quad	pdf14_clist_begin_typed_image
	.quad	gx_forward_get_bits_rectangle
	.quad	0
	.quad	pdf14_clist_create_compositor
	.quad	gx_forward_get_hardware_params
	.quad	pdf14_clist_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	0
	.quad	gx_default_DevRGB_get_color_mapping_procs
	.quad	gx_default_DevRGB_get_color_comp_index
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	0
	.quad	gx_forward_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	gx_forward_ret_devn_params
	.quad	gx_forward_fillpage
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_copy_alpha_hl_color
	.quad	0
	.size	pdf14_clist_RGB_procs, 584

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"pdf14clistRGB"
	.size	.L.str.15, 14

	.type	pdf14_clist_RGB_device,@object # @pdf14_clist_RGB_device
	.section	.rodata,"a",@progbits
	.globl	pdf14_clist_RGB_device
	.align	8
pdf14_clist_RGB_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_clist_RGB_procs
	.quad	.L.str.15
	.quad	0
	.quad	st_pdf14_device
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
	.quad	0
	.zero	2400
	.quad	rgb_pdf14_procs
	.quad	rgb_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pdf14_clist_RGB_device, 5024

	.type	pdf14_clist_CMYK_procs,@object # @pdf14_clist_CMYK_procs
	.align	8
pdf14_clist_CMYK_procs:
	.quad	0
	.quad	gx_forward_get_initial_matrix
	.quad	gx_forward_sync_output
	.quad	gx_forward_output_page
	.quad	gx_forward_close_device
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	gx_forward_fill_rectangle
	.quad	gx_forward_tile_rectangle
	.quad	gx_forward_copy_mono
	.quad	gx_forward_copy_color
	.quad	0
	.quad	gx_forward_get_bits
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	pdf14_encode_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	0
	.quad	gx_forward_get_page_device
	.quad	0
	.quad	gx_forward_copy_alpha
	.quad	gx_forward_get_band
	.quad	gx_forward_copy_rop
	.quad	pdf14_clist_fill_path
	.quad	pdf14_clist_stroke_path
	.quad	gx_forward_fill_mask
	.quad	gx_forward_fill_trapezoid
	.quad	gx_forward_fill_parallelogram
	.quad	gx_forward_fill_triangle
	.quad	gx_forward_draw_thin_line
	.quad	pdf14_clist_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_forward_strip_tile_rectangle
	.quad	gx_forward_strip_copy_rop
	.quad	gx_forward_get_clipping_box
	.quad	pdf14_clist_begin_typed_image
	.quad	gx_forward_get_bits_rectangle
	.quad	0
	.quad	pdf14_clist_create_compositor
	.quad	gx_forward_get_hardware_params
	.quad	pdf14_clist_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	0
	.quad	gx_default_DevCMYK_get_color_mapping_procs
	.quad	gx_default_DevCMYK_get_color_comp_index
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	0
	.quad	gx_forward_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	gx_forward_ret_devn_params
	.quad	gx_forward_fillpage
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_copy_alpha_hl_color
	.quad	0
	.size	pdf14_clist_CMYK_procs, 584

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"pdf14clistcmyk"
	.size	.L.str.16, 15

	.type	pdf14_clist_CMYK_device,@object # @pdf14_clist_CMYK_device
	.section	.rodata,"a",@progbits
	.globl	pdf14_clist_CMYK_device
	.align	8
pdf14_clist_CMYK_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_clist_CMYK_procs
	.quad	.L.str.16
	.quad	0
	.quad	st_pdf14_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
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
	.quad	.L.str.4
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
	.quad	0
	.zero	2400
	.quad	cmyk_pdf14_procs
	.quad	cmyk_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pdf14_clist_CMYK_device, 5024

	.type	pdf14_clist_CMYKspot_procs,@object # @pdf14_clist_CMYKspot_procs
	.align	8
pdf14_clist_CMYKspot_procs:
	.quad	0
	.quad	gx_forward_get_initial_matrix
	.quad	gx_forward_sync_output
	.quad	gx_forward_output_page
	.quad	gx_forward_close_device
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	gx_forward_fill_rectangle
	.quad	gx_forward_tile_rectangle
	.quad	gx_forward_copy_mono
	.quad	gx_forward_copy_color
	.quad	0
	.quad	gx_forward_get_bits
	.quad	gx_forward_get_params
	.quad	pdf14_put_params
	.quad	pdf14_encode_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	0
	.quad	gx_forward_get_page_device
	.quad	0
	.quad	gx_forward_copy_alpha
	.quad	gx_forward_get_band
	.quad	gx_forward_copy_rop
	.quad	pdf14_clist_fill_path
	.quad	pdf14_clist_stroke_path
	.quad	gx_forward_fill_mask
	.quad	gx_forward_fill_trapezoid
	.quad	gx_forward_fill_parallelogram
	.quad	gx_forward_fill_triangle
	.quad	gx_forward_draw_thin_line
	.quad	pdf14_clist_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_forward_strip_tile_rectangle
	.quad	gx_forward_strip_copy_rop
	.quad	gx_forward_get_clipping_box
	.quad	pdf14_clist_begin_typed_image
	.quad	gx_forward_get_bits_rectangle
	.quad	0
	.quad	pdf14_clist_create_compositor
	.quad	gx_forward_get_hardware_params
	.quad	pdf14_clist_text_begin
	.quad	0
	.quad	pdf14_begin_transparency_group
	.quad	pdf14_end_transparency_group
	.quad	pdf14_begin_transparency_mask
	.quad	pdf14_end_transparency_mask
	.quad	0
	.quad	pdf14_cmykspot_get_color_mapping_procs
	.quad	pdf14_cmykspot_get_color_comp_index
	.quad	pdf14_encode_color
	.quad	pdf14_decode_color
	.quad	0
	.quad	gx_forward_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	gx_forward_ret_devn_params
	.quad	gx_forward_fillpage
	.quad	pdf14_push_transparency_state
	.quad	pdf14_pop_transparency_state
	.quad	0
	.quad	pdf14_dev_spec_op
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_copy_alpha_hl_color
	.quad	0
	.size	pdf14_clist_CMYKspot_procs, 584

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"pdf14clistcmykspot"
	.size	.L.str.17, 19

	.type	pdf14_clist_CMYKspot_device,@object # @pdf14_clist_CMYKspot_device
	.section	.rodata,"a",@progbits
	.globl	pdf14_clist_CMYKspot_device
	.align	8
pdf14_clist_CMYKspot_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_clist_CMYKspot_procs
	.quad	.L.str.17
	.quad	0
	.quad	st_pdf14_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.short	64                      # 0x40
	.byte	63                      # 0x3f
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
	.quad	.L.str.4
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
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	DeviceCMYKComponents
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.zero	1032
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	1032
	.quad	cmykspot_pdf14_procs
	.quad	cmyk_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pdf14_clist_CMYKspot_device, 5024

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"pdf14clistcustom"
	.size	.L.str.18, 17

	.type	pdf14_clist_custom_device,@object # @pdf14_clist_custom_device
	.section	.rodata,"a",@progbits
	.globl	pdf14_clist_custom_device
	.align	8
pdf14_clist_custom_device:
	.long	5024                    # 0x13a0
	.zero	4
	.quad	pdf14_clist_CMYKspot_procs
	.quad	.L.str.18
	.quad	0
	.quad	st_pdf14_device
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	0                       # 0x0
	.short	64                      # 0x40
	.byte	63                      # 0x3f
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
	.quad	.L.str.4
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
	.quad	0
	.long	8                       # 0x8
	.zero	4
	.quad	DeviceCMYKComponents
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.zero	1032
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.zero	1032
	.quad	custom_pdf14_procs
	.quad	custom_blending_procs
	.quad	0
	.quad	0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	720
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pdf14_clist_custom_device, 5024

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"%s_%d"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"PDF14NumSpotColors"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"PDF14SpotName_%d"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"put_param_pdf14_spot_names"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"PDF14CompressedColorList"
	.size	.L.str.23, 25

	.type	st_pdf14_ctx,@object    # @st_pdf14_ctx
	.section	.rodata,"a",@progbits
	.align	8
st_pdf14_ctx:
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.25
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf14_ctx_reloc_ptrs
	.size	st_pdf14_ctx, 64

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"pdf14_ctx_new"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"pdf14_ctx"
	.size	.L.str.25, 10

	.type	pdf14_ctx_reloc_ptrs,@object # @pdf14_ctx_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_ctx_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf14_ctx_enum_ptrs
	.size	pdf14_ctx_reloc_ptrs, 24

	.type	pdf14_ctx_enum_ptrs,@object # @pdf14_ctx_enum_ptrs
	.align	2
pdf14_ctx_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	pdf14_ctx_enum_ptrs, 8

	.type	st_pdf14_buf,@object    # @st_pdf14_buf
	.align	8
st_pdf14_buf:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.28
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf14_buf_reloc_ptrs
	.size	st_pdf14_buf, 64

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"pdf14_buf_new"
	.size	.L.str.26, 14

	.type	st_pdf14_clr,@object    # @st_pdf14_clr
	.section	.rodata,"a",@progbits
	.align	8
st_pdf14_clr:
	.long	224                     # 0xe0
	.zero	4
	.quad	.L.str.29
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf14_clr_reloc_ptrs
	.size	st_pdf14_clr, 64

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"pdf_buf_new"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"pdf14_buf"
	.size	.L.str.28, 10

	.type	pdf14_buf_reloc_ptrs,@object # @pdf14_buf_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_buf_reloc_ptrs:
	.short	6                       # 0x6
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf14_buf_enum_ptrs
	.size	pdf14_buf_reloc_ptrs, 24

	.type	pdf14_buf_enum_ptrs,@object # @pdf14_buf_enum_ptrs
	.align	16
pdf14_buf_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	80                      # 0x50
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	88                      # 0x58
	.short	0                       # 0x0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.short	136                     # 0x88
	.size	pdf14_buf_enum_ptrs, 24

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"pdf14_clr"
	.size	.L.str.29, 10

	.type	pdf14_clr_reloc_ptrs,@object # @pdf14_clr_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_clr_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf14_clr_enum_ptrs
	.size	pdf14_clr_reloc_ptrs, 24

	.type	pdf14_clr_enum_ptrs,@object # @pdf14_clr_enum_ptrs
	.align	2
pdf14_clr_enum_ptrs:
	.short	0                       # 0x0
	.short	216                     # 0xd8
	.size	pdf14_clr_enum_ptrs, 4

	.type	st_pdf14_mask,@object   # @st_pdf14_mask
	.align	8
st_pdf14_mask:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.31
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf14_mask_reloc_ptrs
	.size	st_pdf14_mask, 64

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"pdf14_mask_element_new"
	.size	.L.str.30, 23

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"pdf_mask"
	.size	.L.str.31, 9

	.type	pdf14_mask_reloc_ptrs,@object # @pdf14_mask_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_mask_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf14_mask_enum_ptrs
	.size	pdf14_mask_reloc_ptrs, 24

	.type	pdf14_mask_enum_ptrs,@object # @pdf14_mask_enum_ptrs
	.align	2
pdf14_mask_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	pdf14_mask_enum_ptrs, 8

	.type	st_pdf14_rcmask,@object # @st_pdf14_rcmask
	.align	8
st_pdf14_rcmask:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.33
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf14_rcmask_reloc_ptrs
	.size	st_pdf14_rcmask, 64

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"pdf14_maskbuf_new"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"pdf_rcmask"
	.size	.L.str.33, 11

	.type	pdf14_rcmask_reloc_ptrs,@object # @pdf14_rcmask_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_rcmask_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf14_rcmask_enum_ptrs
	.size	pdf14_rcmask_reloc_ptrs, 24

	.type	pdf14_rcmask_enum_ptrs,@object # @pdf14_rcmask_enum_ptrs
	.align	2
pdf14_rcmask_enum_ptrs:
	.zero	4
	.size	pdf14_rcmask_enum_ptrs, 4

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"rc_pdf14_maskbuf_free"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"pdf14_buf_free"
	.size	.L.str.35, 15

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"pdf14_ctx_free"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"pdf14_tile_pattern_fill"
	.size	.L.str.37, 24

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"pdf14_push_transparency_group"
	.size	.L.str.38, 30

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"./base/gdevp14.c"
	.size	.L.str.39, 17

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Knockout backdrop allocation failed"
	.size	.L.str.40, 36

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"pdf14_pop_transparency_group"
	.size	.L.str.41, 29

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"pdf14_fill_mask"
	.size	.L.str.42, 16

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"pdf14_pattern_trans_render"
	.size	.L.str.43, 27

	.type	st_pdf14_smaskcolor,@object # @st_pdf14_smaskcolor
	.section	.rodata,"a",@progbits
	.align	8
st_pdf14_smaskcolor:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.45
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf14_smaskcolor_reloc_ptrs
	.size	st_pdf14_smaskcolor, 64

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"pdf14_increment_smask_color"
	.size	.L.str.44, 28

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"pdf14_smaskcolor"
	.size	.L.str.45, 17

	.type	pdf14_smaskcolor_reloc_ptrs,@object # @pdf14_smaskcolor_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_smaskcolor_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf14_smaskcolor_enum_ptrs
	.size	pdf14_smaskcolor_reloc_ptrs, 24

	.type	pdf14_smaskcolor_enum_ptrs,@object # @pdf14_smaskcolor_enum_ptrs
	.align	2
pdf14_smaskcolor_enum_ptrs:
	.zero	4
	.size	pdf14_smaskcolor_enum_ptrs, 4

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"pdf14_decrement_smask_color"
	.size	.L.str.46, 28

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"pdf14_free_smask_color"
	.size	.L.str.47, 23

	.type	.L__func__.pdf14_begin_transparency_group,@object # @__func__.pdf14_begin_transparency_group
.L__func__.pdf14_begin_transparency_group:
	.asciz	"pdf14_begin_transparency_group"
	.size	.L__func__.pdf14_begin_transparency_group, 31

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"ICC data not found in clist"
	.size	.L.str.48, 28

	.type	.L__func__.pdf14_update_device_color_procs,@object # @__func__.pdf14_update_device_color_procs
.L__func__.pdf14_update_device_color_procs:
	.asciz	"pdf14_update_device_color_procs"
	.size	.L__func__.pdf14_update_device_color_procs, 32

	.type	pdf14_cmap_many_group,@object # @pdf14_cmap_many_group
	.section	.rodata,"a",@progbits
	.align	8
pdf14_cmap_many_group:
	.quad	pdf14_cmap_gray_direct_group
	.quad	pdf14_cmap_rgb_direct_group
	.quad	pdf14_cmap_cmyk_direct_group
	.quad	pdf14_cmap_rgb_alpha_direct
	.quad	pdf14_cmap_separation_direct
	.quad	pdf14_cmap_devicen_direct
	.quad	pdf14_cmap_is_halftoned
	.size	pdf14_cmap_many_group, 56

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"pdf14_end_transparency_group"
	.size	.L.str.49, 29

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"pdf14_begin_transparency_mask"
	.size	.L.str.50, 30

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"pdf14_end_transparency_mask"
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"pdf14_pop_transparency_mask(tos->mask_stack->rc_mask)"
	.size	.L.str.52, 54

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"pdf14_pop_transparency_mask"
	.size	.L.str.53, 28

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"pdf14_free_mask_stack"
	.size	.L.str.54, 22

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"pdf14_discard_trans_layer"
	.size	.L.str.55, 26

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"pdf14_pop_parent_color"
	.size	.L.str.56, 23

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"pdf14_clr_free"
	.size	.L.str.57, 15

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"pdf14_pop_transparency_state"
	.size	.L.str.58, 29

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"pdf14_device"
	.size	.L.str.59, 13

	.type	.L__func__.pdf14_put_image,@object # @__func__.pdf14_put_image
.L__func__.pdf14_put_image:
	.asciz	"pdf14_put_image"
	.size	.L__func__.pdf14_put_image, 16

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"PDF14 device push/pop out of sync"
	.size	.L.str.60, 34

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"%s"
	.size	.L.str.61, 3

	.type	pdf14_DeviceCMYKspot_procs,@object # @pdf14_DeviceCMYKspot_procs
	.section	.rodata,"a",@progbits
	.align	8
pdf14_DeviceCMYKspot_procs:
	.quad	pdf14_gray_cs_to_cmyk_cm
	.quad	pdf14_rgb_cs_to_cmyk_cm
	.quad	pdf14_cmyk_cs_to_cmyk_cm
	.size	pdf14_DeviceCMYKspot_procs, 24

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"pdf14_cmykspot_get_color_comp_index"
	.size	.L.str.62, 36

	.type	pdf14_accum_enum_ptrs,@object # @pdf14_accum_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
pdf14_accum_enum_ptrs:
	.short	0                       # 0x0
	.short	18472                   # 0x4828
	.size	pdf14_accum_enum_ptrs, 4

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"pdf14-accum"
	.size	.L.str.63, 12

	.type	pdf14_cmap_many,@object # @pdf14_cmap_many
	.section	.rodata,"a",@progbits
	.align	8
pdf14_cmap_many:
	.quad	pdf14_cmap_gray_direct
	.quad	pdf14_cmap_rgb_direct
	.quad	pdf14_cmap_cmyk_direct
	.quad	pdf14_cmap_rgb_alpha_direct
	.quad	pdf14_cmap_separation_direct
	.quad	pdf14_cmap_devicen_direct
	.quad	pdf14_cmap_is_halftoned
	.size	pdf14_cmap_many, 56

	.type	st_pdf14trans,@object   # @st_pdf14trans
	.align	8
st_pdf14trans:
	.long	744                     # 0x2e8
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	st_pdf14trans_reloc_ptrs
	.size	st_pdf14trans, 64

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"gs_create_pdf14trans"
	.size	.L.str.64, 21

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gs_pdf14trans_t"
	.size	.L.str.65, 16

	.type	st_pdf14trans_reloc_ptrs,@object # @st_pdf14trans_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
st_pdf14trans_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	st_pdf14trans_enum_ptrs
	.size	st_pdf14trans_reloc_ptrs, 24

	.type	st_pdf14trans_enum_ptrs,@object # @st_pdf14trans_enum_ptrs
	.align	2
st_pdf14trans_enum_ptrs:
	.short	0                       # 0x0
	.short	376                     # 0x178
	.short	0                       # 0x0
	.short	728                     # 0x2d8
	.size	st_pdf14trans_enum_ptrs, 8

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"pdf14_clist_update_params"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"pdf14-clist_accum pop dev"
	.size	.L.str.67, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"popdevice pdf14-accum"
	.size	.L.str.68, 22

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"convert_compressed_color_list_elem"
	.size	.L.str.69, 35

	.type	st_keyname_link_list,@object # @st_keyname_link_list
	.section	.rodata,"a",@progbits
	.align	8
st_keyname_link_list:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	keyname_link_list_reloc_ptrs
	.size	st_keyname_link_list, 64

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"keyname_link_list"
	.size	.L.str.70, 18

	.type	keyname_link_list_reloc_ptrs,@object # @keyname_link_list_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
keyname_link_list_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	keyname_link_list_enum_ptrs
	.size	keyname_link_list_reloc_ptrs, 24

	.type	keyname_link_list_enum_ptrs,@object # @keyname_link_list_enum_ptrs
	.align	2
keyname_link_list_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	keyname_link_list_enum_ptrs, 8

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"PDF14SpotName_"
	.size	.L.str.71, 15

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"get_param_spot_color_names"
	.size	.L.str.72, 27

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"free_temp_keyname_list"
	.size	.L.str.73, 23

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"pdf14_clr_new"
	.size	.L.str.74, 14

	.type	.L__func__.pdf14_update_device_color_procs_push_c,@object # @__func__.pdf14_update_device_color_procs_push_c
.L__func__.pdf14_update_device_color_procs_push_c:
	.asciz	"pdf14_update_device_color_procs_push_c"
	.size	.L__func__.pdf14_update_device_color_procs_push_c, 39

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Missing ICC data"
	.size	.L.str.75, 17

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"ICC Number of colorants illegal"
	.size	.L.str.76, 32

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"pdf14_create_clist_device"
	.size	.L.str.77, 26

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"c_pdf14trans_clist_read_update"
	.size	.L.str.78, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
