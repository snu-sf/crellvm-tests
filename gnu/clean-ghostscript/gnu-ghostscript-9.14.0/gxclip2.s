	.text
	.file	"gxclip2.bc"
	.globl	tile_clip_initialize
	.align	16, 0x90
	.type	tile_clip_initialize,@function
tile_clip_initialize:                   # @tile_clip_initialize
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
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movq	%rdx, %rax
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	$0, (%rsp)
	movl	$gs_tile_clip_device, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdx
	movq	%rax, %rcx
	callq	gx_mask_clip_initialize
	testl	%eax, %eax
	js	.LBB0_2
# BB#1:                                 # %if.then
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	%xmm2, 1768(%rbx)
	movups	%xmm1, 1752(%rbx)
	movups	%xmm0, 1736(%rbx)
	movl	%r15d, 4576(%rbx)
	movl	%r14d, 4580(%rbx)
.LBB0_2:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tile_clip_initialize, .Lfunc_end0-tile_clip_initialize
	.cfi_endproc

	.globl	tile_clip_set_phase
	.align	16, 0x90
	.type	tile_clip_set_phase,@function
tile_clip_set_phase:                    # @tile_clip_set_phase
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 4576(%rdi)
	movl	%edx, 4580(%rdi)
	retq
.Lfunc_end1:
	.size	tile_clip_set_phase, .Lfunc_end1-tile_clip_set_phase
	.cfi_endproc

	.globl	tile_clip_free
	.align	16, 0x90
	.type	tile_clip_free,@function
tile_clip_free:                         # @tile_clip_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rax
.LBB2_2:                                # %if.end
	movq	24(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str, %edx
	movq	%rbx, %rsi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	tile_clip_free, .Lfunc_end2-tile_clip_free
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_fill_rectangle,@function
tile_clip_fill_rectangle:               # @tile_clip_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 48
.Ltmp13:
	.cfi_offset %rbx, -16
	movl	%r8d, %r10d
	movl	%ecx, %r8d
	movl	%edx, %r11d
	movl	%esi, %edx
	movq	1728(%rdi), %rax
	movl	4576(%rdi), %ecx
	movl	4580(%rdi), %ebx
	leaq	1736(%rdi), %rsi
	movl	%ebx, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movq	%r9, 8(%rsp)
	movq	$-1, (%rsp)
	movq	%rax, %rdi
	movl	%r11d, %ecx
	movl	%r10d, %r9d
	callq	*1416(%rax)
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	tile_clip_fill_rectangle, .Lfunc_end3-tile_clip_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_copy_mono,@function
tile_clip_copy_mono:                    # @tile_clip_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 224
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movq	%r10, 72(%rsp)          # 8-byte Spill
	movl	%ecx, %r11d
	movl	%r11d, 160(%rsp)        # 4-byte Spill
	movq	%rsi, %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	cmpq	$0, 3528(%rbp)
	je	.LBB4_15
# BB#1:                                 # %if.end
	movq	256(%rsp), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	248(%rsp), %r9
	movl	240(%rsp), %r15d
	movl	232(%rsp), %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	224(%rsp), %esi
	movl	%esi, 68(%rsp)          # 4-byte Spill
	cmpq	$-1, %rax
	je	.LBB4_5
# BB#2:                                 # %if.then.2
	movl	%r11d, %r13d
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	$-1, 120(%rsp)          # 8-byte Folded Spill
	cmpq	$-1, %r9
	je	.LBB4_3
# BB#4:                                 # %if.then.4
	movq	%rbp, %rdi
	movl	%r10d, %esi
	movl	68(%rsp), %edx          # 4-byte Reload
	movq	%rcx, %r12
	movl	%r15d, %r8d
	movq	%r10, %rbx
	callq	*1200(%rbp)
	movq	%rbx, %r10
	movq	%r12, %rcx
	xorl	%edx, %edx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movl	%r13d, %r11d
	jns	.LBB4_6
	jmp	.LBB4_14
.LBB4_15:                               # %if.then
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r11d, %ecx
	movl	%r10d, %r9d
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_copy_mono    # TAILCALL
.LBB4_5:                                # %if.else
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	$-1, 112(%rsp)          # 8-byte Folded Spill
	cmpq	$-1, %r9
	movq	%r9, 136(%rsp)          # 8-byte Spill
	movl	$0, %eax
	jne	.LBB4_6
	jmp	.LBB4_14
.LBB4_3:
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%r13d, %r11d
.LBB4_6:                                # %do.end
	xorl	%eax, %eax
	testl	%r15d, %r15d
	jle	.LBB4_14
# BB#7:                                 # %for.body.lr.ph
	movq	%rbp, %r12
	leaq	1784(%r12), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	68(%rsp), %r13d         # 4-byte Reload
	addl	%r13d, %r15d
	movl	%r15d, 44(%rsp)         # 4-byte Spill
	leal	(%rcx,%r10), %edi
	movl	%edi, 84(%rsp)          # 4-byte Spill
	leaq	4584(%r12), %rbp
	movq	144(%rsp), %rax         # 8-byte Reload
	subl	%r10d, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 164(%rsp)         # 4-byte Spill
	movl	%r13d, %ebx
.LBB4_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	movl	4580(%r12), %eax
	addl	%ebx, %eax
	movzwl	1770(%r12), %esi
	cltd
	idivl	%esi
	movl	%edx, 132(%rsp)         # 4-byte Spill
	subl	%ebx, %r15d
	movl	1752(%r12), %esi
	subl	%edx, %esi
	cmpl	%esi, %r15d
	cmovlel	%r15d, %esi
	movl	2620(%r12), %edx
	cmpl	%edx, %esi
	cmovgl	%edx, %esi
	movl	%esi, 152(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB4_9
# BB#11:                                # %for.body.52.lr.ph
                                        #   in Loop: Header=BB4_8 Depth=1
	movzwl	1772(%r12), %ecx
	imull	%eax, %ecx
	addl	4576(%r12), %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	movl	%ebx, 156(%rsp)         # 4-byte Spill
	subl	68(%rsp), %eax          # 4-byte Folded Reload
	imull	%r11d, %eax
	cltq
	leaq	(%rax,%r14), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%r10, %rax
	movl	%eax, %ebx
	movq	%rax, 72(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB4_13:                               # %for.body.52
                                        #   Parent Loop BB4_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %eax
	movzwl	1768(%r12), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	movl	%edi, %eax
	subl	%ebx, %eax
	movl	1748(%r12), %r14d
	subl	%r13d, %r14d
	cmpl	%r14d, %eax
	cmovlel	%eax, %r14d
	movl	1744(%r12), %eax
	movl	%eax, %ecx
	imull	132(%rsp), %ecx         # 4-byte Folded Reload
	movslq	%ecx, %rsi
	addq	1736(%r12), %rsi
	movl	152(%rsp), %r15d        # 4-byte Reload
	imull	%r15d, %eax
	movslq	%eax, %rdx
	movq	%rbp, %rdi
	callq	memcpy
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %edx
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%r8d, %r8d
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movl	160(%rsp), %ecx         # 4-byte Reload
	movl	%r13d, %r9d
	callq	*3000(%r12)
	movq	1728(%r12), %rdi
	movl	1744(%r12), %ecx
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r14d, 8(%rsp)
	movl	156(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movq	$-1, 24(%rsp)
	xorl	%r8d, %r8d
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movl	%ebx, %r9d
	callq	*1216(%rdi)
	testl	%eax, %eax
	movl	164(%rsp), %ecx         # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, %eax
	js	.LBB4_14
# BB#12:                                # %for.cond.48
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	%eax, 164(%rsp)         # 4-byte Spill
	addl	%ebx, %r14d
	movl	84(%rsp), %eax          # 4-byte Reload
	cmpl	%r14d, %eax
	movl	%r14d, %ebx
	movl	%eax, %edi
	jg	.LBB4_13
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_9:                                #   in Loop: Header=BB4_8 Depth=1
	movl	%ebx, 156(%rsp)         # 4-byte Spill
.LBB4_10:                               # %for.inc.115
                                        #   in Loop: Header=BB4_8 Depth=1
	movl	156(%rsp), %ebx         # 4-byte Reload
	addl	152(%rsp), %ebx         # 4-byte Folded Reload
	xorl	%eax, %eax
	movl	44(%rsp), %r15d         # 4-byte Reload
	cmpl	%ebx, %r15d
	movq	72(%rsp), %r10          # 8-byte Reload
	movl	160(%rsp), %r11d        # 4-byte Reload
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	jg	.LBB4_8
.LBB4_14:                               # %cleanup.118
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tile_clip_copy_mono, .Lfunc_end4-tile_clip_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_copy_color,@function
tile_clip_copy_color:                   # @tile_clip_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 144
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movl	160(%rsp), %eax
	movl	152(%rsp), %ecx
	movl	144(%rsp), %ebp
	movl	%ebp, %esi
	orl	%r9d, %esi
	js	.LBB5_2
# BB#1:
	movl	%r9d, %ebx
	movl	%ebp, %r8d
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %esi
	sarl	$31, %esi
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %ebx
	cmovsl	%r8d, %ebx
	andl	%r9d, %esi
	leal	(%rcx,%rsi), %ecx
	subl	%esi, %edx
	testl	%ebp, %ebp
	js	.LBB5_4
# BB#3:
	movl	%ebp, %r8d
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	addl	%ebp, %eax
	imull	68(%rsp), %ebp          # 4-byte Folded Reload
	movslq	%ebp, %rsi
	subq	%rsi, 80(%rsp)          # 8-byte Folded Spill
.LBB5_5:                                # %if.end.8
	movl	832(%rdi), %r14d
	movl	836(%rdi), %ebp
	subl	%ebx, %r14d
	cmpl	%r14d, %ecx
	cmovlel	%ecx, %r14d
	subl	%r8d, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	xorl	%esi, %esi
	testl	%r14d, %r14d
	jle	.LBB5_29
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB5_29
# BB#7:                                 # %do.end.26
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	4580(%rdi), %ecx
	leal	(%rcx,%r8), %eax
	movzwl	1770(%rdi), %r9d
	cltd
	idivl	%r9d
	movl	%edx, 44(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	jle	.LBB5_29
# BB#8:                                 # %for.body.lr.ph
	movq	%r8, %rdx
	addl	%edx, 40(%rsp)          # 4-byte Folded Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movslq	1744(%rdi), %rax
	movslq	44(%rsp), %r15          # 4-byte Folded Reload
	imulq	%rax, %r15
	addq	1736(%rdi), %r15
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	addl	%ebx, %r14d
	movq	56(%rsp), %rax          # 8-byte Reload
	subl	%ebx, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movslq	68(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_34:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	24(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, 80(%rsp)          # 8-byte Folded Spill
	movl	4580(%rdi), %ecx
	movzwl	1770(%rdi), %r9d
	movl	36(%rsp), %ebx          # 4-byte Reload
	movq	%rax, %rdx
.LBB5_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_21 Depth 3
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	addl	%edx, %ecx
	movzwl	%r9w, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movzwl	1772(%rdi), %ecx
	imull	%eax, %ecx
	movl	4576(%rdi), %eax
	addl	%ebx, %eax
	addl	%ecx, %eax
	movzwl	1768(%rdi), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movl	%ebp, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%r15), %r12
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %r13d
	shrl	%cl, %r13d
	.align	16, 0x90
.LBB5_10:                               # %for.cond.59
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_21 Depth 3
	cmpl	%r14d, %ebx
	movl	%ebx, %r9d
	movq	48(%rsp), %rdi          # 8-byte Reload
	jge	.LBB5_30
	.align	16, 0x90
.LBB5_11:                               # %land.rhs
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	(%r12), %r13b
	jne	.LBB5_12
# BB#13:                                # %do.body.72
                                        #   in Loop: Header=BB5_11 Depth=3
	incl	%ebp
	cmpl	1748(%rdi), %ebp
	jne	.LBB5_15
# BB#14:                                #   in Loop: Header=BB5_11 Depth=3
	movb	$-128, %r13b
	xorl	%ebp, %ebp
	movq	%r15, %rax
	jmp	.LBB5_18
	.align	16, 0x90
.LBB5_15:                               # %if.else
                                        #   in Loop: Header=BB5_11 Depth=3
	shrb	%r13b
	leaq	1(%r12), %rax
	testb	%r13b, %r13b
	cmovneq	%r12, %rax
	movb	$-128, %cl
	je	.LBB5_17
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB5_11 Depth=3
	movb	%r13b, %cl
.LBB5_17:                               # %if.else
                                        #   in Loop: Header=BB5_11 Depth=3
	movb	%cl, %r13b
.LBB5_18:                               # %if.end.86
                                        #   in Loop: Header=BB5_11 Depth=3
	incl	%r9d
	cmpl	%r14d, %r9d
	movq	%rax, %r12
	jl	.LBB5_11
	jmp	.LBB5_19
	.align	16, 0x90
.LBB5_12:                               #   in Loop: Header=BB5_10 Depth=2
	movq	%r12, %rax
.LBB5_19:                               # %while.end
                                        #   in Loop: Header=BB5_10 Depth=2
	cmpl	%r14d, %r9d
	je	.LBB5_30
# BB#20:                                # %do.body.96.preheader
                                        #   in Loop: Header=BB5_10 Depth=2
	movl	1748(%rdi), %ecx
	leal	1(%r9), %edx
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	.align	16, 0x90
.LBB5_21:                               # %do.body.96
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%edx, %ebx
	incl	%ebp
	cmpl	%ecx, %ebp
	jne	.LBB5_23
# BB#22:                                #   in Loop: Header=BB5_21 Depth=3
	movb	$-128, %r13b
	xorl	%ebp, %ebp
	movq	%r15, %r12
	jmp	.LBB5_26
	.align	16, 0x90
.LBB5_23:                               # %if.else.104
                                        #   in Loop: Header=BB5_21 Depth=3
	shrb	%r13b
	leaq	1(%rax), %r12
	testb	%r13b, %r13b
	cmovneq	%rax, %r12
	movb	$-128, %al
	je	.LBB5_25
# BB#24:                                # %if.else.104
                                        #   in Loop: Header=BB5_21 Depth=3
	movb	%r13b, %al
.LBB5_25:                               # %if.else.104
                                        #   in Loop: Header=BB5_21 Depth=3
	movb	%al, %r13b
.LBB5_26:                               # %if.end.114
                                        #   in Loop: Header=BB5_21 Depth=3
	cmpl	%r14d, %ebx
	jge	.LBB5_28
# BB#27:                                # %land.rhs.122
                                        #   in Loop: Header=BB5_21 Depth=3
	leal	1(%rbx), %edx
	testb	(%r12), %r13b
	movq	%r12, %rax
	jne	.LBB5_21
.LBB5_28:                               # %cleanup.141
                                        #   in Loop: Header=BB5_10 Depth=2
	movq	1728(%rdi), %rdi
	leal	(%rsi,%r9), %edx
	movl	%ebx, %eax
	subl	%r9d, %eax
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	80(%rsp), %rsi          # 8-byte Reload
	movl	68(%rsp), %ecx          # 4-byte Reload
	callq	*1224(%rdi)
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB5_10
	jmp	.LBB5_29
	.align	16, 0x90
.LBB5_30:                               # %for.end
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	cmpl	1752(%rdi), %eax
	movl	40(%rsp), %ecx          # 4-byte Reload
	jne	.LBB5_32
# BB#31:                                # %if.then.150
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	1736(%rdi), %r15
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	jmp	.LBB5_33
	.align	16, 0x90
.LBB5_32:                               # %if.else.153
                                        #   in Loop: Header=BB5_9 Depth=1
	movslq	1744(%rdi), %rax
	addq	%rax, %r15
.LBB5_33:                               # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	incl	%eax
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	jl	.LBB5_34
.LBB5_29:                               # %cleanup.169
	movl	%esi, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tile_clip_copy_color, .Lfunc_end5-tile_clip_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_copy_alpha,@function
tile_clip_copy_alpha:                   # @tile_clip_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 160
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	176(%rsp), %eax
	movl	168(%rsp), %ecx
	movl	160(%rsp), %ebp
	movl	%ebp, %esi
	orl	%r9d, %esi
	js	.LBB6_2
# BB#1:
	movl	%ebp, %ebx
	jmp	.LBB6_5
.LBB6_2:                                # %if.then
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	leal	(%rcx,%rsi), %ecx
	xorl	%ebx, %ebx
	testl	%r9d, %r9d
	cmovsl	%ebx, %r9d
	subl	%esi, %edx
	testl	%ebp, %ebp
	js	.LBB6_4
# BB#3:
	movl	%ebp, %ebx
	jmp	.LBB6_5
.LBB6_4:                                # %if.then.5
	addl	%ebp, %eax
	imull	84(%rsp), %ebp          # 4-byte Folded Reload
	movslq	%ebp, %rsi
	subq	%rsi, 96(%rsp)          # 8-byte Folded Spill
.LBB6_5:                                # %if.end.8
	movl	832(%rdi), %r15d
	movl	836(%rdi), %ebp
	subl	%r9d, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%ebx, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	xorl	%esi, %esi
	testl	%r15d, %r15d
	jle	.LBB6_29
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB6_29
# BB#7:                                 # %do.end.26
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	4580(%rdi), %ecx
	leal	(%rcx,%rbx), %eax
	movzwl	1770(%rdi), %r8d
	cltd
	idivl	%r8d
	movl	%edx, 60(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	jle	.LBB6_29
# BB#8:                                 # %for.body.lr.ph
	movq	%rbx, %rdx
	addl	%edx, 56(%rsp)          # 4-byte Folded Spill
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movslq	1744(%rdi), %rax
	movslq	60(%rsp), %r12          # 4-byte Folded Reload
	imulq	%rax, %r12
	addq	1736(%rdi), %r12
	movl	%r9d, %ebx
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	addl	%ebx, %r15d
	movq	72(%rsp), %rax          # 8-byte Reload
	subl	%ebx, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	84(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB6_9
	.align	16, 0x90
.LBB6_34:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, 96(%rsp)          # 8-byte Folded Spill
	movl	4580(%rdi), %ecx
	movzwl	1770(%rdi), %r8d
	movl	52(%rsp), %ebx          # 4-byte Reload
	movq	%rax, %rdx
.LBB6_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #       Child Loop BB6_11 Depth 3
                                        #       Child Loop BB6_21 Depth 3
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	addl	%edx, %ecx
	movzwl	%r8w, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movzwl	1772(%rdi), %ecx
	imull	%eax, %ecx
	movl	4576(%rdi), %eax
	addl	%ebx, %eax
	addl	%ecx, %eax
	movzwl	1768(%rdi), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%r12), %r14
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %ebp
	shrl	%cl, %ebp
	.align	16, 0x90
.LBB6_10:                               # %for.cond.59
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_11 Depth 3
                                        #       Child Loop BB6_21 Depth 3
	cmpl	%r15d, %ebx
	movl	%ebx, %r9d
	movq	64(%rsp), %rdi          # 8-byte Reload
	jge	.LBB6_30
	.align	16, 0x90
.LBB6_11:                               # %land.rhs
                                        #   Parent Loop BB6_9 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	(%r14), %bpl
	jne	.LBB6_12
# BB#13:                                # %do.body.72
                                        #   in Loop: Header=BB6_11 Depth=3
	incl	%r13d
	cmpl	1748(%rdi), %r13d
	jne	.LBB6_15
# BB#14:                                #   in Loop: Header=BB6_11 Depth=3
	movb	$-128, %bpl
	xorl	%r13d, %r13d
	movq	%r12, %rax
	jmp	.LBB6_18
	.align	16, 0x90
.LBB6_15:                               # %if.else
                                        #   in Loop: Header=BB6_11 Depth=3
	shrb	%bpl
	leaq	1(%r14), %rax
	testb	%bpl, %bpl
	cmovneq	%r14, %rax
	movb	$-128, %cl
	je	.LBB6_17
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB6_11 Depth=3
	movb	%bpl, %cl
.LBB6_17:                               # %if.else
                                        #   in Loop: Header=BB6_11 Depth=3
	movb	%cl, %bpl
.LBB6_18:                               # %if.end.86
                                        #   in Loop: Header=BB6_11 Depth=3
	incl	%r9d
	cmpl	%r15d, %r9d
	movq	%rax, %r14
	jl	.LBB6_11
	jmp	.LBB6_19
	.align	16, 0x90
.LBB6_12:                               #   in Loop: Header=BB6_10 Depth=2
	movq	%r14, %rax
.LBB6_19:                               # %while.end
                                        #   in Loop: Header=BB6_10 Depth=2
	cmpl	%r15d, %r9d
	je	.LBB6_30
# BB#20:                                # %do.body.96.preheader
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	1748(%rdi), %ecx
	leal	1(%r9), %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	88(%rsp), %r8           # 8-byte Reload
	.align	16, 0x90
.LBB6_21:                               # %do.body.96
                                        #   Parent Loop BB6_9 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%edx, %ebx
	incl	%r13d
	cmpl	%ecx, %r13d
	jne	.LBB6_23
# BB#22:                                #   in Loop: Header=BB6_21 Depth=3
	movb	$-128, %bpl
	xorl	%r13d, %r13d
	movq	%r12, %r14
	jmp	.LBB6_26
	.align	16, 0x90
.LBB6_23:                               # %if.else.104
                                        #   in Loop: Header=BB6_21 Depth=3
	shrb	%bpl
	leaq	1(%rax), %r14
	testb	%bpl, %bpl
	cmovneq	%rax, %r14
	movb	$-128, %al
	je	.LBB6_25
# BB#24:                                # %if.else.104
                                        #   in Loop: Header=BB6_21 Depth=3
	movb	%bpl, %al
.LBB6_25:                               # %if.else.104
                                        #   in Loop: Header=BB6_21 Depth=3
	movb	%al, %bpl
.LBB6_26:                               # %if.end.114
                                        #   in Loop: Header=BB6_21 Depth=3
	cmpl	%r15d, %ebx
	jge	.LBB6_28
# BB#27:                                # %land.rhs.122
                                        #   in Loop: Header=BB6_21 Depth=3
	leal	1(%rbx), %edx
	testb	(%r14), %bpl
	movq	%r14, %rax
	jne	.LBB6_21
.LBB6_28:                               # %cleanup.141
                                        #   in Loop: Header=BB6_10 Depth=2
	movq	1728(%rdi), %rdi
	leal	(%rsi,%r9), %edx
	movl	%ebx, %eax
	subl	%r9d, %eax
	movl	192(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movq	184(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	96(%rsp), %rsi          # 8-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	callq	*1312(%rdi)
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB6_10
	jmp	.LBB6_29
	.align	16, 0x90
.LBB6_30:                               # %for.end
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	60(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	cmpl	1752(%rdi), %eax
	jne	.LBB6_32
# BB#31:                                # %if.then.150
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	1736(%rdi), %r12
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB6_33
	.align	16, 0x90
.LBB6_32:                               # %if.else.153
                                        #   in Loop: Header=BB6_9 Depth=1
	movslq	1744(%rdi), %rax
	addq	%rax, %r12
.LBB6_33:                               # %for.inc
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	56(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	incl	%eax
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	jl	.LBB6_34
.LBB6_29:                               # %cleanup.169
	movl	%esi, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tile_clip_copy_alpha, .Lfunc_end6-tile_clip_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_strip_copy_rop,@function
tile_clip_strip_copy_rop:               # @tile_clip_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 208
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%r9, 112(%rsp)          # 8-byte Spill
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	248(%rsp), %eax
	movl	240(%rsp), %ecx
	movl	232(%rsp), %ebp
	movl	224(%rsp), %ebx
	movl	%ebp, %esi
	orl	%ebx, %esi
	js	.LBB7_2
# BB#1:
	movl	%ebp, %r8d
	jmp	.LBB7_5
.LBB7_2:                                # %if.then
	movl	%ebx, %esi
	sarl	$31, %esi
	andl	%ebx, %esi
	leal	(%rcx,%rsi), %ecx
	xorl	%r8d, %r8d
	testl	%ebx, %ebx
	cmovsl	%r8d, %ebx
	subl	%esi, %edx
	testl	%ebp, %ebp
	js	.LBB7_4
# BB#3:
	movl	%ebp, %r8d
	jmp	.LBB7_5
.LBB7_4:                                # %if.then.5
	addl	%ebp, %eax
	imull	132(%rsp), %ebp         # 4-byte Folded Reload
	movslq	%ebp, %rsi
	subq	%rsi, 144(%rsp)         # 8-byte Folded Spill
.LBB7_5:                                # %if.end.8
	movl	832(%rdi), %r15d
	movl	836(%rdi), %ebp
	subl	%ebx, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%r8d, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	xorl	%esi, %esi
	testl	%r15d, %r15d
	jle	.LBB7_29
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB7_29
# BB#7:                                 # %do.end.26
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movl	4580(%rdi), %ecx
	leal	(%rcx,%r8), %eax
	movzwl	1770(%rdi), %r9d
	cltd
	idivl	%r9d
	movl	%edx, 100(%rsp)         # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, 96(%rsp)          # 4-byte Spill
	jle	.LBB7_29
# BB#8:                                 # %for.body.lr.ph
	movq	%r8, %rdx
	addl	%edx, 96(%rsp)          # 4-byte Folded Spill
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movslq	1744(%rdi), %rax
	movslq	100(%rsp), %r12         # 4-byte Folded Reload
	imulq	%rax, %r12
	addq	1736(%rdi), %r12
	movl	%ebx, 92(%rsp)          # 4-byte Spill
	addl	%ebx, %r15d
	movq	120(%rsp), %rax         # 8-byte Reload
	subl	%ebx, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	132(%rsp), %eax         # 4-byte Reload
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB7_9
	.align	16, 0x90
.LBB7_34:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, 144(%rsp)         # 8-byte Folded Spill
	movl	4580(%rdi), %ecx
	movzwl	1770(%rdi), %r9d
	movl	92(%rsp), %ebx          # 4-byte Reload
	movq	%rax, %rdx
.LBB7_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #       Child Loop BB7_11 Depth 3
                                        #       Child Loop BB7_21 Depth 3
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	addl	%edx, %ecx
	movzwl	%r9w, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movzwl	1772(%rdi), %ecx
	imull	%eax, %ecx
	movl	4576(%rdi), %eax
	addl	%ebx, %eax
	addl	%ecx, %eax
	movzwl	1768(%rdi), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%r12), %r14
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %ebp
	shrl	%cl, %ebp
	.align	16, 0x90
.LBB7_10:                               # %for.cond.59
                                        #   Parent Loop BB7_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_11 Depth 3
                                        #       Child Loop BB7_21 Depth 3
	cmpl	%r15d, %ebx
	movl	%ebx, %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	jge	.LBB7_30
	.align	16, 0x90
.LBB7_11:                               # %land.rhs
                                        #   Parent Loop BB7_9 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	(%r14), %bpl
	jne	.LBB7_12
# BB#13:                                # %do.body.72
                                        #   in Loop: Header=BB7_11 Depth=3
	incl	%r13d
	cmpl	1748(%rdi), %r13d
	jne	.LBB7_15
# BB#14:                                #   in Loop: Header=BB7_11 Depth=3
	movb	$-128, %bpl
	xorl	%r13d, %r13d
	movq	%r12, %rcx
	jmp	.LBB7_18
	.align	16, 0x90
.LBB7_15:                               # %if.else
                                        #   in Loop: Header=BB7_11 Depth=3
	shrb	%bpl
	leaq	1(%r14), %rcx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	movb	$-128, %dl
	je	.LBB7_17
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB7_11 Depth=3
	movb	%bpl, %dl
.LBB7_17:                               # %if.else
                                        #   in Loop: Header=BB7_11 Depth=3
	movb	%dl, %bpl
.LBB7_18:                               # %if.end.86
                                        #   in Loop: Header=BB7_11 Depth=3
	incl	%eax
	cmpl	%r15d, %eax
	movq	%rcx, %r14
	jl	.LBB7_11
	jmp	.LBB7_19
	.align	16, 0x90
.LBB7_12:                               #   in Loop: Header=BB7_10 Depth=2
	movq	%r14, %rcx
.LBB7_19:                               # %while.end
                                        #   in Loop: Header=BB7_10 Depth=2
	cmpl	%r15d, %eax
	je	.LBB7_30
# BB#20:                                # %do.body.96.preheader
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	1748(%rdi), %edx
	leal	1(%rax), %esi
	movq	120(%rsp), %r8          # 8-byte Reload
	.align	16, 0x90
.LBB7_21:                               # %do.body.96
                                        #   Parent Loop BB7_9 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%esi, %ebx
	incl	%r13d
	cmpl	%edx, %r13d
	jne	.LBB7_23
# BB#22:                                #   in Loop: Header=BB7_21 Depth=3
	movb	$-128, %bpl
	xorl	%r13d, %r13d
	movq	%r12, %r14
	jmp	.LBB7_26
	.align	16, 0x90
.LBB7_23:                               # %if.else.104
                                        #   in Loop: Header=BB7_21 Depth=3
	shrb	%bpl
	leaq	1(%rcx), %r14
	testb	%bpl, %bpl
	cmovneq	%rcx, %r14
	movb	$-128, %cl
	je	.LBB7_25
# BB#24:                                # %if.else.104
                                        #   in Loop: Header=BB7_21 Depth=3
	movb	%bpl, %cl
.LBB7_25:                               # %if.else.104
                                        #   in Loop: Header=BB7_21 Depth=3
	movb	%cl, %bpl
.LBB7_26:                               # %if.end.114
                                        #   in Loop: Header=BB7_21 Depth=3
	cmpl	%r15d, %ebx
	jge	.LBB7_28
# BB#27:                                # %land.rhs.122
                                        #   in Loop: Header=BB7_21 Depth=3
	leal	1(%rbx), %esi
	testb	(%r14), %bpl
	movq	%r14, %rcx
	jne	.LBB7_21
.LBB7_28:                               # %cleanup.141
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	1728(%rdi), %rdi
	leal	(%r8,%rax), %edx
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movl	272(%rsp), %esi
	movl	%esi, 64(%rsp)
	movl	264(%rsp), %esi
	movl	%esi, 56(%rsp)
	movl	256(%rsp), %esi
	movl	%esi, 48(%rsp)
	movl	%ecx, 32(%rsp)
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 24(%rsp)
	movl	%eax, 16(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$1, 40(%rsp)
	xorl	%r8d, %r8d
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	132(%rsp), %ecx         # 4-byte Reload
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	*1424(%rdi)
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB7_10
	jmp	.LBB7_29
	.align	16, 0x90
.LBB7_30:                               # %for.end
                                        #   in Loop: Header=BB7_9 Depth=1
	movl	100(%rsp), %eax         # 4-byte Reload
	incl	%eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	cmpl	1752(%rdi), %eax
	jne	.LBB7_32
# BB#31:                                # %if.then.150
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	1736(%rdi), %r12
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	jmp	.LBB7_33
	.align	16, 0x90
.LBB7_32:                               # %if.else.153
                                        #   in Loop: Header=BB7_9 Depth=1
	movslq	1744(%rdi), %rax
	addq	%rax, %r12
.LBB7_33:                               # %for.inc
                                        #   in Loop: Header=BB7_9 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	96(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	incl	%eax
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	jl	.LBB7_34
.LBB7_29:                               # %cleanup.169
	movl	%esi, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tile_clip_strip_copy_rop, .Lfunc_end7-tile_clip_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_fill_rectangle_hl_color,@function
tile_clip_fill_rectangle_hl_color:      # @tile_clip_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %vector.body
	subq	$1352, %rsp             # imm = 0x548
.Ltmp66:
	.cfi_def_cfa_offset 1360
	movq	%rdi, %rax
	movq	1728(%rax), %rdi
	movq	$gx_dc_type_data_pure, 696(%rsp)
	movq	$-1, 704(%rsp)
	movq	$gx_dc_type_data_devn, 40(%rsp)
	movups	8(%rcx), %xmm0
	movups	%xmm0, 48(%rsp)
	movups	24(%rcx), %xmm0
	movups	%xmm0, 64(%rsp)
	movups	40(%rcx), %xmm0
	movups	%xmm0, 80(%rsp)
	movups	56(%rcx), %xmm0
	movups	%xmm0, 96(%rsp)
	movups	72(%rcx), %xmm0
	movups	%xmm0, 112(%rsp)
	movups	88(%rcx), %xmm0
	movups	%xmm0, 128(%rsp)
	movups	104(%rcx), %xmm0
	movups	%xmm0, 144(%rsp)
	movups	120(%rcx), %xmm0
	movups	%xmm0, 160(%rsp)
	movl	(%rsi), %edx
	movl	4(%rsi), %ecx
	sarl	$8, %edx
	sarl	$8, %ecx
	movl	8(%rsi), %r8d
	sarl	$8, %r8d
	subl	%edx, %r8d
	movl	12(%rsi), %r9d
	sarl	$8, %r9d
	subl	%ecx, %r9d
	movl	4576(%rax), %r10d
	movl	4580(%rax), %r11d
	leaq	1736(%rax), %rsi
	movl	%r11d, 24(%rsp)
	movl	%r10d, 16(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	696(%rsp), %rax
	movq	%rax, (%rsp)
	callq	*1704(%rdi)
	addq	$1352, %rsp             # imm = 0x548
	retq
.Lfunc_end8:
	.size	tile_clip_fill_rectangle_hl_color, .Lfunc_end8-tile_clip_fill_rectangle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_copy_planes,@function
tile_clip_copy_planes:                  # @tile_clip_copy_planes
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
	subq	$104, %rsp
.Ltmp73:
	.cfi_def_cfa_offset 160
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
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	176(%rsp), %eax
	movl	168(%rsp), %ecx
	movl	160(%rsp), %ebp
	movl	%ebp, %esi
	orl	%r9d, %esi
	js	.LBB9_2
# BB#1:
	movl	%r9d, %ebx
	movl	%ebp, %r8d
	jmp	.LBB9_5
.LBB9_2:                                # %if.then
	movl	%r9d, %esi
	sarl	$31, %esi
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	movl	%r9d, %ebx
	cmovsl	%r8d, %ebx
	andl	%r9d, %esi
	leal	(%rcx,%rsi), %ecx
	subl	%esi, %edx
	testl	%ebp, %ebp
	js	.LBB9_4
# BB#3:
	movl	%ebp, %r8d
	jmp	.LBB9_5
.LBB9_4:                                # %if.then.5
	addl	%ebp, %eax
	imull	84(%rsp), %ebp          # 4-byte Folded Reload
	movslq	%ebp, %rsi
	subq	%rsi, 96(%rsp)          # 8-byte Folded Spill
.LBB9_5:                                # %if.end.8
	movl	832(%rdi), %r14d
	movl	836(%rdi), %ebp
	subl	%ebx, %r14d
	cmpl	%r14d, %ecx
	cmovlel	%ecx, %r14d
	subl	%r8d, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	xorl	%esi, %esi
	testl	%r14d, %r14d
	jle	.LBB9_29
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB9_29
# BB#7:                                 # %do.end.26
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	4580(%rdi), %ecx
	leal	(%rcx,%r8), %eax
	movzwl	1770(%rdi), %r9d
	cltd
	idivl	%r9d
	movl	%edx, 60(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	jle	.LBB9_29
# BB#8:                                 # %for.body.lr.ph
	movq	%r8, %rdx
	addl	%edx, 56(%rsp)          # 4-byte Folded Spill
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movslq	1744(%rdi), %rax
	movslq	60(%rsp), %r15          # 4-byte Folded Reload
	imulq	%rax, %r15
	addq	1736(%rdi), %r15
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	addl	%ebx, %r14d
	movq	72(%rsp), %rax          # 8-byte Reload
	subl	%ebx, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	84(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB9_9
	.align	16, 0x90
.LBB9_34:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, 96(%rsp)          # 8-byte Folded Spill
	movl	4580(%rdi), %ecx
	movzwl	1770(%rdi), %r9d
	movl	52(%rsp), %ebx          # 4-byte Reload
	movq	%rax, %rdx
.LBB9_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
                                        #       Child Loop BB9_11 Depth 3
                                        #       Child Loop BB9_21 Depth 3
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	addl	%edx, %ecx
	movzwl	%r9w, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movzwl	1772(%rdi), %ecx
	imull	%eax, %ecx
	movl	4576(%rdi), %eax
	addl	%ebx, %eax
	addl	%ecx, %eax
	movzwl	1768(%rdi), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movl	%ebp, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%r15), %r12
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %r13d
	shrl	%cl, %r13d
	.align	16, 0x90
.LBB9_10:                               # %for.cond.59
                                        #   Parent Loop BB9_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_11 Depth 3
                                        #       Child Loop BB9_21 Depth 3
	cmpl	%r14d, %ebx
	movl	%ebx, %r9d
	movq	64(%rsp), %rdi          # 8-byte Reload
	jge	.LBB9_30
	.align	16, 0x90
.LBB9_11:                               # %land.rhs
                                        #   Parent Loop BB9_9 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	(%r12), %r13b
	jne	.LBB9_12
# BB#13:                                # %do.body.72
                                        #   in Loop: Header=BB9_11 Depth=3
	incl	%ebp
	cmpl	1748(%rdi), %ebp
	jne	.LBB9_15
# BB#14:                                #   in Loop: Header=BB9_11 Depth=3
	movb	$-128, %r13b
	xorl	%ebp, %ebp
	movq	%r15, %rax
	jmp	.LBB9_18
	.align	16, 0x90
.LBB9_15:                               # %if.else
                                        #   in Loop: Header=BB9_11 Depth=3
	shrb	%r13b
	leaq	1(%r12), %rax
	testb	%r13b, %r13b
	cmovneq	%r12, %rax
	movb	$-128, %cl
	je	.LBB9_17
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB9_11 Depth=3
	movb	%r13b, %cl
.LBB9_17:                               # %if.else
                                        #   in Loop: Header=BB9_11 Depth=3
	movb	%cl, %r13b
.LBB9_18:                               # %if.end.86
                                        #   in Loop: Header=BB9_11 Depth=3
	incl	%r9d
	cmpl	%r14d, %r9d
	movq	%rax, %r12
	jl	.LBB9_11
	jmp	.LBB9_19
	.align	16, 0x90
.LBB9_12:                               #   in Loop: Header=BB9_10 Depth=2
	movq	%r12, %rax
.LBB9_19:                               # %while.end
                                        #   in Loop: Header=BB9_10 Depth=2
	cmpl	%r14d, %r9d
	je	.LBB9_30
# BB#20:                                # %do.body.96.preheader
                                        #   in Loop: Header=BB9_10 Depth=2
	movl	1748(%rdi), %ecx
	leal	1(%r9), %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	88(%rsp), %r8           # 8-byte Reload
	.align	16, 0x90
.LBB9_21:                               # %do.body.96
                                        #   Parent Loop BB9_9 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%edx, %ebx
	incl	%ebp
	cmpl	%ecx, %ebp
	jne	.LBB9_23
# BB#22:                                #   in Loop: Header=BB9_21 Depth=3
	movb	$-128, %r13b
	xorl	%ebp, %ebp
	movq	%r15, %r12
	jmp	.LBB9_26
	.align	16, 0x90
.LBB9_23:                               # %if.else.104
                                        #   in Loop: Header=BB9_21 Depth=3
	shrb	%r13b
	leaq	1(%rax), %r12
	testb	%r13b, %r13b
	cmovneq	%rax, %r12
	movb	$-128, %al
	je	.LBB9_25
# BB#24:                                # %if.else.104
                                        #   in Loop: Header=BB9_21 Depth=3
	movb	%r13b, %al
.LBB9_25:                               # %if.else.104
                                        #   in Loop: Header=BB9_21 Depth=3
	movb	%al, %r13b
.LBB9_26:                               # %if.end.114
                                        #   in Loop: Header=BB9_21 Depth=3
	cmpl	%r14d, %ebx
	jge	.LBB9_28
# BB#27:                                # %land.rhs.122
                                        #   in Loop: Header=BB9_21 Depth=3
	leal	1(%rbx), %edx
	testb	(%r12), %r13b
	movq	%r12, %rax
	jne	.LBB9_21
.LBB9_28:                               # %cleanup.141
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	1728(%rdi), %rdi
	leal	(%rsi,%r9), %edx
	movl	%ebx, %eax
	subl	%r9d, %eax
	movl	184(%rsp), %ecx
	movl	%ecx, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	96(%rsp), %rsi          # 8-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	callq	*1672(%rdi)
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB9_10
	jmp	.LBB9_29
	.align	16, 0x90
.LBB9_30:                               # %for.end
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	60(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	cmpl	1752(%rdi), %eax
	movl	56(%rsp), %ecx          # 4-byte Reload
	jne	.LBB9_32
# BB#31:                                # %if.then.150
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	1736(%rdi), %r15
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB9_33
	.align	16, 0x90
.LBB9_32:                               # %if.else.153
                                        #   in Loop: Header=BB9_9 Depth=1
	movslq	1744(%rdi), %rax
	addq	%rax, %r15
.LBB9_33:                               # %for.inc
                                        #   in Loop: Header=BB9_9 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	incl	%eax
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	jl	.LBB9_34
.LBB9_29:                               # %cleanup.169
	movl	%esi, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tile_clip_copy_planes, .Lfunc_end9-tile_clip_copy_planes
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_strip_copy_rop2,@function
tile_clip_strip_copy_rop2:              # @tile_clip_strip_copy_rop2
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
	subq	$152, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 208
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
	movq	%r9, 112(%rsp)          # 8-byte Spill
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movl	248(%rsp), %eax
	movl	240(%rsp), %ecx
	movl	232(%rsp), %ebp
	movl	224(%rsp), %ebx
	movl	%ebp, %esi
	orl	%ebx, %esi
	js	.LBB10_2
# BB#1:
	movl	%ebp, %r8d
	jmp	.LBB10_5
.LBB10_2:                               # %if.then
	movl	%ebx, %esi
	sarl	$31, %esi
	andl	%ebx, %esi
	leal	(%rcx,%rsi), %ecx
	xorl	%r8d, %r8d
	testl	%ebx, %ebx
	cmovsl	%r8d, %ebx
	subl	%esi, %edx
	testl	%ebp, %ebp
	js	.LBB10_4
# BB#3:
	movl	%ebp, %r8d
	jmp	.LBB10_5
.LBB10_4:                               # %if.then.5
	addl	%ebp, %eax
	imull	132(%rsp), %ebp         # 4-byte Folded Reload
	movslq	%ebp, %rsi
	subq	%rsi, 144(%rsp)         # 8-byte Folded Spill
.LBB10_5:                               # %if.end.8
	movl	832(%rdi), %r15d
	movl	836(%rdi), %ebp
	subl	%ebx, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%r8d, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	xorl	%esi, %esi
	testl	%r15d, %r15d
	jle	.LBB10_29
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB10_29
# BB#7:                                 # %do.end.26
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movl	4580(%rdi), %ecx
	leal	(%rcx,%r8), %eax
	movzwl	1770(%rdi), %r9d
	cltd
	idivl	%r9d
	movl	%edx, 100(%rsp)         # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, 96(%rsp)          # 4-byte Spill
	jle	.LBB10_29
# BB#8:                                 # %for.body.lr.ph
	movq	%r8, %rdx
	addl	%edx, 96(%rsp)          # 4-byte Folded Spill
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movslq	1744(%rdi), %rax
	movslq	100(%rsp), %r12         # 4-byte Folded Reload
	imulq	%rax, %r12
	addq	1736(%rdi), %r12
	movl	%ebx, 92(%rsp)          # 4-byte Spill
	addl	%ebx, %r15d
	movq	120(%rsp), %rax         # 8-byte Reload
	subl	%ebx, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	132(%rsp), %eax         # 4-byte Reload
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB10_9
	.align	16, 0x90
.LBB10_34:                              # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB10_9 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, 144(%rsp)         # 8-byte Folded Spill
	movl	4580(%rdi), %ecx
	movzwl	1770(%rdi), %r9d
	movl	92(%rsp), %ebx          # 4-byte Reload
	movq	%rax, %rdx
.LBB10_9:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_10 Depth 2
                                        #       Child Loop BB10_11 Depth 3
                                        #       Child Loop BB10_21 Depth 3
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	addl	%edx, %ecx
	movzwl	%r9w, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movzwl	1772(%rdi), %ecx
	imull	%eax, %ecx
	movl	4576(%rdi), %eax
	addl	%ebx, %eax
	addl	%ecx, %eax
	movzwl	1768(%rdi), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%r12), %r14
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %ebp
	shrl	%cl, %ebp
	.align	16, 0x90
.LBB10_10:                              # %for.cond.59
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_11 Depth 3
                                        #       Child Loop BB10_21 Depth 3
	cmpl	%r15d, %ebx
	movl	%ebx, %eax
	movq	104(%rsp), %rdi         # 8-byte Reload
	jge	.LBB10_30
	.align	16, 0x90
.LBB10_11:                              # %land.rhs
                                        #   Parent Loop BB10_9 Depth=1
                                        #     Parent Loop BB10_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	(%r14), %bpl
	jne	.LBB10_12
# BB#13:                                # %do.body.72
                                        #   in Loop: Header=BB10_11 Depth=3
	incl	%r13d
	cmpl	1748(%rdi), %r13d
	jne	.LBB10_15
# BB#14:                                #   in Loop: Header=BB10_11 Depth=3
	movb	$-128, %bpl
	xorl	%r13d, %r13d
	movq	%r12, %rcx
	jmp	.LBB10_18
	.align	16, 0x90
.LBB10_15:                              # %if.else
                                        #   in Loop: Header=BB10_11 Depth=3
	shrb	%bpl
	leaq	1(%r14), %rcx
	testb	%bpl, %bpl
	cmovneq	%r14, %rcx
	movb	$-128, %dl
	je	.LBB10_17
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB10_11 Depth=3
	movb	%bpl, %dl
.LBB10_17:                              # %if.else
                                        #   in Loop: Header=BB10_11 Depth=3
	movb	%dl, %bpl
.LBB10_18:                              # %if.end.86
                                        #   in Loop: Header=BB10_11 Depth=3
	incl	%eax
	cmpl	%r15d, %eax
	movq	%rcx, %r14
	jl	.LBB10_11
	jmp	.LBB10_19
	.align	16, 0x90
.LBB10_12:                              #   in Loop: Header=BB10_10 Depth=2
	movq	%r14, %rcx
.LBB10_19:                              # %while.end
                                        #   in Loop: Header=BB10_10 Depth=2
	cmpl	%r15d, %eax
	je	.LBB10_30
# BB#20:                                # %do.body.96.preheader
                                        #   in Loop: Header=BB10_10 Depth=2
	movl	1748(%rdi), %edx
	leal	1(%rax), %esi
	movq	120(%rsp), %r8          # 8-byte Reload
	.align	16, 0x90
.LBB10_21:                              # %do.body.96
                                        #   Parent Loop BB10_9 Depth=1
                                        #     Parent Loop BB10_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%esi, %ebx
	incl	%r13d
	cmpl	%edx, %r13d
	jne	.LBB10_23
# BB#22:                                #   in Loop: Header=BB10_21 Depth=3
	movb	$-128, %bpl
	xorl	%r13d, %r13d
	movq	%r12, %r14
	jmp	.LBB10_26
	.align	16, 0x90
.LBB10_23:                              # %if.else.104
                                        #   in Loop: Header=BB10_21 Depth=3
	shrb	%bpl
	leaq	1(%rcx), %r14
	testb	%bpl, %bpl
	cmovneq	%rcx, %r14
	movb	$-128, %cl
	je	.LBB10_25
# BB#24:                                # %if.else.104
                                        #   in Loop: Header=BB10_21 Depth=3
	movb	%bpl, %cl
.LBB10_25:                              # %if.else.104
                                        #   in Loop: Header=BB10_21 Depth=3
	movb	%cl, %bpl
.LBB10_26:                              # %if.end.114
                                        #   in Loop: Header=BB10_21 Depth=3
	cmpl	%r15d, %ebx
	jge	.LBB10_28
# BB#27:                                # %land.rhs.122
                                        #   in Loop: Header=BB10_21 Depth=3
	leal	1(%rbx), %esi
	testb	(%r14), %bpl
	movq	%r14, %rcx
	jne	.LBB10_21
.LBB10_28:                              # %cleanup.141
                                        #   in Loop: Header=BB10_10 Depth=2
	movq	1728(%rdi), %rdi
	leal	(%r8,%rax), %edx
	movl	%ebx, %ecx
	subl	%eax, %ecx
	movl	280(%rsp), %esi
	movl	%esi, 72(%rsp)
	movl	272(%rsp), %esi
	movl	%esi, 64(%rsp)
	movl	264(%rsp), %esi
	movl	%esi, 56(%rsp)
	movl	256(%rsp), %esi
	movl	%esi, 48(%rsp)
	movl	%ecx, 32(%rsp)
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 24(%rsp)
	movl	%eax, 16(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$1, 40(%rsp)
	xorl	%r8d, %r8d
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	132(%rsp), %ecx         # 4-byte Reload
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	*1696(%rdi)
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB10_10
	jmp	.LBB10_29
	.align	16, 0x90
.LBB10_30:                              # %for.end
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	100(%rsp), %eax         # 4-byte Reload
	incl	%eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	cmpl	1752(%rdi), %eax
	jne	.LBB10_32
# BB#31:                                # %if.then.150
                                        #   in Loop: Header=BB10_9 Depth=1
	movq	1736(%rdi), %r12
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	jmp	.LBB10_33
	.align	16, 0x90
.LBB10_32:                              # %if.else.153
                                        #   in Loop: Header=BB10_9 Depth=1
	movslq	1744(%rdi), %rax
	addq	%rax, %r12
.LBB10_33:                              # %for.inc
                                        #   in Loop: Header=BB10_9 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	96(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	incl	%eax
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	jl	.LBB10_34
.LBB10_29:                              # %cleanup.169
	movl	%esi, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tile_clip_strip_copy_rop2, .Lfunc_end10-tile_clip_strip_copy_rop2
	.cfi_endproc

	.align	16, 0x90
	.type	tile_clip_copy_alpha_hl_color,@function
tile_clip_copy_alpha_hl_color:          # @tile_clip_copy_alpha_hl_color
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
	subq	$104, %rsp
.Ltmp99:
	.cfi_def_cfa_offset 160
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
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	176(%rsp), %eax
	movl	168(%rsp), %ecx
	movl	160(%rsp), %ebp
	movl	%ebp, %esi
	orl	%r9d, %esi
	js	.LBB11_2
# BB#1:
	movl	%ebp, %ebx
	jmp	.LBB11_5
.LBB11_2:                               # %if.then
	movl	%r9d, %esi
	sarl	$31, %esi
	andl	%r9d, %esi
	leal	(%rcx,%rsi), %ecx
	xorl	%ebx, %ebx
	testl	%r9d, %r9d
	cmovsl	%ebx, %r9d
	subl	%esi, %edx
	testl	%ebp, %ebp
	js	.LBB11_4
# BB#3:
	movl	%ebp, %ebx
	jmp	.LBB11_5
.LBB11_4:                               # %if.then.5
	addl	%ebp, %eax
	imull	84(%rsp), %ebp          # 4-byte Folded Reload
	movslq	%ebp, %rsi
	subq	%rsi, 96(%rsp)          # 8-byte Folded Spill
.LBB11_5:                               # %if.end.8
	movl	832(%rdi), %r15d
	movl	836(%rdi), %ebp
	subl	%r9d, %r15d
	cmpl	%r15d, %ecx
	cmovlel	%ecx, %r15d
	subl	%ebx, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	xorl	%esi, %esi
	testl	%r15d, %r15d
	jle	.LBB11_29
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB11_29
# BB#7:                                 # %do.end.26
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	4580(%rdi), %ecx
	leal	(%rcx,%rbx), %eax
	movzwl	1770(%rdi), %r8d
	cltd
	idivl	%r8d
	movl	%edx, 60(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	jle	.LBB11_29
# BB#8:                                 # %for.body.lr.ph
	movq	%rbx, %rdx
	addl	%edx, 56(%rsp)          # 4-byte Folded Spill
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movslq	1744(%rdi), %rax
	movslq	60(%rsp), %r12          # 4-byte Folded Reload
	imulq	%rax, %r12
	addq	1736(%rdi), %r12
	movl	%r9d, %ebx
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	addl	%ebx, %r15d
	movq	72(%rsp), %rax          # 8-byte Reload
	subl	%ebx, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movslq	84(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB11_9
	.align	16, 0x90
.LBB11_34:                              # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, 96(%rsp)          # 8-byte Folded Spill
	movl	4580(%rdi), %ecx
	movzwl	1770(%rdi), %r8d
	movl	52(%rsp), %ebx          # 4-byte Reload
	movq	%rax, %rdx
.LBB11_9:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
                                        #       Child Loop BB11_11 Depth 3
                                        #       Child Loop BB11_21 Depth 3
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	addl	%edx, %ecx
	movzwl	%r8w, %esi
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movzwl	1772(%rdi), %ecx
	imull	%eax, %ecx
	movl	4576(%rdi), %eax
	addl	%ebx, %eax
	addl	%ecx, %eax
	movzwl	1768(%rdi), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %r13d
	movl	%r13d, %eax
	sarl	$3, %eax
	cltq
	leaq	(%rax,%r12), %r14
	movb	%r13b, %cl
	andb	$7, %cl
	movl	$128, %ebp
	shrl	%cl, %ebp
	.align	16, 0x90
.LBB11_10:                              # %for.cond.59
                                        #   Parent Loop BB11_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_11 Depth 3
                                        #       Child Loop BB11_21 Depth 3
	cmpl	%r15d, %ebx
	movl	%ebx, %r9d
	movq	64(%rsp), %rdi          # 8-byte Reload
	jge	.LBB11_30
	.align	16, 0x90
.LBB11_11:                              # %land.rhs
                                        #   Parent Loop BB11_9 Depth=1
                                        #     Parent Loop BB11_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	(%r14), %bpl
	jne	.LBB11_12
# BB#13:                                # %do.body.72
                                        #   in Loop: Header=BB11_11 Depth=3
	incl	%r13d
	cmpl	1748(%rdi), %r13d
	jne	.LBB11_15
# BB#14:                                #   in Loop: Header=BB11_11 Depth=3
	movb	$-128, %bpl
	xorl	%r13d, %r13d
	movq	%r12, %rax
	jmp	.LBB11_18
	.align	16, 0x90
.LBB11_15:                              # %if.else
                                        #   in Loop: Header=BB11_11 Depth=3
	shrb	%bpl
	leaq	1(%r14), %rax
	testb	%bpl, %bpl
	cmovneq	%r14, %rax
	movb	$-128, %cl
	je	.LBB11_17
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB11_11 Depth=3
	movb	%bpl, %cl
.LBB11_17:                              # %if.else
                                        #   in Loop: Header=BB11_11 Depth=3
	movb	%cl, %bpl
.LBB11_18:                              # %if.end.86
                                        #   in Loop: Header=BB11_11 Depth=3
	incl	%r9d
	cmpl	%r15d, %r9d
	movq	%rax, %r14
	jl	.LBB11_11
	jmp	.LBB11_19
	.align	16, 0x90
.LBB11_12:                              #   in Loop: Header=BB11_10 Depth=2
	movq	%r14, %rax
.LBB11_19:                              # %while.end
                                        #   in Loop: Header=BB11_10 Depth=2
	cmpl	%r15d, %r9d
	je	.LBB11_30
# BB#20:                                # %do.body.96.preheader
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	1748(%rdi), %ecx
	leal	1(%r9), %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	88(%rsp), %r8           # 8-byte Reload
	.align	16, 0x90
.LBB11_21:                              # %do.body.96
                                        #   Parent Loop BB11_9 Depth=1
                                        #     Parent Loop BB11_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%edx, %ebx
	incl	%r13d
	cmpl	%ecx, %r13d
	jne	.LBB11_23
# BB#22:                                #   in Loop: Header=BB11_21 Depth=3
	movb	$-128, %bpl
	xorl	%r13d, %r13d
	movq	%r12, %r14
	jmp	.LBB11_26
	.align	16, 0x90
.LBB11_23:                              # %if.else.104
                                        #   in Loop: Header=BB11_21 Depth=3
	shrb	%bpl
	leaq	1(%rax), %r14
	testb	%bpl, %bpl
	cmovneq	%rax, %r14
	movb	$-128, %al
	je	.LBB11_25
# BB#24:                                # %if.else.104
                                        #   in Loop: Header=BB11_21 Depth=3
	movb	%bpl, %al
.LBB11_25:                              # %if.else.104
                                        #   in Loop: Header=BB11_21 Depth=3
	movb	%al, %bpl
.LBB11_26:                              # %if.end.114
                                        #   in Loop: Header=BB11_21 Depth=3
	cmpl	%r15d, %ebx
	jge	.LBB11_28
# BB#27:                                # %land.rhs.122
                                        #   in Loop: Header=BB11_21 Depth=3
	leal	1(%rbx), %edx
	testb	(%r14), %bpl
	movq	%r14, %rax
	jne	.LBB11_21
.LBB11_28:                              # %cleanup.141
                                        #   in Loop: Header=BB11_10 Depth=2
	movq	1728(%rdi), %rdi
	leal	(%rsi,%r9), %edx
	movl	%ebx, %eax
	subl	%r9d, %eax
	movl	192(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movq	184(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%r8d, %r8d
	movq	96(%rsp), %rsi          # 8-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	callq	*1712(%rdi)
	movl	%eax, %esi
	testl	%esi, %esi
	jns	.LBB11_10
	jmp	.LBB11_29
	.align	16, 0x90
.LBB11_30:                              # %for.end
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	60(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	cmpl	1752(%rdi), %eax
	jne	.LBB11_32
# BB#31:                                # %if.then.150
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	1736(%rdi), %r12
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB11_33
	.align	16, 0x90
.LBB11_32:                              # %if.else.153
                                        #   in Loop: Header=BB11_9 Depth=1
	movslq	1744(%rdi), %rax
	addq	%rax, %r12
.LBB11_33:                              # %for.inc
                                        #   in Loop: Header=BB11_9 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	56(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	incl	%eax
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	jl	.LBB11_34
.LBB11_29:                              # %cleanup.169
	movl	%esi, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tile_clip_copy_alpha_hl_color, .Lfunc_end11-tile_clip_copy_alpha_hl_color
	.cfi_endproc

	.type	gxclip2_dummy,@object   # @gxclip2_dummy
	.section	.rodata,"a",@progbits
	.globl	gxclip2_dummy
gxclip2_dummy:
	.byte	0                       # 0x0
	.size	gxclip2_dummy, 1

	.type	gs_tile_clip_device,@object # @gs_tile_clip_device
	.align	8
gs_tile_clip_device:
	.long	20968                   # 0x51e8
	.zero	4
	.quad	0
	.quad	.L.str.1
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
	.quad	.L.str.2
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
	.quad	tile_clip_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	tile_clip_copy_mono
	.quad	tile_clip_copy_color
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
	.quad	tile_clip_copy_alpha
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
	.quad	gx_default_strip_tile_rectangle
	.quad	tile_clip_strip_copy_rop
	.quad	gx_forward_get_clipping_box
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
	.quad	tile_clip_fill_rectangle_hl_color
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
	.quad	tile_clip_copy_planes
	.quad	0
	.quad	0
	.quad	tile_clip_strip_copy_rop2
	.quad	gx_default_strip_tile_rect_devn
	.quad	tile_clip_copy_alpha_hl_color
	.quad	0
	.quad	0
	.zero	48
	.zero	2792
	.zero	8
	.zero	16384
	.size	gs_tile_clip_device, 20968

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tile_clip_free(cdev)"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tile clipper"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
