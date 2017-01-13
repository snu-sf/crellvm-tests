	.text
	.file	"gdevpccm.bc"
	.globl	pc_4bit_map_rgb_color
	.align	16, 0x90
	.type	pc_4bit_map_rgb_color,@function
pc_4bit_map_rgb_color:                  # @pc_4bit_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	shrl	$15, %eax
	movzwl	2(%rsi), %ecx
	shrl	$15, %ecx
	movzwl	4(%rsi), %edx
	shrl	$15, %edx
	shlq	$2, %rax
	addq	%rcx, %rcx
	orq	%rax, %rcx
	movq	%rcx, %rsi
	orq	%rdx, %rsi
	orq	$8, %rsi
	xorl	%eax, %eax
	orq	%rdx, %rcx
	cmovneq	%rsi, %rax
	retq
.Lfunc_end0:
	.size	pc_4bit_map_rgb_color, .Lfunc_end0-pc_4bit_map_rgb_color
	.cfi_endproc

	.globl	pc_4bit_map_color_rgb
	.align	16, 0x90
	.type	pc_4bit_map_color_rgb,@function
pc_4bit_map_color_rgb:                  # @pc_4bit_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	shll	$29, %eax
	sarl	$31, %eax
	movw	%ax, (%rdx)
	movl	%esi, %eax
	shll	$30, %eax
	sarl	$31, %eax
	movw	%ax, 2(%rdx)
	shll	$31, %esi
	sarl	$31, %esi
	movw	%si, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	pc_4bit_map_color_rgb, .Lfunc_end1-pc_4bit_map_color_rgb
	.cfi_endproc

	.globl	pc_8bit_map_rgb_color
	.align	16, 0x90
	.type	pc_8bit_map_rgb_color,@function
pc_8bit_map_rgb_color:                  # @pc_8bit_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$49151, %eax, %eax      # imm = 0xBFFF
	shrl	$29, %eax
	movzwl	2(%rsi), %ecx
	imull	$49151, %ecx, %ecx      # imm = 0xBFFF
	shrl	$29, %ecx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,2), %rax
	leaq	(%rax,%rax,2), %rax
	movzwl	4(%rsi), %ecx
	imull	$49151, %ecx, %ecx      # imm = 0xBFFF
	shrl	$29, %ecx
	leaq	(%rcx,%rax,2), %rax
	retq
.Lfunc_end2:
	.size	pc_8bit_map_rgb_color, .Lfunc_end2-pc_8bit_map_rgb_color
	.cfi_endproc

	.globl	pc_8bit_map_color_rgb
	.align	16, 0x90
	.type	pc_8bit_map_color_rgb,@function
pc_8bit_map_color_rgb:                  # @pc_8bit_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$216, %esi
	jb	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, (%rdx)
	xorl	%eax, %eax
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movl	%esi, %eax
	imulq	$954437177, %rax, %rcx  # imm = 0x38E38E39
	shrq	$35, %rcx
	movw	pc_8bit_map_color_rgb.ramp6(%rcx,%rcx), %cx
	movw	%cx, (%rdx)
	movl	$2863311531, %r8d       # imm = 0xAAAAAAAB
	imulq	%r8, %rax
	shrq	$34, %rax
	movl	%eax, %edi
	leal	(%rax,%rax), %ecx
	imulq	%r8, %rax
	shrq	$34, %rax
	addl	%eax, %eax
	leal	(%rax,%rax,2), %eax
	subl	%eax, %edi
	movw	pc_8bit_map_color_rgb.ramp6(%rdi,%rdi), %ax
	movw	%ax, 2(%rdx)
	leal	(%rcx,%rcx,2), %eax
	subl	%eax, %esi
	movzwl	pc_8bit_map_color_rgb.ramp6(%rsi,%rsi), %eax
.LBB3_3:                                # %if.end
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	pc_8bit_map_color_rgb, .Lfunc_end3-pc_8bit_map_color_rgb
	.cfi_endproc

	.globl	pc_write_palette
	.align	16, 0x90
	.type	pc_write_palette,@function
pc_write_palette:                       # @pc_write_palette
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 64
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r13, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rdi, %r14
	testl	%esi, %esi
	je	.LBB4_3
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %r13d
	xorl	%ebx, %ebx
	leaq	10(%rsp), %r12
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*1192(%r14)
	movzbl	11(%rsp), %edi
	movq	%r15, %rsi
	callq	fputc
	movzbl	13(%rsp), %edi
	movq	%r15, %rsi
	callq	fputc
	movzbl	15(%rsp), %edi
	movq	%r15, %rsi
	callq	fputc
	incq	%rbx
	cmpl	%ebx, %r13d
	jne	.LBB4_2
.LBB4_3:                                # %for.end.11
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	pc_write_palette, .Lfunc_end4-pc_write_palette
	.cfi_endproc

	.type	pc_8bit_map_color_rgb.ramp6,@object # @pc_8bit_map_color_rgb.ramp6
	.section	.rodata,"a",@progbits
	.align	2
pc_8bit_map_color_rgb.ramp6:
	.short	0                       # 0x0
	.short	13107                   # 0x3333
	.short	26214                   # 0x6666
	.short	39321                   # 0x9999
	.short	52428                   # 0xcccc
	.short	65535                   # 0xffff
	.size	pc_8bit_map_color_rgb.ramp6, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
