	.text
	.file	"gximono.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1065353216              # float 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.long	8                       # 0x8
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_2:
	.quad	4566650022153682944     # double 0.001953125
.LCPI0_3:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_image_class_3_mono
	.align	16, 0x90
	.type	gs_image_class_3_mono,@function
gs_image_class_3_mono:                  # @gs_image_class_3_mono
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
	subq	$32, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 64
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	movzbl	579(%rbx), %ecx
	cmpl	$1, %ecx
	jne	.LBB0_46
# BB#1:                                 # %if.then
	movq	16(%rbx), %rdi
	movl	100(%rdi), %eax
	cmpl	$4, %eax
	jne	.LBB0_2
# BB#4:                                 # %land.lhs.true.15
	movl	848(%rdi), %eax
	movzwl	108(%rdi), %ecx
	cmpl	$4, %ecx
	sete	%cl
	testl	%eax, %eax
	setne	%al
	andb	%cl, %al
	jmp	.LBB0_5
.LBB0_2:                                # %if.then
	cmpl	$1, %eax
	jne	.LBB0_34
# BB#3:                                 # %land.lhs.true
	movzwl	108(%rdi), %ecx
	movb	$1, %al
	cmpl	$1, %ecx
	jne	.LBB0_34
.LBB0_5:                                # %land.lhs.true.23
	testb	%al, %al
	je	.LBB0_34
# BB#6:                                 # %land.lhs.true.23
	movq	1224(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_34
# BB#7:                                 # %land.lhs.true.29
	movzbl	576(%rbx), %eax
	cmpl	$8, %eax
	jne	.LBB0_34
# BB#8:                                 # %land.lhs.true.33
	cmpl	$1, 1264(%rbx)
	ja	.LBB0_34
# BB#9:                                 # %land.lhs.true.39
	cmpl	$0, 24500(%rbx)
	jne	.LBB0_34
# BB#10:                                # %if.then.42
	movl	$0, 24792(%rbx)
	movl	1852(%rbx), %eax
	testl	%eax, %eax
	je	.LBB0_15
# BB#11:                                # %if.then.42
	cmpl	$2, %eax
	jne	.LBB0_14
# BB#12:                                # %land.lhs.true.51
	movss	1848(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI0_0(%rip), %xmm0
	jne	.LBB0_14
	jp	.LBB0_14
# BB#13:                                # %land.lhs.true.57
	movss	1784(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_14
	jnp	.LBB0_15
.LBB0_14:                               # %if.then.64
	movl	$1, 24792(%rbx)
.LBB0_15:                               # %if.end.67
	leaq	(%rsp), %rsi
	callq	*1680(%rdi)
	movq	(%rsp), %rdi
	callq	gsicc_get_device_profile_comps
	movl	%eax, %ebp
	movq	1216(%rbx), %rax
	movl	328(%rax), %ecx
	movl	%ecx, 12(%rsp)
	movl	324(%rax), %eax
	movl	%eax, 8(%rsp)
	movapd	.LCPI0_1(%rip), %xmm0   # xmm0 = [8,2,0,0]
	movupd	%xmm0, 16(%rsp)
	movq	1224(%rbx), %rdi
	callq	gs_color_space_get_index
	movq	1224(%rbx), %r14
	cmpl	$10, %eax
	jne	.LBB0_17
# BB#16:                                # %if.then.76
	movq	40(%r14), %r14
.LBB0_17:                               # %if.end.79
	movq	%r14, %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	je	.LBB0_19
# BB#18:                                # %land.lhs.true.82
	movq	48(%r14), %rax
	testq	%rax, %rax
	cmovneq	%rax, %r14
.LBB0_19:                               # %if.end.87
	movq	64(%r14), %rax
	testq	%rax, %rax
	je	.LBB0_34
# BB#20:                                # %if.end.91
	movl	4(%rax), %eax
	movl	%eax, 24796(%rbx)
	movq	16(%rbx), %rax
	cmpl	$1, 100(%rax)
	jg	.LBB0_22
# BB#21:                                # %lor.lhs.false.99
	movzbl	110(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB0_22
# BB#23:                                # %cond.false
	addq	$112, %rax
	jmp	.LBB0_24
.LBB0_22:                               # %cond.true
	addq	$116, %rax
.LBB0_24:                               # %cond.end
	cmpl	$31, (%rax)
	sbbl	%eax, %eax
	andl	$1, %eax
	movl	%eax, 24800(%rbx)
	movq	1216(%rbx), %rdi
	movl	%ebp, %esi
	callq	gx_has_transfer
	movl	%eax, 24804(%rbx)
	cmpl	$0, 24796(%rbx)
	je	.LBB0_26
# BB#25:                                # %if.then.118
	movl	$0, 24792(%rbx)
.LBB0_26:                               # %if.end.121
	cmpq	$0, 24448(%rbx)
	jne	.LBB0_28
# BB#27:                                # %if.then.124
	movq	1216(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	24(%rbx), %r9
	leaq	8(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	callq	gsicc_get_link
	movq	%rax, 24448(%rbx)
.LBB0_28:                               # %if.end.129
	movl	$0, 24808(%rbx)
	movq	1224(%rbx), %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	je	.LBB0_32
# BB#29:                                # %land.lhs.true.133
	movq	1224(%rbx), %rdi
	cmpq	$0, 48(%rdi)
	je	.LBB0_32
# BB#30:                                # %if.then.138
	callq	check_cie_range
	testl	%eax, %eax
	jne	.LBB0_32
# BB#31:                                # %if.then.142
	movq	1224(%rbx), %rdi
	callq	get_cie_range
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 24808(%rbx)
.LBB0_32:                               # %if.end.149
	movzbl	576(%rbx), %esi
	movzbl	579(%rbx), %edx
	movq	%rbx, %rdi
	callq	image_init_color_cache
	testl	%eax, %eax
	js	.LBB0_34
# BB#33:                                # %if.then.157
	movq	%rbx, %rdi
	callq	gxht_thresh_image_init
	movl	%eax, %ecx
	movl	$image_render_mono_ht, %eax
	testl	%ecx, %ecx
	jns	.LBB0_46
.LBB0_34:                               # %not_fast_halftoning
	cmpb	$0, 1118(%rbx)
	je	.LBB0_37
# BB#35:                                # %land.lhs.true.167
	movq	24432(%rbx), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	je	.LBB0_37
# BB#36:                                # %lor.end.173.thread
	movb	$1, 1270(%rbx)
	jmp	.LBB0_40
.LBB0_37:                               # %lor.end.173
	cmpb	$0, 1268(%rbx)
	setne	1270(%rbx)
	jne	.LBB0_40
# BB#38:                                # %lor.lhs.false.179
	cmpl	$0, 1264(%rbx)
	jne	.LBB0_40
# BB#39:                                # %if.then.183
	andb	$-4, 1269(%rbx)
.LBB0_40:                               # %do.end
	movss	1120(%rbx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI0_2(%rip), %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1312(%rbx)
	cmpb	$0, 1116(%rbx)
	je	.LBB0_45
# BB#41:                                # %if.then.190
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_image_scale_mask_colors
	cmpl	$0, 584(%rbx)
	jne	.LBB0_43
# BB#42:                                # %if.then.194
	movq	24432(%rbx), %rax
	movq	$gx_dc_type_data_null, (%rax)
.LBB0_43:                               # %if.end.197
	cmpl	$255, 588(%rbx)
	jb	.LBB0_45
# BB#44:                                # %if.then.203
	movq	24440(%rbx), %rax
	movq	$gx_dc_type_data_null, (%rax)
.LBB0_45:                               # %if.end.206
	movzbl	576(%rbx), %esi
	movzbl	579(%rbx), %edx
	movq	%rbx, %rdi
	callq	image_init_clues
	movl	$image_render_mono, %eax
.LBB0_46:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_image_class_3_mono, .Lfunc_end0-gs_image_class_3_mono
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1132462080              # float 256
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_2:
	.quad	896                     # 0x380
	.quad	960                     # 0x3c0
.LCPI1_3:
	.quad	768                     # 0x300
	.quad	832                     # 0x340
.LCPI1_4:
	.quad	640                     # 0x280
	.quad	704                     # 0x2c0
.LCPI1_5:
	.quad	512                     # 0x200
	.quad	576                     # 0x240
.LCPI1_6:
	.quad	384                     # 0x180
	.quad	448                     # 0x1c0
.LCPI1_7:
	.quad	256                     # 0x100
	.quad	320                     # 0x140
.LCPI1_8:
	.quad	128                     # 0x80
	.quad	192                     # 0xc0
	.text
	.align	16, 0x90
	.type	image_render_mono_ht,@function
image_render_mono_ht:                   # @image_render_mono_ht
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$968, %rsp              # imm = 0x3C8
.Ltmp13:
	.cfi_def_cfa_offset 1024
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movl	1264(%rdi), %r15d
	movq	16(%rdi), %rax
	movl	100(%rax), %r12d
	xorl	%eax, %eax
	testl	%r8d, %r8d
	jne	.LBB1_4
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	testl	%r15d, %r15d
	je	.LBB1_172
# BB#2:                                 # %if.then
	movl	24504(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB1_172
# BB#3:                                 # %if.else
	movl	%ecx, 24476(%rdi)
	movl	$1, 24780(%rdi)
	movl	$1, %eax
.LBB1_4:                                # %if.end.10
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	%edx, 100(%rsp)         # 4-byte Spill
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%r9, 128(%rsp)          # 8-byte Spill
	movabsq	$4294967296, %r13       # imm = 0x100000000
	movabsq	$8589934588, %r14       # imm = 0x1FFFFFFFC
	movl	1152(%rdi), %esi
	testl	%r15d, %r15d
	je	.LBB1_5
# BB#12:                                # %sw.default
	movl	1524(%rdi), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	1256(%rdi), %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	1188(%rdi), %eax
	movl	1192(%rdi), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	subl	$-128, %edx
	movl	%edx, 164(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	subl	$-128, %ecx
	sarl	$8, %ecx
	movl	%ecx, 148(%rsp)         # 4-byte Spill
	cvtsi2ssl	%esi, %xmm0
	movl	%esi, 112(%rsp)         # 4-byte Spill
	cvtsi2ssl	%ecx, %xmm1
	divss	%xmm1, %xmm0
	mulss	.LCPI1_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_1(%rip), %xmm0
	movq	%rdi, %rbx
	callq	floor
	movq	%rbx, %r10
	xorl	%r11d, %r11d
	subl	24488(%r10), %r11d
	testl	%r12d, %r12d
	jle	.LBB1_18
# BB#13:                                # %for.body.112.lr.ph
	movq	1248(%r10), %rax
	xorl	%ebp, %ebp
	testb	$1, %r12b
	je	.LBB1_15
# BB#14:                                # %for.body.112.prol
	movl	%eax, %ecx
	negl	%ecx
	andl	$15, %ecx
	movl	%ecx, 192(%rsp)
	movl	$1, %ebp
.LBB1_15:                               # %for.body.112.lr.ph.split
	cmpl	$1, %r12d
	je	.LBB1_18
# BB#16:                                # %for.body.112.lr.ph.split.split
	movl	%r12d, %ecx
	subl	%ebp, %ecx
	movq	%rbp, %rsi
	shlq	$32, %rsi
	movq	152(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r9d
	imull	%ebp, %r9d
	leal	(%rdx,%rdx), %r8d
	leal	1(%rbp), %ebp
	imull	%edx, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_17:                               # %for.body.112
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r9,%rbx), %edi
	addl	%eax, %edi
	negl	%edi
	andl	$15, %edi
	movq	%rsi, %rdx
	sarq	$30, %rdx
	movl	%edi, 192(%rsp,%rdx)
	leal	(%rbp,%rbx), %edx
	addl	%eax, %edx
	negl	%edx
	andl	$15, %edx
	leaq	(%rsi,%r13), %rdi
	sarq	$30, %rdi
	movl	%edx, 192(%rsp,%rdi)
	addl	%r8d, %ebx
	addl	$-2, %ecx
	leaq	4(%r14,%rsi), %rsi
	jne	.LBB1_17
.LBB1_18:                               # %for.end.124
	sarl	$8, 164(%rsp)           # 4-byte Folded Spill
	cvttsd2si	%xmm0, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	andl	$15, %r11d
	cmpl	$0, 24504(%r10)
	je	.LBB1_20
# BB#19:
	movl	%r11d, 144(%rsp)        # 4-byte Spill
	jmp	.LBB1_26
.LBB1_5:                                # %sw.bb
	movl	%esi, 112(%rsp)         # 4-byte Spill
	movl	1452(%rdi), %edx
	movl	1184(%rdi), %eax
	movl	1256(%rdi), %ecx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	%eax, %r8d
	sarl	$31, %r8d
	subl	$-128, %ecx
	sarl	$8, %ecx
	movl	%ecx, 164(%rsp)         # 4-byte Spill
	andl	%eax, %r8d
	addl	$127, %edx
	subl	1308(%rdi), %edx
	movl	%edx, 140(%rsp)         # 4-byte Spill
	movl	1516(%rdi), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	24476(%rdi), %ecx
	movl	24488(%rdi), %eax
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	addl	%ecx, %eax
	negl	%eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	testl	%r12d, %r12d
	jle	.LBB1_11
# BB#6:                                 # %for.body.lr.ph
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	1248(%rax), %rdx
	xorl	%eax, %eax
	testb	$1, %r12b
	je	.LBB1_8
# BB#7:                                 # %for.body.prol
	leal	(%rdx,%rcx), %eax
	negl	%eax
	andl	$15, %eax
	movl	%eax, 192(%rsp)
	movl	$1, %eax
.LBB1_8:                                # %for.body.lr.ph.split
	cmpl	$1, %r12d
	je	.LBB1_11
# BB#9:                                 # %for.body.lr.ph.split.split
	movl	%r12d, %esi
	subl	%eax, %esi
	movq	%rax, %rbp
	shlq	$32, %rbp
	movq	152(%rsp), %rdi         # 8-byte Reload
	movl	%edi, %r10d
	imull	%eax, %r10d
	leal	(%rdi,%rdi), %r9d
	leal	1(%rax), %r11d
	imull	%edi, %r11d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r10,%rax), %ebx
	addl	%edx, %ebx
	addl	%ecx, %ebx
	negl	%ebx
	andl	$15, %ebx
	movq	%rbp, %rdi
	sarq	$30, %rdi
	movl	%ebx, 192(%rsp,%rdi)
	leal	(%r11,%rax), %edi
	addl	%edx, %edi
	addl	%ecx, %edi
	negl	%edi
	andl	$15, %edi
	leaq	(%rbp,%r13), %rbx
	sarq	$30, %rbx
	movl	%edi, 192(%rsp,%rbx)
	addl	%r9d, %eax
	addl	$-2, %esi
	leaq	4(%r14,%rbp), %rbp
	jne	.LBB1_10
.LBB1_11:                               # %for.end
	addl	%r8d, 140(%rsp)         # 4-byte Folded Spill
	andl	$15, 144(%rsp)          # 4-byte Folded Spill
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	1196(%rax), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	subl	$-128, %ecx
	sarl	$8, %ecx
	movl	%ecx, 148(%rsp)         # 4-byte Spill
	movl	112(%rsp), %eax         # 4-byte Reload
	cvtsi2ssl	%eax, %xmm0
	movl	164(%rsp), %ebx         # 4-byte Reload
	cvtsi2ssl	%ebx, %xmm1
	divss	%xmm1, %xmm0
	mulss	.LCPI1_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	%ebx, %r11d
	jmp	.LBB1_27
.LBB1_20:                               # %if.then.129
	movl	$1, 24780(%r10)
	movl	1520(%r10), %eax
	cmpl	$0, 24772(%r10)
	js	.LBB1_21
# BB#22:                                # %if.else.147
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%rcx,%rax), %edx
	andl	$-16, %edx
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	$16, %edx
	subl	%ecx, %edx
	negl	%ecx
	cmpl	$15, %edx
	cmovlel	%edx, %ecx
	jmp	.LBB1_23
.LBB1_21:                               # %if.then.135
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	leal	(%rdx,%rax), %ecx
	leal	-1(%rdx,%rax), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$28, %edx
	leal	-1(%rdx,%rcx), %ecx
	andl	$-16, %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$27, %ecx
	andl	$16, %ecx
	leal	1(%rcx,%rdx), %ecx
.LBB1_23:                               # %if.end.159
	movl	%r11d, 144(%rsp)        # 4-byte Spill
	movl	%eax, 24764(%r10)
	testl	$-17, %ecx
	je	.LBB1_24
# BB#25:                                # %if.else.169
	movl	%ecx, 24476(%r10)
	jmp	.LBB1_26
.LBB1_24:                               # %if.then.165
	movl	$0, 24780(%r10)
	movl	$0, 24476(%r10)
.LBB1_26:                               # %sw.epilog
	movq	%r10, 168(%rsp)         # 8-byte Spill
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r11d
                                        # implicit-def: EAX
	movl	%eax, 140(%rsp)         # 4-byte Spill
.LBB1_27:                               # %sw.epilog
	movl	%r11d, %r10d
	testl	%r12d, %r12d
	jle	.LBB1_33
# BB#28:                                # %for.body.176.lr.ph
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	1248(%rax), %r8
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edx
	shll	$6, %edx
	movslq	%eax, %r9
	leaq	448(%rsp), %rdi
	leaq	192(%rsp), %rbp
	xorl	%ebx, %ebx
	movl	%r12d, %ecx
	movq	%r8, %rax
	.align	16, 0x90
.LBB1_29:                               # %for.body.176
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rbp), %rsi
	testl	%r15d, %r15d
	je	.LBB1_30
# BB#31:                                # %if.else.190
                                        #   in Loop: Header=BB1_29 Depth=1
	leaq	(%rsi,%r8), %r13
	movslq	%ebx, %rsi
	addq	%r13, %rsi
	jmp	.LBB1_32
	.align	16, 0x90
.LBB1_30:                               # %if.then.179
                                        #   in Loop: Header=BB1_29 Depth=1
	leaq	(%rsi,%rax), %rsi
.LBB1_32:                               # %for.inc.203
                                        #   in Loop: Header=BB1_29 Depth=1
	movq	%rsi, (%rdi)
	addq	$8, %rdi
	addq	$4, %rbp
	addq	%r9, %rax
	addl	%edx, %ebx
	decl	%ecx
	jne	.LBB1_29
.LBB1_33:                               # %for.end.205
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_171
# BB#34:                                # %do.body.208
	movslq	100(%rsp), %r13         # 4-byte Folded Reload
	xorl	%ebp, %ebp
	testl	%r11d, %r11d
	movl	$0, %edi
	movq	104(%rsp), %rbx         # 8-byte Reload
	je	.LBB1_40
# BB#35:                                # %if.else.213
	movl	112(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	js	.LBB1_36
# BB#39:                                # %if.else.237
	cltd
	idivl	%r11d
	movl	%edx, %ebp
	movl	%eax, %edi
	jmp	.LBB1_40
.LBB1_36:                               # %if.then.216
	movl	%eax, %esi
	negl	%esi
	xorl	%ebp, %ebp
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%r11d
	movl	%eax, %edi
	movl	%esi, %eax
	cltd
	idivl	%r11d
	testl	%edx, %edx
	je	.LBB1_37
# BB#38:                                # %if.then.228
	notl	%edi
	movl	%r11d, %ebp
	subl	%edx, %ebp
	jmp	.LBB1_40
.LBB1_37:
	negl	%edi
.LBB1_40:                               # %if.end.245
	movl	%edi, 120(%rsp)         # 4-byte Spill
	movl	%ebp, 100(%rsp)         # 4-byte Spill
	leaq	(%rbx,%r13), %rsi
	movl	%edi, %ecx
	sarl	%ecx
	leal	-1(%r11), %edx
	movl	%edi, %eax
	andl	$1, %eax
	cmovnel	%r11d, %eax
	addl	%ebp, %eax
	shrl	%eax
	negl	%eax
	leal	-1(%r11,%rax), %r9d
	movl	%r9d, %r8d
	sarl	$31, %r8d
	andl	%r11d, %r8d
	addl	%r9d, %r8d
	shrl	$31, %r9d
	addl	%ecx, %r9d
	movq	448(%rsp), %rdi
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	24456(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB1_41
# BB#98:                                # %if.else.552
	movslq	%r12d, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	8(%rcx), %r13
	cmpl	$1, %r15d
	jne	.LBB1_99
# BB#136:                               # %sw.bb.777
	movq	168(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 24784(%rax)
	movslq	24768(%rax), %r10
	je	.LBB1_149
# BB#137:                               # %if.then.781
	cmpl	$1, %r12d
	movl	120(%rsp), %r15d        # 4-byte Reload
	jne	.LBB1_138
# BB#146:                               # %for.cond.790.preheader
	testl	%r11d, %r11d
	jle	.LBB1_170
# BB#147:                               # %for.body.793.lr.ph
	movl	%r11d, %eax
	shll	$6, %eax
	leal	-64(%r10,%rax), %eax
	cltq
	addq	%rax, %rdi
	movl	%r11d, %ecx
	.align	16, 0x90
.LBB1_148:                              # %for.body.793
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %r9
	movzbl	(%rsi,%r9), %eax
	movb	(%r13,%rax), %al
	movb	%al, (%rdi)
	subl	%ebp, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	%r11d, %eax
	addl	%r8d, %eax
	shrl	$31, %r8d
	addl	%r15d, %r9d
	addl	%r8d, %r9d
	addq	$-64, %rdi
	decl	%ecx
	movl	%eax, %r8d
	jne	.LBB1_148
	jmp	.LBB1_170
.LBB1_41:                               # %if.then.290
	cmpl	$1, %r15d
	jne	.LBB1_42
# BB#67:                                # %sw.bb.400
	movq	168(%rsp), %r10         # 8-byte Reload
	cmpl	$0, 24784(%r10)
	movslq	24768(%r10), %r15
	je	.LBB1_71
# BB#68:                                # %if.then.403
	testl	%r11d, %r11d
	movl	120(%rsp), %eax         # 4-byte Reload
	jle	.LBB1_97
# BB#69:                                # %for.body.411.lr.ph
	movl	%r11d, %ecx
	shll	$6, %ecx
	leal	-64(%r15,%rcx), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rdi
	movl	%r11d, %ecx
	.align	16, 0x90
.LBB1_70:                               # %for.body.411
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %r9
	movb	(%rsi,%r9), %bl
	movb	%bl, (%rdi)
	subl	%ebp, %r8d
	movl	%r8d, %edx
	sarl	$31, %edx
	andl	%r11d, %edx
	addl	%r8d, %edx
	shrl	$31, %r8d
	addl	%eax, %r9d
	addl	%r8d, %r9d
	addq	$-64, %rdi
	decl	%ecx
	movl	%edx, %r8d
	jne	.LBB1_70
	jmp	.LBB1_97
.LBB1_99:                               # %if.else.552
	movq	%rdx, %rbx
	testl	%r15d, %r15d
	movl	120(%rsp), %ecx         # 4-byte Reload
	jne	.LBB1_171
# BB#100:                               # %sw.bb.554
	movq	168(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 1180(%rax)
	jle	.LBB1_114
# BB#101:                               # %if.then.558
	cmpl	$1, %r12d
	jne	.LBB1_102
# BB#111:                               # %for.cond.562.preheader
	testl	%r11d, %r11d
	movl	%ecx, %eax
	jle	.LBB1_171
# BB#112:                               # %for.body.565.preheader
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_113:                              # %for.body.565
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %r9
	movzbl	(%rsi,%r9), %edx
	movb	(%r13,%rdx), %dl
	movb	%dl, (%rdi,%rcx)
	subl	%ebp, %r8d
	movl	%r8d, %edx
	sarl	$31, %edx
	andl	%r10d, %edx
	addl	%r8d, %edx
	shrl	$31, %r8d
	addl	%eax, %r9d
	addl	%r8d, %r9d
	incq	%rcx
	cmpl	%ecx, %r10d
	movl	%edx, %r8d
	jne	.LBB1_113
	jmp	.LBB1_171
.LBB1_42:                               # %if.then.290
	movq	%rdx, %rbx
	testl	%r15d, %r15d
	movl	120(%rsp), %eax         # 4-byte Reload
	jne	.LBB1_171
# BB#43:                                # %sw.bb.291
	movl	%eax, %ecx
	movq	168(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 1180(%rax)
	jle	.LBB1_61
# BB#44:                                # %if.then.294
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	112(%rsp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB1_46
# BB#45:                                # %if.then.297
	movslq	%r11d, %rdx
	callq	memcpy
	jmp	.LBB1_171
.LBB1_149:                              # %if.else.890
	cmpl	$1, %r12d
	jne	.LBB1_150
# BB#167:                               # %for.cond.896.preheader
	testl	%r11d, %r11d
	movl	120(%rsp), %edx         # 4-byte Reload
	jle	.LBB1_170
# BB#168:                               # %for.body.899.lr.ph
	addq	%r10, %rdi
	movl	%r11d, %ecx
	.align	16, 0x90
.LBB1_169:                              # %for.body.899
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %r9
	movzbl	(%rsi,%r9), %eax
	movb	(%r13,%rax), %al
	movb	%al, (%rdi)
	subl	%ebp, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	%r11d, %eax
	addl	%r8d, %eax
	shrl	$31, %r8d
	addl	%edx, %r9d
	addl	%r8d, %r9d
	addq	$64, %rdi
	decl	%ecx
	movl	%eax, %r8d
	jne	.LBB1_169
	jmp	.LBB1_170
.LBB1_138:                              # %for.cond.834.preheader
	testl	%r11d, %r11d
	jle	.LBB1_170
# BB#139:                               # %for.cond.838.preheader.lr.ph
	movl	%r11d, %eax
	shll	$6, %eax
	leal	-64(%r10,%rax), %eax
	movslq	%eax, %rdi
	movl	%r12d, %r10d
	andl	$1, %r10d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_140:                              # %for.cond.838.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_144 Depth 2
	movq	%r11, %r14
	movl	%ebp, %r11d
	testl	%r12d, %r12d
	jle	.LBB1_145
# BB#141:                               # %for.body.841.lr.ph
                                        #   in Loop: Header=BB1_140 Depth=1
	testl	%r10d, %r10d
	movslq	%r9d, %rbx
	movl	$0, %ebp
	je	.LBB1_143
# BB#142:                               # %for.body.841.prol
                                        #   in Loop: Header=BB1_140 Depth=1
	movzbl	(%rsi,%rbx), %eax
	imulq	112(%rsp), %rax         # 8-byte Folded Reload
	movb	(%r13,%rax), %al
	movq	448(%rsp), %rdx
	movb	%al, (%rdx,%rdi)
	movl	$1, %ebp
.LBB1_143:                              # %for.body.841.lr.ph.split
                                        #   in Loop: Header=BB1_140 Depth=1
	cmpl	$1, %r12d
	je	.LBB1_145
	.align	16, 0x90
.LBB1_144:                              # %for.body.841
                                        #   Parent Loop BB1_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rbx), %eax
	imull	%r12d, %eax
	leal	(%rax,%rbp), %eax
	cltq
	movb	(%r13,%rax), %al
	movq	448(%rsp,%rbp,8), %rdx
	movb	%al, (%rdx,%rdi)
	movzbl	(%rsi,%rbx), %eax
	imull	%r12d, %eax
	leal	1(%rbp,%rax), %eax
	cltq
	movb	(%r13,%rax), %al
	movq	456(%rsp,%rbp,8), %rdx
	movb	%al, (%rdx,%rdi)
	addq	$2, %rbp
	cmpl	%ebp, %r12d
	jne	.LBB1_144
.LBB1_145:                              # %for.end.857
                                        #   in Loop: Header=BB1_140 Depth=1
	movl	%r11d, %ebp
	subl	%ebp, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	movq	%r14, %r11
	andl	%r11d, %eax
	addl	%r8d, %eax
	shrl	$31, %r8d
	addl	%r15d, %r9d
	addl	%r8d, %r9d
	incl	%ecx
	addq	$-64, %rdi
	cmpl	%r11d, %ecx
	movl	%eax, %r8d
	jne	.LBB1_140
	jmp	.LBB1_170
.LBB1_71:                               # %if.else.449
	movl	112(%rsp), %eax         # 4-byte Reload
	cmpl	148(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB1_87
# BB#72:                                # %for.cond.455.preheader
	testl	%r11d, %r11d
	jle	.LBB1_97
# BB#73:                                # %for.body.458.lr.ph
	leaq	1(%rdx), %rbp
	addq	$-12, %r14
	xorl	%eax, %eax
	andq	%rbp, %r14
	je	.LBB1_79
# BB#74:                                # %vector.memcheck
	leaq	(%rdi,%r15), %r8
	leaq	(%rbx,%r13), %rsi
	leaq	(%r13,%rdx), %rax
	leaq	(%rax,%rbx), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %r8
	ja	.LBB1_76
# BB#75:                                # %vector.memcheck
	movq	%rdx, %rcx
	shlq	$6, %rcx
	addq	%r15, %rcx
	leaq	(%rcx,%rdi), %rcx
	cmpq	%rcx, %rsi
	jbe	.LBB1_79
.LBB1_76:                               # %vector.body656.preheader
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	movq	%r14, %rax
	shlq	$6, %rax
	addq	%rax, %r15
	movq	%r15, 32(%rsp)          # 8-byte Spill
	incq	%rdx
	movabsq	$8589934576, %r9        # imm = 0x1FFFFFFF0
	andq	%rdx, %r9
	movl	$64, %ecx
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	.LCPI1_2(%rip), %xmm8   # xmm8 = [896,960]
	movdqa	.LCPI1_3(%rip), %xmm9   # xmm9 = [768,832]
	movdqa	.LCPI1_4(%rip), %xmm10  # xmm10 = [640,704]
	movdqa	.LCPI1_5(%rip), %xmm11  # xmm11 = [512,576]
	movdqa	.LCPI1_6(%rip), %xmm12  # xmm12 = [384,448]
	movdqa	.LCPI1_7(%rip), %xmm13  # xmm13 = [256,320]
	movdqa	.LCPI1_8(%rip), %xmm14  # xmm14 = [128,192]
.LBB1_77:                               # %vector.body656
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movups	(%rsi), %xmm1
	movaps	%xmm1, 176(%rsp)
	movb	191(%rsp), %cl
	movb	%cl, 112(%rsp)          # 1-byte Spill
	movb	190(%rsp), %cl
	movb	%cl, 100(%rsp)          # 1-byte Spill
	movb	189(%rsp), %cl
	movb	%cl, 84(%rsp)           # 1-byte Spill
	movb	188(%rsp), %cl
	movb	%cl, 83(%rsp)           # 1-byte Spill
	movb	187(%rsp), %cl
	movb	%cl, 82(%rsp)           # 1-byte Spill
	movb	186(%rsp), %cl
	movb	%cl, 81(%rsp)           # 1-byte Spill
	movb	185(%rsp), %cl
	movb	%cl, 80(%rsp)           # 1-byte Spill
	movb	184(%rsp), %cl
	movb	%cl, 79(%rsp)           # 1-byte Spill
	movb	183(%rsp), %cl
	movb	%cl, 78(%rsp)           # 1-byte Spill
	movb	182(%rsp), %cl
	movb	%cl, 77(%rsp)           # 1-byte Spill
	movb	181(%rsp), %cl
	movb	%cl, 76(%rsp)           # 1-byte Spill
	movb	180(%rsp), %cl
	movb	%cl, 75(%rsp)           # 1-byte Spill
	movb	179(%rsp), %r12b
	movb	178(%rsp), %dl
	movb	177(%rsp), %r13b
	movb	176(%rsp), %bl
	movb	%bl, (%rdi,%rbp)
	movd	%rbp, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movdqa	%xmm1, %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, %xmm4
	movdqa	%xmm1, %xmm5
	movdqa	%xmm1, %xmm6
	movdqa	%xmm1, %xmm7
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	movd	%xmm2, %rbx
	movdqa	%xmm1, %xmm2
	paddq	%xmm14, %xmm1
	movd	%xmm1, %r15
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %r10
	paddq	%xmm13, %xmm2
	movd	%xmm2, %rcx
	pshufd	$78, %xmm2, %xmm1       # xmm1 = xmm2[2,3,0,1]
	movd	%xmm1, %rsi
	paddq	%xmm12, %xmm7
	movq	%xmm7, 56(%rsp)         # 8-byte Folded Spill
	pshufd	$78, %xmm7, %xmm1       # xmm1 = xmm7[2,3,0,1]
	movq	%xmm1, 48(%rsp)         # 8-byte Folded Spill
	movb	%r13b, (%rdi,%rbx)
	paddq	%xmm11, %xmm6
	movq	%xmm6, 64(%rsp)         # 8-byte Folded Spill
	pshufd	$78, %xmm6, %xmm1       # xmm1 = xmm6[2,3,0,1]
	movd	%xmm1, %r8
	movb	%dl, (%rdi,%r15)
	movb	%r12b, (%rdi,%r10)
	paddq	%xmm10, %xmm5
	movd	%xmm5, %r10
	pshufd	$78, %xmm5, %xmm1       # xmm1 = xmm5[2,3,0,1]
	movd	%xmm1, %r15
	movb	75(%rsp), %dl           # 1-byte Reload
	movb	%dl, (%rdi,%rcx)
	paddq	%xmm9, %xmm4
	movd	%xmm4, %r13
	pshufd	$78, %xmm4, %xmm1       # xmm1 = xmm4[2,3,0,1]
	movd	%xmm1, %r12
	movb	76(%rsp), %cl           # 1-byte Reload
	movb	%cl, (%rdi,%rsi)
	paddq	%xmm8, %xmm3
	movd	%xmm3, %rcx
	pshufd	$78, %xmm3, %xmm1       # xmm1 = xmm3[2,3,0,1]
	movd	%xmm1, %rdx
	movb	77(%rsp), %bl           # 1-byte Reload
	movq	56(%rsp), %rax          # 8-byte Reload
	movb	%bl, (%rdi,%rax)
	movq	120(%rsp), %rsi         # 8-byte Reload
	movb	78(%rsp), %bl           # 1-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	movb	%bl, (%rdi,%rax)
	movb	79(%rsp), %bl           # 1-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	movb	%bl, (%rdi,%rax)
	movb	80(%rsp), %bl           # 1-byte Reload
	movb	%bl, (%rdi,%r8)
	movb	81(%rsp), %bl           # 1-byte Reload
	movb	%bl, (%rdi,%r10)
	movb	82(%rsp), %bl           # 1-byte Reload
	movb	%bl, (%rdi,%r15)
	movb	83(%rsp), %bl           # 1-byte Reload
	movb	%bl, (%rdi,%r13)
	movb	84(%rsp), %bl           # 1-byte Reload
	movb	%bl, (%rdi,%r12)
	movb	100(%rsp), %bl          # 1-byte Reload
	movb	%bl, (%rdi,%rcx)
	movb	112(%rsp), %cl          # 1-byte Reload
	movb	%cl, (%rdi,%rdx)
	addq	$16, %rsi
	addq	$1024, %rbp             # imm = 0x400
	addq	$-16, %r9
	jne	.LBB1_77
# BB#78:
	movq	%r14, %rax
	movq	168(%rsp), %r10         # 8-byte Reload
	movq	104(%rsp), %rbx         # 8-byte Reload
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB1_79:                               # %middle.block657
	cmpq	%rax, %rbp
	je	.LBB1_97
# BB#80:                                # %for.body.458.preheader
	leal	1(%r11), %edx
	movl	%eax, %esi
	orl	$1, %esi
	movl	%edx, %ebp
	subl	%esi, %ebp
	movl	%r11d, %ecx
	subl	%esi, %ecx
	testb	$3, %bpl
	je	.LBB1_81
# BB#82:                                # %for.body.458.prol.preheader
	leaq	(%rbx,%r13), %rsi
	movq	%rbx, %r8
	leal	1(%rax), %ebp
	subl	%ebp, %edx
	andl	$3, %edx
	negl	%edx
.LBB1_83:                               # %for.body.458.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi,%rax), %bl
	movb	%bl, (%rdi,%r15)
	incq	%rax
	addq	$64, %r15
	incl	%edx
	jne	.LBB1_83
	jmp	.LBB1_84
.LBB1_114:                              # %if.else.659
	cmpl	$1, %r12d
	jne	.LBB1_115
# BB#133:                               # %for.cond.664.preheader
	testl	%r11d, %r11d
	movl	%ecx, %edx
	jle	.LBB1_171
# BB#134:                               # %for.body.667.lr.ph
	movslq	%ebx, %rcx
	incq	%rcx
.LBB1_135:                              # %for.body.667
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %r9
	movzbl	(%rsi,%r9), %eax
	movb	(%r13,%rax), %al
	movb	%al, -1(%rdi,%rcx)
	subl	%ebp, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	%r11d, %eax
	addl	%r8d, %eax
	shrl	$31, %r8d
	addl	%edx, %r9d
	addl	%r8d, %r9d
	decq	%rcx
	testq	%rcx, %rcx
	movl	%eax, %r8d
	jg	.LBB1_135
	jmp	.LBB1_171
.LBB1_150:                              # %for.cond.940.preheader
	testl	%r12d, %r12d
	jle	.LBB1_159
# BB#151:                               # %for.body.943.lr.ph
	addq	%r10, %rdi
	movq	%rdi, 448(%rsp)
	cmpl	$1, %r12d
	je	.LBB1_159
# BB#152:                               # %for.body.943.for.body.943_crit_edge.lr.ph
	movq	%r11, 104(%rsp)         # 8-byte Spill
	movl	%ebp, %r11d
	leal	-2(%r12), %edi
	leaq	1(%rdi), %rcx
	leaq	2(%rdi), %rbp
	andq	%r14, %rcx
	orq	$1, %rcx
	movl	$1, %ebx
	cmpq	$1, %rcx
	je	.LBB1_156
# BB#153:                               # %vector.body.preheader
	leaq	472(%rsp), %rbx
	incq	%rdi
	andq	%r14, %rdi
.LBB1_154:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rbx), %xmm0
	movdqu	(%rbx), %xmm1
	movd	%xmm0, %rax
	addq	%r10, %rax
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	addq	%r10, %rdx
	movd	%rax, %xmm0
	movd	%rdx, %xmm2
	punpcklqdq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0]
	movd	%xmm1, %rax
	addq	%r10, %rax
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %rdx
	addq	%r10, %rdx
	movd	%rax, %xmm1
	movd	%rdx, %xmm2
	punpcklqdq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$32, %rbx
	addq	$-4, %rdi
	jne	.LBB1_154
# BB#155:
	movq	%rcx, %rbx
.LBB1_156:                              # %middle.block
	cmpq	%rbx, %rbp
	movl	%r11d, %ebp
	movq	104(%rsp), %r11         # 8-byte Reload
	je	.LBB1_159
# BB#157:                               # %for.body.943.for.body.943_crit_edge.preheader
	movl	%r12d, %ecx
	subl	%ebx, %ecx
	leaq	448(%rsp,%rbx,8), %rdi
.LBB1_158:                              # %for.body.943.for.body.943_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	addq	%r10, (%rdi)
	addq	$8, %rdi
	decl	%ecx
	jne	.LBB1_158
.LBB1_159:                              # %for.cond.953.preheader
	testl	%r11d, %r11d
	movl	120(%rsp), %r14d        # 4-byte Reload
	jle	.LBB1_170
# BB#160:                               # %for.cond.957.preheader.preheader
	movl	%r12d, %r10d
	andl	$1, %r10d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB1_161:                              # %for.cond.957.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_165 Depth 2
	testl	%r12d, %r12d
	jle	.LBB1_166
# BB#162:                               # %for.body.960.lr.ph
                                        #   in Loop: Header=BB1_161 Depth=1
	testl	%r10d, %r10d
	movslq	%r9d, %rcx
	movl	$0, %ebx
	je	.LBB1_164
# BB#163:                               # %for.body.960.prol
                                        #   in Loop: Header=BB1_161 Depth=1
	movzbl	(%rsi,%rcx), %eax
	imulq	112(%rsp), %rax         # 8-byte Folded Reload
	movb	(%r13,%rax), %al
	movq	448(%rsp), %rdx
	movb	%al, (%rdx)
	addq	$64, %rdx
	movq	%rdx, 448(%rsp)
	movl	$1, %ebx
.LBB1_164:                              # %for.body.960.lr.ph.split
                                        #   in Loop: Header=BB1_161 Depth=1
	cmpl	$1, %r12d
	je	.LBB1_166
	.align	16, 0x90
.LBB1_165:                              # %for.body.960
                                        #   Parent Loop BB1_161 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rcx), %eax
	imull	%r12d, %eax
	leal	(%rax,%rbx), %eax
	cltq
	movb	(%r13,%rax), %al
	movq	448(%rsp,%rbx,8), %rdx
	movb	%al, (%rdx)
	addq	$64, %rdx
	movq	%rdx, 448(%rsp,%rbx,8)
	movzbl	(%rsi,%rcx), %eax
	imull	%r12d, %eax
	leal	1(%rbx,%rax), %eax
	cltq
	movb	(%r13,%rax), %al
	movq	456(%rsp,%rbx,8), %rdx
	movb	%al, (%rdx)
	addq	$64, %rdx
	movq	%rdx, 456(%rsp,%rbx,8)
	addq	$2, %rbx
	cmpl	%ebx, %r12d
	jne	.LBB1_165
.LBB1_166:                              # %do.body.978
                                        #   in Loop: Header=BB1_161 Depth=1
	subl	%ebp, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	%r11d, %eax
	addl	%r8d, %eax
	shrl	$31, %r8d
	addl	%r14d, %r9d
	addl	%r8d, %r9d
	incl	%edi
	cmpl	%r11d, %edi
	movl	%eax, %r8d
	jne	.LBB1_161
.LBB1_170:                              # %if.end.1009
	movq	168(%rsp), %r15         # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, 24504(%r15)
	movslq	24768(%r15), %rax
	movl	%ecx, 24508(%r15,%rax,4)
	movl	24772(%r15), %eax
	addl	%eax, 24768(%r15)
	incl	24776(%r15)
	jmp	.LBB1_171
.LBB1_102:                              # %for.cond.604.preheader
	testl	%r11d, %r11d
	jle	.LBB1_171
# BB#103:                               # %for.body.607.preheader
	movl	%r12d, %eax
	andl	$1, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	leaq	1(%r13), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB1_104:                              # %for.body.607
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_109 Depth 2
	movslq	%r9d, %rcx
	movzbl	(%rsi,%rcx), %ebx
	testl	%r12d, %r12d
	jle	.LBB1_110
# BB#105:                               # %for.body.619.preheader
                                        #   in Loop: Header=BB1_104 Depth=1
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movl	$0, %ebp
	je	.LBB1_107
# BB#106:                               # %for.body.619.prol
                                        #   in Loop: Header=BB1_104 Depth=1
	movq	%rbx, %rcx
	imulq	112(%rsp), %rcx         # 8-byte Folded Reload
	movb	(%r13,%rcx), %cl
	movq	448(%rsp), %rdx
	leaq	1(%rdx), %rbp
	movq	%rbp, 448(%rsp)
	movb	%cl, (%rdx)
	movl	$1, %ebp
.LBB1_107:                              # %for.body.619.preheader.split
                                        #   in Loop: Header=BB1_104 Depth=1
	cmpl	$1, %r12d
	je	.LBB1_110
# BB#108:                               # %for.body.619.preheader.split.split
                                        #   in Loop: Header=BB1_104 Depth=1
	movl	%r12d, %ecx
	subl	%ebp, %ecx
	imull	%r12d, %ebx
	movslq	%ebx, %rdx
	leaq	(%rdx,%rbp), %rdx
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rdx,%rax), %rbx
	leaq	456(%rsp), %rax
	leaq	(%rax,%rbp,8), %rbp
	.align	16, 0x90
.LBB1_109:                              # %for.body.619
                                        #   Parent Loop BB1_104 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-1(%rbx), %dl
	movq	-8(%rbp), %r15
	leaq	1(%r15), %r10
	movq	%r10, -8(%rbp)
	movb	%dl, (%r15)
	movb	(%rbx), %dl
	movq	(%rbp), %rdi
	leaq	1(%rdi), %rax
	movq	%rax, (%rbp)
	movb	%dl, (%rdi)
	addq	$2, %rbx
	addq	$16, %rbp
	addl	$-2, %ecx
	jne	.LBB1_109
.LBB1_110:                              # %do.body.628
                                        #   in Loop: Header=BB1_104 Depth=1
	movl	100(%rsp), %eax         # 4-byte Reload
	subl	%eax, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	%r11d, %eax
	addl	%r8d, %eax
	shrl	$31, %r8d
	movl	120(%rsp), %ecx         # 4-byte Reload
	addl	%ecx, %r9d
	addl	%r8d, %r9d
	incl	%r14d
	cmpl	%r11d, %r14d
	movl	%eax, %r8d
	jne	.LBB1_104
	jmp	.LBB1_171
.LBB1_61:                               # %if.else.356
	testl	%r11d, %r11d
	jle	.LBB1_171
# BB#62:                                # %for.body.363.lr.ph
	movl	%ecx, %eax
	movslq	%ebx, %rcx
	addq	%rcx, %rdi
	xorl	%r14d, %r14d
	testb	$1, %r11b
	jne	.LBB1_64
# BB#63:
	movl	%ebp, %ebx
	jmp	.LBB1_65
.LBB1_87:                               # %if.else.467
	cmpl	$128, 84(%rsp)          # 4-byte Folded Reload
	movl	120(%rsp), %eax         # 4-byte Reload
	jne	.LBB1_88
# BB#91:                                # %for.cond.472.preheader
	testl	%r11d, %r11d
	jle	.LBB1_97
# BB#92:                                # %for.body.475.lr.ph
	movl	%edx, %ecx
	shrl	%ecx
	xorl	%eax, %eax
	btl	$1, %edx
	jb	.LBB1_94
# BB#93:                                # %for.body.475.prol
	movb	(%rsi), %al
	movb	%al, 64(%rdi,%r15)
	movb	%al, (%rdi,%r15)
	subq	$-128, %r15
	movl	$2, %eax
.LBB1_94:                               # %for.body.475.lr.ph.split
	testl	%ecx, %ecx
	je	.LBB1_97
# BB#95:                                # %for.body.475.lr.ph.split.split
	leaq	192(%r15,%rdi), %rcx
.LBB1_96:                               # %for.body.475
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	sarl	%edx
	movslq	%edx, %rdx
	movb	(%rsi,%rdx), %dl
	movb	%dl, -128(%rcx)
	movb	%dl, -192(%rcx)
	leal	2(%rax), %edx
	sarl	%edx
	movslq	%edx, %rdx
	movb	(%rsi,%rdx), %dl
	movb	%dl, (%rcx)
	movb	%dl, -64(%rcx)
	addq	$256, %rcx              # imm = 0x100
	addl	$4, %eax
	cmpl	%r11d, %eax
	jl	.LBB1_96
	jmp	.LBB1_97
.LBB1_46:                               # %if.else.300
	addl	%edx, %edx
	cmpl	%eax, %edx
	jne	.LBB1_47
# BB#53:                                # %for.cond.305.preheader
	testl	%r11d, %r11d
	jle	.LBB1_171
# BB#54:                                # %for.body.308.preheader
	movl	%ebx, %ecx
	shrl	%ecx
	incl	%ecx
	xorl	%eax, %eax
	testb	$3, %cl
	je	.LBB1_58
# BB#55:                                # %for.body.308.prol.preheader
	andl	$3, %ecx
	negl	%ecx
	xorl	%eax, %eax
.LBB1_56:                               # %for.body.308.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	movb	(%rsi), %al
	movb	%al, 1(%rdi,%rdx)
	movb	%al, (%rdi,%rdx)
	incq	%rsi
	leaq	2(%rdx), %rax
	incl	%ecx
	jne	.LBB1_56
# BB#57:
	leaq	2(%rdi,%rdx), %rdi
.LBB1_58:                               # %for.body.308.preheader.split
	cmpl	$6, %ebx
	jb	.LBB1_171
# BB#59:                                # %for.body.308.preheader.split.split
	addq	$7, %rdi
.LBB1_60:                               # %for.body.308
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi), %cl
	movb	%cl, -6(%rdi)
	movb	%cl, -7(%rdi)
	movb	1(%rsi), %cl
	movb	%cl, -4(%rdi)
	movb	%cl, -5(%rdi)
	movb	2(%rsi), %cl
	movb	%cl, -2(%rdi)
	movb	%cl, -3(%rdi)
	movb	3(%rsi), %cl
	movb	%cl, (%rdi)
	movb	%cl, -1(%rdi)
	addl	$8, %eax
	addq	$8, %rdi
	addq	$4, %rsi
	cmpl	%r11d, %eax
	jl	.LBB1_60
	jmp	.LBB1_171
.LBB1_115:                              # %for.cond.707.preheader
	testl	%r12d, %r12d
	jle	.LBB1_124
# BB#116:                               # %for.body.710.lr.ph
	movslq	%r11d, %r10
	leaq	-1(%rdi,%r10), %rax
	movq	%rax, 448(%rsp)
	cmpl	$1, %r12d
	je	.LBB1_124
# BB#117:                               # %for.body.710.for.body.710_crit_edge.lr.ph
	leal	-2(%r12), %edi
	leaq	1(%rdi), %rax
	leaq	2(%rdi), %r15
	andq	%r14, %rax
	orq	$1, %rax
	movl	$1, %ebx
	cmpq	$1, %rax
	je	.LBB1_121
# BB#118:                               # %vector.body630.preheader
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	472(%rsp), %rbx
	incq	%rdi
	andq	%r14, %rdi
.LBB1_119:                              # %vector.body630
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rbx), %xmm0
	movdqu	(%rbx), %xmm1
	movd	%xmm0, %rax
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	movd	%xmm1, %rbp
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %rcx
	leaq	-1(%rax,%r10), %rax
	leaq	-1(%rdx,%r10), %rdx
	movd	%rax, %xmm0
	movd	%rdx, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	leaq	-1(%rbp,%r10), %rax
	leaq	-1(%rcx,%r10), %rcx
	movd	%rax, %xmm1
	movd	%rcx, %xmm2
	punpcklqdq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm1, (%rbx)
	addq	$32, %rbx
	addq	$-4, %rdi
	jne	.LBB1_119
# BB#120:
	movq	104(%rsp), %rbx         # 8-byte Reload
.LBB1_121:                              # %middle.block631
	cmpq	%rbx, %r15
	je	.LBB1_124
# BB#122:                               # %for.body.710.for.body.710_crit_edge.preheader
	movl	%r12d, %edi
	subl	%ebx, %edi
	leaq	448(%rsp,%rbx,8), %rbp
.LBB1_123:                              # %for.body.710.for.body.710_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rax
	leaq	-1(%rax,%r10), %rax
	movq	%rax, (%rbp)
	addq	$8, %rbp
	decl	%edi
	jne	.LBB1_123
.LBB1_124:                              # %for.cond.721.preheader
	testl	%r11d, %r11d
	movq	%r11, %r14
	movl	100(%rsp), %r11d        # 4-byte Reload
	jle	.LBB1_171
# BB#125:                               # %for.body.724.preheader
	movl	%r12d, %eax
	andl	$1, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	leaq	1(%r13), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
.LBB1_126:                              # %for.body.724
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_131 Depth 2
	movslq	%r9d, %rax
	movzbl	(%rsi,%rax), %ebx
	testl	%r12d, %r12d
	jle	.LBB1_132
# BB#127:                               # %for.body.736.preheader
                                        #   in Loop: Header=BB1_126 Depth=1
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movl	$0, %ebp
	je	.LBB1_129
# BB#128:                               # %for.body.736.prol
                                        #   in Loop: Header=BB1_126 Depth=1
	movq	%rbx, %rax
	imulq	112(%rsp), %rax         # 8-byte Folded Reload
	movb	(%r13,%rax), %al
	movq	448(%rsp), %rcx
	leaq	-1(%rcx), %rdx
	movq	%rdx, 448(%rsp)
	movb	%al, (%rcx)
	movl	$1, %ebp
.LBB1_129:                              # %for.body.736.preheader.split
                                        #   in Loop: Header=BB1_126 Depth=1
	cmpl	$1, %r12d
	je	.LBB1_132
# BB#130:                               # %for.body.736.preheader.split.split
                                        #   in Loop: Header=BB1_126 Depth=1
	movl	%r12d, %ecx
	subl	%ebp, %ecx
	imull	%r12d, %ebx
	movslq	%ebx, %rax
	leaq	(%rax,%rbp), %rax
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %rbx
	leaq	456(%rsp), %rax
	leaq	(%rax,%rbp,8), %rbp
	.align	16, 0x90
.LBB1_131:                              # %for.body.736
                                        #   Parent Loop BB1_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	-1(%rbx), %al
	movq	-8(%rbp), %rdx
	leaq	-1(%rdx), %r15
	movq	%r15, -8(%rbp)
	movb	%al, (%rdx)
	movb	(%rbx), %al
	movq	(%rbp), %rdx
	leaq	-1(%rdx), %rdi
	movq	%rdi, (%rbp)
	movb	%al, (%rdx)
	addq	$2, %rbx
	addq	$16, %rbp
	addl	$-2, %ecx
	jne	.LBB1_131
.LBB1_132:                              # %do.body.745
                                        #   in Loop: Header=BB1_126 Depth=1
	subl	%r11d, %r8d
	movl	%r8d, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	addl	%r8d, %eax
	shrl	$31, %r8d
	movl	120(%rsp), %ecx         # 4-byte Reload
	addl	%ecx, %r9d
	addl	%r8d, %r9d
	incl	%r10d
	cmpl	%r14d, %r10d
	movl	%eax, %r8d
	jne	.LBB1_126
	jmp	.LBB1_171
.LBB1_88:                               # %for.cond.491.preheader
	testl	%r11d, %r11d
	jle	.LBB1_97
# BB#89:                                # %for.body.494.lr.ph
	addq	%r15, %rdi
	movl	%r11d, %ecx
.LBB1_90:                               # %for.body.494
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %r9
	movb	(%rsi,%r9), %dl
	movb	%dl, (%rdi)
	subl	%ebp, %r8d
	movl	%r8d, %edx
	sarl	$31, %edx
	andl	%r11d, %edx
	addl	%r8d, %edx
	shrl	$31, %r8d
	addl	%eax, %r9d
	addl	%r8d, %r9d
	addq	$64, %rdi
	decl	%ecx
	movl	%edx, %r8d
	jne	.LBB1_90
	jmp	.LBB1_97
.LBB1_47:                               # %for.cond.315.preheader
	testl	%r11d, %r11d
	movq	%r11, %rax
	jle	.LBB1_171
# BB#48:                                # %for.body.318.preheader
	movl	%ecx, %ebx
	xorl	%r11d, %r11d
	movq	%rax, %rdx
	testb	$1, %dl
	jne	.LBB1_50
# BB#49:
	movl	%ebp, %eax
	jmp	.LBB1_51
.LBB1_64:                               # %for.body.363.prol
	movslq	%r9d, %rcx
	movb	(%rsi,%rcx), %cl
	movb	%cl, (%rdi)
	subl	%ebp, %r8d
	movl	%ebp, %ebx
	movl	%r8d, %ebp
	sarl	$31, %ebp
	andl	%r11d, %ebp
	addl	%r8d, %ebp
	shrl	$31, %r8d
	addl	%eax, %r9d
	addl	%r8d, %r9d
	decq	%rdi
	movl	$1, %r14d
	movl	%ebp, %r8d
.LBB1_65:                               # %for.body.363.lr.ph.split
	cmpl	$1, %r11d
	movq	%r11, %rcx
	movl	%ebx, %edx
	movl	%eax, %r11d
	je	.LBB1_171
.LBB1_66:                               # %for.body.363
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %rax
	movb	(%rsi,%rax), %bl
	movb	%bl, (%rdi)
	subl	%edx, %r8d
	movl	%edx, %r10d
	movl	%r8d, %ebp
	sarl	$31, %ebp
	movq	%rcx, %rbx
	andl	%ebx, %ebp
	addl	%r8d, %ebp
	shrl	$31, %r8d
	addl	%r11d, %eax
	addl	%r8d, %eax
	movslq	%eax, %r9
	movb	(%rsi,%r9), %dl
	movb	%dl, -1(%rdi)
	subl	%r10d, %ebp
	movl	%ebp, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%ebp, %r8d
	shrl	$31, %ebp
	addl	%r11d, %r9d
	addl	%ebp, %r9d
	movl	%r10d, %edx
	addl	$2, %r14d
	addq	$-2, %rdi
	cmpl	%r14d, %ebx
	jne	.LBB1_66
	jmp	.LBB1_171
.LBB1_81:
	movq	%rbx, %r8
.LBB1_84:                               # %for.body.458.preheader.split
	cmpl	$3, %ecx
	jb	.LBB1_97
# BB#85:                                # %for.body.458.preheader.split.split
	leaq	192(%r15,%rdi), %rcx
	subl	%eax, %r11d
	addq	%rax, %r13
	leaq	3(%r8,%r13), %rax
.LBB1_86:                               # %for.body.458
                                        # =>This Inner Loop Header: Depth=1
	movb	-3(%rax), %dl
	movb	%dl, -192(%rcx)
	movb	-2(%rax), %dl
	movb	%dl, -128(%rcx)
	movb	-1(%rax), %dl
	movb	%dl, -64(%rcx)
	movb	(%rax), %dl
	movb	%dl, (%rcx)
	addq	$256, %rcx              # imm = 0x100
	addq	$4, %rax
	addl	$-4, %r11d
	jne	.LBB1_86
.LBB1_97:                               # %if.end.534
	movq	%r10, 168(%rsp)         # 8-byte Spill
	movq	88(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, 24504(%r10)
	movslq	24768(%r10), %rax
	movl	%ecx, 24508(%r10,%rax,4)
	movl	24772(%r10), %eax
	addl	%eax, 24768(%r10)
	incl	24776(%r10)
.LBB1_171:                              # %flush
	movl	144(%rsp), %r8d         # 4-byte Reload
	movq	168(%rsp), %rdi         # 8-byte Reload
	addq	24488(%rdi), %r8
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, (%rsp)
	movl	140(%rsp), %esi         # 4-byte Reload
	movl	164(%rsp), %edx         # 4-byte Reload
	movl	148(%rsp), %ecx         # 4-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
	callq	gxht_thresh_planes
.LBB1_172:                              # %cleanup
	addq	$968, %rsp              # imm = 0x3C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_50:                               # %for.body.318.prol
	movslq	%r9d, %rcx
	movb	(%rsi,%rcx), %cl
	movb	%cl, (%rdi)
	subl	%ebp, %r8d
	movl	%ebp, %eax
	movl	%r8d, %ebp
	sarl	$31, %ebp
	andl	%edx, %ebp
	addl	%r8d, %ebp
	shrl	$31, %r8d
	addl	%ebx, %r9d
	addl	%r8d, %r9d
	incq	%rdi
	movl	$1, %r11d
	movl	%ebp, %r8d
.LBB1_51:                               # %for.body.318.preheader.split
	cmpl	$1, %edx
	movq	%rdx, %rcx
	movl	%eax, %edx
	movl	%ebx, %r14d
	je	.LBB1_171
.LBB1_52:                               # %for.body.318
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %rax
	movb	(%rsi,%rax), %bl
	movb	%bl, (%rdi)
	subl	%edx, %r8d
	movl	%edx, %r10d
	movl	%r8d, %ebp
	sarl	$31, %ebp
	movq	%rcx, %rbx
	andl	%ebx, %ebp
	addl	%r8d, %ebp
	shrl	$31, %r8d
	addl	%r14d, %eax
	addl	%r8d, %eax
	movslq	%eax, %r9
	movb	(%rsi,%r9), %dl
	movb	%dl, 1(%rdi)
	subl	%r10d, %ebp
	movl	%ebp, %r8d
	sarl	$31, %r8d
	andl	%ebx, %r8d
	addl	%ebp, %r8d
	shrl	$31, %ebp
	addl	%r14d, %r9d
	addl	%ebp, %r9d
	movl	%r10d, %edx
	addl	$2, %r11d
	addq	$2, %rdi
	cmpl	%r11d, %ebx
	jne	.LBB1_52
	jmp	.LBB1_171
.Lfunc_end1:
	.size	image_render_mono_ht, .Lfunc_end1-image_render_mono_ht
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	998277249               # float 0.00392156886
	.text
	.align	16, 0x90
	.type	image_render_mono,@function
image_render_mono:                      # @image_render_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$552, %rsp              # imm = 0x228
.Ltmp26:
	.cfi_def_cfa_offset 608
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	1216(%rdi), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	1304(%rdi), %eax
	movl	%eax, 244(%rsp)         # 4-byte Spill
	movb	1118(%rdi), %r11b
	movq	24440(%rdi), %rax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	xorl	%r14d, %r14d
	cmpb	$0, 1116(%rdi)
	movl	$0, %ebx
	movl	$0, %ebp
	je	.LBB2_2
# BB#1:                                 # %cond.true.7
	movl	584(%rdi), %ebx
	movl	$1, %ebp
	subl	%ebx, %ebp
	addl	588(%rdi), %ebp
.LBB2_2:                                # %cond.end.12
	movl	%ebp, 108(%rsp)         # 4-byte Spill
	movl	%ebx, 112(%rsp)         # 4-byte Spill
	movl	%ecx, %ebx
	testb	%r11b, %r11b
	movl	$255, %r10d
	movl	$-2, %ebp
	cmovnel	%r10d, %ebp
	testl	%r8d, %r8d
	je	.LBB2_244
# BB#3:                                 # %if.end
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	movl	%ebp, 200(%rsp)         # 4-byte Spill
	movslq	%edx, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rax), %r15
	leaq	(%rbx,%r15), %r10
	movq	%r10, 176(%rsp)         # 8-byte Spill
	testb	%r11b, %r11b
	movb	%r11b, 119(%rsp)        # 1-byte Spill
	movq	%rdi, %rbx
	movl	1452(%rbx), %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	1456(%rbx), %r12d
	movslq	1460(%rbx), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movl	1464(%rbx), %r11d
	movq	%r11, 264(%rsp)         # 8-byte Spill
	movl	1468(%rbx), %r8d
	movl	%r8d, 276(%rsp)         # 4-byte Spill
	movl	1472(%rbx), %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	movl	1476(%rbx), %r13d
	movslq	1480(%rbx), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movl	1484(%rbx), %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	movl	1488(%rbx), %edx
	je	.LBB2_4
# BB#5:                                 # %land.lhs.true
	movb	(%r15), %cl
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpl	$1, 1264(%rbx)
	movl	$0, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%r10, 248(%rsp)         # 8-byte Spill
	ja	.LBB2_10
	jmp	.LBB2_6
.LBB2_4:                                # %if.end.23
	movq	1224(%rbx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movb	(%r15), %cl
.LBB2_6:                                # %if.else
	movl	%edx, %r14d
	movzbl	-1(%r10), %eax
	movq	%r10, %rdi
	.align	16, 0x90
.LBB2_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rdx
	cmpq	%r15, %rdx
	jbe	.LBB2_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB2_7 Depth=1
	leaq	-1(%rdx), %rdi
	movzbl	-1(%rdx), %ebp
	cmpl	%eax, %ebp
	je	.LBB2_7
.LBB2_9:
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movl	%r14d, %edx
.LBB2_10:                               # %if.end.40
	cmpb	$0, 1270(%rbx)
	movq	%r9, %rbp
	jne	.LBB2_12
# BB#11:                                # %lor.lhs.false
	cmpl	$0, 1264(%rbx)
	je	.LBB2_156
.LBB2_12:                               # %if.then.46
	movl	1372(%rbx), %eax
	movl	1392(%rbx), %edi
	subl	1356(%rbx), %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	subl	1360(%rbx), %edi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movq	1368(%rbp), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	cmpb	$0, 119(%rsp)           # 1-byte Folded Reload
	je	.LBB2_77
# BB#13:                                # %if.then.64
	movl	%edx, 184(%rsp)         # 4-byte Spill
	movl	%r8d, 276(%rsp)         # 4-byte Spill
	movq	%r11, 264(%rsp)         # 8-byte Spill
	movq	%r10, 176(%rsp)         # 8-byte Spill
	movq	280(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	xorl	%ecx, %ecx
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rdx
	callq	*32(%rax)
	testl	%eax, %eax
	js	.LBB2_243
# BB#14:                                # %if.end.70
	cmpq	%r15, 248(%rsp)         # 8-byte Folded Reload
	ja	.LBB2_18
# BB#15:                                # %land.lhs.true.73
	cmpl	$0, 1308(%rbx)
	jne	.LBB2_18
# BB#16:                                # %land.lhs.true.76
	cmpl	$2, 1264(%rbx)
	jae	.LBB2_18
# BB#17:
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	208(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rdx
	movl	%edx, %r14d
	movl	168(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, 136(%rsp)         # 4-byte Spill
	movl	%edx, %r15d
	jmp	.LBB2_125
.LBB2_77:                               # %if.else.794
	cmpl	$2, 1264(%rbx)
	jae	.LBB2_78
# BB#83:                                # %if.then.802
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	cmpq	%r15, 248(%rsp)         # 8-byte Folded Reload
	jbe	.LBB2_84
# BB#85:                                # %for.cond.807.preheader
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movl	%edx, 184(%rsp)         # 4-byte Spill
	movq	192(%rsp), %rax         # 8-byte Reload
	leaq	1(%rax,%rsi), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movl	$-2, 136(%rsp)          # 4-byte Folded Spill
	movq	%r15, %rsi
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movb	%cl, %r14b
	movb	%cl, %bl
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %r15d
	movb	%bl, %cl
	movl	168(%rsp), %ebx         # 4-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
	jmp	.LBB2_86
	.align	16, 0x90
.LBB2_109:                              # %if.end.905.for.cond.807_crit_edge
                                        #   in Loop: Header=BB2_86 Depth=1
	movb	(%rdx), %cl
	incq	%rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
.LBB2_86:                               # %for.cond.807
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%r14b, %r14d
	movzbl	%cl, %edx
	cmpl	%r14d, %edx
	jne	.LBB2_88
# BB#87:                                #   in Loop: Header=BB2_86 Depth=1
	movb	%cl, %r14b
	movq	160(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB2_107
	.align	16, 0x90
.LBB2_88:                               # %if.then.812
                                        #   in Loop: Header=BB2_86 Depth=1
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movl	%r8d, 276(%rsp)         # 4-byte Spill
	movq	%r11, 264(%rsp)         # 8-byte Spill
	movq	%r10, 176(%rsp)         # 8-byte Spill
	cmpl	136(%rsp), %r14d        # 4-byte Folded Reload
	movq	256(%rsp), %rbp         # 8-byte Reload
	je	.LBB2_104
# BB#89:                                # %if.then.816
                                        #   in Loop: Header=BB2_86 Depth=1
	movq	%rbp, %rdx
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	23112(%rax), %rax
	imulq	$664, %r14, %rcx        # imm = 0x298
	leaq	(%rax,%rcx), %rsi
	movq	%rsi, 280(%rsp)         # 8-byte Spill
	movq	(%rax,%rcx), %rbp
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, %rbp
	je	.LBB2_90
# BB#100:                               # %if.else.865
                                        #   in Loop: Header=BB2_86 Depth=1
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %rbp
	je	.LBB2_101
# BB#102:                               # %if.then.869
                                        #   in Loop: Header=BB2_86 Depth=1
	movl	$1, %ecx
	movq	280(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	*32(%rbp)
	movq	256(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_103
.LBB2_90:                               # %if.then.823
                                        #   in Loop: Header=BB2_86 Depth=1
	movl	%r14d, %eax
	subl	112(%rsp), %eax         # 4-byte Folded Reload
	cmpl	108(%rsp), %eax         # 4-byte Folded Reload
	movq	%rdx, %rbp
	jae	.LBB2_92
# BB#91:                                # %if.then.828
                                        #   in Loop: Header=BB2_86 Depth=1
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	$gx_dc_type_data_null, (%rax)
	movl	%r14d, %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB2_104
.LBB2_101:                              #   in Loop: Header=BB2_86 Depth=1
	movl	%r14d, %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movq	%rdx, %rbp
	jmp	.LBB2_104
.LBB2_92:                               # %if.else.830
                                        #   in Loop: Header=BB2_86 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	1852(%rax), %eax
	cmpl	$2, %eax
	je	.LBB2_97
# BB#93:                                # %if.else.830
                                        #   in Loop: Header=BB2_86 Depth=1
	cmpl	$1, %eax
	jne	.LBB2_94
# BB#96:                                # %sw.bb.836
                                        #   in Loop: Header=BB2_86 Depth=1
	movl	%r14d, %eax
	shrl	$4, %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	1784(%rcx,%rax,4), %eax
	movl	%eax, 296(%rsp)
	jmp	.LBB2_99
.LBB2_97:                               # %sw.bb.845
                                        #   in Loop: Header=BB2_86 Depth=1
	cvtsi2ssl	%r14d, %xmm0
	movq	128(%rsp), %rax         # 8-byte Reload
	mulss	1848(%rax), %xmm0
	addss	1784(%rax), %xmm0
	jmp	.LBB2_98
.LBB2_94:                               # %if.else.830
                                        #   in Loop: Header=BB2_86 Depth=1
	testl	%eax, %eax
	jne	.LBB2_99
# BB#95:                                # %sw.bb
                                        #   in Loop: Header=BB2_86 Depth=1
	cvtsi2ssl	%r14d, %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
.LBB2_98:                               # %sw.epilog
                                        #   in Loop: Header=BB2_86 Depth=1
	movss	%xmm0, 296(%rsp)
.LBB2_99:                               # %sw.epilog
                                        #   in Loop: Header=BB2_86 Depth=1
	movl	$1, %r9d
	leaq	288(%rsp), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	280(%rsp), %rdx         # 8-byte Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%rbp, %r8
	callq	*64(%rsp)               # 8-byte Folded Reload
.LBB2_103:                              # %if.then.869
                                        #   in Loop: Header=BB2_86 Depth=1
	testl	%eax, %eax
	movl	%r14d, %ecx
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	js	.LBB2_242
.LBB2_104:                              # %if.end.881
                                        #   in Loop: Header=BB2_86 Depth=1
	movl	%r15d, %ecx
	movq	208(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %ecx
	movl	%ebx, %r8d
	movl	168(%rsp), %edx         # 4-byte Reload
	subl	%edx, %r8d
	movl	244(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	%rbp, %rdi
	movq	152(%rsp), %r9          # 8-byte Reload
	callq	*200(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB2_242
# BB#105:                               # %if.end.894
                                        #   in Loop: Header=BB2_86 Depth=1
	movq	160(%rsp), %rdx         # 8-byte Reload
	leaq	-1(%rdx), %rsi
	cmpq	248(%rsp), %rsi         # 8-byte Folded Reload
	jae	.LBB2_124
# BB#106:                               # %if.end.904
                                        #   in Loop: Header=BB2_86 Depth=1
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movb	(%rsi), %r14b
	movl	%r15d, %ecx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	movl	%ebx, 168(%rsp)         # 4-byte Spill
	movq	176(%rsp), %r10         # 8-byte Reload
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	276(%rsp), %r8d         # 4-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
.LBB2_107:                              # %if.end.905
                                        #   in Loop: Header=BB2_86 Depth=1
	movl	%r12d, %ecx
	subl	%r11d, %ecx
	movl	%ecx, %r12d
	sarl	$31, %r12d
	andl	%r8d, %r12d
	addl	%ecx, %r12d
	shrl	$31, %ecx
	addl	%edi, %r15d
	addl	%ecx, %r15d
	movl	%r13d, %ecx
	subl	%r9d, %ecx
	movl	%ecx, %r13d
	sarl	$31, %r13d
	andl	184(%rsp), %r13d        # 4-byte Folded Reload
	addl	%ecx, %r13d
	shrl	$31, %ecx
	movq	232(%rsp), %rbp         # 8-byte Reload
	addl	%ebp, %ebx
	addl	%ecx, %ebx
	cmpq	%r10, %rdx
	jb	.LBB2_109
# BB#108:
	movq	208(%rsp), %r14         # 8-byte Reload
	movl	168(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movq	248(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_126
.LBB2_18:                               # %if.end.85
	movl	1264(%rbx), %ecx
	testl	%ecx, %ecx
	movq	176(%rsp), %r10         # 8-byte Reload
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	276(%rsp), %r8d         # 4-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
	jne	.LBB2_19
# BB#22:                                # %if.then.89
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movl	1308(%rbx), %r14d
	movl	%r14d, %ebp
	negl	%ebp
	xorps	%xmm0, %xmm0
	ucomiss	1120(%rbx), %xmm0
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movl	%ebp, %ecx
	ja	.LBB2_24
# BB#23:                                # %select.mid
	movl	%r14d, %ecx
.LBB2_24:                               # %select.end
	leal	(%r11,%r11), %edx
	cmpl	%r8d, %edx
	sbbl	%esi, %esi
	movl	%esi, 192(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	cmpl	%r8d, %edx
	movl	%r8d, %ebx
	cmovbl	%esi, %ebx
	movl	%ecx, %esi
	movq	144(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	cmovsl	%ebp, %r14d
	leal	(%rcx,%r14,2), %ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movl	168(%rsp), %ecx         # 4-byte Reload
	subl	%r14d, %ecx
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movq	208(%rsp), %rbp         # 8-byte Reload
	subl	%esi, %ebp
	addl	%esi, %esi
	movl	%esi, 96(%rsp)          # 4-byte Spill
	movl	192(%rsp), %esi         # 4-byte Reload
	andl	$1, %esi
	subl	%ebx, %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	leal	(%rdi,%rdi), %ecx
	orl	%esi, %ecx
	xorl	$1, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leal	(%rdx,%r11), %ebx
	cmpl	%r8d, %ebx
	setae	%dl
	movzbl	%dl, %edx
	movl	%r8d, %esi
	movl	$0, %r14d
	cmovbl	%r14d, %esi
	subl	%esi, %ebx
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	leal	(%rcx,%rdi), %esi
	addl	%edx, %esi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	leal	(%rbx,%r11), %edx
	cmpl	%r8d, %edx
	movl	%r8d, %ebx
	cmovbl	%r14d, %ebx
	setae	%cl
	movzbl	%cl, %ecx
	subl	%edx, %ebx
	movl	%ebx, 208(%rsp)         # 4-byte Spill
	leal	(%rsi,%rdi), %edx
	addl	%ecx, %edx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movl	%ebp, %r15d
	.align	16, 0x90
.LBB2_25:                               # %while.cond.182.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #       Child Loop BB2_28 Depth 3
                                        #     Child Loop BB2_44 Depth 2
	cmpb	$0, (%rsi)
	movl	%r12d, %ecx
	movl	%r15d, %r14d
	movq	%rsi, %rdx
	movq	%rsi, %rbx
	jne	.LBB2_31
	.align	16, 0x90
.LBB2_26:                               # %while.body.185
                                        #   Parent Loop BB2_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_28 Depth 3
	leaq	4(%rdx), %rbx
	cmpq	%r10, %rbx
	jbe	.LBB2_33
# BB#27:                                # %while.body.336.preheader
                                        #   in Loop: Header=BB2_26 Depth=2
	incq	%rdx
	.align	16, 0x90
.LBB2_28:                               # %while.body.336
                                        #   Parent Loop BB2_25 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %rbx
	movl	%ecx, %edx
	subl	%r11d, %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%edx, %ecx
	shrl	$31, %edx
	addl	%edi, %r14d
	addl	%edx, %r14d
	cmpq	%r10, %rbx
	jae	.LBB2_30
# BB#29:                                # %while.body.336.while.cond.332_crit_edge
                                        #   in Loop: Header=BB2_28 Depth=3
	leaq	1(%rbx), %rdx
	cmpb	$0, (%rbx)
	je	.LBB2_28
.LBB2_30:                               # %while.end.377
                                        #   in Loop: Header=BB2_26 Depth=2
	cmpq	%r10, %rbx
	jb	.LBB2_37
	jmp	.LBB2_31
	.align	16, 0x90
.LBB2_33:                               # %if.then.189
                                        #   in Loop: Header=BB2_26 Depth=2
	cmpb	$0, 1(%rdx)
	jne	.LBB2_42
# BB#34:                                # %if.then.192
                                        #   in Loop: Header=BB2_26 Depth=2
	cmpb	$0, 2(%rdx)
	jne	.LBB2_41
# BB#35:                                # %if.then.195
                                        #   in Loop: Header=BB2_26 Depth=2
	cmpb	$0, 3(%rdx)
	jne	.LBB2_38
# BB#36:                                # %if.then.198
                                        #   in Loop: Header=BB2_26 Depth=2
	addl	208(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	%r8d, %edx
	addl	%ecx, %edx
	shrl	$31, %ecx
	movq	160(%rsp), %rbp         # 8-byte Reload
	leal	(%r14,%rbp), %r14d
	addl	%ecx, %r14d
	cmpq	%r10, %rbx
	movl	%edx, %ecx
	jae	.LBB2_31
.LBB2_37:                               # %while.cond.182.backedge
                                        #   in Loop: Header=BB2_26 Depth=2
	cmpb	$0, (%rbx)
	movq	%rbx, %rdx
	je	.LBB2_26
	jmp	.LBB2_31
.LBB2_42:                               # %if.else.294
                                        #   in Loop: Header=BB2_25 Depth=1
	incq	%rdx
	subl	%r11d, %ecx
	movl	%ecx, %ebp
	sarl	$31, %ebp
	andl	%r8d, %ebp
	addl	%ecx, %ebp
	shrl	$31, %ecx
	addl	%edi, %r14d
	jmp	.LBB2_40
.LBB2_41:                               # %if.end.263
                                        #   in Loop: Header=BB2_25 Depth=1
	addq	$2, %rdx
	movq	56(%rsp), %rbx          # 8-byte Reload
	subl	%ebx, %ecx
	movl	%ecx, %ebp
	sarl	$31, %ebp
	andl	%r8d, %ebp
	addl	%ecx, %ebp
	shrl	$31, %ecx
	movq	48(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB2_39
.LBB2_38:                               # %if.end.232
                                        #   in Loop: Header=BB2_25 Depth=1
	addq	$3, %rdx
	movq	40(%rsp), %rbx          # 8-byte Reload
	subl	%ebx, %ecx
	movl	%ecx, %ebp
	sarl	$31, %ebp
	andl	%r8d, %ebp
	addl	%ecx, %ebp
	shrl	$31, %ecx
	movq	32(%rsp), %rbx          # 8-byte Reload
.LBB2_39:                               # %while.end.383
                                        #   in Loop: Header=BB2_25 Depth=1
	addl	%ebx, %r14d
.LBB2_40:                               # %while.end.383
                                        #   in Loop: Header=BB2_25 Depth=1
	addl	%ecx, %r14d
	movq	%rdx, %rbx
	movl	%ebp, %ecx
	.align	16, 0x90
.LBB2_31:                               # %while.end.383
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	248(%rsp), %rbp         # 8-byte Reload
	cmpq	%rbp, %rbx
	jae	.LBB2_32
# BB#43:                                # %for.cond.391.preheader
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	cmpq	%r10, %rbx
	movl	%r14d, %r15d
	movl	%ecx, %r12d
	jae	.LBB2_47
	.align	16, 0x90
.LBB2_44:                               # %land.rhs.394
                                        #   Parent Loop BB2_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rbx)
	je	.LBB2_45
# BB#46:                                # %do.body.398
                                        #   in Loop: Header=BB2_44 Depth=2
	subl	%r11d, %ecx
	movl	%ecx, %r12d
	sarl	$31, %r12d
	andl	%r8d, %r12d
	addl	%ecx, %r12d
	shrl	$31, %ecx
	addl	%edi, %r15d
	addl	%ecx, %r15d
	incq	%rbx
	cmpq	%r10, %rbx
	movl	%r12d, %ecx
	jb	.LBB2_44
	jmp	.LBB2_47
	.align	16, 0x90
.LBB2_45:                               #   in Loop: Header=BB2_25 Depth=1
	movl	%ecx, %r12d
.LBB2_47:                               # %for.end
                                        #   in Loop: Header=BB2_25 Depth=1
	movq	%r10, %rbp
	movl	96(%rsp), %ecx          # 4-byte Reload
	subl	%r14d, %ecx
	addl	%r15d, %ecx
	movl	244(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	256(%rsp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movl	136(%rsp), %edx         # 4-byte Reload
	callq	*200(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB2_242
# BB#48:                                # %if.end.443
                                        #   in Loop: Header=BB2_25 Depth=1
	cmpq	248(%rsp), %rbx         # 8-byte Folded Reload
	movq	%rbx, %rsi
	movq	%rbp, %r10
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	276(%rsp), %r8d         # 4-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
	jb	.LBB2_25
# BB#49:
	movq	%rbx, %rsi
	movl	168(%rsp), %ebx         # 4-byte Reload
	movq	248(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_126
.LBB2_78:                               # %for.cond.983.preheader
	movl	%edx, 184(%rsp)         # 4-byte Spill
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movl	$-2, 136(%rsp)          # 4-byte Folded Spill
	movq	%r15, %rbp
	movq	%r15, %rbx
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	208(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	168(%rsp), %r9d         # 4-byte Reload
	movl	%r9d, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	jmp	.LBB2_79
	.align	16, 0x90
.LBB2_123:                              # %if.end.1087
                                        #   in Loop: Header=BB2_79 Depth=1
	movb	(%rbx), %r8b
	subl	%esi, %r12d
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%r12d, %eax
	shrl	$31, %r12d
	movl	%r15d, %esi
	leal	(%r15,%rbp), %edx
	addl	%r12d, %edx
	subl	216(%rsp), %r13d        # 4-byte Folded Reload
	movl	%r13d, %ecx
	sarl	$31, %ecx
	andl	184(%rsp), %ecx         # 4-byte Folded Reload
	addl	%r13d, %ecx
	shrl	$31, %r13d
	movq	248(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %r9d
	movq	232(%rsp), %rdi         # 8-byte Reload
	leal	(%rbp,%rdi), %edi
	addl	%r13d, %edi
	movq	%rbx, %rbp
	leaq	1(%rbx), %rbx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movl	%eax, %r12d
	movl	%edi, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	%ecx, %r13d
	movb	%r8b, %cl
.LBB2_79:                               # %for.cond.983
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r14
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	movzbl	%cl, %r15d
	cmpl	136(%rsp), %r15d        # 4-byte Folded Reload
	je	.LBB2_121
# BB#80:                                # %if.then.987
                                        #   in Loop: Header=BB2_79 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	23112(%rax), %rax
	imulq	$664, %r15, %rcx        # imm = 0x298
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, 280(%rsp)         # 8-byte Spill
	movq	(%rax,%rcx), %rbp
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, %rbp
	je	.LBB2_81
# BB#118:                               # %if.else.1048
                                        #   in Loop: Header=BB2_79 Depth=1
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	movl	%r9d, %ebx
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %rbp
	je	.LBB2_119
# BB#120:                               # %if.then.1052
                                        #   in Loop: Header=BB2_79 Depth=1
	movl	$1, %ecx
	movq	280(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	256(%rsp), %rdx         # 8-byte Reload
	callq	*32(%rbp)
	testl	%eax, %eax
	movl	%r15d, %ecx
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movl	%ebx, %r9d
	movq	208(%rsp), %rsi         # 8-byte Reload
	jns	.LBB2_121
	jmp	.LBB2_242
.LBB2_81:                               # %if.then.997
                                        #   in Loop: Header=BB2_79 Depth=1
	movl	%r15d, %eax
	subl	112(%rsp), %eax         # 4-byte Folded Reload
	cmpl	108(%rsp), %eax         # 4-byte Folded Reload
	jae	.LBB2_110
# BB#82:                                # %if.then.1002
                                        #   in Loop: Header=BB2_79 Depth=1
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	$gx_dc_type_data_null, (%rax)
	movl	%r15d, %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	jmp	.LBB2_121
.LBB2_119:                              #   in Loop: Header=BB2_79 Depth=1
	movl	%r15d, %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	%ebx, %r9d
	movq	208(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB2_121
.LBB2_110:                              # %if.else.1004
                                        #   in Loop: Header=BB2_79 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	1852(%rax), %eax
	movq	%rsi, %rbp
	movl	%r9d, %ebx
	cmpl	$2, %eax
	je	.LBB2_115
# BB#111:                               # %if.else.1004
                                        #   in Loop: Header=BB2_79 Depth=1
	cmpl	$1, %eax
	jne	.LBB2_112
# BB#114:                               # %sw.bb.1015
                                        #   in Loop: Header=BB2_79 Depth=1
	movl	%r15d, %eax
	shrl	$4, %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	1784(%rcx,%rax,4), %eax
	movl	%eax, 296(%rsp)
	jmp	.LBB2_117
.LBB2_115:                              # %sw.bb.1026
                                        #   in Loop: Header=BB2_79 Depth=1
	cvtsi2ssl	%r15d, %xmm0
	movq	128(%rsp), %rax         # 8-byte Reload
	mulss	1848(%rax), %xmm0
	addss	1784(%rax), %xmm0
	jmp	.LBB2_116
.LBB2_112:                              # %if.else.1004
                                        #   in Loop: Header=BB2_79 Depth=1
	testl	%eax, %eax
	jne	.LBB2_117
# BB#113:                               # %sw.bb.1008
                                        #   in Loop: Header=BB2_79 Depth=1
	cvtsi2ssl	%r15d, %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
.LBB2_116:                              # %sw.epilog.1041
                                        #   in Loop: Header=BB2_79 Depth=1
	movss	%xmm0, 296(%rsp)
.LBB2_117:                              # %sw.epilog.1041
                                        #   in Loop: Header=BB2_79 Depth=1
	movl	$1, %r9d
	leaq	288(%rsp), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	280(%rsp), %rdx         # 8-byte Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %r8          # 8-byte Reload
	callq	*64(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	movl	%r15d, %ecx
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movl	%ebx, %r9d
	movq	%rbp, %rsi
	js	.LBB2_242
	.align	16, 0x90
.LBB2_121:                              # %if.end.1064
                                        #   in Loop: Header=BB2_79 Depth=1
	movq	160(%rsp), %r15         # 8-byte Reload
	movl	%r15d, %ecx
	subl	%esi, %ecx
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	subl	%r9d, %r8d
	movl	244(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	256(%rsp), %rdi         # 8-byte Reload
	movl	%r9d, %edx
	movq	152(%rsp), %r9          # 8-byte Reload
	callq	*200(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	movq	176(%rsp), %rdx         # 8-byte Reload
	movq	264(%rsp), %rsi         # 8-byte Reload
	movl	276(%rsp), %edi         # 4-byte Reload
	movq	224(%rsp), %rbp         # 8-byte Reload
	movq	%r14, %rbx
	js	.LBB2_242
# BB#122:                               # %if.end.1077
                                        #   in Loop: Header=BB2_79 Depth=1
	movl	$1, %r14d
	cmpq	%rdx, %rbx
	jb	.LBB2_123
	jmp	.LBB2_244
.LBB2_19:                               # %if.end.85
	cmpl	$1, %ecx
	jne	.LBB2_20
# BB#51:                                # %if.then.455
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movl	1308(%rbx), %edx
	movl	%edx, %esi
	negl	%esi
	movq	152(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movl	%edx, %ecx
	cmovsl	%esi, %ecx
	xorps	%xmm0, %xmm0
	ucomiss	1124(%rbx), %xmm0
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	ja	.LBB2_53
# BB#52:                                # %select.mid1433
	movl	%edx, %esi
.LBB2_53:                               # %select.end1432
	movq	152(%rsp), %rdx         # 8-byte Reload
	leal	(%rdx,%rcx,2), %edx
	movl	%edx, 160(%rsp)         # 4-byte Spill
	movq	208(%rsp), %r14         # 8-byte Reload
	subl	%ecx, %r14d
	movl	168(%rsp), %ebx         # 4-byte Reload
	subl	%esi, %ebx
	addl	%esi, %esi
	movl	%esi, 168(%rsp)         # 4-byte Spill
	movq	%r15, %rsi
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movl	184(%rsp), %edx         # 4-byte Reload
	movq	232(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB2_54:                               # %for.cond.487.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_55 Depth 2
                                        #     Child Loop BB2_61 Depth 2
	cmpq	%r10, %rsi
	movq	%rsi, %r15
	movl	%r13d, %ecx
	jae	.LBB2_58
	.align	16, 0x90
.LBB2_55:                               # %land.rhs.490
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r15)
	jne	.LBB2_56
# BB#57:                                # %do.body.495
                                        #   in Loop: Header=BB2_55 Depth=2
	subl	%r9d, %r13d
	movl	%r13d, %ecx
	sarl	$31, %ecx
	andl	%edx, %ecx
	addl	%r13d, %ecx
	shrl	$31, %r13d
	addl	%ebp, %ebx
	addl	%r13d, %ebx
	incq	%r15
	cmpq	%r10, %r15
	movl	%ecx, %r13d
	jb	.LBB2_55
	jmp	.LBB2_58
.LBB2_56:                               #   in Loop: Header=BB2_54 Depth=1
	movl	%r13d, %ecx
.LBB2_58:                               # %for.end.532
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	248(%rsp), %rbp         # 8-byte Reload
	cmpq	%rbp, %r15
	jae	.LBB2_59
# BB#60:                                # %for.cond.540.preheader
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	cmpq	%r10, %r15
	movl	%ebx, %eax
	movl	%eax, %esi
	movl	%ecx, %r13d
	movq	232(%rsp), %rax         # 8-byte Reload
	jae	.LBB2_64
	.align	16, 0x90
.LBB2_61:                               # %land.rhs.543
                                        #   Parent Loop BB2_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r15)
	je	.LBB2_62
# BB#63:                                # %do.body.548
                                        #   in Loop: Header=BB2_61 Depth=2
	subl	%r9d, %ecx
	movl	%ecx, %r13d
	sarl	$31, %r13d
	andl	%edx, %r13d
	addl	%ecx, %r13d
	shrl	$31, %ecx
	addl	%eax, %ebx
	addl	%ecx, %ebx
	incq	%r15
	cmpq	%r10, %r15
	movl	%r13d, %ecx
	jb	.LBB2_61
	jmp	.LBB2_64
.LBB2_62:                               #   in Loop: Header=BB2_54 Depth=1
	movl	%ecx, %r13d
.LBB2_64:                               # %for.end.585
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	%r10, %rbp
	movl	168(%rsp), %r8d         # 4-byte Reload
	movl	%esi, %edx
	movl	%edx, 136(%rsp)         # 4-byte Spill
	subl	%edx, %r8d
	addl	%ebx, %r8d
	movl	244(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%ecx, %ecx
	movq	256(%rsp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movl	160(%rsp), %r9d         # 4-byte Reload
	callq	*200(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB2_242
# BB#65:                                # %if.end.595
                                        #   in Loop: Header=BB2_54 Depth=1
	cmpq	248(%rsp), %r15         # 8-byte Folded Reload
	movq	%r15, %rsi
	movq	%rbp, %r10
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	276(%rsp), %r8d         # 4-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
	movl	184(%rsp), %edx         # 4-byte Reload
	movq	232(%rsp), %rbp         # 8-byte Reload
	jb	.LBB2_54
# BB#66:
	movq	%r15, %rsi
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %r15d
	movq	248(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_127
.LBB2_156:                              # %if.else.1364
	movl	1308(%rbx), %r13d
	cmpl	$0, 1312(%rbx)
	js	.LBB2_158
# BB#157:
	movb	%cl, 144(%rsp)          # 1-byte Spill
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	jmp	.LBB2_159
.LBB2_84:
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	208(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rdi
	movl	%edi, %r14d
	movl	168(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, 136(%rsp)         # 4-byte Spill
	movl	%edi, %r15d
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rbp         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
	jmp	.LBB2_127
.LBB2_20:                               # %for.cond.608.preheader
	movl	%eax, 248(%rsp)         # 4-byte Spill
	cmpl	$0, 160(%rsp)           # 4-byte Folded Reload
	je	.LBB2_21
# BB#67:
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	%r15, %r14
	movq	%r15, 80(%rsp)          # 8-byte Spill
.LBB2_68:                               # %land.rhs.611.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_69 Depth 2
                                        #     Child Loop BB2_71 Depth 2
	movl	%r13d, %ebp
	movl	%r12d, %ebx
	movq	%r14, %rax
	.align	16, 0x90
.LBB2_69:                               # %land.rhs.611
                                        #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rax)
	jne	.LBB2_70
# BB#73:                                # %do.body.616
                                        #   in Loop: Header=BB2_69 Depth=2
	subl	%r11d, %ebx
	movl	%ebx, %ecx
	sarl	$31, %ecx
	andl	%r8d, %ecx
	addl	%ebx, %ecx
	shrl	$31, %ebx
	movq	208(%rsp), %rdx         # 8-byte Reload
	addl	%edi, %edx
	addl	%ebx, %edx
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	subl	%r9d, %ebp
	movl	%ebp, %edx
	sarl	$31, %edx
	andl	184(%rsp), %edx         # 4-byte Folded Reload
	addl	%ebp, %edx
	shrl	$31, %ebp
	movq	232(%rsp), %rbx         # 8-byte Reload
	movl	168(%rsp), %esi         # 4-byte Reload
	addl	%ebx, %esi
	addl	%ebp, %esi
	movl	%esi, 168(%rsp)         # 4-byte Spill
	incq	%rax
	cmpq	%r10, %rax
	movl	%edx, %ebp
	movl	%ecx, %ebx
	jb	.LBB2_69
	jmp	.LBB2_74
.LBB2_70:                               # %do.body.693.preheader
                                        #   in Loop: Header=BB2_68 Depth=1
	leaq	1(%rax), %r15
	movq	%r14, %rcx
.LBB2_71:                               # %do.body.693
                                        #   Parent Loop BB2_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r14
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	%r8d, 276(%rsp)         # 4-byte Spill
	movl	168(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edx
	movq	208(%rsp), %rsi         # 8-byte Reload
	subl	%r11d, %ebx
	movq	%r11, %r13
	movl	%ebx, %ecx
	shrl	$31, %ecx
	leal	(%rdi,%rsi), %eax
	movq	%rdi, %r12
	addl	%ecx, %eax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	subl	%r9d, %ebp
	movl	%ebp, %edi
	shrl	$31, %edi
	movq	232(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rdx), %r8d
	addl	%edi, %r8d
	movl	%r8d, 168(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	subl	%esi, %ecx
	subl	%edx, %r8d
	movl	244(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	256(%rsp), %rdi         # 8-byte Reload
	movq	152(%rsp), %r9          # 8-byte Reload
	callq	*200(%rsp)              # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB2_72
# BB#75:                                # %if.end.782
                                        #   in Loop: Header=BB2_71 Depth=2
	movl	$1, %r14d
	movq	176(%rsp), %r10         # 8-byte Reload
	cmpq	%r10, %r15
	movq	%r13, %r11
	movl	276(%rsp), %r8d         # 4-byte Reload
	movq	%r12, %rdi
	jae	.LBB2_244
# BB#76:                                # %do.cond.788
                                        #   in Loop: Header=BB2_71 Depth=2
	movl	%eax, 248(%rsp)         # 4-byte Spill
	movl	%ebx, %r12d
	sarl	$31, %r12d
	andl	%r8d, %r12d
	addl	%ebx, %r12d
	movl	%ebp, %r13d
	sarl	$31, %r13d
	andl	184(%rsp), %r13d        # 4-byte Folded Reload
	addl	%ebp, %r13d
	movq	192(%rsp), %rax         # 8-byte Reload
	incq	%rax
	cmpb	$0, (%r15)
	movq	%r15, %r14
	leaq	1(%r15), %r15
	movq	%rax, %rcx
	movl	%r12d, %ebx
	movl	%r13d, %ebp
	movl	216(%rsp), %r9d         # 4-byte Reload
	jne	.LBB2_71
	jmp	.LBB2_68
.LBB2_158:                              # %select.mid1479
	movb	%cl, 144(%rsp)          # 1-byte Spill
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	negl	%r13d
.LBB2_159:                              # %select.end1478
	leal	(%r11,%r11), %esi
	cmpl	%r8d, %esi
	sbbl	%r9d, %r9d
	xorl	%eax, %eax
	cmpl	%r8d, %esi
	movl	1512(%rbx), %ecx
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	movl	1516(%rbx), %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	movslq	1272(%rbx), %rcx
	movl	%r8d, %edi
	cmovbl	%eax, %edi
	addq	$127, %rcx
	shrq	$8, %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movslq	1280(%rbx), %rcx
	addq	$127, %rcx
	shrq	$8, %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %edx
	subl	%r13d, %edx
	addl	$127, %edx
	leal	127(%rcx,%r13), %ebp
	subl	%edi, %esi
	leal	(%rsi,%r11), %r14d
	cmpl	%r8d, %r14d
	setae	%cl
	movl	%r8d, %edi
	cmovbl	%eax, %edi
	cmpq	%r15, 248(%rsp)         # 8-byte Folded Reload
	jbe	.LBB2_160
# BB#161:                               # %skf.preheader
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	movq	1200(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addl	%r13d, %r13d
	movq	%r13, 208(%rsp)         # 8-byte Spill
	andl	$1, %r9d
	movq	224(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rax), %esi
	orl	%r9d, %esi
	movq	%rax, %r9
	xorl	$1, %esi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movzbl	%cl, %eax
	subl	%edi, %r14d
	movq	%r14, 88(%rsp)          # 8-byte Spill
	leal	(%rsi,%r9), %esi
	addl	%eax, %esi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	leal	(%r14,%r11), %eax
	xorl	%edi, %edi
	cmpl	%r8d, %eax
	movl	%r8d, %ecx
	cmovbl	%edi, %ecx
	setae	%bl
	movzbl	%bl, %edi
	subl	%eax, %ecx
	movl	%ecx, 232(%rsp)         # 4-byte Spill
	leal	(%r9,%rsi), %eax
	addl	%edi, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	%r15, 192(%rsp)         # 8-byte Spill
	movq	%r15, %r13
	xorl	%eax, %eax
	movb	119(%rsp), %bl          # 1-byte Reload
	movb	144(%rsp), %cl          # 1-byte Reload
	jmp	.LBB2_162
.LBB2_245:                              # %do.body.1815
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	movb	(%rsi), %cl
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	subl	%r11d, %r12d
	movl	%r12d, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%r12d, %esi
	shrl	$31, %r12d
	addl	%r9d, %ebp
	addl	%r12d, %ebp
	movl	%esi, %r12d
	movq	80(%rsp), %r15          # 8-byte Reload
.LBB2_162:                              # %skf.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_163 Depth 2
	addq	$2, %r13
	.align	16, 0x90
.LBB2_163:                              # %skf
                                        #   Parent Loop BB2_162 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%r13), %rdi
	movzbl	%cl, %r14d
	movzbl	-2(%r13), %esi
	cmpl	%r14d, %esi
	jne	.LBB2_164
# BB#165:                               # %if.then.1486
                                        #   in Loop: Header=BB2_163 Depth=2
	movzbl	%cl, %esi
	movzbl	(%rdi), %edi
	cmpl	%esi, %edi
	jne	.LBB2_173
# BB#166:                               # %if.then.1492
                                        #   in Loop: Header=BB2_163 Depth=2
	movzbl	(%r13), %edi
	cmpl	%esi, %edi
	jne	.LBB2_172
# BB#167:                               # %if.then.1498
                                        #   in Loop: Header=BB2_163 Depth=2
	movzbl	1(%r13), %edi
	cmpl	%esi, %edi
	jne	.LBB2_170
# BB#168:                               # %do.body.1506
                                        #   in Loop: Header=BB2_163 Depth=2
	movl	%r12d, %esi
	addl	232(%rsp), %esi         # 4-byte Folded Reload
	movl	%esi, %r12d
	sarl	$31, %r12d
	andl	%r8d, %r12d
	addl	%esi, %r12d
	shrl	$31, %esi
	movq	216(%rsp), %rdi         # 8-byte Reload
	leal	(%rbp,%rdi), %ebp
	addl	%esi, %ebp
	leaq	4(%r13), %rsi
	addq	$2, %r13
	cmpq	%r10, %r13
	movq	%rsi, %r13
	jb	.LBB2_163
	jmp	.LBB2_169
.LBB2_164:                              #   in Loop: Header=BB2_162 Depth=1
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	jmp	.LBB2_175
.LBB2_173:                              # %if.else.1603
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	%r15, 80(%rsp)          # 8-byte Spill
	subl	%r11d, %r12d
	movl	%r12d, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%r12d, %esi
	shrl	$31, %r12d
	addl	%r9d, %ebp
	jmp	.LBB2_174
.LBB2_172:                              # %if.else.1571
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	%r15, 80(%rsp)          # 8-byte Spill
	incq	%r13
	movq	136(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %r12d
	movl	%r12d, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%r12d, %esi
	shrl	$31, %r12d
	movq	96(%rsp), %rdi          # 8-byte Reload
	addl	%edi, %ebp
	jmp	.LBB2_174
.LBB2_170:                              # %do.body.1541
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	%r15, 80(%rsp)          # 8-byte Spill
	addq	$2, %r13
	movq	88(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %r12d
	movl	%r12d, %esi
	sarl	$31, %esi
	andl	%r8d, %esi
	addl	%r12d, %esi
	shrl	$31, %r12d
	movq	56(%rsp), %rdi          # 8-byte Reload
	addl	%edi, %ebp
.LBB2_174:                              # %if.end.1643
                                        #   in Loop: Header=BB2_162 Depth=1
	addl	%r12d, %ebp
	movl	%esi, %r12d
.LBB2_175:                              # %if.end.1643
                                        #   in Loop: Header=BB2_162 Depth=1
	sarl	$8, %edx
	movl	%ebp, %r15d
	sarl	$8, %r15d
	movl	%r15d, %ebx
	subl	%edx, %ebx
	jle	.LBB2_177
# BB#176:                               #   in Loop: Header=BB2_162 Depth=1
	movb	%cl, %dil
	movl	%edx, %r15d
	jmp	.LBB2_180
.LBB2_177:                              # %if.then.1652
                                        #   in Loop: Header=BB2_162 Depth=1
	je	.LBB2_178
# BB#179:                               # %if.end.1656
                                        #   in Loop: Header=BB2_162 Depth=1
	movb	%cl, %dil
	negl	%ebx
.LBB2_180:                              # %if.end.1659
                                        #   in Loop: Header=BB2_162 Depth=1
	leal	(%rbx,%r15), %edx
	movq	184(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %r15d
	jl	.LBB2_182
# BB#181:                               # %if.end.1659
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	168(%rsp), %rcx         # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB2_183
.LBB2_182:                              # %if.then.1666
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	%r15d, %esi
	movq	184(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %esi
	cmovll	%ecx, %r15d
	movl	$0, %ecx
	cmovgel	%ecx, %esi
	addl	%ebx, %esi
	movq	168(%rsp), %rbx         # 8-byte Reload
	subl	%edx, %ebx
	cmovgel	%ecx, %ebx
	addl	%esi, %ebx
	testl	%ebx, %ebx
	jle	.LBB2_178
.LBB2_183:                              # %if.end.1683
                                        #   in Loop: Header=BB2_162 Depth=1
	cmpl	$255, %r14d
	jne	.LBB2_184
# BB#189:                               # %sw.bb.1696
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	24440(%rax), %rax
.LBB2_187:                              # %if.end.1688
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB2_190
# BB#188:                               # %if.end.1693
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	8(%rax), %r9
	movq	256(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movl	152(%rsp), %edx         # 4-byte Reload
	movl	%ebx, %ecx
	movl	160(%rsp), %r8d         # 4-byte Reload
	callq	*48(%rsp)               # 8-byte Folded Reload
	jmp	.LBB2_207
.LBB2_184:                              # %if.end.1683
                                        #   in Loop: Header=BB2_162 Depth=1
	testl	%r14d, %r14d
	jne	.LBB2_190
# BB#185:                               # %sw.bb.1685
                                        #   in Loop: Header=BB2_162 Depth=1
	cmpb	$0, 119(%rsp)           # 1-byte Folded Reload
	movl	276(%rsp), %r8d         # 4-byte Reload
	movq	224(%rsp), %r9          # 8-byte Reload
	je	.LBB2_186
.LBB2_178:                              #   in Loop: Header=BB2_162 Depth=1
	movb	119(%rsp), %bl          # 1-byte Reload
	movl	200(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB2_208
.LBB2_190:                              # %ht
                                        #   in Loop: Header=BB2_162 Depth=1
	cmpl	200(%rsp), %r14d        # 4-byte Folded Reload
	je	.LBB2_206
# BB#191:                               # %do.body.1711
                                        #   in Loop: Header=BB2_162 Depth=1
	movzbl	%dil, %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movq	23112(%rcx), %rcx
	imulq	$664, %rax, %rdx        # imm = 0x298
	leaq	(%rcx,%rdx), %rsi
	movq	%rsi, 280(%rsp)         # 8-byte Spill
	movq	(%rcx,%rdx), %r8
	movl	$gx_dc_type_data_none, %ecx
	cmpq	%rcx, %r8
	je	.LBB2_192
# BB#202:                               # %if.else.1770
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %r8
	je	.LBB2_203
# BB#204:                               # %if.then.1774
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	$1, %ecx
	movq	280(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	256(%rsp), %rdx         # 8-byte Reload
	callq	*32(%r8)
	jmp	.LBB2_205
.LBB2_192:                              # %if.then.1719
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	%r14d, %ecx
	subl	112(%rsp), %ecx         # 4-byte Folded Reload
	cmpl	108(%rsp), %ecx         # 4-byte Folded Reload
	jae	.LBB2_194
# BB#193:                               # %if.then.1724
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	$gx_dc_type_data_null, (%rax)
	movl	%r14d, 200(%rsp)        # 4-byte Spill
	jmp	.LBB2_206
.LBB2_186:                              # %if.end.1688
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	24432(%rax), %rax
	jmp	.LBB2_187
.LBB2_203:                              #   in Loop: Header=BB2_162 Depth=1
	movl	%r14d, 200(%rsp)        # 4-byte Spill
	jmp	.LBB2_206
.LBB2_194:                              # %if.else.1726
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	1852(%rcx), %ecx
	cmpl	$2, %ecx
	je	.LBB2_199
# BB#195:                               # %if.else.1726
                                        #   in Loop: Header=BB2_162 Depth=1
	cmpl	$1, %ecx
	jne	.LBB2_196
# BB#198:                               # %sw.bb.1737
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	%r14d, %eax
	shrl	$4, %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	1784(%rcx,%rax,4), %eax
	movl	%eax, 296(%rsp)
	jmp	.LBB2_201
.LBB2_199:                              # %sw.bb.1748
                                        #   in Loop: Header=BB2_162 Depth=1
	cvtsi2ssl	%eax, %xmm0
	movq	128(%rsp), %rax         # 8-byte Reload
	mulss	1848(%rax), %xmm0
	addss	1784(%rax), %xmm0
	jmp	.LBB2_200
.LBB2_196:                              # %if.else.1726
                                        #   in Loop: Header=BB2_162 Depth=1
	testl	%ecx, %ecx
	jne	.LBB2_201
# BB#197:                               # %sw.bb.1730
                                        #   in Loop: Header=BB2_162 Depth=1
	cvtsi2ssl	%eax, %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
.LBB2_200:                              # %sw.epilog.1763
                                        #   in Loop: Header=BB2_162 Depth=1
	movss	%xmm0, 296(%rsp)
.LBB2_201:                              # %sw.epilog.1763
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	$1, %r9d
	leaq	288(%rsp), %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	280(%rsp), %rdx         # 8-byte Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %r8          # 8-byte Reload
	callq	*64(%rsp)               # 8-byte Folded Reload
.LBB2_205:                              # %if.then.1774
                                        #   in Loop: Header=BB2_162 Depth=1
	testl	%eax, %eax
	movl	%r14d, 200(%rsp)        # 4-byte Spill
	js	.LBB2_242
.LBB2_206:                              # %if.end.1787
                                        #   in Loop: Header=BB2_162 Depth=1
	movq	280(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	movl	244(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movl	%r15d, %esi
	movl	152(%rsp), %edx         # 4-byte Reload
	movl	%ebx, %ecx
	movl	160(%rsp), %r8d         # 4-byte Reload
	movq	256(%rsp), %r9          # 8-byte Reload
	callq	*40(%rax)
.LBB2_207:                              # %sw.epilog.1794
                                        #   in Loop: Header=BB2_162 Depth=1
	testl	%eax, %eax
	movq	176(%rsp), %r10         # 8-byte Reload
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	276(%rsp), %r8d         # 4-byte Reload
	movq	224(%rsp), %r9          # 8-byte Reload
	movb	119(%rsp), %bl          # 1-byte Reload
	movl	200(%rsp), %ecx         # 4-byte Reload
	js	.LBB2_242
.LBB2_208:                              # %mt
                                        #   in Loop: Header=BB2_162 Depth=1
	movl	%ebp, %edx
	movq	208(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %edx
	leaq	-1(%r13), %rsi
	cmpq	248(%rsp), %r13         # 8-byte Folded Reload
	jbe	.LBB2_245
# BB#209:
	movb	%bl, 119(%rsp)          # 1-byte Spill
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rbx         # 8-byte Reload
	movq	80(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_210
.LBB2_160:
	movq	%r15, 192(%rsp)         # 8-byte Spill
	movq	224(%rsp), %r9          # 8-byte Reload
	jmp	.LBB2_210
.LBB2_169:
	movb	%bl, 119(%rsp)          # 1-byte Spill
	movq	128(%rsp), %rbx         # 8-byte Reload
.LBB2_210:                              # %if.end.1851
	movq	248(%rsp), %rcx         # 8-byte Reload
	movb	(%rcx), %cl
	movzbl	%cl, %esi
	cmpb	$0, 119(%rsp)           # 1-byte Folded Reload
	je	.LBB2_213
# BB#211:                               # %if.end.1851
	testb	%cl, %cl
	jne	.LBB2_213
# BB#212:
	movl	%eax, 248(%rsp)         # 4-byte Spill
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	jmp	.LBB2_241
.LBB2_213:                              # %if.then.1857
	movq	248(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %r10d
	imull	%r10d, %r9d
	addl	%r9d, %ebp
	jmp	.LBB2_214
.LBB2_216:                              # %if.then.1898
                                        #   in Loop: Header=BB2_214 Depth=1
	incl	%ebp
	addl	%r8d, %r12d
	.align	16, 0x90
.LBB2_214:                              # %while.cond.1882
                                        # =>This Inner Loop Header: Depth=1
	testl	%r10d, %r10d
	je	.LBB2_217
# BB#215:                               # %while.body.1885
                                        #   in Loop: Header=BB2_214 Depth=1
	decl	%r10d
	subl	%r11d, %r12d
	jns	.LBB2_214
	jmp	.LBB2_216
.LBB2_217:                              # %while.end.1911
	movq	%r15, 80(%rsp)          # 8-byte Spill
	sarl	$8, %edx
	sarl	$8, %ebp
	movl	%ebp, %r15d
	subl	%edx, %r15d
	jle	.LBB2_219
# BB#218:
	movl	%edx, %ebp
	jmp	.LBB2_222
.LBB2_32:
	movl	%r14d, %r15d
	movl	%ecx, %r12d
	movl	168(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB2_126
.LBB2_21:
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	%r15, 192(%rsp)         # 8-byte Spill
	movq	%r15, 80(%rsp)          # 8-byte Spill
	jmp	.LBB2_241
.LBB2_74:
	movq	%r14, 192(%rsp)         # 8-byte Spill
	jmp	.LBB2_241
.LBB2_59:
	movl	%ebx, %r13d
	movl	%r13d, 136(%rsp)        # 4-byte Spill
	movq	208(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r15d
	movl	%r13d, %ebx
	movl	%ecx, %r13d
	jmp	.LBB2_127
.LBB2_219:                              # %if.then.1921
	je	.LBB2_220
# BB#221:                               # %if.end.1925
	negl	%r15d
.LBB2_222:                              # %if.end.1928
	leal	(%r15,%rbp), %edx
	movq	184(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %ebp
	jl	.LBB2_224
# BB#223:                               # %if.end.1928
	movq	168(%rsp), %rcx         # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB2_225
.LBB2_224:                              # %if.then.1935
	xorl	%r8d, %r8d
	movl	%ebp, %edi
	movq	184(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edi
	cmovll	%ecx, %ebp
	cmovgel	%r8d, %edi
	addl	%r15d, %edi
	movq	168(%rsp), %rcx         # 8-byte Reload
	subl	%edx, %ecx
	cmovgel	%r8d, %ecx
	addl	%edi, %ecx
	testl	%ecx, %ecx
	movl	%ecx, %r15d
	jle	.LBB2_220
.LBB2_225:                              # %do.body.1953
	movq	23112(%rbx), %rax
	imulq	$664, %rsi, %rdx        # imm = 0x298
	leaq	(%rax,%rdx), %r14
	movq	(%rax,%rdx), %rax
	movl	$gx_dc_type_data_none, %edx
	cmpq	%rdx, %rax
	je	.LBB2_226
# BB#236:                               # %if.else.2012
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	movq	256(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_239
# BB#237:                               # %if.then.2016
	movl	$1, %ecx
	movq	%r14, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	*32(%rax)
	jmp	.LBB2_238
.LBB2_220:
	movl	%eax, 248(%rsp)         # 4-byte Spill
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	jmp	.LBB2_241
.LBB2_124:                              # %if.end.894.last.1162.loopexit1269_crit_edge
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	decq	%rdx
	movq	%rdx, %rsi
	movl	%r15d, %r14d
	movl	%ebx, 136(%rsp)         # 4-byte Spill
.LBB2_125:                              # %last.1162
	movq	176(%rsp), %r10         # 8-byte Reload
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	276(%rsp), %r8d         # 4-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rbp         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
.LBB2_126:                              # %last.1162
	movl	184(%rsp), %edx         # 4-byte Reload
.LBB2_127:                              # %last.1162
	cmpq	%r10, %rbp
	jae	.LBB2_128
# BB#129:                               # %land.lhs.true.1165
	movl	%edx, %ecx
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movb	(%rbp), %dl
	movzbl	%dl, %esi
	cmpb	$0, 119(%rsp)           # 1-byte Folded Reload
	je	.LBB2_131
# BB#130:                               # %land.lhs.true.1165
	testb	%dl, %dl
	je	.LBB2_240
.LBB2_131:                              # %if.then.1170
	cmpb	$0, 119(%rsp)           # 1-byte Folded Reload
	movl	%ecx, %edx
	jne	.LBB2_147
# BB#132:                               # %do.body.1173
	movl	%edx, 184(%rsp)         # 4-byte Spill
	movl	%r8d, %ebp
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	23112(%rax), %rax
	imulq	$664, %rsi, %rdx        # imm = 0x298
	movq	%rsi, %rcx
	leaq	(%rax,%rdx), %rsi
	movq	%rsi, 280(%rsp)         # 8-byte Spill
	movq	(%rax,%rdx), %r8
	movl	$gx_dc_type_data_none, %eax
	cmpq	%rax, %r8
	je	.LBB2_133
# BB#143:                               # %if.else.1232
	movq	%r11, 264(%rsp)         # 8-byte Spill
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %r8
	je	.LBB2_144
# BB#145:                               # %if.then.1236
	movl	$1, %ecx
	movq	280(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	256(%rsp), %rdx         # 8-byte Reload
	movq	%r10, 176(%rsp)         # 8-byte Spill
	callq	*32(%r8)
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	176(%rsp), %r10         # 8-byte Reload
	testl	%eax, %eax
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	%ebp, %r8d
	jmp	.LBB2_146
.LBB2_128:
	movl	%eax, 248(%rsp)         # 4-byte Spill
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	jmp	.LBB2_241
.LBB2_226:                              # %if.then.1961
	movl	%esi, %eax
	subl	112(%rsp), %eax         # 4-byte Folded Reload
	cmpl	108(%rsp), %eax         # 4-byte Folded Reload
	jae	.LBB2_228
# BB#227:                               # %if.then.1966
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	$gx_dc_type_data_null, (%r14)
	movq	256(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB2_239
.LBB2_133:                              # %if.then.1181
	movl	%ecx, %eax
	subl	112(%rsp), %eax         # 4-byte Folded Reload
	cmpl	108(%rsp), %eax         # 4-byte Folded Reload
	movl	%ebp, %r8d
	movl	184(%rsp), %edx         # 4-byte Reload
	jae	.LBB2_135
# BB#134:                               # %if.then.1186
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	$gx_dc_type_data_null, (%rax)
	movq	248(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB2_147
.LBB2_72:
	movq	%r14, 192(%rsp)         # 8-byte Spill
	jmp	.LBB2_242
.LBB2_228:                              # %if.else.1968
	movl	1852(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB2_233
# BB#229:                               # %if.else.1968
	cmpl	$1, %eax
	jne	.LBB2_230
# BB#232:                               # %sw.bb.1979
	shrl	$4, %esi
	movl	1784(%rbx,%rsi,4), %eax
	movl	%eax, 296(%rsp)
	jmp	.LBB2_235
.LBB2_144:
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	%ebp, %r8d
	movq	248(%rsp), %rbp         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
	movl	184(%rsp), %edx         # 4-byte Reload
	jmp	.LBB2_147
.LBB2_135:                              # %if.else.1188
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	1852(%rax), %eax
	movl	%r8d, %ebp
	cmpl	$2, %eax
	je	.LBB2_140
# BB#136:                               # %if.else.1188
	cmpl	$1, %eax
	jne	.LBB2_137
# BB#139:                               # %sw.bb.1199
	movq	%r11, 264(%rsp)         # 8-byte Spill
	movq	%r10, 176(%rsp)         # 8-byte Spill
	shrl	$4, %ecx
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	1784(%rax,%rcx,4), %eax
	movl	%eax, 296(%rsp)
	jmp	.LBB2_142
.LBB2_233:                              # %sw.bb.1990
	cvtsi2ssl	%esi, %xmm0
	mulss	1848(%rbx), %xmm0
	addss	1784(%rbx), %xmm0
	jmp	.LBB2_234
.LBB2_230:                              # %if.else.1968
	testl	%eax, %eax
	jne	.LBB2_235
# BB#231:                               # %sw.bb.1972
	cvtsi2ssl	%esi, %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
.LBB2_234:                              # %sw.epilog.2005
	movss	%xmm0, 296(%rsp)
.LBB2_235:                              # %sw.epilog.2005
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	leaq	288(%rsp), %rdi
	movl	$1, %r9d
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %r8
	callq	*64(%rsp)               # 8-byte Folded Reload
.LBB2_238:                              # %if.then.2016
	testl	%eax, %eax
	js	.LBB2_242
.LBB2_239:                              # %do.end.2027
	movq	(%r14), %rax
	movl	244(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	152(%rsp), %edx         # 4-byte Reload
	movl	%r15d, %ecx
	movl	160(%rsp), %r8d         # 4-byte Reload
	movq	%rbx, %r9
	callq	*40(%rax)
	jmp	.LBB2_240
.LBB2_140:                              # %sw.bb.1210
	movq	%r11, 264(%rsp)         # 8-byte Spill
	movq	%r10, 176(%rsp)         # 8-byte Spill
	cvtsi2ssl	%ecx, %xmm0
	movq	128(%rsp), %rax         # 8-byte Reload
	mulss	1848(%rax), %xmm0
	addss	1784(%rax), %xmm0
	jmp	.LBB2_141
.LBB2_137:                              # %if.else.1188
	movq	%r11, 264(%rsp)         # 8-byte Spill
	movq	%r10, 176(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB2_142
# BB#138:                               # %sw.bb.1192
	cvtsi2ssl	%ecx, %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
.LBB2_141:                              # %sw.epilog.1225
	movss	%xmm0, 296(%rsp)
.LBB2_142:                              # %sw.epilog.1225
	leaq	288(%rsp), %rdi
	movl	$1, %r9d
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	280(%rsp), %rdx         # 8-byte Reload
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %r8          # 8-byte Reload
	callq	*64(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	movq	176(%rsp), %r10         # 8-byte Reload
	movq	264(%rsp), %r11         # 8-byte Reload
	movl	%ebp, %r8d
	movq	224(%rsp), %rdi         # 8-byte Reload
.LBB2_146:                              # %if.then.1236
	movq	248(%rsp), %rbp         # 8-byte Reload
	movl	216(%rsp), %r9d         # 4-byte Reload
	movl	184(%rsp), %edx         # 4-byte Reload
	js	.LBB2_242
.LBB2_147:                              # %do.body.1249
	subq	%rbp, %r10
	imull	%r10d, %edi
	addl	%edi, %r15d
	movl	%r10d, %eax
	movq	232(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB2_148
.LBB2_150:                              # %if.then.1280
                                        #   in Loop: Header=BB2_148 Depth=1
	incl	%r15d
	addl	%r8d, %r12d
	.align	16, 0x90
.LBB2_148:                              # %while.cond.1265
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	je	.LBB2_151
# BB#149:                               # %while.body.1267
                                        #   in Loop: Header=BB2_148 Depth=1
	decl	%eax
	subl	%r11d, %r12d
	jns	.LBB2_148
	jmp	.LBB2_150
.LBB2_151:                              # %while.end.1293
	movl	%r10d, %eax
	imull	%ecx, %eax
	addl	%eax, %ebx
	jmp	.LBB2_152
.LBB2_154:                              # %if.then.1332
                                        #   in Loop: Header=BB2_152 Depth=1
	incl	%ebx
	addl	%edx, %r13d
	.align	16, 0x90
.LBB2_152:                              # %while.cond.1316
                                        # =>This Inner Loop Header: Depth=1
	testl	%r10d, %r10d
	je	.LBB2_155
# BB#153:                               # %while.body.1319
                                        #   in Loop: Header=BB2_152 Depth=1
	decl	%r10d
	subl	%r9d, %r13d
	jns	.LBB2_152
	jmp	.LBB2_154
.LBB2_155:                              # %while.end.1345
	subl	%r14d, %r15d
	movl	136(%rsp), %edx         # 4-byte Reload
	subl	%edx, %ebx
	movl	244(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	256(%rsp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movq	152(%rsp), %r9          # 8-byte Reload
	callq	*200(%rsp)              # 8-byte Folded Reload
.LBB2_240:                              # %if.end.2047
	movl	%eax, 248(%rsp)         # 4-byte Spill
.LBB2_241:                              # %if.end.2047
	movl	$1, %r14d
	movl	248(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jns	.LBB2_244
.LBB2_242:                              # %err
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	192(%rsp), %rdx         # 8-byte Reload
	subl	%ecx, %edx
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	%edx, 1348(%rcx)
	movl	$0, 1352(%rcx)
.LBB2_243:                              # %cleanup.2059
	movl	%eax, %r14d
.LBB2_244:                              # %cleanup.2059
	movl	%r14d, %eax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_render_mono, .Lfunc_end2-image_render_mono
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
