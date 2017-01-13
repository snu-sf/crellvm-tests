	.text
	.file	"gdevm16.bc"
	.align	16, 0x90
	.type	mem_true16_map_rgb_color,@function
mem_true16_map_rgb_color:               # @mem_true16_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	andl	$63488, %eax            # imm = 0xF800
	movzwl	2(%rsi), %ecx
	shrl	$5, %ecx
	andl	$2016, %ecx             # imm = 0x7E0
	orl	%eax, %ecx
	movzwl	4(%rsi), %eax
	shrl	$11, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end0:
	.size	mem_true16_map_rgb_color, .Lfunc_end0-mem_true16_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true16_map_color_rgb,@function
mem_true16_map_color_rgb:               # @mem_true16_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	shrl	$11, %eax
	movzwl	%ax, %eax
	imull	$2114, %eax, %ecx       # imm = 0x842
	shrl	$4, %eax
	addl	%ecx, %eax
	movw	%ax, (%rdx)
	movl	%esi, %eax
	shrl	$5, %eax
	andl	$63, %eax
	imull	$1040, %eax, %ecx       # imm = 0x410
	shrl	$2, %eax
	orl	%ecx, %eax
	movw	%ax, 2(%rdx)
	andl	$31, %esi
	imull	$2114, %esi, %eax       # imm = 0x842
	shrl	$4, %esi
	orl	%eax, %esi
	movw	%si, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	mem_true16_map_color_rgb, .Lfunc_end1-mem_true16_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true16_fill_rectangle,@function
mem_true16_fill_rectangle:              # @mem_true16_fill_rectangle
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movl	%r8d, %eax
	movl	%ecx, %r10d
	movl	%esi, %r11d
	movl	%edx, %ecx
	orl	%r11d, %ecx
	jns	.LBB2_2
# BB#1:                                 # %if.then
	movl	%r11d, %ecx
	sarl	$31, %ecx
	andl	%r11d, %ecx
	addl	%ecx, %r10d
	xorl	%ecx, %ecx
	testl	%r11d, %r11d
	cmovsl	%ecx, %r11d
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%esi, %eax
	testl	%edx, %edx
	cmovsl	%ecx, %edx
.LBB2_2:                                # %do.body.14
	movl	832(%rdi), %r14d
	movl	836(%rdi), %r13d
	movl	%r14d, %ecx
	subl	%r11d, %ecx
	cmpl	%ecx, %r10d
	cmovlel	%r10d, %ecx
	movl	%r13d, %r8d
	subl	%edx, %r8d
	cmpl	%r8d, %eax
	cmovlel	%eax, %r8d
	testl	%ecx, %ecx
	jle	.LBB2_23
# BB#3:                                 # %do.body.14
	testl	%r8d, %r8d
	jle	.LBB2_23
# BB#4:                                 # %do.end.42
	movq	%r9, %rsi
	shlq	$8, %rsi
	movq	%r9, %rbx
	shrq	$8, %rbx
	orq	%rsi, %rbx
	movl	1736(%rdi), %esi
	movslq	%edx, %rbp
	movq	2576(%rdi), %rdi
	movq	(%rdi,%rbp,8), %r15
	leal	(%r11,%r11), %edi
	movslq	%edi, %r12
	leaq	(%r15,%r12), %rdi
	cmpl	$1, %ecx
	jne	.LBB2_8
# BB#5:                                 # %while.cond.preheader
	testl	%r8d, %r8d
	jle	.LBB2_23
# BB#6:                                 # %while.body.lr.ph
	decl	%edx
	subl	%r13d, %edx
	notl	%eax
	cmpl	%eax, %edx
	cmovgel	%edx, %eax
	negl	%eax
	.align	16, 0x90
.LBB2_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movw	%bx, (%rdi)
	addq	%rsi, %rdi
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB2_7
	jmp	.LBB2_23
.LBB2_8:                                # %if.else
	movl	%ebx, %eax
	shrl	$8, %eax
	xorb	%bl, %al
	je	.LBB2_24
# BB#9:                                 # %while.cond.66.preheader
	testl	%r8d, %r8d
	jle	.LBB2_23
# BB#10:                                # %while.body.70.lr.ph
	decl	%r11d
	subl	%r14d, %r11d
	notl	%r10d
	cmpl	%r10d, %r11d
	cmovgel	%r11d, %r10d
	movl	$-5, %r9d
	subl	%r10d, %r9d
	movl	%r9d, %r11d
	shrl	$2, %r11d
	leaq	(%r12,%r11,8), %rax
	leaq	8(%r15,%rax), %r14
	incl	%r11d
	andl	$3, %r11d
	movl	%r11d, %r10d
	negl	%r10d
	.align	16, 0x90
.LBB2_11:                               # %while.body.70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	cmpl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdi, %rbp
	jl	.LBB2_16
# BB#12:                                # %for.body.preheader
                                        #   in Loop: Header=BB2_11 Depth=1
	testl	%r11d, %r11d
	movl	%r10d, %ebp
	movl	%ecx, %edx
	movq	%rdi, %rax
	je	.LBB2_14
	.align	16, 0x90
.LBB2_13:                               # %for.body.prol
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	%bx, (%rax)
	movw	%bx, 2(%rax)
	movw	%bx, 4(%rax)
	movw	%bx, 6(%rax)
	addq	$8, %rax
	addl	$-4, %edx
	incl	%ebp
	jne	.LBB2_13
.LBB2_14:                               # %for.body.preheader.split
                                        #   in Loop: Header=BB2_11 Depth=1
	cmpl	$12, %r9d
	movq	%r14, %rbp
	jb	.LBB2_16
	.align	16, 0x90
.LBB2_15:                               # %for.body
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movw	%bx, (%rax)
	movw	%bx, 2(%rax)
	movw	%bx, 4(%rax)
	movw	%bx, 6(%rax)
	movw	%bx, 8(%rax)
	movw	%bx, 10(%rax)
	movw	%bx, 12(%rax)
	movw	%bx, 14(%rax)
	movw	%bx, 16(%rax)
	movw	%bx, 18(%rax)
	movw	%bx, 20(%rax)
	movw	%bx, 22(%rax)
	movw	%bx, 24(%rax)
	movw	%bx, 26(%rax)
	movw	%bx, 28(%rax)
	movw	%bx, 30(%rax)
	addl	$-16, %edx
	addq	$32, %rax
	cmpl	$3, %edx
	movq	%r14, %rbp
	jg	.LBB2_15
.LBB2_16:                               # %for.end
                                        #   in Loop: Header=BB2_11 Depth=1
	cmpl	$1, %edx
	je	.LBB2_21
# BB#17:                                # %for.end
                                        #   in Loop: Header=BB2_11 Depth=1
	cmpl	$2, %edx
	je	.LBB2_20
# BB#18:                                # %for.end
                                        #   in Loop: Header=BB2_11 Depth=1
	cmpl	$3, %edx
	jne	.LBB2_22
# BB#19:                                # %sw.bb
                                        #   in Loop: Header=BB2_11 Depth=1
	movw	%bx, 4(%rbp)
.LBB2_20:                               # %sw.bb.80
                                        #   in Loop: Header=BB2_11 Depth=1
	movw	%bx, 2(%rbp)
.LBB2_21:                               # %sw.bb.82
                                        #   in Loop: Header=BB2_11 Depth=1
	movw	%bx, (%rbp)
.LBB2_22:                               # %sw.epilog
                                        #   in Loop: Header=BB2_11 Depth=1
	addq	%rsi, %rdi
	addq	%rsi, %r14
	cmpl	$1, %r8d
	leal	-1(%r8), %eax
	movl	%eax, %r8d
	jg	.LBB2_11
	jmp	.LBB2_23
.LBB2_24:                               # %if.then.56
	addl	%ecx, %ecx
	movzbl	%r9b, %edx
	callq	bytes_fill_rectangle
.LBB2_23:                               # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mem_true16_fill_rectangle, .Lfunc_end2-mem_true16_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true16_copy_mono,@function
mem_true16_copy_mono:                   # @mem_true16_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%ecx, %r8d
	movq	%rsi, %r13
	movl	72(%rsp), %eax
	movl	64(%rsp), %r11d
	movl	56(%rsp), %ecx
	movl	%ecx, %esi
	orl	%ebx, %esi
	js	.LBB3_2
# BB#1:
	movl	%ecx, %r15d
	jmp	.LBB3_5
.LBB3_2:                                # %if.then
	movl	%ebx, %esi
	sarl	$31, %esi
	andl	%ebx, %esi
	leal	(%r11,%rsi), %r11d
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	cmovsl	%r15d, %ebx
	subl	%esi, %edx
	testl	%ecx, %ecx
	js	.LBB3_4
# BB#3:
	movl	%ecx, %r15d
	jmp	.LBB3_5
.LBB3_4:                                # %if.then.21
	addl	%ecx, %eax
	imull	%r8d, %ecx
	movslq	%ecx, %rcx
	subq	%rcx, %r13
.LBB3_5:                                # %if.end.24
	movl	832(%rdi), %esi
	movl	836(%rdi), %r14d
	movl	%esi, %ecx
	subl	%ebx, %ecx
	cmpl	%ecx, %r11d
	cmovlel	%r11d, %ecx
	subl	%r15d, %r14d
	cmpl	%r14d, %eax
	cmovlel	%eax, %r14d
	testl	%ecx, %ecx
	jle	.LBB3_19
# BB#6:                                 # %if.end.24
	testl	%r14d, %r14d
	jle	.LBB3_19
# BB#7:                                 # %do.end.46
	movb	%dl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	movl	%eax, -4(%rsp)          # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB3_19
# BB#8:                                 # %while.body.lr.ph
	movq	88(%rsp), %rcx
	movq	80(%rsp), %rax
	movl	%eax, %r9d
	shll	$8, %r9d
	movl	%esi, -8(%rsp)          # 4-byte Spill
	movzbl	%ah, %esi  # NOREX
	movq	%rax, %r10
	movl	%ecx, %ebp
	shll	$8, %ebp
	movzbl	%ch, %eax  # NOREX
	orl	%r9d, %esi
	movl	%esi, %r9d
	orl	%ebp, %eax
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	%rdx, %r13
	movq	2576(%rdi), %rdx
	movslq	%r15d, %rsi
	leal	(%rbx,%rbx), %ebp
	movslq	%ebp, %r12
	addq	(%rdx,%rsi,8), %r12
	movslq	%r8d, %r8
	movl	1736(%rdi), %r15d
	decl	%ebx
	subl	-8(%rsp), %ebx          # 4-byte Folded Reload
	notl	%r11d
	cmpl	%r11d, %ebx
	cmovgel	%ebx, %r11d
	negl	%r11d
	.align	16, 0x90
.LBB3_9:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	leaq	1(%r13), %rdi
	movzbl	(%r13), %ebp
	movl	%r11d, %ebx
	movq	%r12, %rdx
	movl	-4(%rsp), %esi          # 4-byte Reload
	.align	16, 0x90
.LBB3_10:                               # %do.body.57
                                        #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebp, %esi
	je	.LBB3_13
# BB#11:                                # %if.then.59
                                        #   in Loop: Header=BB3_10 Depth=2
	cmpq	$-1, %rcx
	je	.LBB3_15
# BB#12:                                # %if.then.62
                                        #   in Loop: Header=BB3_10 Depth=2
	movw	%ax, (%rdx)
	jmp	.LBB3_15
	.align	16, 0x90
.LBB3_13:                               # %if.else
                                        #   in Loop: Header=BB3_10 Depth=2
	cmpq	$-1, %r10
	je	.LBB3_15
# BB#14:                                # %if.then.66
                                        #   in Loop: Header=BB3_10 Depth=2
	movw	%r9w, (%rdx)
.LBB3_15:                               # %if.end.68
                                        #   in Loop: Header=BB3_10 Depth=2
	sarl	%esi
	jne	.LBB3_17
# BB#16:                                # %if.then.72
                                        #   in Loop: Header=BB3_10 Depth=2
	movzbl	(%rdi), %ebp
	incq	%rdi
	movl	$128, %esi
.LBB3_17:                               # %if.end.75
                                        #   in Loop: Header=BB3_10 Depth=2
	addq	$2, %rdx
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB3_10
# BB#18:                                # %do.end.81
                                        #   in Loop: Header=BB3_9 Depth=1
	addq	%r8, %r13
	addq	%r15, %r12
	cmpl	$1, %r14d
	leal	-1(%r14), %edx
	movl	%edx, %r14d
	jg	.LBB3_9
.LBB3_19:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mem_true16_copy_mono, .Lfunc_end3-mem_true16_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_true16_copy_color,@function
mem_true16_copy_color:                  # @mem_true16_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rsi, %r10
	movl	32(%rsp), %r11d
	movl	24(%rsp), %r8d
	movl	16(%rsp), %eax
	movl	%eax, %esi
	orl	%r9d, %esi
	js	.LBB4_2
# BB#1:
	movl	%eax, %esi
	movl	%r8d, %ebx
	jmp	.LBB4_5
.LBB4_2:                                # %if.then
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	subl	%ebx, %edx
	xorl	%esi, %esi
	testl	%r9d, %r9d
	cmovsl	%esi, %r9d
	addl	%r8d, %ebx
	testl	%eax, %eax
	js	.LBB4_4
# BB#3:
	movl	%eax, %esi
	jmp	.LBB4_5
.LBB4_4:                                # %if.then.5
	addl	%eax, %r11d
	imull	%ecx, %eax
	cltq
	subq	%rax, %r10
.LBB4_5:                                # %if.end.8
	movl	832(%rdi), %r8d
	movl	836(%rdi), %eax
	subl	%r9d, %r8d
	cmpl	%r8d, %ebx
	cmovlel	%ebx, %r8d
	subl	%esi, %eax
	cmpl	%eax, %r11d
	cmovlel	%r11d, %eax
	testl	%r8d, %r8d
	jle	.LBB4_8
# BB#6:                                 # %if.end.8
	testl	%eax, %eax
	jle	.LBB4_8
# BB#7:                                 # %do.end.26
	movslq	%esi, %rsi
	movq	2576(%rdi), %rbx
	addl	%r9d, %r9d
	movslq	%r9d, %r9
	addq	(%rbx,%rsi,8), %r9
	movl	1736(%rdi), %esi
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	%rdx, %r10
	addl	%r8d, %r8d
	movq	%r9, %rdi
	movq	%r10, %rdx
	movl	%eax, %r9d
	callq	bytes_copy_rectangle
.LBB4_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	mem_true16_copy_color, .Lfunc_end4-mem_true16_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image16"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	mem_true16_device,@object # @mem_true16_device
	.section	.rodata,"a",@progbits
	.globl	mem_true16_device
	.align	8
mem_true16_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	0
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
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
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	mem_true16_map_rgb_color
	.quad	mem_true16_map_color_rgb
	.quad	mem_true16_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_true16_copy_mono
	.quad	mem_true16_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	mem_default_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_true16_device, 2792


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
