	.text
	.file	"gdevabuf.bc"
	.globl	gs_make_mem_alpha_device
	.align	16, 0x90
	.type	gs_make_mem_alpha_device,@function
gs_make_mem_alpha_device:               # @gs_make_mem_alpha_device
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
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	%r15d, %edi
	callq	gdev_mem_device_for_bits
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rbp, %rdx
	movq	%r14, %r8
	callq	gs_make_mem_device
	leaq	96(%rbx), %rbp
	movl	$1, %edi
	callq	gdev_mem_device_for_bits
	leaq	96(%rax), %rsi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbp, %rdi
	callq	memcpy
	movw	%r15w, 108(%rbx)
	movl	1112(%r14), %eax
	movl	%eax, 1112(%rbx)
	movq	$mem_alpha_map_rgb_color, 1184(%rbx)
	movq	$mem_alpha_map_color_rgb, 1192(%rbx)
	movq	$mem_alpha_map_rgb_alpha_color, 1288(%rbx)
	movq	$mem_alpha_copy_alpha, 1312(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_make_mem_alpha_device, .Lfunc_end0-gs_make_mem_alpha_device
	.cfi_endproc

	.align	16, 0x90
	.type	mem_alpha_map_rgb_color,@function
mem_alpha_map_rgb_color:                # @mem_alpha_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gx_forward_map_rgb_color
	movq	%rax, %rcx
	incq	%rcx
	cmpq	$2, %rcx
	jb	.LBB1_2
# BB#1:                                 # %cond.false
	movb	2744(%rbx), %cl
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	cltq
.LBB1_2:                                # %cond.end
	popq	%rbx
	retq
.Lfunc_end1:
	.size	mem_alpha_map_rgb_color, .Lfunc_end1-mem_alpha_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem_alpha_map_color_rgb,@function
mem_alpha_map_color_rgb:                # @mem_alpha_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	setne	%al
	movzbl	%al, %esi
	jmp	gx_forward_map_color_rgb # TAILCALL
.Lfunc_end2:
	.size	mem_alpha_map_color_rgb, .Lfunc_end2-mem_alpha_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	mem_alpha_map_rgb_alpha_color,@function
mem_alpha_map_rgb_alpha_color:          # @mem_alpha_map_rgb_alpha_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movq	%rdi, %rbx
	movw	%si, 2(%rsp)
	movw	%dx, 4(%rsp)
	movw	%cx, 6(%rsp)
	leaq	2(%rsp), %rsi
	callq	gx_forward_map_rgb_color
	movq	%rax, %rcx
	incq	%rcx
	cmpq	$2, %rcx
	jb	.LBB3_2
# BB#1:                                 # %cond.false
	movzwl	%bp, %eax
	movl	$16, %ecx
	subl	2744(%rbx), %ecx
	shrl	%cl, %eax
	cltq
.LBB3_2:                                # %cond.end
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mem_alpha_map_rgb_alpha_color, .Lfunc_end3-mem_alpha_map_rgb_alpha_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem_alpha_copy_alpha,@function
mem_alpha_copy_alpha:                   # @mem_alpha_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%r9d, %r10d
	cmpq	$0, 32(%rsp)
	je	.LBB4_1
# BB#2:                                 # %cond.false
	movq	1224(%rdi), %rax
	movl	%r10d, %r9d
	jmpq	*%rax                   # TAILCALL
.LBB4_1:                                # %cond.true
	movl	24(%rsp), %r8d
	movl	16(%rsp), %ecx
	movl	8(%rsp), %edx
	movq	1200(%rdi), %r11
	xorl	%r9d, %r9d
	movl	%r10d, %esi
	jmpq	*%r11                   # TAILCALL
.Lfunc_end4:
	.size	mem_alpha_copy_alpha, .Lfunc_end4-mem_alpha_copy_alpha
	.cfi_endproc

	.globl	gs_make_mem_abuf_device
	.align	16, 0x90
	.type	gs_make_mem_abuf_device,@function
gs_make_mem_abuf_device:                # @gs_make_mem_abuf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 48
.Ltmp21:
	.cfi_offset %rbx, -48
.Ltmp22:
	.cfi_offset %r12, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movl	%r8d, %r12d
	movq	%rcx, %rbp
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$mem_alpha_buffer_device, %esi
	xorl	%ecx, %ecx
	movq	%rax, %rdx
	movq	%r14, %r8
	callq	gs_make_mem_device
	movb	4(%rbp), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 88(%rbx)
	movq	(%rbp), %rax
	movq	%rax, 2736(%rbx)
	movl	%r12d, %eax
	sarl	%eax
	movl	%eax, 2744(%rbx)
	movl	%r15d, 2748(%rbx)
	movq	$mem_abuf_close, 1176(%rbx)
	movq	$mem_abuf_get_clipping_box, 1432(%rbx)
	cmpl	$0, 48(%rsp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	$0, 2776(%rbx)
.LBB5_2:                                # %if.end
	movl	%r12d, 132(%rbx)
	movl	%r12d, 128(%rbx)
	movl	1112(%r14), %eax
	movl	%eax, 1112(%rbx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_make_mem_abuf_device, .Lfunc_end5-gs_make_mem_abuf_device
	.cfi_endproc

	.align	16, 0x90
	.type	mem_abuf_close,@function
mem_abuf_close:                         # @mem_abuf_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movb	2740(%rbx), %cl
	movl	$1, %r14d
	shll	%cl, %r14d
	cmpl	$0, 2756(%rbx)
	jle	.LBB6_5
# BB#1:                                 # %for.body.lr.ph.i
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	2752(%rbx), %esi
	addl	%ebp, %esi
	movq	%rbx, %rdi
	callq	abuf_flush_block
	testl	%eax, %eax
	js	.LBB6_4
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB6_3 Depth=1
	addl	%r14d, %ebp
	cmpl	2756(%rbx), %ebp
	jl	.LBB6_3
.LBB6_5:                                # %if.end
	movl	$0, 2760(%rbx)
	movl	$0, 2756(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	mem_close               # TAILCALL
.LBB6_4:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mem_abuf_close, .Lfunc_end6-mem_abuf_close
	.cfi_endproc

	.align	16, 0x90
	.type	mem_abuf_get_clipping_box,@function
mem_abuf_get_clipping_box:              # @mem_abuf_get_clipping_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 32
.Ltmp35:
	.cfi_offset %rbx, -24
.Ltmp36:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	callq	*1432(%rdi)
	movb	2736(%r14), %al
	movb	%al, %cl
	shll	%cl, (%rbx)
	movb	2740(%r14), %dl
	movb	%dl, %cl
	shll	%cl, 4(%rbx)
	movb	%al, %cl
	shll	%cl, 8(%rbx)
	movb	%dl, %cl
	shll	%cl, 12(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	mem_abuf_get_clipping_box, .Lfunc_end7-mem_abuf_get_clipping_box
	.cfi_endproc

	.globl	gs_device_is_abuf
	.align	16, 0x90
	.type	gs_device_is_abuf,@function
gs_device_is_abuf:                      # @gs_device_is_abuf
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str, %eax
	cmpq	%rax, 16(%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end8:
	.size	gs_device_is_abuf, .Lfunc_end8-gs_device_is_abuf
	.cfi_endproc

	.globl	alpha_buffer_bits
	.align	16, 0x90
	.type	alpha_buffer_bits,@function
alpha_buffer_bits:                      # @alpha_buffer_bits
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1872(%rax), %rdi
	movl	$.L.str, %ecx
	cmpq	%rcx, 16(%rdi)
	je	.LBB9_1
# BB#2:                                 # %if.end
	movq	1304(%rdi), %rcx
	cmpl	$0, 1848(%rax)
	sete	%al
	movzbl	%al, %esi
	jmpq	*%rcx                   # TAILCALL
.LBB9_1:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	alpha_buffer_bits, .Lfunc_end9-alpha_buffer_bits
	.cfi_endproc

	.align	16, 0x90
	.type	mem_abuf_fill_rectangle,@function
mem_abuf_fill_rectangle:                # @mem_abuf_fill_rectangle
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
	subq	$24, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 80
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
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	subl	2748(%rbx), %r12d
	movl	%r12d, %eax
	orl	%r15d, %eax
	jns	.LBB10_2
# BB#1:                                 # %if.then
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%r12d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r12d, %r12d
	cmovsl	%eax, %r12d
	movl	%r15d, %edx
	sarl	$31, %edx
	andl	%r15d, %edx
	addl	%edx, %r8d
	testl	%r15d, %r15d
	cmovsl	%eax, %r15d
.LBB10_2:                               # %do.body.8
	movl	832(%rbx), %ebp
	subl	%r12d, %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	movq	%r9, 2768(%rbx)
	movl	2740(%rbx), %ecx
	movl	2752(%rbx), %esi
	movl	$1, %r13d
	shll	%cl, %r13d
	movl	2756(%rbx), %eax
	cmpl	%r15d, %esi
	jg	.LBB10_4
# BB#3:                                 # %do.body.8
	leal	(%rax,%rsi), %edx
	cmpl	%r15d, %edx
	jge	.LBB10_11
.LBB10_4:                               # %if.then.i
	movl	%ecx, (%rsp)            # 4-byte Spill
	movl	%r8d, 4(%rsp)           # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB10_9
# BB#5:                                 # %for.body.i.i.preheader
	movq	%rbx, %rdi
	callq	abuf_flush_block
	testl	%eax, %eax
	js	.LBB10_10
# BB#6:
	movl	%r13d, %r14d
	.align	16, 0x90
.LBB10_7:                               # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	2756(%rbx), %r14d
	jge	.LBB10_9
# BB#8:                                 # %for.cond.i.for.body.i_crit_edge.i
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	2752(%rbx), %esi
	addl	%r14d, %esi
	movq	%rbx, %rdi
	callq	abuf_flush_block
	addl	%r13d, %r14d
	testl	%eax, %eax
	jns	.LBB10_7
	jmp	.LBB10_10
.LBB10_9:                               # %for.end.i.i
	movl	$0, 2760(%rbx)
	movl	$0, 2756(%rbx)
.LBB10_10:                              # %abuf_flush.exit.i
	movl	%r13d, %eax
	negl	%eax
	andl	%r15d, %eax
	movl	%eax, 2752(%rbx)
	movl	%r13d, 2756(%rbx)
	movq	2576(%rbx), %rax
	movq	(%rax), %rdi
	movl	1736(%rbx), %edx
	movl	(%rsp), %ecx            # 4-byte Reload
	shll	%cl, %edx
	xorl	%esi, %esi
	callq	memset
	movl	4(%rsp), %r8d           # 4-byte Reload
.LBB10_11:                              # %y_transfer_init.exit
	movl	%r15d, 8(%rsp)
	movl	%r8d, 12(%rsp)
	movl	$0, 20(%rsp)
	testl	%r8d, %r8d
	jle	.LBB10_15
# BB#12:                                # %while.body.lr.ph
	movq	mem_mono_device+1200(%rip), %r15
	leaq	8(%rsp), %r14
	.align	16, 0x90
.LBB10_13:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	y_transfer_next
	testl	%eax, %eax
	js	.LBB10_16
# BB#14:                                # %cleanup.thread
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	16(%rsp), %edx
	movl	20(%rsp), %r8d
	movl	$1, %r9d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%ebp, %ecx
	callq	*%r15
	cmpl	$0, 12(%rsp)
	jg	.LBB10_13
.LBB10_15:
	xorl	%eax, %eax
.LBB10_16:                              # %cleanup.22
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mem_abuf_fill_rectangle, .Lfunc_end10-mem_abuf_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_abuf_copy_mono,@function
mem_abuf_copy_mono:                     # @mem_abuf_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 144
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	cmpq	$-1, 168(%rsp)
	movl	$-23, %ebx
	jne	.LBB11_21
# BB#1:                                 # %entry
	movq	176(%rsp), %r8
	cmpq	$-1, %r8
	je	.LBB11_21
# BB#2:                                 # %if.end
	movl	160(%rsp), %r10d
	movl	152(%rsp), %ecx
	movl	144(%rsp), %edi
	subl	2748(%rbp), %r9d
	movl	%r9d, %esi
	orl	%edi, %esi
	js	.LBB11_4
# BB#3:
	movl	%r9d, %eax
	movl	%edi, %r14d
	jmp	.LBB11_7
.LBB11_4:                               # %if.then.3
	movl	%r9d, %esi
	sarl	$31, %esi
	xorl	%r14d, %r14d
	testl	%r9d, %r9d
	movl	%r9d, %eax
	cmovsl	%r14d, %eax
	andl	%r9d, %esi
	leal	(%rcx,%rsi), %ecx
	subl	%esi, %edx
	testl	%edi, %edi
	js	.LBB11_6
# BB#5:
	movl	%edi, %r14d
	jmp	.LBB11_7
.LBB11_6:                               # %if.then.9
	addl	%edi, %r10d
	imull	%r13d, %edi
	movslq	%edi, %rsi
	subq	%rsi, 64(%rsp)          # 8-byte Folded Spill
.LBB11_7:                               # %if.end.12
	movl	832(%rbp), %r12d
	subl	%eax, %r12d
	cmpl	%r12d, %ecx
	cmovlel	%ecx, %r12d
	xorl	%ebx, %ebx
	testl	%r10d, %r10d
	jle	.LBB11_21
# BB#8:                                 # %if.end.12
	movl	%edx, 56(%rsp)          # 4-byte Spill
	testl	%r12d, %r12d
	jle	.LBB11_21
# BB#9:                                 # %if.end.23
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	%r8, 2768(%rbp)
	movl	2740(%rbp), %ecx
	movl	2752(%rbp), %esi
	movl	$1, %r15d
	shll	%cl, %r15d
	movl	2756(%rbp), %eax
	cmpl	%r14d, %esi
	jg	.LBB11_11
# BB#10:                                # %if.end.23
	leal	(%rax,%rsi), %edx
	cmpl	%r14d, %edx
	jge	.LBB11_18
.LBB11_11:                              # %if.then.i
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%r10d, 48(%rsp)         # 4-byte Spill
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB11_16
# BB#12:                                # %for.body.i.i.preheader
	movq	%rbp, %rdi
	callq	abuf_flush_block
	testl	%eax, %eax
	js	.LBB11_17
# BB#13:
	movl	%r15d, %r14d
	.align	16, 0x90
.LBB11_14:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	2756(%rbp), %r14d
	jge	.LBB11_16
# BB#15:                                # %for.cond.i.for.body.i_crit_edge.i
                                        #   in Loop: Header=BB11_14 Depth=1
	movl	2752(%rbp), %esi
	addl	%r14d, %esi
	movq	%rbp, %rdi
	callq	abuf_flush_block
	addl	%r15d, %r14d
	testl	%eax, %eax
	jns	.LBB11_14
	jmp	.LBB11_17
.LBB11_16:                              # %for.end.i.i
	movl	$0, 2760(%rbp)
	movl	$0, 2756(%rbp)
.LBB11_17:                              # %abuf_flush.exit.i
	movl	%r15d, %eax
	negl	%eax
	movl	52(%rsp), %r14d         # 4-byte Reload
	andl	%r14d, %eax
	movl	%eax, 2752(%rbp)
	movl	%r15d, 2756(%rbp)
	movq	2576(%rbp), %rax
	movq	(%rax), %rdi
	movl	1736(%rbp), %edx
	movl	44(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %edx
	xorl	%esi, %esi
	callq	memset
	movl	48(%rsp), %r10d         # 4-byte Reload
.LBB11_18:                              # %y_transfer_init.exit
	movl	%r14d, 72(%rsp)
	movl	%r10d, 76(%rsp)
	movl	$0, 84(%rsp)
	testl	%r10d, %r10d
	movl	56(%rsp), %r15d         # 4-byte Reload
	jle	.LBB11_21
	.align	16, 0x90
.LBB11_19:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	72(%rsp), %rdi
	movq	%rbp, %rsi
	callq	y_transfer_next
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB11_21
# BB#20:                                # %cleanup.thread
                                        #   in Loop: Header=BB11_19 Depth=1
	movl	72(%rsp), %eax
	movl	80(%rsp), %ecx
	subl	%r14d, %eax
	imull	%r13d, %eax
	cltq
	movq	64(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %rsi
	movl	84(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	$1, 32(%rsp)
	movq	$-1, 24(%rsp)
	xorl	%ebx, %ebx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movl	%r15d, %edx
	movl	%r13d, %ecx
	movl	60(%rsp), %r9d          # 4-byte Reload
	callq	*mem_mono_device+1216(%rip)
	cmpl	$0, 76(%rsp)
	jg	.LBB11_19
.LBB11_21:                              # %cleanup.33
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mem_abuf_copy_mono, .Lfunc_end11-mem_abuf_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_abuf_fill_rectangle_hl_color,@function
mem_abuf_fill_rectangle_hl_color:       # @mem_abuf_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 80
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	(%rsi), %r14d
	movl	4(%rsi), %r12d
	sarl	$8, %r14d
	sarl	$8, %r12d
	movl	8(%rsi), %eax
	sarl	$8, %eax
	subl	%r14d, %eax
	movl	12(%rsi), %edx
	sarl	$8, %edx
	movl	%edx, %edi
	subl	%r12d, %edi
	subl	2748(%rbx), %r14d
	movl	%r14d, %esi
	orl	%r12d, %esi
	jns	.LBB12_2
# BB#1:                                 # %if.then
	movl	%r14d, %esi
	sarl	$31, %esi
	xorl	%r8d, %r8d
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	cmovsl	%r8d, %ebp
	andl	%r14d, %esi
	addl	%esi, %eax
	testl	%r12d, %r12d
	cmovsl	%r8d, %r12d
	cmovsl	%edx, %edi
	movl	%ebp, %r14d
.LBB12_2:                               # %do.body.19
	movl	832(%rbx), %ebp
	subl	%r14d, %ebp
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	movq	%rcx, 2776(%rbx)
	movl	2740(%rbx), %ecx
	movl	2752(%rbx), %esi
	movl	$1, %r13d
	shll	%cl, %r13d
	movl	2756(%rbx), %eax
	cmpl	%r12d, %esi
	jg	.LBB12_4
# BB#3:                                 # %do.body.19
	leal	(%rax,%rsi), %edx
	cmpl	%r12d, %edx
	jge	.LBB12_11
.LBB12_4:                               # %if.then.i
	movl	%ecx, (%rsp)            # 4-byte Spill
	movl	%edi, 4(%rsp)           # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB12_9
# BB#5:                                 # %for.body.i.i.preheader
	movq	%rbx, %rdi
	callq	abuf_flush_block
	testl	%eax, %eax
	js	.LBB12_10
# BB#6:
	movl	%r13d, %r15d
	.align	16, 0x90
.LBB12_7:                               # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	2756(%rbx), %r15d
	jge	.LBB12_9
# BB#8:                                 # %for.cond.i.for.body.i_crit_edge.i
                                        #   in Loop: Header=BB12_7 Depth=1
	movl	2752(%rbx), %esi
	addl	%r15d, %esi
	movq	%rbx, %rdi
	callq	abuf_flush_block
	addl	%r13d, %r15d
	testl	%eax, %eax
	jns	.LBB12_7
	jmp	.LBB12_10
.LBB12_9:                               # %for.end.i.i
	movl	$0, 2760(%rbx)
	movl	$0, 2756(%rbx)
.LBB12_10:                              # %abuf_flush.exit.i
	movl	%r13d, %eax
	negl	%eax
	andl	%r12d, %eax
	movl	%eax, 2752(%rbx)
	movl	%r13d, 2756(%rbx)
	movq	2576(%rbx), %rax
	movq	(%rax), %rdi
	movl	1736(%rbx), %edx
	movl	(%rsp), %ecx            # 4-byte Reload
	shll	%cl, %edx
	xorl	%esi, %esi
	callq	memset
	movl	4(%rsp), %edi           # 4-byte Reload
.LBB12_11:                              # %y_transfer_init.exit
	movl	%r12d, 8(%rsp)
	movl	%edi, 12(%rsp)
	movl	$0, 20(%rsp)
	testl	%edi, %edi
	jle	.LBB12_15
# BB#12:                                # %while.body.lr.ph
	movq	mem_mono_device+1200(%rip), %r12
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB12_13:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	y_transfer_next
	testl	%eax, %eax
	js	.LBB12_16
# BB#14:                                # %cleanup.thread
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	16(%rsp), %edx
	movl	20(%rsp), %r8d
	movl	$1, %r9d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%ebp, %ecx
	callq	*%r12
	cmpl	$0, 12(%rsp)
	jg	.LBB12_13
.LBB12_15:
	xorl	%eax, %eax
.LBB12_16:                              # %cleanup.33
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	mem_abuf_fill_rectangle_hl_color, .Lfunc_end12-mem_abuf_fill_rectangle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	y_transfer_next,@function
y_transfer_next:                        # @y_transfer_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 80
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	2752(%rbx), %esi
	movl	2756(%rbx), %ebp
	movl	2760(%rbx), %edi
	movl	(%r14), %r12d
	addl	12(%r14), %r12d
	movl	%r12d, (%r14)
	movl	4(%r14), %r13d
	movl	2740(%rbx), %ecx
	movl	$1, %r15d
	shll	%cl, %r15d
	leal	(%rbp,%rsi), %eax
	cmpl	%eax, %r12d
	jne	.LBB13_6
# BB#1:                                 # %if.then
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	cmpl	836(%rbx), %ebp
	jne	.LBB13_4
# BB#2:                                 # %if.then.3
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	callq	abuf_flush_block
	testl	%eax, %eax
	js	.LBB13_10
# BB#3:                                 # %cleanup.thread
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r15), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%eax, 2752(%rbx)
	movq	8(%rsp), %rax           # 8-byte Reload
	leal	(%rax,%r15), %eax
	xorl	%esi, %esi
	cmpl	%ebp, %eax
	cmovnel	%eax, %esi
	movl	%esi, 2760(%rbx)
	movl	4(%rsp), %ecx           # 4-byte Reload
	jmp	.LBB13_5
.LBB13_4:                               # %if.else
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	leal	(%rbp,%r15), %ebp
	movl	%ebp, 2756(%rbx)
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB13_5:                               # %if.end.16
	testl	%esi, %esi
	movl	%esi, %eax
	cmovel	%ebp, %eax
	subl	%r15d, %eax
	cltq
	movq	2576(%rbx), %rdx
	movq	(%rdx,%rax,8), %rdi
	movl	1736(%rbx), %edx
	shll	%cl, %edx
	movq	%rsi, %r15
	xorl	%esi, %esi
	callq	memset
	movq	%r15, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
.LBB13_6:                               # %if.end.19
	subl	%esi, %r12d
	leal	(%r12,%rdi), %ecx
	movl	836(%rbx), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	jge	.LBB13_8
# BB#7:                                 # %if.then.25
	subl	%edi, %eax
	cmpl	%ebp, %eax
	cmovgl	%ebp, %eax
	subl	%r12d, %eax
	jmp	.LBB13_9
.LBB13_8:                               # %if.else.34
	addl	%edi, %ebp
	subl	%eax, %ebp
	subl	%edx, %ebp
	movl	%edx, %ecx
	movl	%ebp, %eax
.LBB13_9:                               # %do.end
	cmpl	%r13d, %eax
	cmovgl	%r13d, %eax
	subl	%eax, %r13d
	movl	%r13d, 4(%r14)
	movl	%ecx, 8(%r14)
	movl	%eax, 12(%r14)
	xorl	%eax, %eax
.LBB13_10:                              # %cleanup.49
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	y_transfer_next, .Lfunc_end13-y_transfer_next
	.cfi_endproc

	.align	16, 0x90
	.type	abuf_flush_block,@function
abuf_flush_block:                       # @abuf_flush_block
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 144
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	1728(%rbx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	2736(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movb	2740(%rbx), %cl
	movl	$1, %edx
	movl	$1, %r14d
	shll	%cl, %r14d
	movb	2744(%rbx), %al
	movb	%al, %cl
	shll	%cl, %edx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movb	2736(%rbx), %cl
	movl	832(%rbx), %r13d
	movl	836(%rbx), %edx
	sarl	%cl, %r13d
	movb	%al, %cl
	shll	%cl, %r13d
	addl	$63, %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
	movl	%r15d, %eax
	subl	2752(%rbx), %eax
	addl	2760(%rbx), %eax
	xorl	%ecx, %ecx
	cmpl	%edx, %eax
	cmovgel	%edx, %ecx
	subl	%ecx, %eax
	cltq
	movq	2576(%rbx), %rcx
	movq	(%rcx,%rax,8), %r12
	movl	1736(%rbx), %edx
	leaq	72(%rsp), %rcx
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	bits_bounding_box
	movl	72(%rsp), %esi
	andl	$-8, %esi
	movl	%esi, 72(%rsp)
	movl	80(%rsp), %ebp
	addl	$7, %ebp
	andl	$-8, %ebp
	movl	%ebp, 80(%rsp)
	subl	%esi, %ebp
	movl	1736(%rbx), %r8d
	movl	2744(%rbx), %eax
	movl	%eax, 16(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r13d, (%rsp)
	movq	%r12, %rdi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	movq	%r12, %r9
	callq	bits_compress_scaled
	movq	2776(%rbx), %rsi
	movl	2748(%rbx), %r9d
	testq	%rsi, %rsi
	je	.LBB14_1
# BB#2:                                 # %if.else
	addl	72(%rsp), %r9d
	movb	2736(%rbx), %al
	movb	2740(%rbx), %dl
	movb	%al, %cl
	sarl	%cl, %r9d
	movb	%dl, %cl
	sarl	%cl, %r15d
	movb	%al, %cl
	sarl	%cl, %ebp
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%r15d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movl	%r13d, %ecx
	callq	*1712(%rdi)
	jmp	.LBB14_3
.LBB14_1:                               # %if.then.30
	addl	72(%rsp), %r9d
	movb	2736(%rbx), %al
	movb	2740(%rbx), %dl
	movb	%al, %cl
	sarl	%cl, %r9d
	movb	%dl, %cl
	sarl	%cl, %r15d
	movb	%al, %cl
	sarl	%cl, %ebp
	movq	2768(%rbx), %rax
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%r15d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movl	%r13d, %ecx
	callq	*1312(%rdi)
.LBB14_3:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	abuf_flush_block, .Lfunc_end14-abuf_flush_block
	.cfi_endproc

	.type	mem_alpha_buffer_device,@object # @mem_alpha_buffer_device
	.section	.rodata,"a",@progbits
	.align	8
mem_alpha_buffer_device:
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
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
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
	.quad	gx_forward_map_rgb_color
	.quad	gx_forward_map_color_rgb
	.quad	mem_abuf_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_abuf_copy_mono
	.quad	gx_default_copy_color
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
	.quad	gx_no_strip_copy_rop
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
	.quad	mem_abuf_fill_rectangle_hl_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
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
	.size	mem_alpha_buffer_device, 2792

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image(alpha buffer)"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
