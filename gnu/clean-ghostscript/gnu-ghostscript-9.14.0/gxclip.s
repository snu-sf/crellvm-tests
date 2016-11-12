	.text
	.file	"gxclip.bc"
	.globl	gx_make_clip_device_on_stack
	.align	16, 0x90
	.type	gx_make_clip_device_on_stack,@function
gx_make_clip_device_on_stack:           # @gx_make_clip_device_on_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
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
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	24(%rbx), %rdx
	movl	$gs_clip_device, %esi
	callq	gx_device_init_on_stack
	movq	%r14, %rdi
	callq	gx_cpath_list
	movups	64(%rax), %xmm0
	movq	%r15, %rdi
	movups	%xmm0, 1800(%rdi)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movups	%xmm3, 1784(%rdi)
	movups	%xmm2, 1768(%rdi)
	movups	%xmm1, 1752(%rdi)
	movups	%xmm0, 1736(%rdi)
	movq	$0, 1824(%rdi)
	movl	884(%rbx), %eax
	movl	%eax, 884(%rdi)
	movl	888(%rbx), %eax
	movl	%eax, 888(%rdi)
	movl	1048(%rbx), %eax
	movl	%eax, 1048(%rdi)
	movups	984(%rbx), %xmm0
	movups	1000(%rbx), %xmm1
	movups	1016(%rbx), %xmm2
	movups	1032(%rbx), %xmm3
	movups	%xmm3, 1032(%rdi)
	movups	%xmm2, 1016(%rdi)
	movups	%xmm1, 1000(%rdi)
	movups	%xmm0, 984(%rdi)
	movq	%rbx, 1728(%rdi)
	movl	840(%rbx), %eax
	movl	%eax, 840(%rdi)
	movl	844(%rbx), %eax
	movl	%eax, 844(%rdi)
	movl	848(%rbx), %eax
	movl	%eax, 848(%rdi)
	movl	1112(%rbx), %eax
	movl	%eax, 1112(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*1144(%rdi)             # TAILCALL
.Lfunc_end0:
	.size	gx_make_clip_device_on_stack, .Lfunc_end0-gx_make_clip_device_on_stack
	.cfi_endproc

	.globl	gx_make_clip_device_on_stack_if_needed
	.align	16, 0x90
	.type	gx_make_clip_device_on_stack_if_needed,@function
gx_make_clip_device_on_stack_if_needed: # @gx_make_clip_device_on_stack_if_needed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	(%rcx), %edx
	movl	252(%r15), %eax
	cmpl	%eax, %edx
	jge	.LBB1_2
# BB#1:                                 # %if.then
	movl	%eax, (%rcx)
	movl	%eax, %edx
.LBB1_2:                                # %if.end
	movl	8(%rcx), %r8d
	movl	260(%r15), %eax
	cmpl	%eax, %r8d
	jle	.LBB1_4
# BB#3:                                 # %if.then.13
	movl	%eax, 8(%rcx)
	movl	%eax, %r8d
.LBB1_4:                                # %if.end.19
	movl	4(%rcx), %edi
	movl	256(%r15), %eax
	cmpl	%eax, %edi
	jge	.LBB1_6
# BB#5:                                 # %if.then.25
	movl	%eax, 4(%rcx)
	movl	%eax, %edi
.LBB1_6:                                # %if.end.31
	movl	12(%rcx), %esi
	movl	264(%r15), %eax
	cmpl	%eax, %esi
	jle	.LBB1_8
# BB#7:                                 # %if.then.38
	movl	%eax, 12(%rcx)
	movl	%eax, %esi
.LBB1_8:                                # %if.end.44
	cmpl	%edx, 236(%r15)
	jg	.LBB1_13
# BB#9:                                 # %land.lhs.true
	cmpl	%edi, 240(%r15)
	jg	.LBB1_13
# BB#10:                                # %land.lhs.true.56
	cmpl	%r8d, 244(%r15)
	jl	.LBB1_13
# BB#11:                                # %land.lhs.true.63
	cmpl	%esi, 248(%r15)
	jge	.LBB1_12
.LBB1_13:                               # %if.else
	xorl	%eax, %eax
	cmpl	%r8d, %edx
	jge	.LBB1_16
# BB#14:                                # %if.else
	cmpl	%esi, %edi
	jge	.LBB1_16
# BB#15:                                # %if.end.83
	movq	24(%r14), %rdx
	movl	$gs_clip_device, %esi
	movq	%rbx, %rdi
	callq	gx_device_init_on_stack
	movq	%r15, %rdi
	callq	gx_cpath_list
	movups	64(%rax), %xmm0
	movups	%xmm0, 1800(%rbx)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movups	%xmm3, 1784(%rbx)
	movups	%xmm2, 1768(%rbx)
	movups	%xmm1, 1752(%rbx)
	movups	%xmm0, 1736(%rbx)
	movq	$0, 1824(%rbx)
	movl	884(%r14), %eax
	movl	%eax, 884(%rbx)
	movl	888(%r14), %eax
	movl	%eax, 888(%rbx)
	movl	1048(%r14), %eax
	movl	%eax, 1048(%rbx)
	movups	984(%r14), %xmm0
	movups	1000(%r14), %xmm1
	movups	1016(%r14), %xmm2
	movups	1032(%r14), %xmm3
	movups	%xmm3, 1032(%rbx)
	movups	%xmm2, 1016(%rbx)
	movups	%xmm1, 1000(%rbx)
	movups	%xmm0, 984(%rbx)
	movq	%r14, 1728(%rbx)
	movl	840(%r14), %eax
	movl	%eax, 840(%rbx)
	movl	844(%r14), %eax
	movl	%eax, 844(%rbx)
	movl	848(%r14), %eax
	movl	%eax, 848(%rbx)
	movl	1112(%r14), %eax
	movl	%eax, 1112(%rbx)
	movq	%rbx, %rdi
	callq	*1144(%rbx)
	movq	%rbx, %rax
.LBB1_16:                               # %return
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB1_12:
	movq	%r14, %rax
	jmp	.LBB1_16
.Lfunc_end1:
	.size	gx_make_clip_device_on_stack_if_needed, .Lfunc_end1-gx_make_clip_device_on_stack_if_needed
	.cfi_endproc

	.globl	gx_make_clip_device_in_heap
	.align	16, 0x90
	.type	gx_make_clip_device_in_heap,@function
gx_make_clip_device_in_heap:            # @gx_make_clip_device_in_heap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rcx, %rax
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$gs_clip_device, %esi
	movl	$1, %ecx
	movq	%rax, %rdx
	callq	gx_device_init
	movq	%r14, %rdi
	callq	gx_cpath_list
	movups	64(%rax), %xmm0
	movq	%r15, %rdi
	movups	%xmm0, 1800(%rdi)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movups	%xmm3, 1784(%rdi)
	movups	%xmm2, 1768(%rdi)
	movups	%xmm1, 1752(%rdi)
	movups	%xmm0, 1736(%rdi)
	movq	$0, 1824(%rdi)
	movl	884(%rbx), %eax
	movl	%eax, 884(%rdi)
	movl	888(%rbx), %eax
	movl	%eax, 888(%rdi)
	movl	1048(%rbx), %eax
	movl	%eax, 1048(%rdi)
	movups	984(%rbx), %xmm0
	movups	1000(%rbx), %xmm1
	movups	1016(%rbx), %xmm2
	movups	1032(%rbx), %xmm3
	movups	%xmm3, 1032(%rdi)
	movups	%xmm2, 1016(%rdi)
	movups	%xmm1, 1000(%rdi)
	movups	%xmm0, 984(%rdi)
	movl	840(%rbx), %eax
	movl	%eax, 840(%rdi)
	movl	844(%rbx), %eax
	movl	%eax, 844(%rdi)
	movl	848(%rbx), %eax
	movl	%eax, 848(%rdi)
	movq	%rdi, %r14
	movq	%rbx, %rsi
	callq	gx_device_set_target
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gx_device_retain
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*1144(%rdi)             # TAILCALL
.Lfunc_end2:
	.size	gx_make_clip_device_in_heap, .Lfunc_end2-gx_make_clip_device_in_heap
	.cfi_endproc

	.globl	clip_call_fill_rectangle
	.align	16, 0x90
	.type	clip_call_fill_rectangle,@function
clip_call_fill_rectangle:               # @clip_call_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	24(%rdi), %r9
	movq	1200(%rax), %r11
	subl	%esi, %ecx
	subl	%edx, %r8d
	movq	%rax, %rdi
	jmpq	*%r11                   # TAILCALL
.Lfunc_end3:
	.size	clip_call_fill_rectangle, .Lfunc_end3-clip_call_fill_rectangle
	.cfi_endproc

	.globl	clip_call_fill_rectangle_hl_color
	.align	16, 0x90
	.type	clip_call_fill_rectangle_hl_color,@function
clip_call_fill_rectangle_hl_color:      # @clip_call_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 32
	movd	%r8d, %xmm0
	movd	%edx, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%ecx, %xmm0
	movd	%esi, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pslld	$8, %xmm2
	movdqa	%xmm2, (%rsp)
	movq	152(%rdi), %rdx
	movq	(%rdi), %rax
	movq	80(%rdi), %rcx
	movq	96(%rdi), %r8
	leaq	(%rsp), %rsi
	movq	%rax, %rdi
	callq	*1576(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end4:
	.size	clip_call_fill_rectangle_hl_color, .Lfunc_end4-clip_call_fill_rectangle_hl_color
	.cfi_endproc

	.globl	clip_call_copy_mono
	.align	16, 0x90
	.type	clip_call_copy_mono,@function
clip_call_copy_mono:                    # @clip_call_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 64
.Ltmp21:
	.cfi_offset %rbx, -16
	movl	%esi, %r10d
	movl	%edx, %esi
	subl	12(%rdi), %esi
	movl	68(%rdi), %r9d
	imull	%r9d, %esi
	addq	40(%rdi), %rsi
	movl	64(%rdi), %eax
	addl	%r10d, %eax
	subl	8(%rdi), %eax
	subl	%r10d, %ecx
	subl	%edx, %r8d
	movq	(%rdi), %r11
	movq	24(%rdi), %rbx
	movq	32(%rdi), %rdi
	movq	%rdi, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, (%rsp)
	xorl	%r8d, %r8d
	movq	%r11, %rdi
	movl	%eax, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	callq	*1216(%r11)
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	clip_call_copy_mono, .Lfunc_end5-clip_call_copy_mono
	.cfi_endproc

	.globl	clip_call_copy_planes
	.align	16, 0x90
	.type	clip_call_copy_planes,@function
clip_call_copy_planes:                  # @clip_call_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp22:
	.cfi_def_cfa_offset 48
	movl	%esi, %r11d
	movq	(%rdi), %r10
	movl	%edx, %esi
	subl	12(%rdi), %esi
	movl	68(%rdi), %r9d
	imull	%r9d, %esi
	addq	40(%rdi), %rsi
	movl	64(%rdi), %eax
	addl	%r11d, %eax
	subl	8(%rdi), %eax
	subl	%r11d, %ecx
	subl	%edx, %r8d
	movl	144(%rdi), %edi
	movl	%edi, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, (%rsp)
	xorl	%r8d, %r8d
	movq	%r10, %rdi
	movl	%eax, %edx
	movl	%r9d, %ecx
	movl	%r11d, %r9d
	callq	*1672(%r10)
	addq	$40, %rsp
	retq
.Lfunc_end6:
	.size	clip_call_copy_planes, .Lfunc_end6-clip_call_copy_planes
	.cfi_endproc

	.globl	clip_call_copy_color
	.align	16, 0x90
	.type	clip_call_copy_color,@function
clip_call_copy_color:                   # @clip_call_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 32
	movl	%esi, %r11d
	movq	(%rdi), %r10
	movl	%edx, %esi
	subl	12(%rdi), %esi
	movl	68(%rdi), %r9d
	imull	%r9d, %esi
	addq	40(%rdi), %rsi
	movl	64(%rdi), %eax
	addl	%r11d, %eax
	subl	8(%rdi), %eax
	subl	%r11d, %ecx
	subl	%edx, %r8d
	movl	%r8d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, (%rsp)
	xorl	%r8d, %r8d
	movq	%r10, %rdi
	movl	%eax, %edx
	movl	%r9d, %ecx
	movl	%r11d, %r9d
	callq	*1224(%r10)
	addq	$24, %rsp
	retq
.Lfunc_end7:
	.size	clip_call_copy_color, .Lfunc_end7-clip_call_copy_color
	.cfi_endproc

	.globl	clip_call_copy_alpha
	.align	16, 0x90
	.type	clip_call_copy_alpha,@function
clip_call_copy_alpha:                   # @clip_call_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 64
.Ltmp26:
	.cfi_offset %rbx, -16
	movl	%esi, %r10d
	movl	%edx, %esi
	subl	12(%rdi), %esi
	movl	68(%rdi), %r9d
	imull	%r9d, %esi
	addq	40(%rdi), %rsi
	movl	64(%rdi), %eax
	addl	%r10d, %eax
	subl	8(%rdi), %eax
	subl	%r10d, %ecx
	subl	%edx, %r8d
	movq	(%rdi), %r11
	movq	24(%rdi), %rbx
	movl	72(%rdi), %edi
	movl	%edi, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, (%rsp)
	xorl	%r8d, %r8d
	movq	%r11, %rdi
	movl	%eax, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	callq	*1312(%r11)
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end8:
	.size	clip_call_copy_alpha, .Lfunc_end8-clip_call_copy_alpha
	.cfi_endproc

	.globl	clip_call_copy_alpha_hl_color
	.align	16, 0x90
	.type	clip_call_copy_alpha_hl_color,@function
clip_call_copy_alpha_hl_color:          # @clip_call_copy_alpha_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 64
.Ltmp29:
	.cfi_offset %rbx, -16
	movl	%esi, %r9d
	movq	%rdi, %rax
	movq	(%rax), %rdi
	movl	%edx, %esi
	subl	12(%rax), %esi
	movl	68(%rax), %r10d
	imull	%r10d, %esi
	addq	40(%rax), %rsi
	movl	64(%rax), %r11d
	addl	%r9d, %r11d
	subl	8(%rax), %r11d
	subl	%r9d, %ecx
	subl	%edx, %r8d
	movq	80(%rax), %rbx
	movl	72(%rax), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, (%rsp)
	xorl	%r8d, %r8d
	movl	%r11d, %edx
	movl	%r10d, %ecx
	callq	*1712(%rdi)
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	clip_call_copy_alpha_hl_color, .Lfunc_end9-clip_call_copy_alpha_hl_color
	.cfi_endproc

	.globl	clip_call_fill_mask
	.align	16, 0x90
	.type	clip_call_fill_mask,@function
clip_call_fill_mask:                    # @clip_call_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 80
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%ecx, %r10d
	movl	%esi, %r9d
	movq	%rdi, %rax
	movq	(%rax), %rdi
	movl	%edx, %esi
	subl	12(%rax), %esi
	movl	68(%rax), %ecx
	imull	%ecx, %esi
	addq	40(%rax), %rsi
	movl	64(%rax), %r11d
	addl	%r9d, %r11d
	subl	8(%rax), %r11d
	subl	%r9d, %r10d
	subl	%edx, %r8d
	movq	80(%rax), %rbx
	movl	72(%rax), %ebp
	movl	88(%rax), %eax
	movl	%eax, 40(%rsp)
	movl	%ebp, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	movl	%edx, (%rsp)
	movq	$0, 48(%rsp)
	xorl	%r8d, %r8d
	movl	%r11d, %edx
	callq	*1352(%rdi)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	clip_call_fill_mask, .Lfunc_end10-clip_call_fill_mask
	.cfi_endproc

	.globl	clip_call_strip_tile_rect_devn
	.align	16, 0x90
	.type	clip_call_strip_tile_rect_devn,@function
clip_call_strip_tile_rect_devn:         # @clip_call_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 48
.Ltmp37:
	.cfi_offset %rbx, -16
	movl	%r8d, %r9d
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	104(%rdi), %rsi
	subl	%edx, %eax
	subl	%ecx, %r9d
	movq	(%rdi), %r10
	movq	48(%rdi), %r8
	movq	56(%rdi), %r11
	movl	112(%rdi), %ebx
	movl	116(%rdi), %edi
	movl	%edi, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r8, (%rsp)
	movq	%r10, %rdi
	movl	%eax, %r8d
	callq	*1704(%r10)
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end11:
	.size	clip_call_strip_tile_rect_devn, .Lfunc_end11-clip_call_strip_tile_rect_devn
	.cfi_endproc

	.globl	clip_call_strip_tile_rectangle
	.align	16, 0x90
	.type	clip_call_strip_tile_rectangle,@function
clip_call_strip_tile_rectangle:         # @clip_call_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -16
	movl	%r8d, %r9d
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	104(%rdi), %rsi
	subl	%edx, %eax
	subl	%ecx, %r9d
	movq	(%rdi), %r10
	movq	24(%rdi), %r8
	movq	32(%rdi), %r11
	movl	112(%rdi), %ebx
	movl	116(%rdi), %edi
	movl	%edi, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r8, (%rsp)
	movq	%r10, %rdi
	movl	%eax, %r8d
	callq	*1416(%r10)
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end12:
	.size	clip_call_strip_tile_rectangle, .Lfunc_end12-clip_call_strip_tile_rectangle
	.cfi_endproc

	.globl	clip_call_strip_copy_rop
	.align	16, 0x90
	.type	clip_call_strip_copy_rop,@function
clip_call_strip_copy_rop:               # @clip_call_strip_copy_rop
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
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 128
.Ltmp47:
	.cfi_offset %rbx, -48
.Ltmp48:
	.cfi_offset %r12, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movl	%esi, %r10d
	movq	%rdi, %rax
	movq	(%rax), %rdi
	movl	%edx, %esi
	subl	12(%rax), %esi
	movl	68(%rax), %ecx
	imull	%ecx, %esi
	addq	40(%rax), %rsi
	movl	64(%rax), %r11d
	addl	%r10d, %r11d
	subl	8(%rax), %r11d
	movq	120(%rax), %r9
	movq	128(%rax), %r14
	movq	136(%rax), %r15
	subl	%r10d, %ebx
	subl	%edx, %r8d
	movl	112(%rax), %r12d
	movl	116(%rax), %ebp
	movl	88(%rax), %eax
	movl	%eax, 64(%rsp)
	movl	%ebp, 56(%rsp)
	movl	%r12d, 48(%rsp)
	movl	%r8d, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r14, (%rsp)
	xorl	%r8d, %r8d
	movl	%r11d, %edx
	callq	*1424(%rdi)
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	clip_call_strip_copy_rop, .Lfunc_end13-clip_call_strip_copy_rop
	.cfi_endproc

	.globl	clip_call_strip_copy_rop2
	.align	16, 0x90
	.type	clip_call_strip_copy_rop2,@function
clip_call_strip_copy_rop2:              # @clip_call_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp56:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp58:
	.cfi_def_cfa_offset 144
.Ltmp59:
	.cfi_offset %rbx, -56
.Ltmp60:
	.cfi_offset %r12, -48
.Ltmp61:
	.cfi_offset %r13, -40
.Ltmp62:
	.cfi_offset %r14, -32
.Ltmp63:
	.cfi_offset %r15, -24
.Ltmp64:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movl	%esi, %r10d
	movq	%rdi, %rax
	movq	(%rax), %rdi
	movl	%edx, %esi
	subl	12(%rax), %esi
	movl	68(%rax), %ecx
	imull	%ecx, %esi
	addq	40(%rax), %rsi
	movl	64(%rax), %r11d
	addl	%r10d, %r11d
	subl	8(%rax), %r11d
	movq	120(%rax), %r9
	movq	128(%rax), %r14
	movq	136(%rax), %r15
	subl	%r10d, %ebx
	subl	%edx, %r8d
	movl	112(%rax), %r12d
	movl	116(%rax), %r13d
	movl	88(%rax), %ebp
	movl	144(%rax), %eax
	movl	%eax, 72(%rsp)
	movl	%ebp, 64(%rsp)
	movl	%r13d, 56(%rsp)
	movl	%r12d, 48(%rsp)
	movl	%r8d, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r14, (%rsp)
	xorl	%r8d, %r8d
	movl	%r11d, %edx
	callq	*1696(%rdi)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	clip_call_strip_copy_rop2, .Lfunc_end14-clip_call_strip_copy_rop2
	.cfi_endproc

	.align	16, 0x90
	.type	clip_open,@function
clip_open:                              # @clip_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 32
.Ltmp68:
	.cfi_offset %rbx, -24
.Ltmp69:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	leaq	1736(%rbx), %rax
	movq	1728(%rbx), %r14
	movq	1776(%rbx), %rcx
	testq	%rcx, %rcx
	cmovneq	%rcx, %rax
	movq	%rax, 1816(%rbx)
	leaq	96(%rbx), %rdi
	leaq	96(%r14), %rsi
	movl	$720, %edx              # imm = 0x2D0
	callq	memcpy
	movups	816(%r14), %xmm0
	movups	%xmm0, 816(%rbx)
	movl	832(%r14), %eax
	movl	%eax, 832(%rbx)
	movl	836(%r14), %eax
	movl	%eax, 836(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_copy_color_procs
	movl	$0, 1848(%rbx)
	movq	24(%r14), %rax
	movq	%rax, 24(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	clip_open, .Lfunc_end15-clip_open
	.cfi_endproc

	.align	16, 0x90
	.type	clip_fill_rectangle,@function
clip_fill_rectangle:                    # @clip_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 40
	subq	$184, %rsp
.Ltmp74:
	.cfi_def_cfa_offset 224
.Ltmp75:
	.cfi_offset %rbx, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdi, %r10
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jle	.LBB16_17
# BB#1:                                 # %entry
	testl	%r8d, %r8d
	jle	.LBB16_17
# BB#2:                                 # %if.end
	movq	1728(%r10), %rdi
	movq	1816(%r10), %rbx
	addl	1824(%r10), %esi
	leal	(%rsi,%r14), %ecx
	addl	1828(%r10), %edx
	leal	(%rdx,%r8), %r11d
	cmpl	16(%rbx), %edx
	jl	.LBB16_4
# BB#3:                                 # %land.lhs.true
	movl	20(%rbx), %ebp
	cmpl	%ebp, %r11d
	jle	.LBB16_7
.LBB16_4:                               # %lor.lhs.false.10
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB16_16
# BB#5:                                 # %land.lhs.true.12
	cmpl	16(%rbx), %edx
	jl	.LBB16_16
# BB#6:                                 # %land.lhs.true.15
	movl	20(%rbx), %ebp
	cmpl	%ebp, %r11d
	jg	.LBB16_16
.LBB16_7:                               # %if.then.18
	movq	%rbx, 1816(%r10)
	movl	24(%rbx), %r15d
	cmpl	%r15d, %esi
	jl	.LBB16_10
# BB#8:                                 # %land.lhs.true.21
	cmpl	28(%rbx), %ecx
	jle	.LBB16_9
.LBB16_10:                              # %if.else
	movq	8(%rbx), %r14
	testq	%r14, %r14
	je	.LBB16_12
# BB#11:                                # %lor.lhs.false.28
	cmpl	%ebp, 20(%r14)
	je	.LBB16_16
.LBB16_12:                              # %land.lhs.true.33
	movq	(%rbx), %r14
	testq	%r14, %r14
	je	.LBB16_14
# BB#13:                                # %lor.lhs.false.36
	cmpl	%ebp, 20(%r14)
	jne	.LBB16_14
.LBB16_16:                              # %if.end.61
	movq	%rdi, 8(%rsp)
	movq	%r9, 32(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$clip_call_fill_rectangle, %r9d
	movq	%r10, %rdi
	movl	%r11d, %r8d
	callq	clip_enumerate_rest
.LBB16_17:                              # %cleanup
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_14:                              # %do.end.44
	cmpl	%r15d, %esi
	cmovll	%r15d, %esi
	movl	28(%rbx), %ebp
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	subl	%esi, %ecx
	jle	.LBB16_17
# BB#15:                                # %cond.false
	callq	*1200(%rdi)
	jmp	.LBB16_17
.LBB16_9:                               # %do.end.26
	movl	%r14d, %ecx
	callq	*1200(%rdi)
	jmp	.LBB16_17
.Lfunc_end16:
	.size	clip_fill_rectangle, .Lfunc_end16-clip_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	clip_copy_mono,@function
clip_copy_mono:                         # @clip_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp83:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp84:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp85:
	.cfi_def_cfa_offset 272
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movl	280(%rsp), %r13d
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jle	.LBB17_8
# BB#1:                                 # %entry
	movl	288(%rsp), %r9d
	testl	%r9d, %r9d
	jle	.LBB17_8
# BB#2:                                 # %if.end
	movq	304(%rsp), %r15
	movq	296(%rsp), %r12
	movl	272(%rsp), %eax
	movq	1728(%rdi), %r11
	movq	1816(%rdi), %rbx
	addl	1824(%rdi), %r10d
	leal	(%r10,%r13), %r14d
	addl	1828(%rdi), %eax
	leal	(%rax,%r9), %ebp
	cmpl	16(%rbx), %eax
	jl	.LBB17_7
# BB#3:                                 # %land.lhs.true
	cmpl	20(%rbx), %ebp
	jg	.LBB17_7
# BB#4:                                 # %do.end
	cmpl	24(%rbx), %r10d
	jl	.LBB17_7
# BB#5:                                 # %land.lhs.true.12
	cmpl	28(%rbx), %r14d
	jle	.LBB17_6
.LBB17_7:                               # %if.end.19
	movq	%r11, 40(%rsp)
	movq	%rsi, 80(%rsp)
	movl	%edx, 104(%rsp)
	movl	%ecx, 108(%rsp)
	movq	%r12, 64(%rsp)
	movq	%r15, 72(%rsp)
	leaq	40(%rsp), %rcx
	movq	%rcx, (%rsp)
	movl	$clip_call_copy_mono, %r9d
	movl	%r10d, %esi
	movl	%eax, %edx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	clip_enumerate_rest
.LBB17_8:                               # %cleanup
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_6:                               # %do.end.17
	movq	%r15, 32(%rsp)
	movq	%r12, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r13d, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r11, %rdi
	movl	%r10d, %r9d
	callq	*1216(%r11)
	jmp	.LBB17_8
.Lfunc_end17:
	.size	clip_copy_mono, .Lfunc_end17-clip_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	clip_copy_color,@function
clip_copy_color:                        # @clip_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 32
	subq	$208, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 240
.Ltmp96:
	.cfi_offset %rbx, -32
.Ltmp97:
	.cfi_offset %r14, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movl	248(%rsp), %r9d
	movq	%rsi, 72(%rsp)
	movl	%edx, 96(%rsp)
	movl	%ecx, 100(%rsp)
	xorl	%eax, %eax
	testl	%r9d, %r9d
	jle	.LBB18_8
# BB#1:                                 # %entry
	movl	256(%rsp), %r14d
	testl	%r14d, %r14d
	jle	.LBB18_8
# BB#2:                                 # %if.end.i
	movl	240(%rsp), %eax
	movq	1816(%rdi), %rbx
	movq	1728(%rdi), %r11
	movq	%r11, 32(%rsp)
	addl	1824(%rdi), %r10d
	leal	(%r10,%r9), %ebp
	addl	1828(%rdi), %eax
	leal	(%rax,%r14), %r8d
	cmpl	16(%rbx), %eax
	jl	.LBB18_7
# BB#3:                                 # %land.lhs.true.i
	cmpl	20(%rbx), %r8d
	jg	.LBB18_7
# BB#4:                                 # %land.lhs.true.10.i
	cmpl	24(%rbx), %r10d
	jl	.LBB18_7
# BB#5:                                 # %land.lhs.true.12.i
	cmpl	28(%rbx), %ebp
	jle	.LBB18_6
.LBB18_7:                               # %if.end.19.i
	leaq	32(%rsp), %rcx
	movq	%rcx, (%rsp)
	movl	$clip_call_copy_color, %r9d
	movl	%r10d, %esi
	movl	%eax, %edx
	movl	%ebp, %ecx
	callq	clip_enumerate_rest
.LBB18_8:                               # %clip_enumerate.exit
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB18_6:                               # %if.then.14.i
	movl	%r10d, 40(%rsp)
	movl	%eax, 44(%rsp)
	movl	%r9d, 48(%rsp)
	movl	%r14d, 52(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r8d, %r8d
	movq	%r11, %rdi
	movl	%r10d, %r9d
	callq	*1224(%r11)
	jmp	.LBB18_8
.Lfunc_end18:
	.size	clip_copy_color, .Lfunc_end18-clip_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	clip_copy_alpha,@function
clip_copy_alpha:                        # @clip_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp100:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 48
	subq	$224, %rsp
.Ltmp104:
	.cfi_def_cfa_offset 272
.Ltmp105:
	.cfi_offset %rbx, -48
.Ltmp106:
	.cfi_offset %r12, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movl	304(%rsp), %r15d
	movq	296(%rsp), %r14
	movl	280(%rsp), %r9d
	movq	%rsi, 88(%rsp)
	movl	%edx, 112(%rsp)
	movl	%ecx, 116(%rsp)
	movq	%r14, 72(%rsp)
	movl	%r15d, 120(%rsp)
	xorl	%eax, %eax
	testl	%r9d, %r9d
	jle	.LBB19_8
# BB#1:                                 # %entry
	movl	288(%rsp), %r12d
	testl	%r12d, %r12d
	jle	.LBB19_8
# BB#2:                                 # %if.end.i
	movl	272(%rsp), %eax
	movq	1816(%rdi), %rbp
	movq	1728(%rdi), %r11
	movq	%r11, 48(%rsp)
	addl	1824(%rdi), %r10d
	leal	(%r10,%r9), %ebx
	addl	1828(%rdi), %eax
	leal	(%rax,%r12), %r8d
	cmpl	16(%rbp), %eax
	jl	.LBB19_7
# BB#3:                                 # %land.lhs.true.i
	cmpl	20(%rbp), %r8d
	jg	.LBB19_7
# BB#4:                                 # %land.lhs.true.10.i
	cmpl	24(%rbp), %r10d
	jl	.LBB19_7
# BB#5:                                 # %land.lhs.true.12.i
	cmpl	28(%rbp), %ebx
	jle	.LBB19_6
.LBB19_7:                               # %if.end.19.i
	leaq	48(%rsp), %rcx
	movq	%rcx, (%rsp)
	movl	$clip_call_copy_alpha, %r9d
	movl	%r10d, %esi
	movl	%eax, %edx
	movl	%ebx, %ecx
	callq	clip_enumerate_rest
.LBB19_8:                               # %clip_enumerate.exit
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_6:                               # %if.then.14.i
	movl	%r10d, 56(%rsp)
	movl	%eax, 60(%rsp)
	movl	%r9d, 64(%rsp)
	movl	%r12d, 68(%rsp)
	movl	%r15d, 32(%rsp)
	movq	%r14, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r8d, %r8d
	movq	%r11, %rdi
	movl	%r10d, %r9d
	callq	*1312(%r11)
	jmp	.LBB19_8
.Lfunc_end19:
	.size	clip_copy_alpha, .Lfunc_end19-clip_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	clip_fill_path,@function
clip_fill_path:                         # @clip_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
.Ltmp112:
	.cfi_def_cfa_offset 224
.Ltmp113:
	.cfi_offset %rbx, -24
.Ltmp114:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	%rsi, 176(%rsp)
	movq	%rdx, 184(%rsp)
	movq	%rcx, 192(%rsp)
	movq	%r8, 104(%rsp)
	movq	%r9, 120(%rsp)
	leaq	8(%rsp), %rsi
	callq	clip_get_clipping_box
	movl	8(%rsp), %esi
	movl	16(%rsp), %edi
	subl	%esi, %edi
	sarl	$8, %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LBB20_8
# BB#1:                                 # %entry
	movl	12(%rsp), %edx
	movl	20(%rsp), %ebx
	subl	%edx, %ebx
	sarl	$8, %ebx
	testl	%ebx, %ebx
	jle	.LBB20_8
# BB#2:                                 # %if.end.i
	movq	1816(%r14), %rax
	sarl	$8, %edx
	sarl	$8, %esi
	movq	1728(%r14), %rcx
	movq	%rcx, 24(%rsp)
	addl	1824(%r14), %esi
	leal	(%rsi,%rdi), %ecx
	addl	1828(%r14), %edx
	leal	(%rdx,%rbx), %r8d
	cmpl	16(%rax), %edx
	jl	.LBB20_7
# BB#3:                                 # %land.lhs.true.i
	cmpl	20(%rax), %r8d
	jg	.LBB20_7
# BB#4:                                 # %land.lhs.true.10.i
	cmpl	24(%rax), %esi
	jl	.LBB20_7
# BB#5:                                 # %land.lhs.true.12.i
	cmpl	28(%rax), %ecx
	jle	.LBB20_6
.LBB20_7:                               # %if.end.19.i
	leaq	24(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$clip_call_fill_path, %r9d
	movq	%r14, %rdi
	callq	clip_enumerate_rest
.LBB20_8:                               # %clip_enumerate.exit
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB20_6:                               # %if.then.14.i
	movl	%esi, 32(%rsp)
	movl	%edx, 36(%rsp)
	movl	%edi, 40(%rsp)
	movl	%ebx, 44(%rsp)
	leaq	24(%rsp), %rdi
	callq	clip_call_fill_path
	jmp	.LBB20_8
.Lfunc_end20:
	.size	clip_fill_path, .Lfunc_end20-clip_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	clip_fill_mask,@function
clip_fill_mask:                         # @clip_fill_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 288
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movq	336(%rsp), %rax
	movl	328(%rsp), %ebp
	movl	320(%rsp), %r12d
	movq	312(%rsp), %r15
	movl	304(%rsp), %r14d
	movl	296(%rsp), %r9d
	movl	288(%rsp), %ebx
	testq	%rax, %rax
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	%rax, 48(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movq	%r15, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	%r10d, %r9d
	callq	gx_default_fill_mask
	jmp	.LBB21_10
.LBB21_2:                               # %if.end
	movq	%rsi, 96(%rsp)
	movl	%edx, 120(%rsp)
	movl	%ecx, 124(%rsp)
	movq	%r15, 136(%rsp)
	movl	%r12d, 128(%rsp)
	movl	%ebp, 144(%rsp)
	xorl	%eax, %eax
	testl	%r9d, %r9d
	jle	.LBB21_10
# BB#3:                                 # %if.end
	testl	%r14d, %r14d
	jle	.LBB21_10
# BB#4:                                 # %if.end.i
	movq	1816(%rdi), %rax
	movq	1728(%rdi), %r11
	movq	%r11, 56(%rsp)
	addl	1824(%rdi), %r10d
	leal	(%r10,%r9), %r13d
	addl	1828(%rdi), %ebx
	leal	(%rbx,%r14), %r8d
	cmpl	16(%rax), %ebx
	jl	.LBB21_9
# BB#5:                                 # %land.lhs.true.i
	cmpl	20(%rax), %r8d
	jg	.LBB21_9
# BB#6:                                 # %land.lhs.true.10.i
	cmpl	24(%rax), %r10d
	jl	.LBB21_9
# BB#7:                                 # %land.lhs.true.12.i
	cmpl	28(%rax), %r13d
	jle	.LBB21_8
.LBB21_9:                               # %if.end.19.i
	leaq	56(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$clip_call_fill_mask, %r9d
	movl	%r10d, %esi
	movl	%ebx, %edx
	movl	%r13d, %ecx
	callq	clip_enumerate_rest
.LBB21_10:                              # %cleanup
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB21_8:                               # %if.then.14.i
	movl	%r10d, 64(%rsp)
	movl	%ebx, 68(%rsp)
	movl	%r9d, 72(%rsp)
	movl	%r14d, 76(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movq	%r15, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%ebx, (%rsp)
	movq	$0, 48(%rsp)
	xorl	%r8d, %r8d
	movq	%r11, %rdi
	movl	%r10d, %r9d
	callq	*1352(%r11)
	jmp	.LBB21_10
.Lfunc_end21:
	.size	clip_fill_mask, .Lfunc_end21-clip_fill_mask
	.cfi_endproc

	.align	16, 0x90
	.type	clip_strip_tile_rectangle,@function
clip_strip_tile_rectangle:              # @clip_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 48
	subq	$208, %rsp
.Ltmp133:
	.cfi_def_cfa_offset 256
.Ltmp134:
	.cfi_offset %rbx, -48
.Ltmp135:
	.cfi_offset %r12, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movl	280(%rsp), %r15d
	movl	272(%rsp), %ebp
	movq	264(%rsp), %r14
	movq	256(%rsp), %r12
	movq	%rsi, 136(%rsp)
	movq	%r12, 56(%rsp)
	movq	%r14, 64(%rsp)
	movl	%ebp, 144(%rsp)
	movl	%r15d, 148(%rsp)
	xorl	%eax, %eax
	testl	%r8d, %r8d
	jle	.LBB22_8
# BB#1:                                 # %entry
	testl	%r9d, %r9d
	jle	.LBB22_8
# BB#2:                                 # %if.end.i
	movq	1816(%rdi), %rbx
	movq	1728(%rdi), %r10
	movq	%r10, 32(%rsp)
	addl	1824(%rdi), %edx
	leal	(%rdx,%r8), %r11d
	addl	1828(%rdi), %ecx
	leal	(%rcx,%r9), %eax
	cmpl	16(%rbx), %ecx
	jl	.LBB22_7
# BB#3:                                 # %land.lhs.true.i
	cmpl	20(%rbx), %eax
	jg	.LBB22_7
# BB#4:                                 # %land.lhs.true.10.i
	cmpl	24(%rbx), %edx
	jl	.LBB22_7
# BB#5:                                 # %land.lhs.true.12.i
	cmpl	28(%rbx), %r11d
	jle	.LBB22_6
.LBB22_7:                               # %if.end.19.i
	leaq	32(%rsp), %rsi
	movq	%rsi, (%rsp)
	movl	$clip_call_strip_tile_rectangle, %r9d
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%r11d, %ecx
	movl	%eax, %r8d
	callq	clip_enumerate_rest
.LBB22_8:                               # %clip_enumerate.exit
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_6:                               # %if.then.14.i
	movl	%edx, 40(%rsp)
	movl	%ecx, 44(%rsp)
	movl	%r8d, 48(%rsp)
	movl	%r9d, 52(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movq	%r14, 8(%rsp)
	movq	%r12, (%rsp)
	movq	%r10, %rdi
	callq	*1416(%r10)
	jmp	.LBB22_8
.Lfunc_end22:
	.size	clip_strip_tile_rectangle, .Lfunc_end22-clip_strip_tile_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	clip_strip_copy_rop,@function
clip_strip_copy_rop:                    # @clip_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp141:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp142:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp143:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp144:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp145:
	.cfi_def_cfa_offset 304
.Ltmp146:
	.cfi_offset %rbx, -56
.Ltmp147:
	.cfi_offset %r12, -48
.Ltmp148:
	.cfi_offset %r13, -40
.Ltmp149:
	.cfi_offset %r14, -32
.Ltmp150:
	.cfi_offset %r15, -24
.Ltmp151:
	.cfi_offset %rbp, -16
	movl	368(%rsp), %r8d
	movl	360(%rsp), %r13d
	movl	352(%rsp), %ebp
	movl	336(%rsp), %r12d
	movq	312(%rsp), %rbx
	movq	304(%rsp), %rax
	movq	%rsi, 112(%rsp)
	movl	%edx, 136(%rsp)
	movl	%ecx, 140(%rsp)
	movq	%r9, 192(%rsp)
	movq	%rax, 200(%rsp)
	movq	%rbx, 208(%rsp)
	movl	%ebp, 184(%rsp)
	movl	%r13d, 188(%rsp)
	movl	%r8d, 160(%rsp)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB23_8
# BB#1:                                 # %entry
	movl	344(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.LBB23_8
# BB#2:                                 # %if.end.i
	movl	328(%rsp), %eax
	movl	320(%rsp), %ebx
	movq	1816(%rdi), %r14
	movq	1728(%rdi), %r10
	movq	%r10, 72(%rsp)
	addl	1824(%rdi), %ebx
	leal	(%rbx,%r12), %r11d
	addl	1828(%rdi), %eax
	leal	(%rax,%r15), %r8d
	cmpl	16(%r14), %eax
	jl	.LBB23_7
# BB#3:                                 # %land.lhs.true.i
	cmpl	20(%r14), %r8d
	jg	.LBB23_7
# BB#4:                                 # %land.lhs.true.10.i
	cmpl	24(%r14), %ebx
	jl	.LBB23_7
# BB#5:                                 # %land.lhs.true.12.i
	cmpl	28(%r14), %r11d
	jle	.LBB23_6
.LBB23_7:                               # %if.end.19.i
	leaq	72(%rsp), %rcx
	movq	%rcx, (%rsp)
	movl	$clip_call_strip_copy_rop, %r9d
	movl	%ebx, %esi
	movl	%eax, %edx
	movl	%r11d, %ecx
	callq	clip_enumerate_rest
.LBB23_8:                               # %clip_enumerate.exit
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_6:                               # %if.then.14.i
	movl	%ebx, 80(%rsp)
	movl	%eax, 84(%rsp)
	movl	%r12d, 88(%rsp)
	movl	%r15d, 92(%rsp)
	movl	368(%rsp), %edi
	movl	%edi, 64(%rsp)
	movl	%r13d, 56(%rsp)
	movl	%ebp, 48(%rsp)
	movl	%r15d, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%eax, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	304(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movq	%r10, %rdi
	callq	*1424(%r10)
	jmp	.LBB23_8
.Lfunc_end23:
	.size	clip_strip_copy_rop, .Lfunc_end23-clip_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	clip_get_clipping_box,@function
clip_get_clipping_box:                  # @clip_get_clipping_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 48
.Ltmp155:
	.cfi_offset %rbx, -24
.Ltmp156:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, 1848(%rbx)
	je	.LBB24_2
# BB#1:                                 # %entry.if.end.129_crit_edge
	addq	$1832, %rbx             # imm = 0x728
	jmp	.LBB24_24
.LBB24_2:                               # %if.then
	movq	1728(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	*1432(%rdi)
	movl	1808(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB24_14
# BB#3:                                 # %if.then
	leaq	1736(%rbx), %rax
	cmpl	$1, %ecx
	jne	.LBB24_5
# BB#4:                                 # %if.then.5
	leaq	16(%rax), %rcx
	leaq	24(%rax), %rdx
	movq	%rax, %rsi
	addq	$28, %rsi
	jmp	.LBB24_6
.LBB24_5:                               # %if.else
	movq	40(%rax), %rcx
	movq	48(%rax), %rdi
	movq	(%rcx), %rcx
	addq	$16, %rcx
	leaq	64(%rax), %rdx
	addq	$68, %rax
	movq	%rax, %rsi
	movq	8(%rdi), %rax
.LBB24_6:                               # %do.body
	movl	20(%rax), %eax
	movl	(%rsi), %esi
	movl	(%rdx), %edx
	movl	(%rcx), %ecx
	shll	$8, %esi
	shll	$8, %edx
	cmpl	8(%rsp), %edx
	jle	.LBB24_8
# BB#7:                                 # %if.then.45
	movl	%edx, 8(%rsp)
.LBB24_8:                               # %if.end.50
	shll	$8, %ecx
	cmpl	16(%rsp), %esi
	jge	.LBB24_10
# BB#9:                                 # %if.then.56
	movl	%esi, 16(%rsp)
.LBB24_10:                              # %if.end.61
	shll	$8, %eax
	cmpl	12(%rsp), %ecx
	jle	.LBB24_12
# BB#11:                                # %if.then.67
	movl	%ecx, 12(%rsp)
.LBB24_12:                              # %if.end.72
	cmpl	20(%rsp), %eax
	jge	.LBB24_14
# BB#13:                                # %if.then.78
	movl	%eax, 20(%rsp)
.LBB24_14:                              # %if.end.84
	movl	1824(%rbx), %ecx
	movl	1828(%rbx), %eax
	movl	%eax, %edx
	orl	%ecx, %edx
	je	.LBB24_23
# BB#15:                                # %if.then.89
	shll	$8, %ecx
	movl	8(%rsp), %edx
	cmpl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	je	.LBB24_17
# BB#16:                                # %if.then.99
	subl	%ecx, %edx
	movl	%edx, 8(%rsp)
.LBB24_17:                              # %if.end.102
	shll	$8, %eax
	movl	12(%rsp), %edx
	cmpl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	je	.LBB24_19
# BB#18:                                # %if.then.106
	subl	%eax, %edx
	movl	%edx, 12(%rsp)
.LBB24_19:                              # %if.end.110
	movl	16(%rsp), %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	je	.LBB24_21
# BB#20:                                # %if.then.114
	subl	%ecx, %edx
	movl	%edx, 16(%rsp)
.LBB24_21:                              # %if.end.118
	movl	20(%rsp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	je	.LBB24_23
# BB#22:                                # %if.then.122
	subl	%eax, %ecx
	movl	%ecx, 20(%rsp)
.LBB24_23:                              # %if.end.127
	movups	8(%rsp), %xmm0
	movups	%xmm0, 1832(%rbx)
	movl	$1, 1848(%rbx)
	leaq	1832(%rbx), %rbx
.LBB24_24:                              # %if.end.129
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end24:
	.size	clip_get_clipping_box, .Lfunc_end24-clip_get_clipping_box
	.cfi_endproc

	.align	16, 0x90
	.type	clip_get_bits_rectangle,@function
clip_get_bits_rectangle:                # @clip_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp157:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp158:
	.cfi_def_cfa_offset 48
.Ltmp159:
	.cfi_offset %rbx, -16
	movq	%rcx, %rbx
	movq	1728(%rdi), %rax
	movdqu	(%rsi), %xmm0
	movd	1828(%rdi), %xmm1       # xmm1 = mem[0],zero,zero,zero
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	1824(%rdi), %xmm2       # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqa	%xmm2, (%rsp)           # 16-byte Spill
	psubd	%xmm2, %xmm0
	movdqa	%xmm0, 16(%rsp)
	leaq	16(%rsp), %rsi
	movq	%rax, %rdi
	callq	*1448(%rax)
	movdqa	(%rsp), %xmm1           # 16-byte Reload
	testl	%eax, %eax
	jle	.LBB25_7
# BB#1:                                 # %for.body.lr.ph
	movq	(%rbx), %rcx
	leal	-1(%rax), %edx
	xorl	%esi, %esi
	testb	$3, %al
	je	.LBB25_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%eax, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	.align	16, 0x90
.LBB25_3:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	%xmm0, (%rcx)
	addq	$16, %rcx
	incl	%esi
	cmpl	%esi, %edi
	jne	.LBB25_3
.LBB25_4:                               # %for.body.lr.ph.split
	cmpl	$3, %edx
	jb	.LBB25_7
# BB#5:                                 # %for.body.lr.ph.split.split
	movl	%eax, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB25_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	%xmm0, (%rcx)
	movdqu	16(%rcx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	%xmm0, 16(%rcx)
	movdqu	32(%rcx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	%xmm0, 32(%rcx)
	movdqu	48(%rcx), %xmm0
	paddd	%xmm1, %xmm0
	movdqu	%xmm0, 48(%rcx)
	addq	$64, %rcx
	addl	$-4, %edx
	jne	.LBB25_6
.LBB25_7:                               # %if.end
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end25:
	.size	clip_get_bits_rectangle, .Lfunc_end25-clip_get_bits_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	clip_fill_rectangle_hl_color,@function
clip_fill_rectangle_hl_color:           # @clip_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 32
	subq	$208, %rsp
.Ltmp163:
	.cfi_def_cfa_offset 240
.Ltmp164:
	.cfi_offset %rbx, -32
.Ltmp165:
	.cfi_offset %r14, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rdi, %r11
	movdqu	(%rsi), %xmm1
	psrad	$8, %xmm1
	movd	%xmm1, %esi
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %edi
	xorl	%eax, %eax
	cmpl	%esi, %edi
	jle	.LBB26_18
# BB#1:                                 # %entry
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %esi
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %edi
	cmpl	%esi, %edi
	jle	.LBB26_18
# BB#2:                                 # %if.end
	movq	1728(%r11), %rdi
	movq	1816(%r11), %rsi
	movd	1828(%r11), %xmm0       # xmm0 = mem[0],zero,zero,zero
	pshufd	$80, %xmm0, %xmm2       # xmm2 = xmm0[0,0,1,1]
	movd	1824(%r11), %xmm0       # xmm0 = mem[0],zero,zero,zero
	pshufd	$80, %xmm0, %xmm0       # xmm0 = xmm0[0,0,1,1]
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	paddd	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %r10d
	cmpl	16(%rsi), %r10d
	jl	.LBB26_4
# BB#3:                                 # %land.lhs.true
	movl	20(%rsi), %r9d
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %ebx
	cmpl	%r9d, %ebx
	jle	.LBB26_7
.LBB26_4:                               # %lor.lhs.false.20
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB26_17
# BB#5:                                 # %land.lhs.true.22
	cmpl	16(%rsi), %r10d
	jl	.LBB26_17
# BB#6:                                 # %land.lhs.true.25
	movl	20(%rsi), %r9d
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %ebx
	cmpl	%r9d, %ebx
	jg	.LBB26_17
.LBB26_7:                               # %if.then.28
	movq	%rsi, 1816(%r11)
	movl	24(%rsi), %r14d
	movd	%xmm0, %ebx
	cmpl	%r14d, %ebx
	jl	.LBB26_11
# BB#8:                                 # %land.lhs.true.31
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %ebp
	cmpl	28(%rsi), %ebp
	jle	.LBB26_9
.LBB26_11:                              # %if.else
	movq	8(%rsi), %rbp
	testq	%rbp, %rbp
	je	.LBB26_13
# BB#12:                                # %lor.lhs.false.51
	cmpl	%r9d, 20(%rbp)
	je	.LBB26_17
.LBB26_13:                              # %land.lhs.true.56
	movq	(%rsi), %rbp
	testq	%rbp, %rbp
	je	.LBB26_15
# BB#14:                                # %lor.lhs.false.59
	cmpl	%r9d, 20(%rbp)
	jne	.LBB26_15
.LBB26_17:                              # %if.end.99
	movq	%rdi, 32(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rdx, 184(%rsp)
	movq	%r8, 128(%rsp)
	movd	%xmm0, %esi
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %ecx
	pshufd	$231, %xmm0, %xmm0      # xmm0 = xmm0[3,1,2,3]
	movd	%xmm0, %r8d
	leaq	32(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$clip_call_fill_rectangle_hl_color, %r9d
	movq	%r11, %rdi
	movl	%r10d, %edx
	callq	clip_enumerate_rest
	jmp	.LBB26_18
.LBB26_15:                              # %do.end.67
	cmpl	%r14d, %ebx
	cmovll	%r14d, %ebx
	movl	28(%rsi), %ebp
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %esi
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
	cmpl	%esi, %ebx
	jge	.LBB26_18
# BB#16:                                # %if.else.80
	movd	%esi, %xmm1
	movd	%ebx, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%r10d, %xmm1
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	shufps	$35, %xmm2, %xmm0       # xmm0 = xmm0[3,0],xmm2[2,0]
	shufps	$36, %xmm0, %xmm2       # xmm2 = xmm2[0,1],xmm0[2,0]
	pslld	$8, %xmm2
	movdqa	%xmm2, 16(%rsp)
	jmp	.LBB26_10
.LBB26_9:                               # %do.end.36
	pslld	$8, %xmm0
	movdqa	%xmm0, 16(%rsp)
.LBB26_10:                              # %cleanup
	leaq	16(%rsp), %rsi
	callq	*1576(%rdi)
.LBB26_18:                              # %cleanup
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	clip_fill_rectangle_hl_color, .Lfunc_end26-clip_fill_rectangle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	clip_copy_planes,@function
clip_copy_planes:                       # @clip_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp168:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp169:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp170:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 48
	subq	$208, %rsp
.Ltmp172:
	.cfi_def_cfa_offset 256
.Ltmp173:
	.cfi_offset %rbx, -48
.Ltmp174:
	.cfi_offset %r12, -40
.Ltmp175:
	.cfi_offset %r14, -32
.Ltmp176:
	.cfi_offset %r15, -24
.Ltmp177:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movl	264(%rsp), %r12d
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB27_8
# BB#1:                                 # %entry
	movl	272(%rsp), %r9d
	testl	%r9d, %r9d
	jle	.LBB27_8
# BB#2:                                 # %if.end
	movl	280(%rsp), %r15d
	movl	256(%rsp), %eax
	movq	1728(%rdi), %r11
	movq	1816(%rdi), %rbx
	addl	1824(%rdi), %r10d
	leal	(%r10,%r12), %r14d
	addl	1828(%rdi), %eax
	leal	(%rax,%r9), %ebp
	cmpl	16(%rbx), %eax
	jl	.LBB27_7
# BB#3:                                 # %land.lhs.true
	cmpl	20(%rbx), %ebp
	jg	.LBB27_7
# BB#4:                                 # %do.end
	cmpl	24(%rbx), %r10d
	jl	.LBB27_7
# BB#5:                                 # %land.lhs.true.12
	cmpl	28(%rbx), %r14d
	jle	.LBB27_6
.LBB27_7:                               # %if.end.19
	movq	%r11, 32(%rsp)
	movq	%rsi, 72(%rsp)
	movl	%edx, 96(%rsp)
	movl	%ecx, 100(%rsp)
	movl	%r15d, 176(%rsp)
	leaq	32(%rsp), %rcx
	movq	%rcx, (%rsp)
	movl	$clip_call_copy_planes, %r9d
	movl	%r10d, %esi
	movl	%eax, %edx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	callq	clip_enumerate_rest
.LBB27_8:                               # %cleanup
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_6:                               # %do.end.17
	movl	%r15d, 24(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r11, %rdi
	movl	%r10d, %r9d
	callq	*1672(%r11)
	jmp	.LBB27_8
.Lfunc_end27:
	.size	clip_copy_planes, .Lfunc_end27-clip_copy_planes
	.cfi_endproc

	.align	16, 0x90
	.type	clip_strip_copy_rop2,@function
clip_strip_copy_rop2:                   # @clip_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp179:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp180:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp181:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp182:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp183:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp184:
	.cfi_def_cfa_offset 320
.Ltmp185:
	.cfi_offset %rbx, -56
.Ltmp186:
	.cfi_offset %r12, -48
.Ltmp187:
	.cfi_offset %r13, -40
.Ltmp188:
	.cfi_offset %r14, -32
.Ltmp189:
	.cfi_offset %r15, -24
.Ltmp190:
	.cfi_offset %rbp, -16
	movl	392(%rsp), %r10d
	movl	384(%rsp), %r8d
	movl	376(%rsp), %r13d
	movl	368(%rsp), %ebp
	movl	352(%rsp), %r12d
	movq	328(%rsp), %rbx
	movq	320(%rsp), %rax
	movq	%rsi, 128(%rsp)
	movl	%edx, 152(%rsp)
	movl	%ecx, 156(%rsp)
	movq	%r9, 208(%rsp)
	movq	%rax, 216(%rsp)
	movq	%rbx, 224(%rsp)
	movl	%ebp, 200(%rsp)
	movl	%r13d, 204(%rsp)
	movl	%r8d, 176(%rsp)
	movl	%r10d, 232(%rsp)
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB28_8
# BB#1:                                 # %entry
	movl	360(%rsp), %r14d
	testl	%r14d, %r14d
	jle	.LBB28_8
# BB#2:                                 # %if.end.i
	movl	344(%rsp), %eax
	movl	336(%rsp), %ebx
	movq	1816(%rdi), %r15
	movq	1728(%rdi), %r10
	movq	%r10, 88(%rsp)
	addl	1824(%rdi), %ebx
	leal	(%rbx,%r12), %r11d
	addl	1828(%rdi), %eax
	leal	(%rax,%r14), %r8d
	cmpl	16(%r15), %eax
	jl	.LBB28_7
# BB#3:                                 # %land.lhs.true.i
	cmpl	20(%r15), %r8d
	jg	.LBB28_7
# BB#4:                                 # %land.lhs.true.10.i
	cmpl	24(%r15), %ebx
	jl	.LBB28_7
# BB#5:                                 # %land.lhs.true.12.i
	cmpl	28(%r15), %r11d
	jle	.LBB28_6
.LBB28_7:                               # %if.end.19.i
	leaq	88(%rsp), %rcx
	movq	%rcx, (%rsp)
	movl	$clip_call_strip_copy_rop2, %r9d
	movl	%ebx, %esi
	movl	%eax, %edx
	movl	%r11d, %ecx
	callq	clip_enumerate_rest
.LBB28_8:                               # %clip_enumerate.exit
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_6:                               # %if.then.14.i
	movl	%ebx, 96(%rsp)
	movl	%eax, 100(%rsp)
	movl	%r12d, 104(%rsp)
	movl	%r14d, 108(%rsp)
	movl	392(%rsp), %edi
	movl	%edi, 72(%rsp)
	movl	384(%rsp), %edi
	movl	%edi, 64(%rsp)
	movl	%r13d, 56(%rsp)
	movl	%ebp, 48(%rsp)
	movl	%r14d, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%eax, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movq	328(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movq	%r10, %rdi
	callq	*1696(%r10)
	jmp	.LBB28_8
.Lfunc_end28:
	.size	clip_strip_copy_rop2, .Lfunc_end28-clip_strip_copy_rop2
	.cfi_endproc

	.align	16, 0x90
	.type	clip_strip_tile_rect_devn,@function
clip_strip_tile_rect_devn:              # @clip_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp192:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp193:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp194:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp195:
	.cfi_def_cfa_offset 48
	subq	$208, %rsp
.Ltmp196:
	.cfi_def_cfa_offset 256
.Ltmp197:
	.cfi_offset %rbx, -48
.Ltmp198:
	.cfi_offset %r12, -40
.Ltmp199:
	.cfi_offset %r14, -32
.Ltmp200:
	.cfi_offset %r15, -24
.Ltmp201:
	.cfi_offset %rbp, -16
	movl	280(%rsp), %r15d
	movl	272(%rsp), %ebp
	movq	264(%rsp), %r14
	movq	256(%rsp), %r12
	movq	%rsi, 136(%rsp)
	movq	%r12, 80(%rsp)
	movq	%r14, 88(%rsp)
	movl	%ebp, 144(%rsp)
	movl	%r15d, 148(%rsp)
	xorl	%eax, %eax
	testl	%r8d, %r8d
	jle	.LBB29_8
# BB#1:                                 # %entry
	testl	%r9d, %r9d
	jle	.LBB29_8
# BB#2:                                 # %if.end.i
	movq	1816(%rdi), %rbx
	movq	1728(%rdi), %r10
	movq	%r10, 32(%rsp)
	addl	1824(%rdi), %edx
	leal	(%rdx,%r8), %r11d
	addl	1828(%rdi), %ecx
	leal	(%rcx,%r9), %eax
	cmpl	16(%rbx), %ecx
	jl	.LBB29_7
# BB#3:                                 # %land.lhs.true.i
	cmpl	20(%rbx), %eax
	jg	.LBB29_7
# BB#4:                                 # %land.lhs.true.10.i
	cmpl	24(%rbx), %edx
	jl	.LBB29_7
# BB#5:                                 # %land.lhs.true.12.i
	cmpl	28(%rbx), %r11d
	jle	.LBB29_6
.LBB29_7:                               # %if.end.19.i
	leaq	32(%rsp), %rsi
	movq	%rsi, (%rsp)
	movl	$clip_call_strip_tile_rect_devn, %r9d
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%r11d, %ecx
	movl	%eax, %r8d
	callq	clip_enumerate_rest
.LBB29_8:                               # %clip_enumerate.exit
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_6:                               # %if.then.14.i
	movl	%edx, 40(%rsp)
	movl	%ecx, 44(%rsp)
	movl	%r8d, 48(%rsp)
	movl	%r9d, 52(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movq	%r14, 8(%rsp)
	movq	%r12, (%rsp)
	movq	%r10, %rdi
	callq	*1704(%r10)
	jmp	.LBB29_8
.Lfunc_end29:
	.size	clip_strip_tile_rect_devn, .Lfunc_end29-clip_strip_tile_rect_devn
	.cfi_endproc

	.align	16, 0x90
	.type	clip_copy_alpha_hl_color,@function
clip_copy_alpha_hl_color:               # @clip_copy_alpha_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp203:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp204:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp205:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp206:
	.cfi_def_cfa_offset 48
	subq	$224, %rsp
.Ltmp207:
	.cfi_def_cfa_offset 272
.Ltmp208:
	.cfi_offset %rbx, -48
.Ltmp209:
	.cfi_offset %r12, -40
.Ltmp210:
	.cfi_offset %r14, -32
.Ltmp211:
	.cfi_offset %r15, -24
.Ltmp212:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movl	304(%rsp), %r15d
	movq	296(%rsp), %r14
	movl	280(%rsp), %r9d
	movq	%rsi, 88(%rsp)
	movl	%edx, 112(%rsp)
	movl	%ecx, 116(%rsp)
	movq	%r14, 128(%rsp)
	movl	%r15d, 120(%rsp)
	xorl	%eax, %eax
	testl	%r9d, %r9d
	jle	.LBB30_8
# BB#1:                                 # %entry
	movl	288(%rsp), %r12d
	testl	%r12d, %r12d
	jle	.LBB30_8
# BB#2:                                 # %if.end.i
	movl	272(%rsp), %eax
	movq	1816(%rdi), %rbp
	movq	1728(%rdi), %r11
	movq	%r11, 48(%rsp)
	addl	1824(%rdi), %r10d
	leal	(%r10,%r9), %ebx
	addl	1828(%rdi), %eax
	leal	(%rax,%r12), %r8d
	cmpl	16(%rbp), %eax
	jl	.LBB30_7
# BB#3:                                 # %land.lhs.true.i
	cmpl	20(%rbp), %r8d
	jg	.LBB30_7
# BB#4:                                 # %land.lhs.true.10.i
	cmpl	24(%rbp), %r10d
	jl	.LBB30_7
# BB#5:                                 # %land.lhs.true.12.i
	cmpl	28(%rbp), %ebx
	jle	.LBB30_6
.LBB30_7:                               # %if.end.19.i
	leaq	48(%rsp), %rcx
	movq	%rcx, (%rsp)
	movl	$clip_call_copy_alpha_hl_color, %r9d
	movl	%r10d, %esi
	movl	%eax, %edx
	movl	%ebx, %ecx
	callq	clip_enumerate_rest
.LBB30_8:                               # %clip_enumerate.exit
	addq	$224, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_6:                               # %if.then.14.i
	movl	%r10d, 56(%rsp)
	movl	%eax, 60(%rsp)
	movl	%r9d, 64(%rsp)
	movl	%r12d, 68(%rsp)
	movl	%r15d, 32(%rsp)
	movq	%r14, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r8d, %r8d
	movq	%r11, %rdi
	movl	%r10d, %r9d
	callq	*1712(%r11)
	jmp	.LBB30_8
.Lfunc_end30:
	.size	clip_copy_alpha_hl_color, .Lfunc_end30-clip_copy_alpha_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	clip_enumerate_rest,@function
clip_enumerate_rest:                    # @clip_enumerate_rest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp214:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp215:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp216:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp217:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp218:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp219:
	.cfi_def_cfa_offset 80
.Ltmp220:
	.cfi_offset %rbx, -56
.Ltmp221:
	.cfi_offset %r12, -48
.Ltmp222:
	.cfi_offset %r13, -40
.Ltmp223:
	.cfi_offset %r14, -32
.Ltmp224:
	.cfi_offset %r15, -24
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movl	%ecx, %ebx
	movl	%esi, %ebp
	movq	80(%rsp), %r13
	movq	1816(%rdi), %rax
	movl	%ebp, 8(%r13)
	movl	%edx, 12(%r13)
	subl	%ebp, %ecx
	movl	%ecx, 16(%r13)
	movl	%r8d, %ecx
	subl	%edx, %ecx
	movl	%ecx, 20(%r13)
	movl	20(%rax), %r8d
	cmpl	%edx, %r8d
	jle	.LBB31_1
	.align	16, 0x90
.LBB31_4:                               # %while.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r12
	movq	8(%r12), %rax
	testq	%rax, %rax
	je	.LBB31_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB31_4 Depth=1
	cmpl	%edx, 20(%rax)
	jg	.LBB31_4
	jmp	.LBB31_6
.LBB31_1:                               # %if.then
	movq	(%rax), %r12
	movb	$1, %cl
	xorl	%esi, %esi
	testq	%r12, %r12
	je	.LBB31_9
# BB#2:                                 # %while.cond.preheader
	cmpl	%edx, 20(%r12)
	jg	.LBB31_7
	.align	16, 0x90
.LBB31_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %r12
	cmpl	%edx, 20(%r12)
	jle	.LBB31_3
.LBB31_6:                               # %if.end.17
	movb	$1, %cl
	xorl	%esi, %esi
	testq	%r12, %r12
	je	.LBB31_9
.LBB31_7:                               # %lor.lhs.false
	movl	16(%r12), %eax
	cmpl	12(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB31_8
# BB#15:                                # %if.end.35
	movq	%r12, 1816(%rdi)
	cmpl	%edx, %eax
	cmovll	%edx, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	20(%r12), %r15d
.LBB31_16:                              # %do.body.40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_17 Depth 2
                                        #       Child Loop BB31_20 Depth 3
	movl	12(%rsp), %r14d         # 4-byte Reload
	cmpl	%r14d, %r15d
	cmovlel	%r15d, %r14d
	.align	16, 0x90
.LBB31_17:                              # %do.body.51
                                        #   Parent Loop BB31_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_20 Depth 3
	movl	24(%r12), %esi
	movl	28(%r12), %ecx
	cmpl	%ebp, %esi
	cmovll	%ebp, %esi
	cmpl	%ebx, %ecx
	cmovgl	%ebx, %ecx
	movl	%ecx, %eax
	subl	%esi, %eax
	jle	.LBB31_28
# BB#18:                                # %do.end.68
                                        #   in Loop: Header=BB31_17 Depth=2
	cmpl	16(%r13), %eax
	jne	.LBB31_26
# BB#19:                                #   in Loop: Header=BB31_17 Depth=2
	movl	%r14d, %eax
	movl	12(%rsp), %edx          # 4-byte Reload
	.align	16, 0x90
.LBB31_20:                              # %while.cond.73
                                        #   Parent Loop BB31_16 Depth=1
                                        #     Parent Loop BB31_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, %r14d
	movq	(%r12), %r12
	testq	%r12, %r12
	je	.LBB31_21
# BB#22:                                # %land.lhs.true
                                        #   in Loop: Header=BB31_20 Depth=3
	cmpl	%r14d, 16(%r12)
	jne	.LBB31_27
# BB#23:                                # %land.lhs.true.78
                                        #   in Loop: Header=BB31_20 Depth=3
	movl	20(%r12), %eax
	cmpl	%edx, %eax
	jg	.LBB31_27
# BB#24:                                # %land.lhs.true.81
                                        #   in Loop: Header=BB31_20 Depth=3
	cmpl	%ebp, 24(%r12)
	jg	.LBB31_27
# BB#25:                                # %land.rhs.84
                                        #   in Loop: Header=BB31_20 Depth=3
	cmpl	%ebx, 28(%r12)
	jge	.LBB31_20
	jmp	.LBB31_27
	.align	16, 0x90
.LBB31_28:                              # %if.else.97
                                        #   in Loop: Header=BB31_17 Depth=2
	movq	(%r12), %r12
	jmp	.LBB31_29
	.align	16, 0x90
.LBB31_26:                              # %if.else.91
                                        #   in Loop: Header=BB31_17 Depth=2
	movq	(%r12), %r12
	jmp	.LBB31_27
.LBB31_21:                              #   in Loop: Header=BB31_17 Depth=2
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB31_27:                              # %if.end.93
                                        #   in Loop: Header=BB31_17 Depth=2
	movq	%r13, %rdi
	movl	8(%rsp), %edx           # 4-byte Reload
	movl	%r14d, %r8d
	callq	*16(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB31_32
.LBB31_29:                              # %if.end.99
                                        #   in Loop: Header=BB31_17 Depth=2
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB31_32
# BB#30:                                # %do.cond.104
                                        #   in Loop: Header=BB31_17 Depth=2
	movl	20(%r12), %ecx
	cmpl	%r15d, %ecx
	je	.LBB31_17
# BB#31:                                # %do.cond.112
                                        #   in Loop: Header=BB31_16 Depth=1
	movl	16(%r12), %edx
	movl	%edx, 8(%rsp)           # 4-byte Spill
	cmpl	12(%rsp), %edx          # 4-byte Folded Reload
	movl	%ecx, %r15d
	jl	.LBB31_16
	jmp	.LBB31_32
.LBB31_8:
	xorl	%ecx, %ecx
	movq	%r12, %rsi
.LBB31_9:                               # %do.end
	xorl	%eax, %eax
	cmpl	$2, 1808(%rdi)
	jl	.LBB31_32
# BB#10:                                # %if.then.22
	testb	%cl, %cl
	je	.LBB31_14
# BB#11:                                # %cond.false
	cmpl	%edx, %r8d
	jle	.LBB31_12
# BB#13:                                # %cond.false.29
	movq	1776(%rdi), %rsi
.LBB31_14:                              # %cond.end.31
	movq	%rsi, 1816(%rdi)
	jmp	.LBB31_32
.LBB31_12:                              # %cond.true.27
	movq	1784(%rdi), %rsi
	movq	%rsi, 1816(%rdi)
.LBB31_32:                              # %cleanup.116
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	clip_enumerate_rest, .Lfunc_end31-clip_enumerate_rest
	.cfi_endproc

	.align	16, 0x90
	.type	clip_call_fill_path,@function
clip_call_fill_path:                    # @clip_call_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp227:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp228:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp229:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp230:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp231:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp232:
	.cfi_def_cfa_offset 512
.Ltmp233:
	.cfi_offset %rbx, -56
.Ltmp234:
	.cfi_offset %r12, -48
.Ltmp235:
	.cfi_offset %r13, -40
.Ltmp236:
	.cfi_offset %r14, -32
.Ltmp237:
	.cfi_offset %r15, -24
.Ltmp238:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, %r14d
	movl	%edx, %r13d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	movq	96(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB32_3
# BB#1:                                 # %if.then
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	160(%rbx), %rax
	movq	40(%rax), %rdx
	leaq	152(%rsp), %rdi
	callq	gx_cpath_init_local_shared
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB32_6
# BB#2:                                 # %cleanup.thread
	movq	160(%rbx), %rax
	movq	40(%rax), %rdx
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	movq	%rdi, %rbp
	callq	gx_path_init_local_shared
	shll	$8, %r12d
	shll	$8, %r13d
	shll	$8, %r14d
	shll	$8, %r15d
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	movl	%r14d, %ecx
	movl	%r15d, %r8d
	callq	gx_path_add_rectangle
	movq	152(%rbx), %rcx
	leaq	152(%rsp), %rdi
	movl	$-1, %edx
	movq	%rbp, %r14
	movq	%r14, %rsi
	callq	gx_cpath_intersect
	movl	%eax, %ebp
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	gx_path_free
	jmp	.LBB32_4
.LBB32_3:                               # %if.else
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movd	%r15d, %xmm0
	movd	%r13d, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%r14d, %xmm0
	movd	%r12d, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pslld	$8, %xmm2
	movdqa	%xmm2, 16(%rsp)
	movq	160(%rbx), %rax
	movq	40(%rax), %rdx
	leaq	152(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_cpath_init_local_shared
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_from_rectangle
	movl	%eax, %ebp
.LBB32_4:                               # %if.end.25
	testl	%ebp, %ebp
	js	.LBB32_6
# BB#5:                                 # %if.end.28
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	1336(%rax), %rax
	testq	%rax, %rax
	movl	$gx_default_fill_path, %ebp
	cmovneq	%rax, %rbp
	movq	152(%rbx), %rsi
	movq	160(%rbx), %rdx
	movq	168(%rbx), %rcx
	movq	(%rbx), %rdi
	movq	80(%rbx), %r8
	leaq	152(%rsp), %rbx
	movq	%rbx, %r9
	callq	*%rbp
	movl	%eax, %ebp
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	gx_cpath_free
.LBB32_6:                               # %cleanup.36
	movl	%ebp, %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	clip_call_fill_path, .Lfunc_end32-clip_call_fill_path
	.cfi_endproc

	.type	gs_clip_device,@object  # @gs_clip_device
	.section	.rodata,"a",@progbits
	.align	8
gs_clip_device:
	.long	1856                    # 0x740
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
	.quad	clip_open
	.quad	gx_forward_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	gx_default_close_device
	.quad	gx_forward_map_rgb_color
	.quad	gx_forward_map_color_rgb
	.quad	clip_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	clip_copy_mono
	.quad	clip_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_forward_get_params
	.quad	gx_forward_put_params
	.quad	gx_forward_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_forward_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	clip_copy_alpha
	.quad	gx_forward_get_band
	.quad	gx_default_copy_rop
	.quad	clip_fill_path
	.quad	gx_default_stroke_path
	.quad	clip_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	clip_strip_tile_rectangle
	.quad	clip_strip_copy_rop
	.quad	clip_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	clip_get_bits_rectangle
	.quad	gx_forward_map_color_rgb_alpha
	.quad	gx_forward_create_compositor
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
	.quad	clip_fill_rectangle_hl_color
	.quad	gx_forward_include_color_space
	.quad	gx_default_fill_linear_color_scanline
	.quad	gx_default_fill_linear_color_trapezoid
	.quad	gx_default_fill_linear_color_triangle
	.quad	gx_forward_update_spot_equivalent_colors
	.quad	gx_forward_ret_devn_params
	.quad	gx_forward_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_forward_dev_spec_op
	.quad	clip_copy_planes
	.quad	gx_forward_get_profile
	.quad	gx_forward_set_graphics_type_tag
	.quad	clip_strip_copy_rop2
	.quad	clip_strip_tile_rect_devn
	.quad	clip_copy_alpha_hl_color
	.quad	0
	.quad	0
	.zero	80
	.quad	0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.zero	4
	.size	gs_clip_device, 1856

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"clipper"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"clip_call_fill_path"
	.size	.L.str.2, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
