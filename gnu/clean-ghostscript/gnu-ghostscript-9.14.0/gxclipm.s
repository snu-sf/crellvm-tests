	.text
	.file	"gxclipm.bc"
	.align	16, 0x90
	.type	mask_clip_fill_rectangle,@function
mask_clip_fill_rectangle:               # @mask_clip_fill_rectangle
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 80
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%edx, %eax
	movl	4576(%rdi), %r15d
	leal	(%rsi,%r15), %edx
	movl	4580(%rdi), %r14d
	leal	(%rax,%r14), %eax
	leal	(%rcx,%rdx), %ebx
	leal	(%r8,%rax), %ebp
	xorl	%ecx, %ecx
	testl	%edx, %edx
	cmovsl	%ecx, %edx
	testl	%eax, %eax
	cmovsl	%ecx, %eax
	movl	1748(%rdi), %ecx
	cmpl	%ecx, %ebx
	cmovgl	%ecx, %ebx
	movl	1752(%rdi), %ecx
	cmpl	%ecx, %ebp
	cmovgl	%ecx, %ebp
	movq	1728(%rdi), %r10
	movl	1744(%rdi), %ecx
	movl	%ecx, %esi
	imull	%eax, %esi
	movslq	%esi, %rsi
	addq	1736(%rdi), %rsi
	movq	1760(%rdi), %r8
	movl	%edx, %r11d
	subl	%r15d, %r11d
	subl	%edx, %ebx
	subl	%eax, %ebp
	subl	%r14d, %eax
	movq	%r9, 32(%rsp)
	movl	%eax, (%rsp)
	movl	%ebp, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movq	$-1, 24(%rsp)
	movq	%r10, %rdi
	movl	%r11d, %r9d
	callq	*1216(%r10)
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mask_clip_fill_rectangle, .Lfunc_end0-mask_clip_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_copy_mono,@function
mask_clip_copy_mono:                    # @mask_clip_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 224
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%rdi, %rbp
	cmpq	$0, 3528(%rbp)
	je	.LBB1_16
# BB#1:                                 # %if.end
	movq	256(%rsp), %rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movq	248(%rsp), %r9
	movl	240(%rsp), %r14d
	movl	232(%rsp), %r13d
	movl	224(%rsp), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	1728(%rbp), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	cmpq	$-1, %rdi
	je	.LBB1_4
# BB#2:                                 # %if.then.2
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	movq	$-1, 128(%rsp)          # 8-byte Folded Spill
	cmpq	$-1, %r9
	je	.LBB1_3
# BB#14:                                # %if.then.4
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	%r13d, %ecx
	movl	%r14d, %r8d
	callq	*1200(%rbp)
	xorl	%ecx, %ecx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB1_5
	jmp	.LBB1_15
.LBB1_16:                               # %if.then
	movq	%rbp, %rdi
	movl	%r15d, %r9d
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_copy_mono    # TAILCALL
.LBB1_4:                                # %if.else
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	$-1, 120(%rsp)          # 8-byte Folded Spill
	cmpq	$-1, %r9
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movl	$0, %eax
	jne	.LBB1_5
	jmp	.LBB1_15
.LBB1_3:
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
.LBB1_5:                                # %do.body.15
	movq	%rbp, %rbx
	movl	4576(%rbx), %ebp
	addl	%r15d, %ebp
	movl	4580(%rbx), %r8d
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	(%r8,%rax), %ecx
	leal	(%r13,%rbp), %edx
	leal	(%r14,%rcx), %edi
	xorl	%eax, %eax
	testl	%ebp, %ebp
	movl	%ebp, %esi
	cmovsl	%eax, %esi
	movl	%esi, 48(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	jns	.LBB1_7
# BB#6:                                 # %if.then.26
	imull	160(%rsp), %ecx         # 4-byte Folded Reload
	movslq	%ecx, %rsi
	subq	%rsi, 56(%rsp)          # 8-byte Folded Spill
	xorl	%ecx, %ecx
.LBB1_7:                                # %if.end.27
	movl	1748(%rbx), %esi
	movl	1752(%rbx), %r9d
	cmpl	%esi, %edx
	cmovgl	%esi, %edx
	movl	%edx, 116(%rsp)         # 4-byte Spill
	cmpl	%r9d, %edi
	cmovgl	%r9d, %edi
	movl	%edi, 52(%rsp)          # 4-byte Spill
	cmpl	%ecx, %edi
	jle	.LBB1_15
# BB#8:                                 # %for.body.lr.ph
	movl	%ebp, %eax
	sarl	$31, %eax
	negl	%ebp
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	leaq	1784(%rbx), %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	andl	%eax, %ebp
	leaq	4584(%rbx), %rbx
	subl	%r15d, %r12d
	addl	%ebp, %r12d
	movq	%r12, 72(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 164(%rsp)         # 4-byte Spill
	movq	104(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_9
	.align	16, 0x90
.LBB1_13:                               # %for.inc.104.for.body_crit_edge
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	4580(%rax), %r8d
	movq	96(%rsp), %rsi          # 8-byte Reload
.LBB1_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movl	%ecx, %edi
	subl	%r8d, %edi
	movl	%edi, 92(%rsp)          # 4-byte Spill
	movl	52(%rsp), %ebp          # 4-byte Reload
	subl	%ecx, %ebp
	movl	836(%rsi), %eax
	cmpl	%eax, %ebp
	cmovgl	%eax, %ebp
	movl	%edi, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %eax
	imull	160(%rsp), %eax         # 4-byte Folded Reload
	cltq
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	48(%rsp), %r15d         # 4-byte Reload
	.align	16, 0x90
.LBB1_10:                               # %for.cond.57
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %r14d
	subl	%r15d, %r14d
	jle	.LBB1_12
# BB#11:                                # %for.body.59
                                        #   in Loop: Header=BB1_10 Depth=2
	movl	%r15d, %r13d
	subl	4576(%r12), %r13d
	movl	1744(%r12), %eax
	movl	%eax, %ecx
	movq	144(%rsp), %rdx         # 8-byte Reload
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	1736(%r12), %rsi
	imull	%ebp, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r13), %edx
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r8d, %r8d
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	movl	160(%rsp), %ecx         # 4-byte Reload
	movl	%r15d, %r9d
	callq	*3000(%r12)
	movq	1728(%r12), %rdi
	movl	1744(%r12), %ecx
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	$-1, 24(%rsp)
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	%r13d, %r9d
	movq	136(%rsp), %rax         # 8-byte Reload
	callq	*1216(%rax)
	movl	116(%rsp), %edx         # 4-byte Reload
	testl	%eax, %eax
	movl	164(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 164(%rsp)         # 4-byte Spill
	movl	%edx, %r15d
	movl	%ecx, %eax
	jns	.LBB1_10
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_12:                               # %for.inc.104
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	144(%rsp), %rcx         # 8-byte Reload
	addl	%ebp, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, 52(%rsp)          # 4-byte Folded Reload
	jg	.LBB1_13
.LBB1_15:                               # %cleanup.107
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mask_clip_copy_mono, .Lfunc_end1-mask_clip_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_copy_color,@function
mask_clip_copy_color:                   # @mask_clip_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$184, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 192
	movl	208(%rsp), %r8d
	movl	200(%rsp), %r10d
	movl	192(%rsp), %r11d
	movq	1728(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 48(%rsp)
	movl	%edx, 72(%rsp)
	movl	%ecx, 76(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r11d, 20(%rsp)
	movl	%r10d, 24(%rsp)
	movl	%r8d, 28(%rsp)
	leaq	8(%rsp), %rdx
	movl	$clip_call_copy_color, %esi
	callq	clip_runs_enumerate
	addq	$184, %rsp
	retq
.Lfunc_end2:
	.size	mask_clip_copy_color, .Lfunc_end2-mask_clip_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_copy_alpha,@function
mask_clip_copy_alpha:                   # @mask_clip_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 208
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movl	240(%rsp), %r8d
	movq	232(%rsp), %r10
	movl	224(%rsp), %r11d
	movl	216(%rsp), %ebp
	movl	208(%rsp), %ebx
	movq	1728(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 48(%rsp)
	movl	%edx, 72(%rsp)
	movl	%ecx, 76(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%ebx, 20(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r11d, 28(%rsp)
	movq	%r10, 32(%rsp)
	movl	%r8d, 80(%rsp)
	leaq	8(%rsp), %rdx
	movl	$clip_call_copy_alpha, %esi
	callq	clip_runs_enumerate
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mask_clip_copy_alpha, .Lfunc_end3-mask_clip_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_strip_tile_rectangle,@function
mask_clip_strip_tile_rectangle:         # @mask_clip_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 208
.Ltmp31:
	.cfi_offset %rbx, -24
.Ltmp32:
	.cfi_offset %r14, -16
	movl	232(%rsp), %r10d
	movl	224(%rsp), %r11d
	movq	216(%rsp), %r14
	movq	208(%rsp), %rbx
	movq	1728(%rdi), %rax
	movq	%rax, 8(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ecx, 20(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%r9d, 28(%rsp)
	movq	%rsi, 112(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movl	%r11d, 120(%rsp)
	movl	%r10d, 124(%rsp)
	leaq	8(%rsp), %rdx
	movl	$clip_call_strip_tile_rectangle, %esi
	callq	clip_runs_enumerate
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	mask_clip_strip_tile_rectangle, .Lfunc_end4-mask_clip_strip_tile_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_strip_copy_rop,@function
mask_clip_strip_copy_rop:               # @mask_clip_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 240
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	304(%rsp), %r8d
	movl	296(%rsp), %r10d
	movl	288(%rsp), %r11d
	movq	248(%rsp), %r14
	movq	240(%rsp), %r15
	movl	280(%rsp), %r12d
	movl	272(%rsp), %r13d
	movl	264(%rsp), %ebx
	movl	256(%rsp), %ebp
	movq	1728(%rdi), %rax
	movq	%rax, 8(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%ebx, 20(%rsp)
	movl	%r13d, 24(%rsp)
	movl	%r12d, 28(%rsp)
	movq	%rsi, 48(%rsp)
	movl	%edx, 72(%rsp)
	movl	%ecx, 76(%rsp)
	movq	%r9, 128(%rsp)
	movq	%r15, 136(%rsp)
	movq	%r14, 144(%rsp)
	movl	%r11d, 120(%rsp)
	movl	%r10d, 124(%rsp)
	movl	%r8d, 96(%rsp)
	leaq	8(%rsp), %rdx
	movl	$clip_call_strip_copy_rop, %esi
	callq	clip_runs_enumerate
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mask_clip_strip_copy_rop, .Lfunc_end5-mask_clip_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_get_clipping_box,@function
mask_clip_get_clipping_box:             # @mask_clip_get_clipping_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 48
.Ltmp49:
	.cfi_offset %rbx, -24
.Ltmp50:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	*1432(%rdi)
	movdqa	(%rsp), %xmm0
	movd	4580(%rbx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	4576(%rbx), %xmm2       # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	psubd	%xmm2, %xmm0
	movdqu	%xmm0, (%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	mask_clip_get_clipping_box, .Lfunc_end6-mask_clip_get_clipping_box
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_fill_rectangle_hl_color,@function
mask_clip_fill_rectangle_hl_color:      # @mask_clip_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 96
.Ltmp57:
	.cfi_offset %rbx, -48
.Ltmp58:
	.cfi_offset %r12, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movl	(%rsi), %eax
	movl	4(%rsi), %ebp
	sarl	$8, %eax
	sarl	$8, %ebp
	movl	8(%rsi), %ebx
	sarl	$8, %ebx
	movl	12(%rsi), %esi
	sarl	$8, %esi
	movl	4576(%rdi), %r14d
	leal	(%rax,%r14), %edx
	movl	4580(%rdi), %r11d
	leal	(%rbp,%r11), %eax
	leal	(%rbx,%r14), %ebx
	leal	(%rsi,%r11), %ebp
	xorl	%esi, %esi
	testl	%edx, %edx
	cmovsl	%esi, %edx
	testl	%eax, %eax
	cmovsl	%esi, %eax
	movl	1748(%rdi), %esi
	cmpl	%esi, %ebx
	cmovgl	%esi, %ebx
	movl	1752(%rdi), %esi
	cmpl	%esi, %ebp
	cmovgl	%esi, %ebp
	movq	(%rcx), %r15
	movq	1728(%rdi), %r12
	movl	1744(%rdi), %r10d
	movl	%r10d, %esi
	imull	%eax, %esi
	movslq	%esi, %rsi
	addq	1736(%rdi), %rsi
	movq	1760(%rdi), %r8
	movl	%edx, %r9d
	subl	%r14d, %r9d
	subl	%edx, %ebx
	subl	%eax, %ebp
	subl	%r11d, %eax
	movq	%r12, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$0, 40(%rsp)
	movl	$252, 32(%rsp)
	movq	%rcx, %rdi
	movl	%r10d, %ecx
	callq	*48(%r15)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	mask_clip_fill_rectangle_hl_color, .Lfunc_end7-mask_clip_fill_rectangle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_strip_copy_rop2,@function
mask_clip_strip_copy_rop2:              # @mask_clip_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$184, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 192
	movq	1728(%rdi), %rax
	movq	%rax, 8(%rsp)
	movl	208(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	216(%rsp), %eax
	movl	%eax, 20(%rsp)
	movl	224(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	232(%rsp), %eax
	movl	%eax, 28(%rsp)
	movq	%rsi, 48(%rsp)
	movl	%edx, 72(%rsp)
	movl	%ecx, 76(%rsp)
	movq	%r9, 128(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 144(%rsp)
	movl	240(%rsp), %eax
	movl	%eax, 120(%rsp)
	movl	248(%rsp), %eax
	movl	%eax, 124(%rsp)
	movl	256(%rsp), %eax
	movl	%eax, 96(%rsp)
	movl	264(%rsp), %eax
	movl	%eax, 152(%rsp)
	leaq	8(%rsp), %rdx
	movl	$clip_call_strip_copy_rop2, %esi
	callq	clip_runs_enumerate
	addq	$184, %rsp
	retq
.Lfunc_end8:
	.size	mask_clip_strip_copy_rop2, .Lfunc_end8-mask_clip_strip_copy_rop2
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_strip_tile_rect_devn,@function
mask_clip_strip_tile_rect_devn:         # @mask_clip_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 208
.Ltmp66:
	.cfi_offset %rbx, -24
.Ltmp67:
	.cfi_offset %r14, -16
	movl	232(%rsp), %r10d
	movl	224(%rsp), %r11d
	movq	216(%rsp), %r14
	movq	208(%rsp), %rbx
	movq	1728(%rdi), %rax
	movq	%rax, 8(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ecx, 20(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%r9d, 28(%rsp)
	movq	%rsi, 112(%rsp)
	movq	%rbx, 56(%rsp)
	movq	%r14, 64(%rsp)
	movl	%r11d, 120(%rsp)
	movl	%r10d, 124(%rsp)
	leaq	8(%rsp), %rdx
	movl	$clip_call_strip_tile_rect_devn, %esi
	callq	clip_runs_enumerate
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	mask_clip_strip_tile_rect_devn, .Lfunc_end9-mask_clip_strip_tile_rect_devn
	.cfi_endproc

	.align	16, 0x90
	.type	mask_clip_copy_alpha_hl_color,@function
mask_clip_copy_alpha_hl_color:          # @mask_clip_copy_alpha_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 208
.Ltmp71:
	.cfi_offset %rbx, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movl	240(%rsp), %r8d
	movq	232(%rsp), %r10
	movl	224(%rsp), %r11d
	movl	216(%rsp), %ebp
	movl	208(%rsp), %ebx
	movq	1728(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, 48(%rsp)
	movl	%edx, 72(%rsp)
	movl	%ecx, 76(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%ebx, 20(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r11d, 28(%rsp)
	movq	%r10, 88(%rsp)
	movl	%r8d, 80(%rsp)
	leaq	8(%rsp), %rdx
	movl	$clip_call_copy_alpha_hl_color, %esi
	callq	clip_runs_enumerate
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mask_clip_copy_alpha_hl_color, .Lfunc_end10-mask_clip_copy_alpha_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	clip_runs_enumerate,@function
clip_runs_enumerate:                    # @clip_runs_enumerate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp76:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp79:
	.cfi_def_cfa_offset 112
.Ltmp80:
	.cfi_offset %rbx, -56
.Ltmp81:
	.cfi_offset %r12, -48
.Ltmp82:
	.cfi_offset %r13, -40
.Ltmp83:
	.cfi_offset %r14, -32
.Ltmp84:
	.cfi_offset %r15, -24
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movl	4576(%rdi), %ecx
	addl	8(%rdx), %ecx
	movl	4580(%rdi), %r11d
	addl	12(%rdx), %r11d
	movl	16(%rdx), %r14d
	addl	%ecx, %r14d
	movl	20(%rdx), %esi
	addl	%r11d, %esi
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovsl	%eax, %ecx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movl	%ecx, %edx
	testl	%r11d, %r11d
	cmovsl	%eax, %r11d
	movl	1748(%rdi), %eax
	movl	1752(%rdi), %ecx
	cmpl	%eax, %r14d
	cmovgl	%eax, %r14d
	cmpl	%ecx, %esi
	cmovgl	%ecx, %esi
	movl	%esi, 36(%rsp)          # 4-byte Spill
	cmpl	%esi, %r11d
	jge	.LBB11_14
# BB#1:                                 # %while.cond.preheader.lr.ph
	movslq	1744(%rdi), %rax
	movslq	%r11d, %rcx
	imulq	%rax, %rcx
	addq	1736(%rdi), %rcx
	movl	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %r12
	addq	%rcx, %r12
	movl	$-1, 40(%rsp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	movl	$-1, %ebx
	movl	$-1, %ebp
	.align	16, 0x90
.LBB11_2:                               # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
                                        #       Child Loop BB11_17 Depth 3
                                        #       Child Loop BB11_21 Depth 3
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	%r11d, 44(%rsp)         # 4-byte Spill
	cmpl	%r14d, %edx
	movl	%edx, %r15d
	jmp	.LBB11_3
	.align	16, 0x90
.LBB11_35:                              # %cleanup
                                        #   in Loop: Header=BB11_3 Depth=2
	incl	%ebp
	cmpl	%r14d, %r15d
.LBB11_3:                               # %while.cond.preheader
                                        #   Parent Loop BB11_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_17 Depth 3
                                        #       Child Loop BB11_21 Depth 3
	movl	%r13d, %esi
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	jge	.LBB11_11
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB11_3 Depth=2
	movzbl	(%r12), %r9d
	movq	%r9, %rax
	xorq	$255, %rax
	movl	%r15d, %ebx
	andl	$7, %ebx
	movq	byte_bit_run_length(,%rbx,8), %rbp
	movzbl	(%rbp,%rax), %ebp
	cmpl	$7, %ebp
	ja	.LBB11_9
# BB#5:                                 # %if.then.54
                                        #   in Loop: Header=BB11_3 Depth=2
	addl	%r15d, %ebp
	jmp	.LBB11_6
	.align	16, 0x90
.LBB11_9:                               # %if.else
                                        #   in Loop: Header=BB11_3 Depth=2
	leal	-8(%r15,%rbp), %eax
	cmpl	%r14d, %eax
	jge	.LBB11_10
# BB#16:                                # %land.rhs.preheader
                                        #   in Loop: Header=BB11_3 Depth=2
	incq	%r12
	.align	16, 0x90
.LBB11_17:                              # %land.rhs
                                        #   Parent Loop BB11_2 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r12), %r9d
	testq	%r9, %r9
	jne	.LBB11_19
# BB#18:                                # %while.body.68
                                        #   in Loop: Header=BB11_17 Depth=3
	addl	$8, %eax
	incq	%r12
	cmpl	%r14d, %eax
	jl	.LBB11_17
	jmp	.LBB11_10
.LBB11_19:                              # %if.end.74
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	%r9, %rbp
	xorq	$255, %rbp
	movzbl	byte_bit_run_length_0(%rbp), %ebp
	addl	%eax, %ebp
.LBB11_6:                               # %if.then.54
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	%r14d, %ebp
	jge	.LBB11_10
# BB#7:                                 # %if.end.85
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	4576(%rdi), %r10d
	movl	%ebp, %r13d
	subl	%r10d, %r13d
	movzbl	%r9b, %eax
	movl	%ebp, %ebx
	andl	$7, %ebx
	movq	byte_bit_run_length(,%rbx,8), %rbx
	movzbl	(%rbx,%rax), %r15d
	cmpl	$7, %r15d
	ja	.LBB11_20
# BB#8:                                 # %if.then.97
                                        #   in Loop: Header=BB11_3 Depth=2
	addl	%ebp, %r15d
	jmp	.LBB11_27
	.align	16, 0x90
.LBB11_20:                              # %if.else.103
                                        #   in Loop: Header=BB11_3 Depth=2
	leal	-8(%rbp,%r15), %ebx
	jmp	.LBB11_21
	.align	16, 0x90
.LBB11_23:                              # %while.body.115
                                        #   in Loop: Header=BB11_21 Depth=3
	addl	$8, %ebx
.LBB11_21:                              # %if.else.103
                                        #   Parent Loop BB11_2 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incq	%r12
	cmpl	%r14d, %ebx
	jge	.LBB11_24
# BB#22:                                # %land.rhs.110
                                        #   in Loop: Header=BB11_21 Depth=3
	movzbl	(%r12), %ebp
	cmpl	$255, %ebp
	je	.LBB11_23
.LBB11_24:                              # %while.end.118
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	%r14d, %ebx
	jle	.LBB11_26
# BB#25:                                #   in Loop: Header=BB11_3 Depth=2
	movl	%r14d, %r15d
	jmp	.LBB11_28
.LBB11_26:                              # %if.else.122
                                        #   in Loop: Header=BB11_3 Depth=2
	movzbl	(%r12), %ebp
	movzbl	byte_bit_run_length_0(%rbp), %r15d
	addl	%ebx, %r15d
.LBB11_27:                              # %if.end.132
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	%r14d, %r15d
	cmovgl	%r14d, %r15d
.LBB11_28:                              # %if.end.132
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	%r15d, %ebx
	subl	%r10d, %ebx
	movl	%r11d, %ebp
	subl	4580(%rdi), %ebp
	cmpl	%r13d, %esi
	jne	.LBB11_32
# BB#29:                                # %if.end.132
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	%ebx, %ecx
	jne	.LBB11_32
# BB#30:                                # %if.end.132
                                        #   in Loop: Header=BB11_3 Depth=2
	cmpl	%ebp, %r8d
	jne	.LBB11_32
# BB#31:                                #   in Loop: Header=BB11_3 Depth=2
	movl	%ecx, %ebx
	movl	%esi, %r13d
	jmp	.LBB11_35
	.align	16, 0x90
.LBB11_32:                              # %if.else.159
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %r8d
	jle	.LBB11_33
# BB#34:                                # %if.then.166
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %edx
	callq	*24(%rsp)               # 8-byte Folded Reload
	movl	44(%rsp), %r11d         # 4-byte Reload
	movl	4(%rsp), %edx           # 4-byte Reload
	movq	8(%rsp), %rdi           # 8-byte Reload
	testl	%eax, %eax
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	jns	.LBB11_35
	jmp	.LBB11_15
.LBB11_33:                              #   in Loop: Header=BB11_3 Depth=2
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	jmp	.LBB11_35
	.align	16, 0x90
.LBB11_10:                              #   in Loop: Header=BB11_2 Depth=1
	movl	%esi, %r13d
	movl	%ecx, %ebx
	movl	%r8d, %ebp
.LBB11_11:                              # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	movslq	1744(%rdi), %rax
	movq	48(%rsp), %r12          # 8-byte Reload
	addq	%rax, %r12
	incl	%r11d
	cmpl	36(%rsp), %r11d         # 4-byte Folded Reload
	jl	.LBB11_2
# BB#12:                                # %for.end
	cmpl	40(%rsp), %ebp          # 4-byte Folded Reload
	jle	.LBB11_14
# BB#13:                                # %if.then.211
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %esi
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	*24(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB11_15
.LBB11_14:                              # %if.end.225
	xorl	%eax, %eax
.LBB11_15:                              # %cleanup.226
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	clip_runs_enumerate, .Lfunc_end11-clip_runs_enumerate
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mask clipper"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_mask_clip_device,@object # @gs_mask_clip_device
	.section	.rodata,"a",@progbits
	.globl	gs_mask_clip_device
	.align	8
gs_mask_clip_device:
	.long	20968                   # 0x51e8
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
	.long	1                       # 0x1
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
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
	.quad	gx_default_open_device
	.quad	gx_forward_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	gx_default_close_device
	.quad	gx_forward_map_rgb_color
	.quad	gx_forward_map_color_rgb
	.quad	mask_clip_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mask_clip_copy_mono
	.quad	mask_clip_copy_color
	.quad	gx_default_draw_line
	.quad	gx_forward_get_bits
	.quad	gx_forward_get_params
	.quad	gx_forward_put_params
	.quad	gx_forward_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_forward_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	mask_clip_copy_alpha
	.quad	gx_forward_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	mask_clip_strip_tile_rectangle
	.quad	mask_clip_strip_copy_rop
	.quad	mask_clip_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	gx_forward_get_bits_rectangle
	.quad	gx_forward_map_color_rgb_alpha
	.quad	gx_no_create_compositor
	.quad	gx_forward_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_get_color_mapping_procs
	.quad	gx_forward_get_color_comp_index
	.quad	gx_forward_encode_color
	.quad	gx_forward_decode_color
	.quad	0
	.quad	mask_clip_fill_rectangle_hl_color
	.quad	gx_forward_include_color_space
	.quad	gx_forward_fill_linear_color_scanline
	.quad	gx_forward_fill_linear_color_trapezoid
	.quad	gx_forward_fill_linear_color_triangle
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	gx_forward_ret_devn_params
	.quad	gx_forward_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_dev_spec_op
	.quad	0
	.quad	gx_forward_get_profile
	.quad	gx_forward_set_graphics_type_tag
	.quad	mask_clip_strip_copy_rop2
	.quad	mask_clip_strip_tile_rect_devn
	.quad	mask_clip_copy_alpha_hl_color
	.quad	0
	.quad	0
	.zero	48
	.zero	2792
	.zero	8
	.zero	16384
	.size	gs_mask_clip_device, 20968


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
