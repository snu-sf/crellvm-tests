	.text
	.file	"gxcht.bc"
	.align	16, 0x90
	.type	gx_dc_ht_colored_save_dc,@function
gx_dc_ht_colored_save_dc:               # @gx_dc_ht_colored_save_dc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	leaq	8(%r14), %rdi
	leaq	18(%rbx), %rsi
	movl	$64, %edx
	callq	memcpy
	leaq	72(%r14), %rdi
	leaq	84(%rbx), %rsi
	movl	$64, %edx
	callq	memcpy
	movw	340(%rbx), %ax
	movw	%ax, 328(%r14)
	movq	352(%rbx), %rax
	movq	%rax, 336(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gx_dc_ht_colored_save_dc, .Lfunc_end0-gx_dc_ht_colored_save_dc
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_colored_get_dev_halftone,@function
gx_dc_ht_colored_get_dev_halftone:      # @gx_dc_ht_colored_get_dev_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	retq
.Lfunc_end1:
	.size	gx_dc_ht_colored_get_dev_halftone, .Lfunc_end1-gx_dc_ht_colored_get_dev_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_colored_load,@function
gx_dc_ht_colored_load:                  # @gx_dc_ht_colored_load
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gx_dc_ht_colored_load, .Lfunc_end2-gx_dc_ht_colored_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_colored_fill_rectangle,@function
gx_dc_ht_colored_fill_rectangle:        # @gx_dc_ht_colored_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$4696, %rsp             # imm = 0x1258
.Ltmp11:
	.cfi_def_cfa_offset 4752
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, 144(%rsp)         # 4-byte Spill
	movl	%esi, 124(%rsp)         # 4-byte Spill
	movq	%rdi, %r12
	movq	%r12, 216(%rsp)         # 8-byte Spill
	movq	4760(%rsp), %rax
	movq	%rax, 4688(%rsp)
	movq	8(%r12), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movzwl	108(%rbx), %eax
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movl	100(%rbx), %r13d
	movq	%r13, 176(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	movl	$8, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	movq	%r15, %rsi
	cmpl	$5, %r13d
	movl	$set_ht_colors_le_4, %ecx
	movl	$set_ht_colors_gt_4, %edx
	cmovgeq	%rdx, %rcx
	testl	%eax, %eax
	movl	$set_cmyk_1bit_colors, %r10d
	cmovleq	%rcx, %r10
	cmpq	%rdx, %r10
	movl	$set_color_ht_le_4, %ecx
	movl	$set_color_ht_gt_4, %eax
	cmoveq	%rax, %rcx
	cmpq	$16, 344(%r12)
	cmovaeq	%rax, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	testl	%esi, %esi
	jle	.LBB3_73
# BB#1:                                 # %entry
	testl	%r14d, %r14d
	jle	.LBB3_73
# BB#2:                                 # %if.end
	movq	208(%rsp), %rdi         # 8-byte Reload
	movl	216(%rdi), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	220(%rdi), %eax
	movl	%eax, 204(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	orl	%esi, %eax
	cmpl	$16, %eax
	jl	.LBB3_3
# BB#4:                                 # %if.then.19
	movq	%r10, %r15
	movq	%rsi, %rbp
	leaq	224(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1432(%rbx)
	movl	224(%rsp), %r8d
	sarl	$8, %r8d
	movl	124(%rsp), %r12d        # 4-byte Reload
	cmpl	%r12d, %r8d
	jle	.LBB3_5
# BB#6:                                 # %if.then.24
	movl	%r12d, %eax
	subl	%r8d, %eax
	addl	%ebp, %eax
	movl	%eax, %esi
	movl	144(%rsp), %r13d        # 4-byte Reload
	movq	%r15, %r10
	jg	.LBB3_7
	jmp	.LBB3_14
.LBB3_3:
	movl	144(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, %r9d
	movl	124(%rsp), %r12d        # 4-byte Reload
	movl	%r12d, %r8d
	jmp	.LBB3_16
.LBB3_5:
	movl	%r12d, %r8d
	movl	144(%rsp), %r13d        # 4-byte Reload
	movq	%rbp, %rsi
	movq	%r15, %r10
.LBB3_7:                                # %if.end.29
	movl	228(%rsp), %r9d
	sarl	$8, %r9d
	cmpl	%r13d, %r9d
	jle	.LBB3_8
# BB#9:                                 # %if.then.35
	movl	%r13d, %eax
	subl	%r9d, %eax
	addl	%r14d, %eax
	movl	%eax, %r14d
	jg	.LBB3_10
	jmp	.LBB3_14
.LBB3_8:
	movl	%r13d, %r9d
.LBB3_10:                               # %if.end.42
	movl	232(%rsp), %eax
	sarl	$8, %eax
	leal	(%r8,%rsi), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_12
# BB#11:                                # %if.then.48
	subl	%r8d, %eax
	movl	%eax, %esi
	jle	.LBB3_14
.LBB3_12:                               # %if.end.54
	movl	236(%rsp), %eax
	sarl	$8, %eax
	leal	(%r9,%r14), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_15
# BB#13:                                # %if.then.61
	subl	%r9d, %eax
	movl	%eax, %r14d
	jle	.LBB3_14
.LBB3_15:                               # %cleanup
	movq	208(%rsp), %rdi         # 8-byte Reload
.LBB3_16:                               # %if.end.69
	movl	4752(%rsp), %eax
	movl	%eax, 140(%rsp)         # 4-byte Spill
	movq	200(%rdi), %rax
	movq	%rsi, %rbp
	testq	%rax, %rax
	je	.LBB3_24
# BB#17:                                # %for.cond.83.preheader
	movq	%r14, 112(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%r8, 184(%rsp)          # 8-byte Spill
	movl	%r13d, 144(%rsp)        # 4-byte Spill
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	movq	176(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movq	216(%rsp), %r14         # 8-byte Reload
	movl	192(%rsp), %r15d        # 4-byte Reload
	jle	.LBB3_32
# BB#18:                                # %for.body.86.preheader
	movq	%rbx, %r8
	movq	176(%rsp), %rsi         # 8-byte Reload
	leal	-1(%rsi), %edx
	xorl	%ecx, %ecx
	testb	$3, %sil
	je	.LBB3_21
# BB#19:                                # %for.body.86.prol.preheader
	leaq	96(%rax), %rsi
	movq	176(%rsp), %rdi         # 8-byte Reload
	andl	$3, %edi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_20:                               # %for.body.86.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	movq	%rbx, 240(%rsp,%rcx,8)
	incq	%rcx
	addq	$168, %rsi
	cmpl	%ecx, %edi
	jne	.LBB3_20
.LBB3_21:                               # %for.body.86.preheader.split
	cmpl	$3, %edx
	movq	%r8, %rbx
	jb	.LBB3_32
# BB#22:                                # %for.body.86.preheader.split.split
	movq	176(%rsp), %rdx         # 8-byte Reload
	subl	%ecx, %edx
	leaq	264(%rsp,%rcx,8), %rsi
	addq	$3, %rcx
	imulq	$168, %rcx, %rcx
	leaq	96(%rax,%rcx), %rax
	.align	16, 0x90
.LBB3_23:                               # %for.body.86
                                        # =>This Inner Loop Header: Depth=1
	movq	-504(%rax), %rcx
	movq	%rcx, -24(%rsi)
	movq	-336(%rax), %rcx
	movq	%rcx, -16(%rsi)
	movq	-168(%rax), %rcx
	movq	%rcx, -8(%rsi)
	movq	(%rax), %rcx
	movq	%rcx, (%rsi)
	addq	$32, %rsi
	addq	$672, %rax              # imm = 0x2A0
	addl	$-4, %edx
	jne	.LBB3_23
	jmp	.LBB3_32
.LBB3_14:                               # %cleanup.thread
	xorl	%ebp, %ebp
	jmp	.LBB3_73
.LBB3_24:                               # %if.then.73
	movq	%r14, 112(%rsp)         # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%r8, 184(%rsp)          # 8-byte Spill
	movl	%r13d, 144(%rsp)        # 4-byte Spill
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	movq	96(%rdi), %rax
	movq	%rax, 264(%rsp)
	movq	%rax, 256(%rsp)
	movq	%rax, 248(%rsp)
	movq	%rax, 240(%rsp)
	movq	176(%rsp), %rax         # 8-byte Reload
	cmpl	$5, %eax
	movq	216(%rsp), %r14         # 8-byte Reload
	movl	192(%rsp), %r15d        # 4-byte Reload
	jl	.LBB3_32
# BB#25:                                # %for.body.preheader
	movq	176(%rsp), %rdx         # 8-byte Reload
	leal	-5(%rdx), %eax
	movl	$4, %ecx
	testb	$3, %dl
	je	.LBB3_29
# BB#26:                                # %for.body.prol.preheader
	movq	176(%rsp), %rdx         # 8-byte Reload
	andl	$3, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_27:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	movq	96(%rdi), %rsi
	movq	%rsi, 272(%rsp,%rcx,8)
	leaq	1(%rcx), %rsi
	cmpl	%esi, %edx
	jne	.LBB3_27
# BB#28:
	addq	$5, %rcx
.LBB3_29:                               # %for.body.preheader.split
	cmpl	$3, %eax
	jb	.LBB3_32
# BB#30:                                # %for.body.preheader.split.split
	movq	176(%rsp), %rax         # 8-byte Reload
	subl	%ecx, %eax
	leaq	264(%rsp,%rcx,8), %rcx
	.align	16, 0x90
.LBB3_31:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%rdi), %rdx
	movq	%rdx, -24(%rcx)
	movq	96(%rdi), %rdx
	movq	%rdx, -16(%rcx)
	movq	96(%rdi), %rdx
	movq	%rdx, -8(%rcx)
	movq	96(%rdi), %rdx
	movq	%rdx, (%rcx)
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB3_31
.LBB3_32:                               # %if.end.95
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	leaq	2288(%rsp), %rdi
	leaq	1264(%rsp), %rsi
	leaq	752(%rsp), %rdx
	leaq	240(%rsp), %r9
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	*%r10
	movl	%eax, 152(%rsp)         # 4-byte Spill
	cmpq	$0, 4688(%rsp)
	sete	%al
	movl	4752(%rsp), %ecx
	andl	$51, %ecx
	cmpl	$48, %ecx
	sete	%cl
	andb	%al, %cl
	movb	%cl, 159(%rsp)          # 1-byte Spill
	xorb	%cl, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB3_34
# BB#33:                                # %if.then.109
	leaq	4688(%rsp), %rdi
	leaq	2544(%rsp), %rsi
	movq	%rbx, %rdx
	callq	gx_set_rop_no_source
.LBB3_34:                               # %if.end.110
	andl	$-513, 140(%rsp)        # 4-byte Folded Spill
                                        # imm = 0xFFFFFFFFFFFFFDFF
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	204(%rsp), %r10d        # 4-byte Reload
	cmpl	%r10d, %edi
	jg	.LBB3_40
# BB#35:                                # %if.end.110
	cmpl	%r15d, %ebp
	jg	.LBB3_40
# BB#36:
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	184(%rsp), %r13         # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	movl	172(%rsp), %r11d        # 4-byte Reload
	jmp	.LBB3_37
.LBB3_40:                               # %land.lhs.true.116
	movl	%r15d, %esi
	movl	%esi, %r12d
	movl	172(%rsp), %r11d        # 4-byte Reload
	imull	%r11d, %r12d
	addl	$63, %r12d
	sarl	$6, %r12d
	shll	$3, %r12d
	movl	$2048, %eax             # imm = 0x800
	xorl	%edx, %edx
	divl	%r10d
	cmpl	%eax, %r12d
	movq	184(%rsp), %r13         # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	jbe	.LBB3_42
# BB#41:
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	jmp	.LBB3_37
.LBB3_42:                               # %do.body.123
	movl	%r13d, %eax
	movl	%esi, %r8d
	orl	%r9d, %eax
	jns	.LBB3_44
# BB#43:                                # %if.then.127
	movl	%r13d, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%ebp, %eax
	xorl	%ecx, %ecx
	testl	%r13d, %r13d
	cmovsl	%ecx, %r13d
	movl	%r9d, %edx
	sarl	$31, %edx
	andl	%r9d, %edx
	addl	%edi, %edx
	testl	%r9d, %r9d
	cmovsl	%ecx, %r9d
	movl	%edx, %edi
	movl	%eax, %ebp
.LBB3_44:                               # %do.body.139
	movl	%ebp, %eax
	movl	%edi, %ecx
	movl	832(%rbx), %esi
	movl	836(%rbx), %edx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	subl	%r13d, %esi
	cmpl	%esi, %eax
	cmovlel	%eax, %esi
	subl	%r9d, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	xorl	%ebp, %ebp
	testl	%esi, %esi
	jle	.LBB3_73
# BB#45:                                # %do.body.139
	testl	%edx, %edx
	jle	.LBB3_73
# BB#46:                                # %do.end.169
	movl	%r11d, %r15d
	movq	%r9, 104(%rsp)          # 8-byte Spill
	cmpl	%r8d, %esi
	movq	%rdx, %rdi
	movq	%rsi, %rbp
	jg	.LBB3_49
# BB#47:                                # %do.end.169
	cmpl	%r10d, %edi
	jg	.LBB3_49
# BB#48:
	movq	104(%rsp), %r9          # 8-byte Reload
	movl	%r15d, %r11d
.LBB3_37:                               # %if.end.247
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movl	%ebp, %ecx
	imull	%r11d, %ecx
	movq	%rbp, %rdx
	leal	63(%rcx), %r10d
	shrl	$3, %r10d
	andl	$536870904, %r10d       # imm = 0x1FFFFFF8
	cmpl	$2049, %r10d            # imm = 0x801
	jb	.LBB3_38
# BB#53:                                # %if.then.254
	movl	%r13d, %eax
	sarl	$31, %eax
	andl	%r13d, %eax
	addl	%edx, %eax
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	cmovsl	%ebp, %r13d
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	832(%rcx), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	subl	%r13d, %edx
	cmpl	%ecx, %r13d
	cmovlel	%eax, %edx
	testl	%edx, %edx
	jle	.LBB3_73
# BB#54:                                # %if.end.271
	movl	%edx, %ecx
	movq	%rdx, %rsi
	imull	%r11d, %ecx
	leal	63(%rcx), %r10d
	shrl	$3, %r10d
	andl	$536870904, %r10d       # imm = 0x1FFFFFF8
	cmpl	$2049, %r10d            # imm = 0x801
	jb	.LBB3_39
# BB#55:                                # %if.then.278
	movl	$16384, %eax            # imm = 0x4000
	xorl	%edx, %edx
	divl	%r11d
	movl	%eax, %r12d
	movl	%r12d, %ecx
	imull	%r11d, %ecx
	leal	63(%rcx), %r10d
	shrl	$3, %r10d
	andl	$536870904, %r10d       # imm = 0x1FFFFFF8
	movl	$1, %ebx
	jmp	.LBB3_56
.LBB3_38:
	movq	%rdx, %rsi
.LBB3_39:                               # %if.end.285
	movl	$2048, %eax             # imm = 0x800
	xorl	%edx, %edx
	divl	%r10d
	movl	%eax, %ebx
	cmpl	%edi, %ebx
	cmovgl	%edi, %ebx
	movl	%esi, %r12d
.LBB3_56:                               # %fit
	movl	%r10d, 148(%rsp)        # 4-byte Spill
	movl	%ebx, 92(%rsp)          # 4-byte Spill
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	cmpb	$0, 159(%rsp)           # 1-byte Folded Reload
	jne	.LBB3_58
# BB#57:                                # %if.then.292
	leaq	2640(%rsp), %rax
	movq	%rax, 2592(%rsp)
	movq	$0, 2616(%rsp)
	movl	%r10d, 2600(%rsp)
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r11d
	movl	%eax, 2604(%rsp)
	movw	%ax, 2624(%rsp)
	movw	$0, 2630(%rsp)
	movw	$0, 2628(%rsp)
	movl	$1, 2632(%rsp)
.LBB3_58:                               # %while.cond.preheader
	testl	%esi, %esi
	movl	$0, %ebp
	je	.LBB3_73
# BB#59:                                # %for.cond.307.preheader.lr.ph
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	leaq	2640(%rsp), %rdi
	movq	192(%rsp), %r15         # 8-byte Reload
	jmp	.LBB3_60
.LBB3_70:                               # %cleanup.405.thread231
                                        #   in Loop: Header=BB3_60 Depth=1
	addl	%r12d, %r13d
	cmpl	%eax, %r12d
	cmovgl	%eax, %r12d
	movq	%rax, 96(%rsp)          # 8-byte Spill
.LBB3_60:                               # %for.cond.307.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_61 Depth 2
	movl	124(%rsp), %eax         # 4-byte Reload
	movl	%r12d, 184(%rsp)        # 4-byte Spill
	movl	%r13d, %ecx
	subl	%eax, %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	%r9d, %esi
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, 204(%rsp)         # 4-byte Spill
	jmp	.LBB3_61
	.align	16, 0x90
.LBB3_68:                               # %if.end.389
                                        #   in Loop: Header=BB3_61 Depth=2
	movq	%r12, %rsi
	leal	(%rsi,%rbx), %esi
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	movl	%eax, 204(%rsp)         # 4-byte Spill
	movq	216(%rsp), %r14         # 8-byte Reload
	movl	148(%rsp), %r10d        # 4-byte Reload
	movl	184(%rsp), %r12d        # 4-byte Reload
.LBB3_61:                               # %for.cond.307
                                        #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	movq	%r14, 216(%rsp)         # 8-byte Spill
	movl	352(%r14), %edx
	addl	%r13d, %edx
	movl	356(%r14), %ecx
	addl	%esi, %ecx
	movq	344(%r14), %rax
	leaq	752(%rsp), %rsi
	movq	%rsi, 56(%rsp)
	leaq	1264(%rsp), %rsi
	movq	%rsi, 48(%rsp)
	leaq	2288(%rsp), %rsi
	movq	%rsi, 40(%rsp)
	movq	%r15, 32(%rsp)
	movq	%rax, 24(%rsp)
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movl	152(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r11d, (%rsp)
	movq	%r13, %rbp
	movl	%r10d, %esi
	movl	%r12d, %r8d
	movl	%ebx, %r9d
	movl	%r10d, %r13d
	movq	%rdi, %r14
	callq	*160(%rsp)              # 8-byte Folded Reload
	cmpb	$0, 159(%rsp)           # 1-byte Folded Reload
	je	.LBB3_63
# BB#62:                                # %if.then.321
                                        #   in Loop: Header=BB3_61 Depth=2
	movl	%ebx, 16(%rsp)
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movl	%r12d, 8(%rsp)
	movq	208(%rsp), %r12         # 8-byte Reload
	movl	%r12d, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%r13d, %ecx
	movl	%ebp, %r9d
	movq	%rbp, %r13
	callq	*1224(%r15)
	jmp	.LBB3_66
	.align	16, 0x90
.LBB3_63:                               # %if.else.325
                                        #   in Loop: Header=BB3_61 Depth=2
	movq	208(%rsp), %r12         # 8-byte Reload
	movq	%rbp, %r13
	movl	%ebx, 2608(%rsp)
	movw	%bx, 2626(%rsp)
	movq	4688(%rsp), %r9
	movl	40(%r9), %edi
	movq	(%r9), %rsi
	movl	12(%r9), %ecx
	movl	8(%r9), %edx
	movq	16(%r9), %r8
	movl	44(%r9), %r10d
	testl	%edi, %edi
	je	.LBB3_64
# BB#65:                                # %if.else.356
                                        #   in Loop: Header=BB3_61 Depth=2
	movl	%r12d, %eax
	subl	144(%rsp), %eax         # 4-byte Folded Reload
	imull	%ecx, %eax
	addq	%rax, %rsi
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rdx,%rax), %edx
	addq	$24, %r9
	testl	%r10d, %r10d
	movl	$0, %eax
	cmoveq	%rax, %r9
	movl	%edi, 72(%rsp)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 64(%rsp)
	movl	%ebx, 40(%rsp)
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movl	184(%rsp), %eax         # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	%r12d, 24(%rsp)
	movl	%r13d, 16(%rsp)
	leaq	2592(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, 8(%rsp)
	movq	%r15, %rdi
	callq	*1696(%r15)
	jmp	.LBB3_66
.LBB3_64:                               # %if.then.333
                                        #   in Loop: Header=BB3_61 Depth=2
	movl	%r12d, %edi
	subl	144(%rsp), %edi         # 4-byte Folded Reload
	imull	%ecx, %edi
	addq	%rdi, %rsi
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rdx,%rax), %edx
	addq	$24, %r9
	testl	%r10d, %r10d
	movl	$0, %eax
	cmoveq	%rax, %r9
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 64(%rsp)
	movl	%ebx, 40(%rsp)
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movl	184(%rsp), %eax         # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	%r12d, 24(%rsp)
	movl	%r13d, 16(%rsp)
	leaq	2592(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, 8(%rsp)
	movq	%r15, %rdi
	callq	*1424(%r15)
	.align	16, 0x90
.LBB3_66:                               # %if.end.381
                                        #   in Loop: Header=BB3_61 Depth=2
	movl	%eax, %ebp
	movl	172(%rsp), %r11d        # 4-byte Reload
	movq	%r14, %rdi
	movl	204(%rsp), %eax         # 4-byte Reload
	testl	%ebp, %ebp
	js	.LBB3_73
# BB#67:                                # %if.end.385
                                        #   in Loop: Header=BB3_61 Depth=2
	movq	192(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %eax
	jne	.LBB3_68
# BB#69:                                # %for.end.395
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	184(%rsp), %r12d        # 4-byte Reload
	subl	%r12d, %eax
	movq	216(%rsp), %r14         # 8-byte Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	movl	148(%rsp), %r10d        # 4-byte Reload
	movl	92(%rsp), %ebx          # 4-byte Reload
	jne	.LBB3_70
	jmp	.LBB3_73
.LBB3_49:                               # %if.then.175
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	%r13, 184(%rsp)         # 8-byte Spill
	leaq	2640(%rsp), %r13
	movq	%r13, 2592(%rsp)
	movl	%r12d, 2600(%rsp)
	movl	%r8d, %ebp
	movl	%ebp, 2604(%rsp)
	movw	%bp, 2624(%rsp)
	movl	%r10d, 2608(%rsp)
	movw	%r10w, 2626(%rsp)
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	168(%rax), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 2616(%rsp)
	movw	$0, 2630(%rsp)
	movw	$0, 2628(%rsp)
	movl	$1, 2632(%rsp)
	movq	344(%r14), %rax
	leaq	752(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	leaq	1264(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	leaq	2288(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	192(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movl	152(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%r15d, (%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%ebp, %r8d
	movl	204(%rsp), %r9d         # 4-byte Reload
	callq	*160(%rsp)              # 8-byte Folded Reload
	cmpb	$0, 159(%rsp)           # 1-byte Folded Reload
	je	.LBB3_51
# BB#50:                                # %if.then.191
	movl	352(%r14), %eax
	movl	356(%r14), %ecx
	movl	%ecx, 24(%rsp)
	movl	%eax, 16(%rsp)
	movq	$-1, 8(%rsp)
	movq	$-1, (%rsp)
	leaq	2592(%rsp), %rsi
	movq	%rbx, %rdi
	movq	184(%rsp), %rdx         # 8-byte Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	96(%rsp), %r8           # 8-byte Reload
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	*1416(%rbx)
	jmp	.LBB3_72
.LBB3_51:                               # %if.end.197
	movq	%rbx, %r15
	movq	4688(%rsp), %rbp
	movl	40(%rbp), %eax
	movq	(%rbp), %rsi
	movl	12(%rbp), %ecx
	movl	8(%rbp), %edi
	movq	16(%rbp), %r8
	movl	44(%rbp), %ebx
	movl	352(%r14), %r10d
	movl	356(%r14), %r11d
	testl	%eax, %eax
	je	.LBB3_52
# BB#71:                                # %if.else.219
	movq	104(%rsp), %r14         # 8-byte Reload
	movl	%r14d, %edx
	subl	144(%rsp), %edx         # 4-byte Folded Reload
	imull	%ecx, %edx
	addq	%rdx, %rsi
	movq	184(%rsp), %r12         # 8-byte Reload
	movl	%r12d, %edx
	subl	124(%rsp), %edx         # 4-byte Folded Reload
	addl	%edi, %edx
	addq	$24, %rbp
	xorl	%r9d, %r9d
	testl	%ebx, %ebx
	cmovneq	%rbp, %r9
	movl	%eax, 72(%rsp)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 64(%rsp)
	movl	%r11d, 56(%rsp)
	movl	%r10d, 48(%rsp)
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, 40(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, 32(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r12d, 16(%rsp)
	leaq	2592(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r15, %rdi
	callq	*1696(%rdi)
	jmp	.LBB3_72
.LBB3_52:                               # %if.then.200
	movq	104(%rsp), %r14         # 8-byte Reload
	movl	%r14d, %eax
	subl	144(%rsp), %eax         # 4-byte Folded Reload
	imull	%ecx, %eax
	addq	%rax, %rsi
	movq	184(%rsp), %r12         # 8-byte Reload
	movl	%r12d, %edx
	subl	124(%rsp), %edx         # 4-byte Folded Reload
	addl	%edi, %edx
	addq	$24, %rbp
	xorl	%r9d, %r9d
	testl	%ebx, %ebx
	cmovneq	%rbp, %r9
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 64(%rsp)
	movl	%r11d, 56(%rsp)
	movl	%r10d, 48(%rsp)
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%eax, 40(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, 32(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r12d, 16(%rsp)
	leaq	2592(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r15, %rdi
	callq	*1424(%rdi)
.LBB3_72:                               # %cleanup.410
	movl	%eax, %ebp
.LBB3_73:                               # %cleanup.410
	movl	%ebp, %eax
	addq	$4696, %rsp             # imm = 0x1258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gx_dc_ht_colored_fill_rectangle, .Lfunc_end3-gx_dc_ht_colored_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_colored_equal,@function
gx_dc_ht_colored_equal:                 # @gx_dc_ht_colored_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movzwl	16(%rbx), %r14d
	movq	(%r15), %rcx
	xorl	%eax, %eax
	cmpq	(%rbx), %rcx
	jne	.LBB4_10
# BB#1:                                 # %lor.lhs.false
	movq	8(%rbx), %rcx
	cmpq	8(%r15), %rcx
	jne	.LBB4_10
# BB#2:                                 # %lor.lhs.false.10
	movzwl	340(%r15), %ecx
	movzwl	340(%rbx), %edx
	cmpl	%ecx, %edx
	jne	.LBB4_10
# BB#3:                                 # %lor.lhs.false.20
	movl	352(%rbx), %ecx
	cmpl	352(%r15), %ecx
	jne	.LBB4_10
# BB#4:                                 # %lor.lhs.false.25
	movl	356(%rbx), %ecx
	cmpl	356(%r15), %ecx
	jne	.LBB4_10
# BB#5:                                 # %lor.lhs.false.31
	movzwl	16(%r15), %ecx
	cmpl	%ecx, %r14d
	jne	.LBB4_10
# BB#6:                                 # %if.end
	leaq	18(%rbx), %rdi
	leaq	18(%r15), %rsi
	movq	%r14, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB4_8
# BB#7:
	xorl	%eax, %eax
	jmp	.LBB4_9
.LBB4_8:                                # %land.rhs
	addq	$84, %rbx
	addq	$84, %r15
	shlq	$2, %r14
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	testl	%eax, %eax
	sete	%al
.LBB4_9:                                # %land.end
	movzbl	%al, %eax
.LBB4_10:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gx_dc_ht_colored_equal, .Lfunc_end4-gx_dc_ht_colored_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_colored_write,@function
gx_dc_ht_colored_write:                 # @gx_dc_ht_colored_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 128
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$-28, %eax
	testq	%rcx, %rcx
	jne	.LBB5_100
# BB#1:                                 # %if.end
	movl	100(%rdx), %r14d
	movzwl	16(%r15), %ecx
	cmpl	%r14d, %ecx
	jne	.LBB5_100
# BB#2:                                 # %if.end.15
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movslq	%r14d, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movzwl	108(%rdx), %ebp
	movzwl	340(%r15), %r13d
	movb	$1, %al
	movl	%eax, 60(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	je	.LBB5_6
# BB#3:                                 # %land.lhs.true
	movq	(%rbx), %rax
	xorl	%ecx, %ecx
	cmpq	(%r15), %rax
	jne	.LBB5_6
# BB#4:                                 # %lor.lhs.false
	leaq	18(%r15), %rdi
	leaq	8(%rbx), %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	memcmp
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB5_101
# BB#5:
	movq	%rbx, %rcx
.LBB5_6:                                # %if.then.34
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	cmpl	%ebp, %r14d
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	jne	.LBB5_8
# BB#7:                                 # %if.then.37
	leal	7(%r14), %ebp
	sarl	$3, %ebp
	incl	%ebp
	jmp	.LBB5_9
.LBB5_8:                                # %if.end.45
	leal	1(%r14), %ebp
.LBB5_9:                                # %if.end.45
	movq	344(%r15), %rcx
	movb	$1, %al
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	60(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	movl	$1, 60(%rsp)            # 4-byte Folded Spill
	movl	%r13d, %ebx
	jne	.LBB5_13
	jmp	.LBB5_10
.LBB5_101:                              # %if.end.45.thread
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movq	344(%r15), %rcx
	movl	$1, %ebp
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	%r13d, %ebx
.LBB5_10:                               # %lor.lhs.false.51
	movq	%rcx, %r13
	leaq	84(%r15), %rdi
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	72(%rax), %rsi
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(,%rax,4), %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB5_11
# BB#12:
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	movq	%r13, %rcx
.LBB5_13:                               # %if.then.64
	cmpl	$33, %r14d
	jb	.LBB5_21
# BB#14:                                # %if.then.69
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	$1, %ebx
	cmpl	$128, %ecx
	movl	$1, %r12d
	jb	.LBB5_17
# BB#15:                                # %cond.false
	movl	$2, %r12d
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_17
# BB#16:                                # %cond.false.76
	movl	%ecx, %edi
	movq	%rcx, %r12
	callq	enc_u_size_uint
	movq	%r12, %rcx
	movl	%eax, %r12d
.LBB5_17:                               # %cond.end.78
	addl	%ebp, %r12d
	movq	%rcx, %rdi
	shrq	$32, %rdi
	cmpl	$128, %edi
	jb	.LBB5_20
# BB#18:                                # %cond.false.87
	movl	$2, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB5_20
# BB#19:                                # %cond.false.91
	movq	%rcx, %rbx
	callq	enc_u_size_uint
	movq	%rbx, %rcx
	movl	%eax, %ebx
.LBB5_20:                               # %cond.end.95
	addl	%ebx, %r12d
	jmp	.LBB5_25
.LBB5_21:                               # %if.else.98
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	$1, %r12d
	cmpl	$128, %ecx
	jb	.LBB5_24
# BB#22:                                # %cond.false.103
	movl	$2, %r12d
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_24
# BB#23:                                # %cond.false.107
	movl	%ecx, %edi
	movq	%rcx, %r12
	callq	enc_u_size_uint
	movq	%r12, %rcx
	movl	%eax, %r12d
.LBB5_24:                               # %cond.end.111
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	addl	%ebp, %r12d
.LBB5_25:                               # %for.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB5_33
# BB#26:                                # %for.body.preheader
	leaq	84(%r15), %rbp
	movl	$1, %ebx
	movl	%r14d, %r13d
	.align	16, 0x90
.LBB5_27:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rbx
	je	.LBB5_32
# BB#28:                                # %if.then.119
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	(%rbp), %edi
	movl	$1, %eax
	cmpl	$128, %edi
	jb	.LBB5_31
# BB#29:                                # %cond.false.126
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	$2, %eax
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB5_31
# BB#30:                                # %cond.false.135
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	%r12d, 64(%rsp)         # 4-byte Spill
	movq	%r15, %r12
	movq	%r14, %r15
	movq	%rcx, %r14
	callq	enc_u_size_uint
	movq	%r14, %rcx
	movq	%r15, %r14
	movq	%r12, %r15
	movl	64(%rsp), %r12d         # 4-byte Reload
.LBB5_31:                               # %cond.end.144
                                        #   in Loop: Header=BB5_27 Depth=1
	addl	%eax, %r12d
.LBB5_32:                               # %for.inc
                                        #   in Loop: Header=BB5_27 Depth=1
	addq	%rbx, %rbx
	addq	$4, %rbp
	decl	%r13d
	jne	.LBB5_27
.LBB5_33:                               # %if.end.148
	movl	60(%rsp), %r10d         # 4-byte Reload
	orl	$2, %r10d
	movl	20(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	movl	%r12d, %ebp
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	36(%rsp), %ebx          # 4-byte Reload
	jne	.LBB5_35
	jmp	.LBB5_34
.LBB5_11:
	movl	60(%rsp), %r10d         # 4-byte Reload
	movq	%r13, %rcx
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB5_34:                               # %lor.lhs.false.151
	movq	24(%rsp), %rax          # 8-byte Reload
	movzwl	328(%rax), %eax
	cmpl	%eax, %ebx
	jne	.LBB5_35
# BB#43:                                # %if.end.185
	testl	%r10d, %r10d
	jne	.LBB5_41
# BB#44:                                # %if.then.188
	movl	$0, (%r12)
	movl	$1, %eax
	jmp	.LBB5_100
.LBB5_35:                               # %if.then.159
	cmpl	$65535, %ebx            # imm = 0xFFFF
	je	.LBB5_36
# BB#37:                                # %if.else.165
	movl	$1, %eax
	cmpl	$128, %ebx
	jb	.LBB5_40
# BB#38:                                # %cond.false.171
	movl	$2, %eax
	cmpl	$16384, %ebx            # imm = 0x4000
	jb	.LBB5_40
# BB#39:                                # %cond.false.176
	movl	%ebx, %edi
	movq	%r15, 64(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movq	%rcx, %r14
	movl	%r10d, %r13d
	callq	enc_u_size_uint
	movl	%r13d, %r10d
	movq	%r14, %rcx
	movq	%r15, %r14
	movq	64(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %rdx          # 8-byte Reload
.LBB5_40:                               # %cond.end.181
	orl	$4, %r10d
	addl	%eax, %ebp
	jmp	.LBB5_41
.LBB5_36:                               # %if.then.163
	orl	$8, %r10d
.LBB5_41:                               # %if.end.189
	cmpl	(%r12), %ebp
	jbe	.LBB5_45
# BB#42:                                # %if.then.192
	movl	%ebp, (%r12)
	movl	$-15, %eax
	jmp	.LBB5_100
.LBB5_45:                               # %if.end.193
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	leaq	1(%rdx), %rbx
	movb	%r10b, (%rdx)
	testb	$1, %r10b
	je	.LBB5_67
# BB#46:                                # %if.then.198
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	cmpl	4(%rsp), %r14d          # 4-byte Folded Reload
	jne	.LBB5_102
# BB#47:                                # %if.then.201
	leal	7(%r14), %ebp
	sarl	$3, %ebp
	xorl	%edx, %edx
	testl	%r14d, %r14d
	jle	.LBB5_57
# BB#48:                                # %for.body.208.preheader
	xorl	%ecx, %ecx
	testb	$1, %r14b
	movl	$0, %edx
	je	.LBB5_50
# BB#49:                                # %for.body.208.prol
	cmpb	$0, 18(%r15)
	setne	%al
	movzbl	%al, %edx
	movl	$1, %ecx
.LBB5_50:                               # %for.body.208.preheader.split
	cmpl	$1, %r14d
	je	.LBB5_57
# BB#51:                                # %for.body.208.preheader.split.split
	movq	%rcx, %rsi
	shlq	$32, %rsi
	movabsq	$4294967296, %r8        # imm = 0x100000000
	movabsq	$8589934592, %r9        # imm = 0x200000000
	.align	16, 0x90
.LBB5_52:                               # %for.body.208
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	sarq	$32, %rax
	movl	$1, %edi
	shlq	%cl, %rdi
	cmpb	$0, 18(%r15,%rax)
	movl	$0, %eax
	je	.LBB5_54
# BB#53:                                # %select.mid
                                        #   in Loop: Header=BB5_52 Depth=1
	movq	%rdi, %rax
.LBB5_54:                               # %select.end
                                        #   in Loop: Header=BB5_52 Depth=1
	orq	%rdx, %rax
	leaq	(%rsi,%r8), %rdx
	sarq	$32, %rdx
	incq	%rcx
	movl	$1, %edi
	shlq	%cl, %rdi
	cmpb	$0, 18(%r15,%rdx)
	movl	$0, %edx
	je	.LBB5_56
# BB#55:                                # %select.mid248
                                        #   in Loop: Header=BB5_52 Depth=1
	movq	%rdi, %rdx
.LBB5_56:                               # %select.end247
                                        #   in Loop: Header=BB5_52 Depth=1
	orq	%rax, %rdx
	addq	%r9, %rsi
	incq	%rcx
	cmpl	%r14d, %ecx
	jne	.LBB5_52
.LBB5_57:                               # %for.cond.224.preheader
	testl	%ebp, %ebp
	jle	.LBB5_66
# BB#58:                                # %for.body.227.lr.ph
	leal	-1(%rbp), %r8d
	xorl	%esi, %esi
	testb	$7, %bpl
	je	.LBB5_62
# BB#59:                                # %for.body.227.prol.preheader
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	1(%rax), %rcx
	movl	%ebp, %eax
	andl	$7, %eax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB5_60:                               # %for.body.227.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdi
	movb	%dl, (%rcx,%rdi)
	shrq	$8, %rdx
	leaq	1(%rdi), %rsi
	cmpl	%esi, %eax
	jne	.LBB5_60
# BB#61:
	leaq	1(%rcx,%rdi), %rbx
.LBB5_62:                               # %for.body.227.lr.ph.split
	leaq	2(%r8), %rcx
	cmpl	$7, %r8d
	jb	.LBB5_65
# BB#63:                                # %for.body.227.lr.ph.split.split
	subl	%esi, %ebp
	.align	16, 0x90
.LBB5_64:                               # %for.body.227
                                        # =>This Inner Loop Header: Depth=1
	movb	%dl, (%rbx)
	movb	%dh, 1(%rbx)  # NOREX
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, 2(%rbx)
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, 3(%rbx)
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, 4(%rbx)
	movq	%rdx, %rax
	shrq	$40, %rax
	movb	%al, 5(%rbx)
	movq	%rdx, %rax
	shrq	$48, %rax
	movb	%al, 6(%rbx)
	shrq	$56, %rdx
	movb	%dl, 7(%rbx)
	addq	$8, %rbx
	addl	$-8, %ebp
	movl	$0, %edx
	jne	.LBB5_64
.LBB5_65:                               # %for.cond.224.if.end.245.loopexit_crit_edge
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rcx,%rax), %rbx
	jmp	.LBB5_66
.LBB5_102:                              # %if.else.234
	leaq	18(%r15), %rsi
	movq	%rbx, %rdi
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rdx
	movl	%r10d, %ebp
	callq	memcpy
	movl	%ebp, %r10d
	addq	%r13, %rbx
.LBB5_66:                               # %if.end.245
	movq	64(%rsp), %rcx          # 8-byte Reload
.LBB5_67:                               # %if.end.245
	testb	$2, %r10b
	je	.LBB5_93
# BB#68:                                # %if.then.249
	cmpl	$33, %r14d
	jb	.LBB5_78
# BB#69:                                # %do.body
	cmpl	$127, %ecx
	ja	.LBB5_71
# BB#70:                                # %if.then.259
	movb	%cl, (%rbx)
	incq	%rbx
	jmp	.LBB5_74
.LBB5_78:                               # %do.body.305
	cmpl	$127, %ecx
	ja	.LBB5_80
# BB#79:                                # %if.then.308
	movb	%cl, (%rbx)
	incq	%rbx
	jmp	.LBB5_84
.LBB5_71:                               # %if.else.262
	cmpl	$16383, %ecx            # imm = 0x3FFF
	ja	.LBB5_73
# BB#72:                                # %if.then.265
	movl	%ecx, %eax
	orl	$128, %eax
	movb	%al, (%rbx)
	movl	%ecx, %eax
	shrl	$7, %eax
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB5_74
.LBB5_80:                               # %if.else.311
	cmpl	$16383, %ecx            # imm = 0x3FFF
	ja	.LBB5_82
# BB#81:                                # %if.then.314
	movl	%ecx, %eax
	orl	$128, %eax
	movb	%al, (%rbx)
	movl	%ecx, %eax
	shrl	$7, %eax
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB5_84
.LBB5_73:                               # %if.else.273
	movl	%ecx, %edi
	movq	%rbx, %rsi
	movq	%rcx, %rbx
	movl	%r10d, %ebp
	callq	enc_u_put_uint
	movl	%ebp, %r10d
	movq	%rbx, %rcx
	movq	%rax, %rbx
.LBB5_74:                               # %do.end
	movq	%rcx, %rdi
	shrq	$32, %rdi
	cmpl	$127, %edi
	ja	.LBB5_76
# BB#75:                                # %if.then.283
	movb	%dil, (%rbx)
	incq	%rbx
	jmp	.LBB5_84
.LBB5_76:                               # %if.else.286
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB5_83
# BB#77:                                # %if.then.289
	orl	$128, %edi
	movb	%dil, (%rbx)
	movq	%rcx, %rax
	shrq	$39, %rax
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB5_84
.LBB5_82:                               # %if.else.322
	movl	%ecx, %edi
.LBB5_83:                               # %for.cond.329.preheader
	movq	%rbx, %rsi
	movq	%rcx, %rbx
	movl	%r10d, %ebp
	callq	enc_u_put_uint
	movl	%ebp, %r10d
	movq	%rbx, %rcx
	movq	%rax, %rbx
.LBB5_84:                               # %for.cond.329.preheader
	testl	%r14d, %r14d
	jle	.LBB5_93
# BB#85:                                # %for.body.332.preheader
	addq	$84, %r15
	movl	$1, %ebp
	.align	16, 0x90
.LBB5_86:                               # %for.body.332
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rbp
	je	.LBB5_92
# BB#87:                                # %do.body.337
                                        #   in Loop: Header=BB5_86 Depth=1
	movl	(%r15), %edi
	cmpl	$127, %edi
	ja	.LBB5_89
# BB#88:                                # %if.then.345
                                        #   in Loop: Header=BB5_86 Depth=1
	movb	%dil, (%rbx)
	incq	%rbx
	jmp	.LBB5_92
	.align	16, 0x90
.LBB5_89:                               # %if.else.353
                                        #   in Loop: Header=BB5_86 Depth=1
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB5_91
# BB#90:                                # %if.then.361
                                        #   in Loop: Header=BB5_86 Depth=1
	orl	$128, %edi
	movb	%dil, (%rbx)
	movl	(%r15), %eax
	shrl	$7, %eax
	movb	%al, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB5_92
.LBB5_91:                               # %if.else.379
                                        #   in Loop: Header=BB5_86 Depth=1
	movq	%rbx, %rsi
	movq	%rcx, %rbx
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	%r10d, %r13d
	callq	enc_u_put_uint
	movl	%r13d, %r10d
	movq	48(%rsp), %r12          # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rax, %rbx
	.align	16, 0x90
.LBB5_92:                               # %for.inc.391
                                        #   in Loop: Header=BB5_86 Depth=1
	addq	%rbp, %rbp
	addq	$4, %r15
	decl	%r14d
	jne	.LBB5_86
.LBB5_93:                               # %if.end.395
	testb	$4, %r10b
	je	.LBB5_99
# BB#94:                                # %do.body.400
	movl	36(%rsp), %edi          # 4-byte Reload
	cmpl	$127, %edi
	ja	.LBB5_96
# BB#95:                                # %if.then.404
	movb	%dil, (%rbx)
	incq	%rbx
	jmp	.LBB5_99
.LBB5_96:                               # %if.else.407
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB5_98
# BB#97:                                # %if.then.411
	movl	%edi, %eax
	orl	$128, %eax
	movb	%al, (%rbx)
	shrl	$7, %edi
	movb	%dil, 1(%rbx)
	addq	$2, %rbx
	jmp	.LBB5_99
.LBB5_98:                               # %if.else.421
	movq	%rbx, %rsi
	callq	enc_u_put_uint
	movq	%rax, %rbx
.LBB5_99:                               # %if.end.428
	movq	40(%rsp), %rax          # 8-byte Reload
	subl	%eax, %ebx
	movl	%ebx, (%r12)
	xorl	%eax, %eax
.LBB5_100:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_dc_ht_colored_write, .Lfunc_end5-gx_dc_ht_colored_write
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_colored_read,@function
gx_dc_ht_colored_read:                  # @gx_dc_ht_colored_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp43:
	.cfi_def_cfa_offset 768
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdx, %rax
	movl	$-28, %r11d
	testq	%r8, %r8
	jne	.LBB6_65
# BB#1:                                 # %if.end
	movq	%rdi, %r13
	movq	%r9, %rbx
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	768(%rsp), %ebp
	movslq	100(%rcx), %r12
	movzwl	108(%rcx), %r15d
	testq	%rax, %rax
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
	movl	$gx_dc_type_data_ht_colored, %ecx
	cmpq	%rcx, (%rax)
	je	.LBB6_3
.LBB6_4:                                # %if.else
	leaq	56(%rsp), %rdi
	xorl	%esi, %esi
	movl	$656, %edx              # imm = 0x290
	callq	memset
	jmp	.LBB6_5
.LBB6_3:                                # %if.then.8
	leaq	56(%rsp), %rdi
	movl	$656, %edx              # imm = 0x290
	movq	%rax, %rsi
	callq	memcpy
.LBB6_5:                                # %if.end.9
	movq	$gx_dc_type_data_ht_colored, 56(%rsp)
	movw	%r12w, 72(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	392(%rax), %rax
	movq	%rax, 64(%rsp)
	movl	$-15, %r11d
	testl	%ebp, %ebp
	je	.LBB6_65
# BB#6:                                 # %if.end.18
	decl	%ebp
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	leaq	1(%rbx), %r14
	movzbl	(%rbx), %eax
	testb	$1, %al
	jne	.LBB6_8
# BB#7:
	movq	%r13, %r15
	jmp	.LBB6_31
.LBB6_8:                                # %if.then.22
	cmpl	%r12d, %r15d
	jne	.LBB6_29
# BB#9:                                 # %if.then.25
	leal	7(%r12), %edx
	sarl	$3, %edx
	subl	%edx, 36(%rsp)          # 4-byte Folded Spill
	movq	%r13, %r15
	jb	.LBB6_65
# BB#10:                                # %if.end.29
	xorl	%ecx, %ecx
	movl	%eax, %r10d
	testl	%edx, %edx
	jle	.LBB6_19
# BB#11:                                # %for.body.lr.ph
	leal	-1(%rdx), %r9d
	testb	$3, %dl
	movl	$0, %eax
	movl	$0, %esi
	je	.LBB6_15
# BB#12:                                # %for.body.prol.preheader
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	1(%rax), %r8
	movl	%edx, %ebx
	andl	$3, %ebx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB6_13:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdi
	movzbl	(%r8,%rdi), %ebp
	movb	%al, %cl
	shlq	%cl, %rbp
	orq	%rbp, %rsi
	addq	$8, %rax
	leaq	1(%rdi), %rcx
	cmpl	%ecx, %ebx
	jne	.LBB6_13
# BB#14:
	leaq	1(%r8,%rdi), %r14
.LBB6_15:                               # %for.body.lr.ph.split
	leaq	2(%r9), %r8
	cmpl	$3, %r9d
	jb	.LBB6_18
# BB#16:                                # %for.body.lr.ph.split.split
	subl	%ecx, %edx
	.align	16, 0x90
.LBB6_17:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %edi
	movb	%al, %cl
	shlq	%cl, %rdi
	orq	%rsi, %rdi
	leal	8(%rax), %ecx
	movzbl	1(%r14), %esi
	shlq	%cl, %rsi
	orq	%rdi, %rsi
	movzbl	2(%r14), %edi
	leaq	16(%rax), %rcx
	shlq	%cl, %rdi
	orq	%rsi, %rdi
	movzbl	3(%r14), %esi
	addl	$8, %ecx
	shlq	%cl, %rsi
	orq	%rdi, %rsi
	addq	$4, %r14
	addq	$32, %rax
	addl	$-4, %edx
	jne	.LBB6_17
.LBB6_18:                               # %for.cond.for.cond.35.preheader_crit_edge
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%r8,%rax), %r14
	movq	%rsi, %rcx
	movl	$-15, %r11d
.LBB6_19:                               # %for.cond.35.preheader
	testl	%r12d, %r12d
	jle	.LBB6_20
# BB#21:                                # %for.body.38.preheader
	leal	-1(%r12), %edi
	xorl	%eax, %eax
	testb	$3, %r12b
	je	.LBB6_24
# BB#22:                                # %for.body.38.prol.preheader
	movl	%r12d, %esi
	andl	$3, %esi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB6_23:                               # %for.body.38.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	%cl, %dl
	andb	$1, %dl
	movb	%dl, 74(%rsp,%rax)
	incq	%rax
	shrq	%rcx
	cmpl	%eax, %esi
	jne	.LBB6_23
.LBB6_24:                               # %for.body.38.preheader.split
	cmpl	$3, %edi
	jae	.LBB6_26
# BB#25:
	movl	%r10d, %eax
	jmp	.LBB6_31
.LBB6_29:                               # %if.else.50
	movq	%r12, %rbp
	movl	%eax, %ebx
	movl	36(%rsp), %eax          # 4-byte Reload
	cmpl	%ebp, %eax
	movq	%r13, %r15
	jb	.LBB6_65
# BB#30:                                # %if.end.54
	subl	%ebp, %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	leaq	74(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movl	$-15, %r11d
	addq	%rbp, %r14
	movq	%rbp, %r12
	movl	%ebx, %eax
	jmp	.LBB6_31
.LBB6_20:
	movl	%r10d, %eax
	jmp	.LBB6_31
.LBB6_26:                               # %for.body.38.preheader.split.split
	movl	%r12d, %edx
	subl	%eax, %edx
	leaq	56(%rsp), %rsi
	leaq	21(%rax,%rsi), %rax
	.align	16, 0x90
.LBB6_27:                               # %for.body.38
                                        # =>This Inner Loop Header: Depth=1
	movb	%cl, %bl
	andb	$1, %bl
	movb	%bl, -3(%rax)
	movb	%cl, %bl
	shrb	%bl
	andb	$1, %bl
	movb	%bl, -2(%rax)
	movb	%cl, %bl
	shrb	$2, %bl
	andb	$1, %bl
	movb	%bl, -1(%rax)
	movb	%cl, %bl
	shrb	$3, %bl
	andb	$1, %bl
	movb	%bl, (%rax)
	shrq	$4, %rcx
	addq	$4, %rax
	addl	$-4, %edx
	jne	.LBB6_27
# BB#28:
	movl	%r10d, %eax
.LBB6_31:                               # %if.end.62
	testb	$2, %al
	jne	.LBB6_33
# BB#32:
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %r13          # 8-byte Reload
	jmp	.LBB6_57
.LBB6_33:                               # %if.then.66
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB6_65
# BB#34:                                # %if.end.71
	movzbl	(%r14), %ecx
	movq	%r12, %rbx
	cmpl	$33, %ebx
	jb	.LBB6_42
# BB#35:                                # %do.body
	testb	%cl, %cl
	js	.LBB6_36
# BB#37:                                # %if.else.81
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	%r15, 8(%rsp)           # 8-byte Spill
	leaq	1(%r14), %rax
	jmp	.LBB6_38
.LBB6_42:                               # %do.body.101
	testb	%cl, %cl
	js	.LBB6_43
# BB#44:                                # %if.else.108
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	%r15, 8(%rsp)           # 8-byte Spill
	leaq	1(%r14), %rax
	jmp	.LBB6_45
.LBB6_36:                               # %if.then.79
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	%r15, 8(%rsp)           # 8-byte Spill
	leaq	52(%rsp), %rdi
	movq	%r14, %rsi
	callq	enc_u_get_uint
.LBB6_38:                               # %do.end
	movzbl	(%rax), %r15d
	testb	%r15b, %r15b
	js	.LBB6_39
# BB#40:                                # %if.else.92
	incq	%rax
	jmp	.LBB6_41
.LBB6_43:                               # %if.then.105
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	%r15, 8(%rsp)           # 8-byte Spill
	leaq	52(%rsp), %rdi
	movq	%r14, %rsi
	callq	enc_u_get_uint
	movl	52(%rsp), %ecx
.LBB6_45:                               # %do.end.112
	movl	%ecx, %r15d
	movl	$-15, %r11d
	jmp	.LBB6_46
.LBB6_39:                               # %if.then.89
	leaq	52(%rsp), %rdi
	movq	%rax, %rsi
	callq	enc_u_get_uint
	movl	52(%rsp), %r15d
.LBB6_41:                               # %do.end.96
	movl	$-15, %r11d
	shlq	$32, %r15
.LBB6_46:                               # %if.end.114
	movq	%r15, 400(%rsp)
	testl	%ebx, %ebx
	jle	.LBB6_47
# BB#48:                                # %for.body.121.lr.ph
	movl	36(%rsp), %ecx          # 4-byte Reload
	addq	%rcx, %r14
	xorl	%ebp, %ebp
	leaq	52(%rsp), %r12
	.align	16, 0x90
.LBB6_49:                               # %for.body.121
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %r15b
	jne	.LBB6_50
# BB#54:                                # %if.else.153
                                        #   in Loop: Header=BB6_49 Depth=1
	movl	$0, 140(%rsp,%rbp,4)
	jmp	.LBB6_55
	.align	16, 0x90
.LBB6_50:                               # %if.then.125
                                        #   in Loop: Header=BB6_49 Depth=1
	movq	%r14, %rcx
	subq	%rax, %rcx
	testq	%rcx, %rcx
	jle	.LBB6_65
# BB#51:                                # %do.body.132
                                        #   in Loop: Header=BB6_49 Depth=1
	movzbl	(%rax), %ecx
	movl	%ecx, 140(%rsp,%rbp,4)
	testb	%cl, %cl
	js	.LBB6_52
# BB#53:                                # %if.else.148
                                        #   in Loop: Header=BB6_49 Depth=1
	incq	%rax
	jmp	.LBB6_55
.LBB6_52:                               # %if.then.140
                                        #   in Loop: Header=BB6_49 Depth=1
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	enc_u_get_uint
	movl	$-15, %r11d
	movl	52(%rsp), %ecx
	movl	%ecx, 140(%rsp,%rbp,4)
	.align	16, 0x90
.LBB6_55:                               # %for.inc.160
                                        #   in Loop: Header=BB6_49 Depth=1
	incq	%rbp
	shrq	%r15
	cmpq	%rbx, %rbp
	jl	.LBB6_49
	jmp	.LBB6_56
.LBB6_47:                               # %if.end.114.cleanup.170_crit_edge
	movl	36(%rsp), %ecx          # 4-byte Reload
	addq	%rcx, %r14
.LBB6_56:
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	24(%rsp), %r13          # 8-byte Reload
	subl	%eax, %r14d
	movl	%r14d, %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	%rax, %r14
	movl	20(%rsp), %eax          # 4-byte Reload
.LBB6_57:                               # %if.end.176
	testb	$8, %al
	jne	.LBB6_58
# BB#59:                                # %if.else.183
	testb	$4, %al
	je	.LBB6_64
# BB#60:                                # %if.then.187
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB6_65
# BB#61:                                # %do.body.193
	movzbl	(%r14), %eax
	movw	%ax, 396(%rsp)
	testb	%al, %al
	js	.LBB6_62
# BB#63:                                # %if.else.208
	incq	%r14
	jmp	.LBB6_64
.LBB6_58:                               # %if.then.180
	movw	$-1, 396(%rsp)
.LBB6_64:                               # %if.end.223
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	subl	376(%rbx), %edi
	movq	392(%rbx), %rax
	movl	216(%rax), %esi
	callq	imod
	movl	%eax, 408(%rsp)
	subl	380(%rbx), %ebp
	movq	392(%rbx), %rax
	movl	220(%rax), %esi
	movl	%ebp, %edi
	callq	imod
	movl	%eax, 412(%rsp)
	leaq	56(%rsp), %rsi
	movl	$656, %edx              # imm = 0x290
	movq	%r15, %rdi
	callq	memcpy
	subl	%r13d, %r14d
	movl	%r14d, %r11d
.LBB6_65:                               # %cleanup.240
	movl	%r11d, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_62:                               # %if.then.201
	leaq	52(%rsp), %rdi
	movq	%r14, %rsi
	callq	enc_u_get_uint
	movq	%rax, %r14
	movw	52(%rsp), %ax
	movw	%ax, 396(%rsp)
	jmp	.LBB6_64
.Lfunc_end6:
	.size	gx_dc_ht_colored_read, .Lfunc_end6-gx_dc_ht_colored_read
	.cfi_endproc

	.globl	gx_dc_ht_colored_get_nonzero_comps
	.align	16, 0x90
	.type	gx_dc_ht_colored_get_nonzero_comps,@function
gx_dc_ht_colored_get_nonzero_comps:     # @gx_dc_ht_colored_get_nonzero_comps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
.Ltmp52:
	.cfi_offset %rbx, -24
.Ltmp53:
	.cfi_offset %r14, -16
	movzwl	16(%rdi), %r8d
	testl	%r8d, %r8d
	movq	344(%rdi), %r11
	je	.LBB7_1
# BB#2:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	testb	$1, %r8b
	je	.LBB7_4
# BB#3:                                 # %for.body.prol
	cmpb	$0, 18(%rdi)
	setne	%al
	movzbl	%al, %esi
	orq	%r11, %rsi
	movl	$1, %ecx
	movq	%rsi, %r11
.LBB7_4:                                # %for.body.lr.ph.split
	cmpl	$1, %r8d
	je	.LBB7_11
# BB#5:                                 # %for.body.lr.ph.split.split
	movq	%rcx, %r14
	shlq	$32, %r14
	movabsq	$4294967296, %r9        # imm = 0x100000000
	movabsq	$8589934592, %r10       # imm = 0x200000000
	movq	%r11, %rsi
	.align	16, 0x90
.LBB7_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rax
	sarq	$32, %rax
	movl	$1, %ebx
	shlq	%cl, %rbx
	cmpb	$0, 18(%rdi,%rax)
	movl	$0, %r11d
	je	.LBB7_8
# BB#7:                                 # %select.mid
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	%rbx, %r11
.LBB7_8:                                # %select.end
                                        #   in Loop: Header=BB7_6 Depth=1
	orq	%rsi, %r11
	leaq	(%r14,%r9), %rax
	sarq	$32, %rax
	incq	%rcx
	movl	$1, %ebx
	shlq	%cl, %rbx
	cmpb	$0, 18(%rdi,%rax)
	movl	$0, %esi
	je	.LBB7_10
# BB#9:                                 # %select.mid14
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	%rbx, %rsi
.LBB7_10:                               # %select.end13
                                        #   in Loop: Header=BB7_6 Depth=1
	orq	%r11, %rsi
	addq	%r10, %r14
	incq	%rcx
	cmpl	%r8d, %ecx
	jne	.LBB7_6
	jmp	.LBB7_11
.LBB7_1:
	movq	%r11, %rsi
.LBB7_11:                               # %for.end
	movq	%rsi, (%rdx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	gx_dc_ht_colored_get_nonzero_comps, .Lfunc_end7-gx_dc_ht_colored_get_nonzero_comps
	.cfi_endproc

	.align	16, 0x90
	.type	set_cmyk_1bit_colors,@function
set_cmyk_1bit_colors:                   # @set_cmyk_1bit_colors
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
	subq	$24, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 80
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
	movq	%r9, %rbx
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	8(%r12), %r13
	movl	84(%r12), %eax
	testl	%eax, %eax
	je	.LBB8_1
# BB#4:                                 # %if.else
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	200(%r13), %rcx
	leaq	56(%r13), %rdx
	testq	%rcx, %rcx
	leaq	56(%rcx), %rcx
	cmoveq	%rdx, %rcx
	movl	(%rcx), %esi
	movq	(%rbx), %rdi
	subl	%eax, %esi
	callq	*216(%rdi)
	movq	%rax, 24(%r14)
	movl	$-2004318072, %ebp      # imm = 0xFFFFFFFF88888888
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	jmp	.LBB8_5
.LBB8_1:                                # %if.then
	xorl	%ebp, %ebp
	cmpb	$0, 18(%r12)
	je	.LBB8_3
# BB#2:                                 # %select.mid
	movl	$-2004318072, %ebp      # imm = 0xFFFFFFFF88888888
.LBB8_3:                                # %select.end
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	$ht_no_bitmap, 24(%r14)
.LBB8_5:                                # %if.end.18
	movl	88(%r12), %eax
	testl	%eax, %eax
	je	.LBB8_6
# BB#7:                                 # %if.else.37
	movq	200(%r13), %rcx
	leaq	56(%r13), %rdx
	testq	%rcx, %rcx
	leaq	224(%rcx), %rcx
	cmoveq	%rdx, %rcx
	movl	(%rcx), %esi
	orl	$1145324612, %ebp       # imm = 0x44444444
	movq	8(%rbx), %rdi
	subl	%eax, %esi
	callq	*216(%rdi)
	movq	%rax, 16(%r14)
	movl	%ebp, %r15d
	jmp	.LBB8_8
.LBB8_6:                                # %if.then.26
	movl	%ebp, %r15d
	orl	$1145324612, %r15d      # imm = 0x44444444
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	orl	$1145324612, %eax       # imm = 0x44444444
	cmpb	$0, 19(%r12)
	cmovnel	%eax, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	cmovel	%ebp, %r15d
	movq	$ht_no_bitmap, 16(%r14)
.LBB8_8:                                # %if.end.59
	movl	92(%r12), %eax
	testl	%eax, %eax
	je	.LBB8_9
# BB#10:                                # %if.else.80
	movq	200(%r13), %rcx
	leaq	56(%r13), %rdx
	testq	%rcx, %rcx
	leaq	392(%rcx), %rcx
	cmoveq	%rdx, %rcx
	movl	(%rcx), %esi
	orl	$572662306, %r15d       # imm = 0x22222222
	movq	16(%rbx), %rdi
	subl	%eax, %esi
	callq	*216(%rdi)
	movq	%rax, 8(%r14)
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	%r15d, %r14d
	jmp	.LBB8_11
.LBB8_9:                                # %if.then.69
	movq	%r14, %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	%r15d, %r14d
	orl	$572662306, %r14d       # imm = 0x22222222
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	%edx, %eax
	orl	$572662306, %eax        # imm = 0x22222222
	cmpb	$0, 20(%r12)
	cmovnel	%eax, %edx
	movl	%edx, 20(%rsp)          # 4-byte Spill
	cmovel	%r15d, %r14d
	movq	$ht_no_bitmap, 8(%rcx)
.LBB8_11:                               # %if.end.102
	movl	96(%r12), %eax
	testl	%eax, %eax
	je	.LBB8_12
# BB#13:                                # %if.else.123
	movq	200(%r13), %rcx
	addq	$56, %r13
	testq	%rcx, %rcx
	leaq	560(%rcx), %rcx
	cmoveq	%r13, %rcx
	movl	(%rcx), %esi
	orl	$286331153, %r14d       # imm = 0x11111111
	leaq	24(%rbx), %rbp
	movq	24(%rbx), %rdi
	subl	%eax, %esi
	callq	*216(%rdi)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rax, (%rcx)
	movl	%r14d, %eax
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	20(%rsp), %edi          # 4-byte Reload
	jmp	.LBB8_14
.LBB8_12:                               # %if.then.112
	movl	%r14d, %eax
	orl	$286331153, %eax        # imm = 0x11111111
	movl	20(%rsp), %edi          # 4-byte Reload
	movl	%edi, %ecx
	orl	$286331153, %ecx        # imm = 0x11111111
	cmpb	$0, 21(%r12)
	cmovnel	%ecx, %edi
	cmovel	%r14d, %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	$ht_no_bitmap, (%rcx)
	leaq	24(%rbx), %rbp
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB8_14:                               # %if.end.145
	movq	(%rbx), %rcx
	movq	(%rbp), %rdx
	movq	%rdx, (%rbx)
	movq	%rcx, (%rbp)
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	movq	%rdx, 8(%rbx)
	movq	%rcx, 16(%rbx)
	movl	%eax, %eax
	movq	%rax, (%rsi)
	movl	%edi, %eax
	movq	%rax, 8(%rsi)
	movl	$1, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	set_cmyk_1bit_colors, .Lfunc_end8-set_cmyk_1bit_colors
	.cfi_endproc

	.align	16, 0x90
	.type	set_ht_colors_le_4,@function
set_ht_colors_le_4:                     # @set_ht_colors_le_4
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
	subq	$40, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 96
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
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %rcx
	movq	%rdi, %r13
	movl	124(%r8), %eax
	addl	$65535, %eax            # imm = 0xFFFF
	movl	104(%r8), %ebp
	movzbl	18(%r12), %edi
	movl	84(%r12), %esi
	movzwl	%ax, %r14d
	cmpl	$7, %r14d
	ja	.LBB9_2
# BB#1:                                 # %cond.true
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movzwl	%ax, %eax
	movq	fc_color_quo(,%rax,8), %rax
	movzwl	(%rax,%rdi,2), %eax
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	imulq	$131070, %rdi, %rcx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rcx, %rax
	leal	(%r14,%r14), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB9_3:                                # %cond.end
	movl	96(%rsp), %r15d
	movw	%ax, (%r13)
	testl	%esi, %esi
	je	.LBB9_4
# BB#5:                                 # %if.else
	testl	%ebp, %ebp
	je	.LBB9_10
# BB#6:                                 # %if.then.34
	cmpl	$7, %r14d
	ja	.LBB9_8
# BB#7:                                 # %cond.true.38
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB9_9
.LBB9_4:                                # %if.then
	movw	%ax, 128(%r13)
	movq	$ht_no_bitmap, (%rbx)
	jmp	.LBB9_15
.LBB9_10:                               # %if.else.66
	movq	8(%r12), %rcx
	movq	200(%rcx), %rdx
	addq	$56, %rcx
	testq	%rdx, %rdx
	leaq	56(%rdx), %rdx
	cmoveq	%rcx, %rdx
	movl	(%rdx), %ecx
	movw	%ax, 128(%r13)
	cmpl	$7, %r14d
	ja	.LBB9_12
# BB#11:                                # %cond.true.86
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB9_13
.LBB9_8:                                # %cond.false.45
	incq	%rdi
	imulq	$131070, %rdi, %rcx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rcx, %rax
	leal	(%r14,%r14), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB9_9:                                # %cond.end.57
	movw	%ax, 128(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	jmp	.LBB9_14
.LBB9_12:                               # %cond.false.93
	incq	%rdi
	imulq	$131070, %rdi, %rdx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rdx, %rax
	leal	(%r14,%r14), %edi
	xorl	%edx, %edx
	divq	%rdi
.LBB9_13:                               # %cond.end.105
	movw	%ax, (%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB9_14:                               # %if.end.118
	callq	*216(%rdi)
	movq	%rax, (%rbx)
.LBB9_15:                               # %if.end.118
	cmpl	$2, %r15d
	jl	.LBB9_98
# BB#16:                                # %do.body.122
	movzbl	19(%r12), %edi
	movl	88(%r12), %esi
	cmpl	$7, %r14d
	ja	.LBB9_18
# BB#17:                                # %cond.true.137
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	(%rax,%rdi,2), %eax
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false.143
	imulq	$131070, %rdi, %rcx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rcx, %rax
	leal	(%r14,%r14), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB9_19:                               # %cond.end.154
	movw	%ax, 2(%r13)
	testl	%esi, %esi
	je	.LBB9_20
# BB#21:                                # %if.else.170
	testl	%ebp, %ebp
	je	.LBB9_26
# BB#22:                                # %if.then.172
	cmpl	$7, %r14d
	ja	.LBB9_24
# BB#23:                                # %cond.true.176
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB9_25
.LBB9_20:                               # %if.then.162
	movw	%ax, 130(%r13)
	movq	$ht_no_bitmap, 8(%rbx)
	jmp	.LBB9_31
.LBB9_26:                               # %if.else.207
	movq	8(%r12), %rcx
	movq	200(%rcx), %rdx
	addq	$56, %rcx
	testq	%rdx, %rdx
	leaq	224(%rdx), %rdx
	cmoveq	%rcx, %rdx
	movl	(%rdx), %ecx
	movw	%ax, 130(%r13)
	cmpl	$7, %r14d
	ja	.LBB9_28
# BB#27:                                # %cond.true.234
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB9_29
.LBB9_24:                               # %cond.false.183
	incq	%rdi
	imulq	$131070, %rdi, %rcx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rcx, %rax
	leal	(%r14,%r14), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB9_25:                               # %cond.end.195
	movw	%ax, 130(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	jmp	.LBB9_30
.LBB9_28:                               # %cond.false.241
	incq	%rdi
	imulq	$131070, %rdi, %rdx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rdx, %rax
	leal	(%r14,%r14), %edi
	xorl	%edx, %edx
	divq	%rdi
.LBB9_29:                               # %cond.end.253
	movw	%ax, 2(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB9_30:                               # %if.end.270
	callq	*216(%rdi)
	movq	%rax, 8(%rbx)
.LBB9_31:                               # %if.end.270
	cmpl	$3, %r15d
	jl	.LBB9_98
# BB#32:                                # %do.body.274
	movzbl	20(%r12), %edi
	movl	92(%r12), %esi
	cmpl	$7, %r14d
	ja	.LBB9_34
# BB#33:                                # %cond.true.289
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	(%rax,%rdi,2), %eax
	jmp	.LBB9_35
.LBB9_34:                               # %cond.false.295
	imulq	$131070, %rdi, %rcx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rcx, %rax
	leal	(%r14,%r14), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB9_35:                               # %cond.end.306
	movw	%ax, 4(%r13)
	testl	%esi, %esi
	je	.LBB9_36
# BB#37:                                # %if.else.322
	testl	%ebp, %ebp
	je	.LBB9_42
# BB#38:                                # %if.then.324
	cmpl	$7, %r14d
	ja	.LBB9_40
# BB#39:                                # %cond.true.328
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB9_41
.LBB9_36:                               # %if.then.314
	movw	%ax, 132(%r13)
	movq	$ht_no_bitmap, 16(%rbx)
	jmp	.LBB9_47
.LBB9_42:                               # %if.else.359
	movq	8(%r12), %rcx
	movq	200(%rcx), %rdx
	addq	$56, %rcx
	testq	%rdx, %rdx
	leaq	392(%rdx), %rdx
	cmoveq	%rcx, %rdx
	movl	(%rdx), %ecx
	movw	%ax, 132(%r13)
	cmpl	$7, %r14d
	ja	.LBB9_44
# BB#43:                                # %cond.true.386
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB9_45
.LBB9_40:                               # %cond.false.335
	incq	%rdi
	imulq	$131070, %rdi, %rcx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rcx, %rax
	leal	(%r14,%r14), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB9_41:                               # %cond.end.347
	movw	%ax, 132(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	jmp	.LBB9_46
.LBB9_44:                               # %cond.false.393
	incq	%rdi
	imulq	$131070, %rdi, %rdx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rdx, %rax
	leal	(%r14,%r14), %edi
	xorl	%edx, %edx
	divq	%rdi
.LBB9_45:                               # %cond.end.405
	movw	%ax, 4(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB9_46:                               # %if.end.422
	callq	*216(%rdi)
	movq	%rax, 16(%rbx)
.LBB9_47:                               # %if.end.422
	cmpl	$3, %r15d
	jne	.LBB9_51
# BB#48:                                # %if.then.425
	movzwl	340(%r12), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB9_49
# BB#50:                                # %if.else.566
	movzwl	4(%r13), %ecx
	movzwl	2(%r13), %edx
	movzwl	(%r13), %esi
	movzwl	%ax, %r14d
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	*1288(%rbx)
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rax, (%rbp)
	movzwl	4(%r13), %ecx
	movzwl	2(%r13), %edx
	movzwl	128(%r13), %esi
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	*1288(%rbx)
	movq	%rax, 8(%rbp)
	movzwl	4(%r13), %ecx
	movzwl	130(%r13), %edx
	movzwl	(%r13), %esi
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	*1288(%rbx)
	movq	%rax, 16(%rbp)
	movzwl	4(%r13), %ecx
	movzwl	130(%r13), %edx
	movzwl	128(%r13), %esi
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	*1288(%rbx)
	movq	%rax, 24(%rbp)
	movzwl	132(%r13), %ecx
	movzwl	2(%r13), %edx
	movzwl	(%r13), %esi
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	*1288(%rbx)
	movq	%rax, 32(%rbp)
	movzwl	132(%r13), %ecx
	movzwl	2(%r13), %edx
	movzwl	128(%r13), %esi
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	*1288(%rbx)
	movq	%rax, 40(%rbp)
	movzwl	132(%r13), %ecx
	movzwl	130(%r13), %edx
	movzwl	(%r13), %esi
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	*1288(%rbx)
	movq	%rax, 48(%rbp)
	movzwl	132(%r13), %ecx
	movzwl	130(%r13), %edx
	movzwl	128(%r13), %esi
	movq	%rbx, %rdi
	movl	%r14d, %r8d
	callq	*1288(%rbx)
	movq	%rax, 56(%rbp)
	jmp	.LBB9_98
.LBB9_51:                               # %do.body.675
	movzbl	21(%r12), %edi
	movl	96(%r12), %esi
	cmpl	$7, %r14d
	ja	.LBB9_53
# BB#52:                                # %cond.true.690
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	(%rax,%rdi,2), %eax
	jmp	.LBB9_54
.LBB9_53:                               # %cond.false.696
	imulq	$131070, %rdi, %rcx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rcx, %rax
	leal	(%r14,%r14), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB9_54:                               # %cond.end.707
	movw	%ax, 6(%r13)
	testl	%esi, %esi
	je	.LBB9_55
# BB#56:                                # %if.else.723
	testl	%ebp, %ebp
	je	.LBB9_61
# BB#57:                                # %if.then.725
	cmpl	$7, %r14d
	ja	.LBB9_59
# BB#58:                                # %cond.true.729
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB9_60
.LBB9_49:                               # %if.then.432
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	leaq	32(%rsp), %r14
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rax, (%rbp)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	%rax, 8(%rbp)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	%rax, 16(%rbp)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	%rax, 24(%rbp)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	%rax, 32(%rbp)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	%rax, 40(%rbp)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	%rax, 48(%rbp)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	%rax, 56(%rbp)
	jmp	.LBB9_98
.LBB9_55:                               # %if.then.715
	movw	%ax, 134(%r13)
	movq	$ht_no_bitmap, 24(%rbx)
	jmp	.LBB9_66
.LBB9_61:                               # %if.else.760
	movq	8(%r12), %rcx
	movq	200(%rcx), %rdx
	addq	$56, %rcx
	testq	%rdx, %rdx
	leaq	560(%rdx), %rdx
	cmoveq	%rcx, %rdx
	movl	(%rdx), %ecx
	movw	%ax, 134(%r13)
	cmpl	$7, %r14d
	ja	.LBB9_63
# BB#62:                                # %cond.true.787
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB9_64
.LBB9_59:                               # %cond.false.736
	incq	%rdi
	imulq	$131070, %rdi, %rcx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rcx, %rax
	leal	(%r14,%r14), %ecx
	xorl	%edx, %edx
	divq	%rcx
.LBB9_60:                               # %cond.end.748
	movw	%ax, 134(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	jmp	.LBB9_65
.LBB9_63:                               # %cond.false.794
	incq	%rdi
	imulq	$131070, %rdi, %rdx     # imm = 0x1FFFE
	movq	%r14, %rax
	addq	%rdx, %rax
	leal	(%r14,%r14), %edi
	xorl	%edx, %edx
	divq	%rdi
.LBB9_64:                               # %cond.end.806
	movw	%ax, 6(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB9_65:                               # %if.end.820
	callq	*216(%rdi)
	movq	%rax, 24(%rbx)
.LBB9_66:                               # %if.end.820
	cmpl	$5, %r15d
	jl	.LBB9_72
# BB#67:                                # %do.body.828.lr.ph
	leal	(%r14,%r14), %ecx
	addq	$32, %rbx
	leaq	22(%r12), %rsi
	leaq	136(%r13), %rdi
	addl	$-4, %r15d
	.align	16, 0x90
.LBB9_68:                               # %do.body.828
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %eax
	cmpl	$7, %r14d
	ja	.LBB9_70
# BB#69:                                # %cond.true.832
                                        #   in Loop: Header=BB9_68 Depth=1
	movq	fc_color_quo(,%r14,8), %rdx
	movzwl	(%rdx,%rax,2), %eax
	jmp	.LBB9_71
	.align	16, 0x90
.LBB9_70:                               # %cond.false.843
                                        #   in Loop: Header=BB9_68 Depth=1
	imulq	$131070, %rax, %rax     # imm = 0x1FFFE
	addq	%r14, %rax
	xorl	%edx, %edx
	divq	%rcx
.LBB9_71:                               # %cond.end.859
                                        #   in Loop: Header=BB9_68 Depth=1
	movw	%ax, -128(%rdi)
	movw	%ax, (%rdi)
	movq	$ht_no_bitmap, (%rbx)
	addq	$8, %rbx
	incq	%rsi
	addq	$2, %rdi
	decl	%r15d
	jne	.LBB9_68
.LBB9_72:                               # %if.end.874
	movl	344(%r12), %eax
	decl	%eax
	cmpl	$14, %eax
	jbe	.LBB9_73
# BB#74:                                # %if.end.874.sw.epilog_crit_edge
	leaq	32(%rsp), %r12
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	8(%rsp), %rbp           # 8-byte Reload
	jmp	.LBB9_97
.LBB9_73:                               # %if.end.874
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	8(%rsp), %rbp           # 8-byte Reload
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_77:                               # %if.end.874.sw.bb.1174_crit_edge
	leaq	32(%rsp), %r12
	jmp	.LBB9_85
.LBB9_79:                               # %if.end.874.sw.bb.1324_crit_edge
	leaq	32(%rsp), %r12
	jmp	.LBB9_88
.LBB9_76:                               # %if.end.874.sw.bb.1131_crit_edge
	leaq	32(%rsp), %r12
	jmp	.LBB9_84
.LBB9_81:                               # %if.end.874.sw.bb.1517_crit_edge
	leaq	32(%rsp), %r12
	jmp	.LBB9_92
.LBB9_80:                               # %if.end.874.sw.bb.1431_crit_edge
	leaq	32(%rsp), %r12
	jmp	.LBB9_90
.LBB9_78:                               # %if.end.874.sw.bb.1281_crit_edge
	leaq	32(%rsp), %r12
	jmp	.LBB9_87
.LBB9_75:                               # %if.end.874.sw.bb.1046_crit_edge
	leaq	32(%rsp), %r12
	jmp	.LBB9_83
.LBB9_96:                               # %sw.bb.1710
	movw	(%r13), %ax
	leaq	32(%rsp), %r12
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 64(%rbx)
	jmp	.LBB9_97
.LBB9_95:                               # %sw.bb.1667
	movw	128(%r13), %ax
	leaq	32(%rsp), %r12
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 72(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 64(%rbx)
	jmp	.LBB9_85
.LBB9_94:                               # %sw.bb.1624
	movw	(%r13), %ax
	leaq	32(%rsp), %r12
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 80(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 64(%rbx)
	jmp	.LBB9_88
.LBB9_93:                               # %sw.bb.1539
	movw	128(%r13), %ax
	leaq	32(%rsp), %r12
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 88(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 80(%rbx)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 72(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 64(%rbx)
	jmp	.LBB9_84
.LBB9_91:                               # %sw.bb.1474
	movw	(%r13), %ax
	leaq	32(%rsp), %r12
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 96(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 64(%rbx)
.LBB9_92:                               # %sw.bb.1517
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 32(%rbx)
	jmp	.LBB9_97
.LBB9_89:                               # %sw.bb.1346
	movw	128(%r13), %ax
	leaq	32(%rsp), %r12
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 104(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 96(%rbx)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 72(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 64(%rbx)
.LBB9_90:                               # %sw.bb.1431
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 40(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 32(%rbx)
	jmp	.LBB9_85
.LBB9_86:                               # %sw.bb.1196
	movw	(%r13), %ax
	leaq	32(%rsp), %r12
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 112(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 96(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 80(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 64(%rbx)
.LBB9_87:                               # %sw.bb.1281
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 48(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 32(%rbx)
.LBB9_88:                               # %sw.bb.1324
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 16(%rbx)
	jmp	.LBB9_97
.LBB9_82:                               # %sw.bb
	movw	128(%r13), %ax
	leaq	32(%rsp), %r12
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 120(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 112(%rbx)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 104(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 96(%rbx)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 88(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 80(%rbx)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 72(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	134(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 64(%rbx)
.LBB9_83:                               # %sw.bb.1046
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 56(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 48(%rbx)
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 40(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	132(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 32(%rbx)
.LBB9_84:                               # %sw.bb.1131
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 24(%rbx)
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	130(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 16(%rbx)
.LBB9_85:                               # %sw.bb.1174
	movw	128(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, 8(%rbx)
.LBB9_97:                               # %sw.epilog
	movw	(%r13), %ax
	movw	%ax, 32(%rsp)
	movw	2(%r13), %ax
	movw	%ax, 34(%rsp)
	movw	4(%r13), %ax
	movw	%ax, 36(%rsp)
	movw	6(%r13), %ax
	movw	%ax, 38(%rsp)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movq	%rax, (%rbx)
.LBB9_98:                               # %if.end.1755
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	set_ht_colors_le_4, .Lfunc_end9-set_ht_colors_le_4
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_77
	.quad	.LBB9_79
	.quad	.LBB9_76
	.quad	.LBB9_81
	.quad	.LBB9_80
	.quad	.LBB9_78
	.quad	.LBB9_75
	.quad	.LBB9_96
	.quad	.LBB9_95
	.quad	.LBB9_94
	.quad	.LBB9_93
	.quad	.LBB9_91
	.quad	.LBB9_89
	.quad	.LBB9_86
	.quad	.LBB9_82

	.text
	.align	16, 0x90
	.type	set_ht_colors_gt_4,@function
set_ht_colors_gt_4:                     # @set_ht_colors_gt_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 256
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, %r13
	movq	%rcx, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %r9
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movl	256(%rsp), %edx
	movl	$65535, %eax            # imm = 0xFFFF
	addl	124(%r13), %eax
	movl	104(%r13), %ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movq	344(%rbx), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	testl	%edx, %edx
	jle	.LBB10_10
# BB#1:                                 # %for.body.lr.ph
	movzwl	%ax, %r14d
	movl	%r14d, %ecx
	addl	%ecx, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movzwl	%ax, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	%edx, %r8d
	negl	%r8d
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movl	$64, %ebp
	movl	$56, %r12d
	.align	16, 0x90
.LBB10_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	-64(%rbp), %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	btq	%rax, %rcx
	movzbl	-46(%rbx,%rbp), %edi
	jae	.LBB10_23
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	-172(%rbx,%rbp,4), %esi
	cmpl	$7, %r14d
	ja	.LBB10_11
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	movq	fc_color_quo(,%rax,8), %rax
	movzwl	(%rax,%rdi,2), %eax
	jmp	.LBB10_12
	.align	16, 0x90
.LBB10_23:                              # %do.body.144
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$7, %r14d
	ja	.LBB10_25
# BB#24:                                # %cond.true.148
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	(%rax,%rdi,2), %eax
	jmp	.LBB10_26
	.align	16, 0x90
.LBB10_11:                              # %cond.false
                                        #   in Loop: Header=BB10_2 Depth=1
	imulq	$131070, %rdi, %rax     # imm = 0x1FFFE
	addq	%r14, %rax
	xorl	%edx, %edx
	divq	48(%rsp)                # 8-byte Folded Reload
.LBB10_12:                              # %cond.end
                                        #   in Loop: Header=BB10_2 Depth=1
	movw	%ax, -128(%r15,%rbp,2)
	testl	%esi, %esi
	je	.LBB10_27
# BB#13:                                # %if.else
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB10_19
# BB#14:                                # %if.then.47
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%r9, %rbx
	cmpl	$7, %r14d
	ja	.LBB10_16
# BB#15:                                # %cond.true.51
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB10_17
.LBB10_25:                              # %cond.false.159
                                        #   in Loop: Header=BB10_2 Depth=1
	imulq	$131070, %rdi, %rax     # imm = 0x1FFFE
	addq	%r14, %rax
	xorl	%edx, %edx
	divq	48(%rsp)                # 8-byte Folded Reload
.LBB10_26:                              # %cond.end.175
                                        #   in Loop: Header=BB10_2 Depth=1
	movw	%ax, -128(%r15,%rbp,2)
.LBB10_27:                              # %for.inc
                                        #   in Loop: Header=BB10_2 Depth=1
	movw	%ax, (%r15,%rbp,2)
	movq	$ht_no_bitmap, -512(%r9,%rbp,8)
	jmp	.LBB10_28
.LBB10_19:                              # %if.else.83
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	8(%rbx), %rcx
	movq	200(%rcx), %rdx
	addq	$56, %rcx
	testq	%rdx, %rdx
	leaq	(%rdx,%r12), %rdx
	cmoveq	%rcx, %rdx
	movl	(%rdx), %ecx
	movw	%ax, (%r15,%rbp,2)
	movq	%r9, %rbx
	cmpl	$7, %r14d
	ja	.LBB10_21
# BB#20:                                # %cond.true.106
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	fc_color_quo(,%r14,8), %rax
	movzwl	2(%rax,%rdi,2), %eax
	jmp	.LBB10_22
.LBB10_16:                              # %cond.false.58
                                        #   in Loop: Header=BB10_2 Depth=1
	leaq	1(%rdi), %rax
	imulq	$131070, %rax, %rax     # imm = 0x1FFFE
	addq	%r14, %rax
	xorl	%edx, %edx
	divq	48(%rsp)                # 8-byte Folded Reload
.LBB10_17:                              # %cond.end.70
                                        #   in Loop: Header=BB10_2 Depth=1
	movw	%ax, (%r15,%rbp,2)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	-512(%rax,%rbp,8), %rdi
	jmp	.LBB10_18
.LBB10_21:                              # %cond.false.113
                                        #   in Loop: Header=BB10_2 Depth=1
	leaq	1(%rdi), %rax
	imulq	$131070, %rax, %rax     # imm = 0x1FFFE
	addq	%r14, %rax
	xorl	%edx, %edx
	divq	48(%rsp)                # 8-byte Folded Reload
.LBB10_22:                              # %cond.end.125
                                        #   in Loop: Header=BB10_2 Depth=1
	movw	%ax, -128(%r15,%rbp,2)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	-512(%rax,%rbp,8), %rdi
	subl	%esi, %ecx
	movl	%ecx, %esi
.LBB10_18:                              # %for.inc
                                        #   in Loop: Header=BB10_2 Depth=1
	callq	*216(%rdi)
	movq	%rbx, %r9
	movq	%rax, -512(%r9,%rbp,8)
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	8(%rsp), %r8            # 8-byte Reload
.LBB10_28:                              # %for.inc
                                        #   in Loop: Header=BB10_2 Depth=1
	incq	%rbp
	addq	$168, %r12
	leal	(%r8,%rbp), %eax
	cmpl	$64, %eax
	jne	.LBB10_2
# BB#5:                                 # %for.cond.191.preheader
	movl	256(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB10_10
# BB#6:                                 # %for.body.194.lr.ph
	movl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	xorl	%ebx, %ebx
	leaq	64(%rsp), %r12
	.align	16, 0x90
.LBB10_7:                               # %for.body.194
                                        # =>This Inner Loop Header: Depth=1
	movw	(%r15,%rbx,2), %ax
	movw	%ax, 64(%rsp,%rbx,2)
	movq	%r13, %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	leal	-1(%r14), %ecx
	movslq	%ecx, %rcx
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%rax, (%r13,%rcx,8)
	movq	56(%rsp), %rax          # 8-byte Reload
	btq	%rbx, %rax
	jae	.LBB10_9
# BB#8:                                 # %if.then.209
                                        #   in Loop: Header=BB10_7 Depth=1
	movw	128(%r15,%rbx,2), %ax
	movw	%ax, 64(%rsp,%rbx,2)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*1552(%rbp)
	movslq	%r14d, %rcx
	movq	%rax, (%r13,%rcx,8)
.LBB10_9:                               # %if.end.224
                                        #   in Loop: Header=BB10_7 Depth=1
	movq	%rbp, %r13
	movw	$0, 64(%rsp,%rbx,2)
	incq	%rbx
	addl	$2, %r14d
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	%ebx, %eax
	jne	.LBB10_7
.LBB10_10:                              # %for.end.229
	xorl	%eax, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	set_ht_colors_gt_4, .Lfunc_end10-set_ht_colors_gt_4
	.cfi_endproc

	.align	16, 0x90
	.type	set_color_ht_le_4,@function
set_color_ht_le_4:                      # @set_color_ht_le_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp94:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp96:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp97:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 56
	subq	$256, %rsp              # imm = 0x100
.Ltmp99:
	.cfi_def_cfa_offset 312
.Ltmp100:
	.cfi_offset %rbx, -56
.Ltmp101:
	.cfi_offset %r12, -48
.Ltmp102:
	.cfi_offset %r13, -40
.Ltmp103:
	.cfi_offset %r14, -32
.Ltmp104:
	.cfi_offset %r15, -24
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movq	336(%rsp), %r11
	movl	312(%rsp), %r12d
	leal	-1(%r9), %r10d
	movl	%r10d, %r13d
	imull	%esi, %r13d
	imull	%r8d, %r12d
	movl	%r12d, %ebx
	sarl	$31, %ebx
	cmpl	$0, 320(%rsp)
	jle	.LBB11_1
# BB#2:                                 # %if.then
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movsbq	.L.str.1(%r11), %r11
	jmp	.LBB11_3
.LBB11_1:
	movl	%esi, 60(%rsp)          # 4-byte Spill
.LBB11_3:                               # %do.end
	shrl	$29, %ebx
	movq	368(%rsp), %r9
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rdx,%rax), %r15d
	addl	%ecx, %r10d
	movq	%r11, %rdx
	andq	$1, %rdx
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	je	.LBB11_4
# BB#5:                                 # %if.then.6
	movl	%r15d, %r14d
	movq	%rdx, %r15
	movq	(%r9), %r9
	movl	12(%r9), %edi
	movl	16(%r9), %r8d
	movzwl	38(%r9), %ecx
	testl	%ecx, %ecx
	movl	%r14d, %eax
	je	.LBB11_7
# BB#6:                                 # %cond.false.i
	movl	%r10d, %eax
	cltd
	idivl	%r8d
	imull	%ecx, %eax
	addl	%r14d, %eax
.LBB11_7:                               # %init_tile_cursor.exit
	movl	%ecx, -64(%rsp)         # 4-byte Spill
	cltd
	idivl	%edi
	movl	%edx, %ecx
	movl	%r10d, %eax
	cltd
	idivl	%r8d
	movl	%ecx, %esi
	sarl	$3, %esi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	andl	$7, %ecx
	movl	$8, %eax
	subl	%ecx, %eax
	movl	%eax, 180(%rsp)         # 4-byte Spill
	decl	%edi
	movl	%edi, %ebp
	sarl	$3, %ebp
	andl	$7, %edi
	incl	%edi
	movq	(%r9), %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	movl	8(%r9), %eax
	movl	%eax, -52(%rsp)         # 4-byte Spill
	imull	%eax, %edx
	movslq	%edx, %rax
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movslq	%esi, %rax
	leaq	(%rax,%rcx), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	movl	%r14d, %r15d
	movq	368(%rsp), %r9
	jmp	.LBB11_8
.LBB11_4:
                                        # implicit-def: RAX
	movq	%rax, 216(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, -52(%rsp)         # 4-byte Spill
                                        # implicit-def: RAX
	movq	%rax, -24(%rsp)         # 8-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 48(%rsp)          # 8-byte Spill
                                        # implicit-def: EDI
                                        # implicit-def: EAX
	movl	%eax, 180(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movq	%rax, 24(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, -64(%rsp)         # 4-byte Spill
	xorl	%ebp, %ebp
.LBB11_8:                               # %if.end.9
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movl	%edi, 132(%rsp)         # 4-byte Spill
	addl	%ebx, %r12d
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%r11, %rax
	andq	$2, %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	je	.LBB11_9
# BB#10:                                # %if.then.12
	movl	%edi, 132(%rsp)         # 4-byte Spill
	movq	%rdx, %r8
	movq	8(%r9), %rbx
	movl	12(%rbx), %ecx
	movl	16(%rbx), %ebp
	movzwl	38(%rbx), %esi
	testl	%esi, %esi
	movl	%r15d, %eax
	je	.LBB11_12
# BB#11:                                # %cond.false.i.334
	movl	%r10d, %eax
	cltd
	idivl	%ebp
	imull	%esi, %eax
	addl	%r15d, %eax
.LBB11_12:                              # %init_tile_cursor.exit361
	movl	%esi, -68(%rsp)         # 4-byte Spill
	cltd
	movl	%ecx, %esi
	idivl	%esi
	movl	%edx, %ecx
	movl	%r10d, %eax
	cltd
	idivl	%ebp
	movl	%ecx, %edi
	sarl	$3, %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	andl	$7, %ecx
	movl	$8, %ebp
	subl	%ecx, %ebp
	decl	%esi
	movl	%esi, %eax
	sarl	$3, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	andl	$7, %esi
	incl	%esi
	movl	%esi, 100(%rsp)         # 4-byte Spill
	movq	(%rbx), %rcx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movl	8(%rbx), %eax
	movl	%eax, -56(%rsp)         # 4-byte Spill
	imull	%eax, %edx
	movslq	%edx, %rax
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movslq	%edi, %rax
	leaq	(%rax,%rcx), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	jmp	.LBB11_13
.LBB11_9:
	movl	%edi, 132(%rsp)         # 4-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 224(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, -56(%rsp)         # 4-byte Spill
                                        # implicit-def: RAX
	movq	%rax, -32(%rsp)         # 8-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 160(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 100(%rsp)         # 4-byte Spill
                                        # implicit-def: EBP
                                        # implicit-def: EAX
	movq	%rax, 16(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, -68(%rsp)         # 4-byte Spill
.LBB11_13:                              # %if.end.15
	sarl	$3, %r12d
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%r11, %rax
	andq	$4, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	je	.LBB11_14
# BB#15:                                # %if.then.18
	movl	%ebp, 176(%rsp)         # 4-byte Spill
	movq	%rdx, %r8
	movq	16(%r9), %r14
	movq	%r9, %rdi
	movl	12(%r14), %ecx
	movl	16(%r14), %ebp
	movzwl	38(%r14), %esi
	testl	%esi, %esi
	movl	%r15d, %eax
	je	.LBB11_17
# BB#16:                                # %cond.false.i.296
	movl	%r10d, %eax
	cltd
	idivl	%ebp
	imull	%esi, %eax
	addl	%r15d, %eax
.LBB11_17:                              # %init_tile_cursor.exit323
	movl	%esi, -72(%rsp)         # 4-byte Spill
	cltd
	movl	%ecx, %esi
	idivl	%esi
	movl	%edx, %ecx
	movl	%r10d, %eax
	cltd
	idivl	%ebp
	movl	%ecx, %ebp
	sarl	$3, %ebp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	andl	$7, %ecx
	movl	$8, %ebx
	subl	%ecx, %ebx
	decl	%esi
	movl	%esi, %eax
	sarl	$3, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	andl	$7, %esi
	incl	%esi
	movl	%esi, 96(%rsp)          # 4-byte Spill
	movq	(%r14), %rcx
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movl	8(%r14), %eax
	movl	%eax, -60(%rsp)         # 4-byte Spill
	imull	%eax, %edx
	movslq	%edx, %rax
	movl	%ebx, %r14d
	leaq	(%rax,%rcx), %rsi
	movslq	%ebp, %rax
	movq	%rsi, %rcx
	leaq	(%rax,%rcx), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	%r8, %rdx
	jmp	.LBB11_18
.LBB11_14:
	movq	%r9, %rdi
	movl	%ebp, 176(%rsp)         # 4-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 240(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, -60(%rsp)         # 4-byte Spill
                                        # implicit-def: RAX
	movq	%rax, -40(%rsp)         # 8-byte Spill
                                        # implicit-def: RCX
                                        # implicit-def: EAX
	movl	%eax, 96(%rsp)          # 4-byte Spill
                                        # implicit-def: R14D
                                        # implicit-def: EAX
	movq	%rax, 8(%rsp)           # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, -72(%rsp)         # 4-byte Spill
.LBB11_18:                              # %if.end.21
	movq	136(%rsp), %r9          # 8-byte Reload
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	addq	%r13, %r9
	movslq	%r12d, %r8
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	andq	$8, %r11
	movq	%r11, 248(%rsp)         # 8-byte Spill
	je	.LBB11_19
# BB#20:                                # %if.then.24
	movq	24(%rdi), %rbx
	movl	12(%rbx), %ecx
	movl	16(%rbx), %edi
	movzwl	38(%rbx), %ebp
	testl	%ebp, %ebp
	je	.LBB11_21
# BB#22:                                # %cond.false.i.258
	movl	%r14d, 232(%rsp)        # 4-byte Spill
	movq	%rdx, %r14
	movl	%r10d, %eax
	cltd
	idivl	%edi
	imull	%ebp, %eax
	movq	%rbp, -80(%rsp)         # 8-byte Spill
	addl	%eax, %r15d
	jmp	.LBB11_23
.LBB11_19:
	movq	%rdx, %rbx
                                        # implicit-def: EDX
                                        # implicit-def: RAX
	movq	%rax, 184(%rsp)         # 8-byte Spill
                                        # implicit-def: ECX
                                        # implicit-def: RAX
	movq	%rax, -48(%rsp)         # 8-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 152(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 92(%rsp)          # 4-byte Spill
                                        # implicit-def: EAX
	movq	%rax, (%rsp)            # 8-byte Spill
                                        # implicit-def: EAX
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movl	312(%rsp), %r15d
	movq	%r9, %rbp
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	jmp	.LBB11_24
.LBB11_21:
	movl	%r14d, 232(%rsp)        # 4-byte Spill
	movq	%rbp, -80(%rsp)         # 8-byte Spill
	movq	%rdx, %r14
.LBB11_23:                              # %init_tile_cursor.exit285
	movl	%r10d, %esi
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	movl	%r15d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	%ebp, %esi
	sarl	$3, %esi
	movq	%rsi, (%rsp)            # 8-byte Spill
	andl	$7, %ebp
	movl	$8, %edi
	subl	%ebp, %edi
	decl	%ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	andl	$7, %ecx
	incl	%ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	(%rbx), %rbp
	movq	%rbp, -48(%rsp)         # 8-byte Spill
	movl	8(%rbx), %ecx
	imull	%ecx, %edx
	movslq	%edx, %rax
	leaq	(%rax,%rbp), %rbp
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movslq	%esi, %rax
	leaq	(%rax,%rbp), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	312(%rsp), %r15d
	movq	%r14, %rbx
	movl	%edi, %edx
	movq	64(%rsp), %r12          # 8-byte Reload
	movq	%r9, %rbp
	movl	232(%rsp), %r14d        # 4-byte Reload
.LBB11_24:                              # %for.cond.preheader
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	movl	%edx, 172(%rsp)         # 4-byte Spill
	movl	%ecx, -84(%rsp)         # 4-byte Spill
	movq	360(%rsp), %r9
	sarl	$3, %r15d
	movl	%r15d, 76(%rsp)         # 4-byte Spill
	addq	%r8, %rbp
	movl	-52(%rsp), %eax         # 4-byte Reload
	negq	%rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movl	-56(%rsp), %eax         # 4-byte Reload
	negq	%rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movl	-60(%rsp), %eax         # 4-byte Reload
	negq	%rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	movl	%ecx, %eax
	negq	%rax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	movl	60(%rsp), %eax          # 4-byte Reload
	negq	%rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movl	%r14d, -12(%rsp)        # 4-byte Spill
	movl	176(%rsp), %eax         # 4-byte Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	180(%rsp), %eax         # 4-byte Reload
	movl	%eax, -16(%rsp)         # 4-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%r14d, %edx
	movq	%rax, %rdi
	movq	%r10, %r14
	jmp	.LBB11_25
	.align	16, 0x90
.LBB11_156:                             # %for.inc.683
                                        #   in Loop: Header=BB11_25 Depth=1
	addq	32(%rsp), %rbp          # 8-byte Folded Reload
	movl	76(%rsp), %r15d         # 4-byte Reload
	movq	%r11, %rdi
	movq	%r10, %r11
.LBB11_25:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_26 Depth 2
                                        #       Child Loop BB11_72 Depth 3
                                        #       Child Loop BB11_69 Depth 3
                                        #       Child Loop BB11_66 Depth 3
                                        #       Child Loop BB11_63 Depth 3
                                        #       Child Loop BB11_102 Depth 3
                                        #       Child Loop BB11_81 Depth 3
                                        #       Child Loop BB11_84 Depth 3
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movq	%r14, 48(%rsp)          # 8-byte Spill
	decl	%r12d
	movq	%r12, 64(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	%eax, %r12d
	jg	.LBB11_26
	jmp	.LBB11_89
.LBB11_93:                              # %if.else.402
                                        #   in Loop: Header=BB11_26 Depth=2
	testb	$1, %r8b
	je	.LBB11_95
# BB#94:                                # %if.then.406
                                        #   in Loop: Header=BB11_26 Depth=2
	movb	(%rbp), %al
	andb	$15, %al
	movl	%edx, %esi
	movl	%ebx, %edx
	andl	$15, %edx
	movb	(%r9,%rdx,8), %dl
	shlb	$4, %dl
	orb	%al, %dl
	movb	%dl, (%rbp)
	movl	%esi, %edx
	shrl	$4, %ebx
	decl	%r14d
.LBB11_95:                              # %for.cond.420.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	%r14d, %eax
	addl	$-2, %eax
	js	.LBB11_96
# BB#97:                                # %for.body.424.lr.ph
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	%edx, 232(%rsp)         # 4-byte Spill
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movl	%eax, %esi
	shrl	%esi
	leal	(%rsi,%rsi), %r8d
	negl	%r8d
	movl	%esi, %r13d
	btl	$1, %eax
	jb	.LBB11_98
# BB#99:                                # %for.body.424.prol
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	%ebx, %eax
	andl	$15, %eax
	movl	%ebx, %edx
	shrl	$4, %edx
	andl	$15, %edx
	movb	(%r9,%rdx,8), %dl
	shlb	$4, %dl
	addb	(%r9,%rax,8), %dl
	movq	%rbp, %rax
	leaq	-1(%rax), %rbp
	movb	%dl, -1(%rax)
	movq	%rax, %rdi
	shrl	$8, %ebx
	movl	%r14d, %eax
	addl	$-4, %eax
	jmp	.LBB11_100
.LBB11_77:                              #   in Loop: Header=BB11_26 Depth=2
	movq	%rcx, %r14
	movq	248(%rsp), %r11         # 8-byte Reload
	jmp	.LBB11_86
.LBB11_79:                              #   in Loop: Header=BB11_26 Depth=2
	movl	%r13d, %ebp
	movq	%rdi, %rsi
.LBB11_82:                              # %for.body.391.lr.ph.split
                                        #   in Loop: Header=BB11_26 Depth=2
	negq	%rax
	cmpl	$14, %r13d
	jb	.LBB11_85
# BB#83:                                # %for.body.391.lr.ph.split.split
                                        #   in Loop: Header=BB11_26 Depth=2
	decq	%rsi
	.align	16, 0x90
.LBB11_84:                              # %for.body.391
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%bl, (%rsi)
	movb	%bh, -1(%rsi)  # NOREX
	movl	%ebx, %edx
	shrl	$16, %edx
	movb	%dl, -2(%rsi)
	shrl	$24, %ebx
	movb	%bl, -3(%rsi)
	movl	$0, -7(%rsi)
	addq	$-8, %rsi
	xorl	%ebx, %ebx
	addl	$-16, %ebp
	jns	.LBB11_84
.LBB11_85:                              # %for.cond.387.for.end_crit_edge
                                        #   in Loop: Header=BB11_26 Depth=2
	leal	-4(%r14,%r8), %r13d
	movq	%rdi, %rbp
	leaq	-1(%rbp,%rax), %rbp
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	248(%rsp), %r11         # 8-byte Reload
	movl	76(%rsp), %r15d         # 4-byte Reload
	movq	%rcx, %r14
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	232(%rsp), %edx         # 4-byte Reload
.LBB11_86:                              # %for.end
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rax, 136(%rsp)         # 8-byte Spill
	testb	$1, %r13b
	je	.LBB11_87
# BB#92:                                # %if.then.397
                                        #   in Loop: Header=BB11_26 Depth=2
	andb	$15, %bl
	movb	%bl, -1(%rbp)
	decq	%rbp
.LBB11_87:                              #   in Loop: Header=BB11_26 Depth=2
	movq	144(%rsp), %r13         # 8-byte Reload
	jmp	.LBB11_88
.LBB11_96:                              #   in Loop: Header=BB11_26 Depth=2
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	248(%rsp), %r11         # 8-byte Reload
	jmp	.LBB11_104
.LBB11_98:                              #   in Loop: Header=BB11_26 Depth=2
	movq	%rbp, %rcx
	movq	%rcx, %rdi
.LBB11_100:                             # %for.body.424.lr.ph.split
                                        #   in Loop: Header=BB11_26 Depth=2
	negq	%r13
	testl	%esi, %esi
	je	.LBB11_103
# BB#101:                               # %for.body.424.lr.ph.split.split
                                        #   in Loop: Header=BB11_26 Depth=2
	decq	%rbp
	.align	16, 0x90
.LBB11_102:                             # %for.body.424
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %edx
	andl	$15, %edx
	movl	%ebx, %esi
	shrl	$4, %esi
	andl	$15, %esi
	movb	(%r9,%rsi,8), %cl
	shlb	$4, %cl
	addb	(%r9,%rdx,8), %cl
	movb	%cl, (%rbp)
	movl	%ebx, %ecx
	shrl	$8, %ecx
	andl	$15, %ecx
	movl	%ebx, %edx
	shrl	$12, %edx
	andl	$15, %edx
	movb	(%r9,%rdx,8), %dl
	shlb	$4, %dl
	addb	(%r9,%rcx,8), %dl
	movb	%dl, -1(%rbp)
	shrl	$16, %ebx
	addq	$-2, %rbp
	addl	$-4, %eax
	jns	.LBB11_102
.LBB11_103:                             # %for.cond.420.for.end.442_crit_edge
                                        #   in Loop: Header=BB11_26 Depth=2
	leal	-4(%r14,%r8), %eax
	movq	%rdi, %rbp
	leaq	-1(%rbp,%r13), %rbp
	movl	76(%rsp), %r15d         # 4-byte Reload
	movq	144(%rsp), %r13         # 8-byte Reload
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	248(%rsp), %r11         # 8-byte Reload
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	232(%rsp), %edx         # 4-byte Reload
.LBB11_104:                             # %for.end.442
                                        #   in Loop: Header=BB11_26 Depth=2
	testb	$1, %al
	je	.LBB11_88
# BB#105:                               # %if.then.445
                                        #   in Loop: Header=BB11_26 Depth=2
	andl	$15, %ebx
	movb	(%r9,%rbx,8), %al
	movb	%al, -1(%rbp)
	decq	%rbp
	jmp	.LBB11_88
	.align	16, 0x90
.LBB11_26:                              # %for.body
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_72 Depth 3
                                        #       Child Loop BB11_69 Depth 3
                                        #       Child Loop BB11_66 Depth 3
                                        #       Child Loop BB11_63 Depth 3
                                        #       Child Loop BB11_102 Depth 3
                                        #       Child Loop BB11_81 Depth 3
                                        #       Child Loop BB11_84 Depth 3
	movl	%r12d, %r8d
	xorl	%ebx, %ebx
	cmpq	$0, 208(%rsp)           # 8-byte Folded Reload
	je	.LBB11_27
# BB#28:                                # %do.body.34
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rdi, %r10
	movl	%edx, %edi
	movq	216(%rsp), %rdx         # 8-byte Reload
	cmpq	%r14, %rdx
	jbe	.LBB11_30
# BB#29:                                # %if.then.39
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movzbl	-1(%rdx), %ecx
	shll	$8, %ecx
	movzbl	(%rdx), %eax
	leaq	-1(%rdx), %rdx
	orl	%ecx, %eax
	movl	180(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %eax
	jmp	.LBB11_33
	.align	16, 0x90
.LBB11_27:                              #   in Loop: Header=BB11_26 Depth=2
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movq	240(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB11_34
	.align	16, 0x90
.LBB11_30:                              # %if.else
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	(%rdx), %esi
	movl	180(%rsp), %ebx         # 4-byte Reload
	movb	%bl, %cl
	shrl	%cl, %esi
	addq	%r13, %rdx
	subl	132(%rsp), %ebx         # 4-byte Folded Reload
	js	.LBB11_31
# BB#32:                                # %if.else.80
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movzbl	-1(%rdx), %ecx
	shll	$8, %ecx
	movzbl	(%rdx), %eax
	leaq	-1(%rdx), %rdx
	orl	%ecx, %eax
	movb	%bl, %cl
	movl	%ebx, 180(%rsp)         # 4-byte Spill
	shrl	%cl, %eax
	orl	%esi, %eax
	jmp	.LBB11_33
.LBB11_31:                              # %if.then.68
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	movzbl	(%rdx), %eax
	movl	%ebx, %ecx
	negl	%ecx
	shll	%cl, %eax
	orl	%esi, %eax
	addl	$8, %ebx
	movl	%ebx, 180(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB11_33:                              # %do.end.100
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	240(%rsp), %rbp         # 8-byte Reload
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movzbl	%al, %eax
	movl	expand_8x1_to_8x4(,%rax,4), %ebx
	movl	%edi, %edx
	movq	%r10, %rdi
.LBB11_34:                              # %if.end.104
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpq	$0, 200(%rsp)           # 8-byte Folded Reload
	je	.LBB11_42
# BB#35:                                # %do.body.108
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	224(%rsp), %rax         # 8-byte Reload
	cmpq	160(%rsp), %rax         # 8-byte Folded Reload
	jbe	.LBB11_37
# BB#36:                                # %if.then.115
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	224(%rsp), %rsi         # 8-byte Reload
	movzbl	-1(%rsi), %ecx
	shll	$8, %ecx
	movzbl	(%rsi), %eax
	leaq	-1(%rsi), %rsi
	movq	%rsi, 224(%rsp)         # 8-byte Spill
	orl	%ecx, %eax
	movl	176(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %eax
	jmp	.LBB11_41
	.align	16, 0x90
.LBB11_37:                              # %if.else.131
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movq	%r14, %r11
	movq	%r13, %r10
	movl	%edx, %r14d
	movq	%rdi, %rdx
	movq	224(%rsp), %rax         # 8-byte Reload
	movzbl	(%rax), %r12d
	movq	%rax, %rsi
	movl	176(%rsp), %edi         # 4-byte Reload
	movb	%dil, %cl
	shrl	%cl, %r12d
	addq	120(%rsp), %rsi         # 8-byte Folded Reload
	subl	100(%rsp), %edi         # 4-byte Folded Reload
	js	.LBB11_38
# BB#39:                                # %if.else.163
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	-1(%rsi), %ecx
	shll	$8, %ecx
	movzbl	(%rsi), %eax
	leaq	-1(%rsi), %rsi
	movq	%rsi, 224(%rsp)         # 8-byte Spill
	orl	%ecx, %eax
	movb	%dil, %cl
	movl	%edi, 176(%rsp)         # 4-byte Spill
	shrl	%cl, %eax
	orl	%r12d, %eax
	jmp	.LBB11_40
.LBB11_38:                              # %if.then.151
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	(%rsi), %eax
	movl	%edi, %ecx
	negl	%ecx
	shll	%cl, %eax
	orl	%r12d, %eax
	addl	$8, %edi
	movl	%edi, 176(%rsp)         # 4-byte Spill
	movq	%rsi, 224(%rsp)         # 8-byte Spill
.LBB11_40:                              # %do.end.183
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rdx, %rdi
	movl	%r14d, %edx
	movq	%r10, %r13
	movq	%r11, %r14
	movq	248(%rsp), %r11         # 8-byte Reload
.LBB11_41:                              # %do.end.183
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	%al, %eax
	movl	expand_8x1_to_8x4(,%rax,4), %eax
	addl	%eax, %eax
	orl	%eax, %ebx
.LBB11_42:                              # %if.end.189
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpq	$0, 192(%rsp)           # 8-byte Folded Reload
	je	.LBB11_49
# BB#43:                                # %do.body.193
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpq	%rdi, %rbp
	jbe	.LBB11_45
# BB#44:                                # %if.then.200
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	-1(%rbp), %ecx
	shll	$8, %ecx
	movzbl	(%rbp), %eax
	leaq	-1(%rbp), %rbp
	orl	%ecx, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	jmp	.LBB11_48
	.align	16, 0x90
.LBB11_45:                              # %if.else.216
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	(%rbp), %esi
	movb	%dl, %cl
	shrl	%cl, %esi
	addq	112(%rsp), %rbp         # 8-byte Folded Reload
	subl	96(%rsp), %edx          # 4-byte Folded Reload
	js	.LBB11_46
# BB#47:                                # %if.else.248
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	-1(%rbp), %ecx
	shll	$8, %ecx
	movzbl	(%rbp), %eax
	leaq	-1(%rbp), %rbp
	orl	%ecx, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	orl	%esi, %eax
	jmp	.LBB11_48
.LBB11_46:                              # %if.then.236
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	(%rbp), %eax
	movl	%edx, %ecx
	negl	%ecx
	shll	%cl, %eax
	orl	%esi, %eax
	addl	$8, %edx
	.align	16, 0x90
.LBB11_48:                              # %do.end.268
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	%al, %eax
	movl	expand_8x1_to_8x4(,%rax,4), %eax
	shll	$2, %eax
	orl	%eax, %ebx
.LBB11_49:                              # %if.end.274
                                        #   in Loop: Header=BB11_26 Depth=2
	testq	%r11, %r11
	je	.LBB11_50
# BB#51:                                # %do.body.278
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	184(%rsp), %rax         # 8-byte Reload
	cmpq	152(%rsp), %rax         # 8-byte Folded Reload
	jbe	.LBB11_53
# BB#52:                                # %if.then.285
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rax, %rsi
	movq	%rbp, 240(%rsp)         # 8-byte Spill
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movzbl	-1(%rsi), %ecx
	shll	$8, %ecx
	movzbl	(%rsi), %eax
	leaq	-1(%rsi), %rsi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	orl	%ecx, %eax
	movl	172(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %eax
	jmp	.LBB11_57
	.align	16, 0x90
.LBB11_50:                              #   in Loop: Header=BB11_26 Depth=2
	movq	%r14, %rcx
	movq	%rbp, 240(%rsp)         # 8-byte Spill
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movq	232(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB11_58
	.align	16, 0x90
.LBB11_53:                              # %if.else.301
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	%edx, %r13d
	movzbl	(%rax), %esi
	movl	172(%rsp), %edx         # 4-byte Reload
	movb	%dl, %cl
	shrl	%cl, %esi
	addq	104(%rsp), %rax         # 8-byte Folded Reload
	subl	92(%rsp), %edx          # 4-byte Folded Reload
	js	.LBB11_54
# BB#55:                                # %if.else.333
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rdi, %r10
	movq	%rax, %rdi
	movq	%rbp, 240(%rsp)         # 8-byte Spill
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movzbl	-1(%rdi), %ecx
	shll	$8, %ecx
	movzbl	(%rdi), %eax
	leaq	-1(%rdi), %rdi
	movq	%rdi, 184(%rsp)         # 8-byte Spill
	movq	%r10, %rdi
	orl	%ecx, %eax
	movb	%dl, %cl
	movl	%edx, 172(%rsp)         # 4-byte Spill
	shrl	%cl, %eax
	orl	%esi, %eax
	jmp	.LBB11_56
.LBB11_54:                              # %if.then.321
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%rbp, 240(%rsp)         # 8-byte Spill
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movzbl	(%rax), %eax
	movl	%edx, %ecx
	negl	%ecx
	shll	%cl, %eax
	orl	%esi, %eax
	addl	$8, %edx
	movl	%edx, 172(%rsp)         # 4-byte Spill
.LBB11_56:                              # %do.end.353
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	%r13d, %edx
	movq	144(%rsp), %r13         # 8-byte Reload
.LBB11_57:                              # %do.end.353
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	232(%rsp), %rbp         # 8-byte Reload
	movq	%r14, %rcx
	movzbl	%al, %eax
	movl	expand_8x1_to_8x4(,%rax,4), %eax
	shll	$3, %eax
	orl	%eax, %ebx
.LBB11_58:                              # %if.end.359
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpl	$9, %r8d
	movl	$8, %r14d
	cmovll	%r8d, %r14d
	movl	%r8d, %r12d
	subl	%r14d, %r12d
	movl	%r15d, %eax
	cmpl	$4, %r15d
	ja	.LBB11_59
# BB#60:                                # %if.end.359
                                        #   in Loop: Header=BB11_26 Depth=2
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_73:                              # %sw.bb
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpl	$0, 320(%rsp)
	jle	.LBB11_93
# BB#74:                                # %if.then.365
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	8(%r9), %eax
	andl	%ebx, %eax
	notl	%ebx
	andl	(%r9), %ebx
	orl	%eax, %ebx
	testb	$1, %r8b
	je	.LBB11_76
# BB#75:                                # %if.then.377
                                        #   in Loop: Header=BB11_26 Depth=2
	movzbl	(%rbp), %eax
	andl	$15, %eax
	movl	%ebx, %esi
	shll	$4, %esi
	orl	%eax, %esi
	movb	%sil, (%rbp)
	shrl	$4, %ebx
	decl	%r14d
.LBB11_76:                              # %for.cond.387.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	%r14d, %r13d
	addl	$-2, %r13d
	js	.LBB11_77
# BB#78:                                # %for.body.391.lr.ph
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	%rbp, %rdi
	movl	%edx, 232(%rsp)         # 4-byte Spill
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	%r13d, %eax
	shrl	%eax
	leal	(%rax,%rax), %r8d
	negl	%r8d
	movl	%eax, %esi
	incl	%esi
	testb	$7, %sil
	je	.LBB11_79
# BB#80:                                # %for.body.391.prol.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	%r14d, %r11d
	addl	$-2, %r11d
	shrl	%r11d
	incl	%r11d
	andl	$7, %r11d
	negl	%r11d
	movl	%r13d, %ebp
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB11_81:                              # %for.body.391.prol
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%bl, -1(%rsi)
	decq	%rsi
	shrl	$8, %ebx
	addl	$-2, %ebp
	incl	%r11d
	jne	.LBB11_81
	jmp	.LBB11_82
.LBB11_61:                              # %for.cond.522.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	testl	%r14d, %r14d
	jle	.LBB11_59
# BB#62:                                # %for.body.526.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	notl	%r8d
	cmpl	$-10, %r8d
	movl	$-9, %eax
	cmovlel	%eax, %r8d
	negl	%r8d
	movq	248(%rsp), %r11         # 8-byte Reload
	movq	%rcx, %r14
	.align	16, 0x90
.LBB11_63:                              # %for.body.526
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %eax
	andl	$15, %eax
	movb	(%r9,%rax,8), %al
	movb	%al, -1(%rbp)
	decq	%rbp
	shrl	$4, %ebx
	decl	%r8d
	cmpl	$1, %r8d
	jg	.LBB11_63
	jmp	.LBB11_88
.LBB11_64:                              # %for.cond.502.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	testl	%r14d, %r14d
	jle	.LBB11_59
# BB#65:                                # %for.body.506.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	notl	%r8d
	cmpl	$-10, %r8d
	movl	$-9, %eax
	cmovlel	%eax, %r8d
	negl	%r8d
	movq	248(%rsp), %r11         # 8-byte Reload
	movq	%rcx, %r14
	.align	16, 0x90
.LBB11_66:                              # %for.body.506
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %eax
	andl	$15, %eax
	movq	(%r9,%rax,8), %rax
	movb	%al, -1(%rbp)
	movb	%ah, -2(%rbp)  # NOREX
	leaq	-2(%rbp), %rbp
	shrl	$4, %ebx
	decl	%r8d
	cmpl	$1, %r8d
	jg	.LBB11_66
	jmp	.LBB11_88
.LBB11_67:                              # %for.cond.479.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	testl	%r14d, %r14d
	jle	.LBB11_59
# BB#68:                                # %for.body.483.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	notl	%r8d
	cmpl	$-10, %r8d
	movl	$-9, %eax
	cmovlel	%eax, %r8d
	negl	%r8d
	movq	248(%rsp), %r11         # 8-byte Reload
	movq	%rcx, %r14
	.align	16, 0x90
.LBB11_69:                              # %for.body.483
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %eax
	andl	$15, %eax
	movq	(%r9,%rax,8), %rax
	movb	%al, -1(%rbp)
	movb	%ah, -2(%rbp)  # NOREX
	shrl	$16, %eax
	movb	%al, -3(%rbp)
	leaq	-3(%rbp), %rbp
	shrl	$4, %ebx
	decl	%r8d
	cmpl	$1, %r8d
	jg	.LBB11_69
	jmp	.LBB11_88
.LBB11_70:                              # %for.cond.454.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	testl	%r14d, %r14d
	jle	.LBB11_59
# BB#71:                                # %for.body.458.preheader
                                        #   in Loop: Header=BB11_26 Depth=2
	notl	%r8d
	cmpl	$-10, %r8d
	movl	$-9, %eax
	cmovlel	%eax, %r8d
	negl	%r8d
	movq	248(%rsp), %r11         # 8-byte Reload
	movq	%rcx, %r14
	.align	16, 0x90
.LBB11_72:                              # %for.body.458
                                        #   Parent Loop BB11_25 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %eax
	andl	$15, %eax
	movq	(%r9,%rax,8), %rax
	movb	%al, -1(%rbp)
	movb	%ah, -2(%rbp)  # NOREX
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, -3(%rbp)
	shrl	$24, %eax
	movb	%al, -4(%rbp)
	leaq	-4(%rbp), %rbp
	shrl	$4, %ebx
	decl	%r8d
	cmpl	$1, %r8d
	jg	.LBB11_72
	jmp	.LBB11_88
	.align	16, 0x90
.LBB11_59:                              #   in Loop: Header=BB11_26 Depth=2
	movq	248(%rsp), %r11         # 8-byte Reload
	movq	%rcx, %r14
.LBB11_88:                              # %for.cond.28.backedge
                                        #   in Loop: Header=BB11_26 Depth=2
	testl	%r12d, %r12d
	jg	.LBB11_26
.LBB11_89:                              # %for.end.535
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%r11, %r10
	movq	%rdi, %r11
	movq	64(%rsp), %r12          # 8-byte Reload
	testl	%r12d, %r12d
	movq	216(%rsp), %rdi         # 8-byte Reload
	movq	240(%rsp), %r15         # 8-byte Reload
	movl	60(%rsp), %ebx          # 4-byte Reload
	je	.LBB11_157
# BB#90:                                # %if.end.539
                                        #   in Loop: Header=BB11_25 Depth=1
	cmpq	$0, 208(%rsp)           # 8-byte Folded Reload
	je	.LBB11_91
# BB#106:                               # %do.body.543
                                        #   in Loop: Header=BB11_25 Depth=1
	cmpq	-24(%rsp), %r14         # 8-byte Folded Reload
	movq	160(%rsp), %r8          # 8-byte Reload
	jbe	.LBB11_108
# BB#107:                               # %if.then.549
                                        #   in Loop: Header=BB11_25 Depth=1
	addq	-96(%rsp), %r14         # 8-byte Folded Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	136(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB11_117
	.align	16, 0x90
.LBB11_91:                              #   in Loop: Header=BB11_25 Depth=1
	movq	136(%rsp), %rbp         # 8-byte Reload
	movq	160(%rsp), %r8          # 8-byte Reload
	jmp	.LBB11_118
	.align	16, 0x90
.LBB11_108:                             # %if.else.555
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	%edx, %edi
	movq	368(%rsp), %rax
	movq	(%rax), %rax
	movl	16(%rax), %ecx
	decl	%ecx
	imull	-52(%rsp), %ecx         # 4-byte Folded Reload
	addq	%rcx, %r14
	movl	-64(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	movl	-16(%rsp), %edx         # 4-byte Reload
	je	.LBB11_109
# BB#110:                               # %if.then.i.229
                                        #   in Loop: Header=BB11_25 Depth=1
	addl	%ecx, %edx
	cmpl	$8, %edx
	jl	.LBB11_111
# BB#112:                               # %if.then.2.i.234
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%r8, %rsi
	movl	%edx, %ecx
	sarl	$3, %ecx
	movq	24(%rsp), %r8           # 8-byte Reload
	subl	%ecx, %r8d
	movq	136(%rsp), %rbp         # 8-byte Reload
	js	.LBB11_113
# BB#114:                               # %if.else.i.246
                                        #   in Loop: Header=BB11_25 Depth=1
	andl	$7, %edx
	movl	%edx, -16(%rsp)         # 4-byte Spill
	movq	%r8, %rax
	jmp	.LBB11_115
.LBB11_111:                             #   in Loop: Header=BB11_25 Depth=1
	movl	%edx, -16(%rsp)         # 4-byte Spill
.LBB11_109:                             #   in Loop: Header=BB11_25 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	136(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB11_116
.LBB11_113:                             # %if.then.6.i.244
                                        #   in Loop: Header=BB11_25 Depth=1
	andl	$7, %edx
	movl	$8, %ecx
	subl	%edx, %ecx
	leal	(%rcx,%r8,8), %ecx
	addl	12(%rax), %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	andl	$7, %ecx
	movl	$8, %edx
	subl	%ecx, %edx
	movl	%edx, -16(%rsp)         # 4-byte Spill
.LBB11_115:                             # %if.end.558
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rsi, %r8
.LBB11_116:                             # %if.end.558
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	%edi, %edx
.LBB11_117:                             # %if.end.558
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cltq
	leaq	(%rax,%r14), %rdi
	movl	-16(%rsp), %eax         # 4-byte Reload
	movl	%eax, 180(%rsp)         # 4-byte Spill
.LBB11_118:                             # %if.end.571
                                        #   in Loop: Header=BB11_25 Depth=1
	cmpq	$0, 200(%rsp)           # 8-byte Folded Reload
	je	.LBB11_130
# BB#119:                               # %do.body.575
                                        #   in Loop: Header=BB11_25 Depth=1
	cmpq	-32(%rsp), %r8          # 8-byte Folded Reload
	jbe	.LBB11_121
# BB#120:                               # %if.then.582
                                        #   in Loop: Header=BB11_25 Depth=1
	addq	-104(%rsp), %r8         # 8-byte Folded Reload
	movq	16(%rsp), %rax          # 8-byte Reload
	jmp	.LBB11_129
	.align	16, 0x90
.LBB11_121:                             # %if.else.590
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	368(%rsp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %ecx
	decl	%ecx
	imull	-56(%rsp), %ecx         # 4-byte Folded Reload
	addq	%rcx, %r8
	movl	-68(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB11_122
# BB#123:                               # %if.then.i.198
                                        #   in Loop: Header=BB11_25 Depth=1
	addl	%ecx, %ebx
	cmpl	$8, %ebx
	jl	.LBB11_124
# BB#125:                               # %if.then.2.i.203
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%r8, %rsi
	movl	%ebx, %ecx
	sarl	$3, %ecx
	movq	16(%rsp), %r8           # 8-byte Reload
	andl	$7, %ebx
	subl	%ecx, %r8d
	js	.LBB11_126
# BB#127:                               # %if.else.i.215
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%r8, %rax
	jmp	.LBB11_128
.LBB11_122:                             #   in Loop: Header=BB11_25 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	jmp	.LBB11_129
.LBB11_124:                             #   in Loop: Header=BB11_25 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	jmp	.LBB11_129
.LBB11_126:                             # %if.then.6.i.213
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	$8, %ecx
	subl	%ebx, %ecx
	leal	(%rcx,%r8,8), %ecx
	addl	12(%rax), %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	andl	$7, %ecx
	movl	$8, %ebx
	subl	%ecx, %ebx
.LBB11_128:                             # %if.end.593
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rsi, %r8
	.align	16, 0x90
.LBB11_129:                             # %if.end.593
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rax, 16(%rsp)          # 8-byte Spill
	cltq
	leaq	(%rax,%r8), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movl	%ebx, 176(%rsp)         # 4-byte Spill
.LBB11_130:                             # %if.end.608
                                        #   in Loop: Header=BB11_25 Depth=1
	cmpq	$0, 192(%rsp)           # 8-byte Folded Reload
	je	.LBB11_142
# BB#131:                               # %do.body.612
                                        #   in Loop: Header=BB11_25 Depth=1
	cmpq	-40(%rsp), %r11         # 8-byte Folded Reload
	jbe	.LBB11_133
# BB#132:                               # %if.then.619
                                        #   in Loop: Header=BB11_25 Depth=1
	addq	-112(%rsp), %r11        # 8-byte Folded Reload
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB11_141
	.align	16, 0x90
.LBB11_133:                             # %if.else.627
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	368(%rsp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	decl	%ecx
	imull	-60(%rsp), %ecx         # 4-byte Folded Reload
	addq	%rcx, %r11
	movl	-72(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	movl	-12(%rsp), %esi         # 4-byte Reload
	je	.LBB11_134
# BB#135:                               # %if.then.i.167
                                        #   in Loop: Header=BB11_25 Depth=1
	addl	%ecx, %esi
	cmpl	$8, %esi
	jl	.LBB11_136
# BB#137:                               # %if.then.2.i.172
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rbp, %r15
	movl	%esi, %ecx
	sarl	$3, %ecx
	movq	8(%rsp), %rbp           # 8-byte Reload
	andl	$7, %esi
	subl	%ecx, %ebp
	js	.LBB11_138
# BB#139:                               # %if.else.i.184
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	%esi, -12(%rsp)         # 4-byte Spill
	movq	%rbp, %rax
	jmp	.LBB11_140
.LBB11_134:                             #   in Loop: Header=BB11_25 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB11_141
.LBB11_136:                             #   in Loop: Header=BB11_25 Depth=1
	movl	%esi, -12(%rsp)         # 4-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB11_141
.LBB11_138:                             # %if.then.6.i.182
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	$8, %ecx
	subl	%esi, %ecx
	leal	(%rcx,%rbp,8), %ecx
	addl	12(%rax), %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	andl	$7, %ecx
	movl	$8, %esi
	subl	%ecx, %esi
	movl	%esi, -12(%rsp)         # 4-byte Spill
.LBB11_140:                             # %if.end.630
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%r15, %rbp
	.align	16, 0x90
.LBB11_141:                             # %if.end.630
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cltq
	leaq	(%rax,%r11), %r15
	movl	-12(%rsp), %edx         # 4-byte Reload
.LBB11_142:                             # %if.end.645
                                        #   in Loop: Header=BB11_25 Depth=1
	testq	%r10, %r10
	je	.LBB11_143
# BB#144:                               # %do.body.649
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	152(%rsp), %rsi         # 8-byte Reload
	cmpq	-48(%rsp), %rsi         # 8-byte Folded Reload
	jbe	.LBB11_146
# BB#145:                               # %if.then.656
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	addq	-120(%rsp), %rsi        # 8-byte Folded Reload
	movq	(%rsp), %rbp            # 8-byte Reload
	jmp	.LBB11_155
	.align	16, 0x90
.LBB11_143:                             #   in Loop: Header=BB11_25 Depth=1
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	movq	%r15, 240(%rsp)         # 8-byte Spill
	movq	%r8, 160(%rsp)          # 8-byte Spill
	movq	%rdi, 216(%rsp)         # 8-byte Spill
	jmp	.LBB11_156
	.align	16, 0x90
.LBB11_146:                             # %if.else.664
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	%edx, 232(%rsp)         # 4-byte Spill
	movq	368(%rsp), %rax
	movq	24(%rax), %rax
	movl	16(%rax), %ecx
	decl	%ecx
	movl	-84(%rsp), %ebp         # 4-byte Reload
	imull	%ebp, %ecx
	addq	%rcx, %rsi
	movq	-80(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movq	-8(%rsp), %rdx          # 8-byte Reload
	je	.LBB11_147
# BB#149:                               # %if.then.i
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	leal	(%rdx,%rcx), %edx
	cmpl	$8, %edx
	jl	.LBB11_150
# BB#151:                               # %if.then.2.i
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	%edx, %ecx
	sarl	$3, %ecx
	movq	(%rsp), %rbp            # 8-byte Reload
	andl	$7, %edx
	subl	%ecx, %ebp
	js	.LBB11_152
# BB#153:                               # %if.else.i
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	jmp	.LBB11_154
.LBB11_147:                             #   in Loop: Header=BB11_25 Depth=1
	movl	%ebx, 60(%rsp)          # 4-byte Spill
	movq	(%rsp), %rbp            # 8-byte Reload
	jmp	.LBB11_154
.LBB11_150:                             #   in Loop: Header=BB11_25 Depth=1
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movq	(%rsp), %rbp            # 8-byte Reload
	jmp	.LBB11_154
.LBB11_152:                             # %if.then.6.i
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	$8, %ecx
	subl	%edx, %ecx
	leal	(%rcx,%rbp,8), %ecx
	addl	12(%rax), %ecx
	movl	%ecx, %ebp
	sarl	$3, %ebp
	andl	$7, %ecx
	movl	$8, %eax
	subl	%ecx, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB11_154:                             # %if.end.667
                                        #   in Loop: Header=BB11_25 Depth=1
	movl	232(%rsp), %edx         # 4-byte Reload
.LBB11_155:                             # %if.end.667
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%r15, 240(%rsp)         # 8-byte Spill
	movq	%r8, 160(%rsp)          # 8-byte Spill
	movq	%rdi, 216(%rsp)         # 8-byte Spill
	movslq	%ebp, %rax
	leaq	(%rax,%rsi), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	%eax, 172(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB11_156
.LBB11_157:                             # %for.end.687
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	set_color_ht_le_4, .Lfunc_end11-set_color_ht_le_4
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_73
	.quad	.LBB11_61
	.quad	.LBB11_64
	.quad	.LBB11_67
	.quad	.LBB11_70

	.text
	.align	16, 0x90
	.type	set_color_ht_gt_4,@function
set_color_ht_gt_4:                      # @set_color_ht_gt_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp109:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp110:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 56
	subq	$4072, %rsp             # imm = 0xFE8
.Ltmp112:
	.cfi_def_cfa_offset 4128
.Ltmp113:
	.cfi_offset %rbx, -56
.Ltmp114:
	.cfi_offset %r12, -48
.Ltmp115:
	.cfi_offset %r13, -40
.Ltmp116:
	.cfi_offset %r14, -32
.Ltmp117:
	.cfi_offset %r15, -24
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%r9, -80(%rsp)          # 8-byte Spill
	movq	%r8, -96(%rsp)          # 8-byte Spill
	movl	%ecx, %r15d
	movl	%esi, -48(%rsp)         # 4-byte Spill
	movq	4152(%rsp), %rbx
	movl	4144(%rsp), %r10d
	movl	4128(%rsp), %ecx
	leal	-1(%r9), %eax
	movl	%eax, %r9d
	imull	%esi, %r9d
	imull	%r8d, %ecx
	movl	%ecx, %ebp
	sarl	$31, %ebp
	shrl	$29, %ebp
	addl	%ecx, %ebp
	sarl	$3, %ebp
	xorl	%r11d, %r11d
	testq	%rbx, %rbx
	movb	$1, -40(%rsp)           # 1-byte Folded Spill
	movq	$-1, %r14
	je	.LBB12_1
	.align	16, 0x90
.LBB12_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	incq	%r14
	btq	%r14, %rbx
	jae	.LBB12_2
# BB#3:                                 # %for.cond.5.preheader
	movq	$-1, %rcx
	.align	16, 0x90
.LBB12_4:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	incq	%rcx
	movq	%rbx, %rsi
	shrq	%cl, %rsi
	cmpq	$1, %rsi
	ja	.LBB12_4
# BB#5:                                 # %do.end
	cmpl	%ecx, %r14d
	setg	%sil
	jle	.LBB12_28
# BB#6:
	movq	%r14, %r11
	jmp	.LBB12_7
.LBB12_1:
	movq	$-1, %rcx
.LBB12_7:                               # %for.cond.28.preheader
	movl	4128(%rsp), %eax
	jmp	.LBB12_8
.LBB12_28:                              # %for.body.16.lr.ph
	movb	%sil, -72(%rsp)         # 1-byte Spill
	movl	%ebp, -64(%rsp)         # 4-byte Spill
	movq	%r9, -56(%rsp)          # 8-byte Spill
	movq	-96(%rsp), %rsi         # 8-byte Reload
	leal	(%rdx,%rsi), %r9d
	addl	%r15d, %eax
	movl	%eax, %r8d
	movslq	%r14d, %r10
	movslq	%ecx, %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	%r10, %rax
	shlq	$6, %rax
	leaq	-32(%rsp,%rax), %rbp
	.align	16, 0x90
.LBB12_29:                              # %for.body.16
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %eax
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %eax
	btq	%rax, %rbx
	jae	.LBB12_33
# BB#30:                                # %if.then.21
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	4184(%rsp), %rax
	movq	(%rax,%r10,8), %r12
	movl	12(%r12), %r13d
	movzwl	38(%r12), %esi
	testl	%esi, %esi
	movl	%esi, (%rbp)
	movl	16(%r12), %r15d
	movl	%r9d, %eax
	je	.LBB12_32
# BB#31:                                # %cond.false.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%r15d
	imull	%esi, %eax
	addl	%r9d, %eax
.LBB12_32:                              # %init_tile_cursor.exit
                                        #   in Loop: Header=BB12_29 Depth=1
	cltd
	idivl	%r13d
	movl	%edx, %r11d
	movl	%r8d, %eax
	cltd
	idivl	%r15d
	movl	%r11d, %r15d
	sarl	$3, %r15d
	movl	%r15d, 4(%rbp)
	andl	$7, %r11d
	movl	$8, %esi
	subl	%r11d, %esi
	movl	%esi, 8(%rbp)
	decl	%r13d
	movl	%r13d, %eax
	sarl	$3, %eax
	movl	%eax, 12(%rbp)
	andl	$7, %r13d
	incl	%r13d
	movl	%r13d, 16(%rbp)
	movq	(%r12), %r11
	movq	%r11, 32(%rbp)
	movl	8(%r12), %eax
	movl	%eax, 40(%rbp)
	imull	%eax, %edx
	movslq	%edx, %rax
	addq	%r11, %rax
	movq	%rax, 24(%rbp)
	movslq	%r15d, %rdx
	addq	%rax, %rdx
	movq	%rdx, 48(%rbp)
	movl	%esi, 56(%rbp)
.LBB12_33:                              # %for.inc
                                        #   in Loop: Header=BB12_29 Depth=1
	addq	$64, %rbp
	cmpq	-40(%rsp), %r10         # 8-byte Folded Reload
	leaq	1(%r10), %r10
	jl	.LBB12_29
# BB#34:
	movb	-72(%rsp), %al          # 1-byte Reload
	movb	%al, -40(%rsp)          # 1-byte Spill
	movq	%r14, %r11
	movl	4128(%rsp), %eax
	movl	4144(%rsp), %r10d
	movq	-56(%rsp), %r9          # 8-byte Reload
	movl	-64(%rsp), %ebp         # 4-byte Reload
.LBB12_8:                               # %for.cond.28.preheader
	addq	%r9, %rdi
	movq	%rdi, %r12
	movslq	%ebp, %rdx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	movq	4176(%rsp), %r15
	sarl	$3, %eax
	movl	%eax, %r13d
	xorl	%eax, %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	testl	%r10d, %r10d
	movq	-80(%rsp), %r14         # 8-byte Reload
	jle	.LBB12_19
# BB#9:                                 # %for.body.30.preheader
	xorl	%esi, %esi
	testb	$1, %r10b
	movl	$0, %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	je	.LBB12_12
# BB#10:                                # %for.body.30.prol
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	testb	$1, %bl
	jne	.LBB12_12
# BB#11:                                # %if.then.35.prol
	movq	(%r15), %rax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movl	$1, %esi
.LBB12_12:                              # %for.body.30.preheader.split
	cmpl	$1, %r10d
	je	.LBB12_19
# BB#13:                                # %for.body.30.preheader.split.split
	movl	%r10d, %r8d
	leal	(%rsi,%rsi), %ebp
	leal	2(%rsi,%rsi), %eax
	.align	16, 0x90
.LBB12_14:                              # %for.body.30
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %edi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %edi
	btq	%rdi, %rbx
	jb	.LBB12_16
# BB#15:                                # %if.then.35
                                        #   in Loop: Header=BB12_14 Depth=1
	movslq	%ebp, %rdi
	movq	-56(%rsp), %rdx         # 8-byte Reload
	orq	(%r15,%rdi,8), %rdx
	movq	%rdx, -56(%rsp)         # 8-byte Spill
.LBB12_16:                              # %for.inc.40
                                        #   in Loop: Header=BB12_14 Depth=1
	leal	1(%rsi), %r9d
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%r9d, %edi
	btq	%rdi, %rbx
	jb	.LBB12_18
# BB#17:                                # %if.then.35.1
                                        #   in Loop: Header=BB12_14 Depth=1
	movslq	%eax, %rdx
	movq	-56(%rsp), %rdi         # 8-byte Reload
	orq	(%r15,%rdx,8), %rdi
	movq	%rdi, -56(%rsp)         # 8-byte Spill
.LBB12_18:                              # %for.inc.40.1
                                        #   in Loop: Header=BB12_14 Depth=1
	addq	$2, %rsi
	addl	$4, %ebp
	addl	$4, %eax
	cmpl	%esi, %r8d
	jne	.LBB12_14
.LBB12_19:                              # %for.cond.43.preheader
	movq	%r12, %rdx
	addq	-64(%rsp), %rdx         # 8-byte Folded Reload
	movl	-48(%rsp), %eax         # 4-byte Reload
	negq	%rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movslq	%r13d, %rax
	movl	%eax, %esi
	movq	%rsi, -72(%rsp)         # 8-byte Spill
	negq	%rax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	movslq	%r11d, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movslq	%ecx, %r11
	shlq	$6, %rax
	leaq	-32(%rsp,%rax), %rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	jmp	.LBB12_20
	.align	16, 0x90
.LBB12_64:                              # %for.inc.180
                                        #   in Loop: Header=BB12_20 Depth=1
	movq	-88(%rsp), %rdx         # 8-byte Reload
	addq	-104(%rsp), %rdx        # 8-byte Folded Reload
.LBB12_20:                              # %for.cond.43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_21 Depth 2
                                        #       Child Loop BB12_22 Depth 3
                                        #         Child Loop BB12_23 Depth 4
                                        #           Child Loop BB12_26 Depth 5
                                        #     Child Loop BB12_52 Depth 2
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	decl	%r14d
	movq	%r14, -80(%rsp)         # 8-byte Spill
	movq	-96(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	movl	%r13d, %edx
	jle	.LBB12_50
.LBB12_21:                              # %for.cond.48.preheader.lr.ph
                                        #   Parent Loop BB12_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_22 Depth 3
                                        #         Child Loop BB12_23 Depth 4
                                        #           Child Loop BB12_26 Depth 5
	movl	%ecx, %r14d
	.align	16, 0x90
.LBB12_22:                              # %for.cond.48.preheader
                                        #   Parent Loop BB12_20 Depth=1
                                        #     Parent Loop BB12_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_23 Depth 4
                                        #           Child Loop BB12_26 Depth 5
	cmpb	$0, -40(%rsp)           # 1-byte Folded Reload
	movq	-48(%rsp), %r10         # 8-byte Reload
	movq	-56(%rsp), %rax         # 8-byte Reload
	jne	.LBB12_39
	.align	16, 0x90
.LBB12_23:                              # %for.body.50
                                        #   Parent Loop BB12_20 Depth=1
                                        #     Parent Loop BB12_21 Depth=2
                                        #       Parent Loop BB12_22 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB12_26 Depth 5
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andl	%r10d, %ecx
	btq	%rcx, %rbx
	jae	.LBB12_38
# BB#24:                                # %if.then.55
                                        #   in Loop: Header=BB12_23 Depth=4
	movq	%r10, %rdi
	shlq	$6, %rdi
	leaq	24(%rsp,%rdi), %rbp
	movl	24(%rsp,%rdi), %ecx
	cmpl	$8, %ecx
	movq	16(%rsp,%rdi), %r13
	jl	.LBB12_36
# BB#25:                                # %if.else.64.lr.ph
                                        #   in Loop: Header=BB12_23 Depth=4
	leaq	16(%rsp,%rdi), %rsi
	movq	-8(%rsp,%rdi), %r12
	leaq	-20(%rsp,%rdi), %r8
	leaq	-16(%rsp,%rdi), %r9
	.align	16, 0x90
.LBB12_26:                              # %if.else.64
                                        #   Parent Loop BB12_20 Depth=1
                                        #     Parent Loop BB12_21 Depth=2
                                        #       Parent Loop BB12_22 Depth=3
                                        #         Parent Loop BB12_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpq	%r12, %r13
	ja	.LBB12_27
# BB#35:                                # %if.else.71
                                        #   in Loop: Header=BB12_26 Depth=5
	movl	(%r8), %ecx
	addq	%rcx, %r13
	movq	%r13, (%rsi)
	movl	(%r9), %edi
	movl	$8, %ecx
	subl	%edi, %ecx
	movl	%ecx, (%rbp)
	testl	%edi, %edi
	jle	.LBB12_26
.LBB12_36:                              # %if.then.59
                                        #   in Loop: Header=BB12_23 Depth=4
	movzbl	(%r13), %esi
	leal	1(%rcx), %edi
	movl	%edi, (%rbp)
	shrl	%cl, %esi
	jmp	.LBB12_37
.LBB12_27:                              # %if.then.68
                                        #   in Loop: Header=BB12_23 Depth=4
	leaq	-1(%r13), %rcx
	movq	%rcx, (%rsi)
	movb	-1(%r13), %sil
	movl	$1, (%rbp)
.LBB12_37:                              # %if.end.78
                                        #   in Loop: Header=BB12_23 Depth=4
	leal	(%r10,%r10), %ecx
	movzbl	%sil, %esi
	andl	$1, %esi
	orl	%ecx, %esi
	movslq	%esi, %rcx
	orq	(%r15,%rcx,8), %rax
.LBB12_38:                              # %for.inc.87
                                        #   in Loop: Header=BB12_23 Depth=4
	cmpq	%r11, %r10
	leaq	1(%r10), %r10
	jl	.LBB12_23
.LBB12_39:                              # %for.end.89
                                        #   in Loop: Header=BB12_22 Depth=3
	leal	-1(%r14), %ecx
	cmpl	$4, %edx
	ja	.LBB12_44
# BB#40:                                # %for.end.89
                                        #   in Loop: Header=BB12_22 Depth=3
	movq	-72(%rsp), %rsi         # 8-byte Reload
	jmpq	*.LJTI12_0(,%rsi,8)
.LBB12_41:                              # %sw.bb
                                        #   in Loop: Header=BB12_22 Depth=3
	movl	%edx, %esi
	testb	$1, %cl
	jne	.LBB12_42
# BB#43:                                # %if.else.96
                                        #   in Loop: Header=BB12_22 Depth=3
	movq	-64(%rsp), %rdi         # 8-byte Reload
	movb	(%rdi), %dl
	andb	$15, %dl
	shlb	$4, %al
	orb	%dl, %al
	movb	%al, (%rdi)
	movl	%esi, %edx
	.align	16, 0x90
.LBB12_44:                              # %for.cond.45.backedge
                                        #   in Loop: Header=BB12_22 Depth=3
	cmpl	$1, %r14d
	movl	%ecx, %r14d
	jg	.LBB12_22
	jmp	.LBB12_50
.LBB12_42:                              # %if.then.93
                                        #   in Loop: Header=BB12_21 Depth=2
	movq	-64(%rsp), %rdx         # 8-byte Reload
	movb	%al, -1(%rdx)
	decq	%rdx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	movl	%esi, %edx
	jmp	.LBB12_49
.LBB12_45:                              # %sw.bb.104
                                        #   in Loop: Header=BB12_21 Depth=2
	movl	%edx, %esi
	movq	%rax, %rdx
	shrq	$24, %rdx
	movq	-64(%rsp), %rdi         # 8-byte Reload
	movb	%dl, -4(%rdi)
	movl	%esi, %edx
.LBB12_46:                              # %sw.bb.108
                                        #   in Loop: Header=BB12_21 Depth=2
	movl	%edx, %esi
	movq	%rax, %rdx
	shrq	$16, %rdx
	movq	-64(%rsp), %rdi         # 8-byte Reload
	movb	%dl, -3(%rdi)
	movl	%esi, %edx
.LBB12_47:                              # %sw.bb.112
                                        #   in Loop: Header=BB12_21 Depth=2
	movq	-64(%rsp), %rsi         # 8-byte Reload
	movb	%ah, -2(%rsi)  # NOREX
.LBB12_48:                              # %sw.bb.116
                                        #   in Loop: Header=BB12_21 Depth=2
	movq	-64(%rsp), %rsi         # 8-byte Reload
	movb	%al, -1(%rsi)
	addq	-120(%rsp), %rsi        # 8-byte Folded Reload
	movq	%rsi, -64(%rsp)         # 8-byte Spill
.LBB12_49:                              # %for.cond.45.outer.backedge
                                        #   in Loop: Header=BB12_21 Depth=2
	cmpl	$1, %r14d
	jg	.LBB12_21
	.align	16, 0x90
.LBB12_50:                              # %for.end.121
                                        #   in Loop: Header=BB12_20 Depth=1
	movq	-80(%rsp), %r14         # 8-byte Reload
	testl	%r14d, %r14d
	je	.LBB12_65
# BB#51:                                # %for.cond.126.preheader
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	%edx, %r13d
	cmpb	$0, -40(%rsp)           # 1-byte Folded Reload
	movq	-112(%rsp), %rax        # 8-byte Reload
	movq	-48(%rsp), %rcx         # 8-byte Reload
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	jne	.LBB12_64
	.align	16, 0x90
.LBB12_52:                              # %for.body.129
                                        #   Parent Loop BB12_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	andl	%esi, %edx
	btq	%rdx, %rbx
	jae	.LBB12_63
# BB#53:                                # %do.body.135
                                        #   in Loop: Header=BB12_52 Depth=2
	movq	24(%rax), %rdi
	cmpq	32(%rax), %rdi
	jbe	.LBB12_55
# BB#54:                                # %if.then.143
                                        #   in Loop: Header=BB12_52 Depth=2
	movl	40(%rax), %ebp
	movq	%rdi, %rdx
	subq	%rbp, %rdx
	negq	%rbp
	movq	%rdx, 24(%rax)
	jmp	.LBB12_62
	.align	16, 0x90
.LBB12_55:                              # %if.else.152
                                        #   in Loop: Header=BB12_52 Depth=2
	movq	4184(%rsp), %rdx
	movq	(%rdx,%rcx,8), %r10
	movl	16(%r10), %ebp
	decl	%ebp
	imull	40(%rax), %ebp
	leaq	(%rdi,%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	(%rax), %esi
	testl	%esi, %esi
	je	.LBB12_61
# BB#56:                                # %if.then.i
                                        #   in Loop: Header=BB12_52 Depth=2
	addl	8(%rax), %esi
	movl	%esi, 8(%rax)
	cmpl	$8, %esi
	jl	.LBB12_61
# BB#57:                                # %if.then.2.i
                                        #   in Loop: Header=BB12_52 Depth=2
	movl	%esi, %edx
	sarl	$3, %edx
	movl	4(%rax), %r8d
	subl	%edx, %r8d
	movl	%r8d, 4(%rax)
	js	.LBB12_58
# BB#59:                                # %if.else.i
                                        #   in Loop: Header=BB12_52 Depth=2
	andl	$7, %esi
	jmp	.LBB12_60
.LBB12_58:                              # %if.then.6.i
                                        #   in Loop: Header=BB12_52 Depth=2
	andl	$7, %esi
	movl	$8, %edx
	subl	%esi, %edx
	leal	(%rdx,%r8,8), %edx
	addl	12(%r10), %edx
	movl	%edx, %esi
	sarl	$3, %esi
	movl	%esi, 4(%rax)
	andl	$7, %edx
	movl	$8, %esi
	subl	%edx, %esi
.LBB12_60:                              # %if.end.157
                                        #   in Loop: Header=BB12_52 Depth=2
	movl	%esi, 8(%rax)
.LBB12_61:                              # %if.end.157
                                        #   in Loop: Header=BB12_52 Depth=2
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
.LBB12_62:                              # %if.end.157
                                        #   in Loop: Header=BB12_52 Depth=2
	addq	%rbp, %rdi
	movslq	4(%rax), %rdx
	addq	%rdi, %rdx
	movq	%rdx, 48(%rax)
	movl	8(%rax), %edx
	movl	%edx, 56(%rax)
.LBB12_63:                              # %for.inc.176
                                        #   in Loop: Header=BB12_52 Depth=2
	addq	$64, %rax
	cmpq	%r11, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB12_52
	jmp	.LBB12_64
.LBB12_65:                              # %for.end.184
	addq	$4072, %rsp             # imm = 0xFE8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	set_color_ht_gt_4, .Lfunc_end12-set_color_ht_gt_4
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_41
	.quad	.LBB12_48
	.quad	.LBB12_47
	.quad	.LBB12_46
	.quad	.LBB12_45

	.type	st_dc_ht_colored,@object # @st_dc_ht_colored
	.align	8
st_dc_ht_colored:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	dc_ht_colored_reloc_ptrs
	.size	st_dc_ht_colored, 64

	.type	gx_dc_type_data_ht_colored,@object # @gx_dc_type_data_ht_colored
	.globl	gx_dc_type_data_ht_colored
	.align	8
gx_dc_type_data_ht_colored:
	.quad	st_dc_ht_colored
	.quad	gx_dc_ht_colored_save_dc
	.quad	gx_dc_ht_colored_get_dev_halftone
	.quad	gx_dc_ht_get_phase
	.quad	gx_dc_ht_colored_load
	.quad	gx_dc_ht_colored_fill_rectangle
	.quad	gx_dc_default_fill_masked
	.quad	gx_dc_ht_colored_equal
	.quad	gx_dc_ht_colored_write
	.quad	gx_dc_ht_colored_read
	.quad	gx_dc_ht_colored_get_nonzero_comps
	.size	gx_dc_type_data_ht_colored, 88

	.type	gx_dc_type_ht_colored,@object # @gx_dc_type_ht_colored
	.globl	gx_dc_type_ht_colored
	.align	8
gx_dc_type_ht_colored:
	.quad	gx_dc_type_data_ht_colored
	.size	gx_dc_type_ht_colored, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dc_ht_colored"
	.size	.L.str, 14

	.type	dc_ht_colored_reloc_ptrs,@object # @dc_ht_colored_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
dc_ht_colored_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	dc_ht_colored_enum_ptrs
	.size	dc_ht_colored_reloc_ptrs, 24

	.type	dc_ht_colored_enum_ptrs,@object # @dc_ht_colored_enum_ptrs
	.align	2
dc_ht_colored_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	dc_ht_colored_enum_ptrs, 4

	.type	ht_no_bitmap,@object    # @ht_no_bitmap
	.align	8
ht_no_bitmap:
	.quad	ht_no_bitmap_data+8
	.long	8                       # 0x8
	.long	64                      # 0x40
	.long	8                       # 0x8
	.zero	4
	.quad	0                       # 0x0
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	0                       # 0x0
	.short	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	ht_no_bitmap, 48

	.type	ht_no_bitmap_data,@object # @ht_no_bitmap_data
	.align	8
ht_no_bitmap_data:
	.zero	72
	.size	ht_no_bitmap_data, 72

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\000\b\004\f\002\n\006\016\001\t\005\r\003\013\007\017"
	.size	.L.str.1, 17

	.type	expand_8x1_to_8x4,@object # @expand_8x1_to_8x4
	.align	16
expand_8x1_to_8x4:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	272                     # 0x110
	.long	273                     # 0x111
	.long	4096                    # 0x1000
	.long	4097                    # 0x1001
	.long	4112                    # 0x1010
	.long	4113                    # 0x1011
	.long	4352                    # 0x1100
	.long	4353                    # 0x1101
	.long	4368                    # 0x1110
	.long	4369                    # 0x1111
	.long	65536                   # 0x10000
	.long	65537                   # 0x10001
	.long	65552                   # 0x10010
	.long	65553                   # 0x10011
	.long	65792                   # 0x10100
	.long	65793                   # 0x10101
	.long	65808                   # 0x10110
	.long	65809                   # 0x10111
	.long	69632                   # 0x11000
	.long	69633                   # 0x11001
	.long	69648                   # 0x11010
	.long	69649                   # 0x11011
	.long	69888                   # 0x11100
	.long	69889                   # 0x11101
	.long	69904                   # 0x11110
	.long	69905                   # 0x11111
	.long	1048576                 # 0x100000
	.long	1048577                 # 0x100001
	.long	1048592                 # 0x100010
	.long	1048593                 # 0x100011
	.long	1048832                 # 0x100100
	.long	1048833                 # 0x100101
	.long	1048848                 # 0x100110
	.long	1048849                 # 0x100111
	.long	1052672                 # 0x101000
	.long	1052673                 # 0x101001
	.long	1052688                 # 0x101010
	.long	1052689                 # 0x101011
	.long	1052928                 # 0x101100
	.long	1052929                 # 0x101101
	.long	1052944                 # 0x101110
	.long	1052945                 # 0x101111
	.long	1114112                 # 0x110000
	.long	1114113                 # 0x110001
	.long	1114128                 # 0x110010
	.long	1114129                 # 0x110011
	.long	1114368                 # 0x110100
	.long	1114369                 # 0x110101
	.long	1114384                 # 0x110110
	.long	1114385                 # 0x110111
	.long	1118208                 # 0x111000
	.long	1118209                 # 0x111001
	.long	1118224                 # 0x111010
	.long	1118225                 # 0x111011
	.long	1118464                 # 0x111100
	.long	1118465                 # 0x111101
	.long	1118480                 # 0x111110
	.long	1118481                 # 0x111111
	.long	16777216                # 0x1000000
	.long	16777217                # 0x1000001
	.long	16777232                # 0x1000010
	.long	16777233                # 0x1000011
	.long	16777472                # 0x1000100
	.long	16777473                # 0x1000101
	.long	16777488                # 0x1000110
	.long	16777489                # 0x1000111
	.long	16781312                # 0x1001000
	.long	16781313                # 0x1001001
	.long	16781328                # 0x1001010
	.long	16781329                # 0x1001011
	.long	16781568                # 0x1001100
	.long	16781569                # 0x1001101
	.long	16781584                # 0x1001110
	.long	16781585                # 0x1001111
	.long	16842752                # 0x1010000
	.long	16842753                # 0x1010001
	.long	16842768                # 0x1010010
	.long	16842769                # 0x1010011
	.long	16843008                # 0x1010100
	.long	16843009                # 0x1010101
	.long	16843024                # 0x1010110
	.long	16843025                # 0x1010111
	.long	16846848                # 0x1011000
	.long	16846849                # 0x1011001
	.long	16846864                # 0x1011010
	.long	16846865                # 0x1011011
	.long	16847104                # 0x1011100
	.long	16847105                # 0x1011101
	.long	16847120                # 0x1011110
	.long	16847121                # 0x1011111
	.long	17825792                # 0x1100000
	.long	17825793                # 0x1100001
	.long	17825808                # 0x1100010
	.long	17825809                # 0x1100011
	.long	17826048                # 0x1100100
	.long	17826049                # 0x1100101
	.long	17826064                # 0x1100110
	.long	17826065                # 0x1100111
	.long	17829888                # 0x1101000
	.long	17829889                # 0x1101001
	.long	17829904                # 0x1101010
	.long	17829905                # 0x1101011
	.long	17830144                # 0x1101100
	.long	17830145                # 0x1101101
	.long	17830160                # 0x1101110
	.long	17830161                # 0x1101111
	.long	17891328                # 0x1110000
	.long	17891329                # 0x1110001
	.long	17891344                # 0x1110010
	.long	17891345                # 0x1110011
	.long	17891584                # 0x1110100
	.long	17891585                # 0x1110101
	.long	17891600                # 0x1110110
	.long	17891601                # 0x1110111
	.long	17895424                # 0x1111000
	.long	17895425                # 0x1111001
	.long	17895440                # 0x1111010
	.long	17895441                # 0x1111011
	.long	17895680                # 0x1111100
	.long	17895681                # 0x1111101
	.long	17895696                # 0x1111110
	.long	17895697                # 0x1111111
	.long	268435456               # 0x10000000
	.long	268435457               # 0x10000001
	.long	268435472               # 0x10000010
	.long	268435473               # 0x10000011
	.long	268435712               # 0x10000100
	.long	268435713               # 0x10000101
	.long	268435728               # 0x10000110
	.long	268435729               # 0x10000111
	.long	268439552               # 0x10001000
	.long	268439553               # 0x10001001
	.long	268439568               # 0x10001010
	.long	268439569               # 0x10001011
	.long	268439808               # 0x10001100
	.long	268439809               # 0x10001101
	.long	268439824               # 0x10001110
	.long	268439825               # 0x10001111
	.long	268500992               # 0x10010000
	.long	268500993               # 0x10010001
	.long	268501008               # 0x10010010
	.long	268501009               # 0x10010011
	.long	268501248               # 0x10010100
	.long	268501249               # 0x10010101
	.long	268501264               # 0x10010110
	.long	268501265               # 0x10010111
	.long	268505088               # 0x10011000
	.long	268505089               # 0x10011001
	.long	268505104               # 0x10011010
	.long	268505105               # 0x10011011
	.long	268505344               # 0x10011100
	.long	268505345               # 0x10011101
	.long	268505360               # 0x10011110
	.long	268505361               # 0x10011111
	.long	269484032               # 0x10100000
	.long	269484033               # 0x10100001
	.long	269484048               # 0x10100010
	.long	269484049               # 0x10100011
	.long	269484288               # 0x10100100
	.long	269484289               # 0x10100101
	.long	269484304               # 0x10100110
	.long	269484305               # 0x10100111
	.long	269488128               # 0x10101000
	.long	269488129               # 0x10101001
	.long	269488144               # 0x10101010
	.long	269488145               # 0x10101011
	.long	269488384               # 0x10101100
	.long	269488385               # 0x10101101
	.long	269488400               # 0x10101110
	.long	269488401               # 0x10101111
	.long	269549568               # 0x10110000
	.long	269549569               # 0x10110001
	.long	269549584               # 0x10110010
	.long	269549585               # 0x10110011
	.long	269549824               # 0x10110100
	.long	269549825               # 0x10110101
	.long	269549840               # 0x10110110
	.long	269549841               # 0x10110111
	.long	269553664               # 0x10111000
	.long	269553665               # 0x10111001
	.long	269553680               # 0x10111010
	.long	269553681               # 0x10111011
	.long	269553920               # 0x10111100
	.long	269553921               # 0x10111101
	.long	269553936               # 0x10111110
	.long	269553937               # 0x10111111
	.long	285212672               # 0x11000000
	.long	285212673               # 0x11000001
	.long	285212688               # 0x11000010
	.long	285212689               # 0x11000011
	.long	285212928               # 0x11000100
	.long	285212929               # 0x11000101
	.long	285212944               # 0x11000110
	.long	285212945               # 0x11000111
	.long	285216768               # 0x11001000
	.long	285216769               # 0x11001001
	.long	285216784               # 0x11001010
	.long	285216785               # 0x11001011
	.long	285217024               # 0x11001100
	.long	285217025               # 0x11001101
	.long	285217040               # 0x11001110
	.long	285217041               # 0x11001111
	.long	285278208               # 0x11010000
	.long	285278209               # 0x11010001
	.long	285278224               # 0x11010010
	.long	285278225               # 0x11010011
	.long	285278464               # 0x11010100
	.long	285278465               # 0x11010101
	.long	285278480               # 0x11010110
	.long	285278481               # 0x11010111
	.long	285282304               # 0x11011000
	.long	285282305               # 0x11011001
	.long	285282320               # 0x11011010
	.long	285282321               # 0x11011011
	.long	285282560               # 0x11011100
	.long	285282561               # 0x11011101
	.long	285282576               # 0x11011110
	.long	285282577               # 0x11011111
	.long	286261248               # 0x11100000
	.long	286261249               # 0x11100001
	.long	286261264               # 0x11100010
	.long	286261265               # 0x11100011
	.long	286261504               # 0x11100100
	.long	286261505               # 0x11100101
	.long	286261520               # 0x11100110
	.long	286261521               # 0x11100111
	.long	286265344               # 0x11101000
	.long	286265345               # 0x11101001
	.long	286265360               # 0x11101010
	.long	286265361               # 0x11101011
	.long	286265600               # 0x11101100
	.long	286265601               # 0x11101101
	.long	286265616               # 0x11101110
	.long	286265617               # 0x11101111
	.long	286326784               # 0x11110000
	.long	286326785               # 0x11110001
	.long	286326800               # 0x11110010
	.long	286326801               # 0x11110011
	.long	286327040               # 0x11110100
	.long	286327041               # 0x11110101
	.long	286327056               # 0x11110110
	.long	286327057               # 0x11110111
	.long	286330880               # 0x11111000
	.long	286330881               # 0x11111001
	.long	286330896               # 0x11111010
	.long	286330897               # 0x11111011
	.long	286331136               # 0x11111100
	.long	286331137               # 0x11111101
	.long	286331152               # 0x11111110
	.long	286331153               # 0x11111111
	.size	expand_8x1_to_8x4, 1024


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
