	.text
	.file	"gdevmrun.bc"
	.globl	gdev_run_from_mem
	.align	16, 0x90
	.type	gdev_run_from_mem,@function
gdev_run_from_mem:                      # @gdev_run_from_mem
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	832(%r15), %eax
	movzwl	108(%r15), %ecx
	imull	%eax, %ecx
	addl	$63, %ecx
	sarl	$6, %ecx
	shll	$3, %ecx
	movabsq	$68719476696, %r12      # imm = 0xFFFFFFFD8
	addq	%rcx, %r12
	shrq	$4, %r12
	leal	4094(%rax), %ecx
	movslq	%ecx, %rcx
	imulq	$-2146959231, %rcx, %rcx # imm = 0xFFFFFFFF80080081
	shrq	$32, %rcx
	leal	4094(%rcx,%rax), %eax
	movl	%eax, %ecx
	sarl	$11, %ecx
	shrl	$31, %eax
	leal	2(%rcx,%rax), %ebp
	movq	%r15, %rdi
	callq	gx_device_white
	movq	%rax, %rbx
	movl	$2792, %edx             # imm = 0xAE8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	cmpl	$1024, %r12d            # imm = 0x400
	movl	$1024, %eax             # imm = 0x400
	cmovlel	%r12d, %eax
	cmpl	%ebp, %eax
	jl	.LBB0_8
# BB#1:                                 # %for.cond.preheader
	movslq	836(%r15), %rdi
	testq	%rdi, %rdi
	jle	.LBB0_7
# BB#2:                                 # %for.body.lr.ph
	movq	2576(%r14), %rdx
	leaq	-1(%rdi), %r8
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB0_5
# BB#3:                                 # %for.body.prol.preheader
	movl	%edi, %ecx
	andl	$3, %ecx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB0_4:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %rbp
	movq	%rbx, (%rbp)
	incq	%rsi
	cmpq	%rsi, %rcx
	jne	.LBB0_4
.LBB0_5:                                # %for.body.lr.ph.split
	cmpq	$3, %r8
	jb	.LBB0_7
	.align	16, 0x90
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %rcx
	movq	%rbx, (%rcx)
	movq	8(%rdx,%rsi,8), %rcx
	movq	%rbx, (%rcx)
	movq	16(%rdx,%rsi,8), %rcx
	movq	%rbx, (%rcx)
	movq	24(%rdx,%rsi,8), %rcx
	movq	%rbx, (%rcx)
	addq	$4, %rsi
	cmpq	%rdi, %rsi
	jl	.LBB0_6
.LBB0_7:                                # %for.end
	movl	%eax, 2792(%r14)
	movl	$0, 2796(%r14)
	movl	%edi, 2800(%r14)
	movl	%edi, 2804(%r14)
	movl	$0, 2808(%r14)
	movups	1216(%r14), %xmm0
	movq	$run_copy_mono, 1216(%r14)
	movups	%xmm0, 2816(%r14)
	movq	$run_copy_color, 1224(%r14)
	movq	1200(%r14), %rax
	movq	%rax, 2832(%r14)
	movq	$run_fill_rectangle, 1200(%r14)
	movq	1312(%r14), %rax
	movq	%rax, 2840(%r14)
	movq	$run_copy_alpha, 1312(%r14)
	movups	1416(%r14), %xmm0
	movq	$run_strip_tile_rectangle, 1416(%r14)
	movups	%xmm0, 2848(%r14)
	movq	$run_strip_copy_rop, 1424(%r14)
	movq	1448(%r14), %rax
	movq	%rax, 2864(%r14)
	movq	$run_get_bits_rectangle, 1448(%r14)
.LBB0_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gdev_run_from_mem, .Lfunc_end0-gdev_run_from_mem
	.cfi_endproc

	.align	16, 0x90
	.type	run_copy_mono,@function
run_copy_mono:                          # @run_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 64
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	64(%rsp), %esi
	movl	80(%rsp), %edx
	callq	run_standardize
	movq	2816(%rbx), %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movl	%r14d, %r9d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	run_copy_mono, .Lfunc_end1-run_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	run_copy_color,@function
run_copy_color:                         # @run_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 64
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	64(%rsp), %esi
	movl	80(%rsp), %edx
	callq	run_standardize
	movq	2824(%rbx), %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movl	%r14d, %r9d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	run_copy_color, .Lfunc_end2-run_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	run_fill_rectangle,@function
run_fill_rectangle:                     # @run_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 144
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB3_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	movl	%edx, %ebp
	sarl	$31, %ebp
	andl	%edx, %ebp
	addl	%ebp, %r8d
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB3_2:                                # %do.body.10
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movl	832(%rdi), %eax
	movl	836(%rdi), %ebx
	subl	%esi, %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	subl	%edx, %ebx
	cmpl	%ebx, %r8d
	cmovlel	%r8d, %ebx
	testl	%eax, %eax
	jle	.LBB3_80
# BB#3:                                 # %do.body.10
	testl	%ebx, %ebx
	jle	.LBB3_80
# BB#4:                                 # %do.end.34
	addl	%edx, %ebx
	cmpl	2796(%rdi), %edx
	jl	.LBB3_7
# BB#5:                                 # %land.lhs.true
	cmpl	2800(%rdi), %ebx
	jg	.LBB3_7
# BB#6:                                 # %land.lhs.true.38
	movslq	%edx, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	%r14, (%rax)
	je	.LBB3_80
.LBB3_7:                                # %if.end.41
	movl	2808(%rdi), %r8d
	cmpl	%r8d, %edx
	jge	.LBB3_12
# BB#8:                                 # %land.lhs.true.43
	movl	2804(%rdi), %eax
	cmpl	%eax, %ebx
	jle	.LBB3_12
# BB#9:                                 # %if.then.45
	subl	%edx, %eax
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
	jle	.LBB3_11
# BB#10:                                # %if.then.48
	movl	%ebp, %esi
	movl	%r12d, %ecx
	movl	%eax, %r8d
	movq	%r14, %r9
	movq	%rdi, %r15
	callq	run_fill_rectangle
	movq	%r15, %rdi
	movl	2804(%rdi), %edx
	movl	2808(%rdi), %r8d
.LBB3_11:                               # %if.end.52
	cmpl	%r8d, %ebx
	cmovlel	%ebx, %r8d
	subl	%edx, %r8d
	movl	%ebp, %esi
	movl	%r12d, %ecx
	movq	%r14, %r9
	movq	%rdi, %rbp
	callq	*2832(%rbp)
	movq	%rbp, %rdi
	movl	2808(%rdi), %edx
	cmpl	%edx, %ebx
	jle	.LBB3_80
.LBB3_12:                               # %if.end.64
	cmpl	%ebx, %edx
	jge	.LBB3_80
# BB#13:                                # %for.body.lr.ph
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %r11d
	movl	%r11d, 28(%rsp)         # 4-byte Spill
	movslq	%edx, %rcx
	movslq	%ebx, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB3_14
.LBB3_30:                               # %if.else.i
                                        #   in Loop: Header=BB3_14 Depth=1
	leal	1(%rbx), %ecx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movl	%ecx, 2796(%rdi)
	jmp	.LBB3_31
	.align	16, 0x90
.LBB3_14:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
                                        #     Child Loop BB3_24 Depth 2
                                        #     Child Loop BB3_36 Depth 2
                                        #     Child Loop BB3_35 Depth 2
                                        #     Child Loop BB3_40 Depth 2
                                        #     Child Loop BB3_51 Depth 2
                                        #     Child Loop BB3_43 Depth 2
                                        #     Child Loop BB3_66 Depth 2
                                        #     Child Loop BB3_74 Depth 2
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	2576(%rdi), %rax
	movq	(%rax,%rcx,8), %r9
	movq	(%r9), %rax
	cmpq	%r14, %rax
	je	.LBB3_79
# BB#15:                                # %if.then.73
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpq	$-1, %rax
	je	.LBB3_16
# BB#17:                                # %if.then.76
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	%r11d, %r15d
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	832(%rdi), %edx
	movq	$-1, (%r9)
	orl	$4095, 48(%r9)          # imm = 0xFFF
	movq	$-1, 40(%r9)
	movl	64(%r9), %eax
	movl	$-4194304, %ecx         # imm = 0xFFFFFFFFFFC00000
	andl	%ecx, %eax
	movq	$-1, 56(%r9)
	orl	$12287, %eax            # imm = 0x2FFF
	movl	%eax, 64(%r9)
	leaq	72(%r9), %r10
	movl	$2, %r11d
	testl	%edx, %edx
	jle	.LBB3_18
# BB#19:                                #   in Loop: Header=BB3_14 Depth=1
	movl	$4194304, %eax          # imm = 0x400000
	movl	$12288, %ecx            # imm = 0x3000
	movq	%r10, %rsi
	.align	16, 0x90
.LBB3_20:                               # %for.body.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4096, %edx             # imm = 0x1000
	movl	$4095, %ebx             # imm = 0xFFF
	cmovll	%edx, %ebx
	andl	$4095, %ebx             # imm = 0xFFF
	movq	$0, (%rsi)
	incl	%r11d
	movl	%ecx, %ebp
	andl	$4190208, %ebp          # imm = 0x3FF000
	orl	%eax, %ebp
	orl	%ebx, %ebp
	movl	%ebp, 8(%rsi)
	addq	$16, %rsi
	addl	$4194304, %eax          # imm = 0x400000
	addl	$4096, %ecx             # imm = 0x1000
	cmpl	$4095, %edx             # imm = 0xFFF
	leal	-4095(%rdx), %edx
	jg	.LBB3_20
	jmp	.LBB3_21
.LBB3_16:                               # %if.then.73.if.end.77_crit_edge
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	8(%r9), %eax
	leaq	40(%r9), %r8
	movq	56(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB3_32
.LBB3_18:                               #   in Loop: Header=BB3_14 Depth=1
	movq	%r10, %rsi
.LBB3_21:                               # %for.end.i
                                        #   in Loop: Header=BB3_14 Depth=1
	andl	$-4190209, 8(%rsi)      # imm = 0xFFFFFFFFFFC00FFF
	leaq	40(%r9), %r8
	movl	%r11d, %ecx
	shll	$22, %ecx
	addl	$-4194304, %ecx         # imm = 0xFFFFFFFFFFC00000
	movl	48(%r9), %edx
	movl	$4194303, %eax          # imm = 0x3FFFFF
	andl	%eax, %edx
	orl	%ecx, %edx
	movl	%edx, 48(%r9)
	movl	$0, 8(%r9)
	movq	%r10, 16(%r9)
	movl	$2, 24(%r9)
	movl	%r11d, 32(%r9)
	cmpl	2792(%rdi), %r11d
	jae	.LBB3_22
# BB#23:                                # %for.body.49.i.preheader
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	%r11d, %ecx
	shll	$12, %ecx
	addl	$4096, %ecx             # imm = 0x1000
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	.align	16, 0x90
.LBB3_24:                               # %for.body.49.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r11d, %edx
	incl	%r11d
	shlq	$4, %rdx
	movl	%ecx, %esi
	andl	$4190208, %esi          # imm = 0x3FF000
	movl	8(%r8,%rdx), %ebp
	andl	%eax, %ebp
	orl	%esi, %ebp
	movl	%ebp, 8(%r8,%rdx)
	addl	$4096, %ecx             # imm = 0x1000
	cmpl	2792(%rdi), %r11d
	jb	.LBB3_24
	jmp	.LBB3_25
.LBB3_22:                               #   in Loop: Header=BB3_14 Depth=1
	movq	80(%rsp), %rbx          # 8-byte Reload
.LBB3_25:                               # %for.end.61.i
                                        #   in Loop: Header=BB3_14 Depth=1
	decl	%r11d
	shlq	$4, %r11
	andl	$-4190209, 8(%r8,%r11)  # imm = 0xFFFFFFFFFFC00FFF
	movslq	2796(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	jg	.LBB3_26
# BB#27:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movslq	2800(%rdi), %rdx
	cmpq	%rbx, %rdx
	jle	.LBB3_26
# BB#28:                                # %if.then.i
                                        #   in Loop: Header=BB3_14 Depth=1
	addl	%ecx, %edx
	sarl	%edx
	movslq	%edx, %rcx
	cmpq	%rbx, %rcx
	jge	.LBB3_30
# BB#29:                                # %if.then.74.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	%ebx, 2800(%rdi)
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	jmp	.LBB3_31
	.align	16, 0x90
.LBB3_26:                               #   in Loop: Header=BB3_14 Depth=1
	movq	%rbx, 80(%rsp)          # 8-byte Spill
.LBB3_31:                               # %if.end.77
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	%r15d, %r11d
.LBB3_32:                               # %if.end.77
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$4095, %edx             # imm = 0xFFF
	movq	16(%r9), %r10
	cmpl	%esi, %eax
	jle	.LBB3_33
	.align	16, 0x90
.LBB3_35:                               # %while.body.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r10), %r12d
	shrl	$22, %r12d
	movq	%r12, %rcx
	shlq	$4, %rcx
	leaq	(%r8,%rcx), %r10
	movl	8(%r8,%rcx), %ecx
	andl	%edx, %ecx
	subl	%ecx, %eax
	cmpl	%esi, %eax
	jg	.LBB3_35
	jmp	.LBB3_38
	.align	16, 0x90
.LBB3_33:                               # %while.cond.6.preheader.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	8(%r10), %ecx
	movl	%ecx, %edx
	andl	$4095, %edx             # imm = 0xFFF
	addl	%eax, %edx
	cmpl	%esi, %edx
	jle	.LBB3_36
# BB#34:                                #   in Loop: Header=BB3_14 Depth=1
	movl	24(%r9), %r12d
	jmp	.LBB3_38
	.align	16, 0x90
.LBB3_36:                               # %while.body.12.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	shrl	$12, %ecx
	movl	%ecx, %r12d
	andl	$1023, %r12d            # imm = 0x3FF
	movq	%r12, %rbx
	shlq	$4, %rbx
	movl	8(%r8,%rbx), %ecx
	movl	%ecx, %edx
	andl	$4095, %edx             # imm = 0xFFF
	addl	%eax, %edx
	cmpl	%esi, %edx
	jle	.LBB3_36
# BB#37:                                # %while.cond.6.for.cond.preheader.loopexit219_crit_edge.i
                                        #   in Loop: Header=BB3_14 Depth=1
	leaq	(%rbx,%r8), %r10
.LBB3_38:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB3_14 Depth=1
	testl	%r12d, %r12d
	movl	%esi, %r13d
	je	.LBB3_39
	.align	16, 0x90
.LBB3_40:                               # %land.rhs.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, (%r10)
	jne	.LBB3_41
# BB#48:                                # %for.body.i.85
                                        #   in Loop: Header=BB3_40 Depth=2
	movl	8(%r10), %r12d
	movl	%r12d, %r13d
	andl	$4095, %r13d            # imm = 0xFFF
	addl	%eax, %r13d
	cmpl	%r11d, %r13d
	jge	.LBB3_79
# BB#49:                                # %for.inc.i
                                        #   in Loop: Header=BB3_40 Depth=2
	shrl	$12, %r12d
	movl	%r12d, %eax
	andl	$1023, %eax             # imm = 0x3FF
	shlq	$4, %rax
	leaq	(%rax,%r8), %r10
	andl	$1023, %r12d            # imm = 0x3FF
	movl	%r13d, %eax
	jne	.LBB3_40
# BB#50:                                #   in Loop: Header=BB3_14 Depth=1
	movl	%r13d, %eax
	xorl	%r12d, %r12d
	jmp	.LBB3_41
.LBB3_39:                               #   in Loop: Header=BB3_14 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %r13d
	xorl	%r12d, %r12d
.LBB3_41:                               # %while.cond.48.preheader.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	8(%r10), %esi
	movl	%esi, %edx
	andl	$4095, %edx             # imm = 0xFFF
	addl	%eax, %edx
	cmpl	%r11d, %edx
	movl	%esi, %ecx
	movq	%rsi, %rbx
	movl	%eax, %ebp
	jge	.LBB3_42
	.align	16, 0x90
.LBB3_51:                               # %while.body.55.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$12, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	shlq	$4, %rcx
	movl	8(%r8,%rcx), %ecx
	movl	%ecx, %esi
	andl	$4095, %esi             # imm = 0xFFF
	addl	%edx, %esi
	cmpl	%r11d, %esi
	movl	%edx, %ebp
	movl	%esi, %edx
	jl	.LBB3_51
.LBB3_42:                               # %while.cond.71.preheader.i
                                        #   in Loop: Header=BB3_14 Depth=1
	shrl	$22, %ecx
	shlq	$4, %rcx
	cmpq	%r14, (%r8,%rcx)
	movl	8(%r8,%rcx), %ecx
	movl	%r11d, %r15d
	jne	.LBB3_44
	.align	16, 0x90
.LBB3_43:                               # %while.body.83.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	andl	$4095, %edx             # imm = 0xFFF
	subl	%edx, %ebp
	shrl	$22, %ecx
	shlq	$4, %rcx
	cmpq	%r14, (%r8,%rcx)
	movl	8(%r8,%rcx), %ecx
	movl	%ebp, %r15d
	je	.LBB3_43
.LBB3_44:                               # %while.end.89.i
                                        #   in Loop: Header=BB3_14 Depth=1
	shrl	$12, %ecx
	movl	%ecx, %r11d
	andl	$1023, %r11d            # imm = 0x3FF
	movl	%r13d, %edi
	subl	%eax, %edi
	jle	.LBB3_55
# BB#45:                                # %if.then.100.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	(%r10), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rbx, %rsi
	shrl	$22, %esi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	shlq	$4, %rsi
	cmpq	%rdx, (%r8,%rsi)
	jne	.LBB3_52
# BB#46:                                # %land.lhs.true.i.86
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	8(%r8,%rsi), %r14d
	movl	%r14d, %edx
	andl	$4095, %edx             # imm = 0xFFF
	addl	%edi, %edx
	cmpl	$4095, %edx             # imm = 0xFFF
	ja	.LBB3_52
# BB#47:                                # %if.then.121.i
                                        #   in Loop: Header=BB3_14 Depth=1
	leaq	8(%r8,%rsi), %rdx
	leal	(%r14,%rdi), %ebx
	andl	$4095, %ebx             # imm = 0xFFF
	andl	$-4096, %r14d           # imm = 0xFFFFFFFFFFFFF000
	orl	%ebx, %r14d
	movl	%r14d, (%rdx)
	jmp	.LBB3_54
.LBB3_52:                               # %if.else.129.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	32(%r9), %edx
	testq	%rdx, %rdx
	je	.LBB3_77
# BB#53:                                # %if.end.132.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	shll	$12, %edx
	andl	$4190208, %edx          # imm = 0x3FF000
	movl	8(%r8,%rsi), %r14d
	movl	$-4190209, %ebx         # imm = 0xFFFFFFFFFFC00FFF
	andl	%ebx, %r14d
	orl	%edx, %r14d
	movl	%r14d, 8(%r8,%rsi)
	movq	8(%rsp), %rbx           # 8-byte Reload
	movl	%ebx, %r14d
	shll	$22, %r14d
	movl	8(%r10), %edx
	movl	$4194303, %esi          # imm = 0x3FFFFF
	andl	%esi, %edx
	orl	%r14d, %edx
	movl	%edx, 8(%r10)
	movq	%rbx, %rsi
	shlq	$4, %rsi
	movl	8(%r8,%rsi), %edx
	movq	%rsi, %rbx
	shrl	$12, %edx
	andl	$1023, %edx             # imm = 0x3FF
	movl	%edx, 32(%r9)
	movq	48(%rsp), %rsi          # 8-byte Reload
	shll	$22, %esi
	shll	$12, %r12d
	andl	$4190208, %r12d         # imm = 0x3FF000
	movl	%edi, %edx
	andl	$4095, %edx             # imm = 0xFFF
	orl	%r12d, %edx
	orl	%esi, %edx
	movl	%edx, 8(%r8,%rbx)
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, (%r8,%rbx)
.LBB3_54:                               # %cleanup.thread.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	8(%r10), %ebx
	movl	%ebx, %edx
	subl	%edi, %edx
	andl	$4095, %edx             # imm = 0xFFF
	andl	$-4096, %ebx            # imm = 0xFFFFFFFFFFFFF000
	orl	%edx, %ebx
	movl	%ebx, 8(%r10)
.LBB3_55:                               # %if.end.153.i
                                        #   in Loop: Header=BB3_14 Depth=1
	shlq	$4, %r11
	leaq	8(%r8,%r11), %r14
	movl	8(%r8,%r11), %edi
	movl	%edi, %r12d
	andl	$4095, %r12d            # imm = 0xFFF
	addl	%ebp, %r12d
	subl	%r15d, %r12d
	jle	.LBB3_56
# BB#57:                                # %if.then.160.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	(%r8,%r11), %rsi
	movl	%edi, %ebp
	shrl	$12, %ebp
	andl	$1023, %ebp             # imm = 0x3FF
	movq	%rbp, %rbx
	shlq	$4, %rbx
	cmpq	%rsi, (%r8,%rbx)
	jne	.LBB3_60
# BB#58:                                # %land.lhs.true.177.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	8(%r8,%rbx), %r11d
	movl	%r11d, %edx
	andl	$4095, %edx             # imm = 0xFFF
	addl	%r12d, %edx
	cmpl	$4095, %edx             # imm = 0xFFF
	ja	.LBB3_60
# BB#59:                                # %if.then.184.i
                                        #   in Loop: Header=BB3_14 Depth=1
	leaq	8(%r8,%rbx), %rcx
	leal	(%r11,%r12), %edx
	andl	$4095, %edx             # imm = 0xFFF
	andl	$-4096, %r11d           # imm = 0xFFFFFFFFFFFFF000
	orl	%edx, %r11d
	movl	%r11d, (%rcx)
	jmp	.LBB3_62
.LBB3_56:                               #   in Loop: Header=BB3_14 Depth=1
	movq	%rbx, %rcx
	jmp	.LBB3_63
.LBB3_60:                               # %if.else.194.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	32(%r9), %r11d
	testq	%r11, %r11
	je	.LBB3_77
# BB#61:                                # %if.end.198.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	%r11d, %edx
	shll	$12, %edx
	andl	$4190208, %edx          # imm = 0x3FF000
	andl	$-4190209, %edi         # imm = 0xFFFFFFFFFFC00FFF
	orl	%edx, %edi
	movl	%edi, (%r14)
	movl	%r11d, %edi
	shll	$22, %edi
	movl	8(%r8,%rbx), %edx
	movl	$4194303, %esi          # imm = 0x3FFFFF
	andl	%esi, %edx
	orl	%edi, %edx
	movl	%edx, 8(%r8,%rbx)
	shlq	$4, %r11
	movl	8(%r8,%r11), %edx
	shrl	$12, %edx
	andl	$1023, %edx             # imm = 0x3FF
	movl	%edx, 32(%r9)
	shll	$22, %ecx
	shll	$12, %ebp
	movl	%r12d, %edx
	andl	$4095, %edx             # imm = 0xFFF
	orl	%ecx, %ebp
	orl	%edx, %ebp
	movl	%ebp, 8(%r8,%r11)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, (%r8,%r11)
.LBB3_62:                               # %cleanup.217.thread.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	(%r14), %edi
	movl	%edi, %ecx
	subl	%r12d, %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	andl	$-4096, %edi            # imm = 0xFFFFFFFFFFFFF000
	orl	%ecx, %edi
	movl	%edi, (%r14)
	movl	8(%r10), %ecx
.LBB3_63:                               # %if.end.222.i
                                        #   in Loop: Header=BB3_14 Depth=1
	shrl	$22, %ecx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leaq	8(%r8,%rdx), %r12
	movl	8(%r8,%rdx), %ebp
	xorl	%ebp, %edi
	testl	$4190208, %edi          # imm = 0x3FF000
	je	.LBB3_64
# BB#65:                                # %while.body.243.lr.ph.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	%ecx, %r11d
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	shll	$22, %r11d
	movl	$4095, %edi             # imm = 0xFFF
	movl	$4194303, %r10d         # imm = 0x3FFFFF
	.align	16, 0x90
.LBB3_66:                               # %while.body.243.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %ebx
	shrl	$12, %ebx
	andl	$1023, %ebx             # imm = 0x3FF
	movq	%rbx, %rcx
	shlq	$4, %rcx
	movl	8(%r8,%rcx), %edx
	shrl	$12, %edx
	andl	$1023, %edx             # imm = 0x3FF
	movl	%edx, %esi
	shll	$12, %esi
	andl	$-4190209, %ebp         # imm = 0xFFFFFFFFFFC00FFF
	orl	%esi, %ebp
	movl	%ebp, (%r12)
	shlq	$4, %rdx
	movl	8(%r8,%rdx), %esi
	andl	%r10d, %esi
	orl	%r11d, %esi
	movl	%esi, 8(%r8,%rdx)
	movl	32(%r9), %edx
	shll	$12, %edx
	movl	8(%r8,%rcx), %esi
	andl	%edi, %esi
	andl	$4190208, %edx          # imm = 0x3FF000
	orl	%esi, %edx
	movl	%edx, 8(%r8,%rcx)
	movl	%ebx, 32(%r9)
	movl	(%r12), %ebp
	movl	(%r14), %ecx
	xorl	%ebp, %ecx
	testl	$4190208, %ecx          # imm = 0x3FF000
	jne	.LBB3_66
	jmp	.LBB3_67
.LBB3_64:                               #   in Loop: Header=BB3_14 Depth=1
	movq	%rcx, 48(%rsp)          # 8-byte Spill
.LBB3_67:                               # %while.end.244.i
                                        #   in Loop: Header=BB3_14 Depth=1
	subl	%r13d, %r15d
	cmpl	%eax, %r13d
	movq	40(%rsp), %r14          # 8-byte Reload
	jne	.LBB3_71
# BB#68:                                # %land.lhs.true.247.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpq	%r14, (%r8,%rax)
	jne	.LBB3_71
# BB#69:                                # %land.lhs.true.251.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	%ebp, %eax
	andl	$4095, %eax             # imm = 0xFFF
	addl	%r15d, %eax
	cmpl	$4095, %eax             # imm = 0xFFF
	ja	.LBB3_71
# BB#70:                                # %if.then.258.i
                                        #   in Loop: Header=BB3_14 Depth=1
	leal	(%r15,%rbp), %eax
	andl	$4095, %eax             # imm = 0xFFF
	andl	$-4096, %ebp            # imm = 0xFFFFFFFFFFFFF000
	orl	%eax, %ebp
	movl	%ebp, (%r12)
	jmp	.LBB3_78
	.align	16, 0x90
.LBB3_71:                               # %if.else.268.i
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpl	$4096, %r15d            # imm = 0x1000
	movl	%r15d, %eax
	movl	28(%rsp), %r11d         # 4-byte Reload
	jb	.LBB3_73
# BB#72:                                # %if.else.271.i
                                        #   in Loop: Header=BB3_14 Depth=1
	leal	-1(%r15,%r15), %eax
	xorl	%edx, %edx
	divl	%r15d
.LBB3_73:                               # %do.body.preheader.i
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	48(%rsp), %r13          # 8-byte Reload
	shll	$22, %r13d
                                        # implicit-def: R10
	.align	16, 0x90
.LBB3_74:                               # %do.body.i
                                        #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	32(%r9), %ebp
	testq	%rbp, %rbp
	je	.LBB3_76
# BB#75:                                # %if.end.i.102.i
                                        #   in Loop: Header=BB3_74 Depth=2
	movq	%rbp, %rcx
	shlq	$4, %rcx
	leaq	(%r8,%rcx), %r10
	movl	(%r12), %esi
	movl	%esi, %ebx
	shrl	$12, %ebx
	andl	$1023, %ebx             # imm = 0x3FF
	movl	%ebp, %edx
	shll	$12, %edx
	andl	$4190208, %edx          # imm = 0x3FF000
	andl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	orl	%edx, %esi
	movl	%esi, (%r12)
	movq	%rbx, %rsi
	shlq	$4, %rsi
	shll	$22, %ebp
	movl	8(%r8,%rsi), %edx
	movl	$4194303, %edi          # imm = 0x3FFFFF
	andl	%edi, %edx
	orl	%ebp, %edx
	movl	%edx, 8(%r8,%rsi)
	movl	8(%r8,%rcx), %esi
	shrl	$12, %esi
	andl	$1023, %esi             # imm = 0x3FF
	movl	%esi, 32(%r9)
	movl	8(%r8,%rcx), %esi
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %esi
	shll	$12, %ebx
	orl	%r13d, %ebx
	orl	%esi, %ebx
	movl	%ebx, 8(%r8,%rcx)
.LBB3_76:                               # %rp_insert_next.exit.i
                                        #   in Loop: Header=BB3_74 Depth=2
	cmpl	%eax, %r15d
	movl	%eax, %ecx
	cmovbl	%r15d, %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movl	8(%r10), %esi
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	%edx, %esi
	orl	%ecx, %esi
	subl	%eax, %r15d
	movl	%esi, 8(%r10)
	movq	%r14, (%r10)
	jne	.LBB3_74
	jmp	.LBB3_79
.LBB3_77:                               # %if.then.80
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$1, %edx
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	80(%rsp), %rbp          # 8-byte Reload
	movl	%ebp, %esi
	callq	run_standardize
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	%ebp, %edx
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %r14          # 8-byte Reload
	movq	%r14, %r9
	callq	*2832(%rbx)
.LBB3_78:                               # %if.end.87
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	28(%rsp), %r11d         # 4-byte Reload
	.align	16, 0x90
.LBB3_79:                               # %if.end.87
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	cmpq	64(%rsp), %rcx          # 8-byte Folded Reload
	movq	72(%rsp), %rdi          # 8-byte Reload
	jl	.LBB3_14
.LBB3_80:                               # %cleanup
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	run_fill_rectangle, .Lfunc_end3-run_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	run_copy_alpha,@function
run_copy_alpha:                         # @run_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp55:
	.cfi_def_cfa_offset 64
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	64(%rsp), %esi
	movl	80(%rsp), %edx
	callq	run_standardize
	movq	2840(%rbx), %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movl	%r14d, %r9d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end4:
	.size	run_copy_alpha, .Lfunc_end4-run_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	run_strip_tile_rectangle,@function
run_strip_tile_rectangle:               # @run_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 64
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, %r14d
	movl	%ecx, %ebp
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	%ebp, %esi
	movl	%r13d, %edx
	callq	run_standardize
	movq	2848(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	movl	%r13d, %r9d
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end5:
	.size	run_strip_tile_rectangle, .Lfunc_end5-run_strip_tile_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	run_strip_copy_rop,@function
run_strip_copy_rop:                     # @run_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 64
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	88(%rsp), %esi
	movl	104(%rsp), %edx
	callq	run_standardize
	movq	2856(%rbx), %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end6:
	.size	run_strip_copy_rop, .Lfunc_end6-run_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	run_get_bits_rectangle,@function
run_get_bits_rectangle:                 # @run_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp92:
	.cfi_def_cfa_offset 48
.Ltmp93:
	.cfi_offset %rbx, -40
.Ltmp94:
	.cfi_offset %r12, -32
.Ltmp95:
	.cfi_offset %r14, -24
.Ltmp96:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	4(%r12), %esi
	movl	12(%r12), %edx
	subl	%esi, %edx
	callq	run_standardize
	movq	2864(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	run_get_bits_rectangle, .Lfunc_end7-run_get_bits_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	run_standardize,@function
run_standardize:                        # @run_standardize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 32
.Ltmp100:
	.cfi_offset %rbx, -32
.Ltmp101:
	.cfi_offset %r14, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	%esi, %eax
	sarl	$31, %eax
	xorl	%ebp, %ebp
	testl	%esi, %esi
	cmovnsl	%esi, %ebp
	andl	%esi, %eax
	addl	%edx, %eax
	movl	836(%r14), %ebx
	subl	%ebp, %ebx
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	addl	%ebp, %ebx
	movl	2804(%r14), %eax
	movl	2808(%r14), %esi
	cmpl	%eax, %ebp
	jge	.LBB8_4
# BB#1:                                 # %if.then.12
	movl	%ebx, %edx
	subl	%esi, %edx
	jle	.LBB8_3
# BB#2:                                 # %if.then.14
	movq	%r14, %rdi
	callq	run_standardize
	movl	2804(%r14), %eax
.LBB8_3:                                # %if.end.18
	cmpl	%eax, %ebx
	cmovll	%eax, %ebx
	movl	%ebp, 2804(%r14)
	jmp	.LBB8_6
.LBB8_4:                                # %if.else
	cmpl	%esi, %ebx
	jle	.LBB8_8
# BB#5:                                 # %if.then.27
	cmpl	%esi, %ebp
	cmovgl	%esi, %ebp
	movl	%ebx, 2808(%r14)
.LBB8_6:                                # %if.end.36
	cmpl	%ebx, %ebp
	jge	.LBB8_8
	.align	16, 0x90
.LBB8_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	run_expand
	incl	%ebp
	cmpl	%ebp, %ebx
	jne	.LBB8_7
.LBB8_8:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	run_standardize, .Lfunc_end8-run_standardize
	.cfi_endproc

	.align	16, 0x90
	.type	run_expand,@function
run_expand:                             # @run_expand
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp106:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 56
	subq	$10248, %rsp            # imm = 0x2808
.Ltmp109:
	.cfi_def_cfa_offset 10304
.Ltmp110:
	.cfi_offset %rbx, -56
.Ltmp111:
	.cfi_offset %r12, -48
.Ltmp112:
	.cfi_offset %r13, -40
.Ltmp113:
	.cfi_offset %r14, -32
.Ltmp114:
	.cfi_offset %r15, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r15
	movslq	%r14d, %rax
	movq	2576(%r15), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	(%rax), %r9
	cmpq	$-1, %r9
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	832(%r15), %ecx
	xorl	%esi, %esi
	movl	$1, %r8d
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	*2832(%r15)
	jmp	.LBB9_8
.LBB9_2:                                # %if.end
	movl	64(%rax), %ebp
	shrl	$12, %ebp
	andl	$1023, %ebp             # imm = 0x3FF
	je	.LBB9_5
# BB#3:
	addq	$40, %rax
	leaq	8192(%rsp), %rdx
	leaq	(%rsp), %rsi
	.align	16, 0x90
.LBB9_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edi
	shlq	$4, %rdi
	movl	8(%rax,%rdi), %ebp
	movl	%ebp, %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movw	%cx, (%rdx)
	movq	(%rax,%rdi), %rcx
	movq	%rcx, (%rsi)
	shrl	$12, %ebp
	addq	$2, %rdx
	addq	$8, %rsi
	andl	$1023, %ebp             # imm = 0x3FF
	jne	.LBB9_4
.LBB9_5:                                # %for.cond.28.preheader
	cmpl	$0, 832(%r15)
	jle	.LBB9_8
# BB#6:                                 # %for.body.33.lr.ph
	xorl	%ebp, %ebp
	leaq	8192(%rsp), %r13
	leaq	(%rsp), %rbx
	.align	16, 0x90
.LBB9_7:                                # %for.body.33
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r13), %r12d
	movq	(%rbx), %r9
	movl	$1, %r8d
	movq	%r15, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	callq	*2832(%r15)
	addl	%r12d, %ebp
	addq	$2, %r13
	addq	$8, %rbx
	cmpl	832(%r15), %ebp
	jl	.LBB9_7
.LBB9_8:                                # %cleanup
	addq	$10248, %rsp            # imm = 0x2808
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	run_expand, .Lfunc_end9-run_expand
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
