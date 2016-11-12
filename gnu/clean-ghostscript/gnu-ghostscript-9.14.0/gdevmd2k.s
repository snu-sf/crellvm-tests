	.text
	.file	"gdevmd2k.bc"
	.align	16, 0x90
	.type	md2k_print_page,@function
md2k_print_page:                        # @md2k_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edx, %edx
	jmp	alps_print_page         # TAILCALL
.Lfunc_end0:
	.size	md2k_print_page, .Lfunc_end0-md2k_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	md5k_print_page,@function
md5k_print_page:                        # @md5k_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2, %edx
	jmp	alps_print_page         # TAILCALL
.Lfunc_end1:
	.size	md5k_print_page, .Lfunc_end1-md5k_print_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	4
.LCPI2_0:
	.long	1053609165              # float 4.000000e-01
	.long	1054951342              # float 4.400000e-01
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1061158912              # float 0.75
	.text
	.align	16, 0x90
	.type	alps_open,@function
alps_open:                              # @alps_open
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
	movq	%rdi, %rbx
	cvttss2si	884(%rbx), %ebp
	cvttss2si	888(%rbx), %r14d
	movl	$alps_open.margins, %esi
	movl	$1, %edx
	callq	gx_device_set_margins
	cmpl	$300, %ebp              # imm = 0x12C
	jne	.LBB2_2
# BB#1:                                 # %entry
	cmpl	$300, %r14d             # imm = 0x12C
	je	.LBB2_4
.LBB2_2:                                # %land.lhs.true
	cmpl	$600, %ebp              # imm = 0x258
	setne	%al
	cmpl	$1200, %ebp             # imm = 0x4B0
	setne	%cl
	cmpl	$600, %r14d             # imm = 0x258
	jne	.LBB2_8
# BB#3:                                 # %land.lhs.true
	andb	%cl, %al
	jne	.LBB2_8
.LBB2_4:                                # %if.end
	cmpl	$600, %ebp              # imm = 0x258
	sete	%al
	cmpl	$300, %ebp              # imm = 0x12C
	movzbl	%al, %eax
	je	.LBB2_5
# BB#6:                                 # %if.end
	movss	.LCPI2_0(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB2_7
.LBB2_5:
	movss	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB2_7:                                # %if.end
	movups	18496(%rbx), %xmm1
	cvtdq2ps	%xmm1, %xmm1
	shufps	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	mulps	%xmm1, %xmm0
	cvttps2dq	%xmm0, %xmm0
	movups	%xmm0, 18496(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gdev_prn_open           # TAILCALL
.LBB2_8:                                # %cleanup
	movl	$-15, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	alps_open, .Lfunc_end2-alps_open
	.cfi_endproc

	.align	16, 0x90
	.type	alps_map_color_rgb,@function
alps_map_color_rgb:                     # @alps_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	cmpl	$8, %eax
	jne	.LBB3_1
# BB#3:                                 # %sw.bb.4
	cmpl	$1, 100(%rdi)
	jne	.LBB3_6
# BB#4:                                 # %if.then
	xorl	$255, %esi
	imull	$257, %esi, %eax        # imm = 0x101
	jmp	.LBB3_5
.LBB3_1:                                # %entry
	cmpl	$1, %eax
	jne	.LBB3_6
# BB#2:                                 # %sw.bb
	movl	$1, %eax
	subl	%esi, %eax
	imull	$65535, %eax, %eax      # imm = 0xFFFF
.LBB3_5:                                # %sw.epilog
	movw	%ax, 4(%r8)
	movw	%ax, 2(%r8)
	movw	%ax, (%r8)
	xorl	%eax, %eax
	retq
.LBB3_6:                                # %sw.default
	shrl	$2, %eax
	leal	(%rax,%rax,2), %ecx
	movq	%rsi, %r9
	shrq	%cl, %r9
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
	decl	%edx
	movslq	%edx, %rdi
	andq	%rdi, %r9
	movl	$16, %edx
	subl	%eax, %edx
	movb	%dl, %cl
	shlq	%cl, %r9
	movl	%eax, %ecx
	addl	%ecx, %ecx
	movq	%rsi, %r11
	shrq	%cl, %r11
	andq	%rdi, %r11
	movb	%dl, %cl
	shlq	%cl, %r11
	movq	%rsi, %r10
	movb	%al, %cl
	shrq	%cl, %r10
	andq	%rdi, %r10
	movb	%dl, %cl
	shlq	%cl, %r10
	andq	%rsi, %rdi
	movb	%dl, %cl
	shlq	%cl, %rdi
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	$65535, %eax            # imm = 0xFFFF
	subq	%r9, %rax
	movl	$65535, %esi            # imm = 0xFFFF
	subq	%rdi, %rsi
	imulq	%rsi, %rax
	movabsq	$-9223231297218904063, %rdi # imm = 0x8000800080008001
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, (%r8)
	movl	$65535, %eax            # imm = 0xFFFF
	subq	%r11, %rax
	imulq	%rsi, %rax
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, 2(%r8)
	subq	%r10, %rcx
	imulq	%rsi, %rcx
	movq	%rcx, %rax
	mulq	%rdi
	shrq	$15, %rdx
	movw	%dx, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	alps_map_color_rgb, .Lfunc_end3-alps_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	alps_get_params,@function
alps_get_params:                        # @alps_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 48
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movups	.Lalps_get_params.mediaType(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB4_11
# BB#1:                                 # %lor.lhs.false
	leaq	18472(%rbx), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_11
# BB#2:                                 # %lor.lhs.false.3
	leaq	18476(%rbx), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_11
# BB#3:                                 # %lor.lhs.false.6
	leaq	18480(%rbx), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_11
# BB#4:                                 # %lor.lhs.false.9
	leaq	18484(%rbx), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_11
# BB#5:                                 # %lor.lhs.false.12
	leaq	18488(%rbx), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB4_11
# BB#6:                                 # %lor.lhs.false.15
	leaq	18496(%rbx), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_11
# BB#7:                                 # %lor.lhs.false.18
	leaq	18500(%rbx), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_11
# BB#8:                                 # %lor.lhs.false.21
	leaq	18504(%rbx), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_11
# BB#9:                                 # %lor.lhs.false.24
	addq	$18508, %rbx            # imm = 0x484C
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB4_11
# BB#10:                                # %lor.lhs.false.27
	leaq	(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_write_string
.LBB4_11:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	alps_get_params, .Lfunc_end4-alps_get_params
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	5                       # 0x5
	.long	5                       # 0x5
	.text
	.align	16, 0x90
	.type	alps_put_params,@function
alps_put_params:                        # @alps_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 128
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzwl	108(%rbx), %r13d
	movl	18472(%rbx), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movl	18476(%rbx), %r12d
	movl	18480(%rbx), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	18484(%rbx), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	18488(%rbx), %r15d
	movl	18496(%rbx), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	18500(%rbx), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	18504(%rbx), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	18508(%rbx), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leaq	68(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_1
# BB#3:                                 # %sw.bb.1.i
	movl	$1, %ebp
	movl	68(%rsp), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	jmp	.LBB5_4
.LBB5_1:                                # %entry
	cmpl	$1, %ebp
	jne	.LBB5_4
# BB#2:                                 # %sw.bb.i
	xorl	%ebp, %ebp
.LBB5_4:                                # %alps_put_param_bool.exit
	leaq	68(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	jne	.LBB5_5
# BB#7:                                 # %sw.bb.1.i.78
	movl	68(%rsp), %r12d
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_8
.LBB5_5:                                # %alps_put_param_bool.exit
	cmpl	$1, %eax
	je	.LBB5_8
# BB#6:
	movl	%eax, %ebp
.LBB5_8:                                # %alps_put_param_bool.exit80
	leaq	68(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	jne	.LBB5_9
# BB#11:                                # %sw.bb.1.i.86
	movl	68(%rsp), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_12
.LBB5_9:                                # %alps_put_param_bool.exit80
	cmpl	$1, %eax
	je	.LBB5_12
# BB#10:
	movl	%eax, %ebp
.LBB5_12:                               # %alps_put_param_bool.exit88
	leaq	68(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	jne	.LBB5_13
# BB#15:                                # %sw.bb.1.i.94
	movl	68(%rsp), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_16
.LBB5_13:                               # %alps_put_param_bool.exit88
	cmpl	$1, %eax
	je	.LBB5_16
# BB#14:
	movl	%eax, %ebp
.LBB5_16:                               # %alps_put_param_bool.exit96
	leaq	68(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	testl	%eax, %eax
	jne	.LBB5_17
# BB#19:                                # %sw.bb.1.i.102
	movl	68(%rsp), %r15d
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_20
.LBB5_17:                               # %alps_put_param_bool.exit96
	cmpl	$1, %eax
	je	.LBB5_20
# BB#18:
	movl	%eax, %ebp
.LBB5_20:                               # %alps_put_param_bool.exit104
	leaq	68(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB5_21
# BB#23:                                # %sw.bb.1.i.109
	movl	68(%rsp), %r13d
	leal	-1(%r13), %eax
	cmpl	$32, %eax
	jb	.LBB5_25
# BB#24:                                # %if.then.i
	movq	(%r14), %rax
	movl	$.L.str.14, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	68(%rsp), %r13d
.LBB5_25:                               # %if.end.i
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_26
.LBB5_21:                               # %alps_put_param_bool.exit104
	cmpl	$1, %eax
	je	.LBB5_26
# BB#22:
	movl	%eax, %ebp
.LBB5_26:                               # %alps_put_param_int.exit
	leaq	68(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB5_27
# BB#29:                                # %sw.bb.1.i.118
	movl	68(%rsp), %eax
	cmpl	$2049, %eax             # imm = 0x801
	jb	.LBB5_31
# BB#30:                                # %if.then.i.123
	movq	(%r14), %rax
	movl	$.L.str.9, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	68(%rsp), %eax
.LBB5_31:                               # %if.end.i.126
	movl	%eax, 32(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_32
.LBB5_27:                               # %alps_put_param_int.exit
	cmpl	$1, %eax
	je	.LBB5_32
# BB#28:
	movl	%eax, %ebp
.LBB5_32:                               # %alps_put_param_int.exit128
	leaq	68(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB5_33
# BB#35:                                # %sw.bb.1.i.135
	movl	68(%rsp), %eax
	cmpl	$2049, %eax             # imm = 0x801
	jb	.LBB5_37
# BB#36:                                # %if.then.i.140
	movq	(%r14), %rax
	movl	$.L.str.10, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	68(%rsp), %eax
.LBB5_37:                               # %if.end.i.143
	movl	%eax, 28(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_38
.LBB5_33:                               # %alps_put_param_int.exit128
	cmpl	$1, %eax
	je	.LBB5_38
# BB#34:
	movl	%eax, %ebp
.LBB5_38:                               # %alps_put_param_int.exit145
	leaq	68(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB5_39
# BB#41:                                # %sw.bb.1.i.152
	movl	68(%rsp), %eax
	cmpl	$2049, %eax             # imm = 0x801
	jb	.LBB5_43
# BB#42:                                # %if.then.i.157
	movq	(%r14), %rax
	movl	$.L.str.11, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	68(%rsp), %eax
.LBB5_43:                               # %if.end.i.160
	movl	%eax, 24(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_44
.LBB5_39:                               # %alps_put_param_int.exit145
	cmpl	$1, %eax
	je	.LBB5_44
# BB#40:
	movl	%eax, %ebp
.LBB5_44:                               # %alps_put_param_int.exit162
	leaq	68(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_read_int
	testl	%eax, %eax
	jne	.LBB5_45
# BB#47:                                # %sw.bb.1.i.169
	movl	68(%rsp), %eax
	cmpl	$2049, %eax             # imm = 0x801
	jb	.LBB5_49
# BB#48:                                # %if.then.i.174
	movq	(%r14), %rax
	movl	$.L.str.12, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	movl	68(%rsp), %eax
.LBB5_49:                               # %if.end.i.177
	movl	%eax, 20(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	$1, %eax
	cmovnsl	%eax, %ebp
	jmp	.LBB5_50
.LBB5_45:                               # %alps_put_param_int.exit162
	cmpl	$1, %eax
	je	.LBB5_50
# BB#46:
	movl	%eax, %ebp
.LBB5_50:                               # %alps_put_param_int.exit179
	leaq	48(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	jne	.LBB5_65
# BB#51:                                # %cond.false.69
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	movl	%r15d, 16(%rsp)         # 4-byte Spill
	movq	48(%rsp), %r15
	movl	56(%rsp), %r12d
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB5_63
# BB#52:                                # %cond.false.143
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB5_53
# BB#54:                                # %cond.false.217
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	movl	$2, %ecx
	testl	%eax, %eax
	je	.LBB5_63
# BB#55:                                # %cond.false.291
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	movl	$3, %ecx
	testl	%eax, %eax
	je	.LBB5_63
# BB#56:                                # %cond.false.365
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	movl	$5, %ecx
	testl	%eax, %eax
	je	.LBB5_63
# BB#57:                                # %cond.false.439
	movl	$.L.str.20, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB5_58
# BB#59:                                # %cond.false.513
	movl	$.L.str.21, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	movl	$7, %ecx
	testl	%eax, %eax
	je	.LBB5_63
# BB#60:                                # %cond.false.587
	movl	$.L.str.22, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	movl	$9, %ecx
	testl	%eax, %eax
	je	.LBB5_63
# BB#61:                                # %cond.false.661
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	movl	$15, %ecx
	testl	%eax, %eax
	je	.LBB5_63
# BB#62:                                # %cond.false.735
	movl	$.L.str.24, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	movl	$264, %ecx              # imm = 0x108
	testl	%eax, %eax
	je	.LBB5_63
# BB#70:                                # %cond.end.767
	movl	$.L.str.25, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	strncmp
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	$264, %ecx              # imm = 0x108
	testl	%eax, %eax
	movl	%ecx, 18492(%rbx)
	movl	16(%rsp), %r15d         # 4-byte Reload
	movl	12(%rsp), %r12d         # 4-byte Reload
	je	.LBB5_65
# BB#71:                                # %if.end.778.thread
	movq	(%r14), %rax
	movl	$-15, %ebp
	movl	$.L.str.13, %esi
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
	jmp	.LBB5_89
.LBB5_63:                               # %cond.end.767.thread
	movl	%ecx, 18492(%rbx)
	jmp	.LBB5_64
.LBB5_53:                               # %cond.end.767.thread200
	movl	$1, 18492(%rbx)
	movq	$alps_map_cmy_color, 1264(%rbx)
.LBB5_64:                               # %if.end.778
	movl	16(%rsp), %r15d         # 4-byte Reload
	movl	12(%rsp), %r12d         # 4-byte Reload
.LBB5_65:                               # %if.end.778
	testl	%ebp, %ebp
	js	.LBB5_89
# BB#66:                                # %if.end.782
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 18472(%rbx)
	movl	%r12d, 18476(%rbx)
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 18480(%rbx)
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 18484(%rbx)
	movl	%r15d, 18488(%rbx)
	movl	32(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 18496(%rbx)
	movl	28(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 18500(%rbx)
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 18504(%rbx)
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 18508(%rbx)
	testl	%r13d, %r13d
	je	.LBB5_72
# BB#67:                                # %if.then.793
	movl	$1, %ebp
	cmpl	$4, %r13d
	jl	.LBB5_73
# BB#68:                                # %cond.false.797
	movl	$4, %ebp
	cmpl	$8, %r13d
	jl	.LBB5_73
# BB#69:                                # %cond.false.801
	movl	$32, %eax
	movl	$8, %ebp
	cmovgl	%eax, %ebp
	jmp	.LBB5_73
.LBB5_72:                               # %if.else
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax,2), %eax
	testl	%r12d, %r12d
	movl	$8, %ecx
	movl	$1, %ebp
	cmovnel	%ecx, %ebp
	imull	%eax, %ebp
.LBB5_73:                               # %if.end.813
	testl	%r15d, %r15d
	je	.LBB5_84
# BB#74:                                # %land.lhs.true.821
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB5_82
# BB#75:                                # %cond.true.825
	movzbl	(%rdi), %eax
	addl	$-109, %eax
	testq	%rcx, %rcx
	je	.LBB5_83
# BB#76:                                # %cond.true.825
	testl	%eax, %eax
	jne	.LBB5_83
# BB#77:                                # %if.then.839
	movzbl	1(%rdi), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB5_83
# BB#78:                                # %if.then.839
	testl	%eax, %eax
	jne	.LBB5_83
# BB#79:                                # %if.then.849
	movzbl	2(%rdi), %eax
	addl	$-53, %eax
	cmpq	$3, %rcx
	jb	.LBB5_83
# BB#80:                                # %if.then.849
	testl	%eax, %eax
	jne	.LBB5_83
# BB#81:                                # %if.then.859
	movzbl	3(%rdi), %eax
	addl	$-107, %eax
	jmp	.LBB5_83
.LBB5_82:                               # %cond.false.868
	movl	$.L.str.2, %esi
	callq	strcmp
.LBB5_83:                               # %cond.end.871
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB5_87
.LBB5_84:                               # %if.end.875
	cmpl	$8, %ebp
	jne	.LBB5_86
# BB#85:
	movl	%ebp, %ecx
	jmp	.LBB5_87
.LBB5_86:                               # %if.end.875
	cmpl	$1, %ebp
	movl	%ebp, %ecx
	jne	.LBB5_88
.LBB5_87:                               # %if.then.880
	movq	$alps_map_rgb_color, 1184(%rbx)
	movl	%ecx, %ebp
.LBB5_88:                               # %if.end.882
	movw	%bp, 108(%rbx)
	cmpl	$8, %ebp
	setne	%al
	cmpl	$7, %ebp
	setg	%cl
	cmpl	$1, %ebp
	movzbl	%al, %eax
	leal	1(%rax,%rax,2), %eax
	cmovel	%ebp, %eax
	movl	%eax, 100(%rbx)
	setg	%al
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	pslld	$31, %xmm0
	psrad	$31, %xmm0
	movl	$2, %ecx
	movd	%ecx, %xmm1
	movl	$1, %ecx
	movd	%ecx, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%eax, %xmm1
	addl	%eax, %eax
	movd	%eax, %xmm3
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pandn	%xmm2, %xmm1
	pand	.LCPI5_0(%rip), %xmm0
	por	%xmm1, %xmm0
	movdqu	%xmm0, 112(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_put_params
	xorl	%ebp, %ebp
.LBB5_89:                               # %cleanup
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_58:                               # %cond.end.767.thread202
	movl	$6, 18492(%rbx)
	movabsq	$4886827809295433728, %rax # imm = 0x43D18000438E0000
	movq	%rax, 856(%rbx)
	jmp	.LBB5_64
.Lfunc_end5:
	.size	alps_put_params, .Lfunc_end5-alps_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	alps_map_cmyk_color,@function
alps_map_cmyk_color:                    # @alps_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movzwl	(%rsi), %ecx
	movzwl	2(%rsi), %r9d
	movzwl	4(%rsi), %r8d
	movzwl	6(%rsi), %esi
	movzwl	108(%rdi), %r10d
	cmpl	$1, %r10d
	jne	.LBB6_2
# BB#1:                                 # %sw.bb
	orl	%ecx, %r9d
	orl	%r9d, %r8d
	orl	%r8d, %esi
	shrl	$15, %esi
	jmp	.LBB6_5
.LBB6_2:                                # %sw.default
	cmpl	%r8d, %r9d
	movw	%r8w, %ax
	cmovbew	%r9w, %ax
	cmpl	%r9d, %ecx
	movw	%cx, %dx
	cmovaw	%r9w, %dx
	cmpl	%r8d, %ecx
	cmovaw	%ax, %dx
	movzwl	%dx, %edi
	xorl	%eax, %eax
	cmpl	$65535, %edi            # imm = 0xFFFF
	je	.LBB6_4
# BB#3:                                 # %cond.true.42
	movq	%rdi, %r11
	xorq	$65535, %r11            # imm = 0xFFFF
	movl	$67107840, %eax         # imm = 0x3FFFC00
	xorl	%edx, %edx
	divq	%r11
.LBB6_4:                                # %cond.end.44
	subl	%edi, %ecx
	imull	%eax, %ecx
	shrl	$10, %ecx
	subl	%edi, %r9d
	imull	%eax, %r9d
	shrl	$10, %r9d
	subl	%edi, %r8d
	imull	%eax, %r8d
	shrl	$10, %r8d
	leaq	(%rsi,%rdi), %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	movl	$65535, %r11d           # imm = 0xFFFF
	cmovbel	%eax, %r11d
	movzwl	%cx, %ebx
	shrl	$2, %r10d
	movl	$16, %eax
	subl	%r10d, %eax
	movb	%al, %cl
	shrl	%cl, %ebx
	leal	(%r10,%r10,2), %ecx
	shll	%cl, %ebx
	movzwl	%r9w, %edi
	movb	%al, %cl
	shrl	%cl, %edi
	leal	(%r10,%r10), %ecx
	shll	%cl, %edi
	movzwl	%r8w, %esi
	movb	%al, %cl
	shrl	%cl, %esi
	movb	%r10b, %cl
	shll	%cl, %esi
	movzwl	%r11w, %edx
	movb	%al, %cl
	shrl	%cl, %edx
	orl	%edi, %edx
	orl	%ebx, %edx
	orl	%esi, %edx
	movslq	%edx, %rsi
.LBB6_5:                                # %sw.epilog
	movq	%rsi, %rax
	popq	%rbx
	retq
.Lfunc_end6:
	.size	alps_map_cmyk_color, .Lfunc_end6-alps_map_cmyk_color
	.cfi_endproc

	.align	16, 0x90
	.type	alps_map_cmy_color,@function
alps_map_cmy_color:                     # @alps_map_cmy_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %r8d
	movzwl	6(%rsi), %ecx
	movl	%ecx, %edx
	shll	$10, %edx
	xorl	$67107840, %edx         # imm = 0x3FFFC00
	movl	$2147516417, %edi       # imm = 0x80008001
	imulq	%rdx, %rdi
	shrq	$47, %rdi
	movzwl	(%rsi), %edx
	imull	%edi, %edx
	shrl	$10, %edx
	addl	%ecx, %edx
	movzwl	2(%rsi), %eax
	imull	%edi, %eax
	shrl	$10, %eax
	addl	%ecx, %eax
	movzwl	4(%rsi), %esi
	imull	%edi, %esi
	shrl	$10, %esi
	addl	%ecx, %esi
	movzwl	%dx, %edi
	shrl	$2, %r8d
	movl	$16, %edx
	subl	%r8d, %edx
	movb	%dl, %cl
	shrl	%cl, %edi
	leal	(%r8,%r8,2), %ecx
	shll	%cl, %edi
	movzwl	%ax, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	leal	(%r8,%r8), %ecx
	shll	%cl, %eax
	orl	%edi, %eax
	movzwl	%si, %esi
	movb	%dl, %cl
	shrl	%cl, %esi
	movb	%r8b, %cl
	shll	%cl, %esi
	orl	%eax, %esi
	movslq	%esi, %rax
	retq
.Lfunc_end7:
	.size	alps_map_cmy_color, .Lfunc_end7-alps_map_cmy_color
	.cfi_endproc

	.align	16, 0x90
	.type	alps_map_rgb_color,@function
alps_map_rgb_color:                     # @alps_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %r8d
	movzwl	2(%rsi), %edx
	movzwl	4(%rsi), %ecx
	movl	%edx, %eax
	andl	%r8d, %eax
	andl	%ecx, %eax
	imull	$65281, %eax, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	xorl	%eax, %eax
	cmpl	$-16777217, %esi        # imm = 0xFFFFFFFFFEFFFFFF
	ja	.LBB8_5
# BB#1:                                 # %if.else
	notl	%r8d
	notl	%edx
	notl	%ecx
	movzwl	108(%rdi), %esi
	xorl	%eax, %eax
	cmpl	$8, %esi
	jne	.LBB8_2
# BB#4:                                 # %sw.bb.24
	movzwl	%r8w, %eax
	imulq	$306, %rax, %rax        # imm = 0x132
	movzwl	%dx, %edx
	imulq	$601, %rdx, %rdx        # imm = 0x259
	addq	%rax, %rdx
	movzwl	%cx, %eax
	imulq	$117, %rax, %rax
	addq	%rdx, %rax
	shrq	$18, %rax
	jmp	.LBB8_5
.LBB8_2:                                # %if.else
	cmpl	$1, %esi
	jne	.LBB8_5
# BB#3:                                 # %sw.bb
	orl	%r8d, %edx
	orl	%edx, %ecx
	andl	$32768, %ecx            # imm = 0x8000
	shrl	$15, %ecx
	movq	%rcx, %rax
	retq
.LBB8_5:                                # %cleanup
	retq
.Lfunc_end8:
	.size	alps_map_rgb_color, .Lfunc_end8-alps_map_rgb_color
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1142489088              # float 612
.LCPI9_1:
	.long	1142210560              # float 595
.LCPI9_2:
	.long	1142259712              # float 598
.LCPI9_3:
	.long	1140916224              # float 516
.LCPI9_4:
	.long	1140490240              # float 501
.LCPI9_5:
	.long	1133379584              # float 284
.LCPI9_6:
	.long	1142292480              # float 600
.LCPI9_7:
	.long	1133903872              # float 300
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_8:
	.quad	4634766966517661696     # double 72
	.text
	.align	16, 0x90
	.type	alps_print_page,@function
alps_print_page:                        # @alps_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 272
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%edx, 132(%rsp)         # 4-byte Spill
	movq	%rsi, %r14
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %edx
	movl	%edx, 192(%rsp)         # 4-byte Spill
	movl	836(%rbp), %eax
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movl	100(%rbp), %ebx
	movl	$3, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	cmpl	$1, 18492(%rbp)
	je	.LBB9_2
# BB#1:                                 # %select.mid
	movl	%ebx, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB9_2:                                # %select.end
	movq	24(%rbp), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$7, %esi
	movl	$.L.str.26, %ecx
	movl	%edx, %r12d
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_110
# BB#3:                                 # %if.end
	movl	%ebx, 148(%rsp)         # 4-byte Spill
	movl	$.L.str.31, %edi
	movl	$1, %esi
	movl	$11, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$.L.str.32, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$2, %ebx
	cmpl	$0, 18480(%rbp)
	movl	$2, %edi
	jne	.LBB9_5
# BB#4:                                 # %select.mid282
	movl	$1, %edi
.LBB9_5:                                # %select.end281
	movq	%r14, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$72, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$.L.str.32, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	callq	fwrite
	movzbl	18492(%rbp), %edi
	movq	%r14, %rsi
	callq	fputc
	movl	18492(%rbp), %eax
	movzbl	%ah, %edi  # NOREX
	movq	%r14, %rsi
	callq	fputc
	movl	$77, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$.L.str.32, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	callq	fwrite
	movss	856(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI9_0(%rip), %xmm0
	jne	.LBB9_6
	jnp	.LBB9_11
.LBB9_6:                                # %cond.false.i
	ucomiss	.LCPI9_1(%rip), %xmm0
	jb	.LBB9_8
# BB#7:                                 # %cond.false.i
	movl	$4, %ebx
	movss	.LCPI9_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB9_11
.LBB9_8:                                # %cond.false.32.i
	movl	$5, %ebx
	ucomiss	.LCPI9_3(%rip), %xmm0
	jne	.LBB9_9
	jnp	.LBB9_11
.LBB9_9:                                # %cond.false.32.i
	ucomiss	.LCPI9_4(%rip), %xmm0
	jne	.LBB9_10
	jnp	.LBB9_11
.LBB9_10:                               # %cond.false.42.i
	xorl	%eax, %eax
	ucomiss	.LCPI9_5(%rip), %xmm0
	movl	$6, %ebx
	cmovnel	%eax, %ebx
	cmovpl	%eax, %ebx
.LBB9_11:                               # %cond.end.51.i
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$65, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$.L.str.33, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$4, %edi
	cmpl	$1, 18492(%rbp)
	je	.LBB9_15
# BB#12:                                # %cond.false.105.i
	cmpl	$1, 100(%rbp)
	jne	.LBB9_14
# BB#13:                                # %cond.true.108.i
	cmpl	$0, 18488(%rbp)
	setne	%al
	movzbl	%al, %edi
	jmp	.LBB9_15
.LBB9_14:                               # %cond.false.111.i
	cmpl	$2, 132(%rsp)           # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %eax
	leal	4(,%rax,4), %edi
.LBB9_15:                               # %cond.end.117.i
	movq	%r14, %rsi
	callq	fputc
	movl	$85, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$.L.str.34, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	callq	fwrite
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	cmpneqss	.LCPI9_6(%rip), %xmm1
	movd	%xmm1, %eax
	andl	$1, %eax
	addl	$3, %eax
	ucomiss	.LCPI9_7(%rip), %xmm0
	movl	$2, %edi
	cmovnel	%eax, %edi
	cmovpl	%eax, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$82, %edi
	movq	%r14, %rsi
	callq	fputc
	movss	860(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	912(%rbp), %xmm0
	subss	920(%rbp), %xmm0
	mulss	888(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI9_8(%rip), %xmm0
	movq	%rbp, %r15
	cvttsd2si	%xmm0, %ebp
	movl	$.L.str.32, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	callq	fwrite
	movzwl	%bp, %ebx
	movzbl	%bpl, %edi
	movq	%r15, %rbp
	movq	%r14, %rsi
	callq	fputc
	shrl	$8, %ebx
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$80, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$.L.str.27, %edi
	movl	$1, %esi
	movl	$2, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	18484(%rbp), %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$.L.str.35, %edi
	movl	$1, %esi
	movl	$2, %edx
	movq	%r14, %rcx
	callq	fwrite
	cmpl	$2, 132(%rsp)           # 4-byte Folded Reload
	jne	.LBB9_23
# BB#16:                                # %if.then.i
	cmpl	$0, 18488(%rbp)
	je	.LBB9_18
# BB#17:                                # %if.then.161.i
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	$.L.str.36, %edi
	movl	$1, %esi
	movl	$5, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$.L.str.37, %edi
	jmp	.LBB9_20
.LBB9_23:                               # %if.else.176.i
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	$.L.str.43, %edi
	movl	$1, %esi
	movl	$5, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$.L.str.44, %edi
	movl	$1, %esi
	movl	$6, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	%r12d, %ebp
	jmp	.LBB9_24
.LBB9_18:                               # %if.else.i
	cmpl	$1, 100(%rbp)
	jne	.LBB9_21
# BB#19:                                # %if.then.168.i
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	$.L.str.38, %edi
.LBB9_20:                               # %if.end.172.i
	movl	$1, %esi
	movl	$7, %edx
	jmp	.LBB9_22
.LBB9_21:                               # %if.else.170.i
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	$.L.str.39, %edi
	movl	$1, %esi
	movl	$10, %edx
.LBB9_22:                               # %if.end.172.i
	movq	%r14, %rcx
	callq	fwrite
	movl	%r12d, %ebp
	movl	$.L.str.40, %edi
	movl	$1, %esi
	movl	$5, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$.L.str.41, %edi
	movl	$1, %esi
	movl	$5, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$.L.str.42, %edi
	movl	$1, %esi
	movl	$6, %edx
	movq	%r14, %rcx
	callq	fwrite
.LBB9_24:                               # %for.cond.preheader
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB9_109
# BB#25:                                # %for.cond.12.preheader.lr.ph
	movslq	%ebp, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movslq	148(%rsp), %r15         # 4-byte Folded Reload
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rdi         # 8-byte Reload
	leaq	18508(%rdi), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rcx          # 8-byte Reload
	leal	-1(%rcx), %esi
	movl	%esi, 52(%rsp)          # 4-byte Spill
	leaq	18496(%rdi), %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	leaq	18500(%rdi), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leaq	18504(%rdi), %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rdx,2), %rcx
	addq	%rax, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	%r15d, %eax
	negl	%eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	cltq
	shlq	$2, %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB9_26:                               # %for.cond.12.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_34 Depth 2
                                        #       Child Loop BB9_45 Depth 3
                                        #       Child Loop BB9_74 Depth 3
                                        #       Child Loop BB9_76 Depth 3
                                        #         Child Loop BB9_77 Depth 4
                                        #       Child Loop BB9_39 Depth 3
                                        #       Child Loop BB9_62 Depth 3
                                        #       Child Loop BB9_88 Depth 3
                                        #         Child Loop BB9_89 Depth 4
                                        #         Child Loop BB9_98 Depth 4
                                        #       Child Loop BB9_69 Depth 3
	movl	%ebp, 192(%rsp)         # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, %ebx
	movq	32(%rsp), %rbp          # 8-byte Reload
	jle	.LBB9_28
	.align	16, 0x90
.LBB9_27:                               # %for.body.14
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	shll	$16, %eax
	movslq	%eax, %rcx
	imulq	$-2139062143, %rcx, %rdx # imm = 0xFFFFFFFF80808081
	shrq	$32, %rdx
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$25, %ecx
	addl	%edx, %ecx
	imull	$66846720, %ecx, %ecx   # imm = 0x3FC0000
	negl	%ecx
	leal	-33423360(%rax,%rcx), %eax
	movl	%eax, (%rbp)
	addq	$4, %rbp
	decl	%ebx
	jne	.LBB9_27
.LBB9_28:                               # %for.end
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	jne	.LBB9_29
# BB#30:                                # %cond.true.37
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	136(%rsp), %r13         # 8-byte Reload
	movl	18508(%r13), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	$.L.str.27, %edi
	movl	$1, %esi
	movl	$2, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$22, %edi
	cmpl	$0, 18488(%r13)
	jne	.LBB9_32
# BB#31:                                # %select.mid295
                                        #   in Loop: Header=BB9_26 Depth=1
	xorl	%edi, %edi
	jmp	.LBB9_32
	.align	16, 0x90
.LBB9_29:                               # %if.else
                                        #   in Loop: Header=BB9_26 Depth=1
	testl	%r12d, %r12d
	movq	8(%rsp), %rax           # 8-byte Reload
	cmoveq	16(%rsp), %rax          # 8-byte Folded Reload
	cmpl	$2, %r12d
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmoveq	(%rsp), %rcx            # 8-byte Folded Reload
	cmpq	$2, %r12
	cmovlq	%rax, %rcx
	movl	(%rcx), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	$.L.str.27, %edi
	movl	$1, %esi
	movl	$2, %edx
	movq	%r14, %rcx
	callq	fwrite
	leal	1(%r12), %eax
	sarl	$31, %eax
	shrl	$30, %eax
	leal	1(%r12,%rax), %eax
	andl	$-4, %eax
	negl	%eax
	leal	1(%r12,%rax), %edi
	movq	136(%rsp), %r13         # 8-byte Reload
.LBB9_32:                               # %select.end294
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	192(%rsp), %ebp         # 4-byte Reload
	movq	%r12, 96(%rsp)          # 8-byte Spill
	movq	%r14, %rsi
	callq	fputc
	cmpl	52(%rsp), %r12d         # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %edi
	shll	$7, %edi
	cmpl	$2, 132(%rsp)           # 4-byte Folded Reload
	movl	$0, %eax
	cmovnel	%eax, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$114, %edi
	movq	%r14, %rsi
	callq	fputc
	cmpl	$0, 180(%rsp)           # 4-byte Folded Reload
	jle	.LBB9_106
# BB#33:                                # %for.body.52.lr.ph
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	$128, %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	shrl	%cl, %eax
	movzbl	%al, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	shrl	$4, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movl	$6, %eax
	subl	%ecx, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movl	$3, %eax
	subl	%ecx, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB9_34:                               # %for.body.52
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_45 Depth 3
                                        #       Child Loop BB9_74 Depth 3
                                        #       Child Loop BB9_76 Depth 3
                                        #         Child Loop BB9_77 Depth 4
                                        #       Child Loop BB9_39 Depth 3
                                        #       Child Loop BB9_62 Depth 3
                                        #       Child Loop BB9_88 Depth 3
                                        #         Child Loop BB9_89 Depth 4
                                        #         Child Loop BB9_98 Depth 4
                                        #       Child Loop BB9_69 Depth 3
	movl	%esi, 196(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	movq	168(%rsp), %rdx         # 8-byte Reload
	leaq	208(%rsp), %rcx
	callq	gdev_prn_get_bits
	movzwl	108(%r13), %eax
	cmpl	$7, %eax
	jg	.LBB9_41
# BB#35:                                # %for.body.52
                                        #   in Loop: Header=BB9_34 Depth=2
	cmpl	$1, %eax
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	jne	.LBB9_36
# BB#47:                                # %for.body.52.for.cond.57.preheader_crit_edge
                                        #   in Loop: Header=BB9_34 Depth=2
	movq	208(%rsp), %rcx
	movl	%ebp, %eax
	jmp	.LBB9_61
	.align	16, 0x90
.LBB9_41:                               # %for.body.52
                                        #   in Loop: Header=BB9_34 Depth=2
	cmpl	$8, %eax
	jne	.LBB9_42
# BB#48:                                # %for.body.52.for.cond.75.preheader_crit_edge
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	%ebp, %eax
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	movq	208(%rsp), %rdx
	jmp	.LBB9_44
	.align	16, 0x90
.LBB9_36:                               # %for.body.52
                                        #   in Loop: Header=BB9_34 Depth=2
	cmpl	$4, %eax
	movl	%ebp, %r12d
	jne	.LBB9_82
# BB#37:                                # %sw.bb
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, %r8d
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	88(%rsp), %r9d          # 4-byte Reload
	movl	84(%rsp), %r10d         # 4-byte Reload
	movl	80(%rsp), %r11d         # 4-byte Reload
	movl	76(%rsp), %r12d         # 4-byte Reload
	jle	.LBB9_60
# BB#38:                                #   in Loop: Header=BB9_34 Depth=2
	movq	208(%rsp), %rdx
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rdx,%rax), %rsi
	movq	184(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB9_39:                               # %for.cond.preheader.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%rsi, %rdx
	jae	.LBB9_40
# BB#49:                                # %cond.true.i
                                        #   in Loop: Header=BB9_39 Depth=3
	movb	(%rdx), %cl
	incq	%rdx
	jmp	.LBB9_50
	.align	16, 0x90
.LBB9_40:                               #   in Loop: Header=BB9_39 Depth=3
	xorl	%ecx, %ecx
.LBB9_50:                               # %cond.end.i
                                        #   in Loop: Header=BB9_39 Depth=3
	movzbl	%cl, %ebp
	movl	%ebp, %edi
	andl	%r9d, %edi
	movb	%r11b, %cl
	shrl	%cl, %edi
	andl	%r10d, %ebp
	movb	%r12b, %cl
	shrl	%cl, %ebp
	orl	%edi, %ebp
	cmpq	%rsi, %rdx
	jae	.LBB9_51
# BB#52:                                # %cond.true.1.i
                                        #   in Loop: Header=BB9_39 Depth=3
	movb	(%rdx), %cl
	incq	%rdx
	jmp	.LBB9_53
	.align	16, 0x90
.LBB9_51:                               #   in Loop: Header=BB9_39 Depth=3
	xorl	%ecx, %ecx
.LBB9_53:                               # %cond.end.1.i
                                        #   in Loop: Header=BB9_39 Depth=3
	shll	$2, %ebp
	movzbl	%cl, %edi
	movl	%edi, %ebx
	andl	%r9d, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	andl	%r10d, %edi
	movb	%r12b, %cl
	shrl	%cl, %edi
	orl	%ebp, %edi
	orl	%ebx, %edi
	cmpq	%rsi, %rdx
	jae	.LBB9_54
# BB#55:                                # %cond.true.2.i
                                        #   in Loop: Header=BB9_39 Depth=3
	movb	(%rdx), %cl
	incq	%rdx
	jmp	.LBB9_56
	.align	16, 0x90
.LBB9_54:                               #   in Loop: Header=BB9_39 Depth=3
	xorl	%ecx, %ecx
.LBB9_56:                               # %cond.end.2.i
                                        #   in Loop: Header=BB9_39 Depth=3
	shll	$2, %edi
	movzbl	%cl, %ebp
	movl	%ebp, %ebx
	andl	%r9d, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	andl	%r10d, %ebp
	movb	%r12b, %cl
	shrl	%cl, %ebp
	orl	%edi, %ebp
	orl	%ebx, %ebp
	cmpq	%rsi, %rdx
	jae	.LBB9_57
# BB#58:                                # %cond.true.3.i
                                        #   in Loop: Header=BB9_39 Depth=3
	movb	(%rdx), %cl
	incq	%rdx
	jmp	.LBB9_59
	.align	16, 0x90
.LBB9_57:                               #   in Loop: Header=BB9_39 Depth=3
	xorl	%ecx, %ecx
.LBB9_59:                               # %cond.end.3.i
                                        #   in Loop: Header=BB9_39 Depth=3
	shll	$2, %ebp
	movzbl	%cl, %edi
	movl	%edi, %ebx
	andl	%r9d, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	andl	%r10d, %edi
	movb	%r12b, %cl
	shrl	%cl, %edi
	orl	%ebp, %edi
	orl	%ebx, %edi
	movb	%dil, (%rax)
	incq	%rax
	cmpq	%rsi, %rdx
	jb	.LBB9_39
.LBB9_60:                               # %cmyk_to_bit.exit
                                        #   in Loop: Header=BB9_34 Depth=2
	movq	184(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movq	%rcx, 208(%rsp)
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	164(%rsp), %ebx         # 4-byte Reload
	movl	%r8d, %ebp
.LBB9_61:                               # %for.cond.57.preheader
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	%eax, %eax
	.align	16, 0x90
.LBB9_62:                               # %for.cond.57
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB9_83
# BB#63:                                # %land.rhs.60
                                        #   in Loop: Header=BB9_62 Depth=3
	leal	(%r12,%rsi), %edx
	andq	%rsi, %rdx
	leaq	-1(%r12), %rax
	cmpb	$0, (%rcx,%rdx)
	je	.LBB9_62
	jmp	.LBB9_64
	.align	16, 0x90
.LBB9_42:                               # %for.body.52
                                        #   in Loop: Header=BB9_34 Depth=2
	cmpl	$32, %eax
	movl	%ebp, %r12d
	jne	.LBB9_82
# BB#43:                                # %sw.bb.71
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	%ebp, %eax
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	movq	208(%rsp), %rdx
	addq	96(%rsp), %rdx          # 8-byte Folded Reload
	movq	%rdx, 208(%rsp)
.LBB9_44:                               # %for.cond.75.preheader
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	148(%rsp), %ebp         # 4-byte Reload
	movq	112(%rsp), %rbx         # 8-byte Reload
	movl	%eax, %esi
	.align	16, 0x90
.LBB9_45:                               # %for.cond.75
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%esi, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB9_46
# BB#72:                                # %land.rhs.78
                                        #   in Loop: Header=BB9_45 Depth=3
	movl	%eax, %esi
	subl	%ebp, %esi
	leal	(%rbx,%rax), %edi
	cmpb	$0, (%rdx,%rdi)
	je	.LBB9_45
# BB#73:                                # %for.body.93.preheader
                                        #   in Loop: Header=BB9_34 Depth=2
	movq	%r14, %r13
	movzbl	(%rdx), %esi
	movl	92(%rsp), %ebx          # 4-byte Reload
	imull	%ebx, %esi
	shrl	$10, %esi
	movb	%sil, (%rdx)
	cmpl	%ebp, %eax
	movq	%r15, %rdx
	jbe	.LBB9_75
	.align	16, 0x90
.LBB9_74:                               # %for.body.93.for.body.93_crit_edge
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	208(%rsp), %rsi
	movzbl	(%rsi,%rdx), %edi
	imull	%ebx, %edi
	shrl	$10, %edi
	movb	%dil, (%rsi,%rdx)
	addq	%r15, %rdx
	cmpl	%eax, %edx
	jb	.LBB9_74
	jmp	.LBB9_75
.LBB9_46:                               #   in Loop: Header=BB9_34 Depth=2
	movq	%r14, %r13
	xorl	%eax, %eax
.LBB9_75:                               # %for.end.102
                                        #   in Loop: Header=BB9_34 Depth=2
	xorl	%edx, %edx
	divl	%ebp
	movl	%ebp, 148(%rsp)         # 4-byte Spill
	movl	%eax, %r12d
	addl	$7, %r12d
	shrl	$3, %r12d
	movl	$0, %r8d
	movq	120(%rsp), %r11         # 8-byte Reload
	movq	184(%rsp), %r9          # 8-byte Reload
	je	.LBB9_81
	.align	16, 0x90
.LBB9_76:                               # %for.cond.109.preheader
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_77 Depth 4
	movq	208(%rsp), %r14
	movq	200(%rsp), %rax         # 8-byte Reload
	leaq	(%r11,%rax), %r10
	movb	$-128, %al
	xorl	%ebp, %ebp
	movl	%ecx, %ebx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB9_77:                               # %for.body.112
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        #       Parent Loop BB9_76 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	imull	$7, %ebx, %edx
	addl	$8, %edx
	sarl	$4, %edx
	addl	(%r11,%rbp,4), %edx
	movzbl	(%r14), %edi
	shll	$19, %edi
	leal	(%rdx,%rdi), %ecx
	addq	%r15, %r14
	movq	%r14, 208(%rsp)
	cmpl	$67108864, %ecx         # imm = 0x4000000
	leal	-133693440(%rdi,%rdx), %edi
	movb	%al, %dl
	jg	.LBB9_79
# BB#78:                                # %for.body.112
                                        #   in Loop: Header=BB9_77 Depth=4
	movl	$0, %edx
.LBB9_79:                               # %for.body.112
                                        #   in Loop: Header=BB9_77 Depth=4
	cmovgl	%edi, %ecx
	leal	8(%rcx,%rcx,2), %edi
	sarl	$4, %edi
	addl	%edi, (%r10,%rbp,4)
	orb	%dl, %sil
	leal	(%rcx,%rcx,4), %edx
	leal	8(%rbx,%rdx), %edx
	sarl	$4, %edx
	movl	%edx, (%r11,%rbp,4)
	shrb	%al
	incq	%rbp
	cmpl	$8, %ebp
	movl	%ecx, %ebx
	jne	.LBB9_77
# BB#80:                                # %for.end.146
                                        #   in Loop: Header=BB9_76 Depth=3
	addq	$32, %r11
	movb	%sil, (%r9)
	incq	%r9
	incl	%r8d
	cmpl	%r12d, %r8d
	jne	.LBB9_76
.LBB9_81:                               # %for.end.150
                                        #   in Loop: Header=BB9_34 Depth=2
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	%rax, 208(%rsp)
	movq	%r13, %r14
	movl	192(%rsp), %ebp         # 4-byte Reload
	movq	136(%rsp), %r13         # 8-byte Reload
	movl	164(%rsp), %ebx         # 4-byte Reload
.LBB9_82:                               # %sw.epilog
                                        #   in Loop: Header=BB9_34 Depth=2
	testl	%r12d, %r12d
	je	.LBB9_83
.LBB9_64:                               # %if.else.155
                                        #   in Loop: Header=BB9_34 Depth=2
	testl	%ebx, %ebx
	je	.LBB9_66
# BB#65:                                # %if.then.157
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	$.L.str.28, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	callq	fwrite
	movzbl	%bl, %edi
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r14, %rsi
	callq	fputc
	movl	$89, %edi
	movq	%r14, %rsi
	callq	fputc
.LBB9_66:                               # %if.end.167
                                        #   in Loop: Header=BB9_34 Depth=2
	cmpl	$2, 132(%rsp)           # 4-byte Folded Reload
	jne	.LBB9_86
# BB#67:                                # %for.cond.171.preheader
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	%ebp, 192(%rsp)         # 4-byte Spill
	testl	%r12d, %r12d
	movl	$0, %ebx
	movl	$0, %eax
	je	.LBB9_85
# BB#68:                                # %land.rhs.174.lr.ph
                                        #   in Loop: Header=BB9_34 Depth=2
	movq	208(%rsp), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB9_69:                               # %land.rhs.174
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$0, (%rax,%rcx)
	jne	.LBB9_84
# BB#70:                                # %for.inc.180
                                        #   in Loop: Header=BB9_69 Depth=3
	leaq	1(%rcx), %rbx
	decl	%r12d
	leaq	1(%rax,%rcx), %rcx
	movq	%rcx, 208(%rsp)
	movq	%rbx, %rcx
	jne	.LBB9_69
# BB#71:                                # %for.end.184.loopexitsplit
                                        #   in Loop: Header=BB9_34 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_85
	.align	16, 0x90
.LBB9_83:                               # %if.then.153
                                        #   in Loop: Header=BB9_34 Depth=2
	incl	%ebx
	jmp	.LBB9_104
	.align	16, 0x90
.LBB9_86:                               # %if.else.203
                                        #   in Loop: Header=BB9_34 Depth=2
	testl	%r12d, %r12d
	movq	152(%rsp), %rbx         # 8-byte Reload
	jle	.LBB9_103
# BB#87:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB9_34 Depth=2
	movq	208(%rsp), %r14
	movslq	%r12d, %rax
                                        # implicit-def: R13D
	leaq	(%rax,%r14), %r12
	movq	152(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB9_88:                               # %while.body.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_89 Depth 4
                                        #         Child Loop BB9_98 Depth 4
	movq	%r12, %rcx
	subq	%r14, %rcx
	cmpq	$128, %rcx
	movl	$128, %eax
	cmovgl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$0, %eax
	jle	.LBB9_94
	.align	16, 0x90
.LBB9_89:                               # %for.body.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        #       Parent Loop BB9_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r14,%rax), %edx
	xorl	%r13d, %r13d
	movzbl	1(%r14,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB9_91
# BB#90:                                # %land.end.i
                                        #   in Loop: Header=BB9_89 Depth=4
	movzbl	2(%r14,%rax), %esi
	movzbl	%dl, %edx
	cmpl	%esi, %edx
	sete	%dl
	movzbl	%dl, %r13d
	je	.LBB9_92
.LBB9_91:                               # %for.inc.i
                                        #   in Loop: Header=BB9_89 Depth=4
	incq	%rax
	cmpl	%ecx, %eax
	jl	.LBB9_89
.LBB9_92:                               # %land.end.i.for.end.i_crit_edge
                                        #   in Loop: Header=BB9_88 Depth=3
	addq	%rax, %r14
	testl	%eax, %eax
	jle	.LBB9_94
# BB#93:                                # %if.then.19.i
                                        #   in Loop: Header=BB9_88 Depth=3
	leal	255(%rax), %ecx
	leaq	1(%rbx), %rdi
	movb	%cl, (%rbx)
	movslq	%eax, %rbp
	movq	%r14, %rsi
	subq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	leaq	1(%rbx,%rbp), %rbx
.LBB9_94:                               # %if.end.27.i
                                        #   in Loop: Header=BB9_88 Depth=3
	testl	%r13d, %r13d
	je	.LBB9_95
# BB#96:                                # %if.then.29.i
                                        #   in Loop: Header=BB9_88 Depth=3
	movq	%r12, %rcx
	subq	%r14, %rcx
	cmpq	$129, %rcx
	movl	$129, %eax
	cmovgl	%eax, %ecx
	cmpl	$4, %ecx
	movl	$3, %eax
	jl	.LBB9_97
	.align	16, 0x90
.LBB9_98:                               # %land.rhs.47.i
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_34 Depth=2
                                        #       Parent Loop BB9_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r14,%rax), %edx
	movzbl	-1(%r14,%rax), %esi
	cmpl	%edx, %esi
	jne	.LBB9_100
# BB#99:                                # %for.inc.56.i
                                        #   in Loop: Header=BB9_98 Depth=4
	incq	%rax
	cmpl	%ecx, %eax
	jl	.LBB9_98
.LBB9_100:                              # %land.rhs.47.i.for.end.59.i.loopexit_crit_edge
                                        #   in Loop: Header=BB9_88 Depth=3
	addq	%rax, %r14
	jmp	.LBB9_101
	.align	16, 0x90
.LBB9_95:                               #   in Loop: Header=BB9_88 Depth=3
	xorl	%r13d, %r13d
	jmp	.LBB9_102
	.align	16, 0x90
.LBB9_97:                               #   in Loop: Header=BB9_88 Depth=3
	addq	$3, %r14
	movl	$3, %eax
.LBB9_101:                              # %for.end.59.i
                                        #   in Loop: Header=BB9_88 Depth=3
	movl	$257, %ecx              # imm = 0x101
	subl	%eax, %ecx
	movb	%cl, (%rbx)
	movb	-1(%r14), %al
	movb	%al, 1(%rbx)
	addq	$2, %rbx
.LBB9_102:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB9_88 Depth=3
	cmpq	%r12, %r14
	jb	.LBB9_88
.LBB9_103:                              # %runlength.exit
                                        #   in Loop: Header=BB9_34 Depth=2
	movq	152(%rsp), %rbp         # 8-byte Reload
	subq	%rbp, %rbx
	movl	$.L.str.28, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rcx
	callq	fwrite
	movzbl	%bl, %edi
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r14, %rsi
	callq	fputc
	movl	$87, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	fwrite
	xorl	%ebx, %ebx
	movq	136(%rsp), %r13         # 8-byte Reload
	movl	192(%rsp), %ebp         # 4-byte Reload
.LBB9_104:                              # %if.end.217
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	196(%rsp), %esi         # 4-byte Reload
	jmp	.LBB9_105
.LBB9_84:                               # %land.rhs.174.for.end.184.loopexit_crit_edge
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	%ecx, %ebx
	movl	%r12d, %eax
.LBB9_85:                               # %for.end.184
                                        #   in Loop: Header=BB9_34 Depth=2
	movl	$.L.str.28, %edi
	movl	$1, %esi
	movl	$3, %edx
	movq	%r14, %rcx
	movl	%eax, %ebp
	callq	fwrite
	movzbl	%bpl, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	%ebp, %eax
	movzbl	%ah, %edi  # NOREX
	movq	%r14, %rsi
	callq	fputc
	movl	$84, %edi
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bl, %edi
	movq	%r14, %rsi
	callq	fputc
	movzbl	%bh, %edi  # NOREX
	movq	%r14, %rsi
	callq	fputc
	movq	208(%rsp), %rdi
	movl	%ebp, %edx
	movl	$1, %esi
	movq	%r14, %rcx
	callq	fwrite
	movl	196(%rsp), %esi         # 4-byte Reload
	xorl	%ebx, %ebx
	movl	192(%rsp), %ebp         # 4-byte Reload
.LBB9_105:                              # %if.end.217
                                        #   in Loop: Header=BB9_34 Depth=2
	incl	%esi
	cmpl	180(%rsp), %esi         # 4-byte Folded Reload
	jne	.LBB9_34
.LBB9_106:                              # %for.end.220
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	96(%rsp), %r12          # 8-byte Reload
	incq	%r12
	cmpq	40(%rsp), %r12          # 8-byte Folded Reload
	jge	.LBB9_108
# BB#107:                               # %if.then.224
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	$.L.str.29, %edi
	movl	$1, %esi
	movl	$5, %edx
	movq	%r14, %rcx
	callq	fwrite
.LBB9_108:                              # %for.cond.backedge
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r12d
	jne	.LBB9_26
.LBB9_109:                              # %for.end.229
	movl	$.L.str.30, %edi
	movl	$1, %esi
	movl	$9, %edx
	movq	%r14, %rcx
	callq	fwrite
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.26, %edx
	movq	184(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB9_110:                              # %cleanup
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	alps_print_page, .Lfunc_end9-alps_print_page
	.cfi_endproc

	.type	alps_procs,@object      # @alps_procs
	.data
	.align	8
alps_procs:
	.quad	alps_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	alps_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	alps_get_params
	.quad	alps_put_params
	.quad	alps_map_cmyk_color
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
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	alps_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"md2k"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceCMYK"
	.size	.L.str.1, 11

	.type	gs_md2k_device,@object  # @gs_md2k_device
	.data
	.globl	gs_md2k_device
	.align	8
gs_md2k_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	alps_procs
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
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	0                       # 0x0
	.byte	3                       # 0x3
	.zero	1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	md2k_print_page
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
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.size	gs_md2k_device, 18512

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"md5k"
	.size	.L.str.2, 5

	.type	gs_md5k_device,@object  # @gs_md5k_device
	.data
	.globl	gs_md5k_device
	.align	8
gs_md5k_device:
	.long	18512                   # 0x4850
	.zero	4
	.quad	alps_procs
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
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	0                       # 0x0
	.byte	3                       # 0x3
	.zero	1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	md5k_print_page
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
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.size	gs_md5k_device, 18512

	.type	alps_open.margins,@object # @alps_open.margins
	.section	.rodata,"a",@progbits
	.align	16
alps_open.margins:
	.long	1040781860              # float 1.338583e-01
	.long	1058483805              # float 5.905512e-01
	.long	1040781860              # float 1.338583e-01
	.long	1056039880              # float 4.724410e-01
	.size	alps_open.margins, 16

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.Lalps_get_params.mediaType,@object # @alps_get_params.mediaType
	.section	.rodata,"a",@progbits
	.align	8
.Lalps_get_params.mediaType:
	.quad	.L.str.3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	.Lalps_get_params.mediaType, 16

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Color"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Dither"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ManualFeed"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ReverseSide"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"EcoBlack"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Cyan"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Magenta"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Yellow"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Black"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"MediaType"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"BitsPerPixel"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"PlainPaper"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"OHP_MD2000"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"IronSeal"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RebecaFree"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"CardBoard"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"PostCard"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"FinePaper"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"CoatedFilm"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GlossyPaper"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"TransparencyFilm"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"OHP"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"alps_print_page(work)"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\033\032"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\033*b"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata,"a",@progbits
.L.str.29:
	.asciz	"\033\032\000\000\f"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\f\033*rC\033%\000X"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\033e\033%\200A\033\032\000\000L"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"\033&l"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\033*r"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\033*t"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata,"a",@progbits
.L.str.35:
	.asciz	"\000A"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"\033\032\001\000C"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.cst8,"aM",@progbits,8
.L.str.37:
	.asciz	"\033&l\001\000C\027"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\033&l\001\000C\000"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata,"a",@progbits
.L.str.39:
	.asciz	"\033&l\004\000C\003\002\001\000"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\033\032\000\000U"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"\033*r\001A"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata,"a",@progbits
.L.str.42:
	.asciz	"\033*b\000\000M"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\033*r\000A"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\033*b\002\000M"
	.size	.L.str.44, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
