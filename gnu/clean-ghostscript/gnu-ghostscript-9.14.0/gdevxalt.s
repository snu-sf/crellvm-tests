	.text
	.file	"gdevxalt.bc"
	.align	16, 0x90
	.type	x_cmyk_alt_map_color,@function
x_cmyk_alt_map_color:                   # @x_cmyk_alt_map_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdx, %r8
	movzwl	108(%rdi), %r10d
	shrl	$2, %r10d
	movl	$1, %edi
	movb	%r10b, %cl
	shll	%cl, %edi
	decl	%edi
	xorl	%r9d, %r9d
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	idivl	%edi
	movl	%esi, %edx
	notl	%edx
	andl	%edi, %edx
	movq	%rsi, %r11
	movb	%r10b, %cl
	shrq	%cl, %r11
	andl	%edi, %r11d
	leal	(%r10,%r10), %ecx
	movq	%rsi, %rbx
	shrq	%cl, %rbx
	andl	%edi, %ebx
	leal	(%r10,%r10,2), %ecx
	shrq	%cl, %rsi
	andl	%edi, %esi
	movl	%edx, %ecx
	subl	%esi, %ecx
	cmovsl	%r9d, %ecx
	movzwl	%ax, %eax
	imull	%eax, %ecx
	movl	%edx, %esi
	subl	%ebx, %esi
	cmovsl	%r9d, %esi
	imull	%eax, %esi
	subl	%r11d, %edx
	movw	%cx, (%r8)
	movw	%si, 2(%r8)
	cmovsl	%r9d, %edx
	imull	%eax, %edx
	movw	%dx, 4(%r8)
	movl	$-1, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	x_cmyk_alt_map_color, .Lfunc_end0-x_cmyk_alt_map_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_mono_alt_map_color,@function
x_mono_alt_map_color:                   # @x_mono_alt_map_color
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$1, %rsi
	sbbw	%ax, %ax
	movw	%ax, 4(%rdx)
	movw	%ax, 2(%rdx)
	movw	%ax, (%rdx)
	movl	$-1, %eax
	retq
.Lfunc_end1:
	.size	x_mono_alt_map_color, .Lfunc_end1-x_mono_alt_map_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_gray_alt_map_color,@function
x_gray_alt_map_color:                   # @x_gray_alt_map_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	movl	112(%rdi), %esi
	xorl	%edx, %edx
	divq	%rsi
	movw	%ax, 4(%rcx)
	movw	%ax, 2(%rcx)
	movw	%ax, (%rcx)
	movl	$-1, %eax
	retq
.Lfunc_end2:
	.size	x_gray_alt_map_color, .Lfunc_end2-x_gray_alt_map_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_rg16x_alt_map_color,@function
x_rg16x_alt_map_color:                  # @x_rg16x_alt_map_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	movl	%esi, %eax
	andl	$63, %eax
	imulq	$65535, %rax, %rdi      # imm = 0xFFFF
	movabsq	$292805461487453201, %rdx # imm = 0x410410410410411
	movq	%rdi, %rax
	mulq	%rdx
	subl	%edx, %edi
	shrl	%edi
	addl	%edx, %edi
	shrl	$5, %edi
	movw	%di, (%rcx)
	movq	%rsi, %rax
	shrq	$11, %rax
	andl	$31, %eax
	imulq	$65535, %rax, %rdi      # imm = 0xFFFF
	movabsq	$595056260442243601, %r8 # imm = 0x842108421084211
	movq	%rdi, %rax
	mulq	%r8
	subl	%edx, %edi
	shrl	%edi
	addl	%edx, %edi
	shrl	$4, %edi
	movw	%di, 2(%rcx)
	shrq	$6, %rsi
	andl	$31, %esi
	imulq	$65535, %rsi, %rsi      # imm = 0xFFFF
	movq	%rsi, %rax
	mulq	%r8
	subl	%edx, %esi
	shrl	%esi
	addl	%edx, %esi
	shrl	$4, %esi
	movw	%si, 4(%rcx)
	movl	$-1, %eax
	retq
.Lfunc_end3:
	.size	x_rg16x_alt_map_color, .Lfunc_end3-x_rg16x_alt_map_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_rg32x_alt_map_color,@function
x_rg32x_alt_map_color:                  # @x_rg32x_alt_map_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	movl	%esi, %eax
	andl	$2047, %eax             # imm = 0x7FF
	imulq	$65535, %rax, %rdi      # imm = 0xFFFF
	movabsq	$9011599449784833, %r8  # imm = 0x20040080100201
	movq	%rdi, %rax
	mulq	%r8
	subl	%edx, %edi
	shrl	%edi
	addl	%edx, %edi
	shrl	$10, %edi
	movw	%di, (%rcx)
	movq	%rsi, %rax
	shrq	$21, %rax
	andl	$2047, %eax             # imm = 0x7FF
	imulq	$65535, %rax, %rdi      # imm = 0xFFFF
	movq	%rdi, %rax
	mulq	%r8
	subl	%edx, %edi
	shrl	%edi
	addl	%edx, %edi
	shrl	$10, %edi
	movw	%di, 2(%rcx)
	shrq	$11, %rsi
	andl	$1023, %esi             # imm = 0x3FF
	imulq	$65535, %rsi, %rsi      # imm = 0xFFFF
	movabsq	$18032007892189201, %rdx # imm = 0x40100401004011
	movq	%rsi, %rax
	mulq	%rdx
	subl	%edx, %esi
	shrl	%esi
	addl	%edx, %esi
	shrl	$9, %esi
	movw	%si, 4(%rcx)
	movl	$-1, %eax
	retq
.Lfunc_end4:
	.size	x_rg32x_alt_map_color, .Lfunc_end4-x_rg32x_alt_map_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_cmyk_open,@function
x_cmyk_open:                            # @x_cmyk_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 48
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	get_dev_target
	movq	8(%rsp), %rbp
	movq	%rbp, %rdi
	callq	*1144(%rbp)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_5
# BB#1:                                 # %if.then
	movl	$1, 84(%rbp)
	movq	%rbx, %rdi
	callq	get_target_info
	movzwl	108(%rbx), %eax
	cmpl	$4, %eax
	jne	.LBB5_3
# BB#2:
	movq	cmyk_1bit_map_cmyk_color@GOTPCREL(%rip), %rax
	jmp	.LBB5_4
.LBB5_3:                                # %select.mid
	leaq	x_cmyk_map_cmyk_color(%rip), %rax
.LBB5_4:                                # %select.end
	movq	%rax, 1264(%rbx)
.LBB5_5:                                # %if.end
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	x_cmyk_open, .Lfunc_end5-x_cmyk_open
	.cfi_endproc

	.align	16, 0x90
	.type	x_forward_sync_output,@function
x_forward_sync_output:                  # @x_forward_sync_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	leaq	(%rsp), %rdi
	movq	%rax, %rsi
	callq	get_dev_target
	movq	(%rsp), %rdi
	callq	*1160(%rdi)
	popq	%rdx
	retq
.Lfunc_end6:
	.size	x_forward_sync_output, .Lfunc_end6-x_forward_sync_output
	.cfi_endproc

	.align	16, 0x90
	.type	x_forward_output_page,@function
x_forward_output_page:                  # @x_forward_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %rax
	leaq	(%rsp), %rdi
	movq	%rax, %rsi
	callq	get_dev_target
	movq	(%rsp), %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	callq	*1168(%rdi)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	x_forward_output_page, .Lfunc_end7-x_forward_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	x_wrap_close,@function
x_wrap_close:                           # @x_wrap_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gx_device_set_target@PLT
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 1736(%rbx)
	movdqu	%xmm0, 1752(%rbx)
	movdqu	%xmm0, 1768(%rbx)
	movdqu	%xmm0, 1784(%rbx)
	movdqu	%xmm0, 1800(%rbx)
	movdqu	%xmm0, 1816(%rbx)
	movdqu	%xmm0, 1832(%rbx)
	movdqu	%xmm0, 1848(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_decache_colors@PLT
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	x_wrap_close, .Lfunc_end8-x_wrap_close
	.cfi_endproc

	.align	16, 0x90
	.type	x_wrap_map_color_rgb,@function
x_wrap_map_color_rgb:                   # @x_wrap_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 80
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r13, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	leaq	8(%rsp), %rdi
	movq	%r12, %rsi
	callq	get_dev_target
	movq	8(%rsp), %r15
	movq	1192(%r15), %r13
	movq	$-1, %rsi
	cmpq	$-1, %rbx
	je	.LBB9_8
# BB#1:                                 # %if.end.i
	cmpq	$15, %rbx
	ja	.LBB9_3
# BB#2:                                 # %if.then.2.i
	movq	1736(%r12,%rbx,8), %rsi
	cmpq	$-1, %rsi
	jne	.LBB9_8
.LBB9_3:                                # %if.end.6.i
	leaq	24(%rsp), %rdi
	movq	%r12, %rsi
	callq	get_dev_target
	leaq	18(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*1864(%r12)
	testl	%eax, %eax
	js	.LBB9_5
# BB#4:                                 # %if.then.13.i
	movslq	%eax, %rsi
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.i
	movq	24(%rsp), %rdi
	leaq	18(%rsp), %rsi
	callq	*1184(%rdi)
	movq	%rax, %rsi
.LBB9_6:                                # %if.end.17.i
	cmpq	$15, %rbx
	ja	.LBB9_8
# BB#7:                                 # %if.then.20.i
	movq	%rsi, 1736(%r12,%rbx,8)
.LBB9_8:                                # %x_alt_map_color.exit
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	*%r13
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	x_wrap_map_color_rgb, .Lfunc_end9-x_wrap_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	x_wrap_fill_rectangle,@function
x_wrap_fill_rectangle:                  # @x_wrap_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 96
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movl	%edx, %r12d
	movl	%esi, %r13d
	movq	%rdi, %r14
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	callq	get_dev_target
	movq	16(%rsp), %rbp
	movq	1200(%rbp), %r15
	movq	$-1, %r9
	cmpq	$-1, %rbx
	je	.LBB10_8
# BB#1:                                 # %if.end.i
	cmpq	$15, %rbx
	ja	.LBB10_3
# BB#2:                                 # %if.then.2.i
	movq	1736(%r14,%rbx,8), %r9
	cmpq	$-1, %r9
	jne	.LBB10_8
.LBB10_3:                               # %if.end.6.i
	leaq	32(%rsp), %rdi
	movq	%r14, %rsi
	callq	get_dev_target
	leaq	26(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*1864(%r14)
	testl	%eax, %eax
	js	.LBB10_5
# BB#4:                                 # %if.then.13.i
	movslq	%eax, %r9
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.i
	movq	32(%rsp), %rdi
	leaq	26(%rsp), %rsi
	callq	*1184(%rdi)
	movq	%rax, %r9
.LBB10_6:                               # %if.end.17.i
	cmpq	$15, %rbx
	ja	.LBB10_8
# BB#7:                                 # %if.then.20.i
	movq	%r9, 1736(%r14,%rbx,8)
.LBB10_8:                               # %x_alt_map_color.exit
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movl	%r12d, %edx
	movl	8(%rsp), %ecx           # 4-byte Reload
	movl	12(%rsp), %r8d          # 4-byte Reload
	callq	*%r15
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	x_wrap_fill_rectangle, .Lfunc_end10-x_wrap_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	x_wrap_copy_mono,@function
x_wrap_copy_mono:                       # @x_wrap_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 160
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movl	%r9d, 76(%rsp)          # 4-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movq	184(%rsp), %rbp
	leaq	80(%rsp), %rdi
	movq	%r14, %rsi
	callq	get_dev_target
	movq	80(%rsp), %r15
	movq	1216(%r15), %rbx
	movq	$-1, %r12
	cmpq	$-1, %rbp
	movq	$-1, %r13
	je	.LBB11_8
# BB#1:                                 # %if.end.i
	cmpq	$15, %rbp
	ja	.LBB11_3
# BB#2:                                 # %if.then.2.i
	movq	1736(%r14,%rbp,8), %r13
	cmpq	$-1, %r13
	jne	.LBB11_8
.LBB11_3:                               # %if.end.6.i
	leaq	96(%rsp), %rdi
	movq	%r14, %rsi
	callq	get_dev_target
	leaq	90(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*1864(%r14)
	testl	%eax, %eax
	js	.LBB11_5
# BB#4:                                 # %if.then.13.i
	movslq	%eax, %r13
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.i
	movq	96(%rsp), %rdi
	leaq	90(%rsp), %rsi
	callq	*1184(%rdi)
	movq	%rax, %r13
.LBB11_6:                               # %if.end.17.i
	cmpq	$15, %rbp
	ja	.LBB11_8
# BB#7:                                 # %if.then.20.i
	movq	%r13, 1736(%r14,%rbp,8)
.LBB11_8:                               # %x_alt_map_color.exit
	movl	176(%rsp), %esi
	movl	168(%rsp), %edx
	movl	160(%rsp), %ecx
	movq	192(%rsp), %rax
	cmpq	$-1, %rax
	je	.LBB11_16
# BB#9:                                 # %if.end.i.8
	cmpq	$15, %rax
	ja	.LBB11_11
# BB#10:                                # %if.then.2.i.12
	movq	1736(%r14,%rax,8), %r12
	cmpq	$-1, %r12
	jne	.LBB11_16
.LBB11_11:                              # %if.end.6.i.17
	leaq	96(%rsp), %rdi
	movq	%rax, %rbp
	movq	%r14, %rsi
	callq	get_dev_target
	leaq	90(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*1864(%r14)
	testl	%eax, %eax
	js	.LBB11_13
# BB#12:                                # %if.then.13.i.19
	movslq	%eax, %r12
	jmp	.LBB11_14
.LBB11_13:                              # %if.else.i.22
	movq	96(%rsp), %rdi
	leaq	90(%rsp), %rsi
	callq	*1184(%rdi)
	movq	%rax, %r12
.LBB11_14:                              # %if.end.17.i.24
	movl	160(%rsp), %ecx
	movl	168(%rsp), %edx
	movl	176(%rsp), %esi
	cmpq	$15, %rbp
	ja	.LBB11_16
# BB#15:                                # %if.then.20.i.27
	movq	%r12, 1736(%r14,%rbp,8)
.LBB11_16:                              # %x_alt_map_color.exit29
	movq	%r12, 32(%rsp)
	movq	%r13, 24(%rsp)
	movl	%esi, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%r15, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	56(%rsp), %edx          # 4-byte Reload
	movl	60(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	76(%rsp), %r9d          # 4-byte Reload
	callq	*%rbx
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	x_wrap_copy_mono, .Lfunc_end11-x_wrap_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	x_wrap_copy_color,@function
x_wrap_copy_color:                      # @x_wrap_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	subq	$664, %rsp              # imm = 0x298
.Ltmp60:
	.cfi_def_cfa_offset 720
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	movl	736(%rsp), %eax
	movl	728(%rsp), %ecx
	movl	720(%rsp), %ebx
	movl	%ebx, %ebp
	orl	%r9d, %ebp
	js	.LBB12_2
# BB#1:
	movl	%ebx, %r12d
	jmp	.LBB12_5
.LBB12_2:                               # %if.then
	movl	%r9d, %ebp
	sarl	$31, %ebp
	andl	%r9d, %ebp
	leal	(%rcx,%rbp), %ecx
	xorl	%r12d, %r12d
	testl	%r9d, %r9d
	cmovsl	%r12d, %r9d
	subl	%ebp, %edx
	testl	%ebx, %ebx
	js	.LBB12_4
# BB#3:
	movl	%ebx, %r12d
	jmp	.LBB12_5
.LBB12_4:                               # %if.then.5
	addl	%ebx, %eax
	imull	104(%rsp), %ebx         # 4-byte Folded Reload
	movslq	%ebx, %rbp
	subq	%rbp, %rsi
	xorl	%r14d, %r14d
.LBB12_5:                               # %if.end.8
	movl	832(%rdi), %ebp
	movl	836(%rdi), %ebx
	subl	%r9d, %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	subl	%r12d, %ebx
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB12_38
# BB#6:                                 # %if.end.8
	movq	%r12, %r15
	movq	%rdi, %rcx
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	movl	%ebx, 56(%rsp)          # 4-byte Spill
	jle	.LBB12_38
# BB#7:                                 # %do.end.26
	leaq	640(%rsp), %rdi
	movq	%rcx, %rbx
	movq	%rbx, %rsi
	callq	get_dev_target
	movq	640(%rsp), %rdi
	movzwl	108(%rdi), %r13d
	testb	$7, %r13b
	je	.LBB12_9
# BB#8:                                 # %if.then.30
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%r15d, (%rsp)
	movq	%rbx, %rdi
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	movl	104(%rsp), %ecx         # 4-byte Reload
	movq	%r14, %r8
	movl	48(%rsp), %r9d          # 4-byte Reload
	callq	gx_default_copy_color@PLT
	jmp	.LBB12_38
.LBB12_9:                               # %if.end.32
	shrl	$3, %r13d
	movl	%r13d, 132(%rsp)        # 4-byte Spill
	movzwl	108(%rbx), %r14d
	movl	%r14d, 128(%rsp)        # 4-byte Spill
	movl	$480, %eax              # imm = 0x1E0
	xorl	%edx, %edx
	divl	%r13d
	movl	%eax, %edx
	shrl	%eax
	movl	%ebp, %ecx
	cmpl	%eax, %ecx
	jle	.LBB12_11
# BB#10:                                # %if.then.42
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	$1, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB12_12
.LBB12_11:                              # %if.else
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%ecx, %edx
.LBB12_12:                              # %if.end.46
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	movl	%ecx, %ebx
	jle	.LBB12_38
# BB#13:                                # %for.cond.50.preheader.lr.ph
	movq	%r15, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	addl	%ecx, 56(%rsp)          # 4-byte Folded Spill
	addl	48(%rsp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	movl	$8, %eax
	subl	%r14d, %eax
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movl	52(%rsp), %eax          # 4-byte Reload
	imull	%r14d, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	imull	%r14d, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	%ecx, %r12d
.LBB12_14:                              # %for.cond.50.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_15 Depth 2
                                        #       Child Loop BB12_18 Depth 3
                                        #         Child Loop BB12_21 Depth 4
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%r12,%rax), %esi
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movl	56(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %esi
	cmovlel	%esi, %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	subl	%r12d, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	.align	16, 0x90
.LBB12_15:                              # %for.cond.50
                                        #   Parent Loop BB12_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_18 Depth 3
                                        #         Child Loop BB12_21 Depth 4
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	cmpl	%ebx, %ecx
	jge	.LBB12_37
# BB#16:                                # %for.body.54
                                        #   in Loop: Header=BB12_15 Depth=2
	leal	(%rcx,%rdx), %ebp
	cmpl	%ebx, %ebp
	movl	%ebx, %r10d
	cmovlel	%ebp, %r10d
	movl	%r10d, 140(%rsp)        # 4-byte Spill
	cmpl	%r12d, 120(%rsp)        # 4-byte Folded Reload
	jle	.LBB12_36
# BB#17:                                # %for.cond.80.preheader.lr.ph
                                        #   in Loop: Header=BB12_15 Depth=2
	movl	%ebp, 72(%rsp)          # 4-byte Spill
	movl	%r12d, %eax
	leaq	160(%rsp), %rbx
	movq	144(%rsp), %r8          # 8-byte Reload
	movq	152(%rsp), %rsi         # 8-byte Reload
	movl	136(%rsp), %edi         # 4-byte Reload
	.align	16, 0x90
.LBB12_18:                              # %for.cond.80.preheader
                                        #   Parent Loop BB12_14 Depth=1
                                        #     Parent Loop BB12_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_21 Depth 4
	cmpl	%ecx, %r10d
	jle	.LBB12_19
# BB#20:                                # %for.body.83.lr.ph
                                        #   in Loop: Header=BB12_18 Depth=3
	movl	%eax, %edx
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	subl	%eax, %edx
	imull	104(%rsp), %edx         # 4-byte Folded Reload
	movl	%edx, 152(%rsp)         # 4-byte Spill
	movl	108(%rsp), %r12d        # 4-byte Reload
	movl	%ecx, %ebp
	.align	16, 0x90
.LBB12_21:                              # %for.body.83
                                        #   Parent Loop BB12_14 Depth=1
                                        #     Parent Loop BB12_15 Depth=2
                                        #       Parent Loop BB12_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r12d, %eax
	sarl	$3, %eax
	addl	%edx, %eax
	cltq
	movzbl	(%r8,%rax), %eax
	movb	%r12b, %cl
	andb	$7, %cl
	shll	%cl, %eax
	movzbl	%al, %r15d
	movb	%dil, %cl
	shrl	%cl, %r15d
	movq	1736(%rsi,%r15,8), %rax
	cmpq	$-1, %rax
	jne	.LBB12_27
# BB#22:                                # %if.then.100
                                        #   in Loop: Header=BB12_21 Depth=4
	leaq	656(%rsp), %rdi
	movq	%rsi, %r14
	callq	get_dev_target
	movq	%r14, %rdi
	movq	%r15, %rsi
	leaq	650(%rsp), %r13
	movq	%r13, %rdx
	callq	*1864(%r14)
	testl	%eax, %eax
	js	.LBB12_24
# BB#23:                                # %if.then.13.i
                                        #   in Loop: Header=BB12_21 Depth=4
	cltq
	jmp	.LBB12_25
.LBB12_24:                              # %if.else.i
                                        #   in Loop: Header=BB12_21 Depth=4
	movq	656(%rsp), %rdi
	movq	%r13, %rsi
	callq	*1184(%rdi)
.LBB12_25:                              # %if.end.17.i
                                        #   in Loop: Header=BB12_21 Depth=4
	movq	144(%rsp), %r8          # 8-byte Reload
	movq	%r14, %rsi
	movl	132(%rsp), %r13d        # 4-byte Reload
	movl	128(%rsp), %r14d        # 4-byte Reload
	movl	136(%rsp), %edi         # 4-byte Reload
	movl	140(%rsp), %r10d        # 4-byte Reload
	movl	152(%rsp), %edx         # 4-byte Reload
	cmpl	$15, %r15d
	ja	.LBB12_27
# BB#26:                                # %if.then.20.i
                                        #   in Loop: Header=BB12_21 Depth=4
	movq	%rax, 1736(%rsi,%r15,8)
	.align	16, 0x90
.LBB12_27:                              # %if.end.103
                                        #   in Loop: Header=BB12_21 Depth=4
	cmpl	$2, %r13d
	je	.LBB12_32
# BB#28:                                # %if.end.103
                                        #   in Loop: Header=BB12_21 Depth=4
	cmpl	$3, %r13d
	je	.LBB12_31
# BB#29:                                # %if.end.103
                                        #   in Loop: Header=BB12_21 Depth=4
	cmpl	$4, %r13d
	jne	.LBB12_33
# BB#30:                                # %sw.bb
                                        #   in Loop: Header=BB12_21 Depth=4
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, (%rbx)
	incq	%rbx
.LBB12_31:                              # %sw.bb.106
                                        #   in Loop: Header=BB12_21 Depth=4
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rbx)
	incq	%rbx
.LBB12_32:                              # %sw.bb.110
                                        #   in Loop: Header=BB12_21 Depth=4
	movb	%ah, (%rbx)  # NOREX
	incq	%rbx
.LBB12_33:                              # %sw.default
                                        #   in Loop: Header=BB12_21 Depth=4
	movb	%al, (%rbx)
	incq	%rbx
	incl	%ebp
	addl	%r14d, %r12d
	cmpl	%r10d, %ebp
	jl	.LBB12_21
	jmp	.LBB12_34
	.align	16, 0x90
.LBB12_19:                              #   in Loop: Header=BB12_18 Depth=3
	movl	%eax, 124(%rsp)         # 4-byte Spill
.LBB12_34:                              # %for.inc.116
                                        #   in Loop: Header=BB12_18 Depth=3
	movl	124(%rsp), %eax         # 4-byte Reload
	incl	%eax
	cmpl	120(%rsp), %eax         # 4-byte Folded Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	jl	.LBB12_18
# BB#35:                                # %for.cond.76.for.end.118_crit_edge
                                        #   in Loop: Header=BB12_15 Depth=2
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movq	%r8, 144(%rsp)          # 8-byte Spill
	movq	640(%rsp), %rdi
	movl	60(%rsp), %ebx          # 4-byte Reload
	movq	64(%rsp), %r12          # 8-byte Reload
	movl	72(%rsp), %ebp          # 4-byte Reload
.LBB12_36:                              # %for.end.118
                                        #   in Loop: Header=BB12_15 Depth=2
	subl	%ecx, %r10d
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%r10d, 8(%rsp)
	imull	%r13d, %r10d
	movl	%r12d, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	leaq	160(%rsp), %rsi
	movq	%rcx, %r9
	movl	%r10d, %ecx
	movq	%rdi, %r15
	callq	*1224(%r15)
	movq	%r15, %rdi
	movl	108(%rsp), %ecx         # 4-byte Reload
	addl	76(%rsp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movl	%ebp, %ecx
	movq	80(%rsp), %rdx          # 8-byte Reload
	jns	.LBB12_15
	jmp	.LBB12_38
.LBB12_37:                              # %for.inc.137
                                        #   in Loop: Header=BB12_14 Depth=1
	xorl	%eax, %eax
	movl	36(%rsp), %ecx          # 4-byte Reload
	cmpl	56(%rsp), %ecx          # 4-byte Folded Reload
	movl	%ecx, %r12d
	jl	.LBB12_14
.LBB12_38:                              # %cleanup.140
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	x_wrap_copy_color, .Lfunc_end12-x_wrap_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_wrap_get_bits,@function
x_wrap_get_bits:                        # @x_wrap_get_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp71:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 208
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movzwl	108(%rax), %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	24(%rax), %rbp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	leaq	144(%rsp), %rdi
	movq	%rax, %rsi
	callq	get_dev_target
	movq	144(%rsp), %rbx
	movl	832(%rbx), %edx
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movzwl	108(%rbx), %r14d
	movl	$1, %r13d
	movb	%r14b, %cl
	shll	%cl, %r13d
	movl	%r14d, %eax
	imull	%edx, %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %esi
	sarl	$3, %esi
	leaq	.L.str.12(%rip), %rdx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %rdx
	movl	$-25, %eax
	testq	%rdx, %rdx
	je	.LBB13_40
# BB#1:                                 # %if.end.22
	leaq	136(%rsp), %rcx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	callq	*1240(%rbx)
	movl	%eax, 68(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB13_37
# BB#2:                                 # %if.end.22
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	jle	.LBB13_37
# BB#3:                                 # %for.body.lr.ph
	movq	%r12, 8(%rsp)           # 8-byte Spill
	addl	$255, %r13d
	movl	$8, %ecx
	movl	$8, %eax
	subl	%r14d, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	cmpl	$9, %r14d
	movzbl	%r13b, %eax
	movl	$255, %edx
	cmovbl	%eax, %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	movl	92(%rsp), %ebx          # 4-byte Reload
	shrl	$2, %ebx
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	cmpl	$8, %r14d
	movl	$8, %eax
	cmoval	%r14d, %eax
	decl	%eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	shrl	$3, %eax
	incl	%eax
	andl	$3, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	cmpl	$8, %r14d
	cmoval	%r14d, %ecx
	decl	%ecx
	shrl	$3, %ecx
	incl	%ecx
	andl	$3, %ecx
	negl	%ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	movq	$-1, %r8
	leaq	.LJTI13_0(%rip), %r9
	xorl	%ecx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	movq	96(%rsp), %rdx          # 8-byte Reload
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB13_4
	.align	16, 0x90
.LBB13_15:                              # %do.body
                                        #   in Loop: Header=BB13_4 Depth=1
	movslq	(%r9,%rcx,4), %rcx
	addq	%r9, %rcx
	jmpq	*%rcx
.LBB13_16:                              # %sw.bb
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	28(%rsp), %esi          # 4-byte Reload
	addl	92(%rsp), %esi          # 4-byte Folded Reload
	cmpl	$8, %esi
	jne	.LBB13_33
# BB#17:                                # %if.then.131
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	orb	%al, %cl
	movb	%cl, (%rdx)
	incq	%rdx
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	xorl	%ecx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	jmp	.LBB13_34
.LBB13_18:                              # %sw.bb.146
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rdx, %rsi
	movl	28(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB13_19
# BB#20:                                # %if.else.151
                                        #   in Loop: Header=BB13_4 Depth=1
	movb	%al, %dl
	movq	16(%rsp), %rdi          # 8-byte Reload
	orb	%dil, %dl
	movb	%dl, (%rsi)
	movq	%rsi, %rdx
	incq	%rdx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	jmp	.LBB13_34
.LBB13_21:                              # %sw.bb.159
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rdx, %rsi
	movl	28(%rsp), %edx          # 4-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB13_22
# BB#23:                                # %if.else.168
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rdx
	shrq	$8, %rdx
	movq	16(%rsp), %rdi          # 8-byte Reload
	orb	%dil, %dl
	movb	%dl, (%rsi)
	movq	%rsi, %rdx
	movb	%al, 1(%rdx)
	addq	$2, %rdx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	jmp	.LBB13_34
.LBB13_24:                              # %sw.bb.179
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rcx
	shrq	$56, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB13_25:                              # %sw.bb.183
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rcx
	shrq	$48, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB13_26:                              # %sw.bb.187
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rcx
	shrq	$40, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB13_27:                              # %sw.bb.191
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rcx
	shrq	$32, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB13_28:                              # %sw.bb.195
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB13_29:                              # %sw.bb.199
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rdx)
	incq	%rdx
.LBB13_30:                              # %sw.bb.203
                                        #   in Loop: Header=BB13_4 Depth=1
	movb	%ah, (%rdx)  # NOREX
	incq	%rdx
.LBB13_31:                              # %sw.bb.207
                                        #   in Loop: Header=BB13_4 Depth=1
	movb	%al, (%rdx)
	incq	%rdx
.LBB13_34:                              # %for.inc.213
                                        #   in Loop: Header=BB13_4 Depth=1
	addl	%r14d, %r12d
	incl	%r13d
	cmpl	116(%rsp), %r13d        # 4-byte Folded Reload
	jl	.LBB13_4
	jmp	.LBB13_35
.LBB13_33:                              # %if.else.137
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	$8, %ecx
	subl	%esi, %ecx
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	%rax, %rsi
	shlq	%cl, %rsi
	movq	16(%rsp), %rcx          # 8-byte Reload
	orb	%cl, %sil
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	jmp	.LBB13_34
.LBB13_19:                              # %if.then.148
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rsi, %rdx
	jmp	.LBB13_34
.LBB13_22:                              # %if.then.162
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rax, %rdx
	shrq	$4, %rdx
	movb	%dl, (%rsi)
	movq	%rsi, %rdx
	incq	%rdx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	jmp	.LBB13_34
	.align	16, 0x90
.LBB13_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
                                        #     Child Loop BB13_8 Depth 2
	movl	%r12d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	136(%rsp), %rcx
	cmpl	$9, %r14d
	jae	.LBB13_5
# BB#41:                                # %if.then.34
                                        #   in Loop: Header=BB13_4 Depth=1
	movzbl	(%rcx), %r15d
	movl	%r12d, %esi
	andl	$7, %esi
	movl	44(%rsp), %ecx          # 4-byte Reload
	subl	%esi, %ecx
	shrl	%cl, %r15d
	andl	48(%rsp), %r15d         # 4-byte Folded Reload
	jmp	.LBB13_9
	.align	16, 0x90
.LBB13_5:                               # %for.body.46.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	xorl	%esi, %esi
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	movl	52(%rsp), %edi          # 4-byte Reload
	movl	$0, %r15d
	je	.LBB13_7
	.align	16, 0x90
.LBB13_6:                               # %for.body.46.prol
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %r15
	movzbl	(%rcx), %ebp
	orq	%rbp, %r15
	addl	$8, %esi
	incq	%rcx
	incl	%edi
	jne	.LBB13_6
.LBB13_7:                               # %for.body.46.preheader.split
                                        #   in Loop: Header=BB13_4 Depth=1
	cmpl	$24, 40(%rsp)           # 4-byte Folded Reload
	jb	.LBB13_9
	.align	16, 0x90
.LBB13_8:                               # %for.body.46
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shlq	$8, %r15
	movzbl	(%rcx), %edi
	orq	%r15, %rdi
	shlq	$8, %rdi
	movzbl	1(%rcx), %ebp
	orq	%rdi, %rbp
	shlq	$8, %rbp
	movzbl	2(%rcx), %edi
	orq	%rbp, %rdi
	shlq	$8, %rdi
	movzbl	3(%rcx), %r15d
	orq	%rdi, %r15
	addl	$32, %esi
	addq	$4, %rcx
	cmpl	%r14d, %esi
	jl	.LBB13_8
.LBB13_9:                               # %if.end.51
                                        #   in Loop: Header=BB13_4 Depth=1
	cmpq	%r8, %r15
	je	.LBB13_14
# BB#10:                                # %if.then.54
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	144(%rsp), %rdi
	movq	%r15, %rsi
	leaq	130(%rsp), %rbx
	movq	%rbx, %rdx
	callq	*1192(%rdi)
	movq	104(%rsp), %rdi         # 8-byte Reload
	cmpl	$3, 100(%rdi)
	jg	.LBB13_12
# BB#11:                                # %if.then.60
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%rbx, %rsi
	movq	%rdi, %rax
	callq	*1184(%rax)
	jmp	.LBB13_13
	.align	16, 0x90
.LBB13_12:                              # %if.else.64
                                        #   in Loop: Header=BB13_4 Depth=1
	movzwl	130(%rsp), %r8d
	movl	%r8d, %ecx
	notl	%ecx
	movzwl	132(%rsp), %r9d
	movl	%r9d, %esi
	notl	%esi
	movzwl	134(%rsp), %ebx
	notl	%ebx
	movzwl	%bx, %ebp
	movzwl	%si, %eax
	cmpl	%ebp, %eax
	cmovaew	%bp, %ax
	movzwl	%cx, %edx
	cmpl	%ebp, %edx
	cmovaew	%bp, %dx
	cmpl	%r8d, %r9d
	cmovaew	%ax, %dx
	subl	%edx, %ecx
	movw	%cx, 122(%rsp)
	subl	%edx, %esi
	movw	%si, 124(%rsp)
	subl	%edx, %ebx
	movw	%bx, 126(%rsp)
	movw	%dx, 128(%rsp)
	leaq	122(%rsp), %rsi
	movq	%rdi, %rax
	callq	*1264(%rax)
.LBB13_13:                              # %do.body
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	%r15, %r8
	movl	32(%rsp), %ebx          # 4-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	leaq	.LJTI13_0(%rip), %r9
.LBB13_14:                              # %do.body
                                        #   in Loop: Header=BB13_4 Depth=1
	movl	%ebx, %ecx
	cmpl	$16, %ebx
	jbe	.LBB13_15
.LBB13_32:                              # %cleanup
	movl	$-15, %eax
	jmp	.LBB13_40
.LBB13_35:                              # %for.end.215
	movl	28(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	movq	8(%rsp), %r12           # 8-byte Reload
	je	.LBB13_37
# BB#36:                                # %if.then.218
	movq	16(%rsp), %rax          # 8-byte Reload
	movzbl	%al, %eax
	movq	%rdx, %rdi
	movzbl	(%rdi), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%rdi)
.LBB13_37:                              # %gx
	leaq	.L.str.12(%rip), %rdx
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	testq	%r12, %r12
	je	.LBB13_39
# BB#38:                                # %if.then.228
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%r12)
.LBB13_39:                              # %cleanup.230
	movl	68(%rsp), %eax          # 4-byte Reload
.LBB13_40:                              # %cleanup.230
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	x_wrap_get_bits, .Lfunc_end13-x_wrap_get_bits
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI13_0:
	.long	.LBB13_16-.LJTI13_0
	.long	.LBB13_18-.LJTI13_0
	.long	.LBB13_31-.LJTI13_0
	.long	.LBB13_21-.LJTI13_0
	.long	.LBB13_30-.LJTI13_0
	.long	.LBB13_32-.LJTI13_0
	.long	.LBB13_29-.LJTI13_0
	.long	.LBB13_32-.LJTI13_0
	.long	.LBB13_28-.LJTI13_0
	.long	.LBB13_32-.LJTI13_0
	.long	.LBB13_27-.LJTI13_0
	.long	.LBB13_32-.LJTI13_0
	.long	.LBB13_26-.LJTI13_0
	.long	.LBB13_32-.LJTI13_0
	.long	.LBB13_25-.LJTI13_0
	.long	.LBB13_32-.LJTI13_0
	.long	.LBB13_24-.LJTI13_0

	.text
	.align	16, 0x90
	.type	x_wrap_get_params,@function
x_wrap_get_params:                      # @x_wrap_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 32
	subq	$3232, %rsp             # imm = 0xCA0
.Ltmp83:
	.cfi_def_cfa_offset 3264
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
.Ltmp86:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	3224(%rsp), %rdi
	movq	%r15, %rsi
	callq	get_dev_target
	movq	3224(%rsp), %rbx
	leaq	8(%rsp), %rdi
	movl	$3216, %edx             # imm = 0xC90
	movq	%rbx, %rsi
	callq	memcpy@PLT
	cmpl	$0, 84(%rbx)
	je	.LBB14_2
# BB#1:                                 # %if.then.1
	leaq	96(%rbx), %rdi
	leaq	96(%r15), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy@PLT
.LBB14_2:                               # %if.end.3
	movq	16(%r15), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1248(%rbx)
	movl	%eax, %ebx
	movq	3224(%rsp), %rdi
	leaq	8(%rsp), %rsi
	movl	$3216, %edx             # imm = 0xC90
	callq	memcpy@PLT
	movl	%ebx, %eax
	addq	$3232, %rsp             # imm = 0xCA0
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end14:
	.size	x_wrap_get_params, .Lfunc_end14-x_wrap_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	x_cmyk_put_params,@function
x_cmyk_put_params:                      # @x_cmyk_put_params
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
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp93:
	.cfi_def_cfa_offset 784
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	720(%rsp), %rdi
	movq	%r15, %rsi
	callq	get_dev_target
	movq	720(%rsp), %rbp
	leaq	96(%rbp), %rbx
	leaq	(%rsp), %r12
	movl	$720, %edx              # imm = 0x2D0
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy@PLT
	movq	16(%rbp), %r13
	leaq	96(%r15), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbx, %rdi
	callq	memcpy@PLT
	movq	16(%r15), %rax
	movq	%rax, 16(%rbp)
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*1256(%rbp)
	movl	%eax, %r14d
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	movq	%r13, 16(%rbp)
	testl	%r14d, %r14d
	js	.LBB15_5
# BB#1:                                 # %if.then
	movq	%r15, %rdi
	callq	get_target_info
	movzwl	108(%r15), %eax
	cmpl	$4, %eax
	jne	.LBB15_3
# BB#2:
	movq	cmyk_1bit_map_cmyk_color@GOTPCREL(%rip), %rax
	jmp	.LBB15_4
.LBB15_3:                               # %select.mid
	leaq	x_cmyk_map_cmyk_color(%rip), %rax
.LBB15_4:                               # %select.end
	movq	%rax, 1264(%r15)
.LBB15_5:                               # %if.end
	movl	%r14d, %eax
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	x_cmyk_put_params, .Lfunc_end15-x_cmyk_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	x_cmyk_map_cmyk_color,@function
x_cmyk_map_cmyk_color:                  # @x_cmyk_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %r9d
	shrl	$2, %r9d
	movzwl	(%rsi), %edi
	movl	$16, %r10d
	subl	%r9d, %r10d
	movb	%r10b, %cl
	shrl	%cl, %edi
	movslq	%edi, %r8
	movb	%r9b, %cl
	shlq	%cl, %r8
	movzwl	2(%rsi), %edi
	movb	%r10b, %cl
	shrl	%cl, %edi
	movslq	%edi, %rdi
	orq	%r8, %rdi
	movb	%r9b, %cl
	shlq	%cl, %rdi
	movzwl	4(%rsi), %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	movslq	%eax, %rdx
	orq	%rdi, %rdx
	movb	%r9b, %cl
	shlq	%cl, %rdx
	movzwl	6(%rsi), %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	cltq
	orq	%rdx, %rax
	retq
.Lfunc_end16:
	.size	x_cmyk_map_cmyk_color, .Lfunc_end16-x_cmyk_map_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_wrap_open,@function
x_wrap_open:                            # @x_wrap_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 48
.Ltmp104:
	.cfi_offset %rbx, -32
.Ltmp105:
	.cfi_offset %r14, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	8(%rsp), %rdi
	movq	%r14, %rsi
	callq	get_dev_target
	movq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*1144(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_2
# BB#1:                                 # %if.end.4
	movl	$1, 84(%rbx)
	movq	%r14, %rdi
	callq	get_target_info
.LBB17_2:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	x_wrap_open, .Lfunc_end17-x_wrap_open
	.cfi_endproc

	.align	16, 0x90
	.type	get_dev_target,@function
get_dev_target:                         # @get_dev_target
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp109:
	.cfi_def_cfa_offset 32
.Ltmp110:
	.cfi_offset %rbx, -24
.Ltmp111:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	1728(%rbx), %rax
	movq	%rax, (%rsp)
	testq	%rax, %rax
	jne	.LBB18_3
# BB#1:                                 # %if.then
	movq	24(%rbx), %rdx
	movq	gs_x11_device@GOTPCREL(%rip), %rsi
	leaq	(%rsp), %rdi
	callq	gs_copydevice@PLT
	testl	%eax, %eax
	js	.LBB18_4
# BB#2:                                 # %if.end
	movq	(%rsp), %rdi
	callq	check_device_separable@PLT
	movq	(%rsp), %rdi
	callq	gx_device_fill_in_procs@PLT
	movq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_device_set_target@PLT
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 1736(%rbx)
	movdqu	%xmm0, 1752(%rbx)
	movdqu	%xmm0, 1768(%rbx)
	movdqu	%xmm0, 1784(%rbx)
	movdqu	%xmm0, 1800(%rbx)
	movdqu	%xmm0, 1816(%rbx)
	movdqu	%xmm0, 1832(%rbx)
	movdqu	%xmm0, 1848(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_decache_colors@PLT
	movq	(%rsp), %rax
.LBB18_3:                               # %if.end.3
	movq	%rax, (%r14)
.LBB18_4:                               # %cleanup.4
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	get_dev_target, .Lfunc_end18-get_dev_target
	.cfi_endproc

	.align	16, 0x90
	.type	get_target_info,@function
get_target_info:                        # @get_target_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp114:
	.cfi_def_cfa_offset 32
.Ltmp115:
	.cfi_offset %rbx, -24
.Ltmp116:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	get_dev_target
	movq	(%rsp), %rax
	movl	832(%rax), %ecx
	movl	%ecx, 832(%rbx)
	movl	836(%rax), %ecx
	movl	%ecx, 836(%rbx)
	movl	856(%rax), %ecx
	movl	%ecx, 856(%rbx)
	movl	860(%rax), %ecx
	movl	%ecx, 860(%rbx)
	movl	864(%rax), %ecx
	movl	%ecx, 864(%rbx)
	movl	868(%rax), %ecx
	movl	%ecx, 868(%rbx)
	movl	872(%rax), %ecx
	movl	%ecx, 872(%rbx)
	movl	876(%rax), %ecx
	movl	%ecx, 876(%rbx)
	movl	880(%rax), %ecx
	movl	%ecx, 880(%rbx)
	movl	884(%rax), %ecx
	movl	%ecx, 884(%rbx)
	movl	888(%rax), %ecx
	movl	%ecx, 888(%rbx)
	movl	892(%rax), %ecx
	movl	%ecx, 892(%rbx)
	movl	896(%rax), %ecx
	movl	%ecx, 896(%rbx)
	movl	900(%rax), %ecx
	movl	%ecx, 900(%rbx)
	movl	904(%rax), %ecx
	movl	%ecx, 904(%rbx)
	movl	908(%rax), %ecx
	movl	%ecx, 908(%rbx)
	movl	912(%rax), %ecx
	movl	%ecx, 912(%rbx)
	movl	916(%rax), %eax
	movl	%eax, 916(%rbx)
	movq	(%rsp), %rsi
	movl	920(%rsi), %eax
	movl	%eax, 920(%rbx)
	cmpl	$3, 100(%rbx)
	jne	.LBB19_2
# BB#1:                                 # %if.then.62
	leaq	96(%rbx), %rdi
	movq	128(%rbx), %r14
	addq	$96, %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy@PLT
	movq	%r14, 128(%rbx)
.LBB19_2:                               # %if.end.68
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 1736(%rbx)
	movdqu	%xmm0, 1752(%rbx)
	movdqu	%xmm0, 1768(%rbx)
	movdqu	%xmm0, 1784(%rbx)
	movdqu	%xmm0, 1800(%rbx)
	movdqu	%xmm0, 1816(%rbx)
	movdqu	%xmm0, 1832(%rbx)
	movdqu	%xmm0, 1848(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_decache_colors@PLT
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	get_target_info, .Lfunc_end19-get_target_info
	.cfi_endproc

	.align	16, 0x90
	.type	x_wrap_put_params,@function
x_wrap_put_params:                      # @x_wrap_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp120:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 56
	subq	$728, %rsp              # imm = 0x2D8
.Ltmp123:
	.cfi_def_cfa_offset 784
.Ltmp124:
	.cfi_offset %rbx, -56
.Ltmp125:
	.cfi_offset %r12, -48
.Ltmp126:
	.cfi_offset %r13, -40
.Ltmp127:
	.cfi_offset %r14, -32
.Ltmp128:
	.cfi_offset %r15, -24
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	720(%rsp), %rdi
	movq	%r14, %rsi
	callq	get_dev_target
	movq	720(%rsp), %rbx
	leaq	96(%rbx), %rbp
	leaq	(%rsp), %r12
	movl	$720, %edx              # imm = 0x2D0
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	memcpy@PLT
	movq	16(%rbx), %r13
	leaq	96(%r14), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbp, %rdi
	callq	memcpy@PLT
	movq	16(%r14), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*1256(%rbx)
	movl	%eax, %r15d
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	movq	%r13, 16(%rbx)
	testl	%r15d, %r15d
	js	.LBB20_2
# BB#1:                                 # %if.end.11
	movq	%r14, %rdi
	callq	get_target_info
.LBB20_2:                               # %cleanup
	movl	%r15d, %eax
	addq	$728, %rsp              # imm = 0x2D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	x_wrap_put_params, .Lfunc_end20-x_wrap_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	gdevx_wrapper_enum_ptrs,@function
gdevx_wrapper_enum_ptrs:                # @gdevx_wrapper_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	st_device_forward@GOTPCREL(%rip), %r9
	jmpq	*32(%r9)                # TAILCALL
.Lfunc_end21:
	.size	gdevx_wrapper_enum_ptrs, .Lfunc_end21-gdevx_wrapper_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gdevx_wrapper_reloc_ptrs,@function
gdevx_wrapper_reloc_ptrs:               # @gdevx_wrapper_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	st_device_forward@GOTPCREL(%rip), %rdx
	jmpq	*40(%rdx)               # TAILCALL
.Lfunc_end22:
	.size	gdevx_wrapper_reloc_ptrs, .Lfunc_end22-gdevx_wrapper_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	x_rg16x_map_rgb_color,@function
x_rg16x_map_rgb_color:                  # @x_rg16x_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	shrl	$10, %eax
	movzwl	2(%rsi), %ecx
	andl	$63488, %ecx            # imm = 0xF800
	orl	%eax, %ecx
	movzwl	4(%rsi), %eax
	shrl	$5, %eax
	andl	$1984, %eax             # imm = 0x7C0
	orl	%ecx, %eax
	retq
.Lfunc_end23:
	.size	x_rg16x_map_rgb_color, .Lfunc_end23-x_rg16x_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_forward_copy_color,@function
x_forward_copy_color:                   # @x_forward_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp131:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp132:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp133:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp134:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp135:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp136:
	.cfi_def_cfa_offset 96
.Ltmp137:
	.cfi_offset %rbx, -56
.Ltmp138:
	.cfi_offset %r12, -48
.Ltmp139:
	.cfi_offset %r13, -40
.Ltmp140:
	.cfi_offset %r14, -32
.Ltmp141:
	.cfi_offset %r15, -24
.Ltmp142:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %ebx
	movq	%rsi, %rbp
	movq	%rdi, %rax
	movl	112(%rsp), %r13d
	leaq	32(%rsp), %rdi
	movq	%rax, %rsi
	callq	get_dev_target
	movq	32(%rsp), %rdi
	movl	%r13d, 16(%rsp)
	movl	104(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbp, %rsi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movl	%r14d, %r9d
	callq	*1224(%rdi)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	x_forward_copy_color, .Lfunc_end24-x_forward_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_forward_get_bits,@function
x_forward_get_bits:                     # @x_forward_get_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp146:
	.cfi_def_cfa_offset 48
.Ltmp147:
	.cfi_offset %rbx, -32
.Ltmp148:
	.cfi_offset %r14, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %rax
	leaq	8(%rsp), %rdi
	movq	%rax, %rsi
	callq	get_dev_target
	movq	8(%rsp), %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	*1240(%rdi)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	x_forward_get_bits, .Lfunc_end25-x_forward_get_bits
	.cfi_endproc

	.align	16, 0x90
	.type	x_alpha_map_rgb_alpha_color,@function
x_alpha_map_rgb_alpha_color:            # @x_alpha_map_rgb_alpha_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp152:
	.cfi_def_cfa_offset 32
.Ltmp153:
	.cfi_offset %rbx, -24
.Ltmp154:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movl	$4278190080, %ebx       # imm = 0xFF000000
	shrl	$8, %ebp
	movw	%si, 2(%rsp)
	movw	%dx, 4(%rsp)
	movw	%cx, 6(%rsp)
	leaq	2(%rsp), %rsi
	callq	gx_forward_map_rgb_color@PLT
	testw	%bp, %bp
	je	.LBB26_2
# BB#1:                                 # %cond.false
	movzwl	%bp, %ecx
	shlq	$24, %rcx
	xorq	%rbx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rbx
.LBB26_2:                               # %cond.end
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	x_alpha_map_rgb_alpha_color, .Lfunc_end26-x_alpha_map_rgb_alpha_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_rg32x_map_rgb_color,@function
x_rg32x_map_rgb_color:                  # @x_rg32x_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	shrq	$5, %rax
	movzwl	2(%rsi), %ecx
	andq	$65504, %rcx            # imm = 0xFFE0
	shlq	$16, %rcx
	orq	%rax, %rcx
	movzwl	4(%rsi), %eax
	shlq	$5, %rax
	andl	$2095104, %eax          # imm = 0x1FF800
	orq	%rcx, %rax
	retq
.Lfunc_end27:
	.size	x_rg32x_map_rgb_color, .Lfunc_end27-x_rg32x_map_rgb_color
	.cfi_endproc

	.type	x_cmyk_procs,@object    # @x_cmyk_procs
	.section	.data.rel.ro,"aw",@progbits
	.align	8
x_cmyk_procs:
	.quad	x_cmyk_open
	.quad	gx_forward_get_initial_matrix
	.quad	x_forward_sync_output
	.quad	x_forward_output_page
	.quad	x_wrap_close
	.quad	0
	.quad	x_wrap_map_color_rgb
	.quad	x_wrap_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	x_wrap_copy_mono
	.quad	x_wrap_copy_color
	.quad	gx_default_draw_line
	.quad	x_wrap_get_bits
	.quad	x_wrap_get_params
	.quad	x_cmyk_put_params
	.quad	x_cmyk_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	0
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	x_cmyk_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x11cmyk"
	.size	.L.str, 8

	.type	st_device_X_wrapper,@object # @st_device_X_wrapper
	.section	.data.rel.ro,"aw",@progbits
	.align	8
st_device_X_wrapper:
	.long	1872                    # 0x750
	.zero	4
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	gdevx_wrapper_enum_ptrs
	.quad	gdevx_wrapper_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_X_wrapper, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	gs_x11cmyk_device,@object # @gs_x11cmyk_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11cmyk_device
	.align	8
gs_x11cmyk_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_cmyk_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_X_wrapper
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
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
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
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_cmyk_alt_map_color
	.size	gs_x11cmyk_device, 1872

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"x11cmyk2"
	.size	.L.str.2, 9

	.type	gs_x11cmyk2_device,@object # @gs_x11cmyk2_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11cmyk2_device
	.align	8
gs_x11cmyk2_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_cmyk_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_X_wrapper
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
	.short	8                       # 0x8
	.byte	3                       # 0x3
	.zero	1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
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
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_cmyk_alt_map_color
	.size	gs_x11cmyk2_device, 1872

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"x11cmyk4"
	.size	.L.str.3, 9

	.type	gs_x11cmyk4_device,@object # @gs_x11cmyk4_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11cmyk4_device
	.align	8
gs_x11cmyk4_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_cmyk_procs
	.quad	.L.str.3
	.quad	0
	.quad	st_device_X_wrapper
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
	.short	16                      # 0x10
	.byte	3                       # 0x3
	.zero	1
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	16                      # 0x10
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
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_cmyk_alt_map_color
	.size	gs_x11cmyk4_device, 1872

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"x11cmyk8"
	.size	.L.str.4, 9

	.type	gs_x11cmyk8_device,@object # @gs_x11cmyk8_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11cmyk8_device
	.align	8
gs_x11cmyk8_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_cmyk_procs
	.quad	.L.str.4
	.quad	0
	.quad	st_device_X_wrapper
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
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_cmyk_alt_map_color
	.size	gs_x11cmyk8_device, 1872

	.type	x_mono_procs,@object    # @x_mono_procs
	.align	8
x_mono_procs:
	.quad	x_wrap_open
	.quad	gx_forward_get_initial_matrix
	.quad	x_forward_sync_output
	.quad	x_forward_output_page
	.quad	x_wrap_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	x_wrap_map_color_rgb
	.quad	x_wrap_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	x_wrap_copy_mono
	.quad	gx_default_copy_color
	.quad	gx_default_draw_line
	.quad	x_wrap_get_bits
	.quad	x_wrap_get_params
	.quad	x_wrap_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	0
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	x_mono_procs, 584

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"x11mono"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DeviceGray"
	.size	.L.str.6, 11

	.type	gs_x11mono_device,@object # @gs_x11mono_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11mono_device
	.align	8
gs_x11mono_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_mono_procs
	.quad	.L.str.5
	.quad	0
	.quad	st_device_X_wrapper
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
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_mono_alt_map_color
	.size	gs_x11mono_device, 1872

	.type	x_gray_procs,@object    # @x_gray_procs
	.align	8
x_gray_procs:
	.quad	x_wrap_open
	.quad	gx_forward_get_initial_matrix
	.quad	x_forward_sync_output
	.quad	x_forward_output_page
	.quad	x_wrap_close
	.quad	gx_default_gray_map_rgb_color
	.quad	x_wrap_map_color_rgb
	.quad	x_wrap_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	x_wrap_copy_mono
	.quad	x_wrap_copy_color
	.quad	gx_default_draw_line
	.quad	x_wrap_get_bits
	.quad	x_wrap_get_params
	.quad	x_wrap_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	0
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	x_gray_procs, 584

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"x11gray2"
	.size	.L.str.7, 9

	.type	gs_x11gray2_device,@object # @gs_x11gray2_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11gray2_device
	.align	8
gs_x11gray2_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_gray_procs
	.quad	.L.str.7
	.quad	0
	.quad	st_device_X_wrapper
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
	.short	2                       # 0x2
	.byte	0                       # 0x0
	.zero	1
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_gray_alt_map_color
	.size	gs_x11gray2_device, 1872

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"x11gray4"
	.size	.L.str.8, 9

	.type	gs_x11gray4_device,@object # @gs_x11gray4_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11gray4_device
	.align	8
gs_x11gray4_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_gray_procs
	.quad	.L.str.8
	.quad	0
	.quad	st_device_X_wrapper
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
	.short	4                       # 0x4
	.byte	0                       # 0x0
	.zero	1
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_gray_alt_map_color
	.size	gs_x11gray4_device, 1872

	.type	x_rg16x_procs,@object   # @x_rg16x_procs
	.align	8
x_rg16x_procs:
	.quad	x_wrap_open
	.quad	gx_forward_get_initial_matrix
	.quad	x_forward_sync_output
	.quad	x_forward_output_page
	.quad	x_wrap_close
	.quad	x_rg16x_map_rgb_color
	.quad	x_wrap_map_color_rgb
	.quad	x_wrap_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	x_wrap_copy_mono
	.quad	x_forward_copy_color
	.quad	gx_default_draw_line
	.quad	x_forward_get_bits
	.quad	x_wrap_get_params
	.quad	x_wrap_put_params
	.quad	gx_forward_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	x_alpha_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	x_rg16x_procs, 584

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"x11rg16x"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"DeviceRGB"
	.size	.L.str.10, 10

	.type	gs_x11rg16x_device,@object # @gs_x11rg16x_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11rg16x_device
	.align	8
gs_x11rg16x_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_rg16x_procs
	.quad	.L.str.9
	.quad	0
	.quad	st_device_X_wrapper
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
	.short	16                      # 0x10
	.byte	255                     # 0xff
	.zero	1
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.10
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_rg16x_alt_map_color
	.size	gs_x11rg16x_device, 1872

	.type	x_rg32x_procs,@object   # @x_rg32x_procs
	.align	8
x_rg32x_procs:
	.quad	x_wrap_open
	.quad	gx_forward_get_initial_matrix
	.quad	x_forward_sync_output
	.quad	x_forward_output_page
	.quad	x_wrap_close
	.quad	x_rg32x_map_rgb_color
	.quad	x_wrap_map_color_rgb
	.quad	x_wrap_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	x_wrap_copy_mono
	.quad	x_forward_copy_color
	.quad	gx_default_draw_line
	.quad	x_forward_get_bits
	.quad	x_wrap_get_params
	.quad	x_wrap_put_params
	.quad	gx_forward_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	x_alpha_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	x_rg32x_procs, 584

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"x11rg32x"
	.size	.L.str.11, 9

	.type	gs_x11rg32x_device,@object # @gs_x11rg32x_device
	.section	.data.rel.ro,"aw",@progbits
	.globl	gs_x11rg32x_device
	.align	8
gs_x11rg32x_device:
	.long	1872                    # 0x750
	.zero	4
	.quad	x_rg32x_procs
	.quad	.L.str.11
	.quad	0
	.quad	st_device_X_wrapper
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
	.short	32                      # 0x20
	.byte	255                     # 0xff
	.zero	1
	.long	1023                    # 0x3ff
	.long	1023                    # 0x3ff
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.10
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	9792                    # 0x2640
	.long	12672                   # 0x3180
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
	.long	1150287872              # float 1.152000e+03
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
	.zero	128
	.quad	x_rg32x_alt_map_color
	.size	gs_x11rg32x_device, 1872

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"x_wrap_get_bits"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gx_device_X_wrapper"
	.size	.L.str.13, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
