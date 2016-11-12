	.text
	.file	"gdevbbox.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	bbox_open_device,@function
bbox_open_device:                       # @bbox_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$0, 1736(%rbx)
	je	.LBB0_2
# BB#1:                                 # %if.end.thread
	movq	%rbx, %rdi
	callq	gx_device_forward_fill_in_procs
	movups	box_procs_default+16(%rip), %xmm0
	movups	%xmm0, 1760(%rbx)
	movups	box_procs_default(%rip), %xmm0
	movups	%xmm0, 1744(%rbx)
	movq	%rbx, 1776(%rbx)
	movq	%rbx, %rax
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	movl	$bbox_default_init_box, %eax
	cmpq	%rax, 1744(%rbx)
	jne	.LBB0_5
# BB#3:                                 # %if.end.if.then.2_crit_edge
	movq	1776(%rbx), %rax
.LBB0_4:                                # %if.then.2
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [2147483647,2147483647,2147483648,2147483648]
	movups	%xmm0, 1788(%rax)
.LBB0_5:                                # %if.end.6
	movq	1728(%rbx), %rsi
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	.LBB0_9
# BB#6:                                 # %land.lhs.true
	xorl	%ebp, %ebp
	cmpl	$0, 1740(%rbx)
	je	.LBB0_8
# BB#7:                                 # %cond.end
	movq	%rsi, %rdi
	callq	gs_opendevice
	movl	%eax, %ebp
	movq	1728(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_9
.LBB0_8:                                # %if.then.i
	movq	%rbx, %rdi
	callq	gx_device_copy_params
.LBB0_9:                                # %bbox_copy_params.exit
	movq	%rbx, %rdi
	callq	gx_device_black
	movq	%rax, 1808(%rbx)
	movq	%rbx, %rdi
	callq	gx_device_white
	movq	%rax, 1816(%rbx)
	cmpl	$0, 1784(%rbx)
	je	.LBB0_11
# BB#10:                                # %select.mid
	movq	$-1, %rax
.LBB0_11:                               # %select.end
	movq	%rax, 1824(%rbx)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bbox_open_device, .Lfunc_end0-bbox_open_device
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_output_page,@function
bbox_output_page:                       # @bbox_output_page
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
	subq	$40, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 96
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
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpl	$0, 1736(%rbx)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%edx, 4(%rsp)           # 4-byte Spill
	callq	gx_device_bbox_bbox
	movq	24(%rbx), %rdi
	movl	$.L.str.4, %esi
	movl	$391, %edx              # imm = 0x187
	callq	dmprintf_file_and_line
	movq	24(%rbx), %r12
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r13d
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r14d
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r9d
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r13d, %edx
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	callq	errprintf
	movq	24(%rbx), %rdi
	movl	$.L.str.4, %esi
	movl	$393, %edx              # imm = 0x189
	callq	dmprintf_file_and_line
	movq	24(%rbx), %rdi
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	32(%rsp), %xmm3         # xmm3 = mem[0],zero
	movl	$.L.str.6, %esi
	movb	$4, %al
	callq	errprintf
	movl	4(%rsp), %edx           # 4-byte Reload
.LBB1_2:                                # %if.end
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	gx_forward_output_page
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bbox_output_page, .Lfunc_end1-bbox_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_close_device,@function
bbox_close_device:                      # @bbox_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	movl	$bbox_default_init_box, %eax
	cmpq	%rax, 1744(%rbx)
	je	.LBB2_5
# BB#1:                                 # %if.then
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	je	.LBB2_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 1740(%rbx)
	je	.LBB2_4
# BB#3:                                 # %cond.true
	callq	gs_closedevice
	movl	%eax, %ebp
.LBB2_4:                                # %cond.end
	movq	24(%rbx), %rdi
	movl	$.L.str.3, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB2_7
.LBB2_5:                                # %if.else
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	je	.LBB2_7
# BB#6:                                 # %land.lhs.true.4
	cmpl	$0, 1740(%rbx)
	je	.LBB2_7
# BB#8:                                 # %cond.true.7
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gs_closedevice          # TAILCALL
.LBB2_7:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bbox_close_device, .Lfunc_end2-bbox_close_device
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_fill_rectangle,@function
bbox_fill_rectangle:                    # @bbox_fill_rectangle
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
	movq	%r9, %r13
	movl	%r8d, %r14d
	movl	%ecx, %ebp
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	1728(%rbx), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB3_2
# BB#1:                                 # %cond.false
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	movq	%r13, %r9
	callq	*1200(%rdi)
.LBB3_2:                                # %cond.end
	cmpq	%r13, 1824(%rbx)
	je	.LBB3_4
# BB#3:                                 # %if.then
	movq	1776(%rbx), %rdi
	addl	%r12d, %ebp
	shll	$8, %r12d
	shll	$8, %ebp
	addl	%r15d, %r14d
	shll	$8, %r15d
	shll	$8, %r14d
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	movl	%eax, %ebp
	callq	*1760(%rbx)
	movl	%ebp, %eax
.LBB3_4:                                # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bbox_fill_rectangle, .Lfunc_end3-bbox_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_copy_mono,@function
bbox_copy_mono:                         # @bbox_copy_mono
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
	subq	$40, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 96
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
	movl	%r9d, %r12d
	movq	%rdi, %r13
	movq	128(%rsp), %rbp
	movq	120(%rsp), %r14
	movl	112(%rsp), %r11d
	movl	104(%rsp), %r15d
	movl	96(%rsp), %ebx
	movq	1728(%r13), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB4_2
# BB#1:                                 # %cond.false
	movq	%rbp, 32(%rsp)
	movq	%r14, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	%r12d, %r9d
	movl	%r11d, %r14d
	callq	*1216(%rdi)
	movl	%r14d, %r11d
	movq	120(%rsp), %r14
.LBB4_2:                                # %cond.end
	cmpq	$-1, %rbp
	je	.LBB4_4
# BB#3:                                 # %land.lhs.true
	cmpq	%rbp, 1824(%r13)
	jne	.LBB4_6
.LBB4_4:                                # %lor.lhs.false
	cmpq	$-1, %r14
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true.4
	cmpq	%r14, 1824(%r13)
	je	.LBB4_7
.LBB4_6:                                # %if.then
	movq	1776(%r13), %rdi
	addl	%r12d, %r15d
	shll	$8, %r12d
	shll	$8, %r15d
	addl	%ebx, %r11d
	shll	$8, %ebx
	shll	$8, %r11d
	movl	%r12d, %esi
	movl	%ebx, %edx
	movl	%r15d, %ecx
	movl	%r11d, %r8d
	movl	%eax, %ebx
	callq	*1760(%r13)
	movl	%ebx, %eax
.LBB4_7:                                # %if.end
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bbox_copy_mono, .Lfunc_end4-bbox_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_copy_color,@function
bbox_copy_color:                        # @bbox_copy_color
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
	subq	$24, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 80
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
	movl	%r9d, %r15d
	movq	%rdi, %r14
	movl	96(%rsp), %ebp
	movl	88(%rsp), %ebx
	movl	80(%rsp), %r12d
	movq	1728(%r14), %rdi
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	je	.LBB5_2
# BB#1:                                 # %cond.false
	movl	%ebp, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r12d, (%rsp)
	movl	%r15d, %r9d
	callq	*1224(%rdi)
	movl	%eax, %r13d
.LBB5_2:                                # %cond.end
	movq	1776(%r14), %rdi
	addl	%r15d, %ebx
	shll	$8, %r15d
	shll	$8, %ebx
	addl	%r12d, %ebp
	shll	$8, %r12d
	shll	$8, %ebp
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	*1760(%r14)
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	bbox_copy_color, .Lfunc_end5-bbox_copy_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	bbox_get_params,@function
bbox_get_params:                        # @bbox_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp64:
	.cfi_def_cfa_offset 80
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_forward_get_params
	testl	%eax, %eax
	js	.LBB6_6
# BB#1:                                 # %if.end
	movq	1776(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_2
# BB#3:                                 # %if.else
	leaq	32(%rsp), %rsi
	callq	*1752(%rbx)
	jmp	.LBB6_4
.LBB6_2:                                # %if.then.2
	movups	1788(%rbx), %xmm0
	movaps	%xmm0, 32(%rsp)
.LBB6_4:                                # %if.end.5
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%rsp), %xmm0
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	36(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	40(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	44(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$4, 24(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_float_array
	testl	%eax, %eax
	js	.LBB6_6
# BB#5:                                 # %if.end.27
	addq	$1784, %rbx             # imm = 0x6F8
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_bool
.LBB6_6:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	bbox_get_params, .Lfunc_end6-bbox_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1132462080              # float 256
	.text
	.align	16, 0x90
	.type	bbox_put_params,@function
bbox_put_params:                        # @bbox_put_params
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
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 64
.Ltmp72:
	.cfi_offset %rbx, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	1784(%r15), %eax
	movl	%eax, 20(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_read_float_array
	movl	%eax, %ebp
	xorl	%ebx, %ebx
	cmpl	$1, %ebp
	je	.LBB7_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB7_3
# BB#2:                                 # %sw.bb
	movl	$-15, %ebp
	xorl	%ebx, %ebx
	cmpl	$4, 8(%rsp)
	je	.LBB7_5
.LBB7_3:                                # %e
	movq	(%r14), %rax
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %ebx
.LBB7_4:                                # %sw.bb.3
	movq	$0, (%rsp)
.LBB7_5:                                # %sw.epilog
	leaq	20(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	cmpl	$2, %ebp
	jb	.LBB7_7
# BB#6:                                 # %sw.default.5
	movq	(%r14), %rax
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %ebx
.LBB7_7:                                # %sw.epilog.10
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gx_forward_put_params
	movl	%eax, %ebp
	testl	%ebx, %ebx
	cmovsl	%ebx, %ebp
	testl	%ebp, %ebp
	js	.LBB7_11
# BB#8:                                 # %if.then.16
	cmpq	$0, (%rsp)
	je	.LBB7_10
# BB#9:                                 # %if.then.19
	movq	1776(%r15), %rdi
	callq	*1744(%r15)
	movq	1776(%r15), %rdi
	movq	(%rsp), %rax
	movss	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movss	8(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ecx
	mulss	12(%rax), %xmm0
	cvttss2si	%xmm0, %r8d
	callq	*1760(%r15)
.LBB7_10:                               # %if.end.36
	movl	20(%rsp), %eax
	movl	%eax, 1784(%r15)
.LBB7_11:                               # %if.end.38
	movl	84(%r15), %ebx
	movq	1728(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB7_13
# BB#12:                                # %if.then.i
	movq	%r15, %rdi
	callq	gx_device_copy_params
.LBB7_13:                               # %if.end.i
	testl	%ebx, %ebx
	je	.LBB7_17
# BB#14:                                # %if.then.1.i
	movq	%r15, %rdi
	callq	gx_device_black
	movq	%rax, 1808(%r15)
	movq	%r15, %rdi
	callq	gx_device_white
	movq	%rax, 1816(%r15)
	cmpl	$0, 1784(%r15)
	je	.LBB7_16
# BB#15:                                # %select.mid
	movq	$-1, %rax
.LBB7_16:                               # %select.end
	movq	%rax, 1824(%r15)
.LBB7_17:                               # %bbox_copy_params.exit
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	bbox_put_params, .Lfunc_end7-bbox_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_copy_alpha,@function
bbox_copy_alpha:                        # @bbox_copy_alpha
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
	subq	$40, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 96
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
	movl	%r9d, %r15d
	movq	%rdi, %r14
	movl	112(%rsp), %ebp
	movl	104(%rsp), %ebx
	movl	96(%rsp), %r12d
	movq	1728(%r14), %rdi
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	je	.LBB8_2
# BB#1:                                 # %cond.false
	movl	128(%rsp), %eax
	movq	120(%rsp), %r9
	movl	%eax, 32(%rsp)
	movq	%r9, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r12d, (%rsp)
	movl	%r15d, %r9d
	callq	*1312(%rdi)
	movl	%eax, %r13d
.LBB8_2:                                # %cond.end
	movq	1776(%r14), %rdi
	addl	%r15d, %ebx
	shll	$8, %r15d
	shll	$8, %ebx
	addl	%r12d, %ebp
	shll	$8, %r12d
	shll	$8, %ebp
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	*1760(%r14)
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	bbox_copy_alpha, .Lfunc_end8-bbox_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_fill_path,@function
bbox_fill_path:                         # @bbox_fill_path
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
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp95:
	.cfi_def_cfa_offset 752
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
	movq	%r9, %rbp
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rdi, %r12
	movq	1728(%r12), %r14
	leaq	1336(%r14), %rcx
	testq	%r14, %r14
	movl	$gs_null_device+1336, %eax
	cmovneq	%rcx, %rax
	testq	%r13, %r13
	je	.LBB9_1
# BB#4:                                 # %if.else
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r15)
	jne	.LBB9_6
# BB#5:                                 # %land.lhs.true
	movq	8(%r15), %rax
	cmpq	1824(%r12), %rax
	je	.LBB9_19
.LBB9_6:                                # %land.lhs.true.27
	movq	%r13, %rdi
	callq	gx_path_is_void
	testl	%eax, %eax
	je	.LBB9_7
.LBB9_19:                               # %if.else.104
	movq	%r14, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%rbp, %r9
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB9_1:                                # %if.then
	testq	%rbp, %rbp
	je	.LBB9_3
# BB#2:                                 # %if.end
	leaq	24(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_inner_box
	movl	4(%rbx), %ecx
	movl	8(%rbx), %r8d
	movl	24(%rsp), %esi
	subl	%ecx, %esi
	movl	%esi, 24(%rsp)
	movl	28(%rsp), %edx
	subl	%r8d, %edx
	movl	%edx, 28(%rsp)
	addl	32(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	addl	36(%rsp), %r8d
	movl	%r8d, 36(%rsp)
	movq	1776(%r12), %rdi
	callq	*1760(%r12)
.LBB9_3:                                # %cleanup
	xorl	%ebx, %ebx
.LBB9_18:                               # %cleanup.106
	movl	%ebx, %eax
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_7:                                # %if.then.29
	movq	%rbx, (%rsp)            # 8-byte Spill
	leaq	680(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_path_bbox
	xorl	%ebx, %ebx
	testl	%eax, %eax
	js	.LBB9_18
# BB#8:                                 # %if.end.35
	movq	(%rsp), %rbx            # 8-byte Reload
	movl	4(%rbx), %eax
	movl	8(%rbx), %ecx
	subl	%eax, 680(%rsp)
	subl	%ecx, 684(%rsp)
	addl	%eax, 688(%rsp)
	addl	%ecx, 692(%rsp)
	movq	1776(%r12), %rdi
	leaq	680(%rsp), %rsi
	callq	*1768(%r12)
	testl	%eax, %eax
	je	.LBB9_10
# BB#9:                                 # %if.then.57
	movq	%r14, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%rbp, %r9
	callq	*8(%rsp)                # 8-byte Folded Reload
	movl	%eax, %ebx
	jmp	.LBB9_18
.LBB9_10:                               # %if.end.59
	testq	%r14, %r14
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %r10           # 8-byte Reload
	je	.LBB9_13
# BB#11:                                # %if.end.59
	movl	$gx_default_fill_path, %eax
	cmpq	%rax, %r10
	jne	.LBB9_13
# BB#12:                                # %if.then.63
	movq	%r12, %rdi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%rbp, %r9
	callq	gx_default_fill_path
	movl	%eax, %ebx
	jmp	.LBB9_18
.LBB9_13:                               # %if.end.65
	movq	%r14, %rdi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%rbp, %r9
	callq	*%r10
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB9_18
# BB#14:                                # %if.end.69
	testq	%rbp, %rbp
	je	.LBB9_17
# BB#15:                                # %land.lhs.true.71
	movl	680(%rsp), %esi
	movl	684(%rsp), %edx
	movl	688(%rsp), %ecx
	movl	692(%rsp), %r8d
	movq	%rbp, %rdi
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB9_16
.LBB9_17:                               # %if.else.89
	movq	1776(%r12), %rdi
	movl	680(%rsp), %esi
	movl	684(%rsp), %edx
	movl	688(%rsp), %ecx
	movl	692(%rsp), %r8d
	callq	*1760(%r12)
	jmp	.LBB9_18
.LBB9_16:                               # %if.then.82
	movq	1808(%r12), %rax
	movq	%rax, 32(%rsp)
	movq	$gx_dc_type_data_pure, 24(%rsp)
	movl	$0, 384(%rsp)
	movq	$0, 1728(%r12)
	leaq	24(%rsp), %r8
	movq	%r12, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rbp, %r9
	callq	gx_default_fill_path
	movl	%eax, %ebx
	movq	%r14, 1728(%r12)
	jmp	.LBB9_18
.Lfunc_end9:
	.size	bbox_fill_path, .Lfunc_end9-bbox_fill_path
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.text
	.align	16, 0x90
	.type	bbox_stroke_path,@function
bbox_stroke_path:                       # @bbox_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp108:
	.cfi_def_cfa_offset 768
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	1728(%rdi), %rdi
	xorl	%r14d, %r14d
	testq	%rdi, %rdi
	je	.LBB10_2
# BB#1:                                 # %cond.false
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%rbx, %r14
	movq	%rcx, %rbx
	movq	%r12, %r8
	movq	%r15, %r9
	movq	%rdi, %rbp
	callq	*1344(%rbp)
	movq	%rbp, %rdi
	movq	%rbx, %rcx
	movq	%r14, %rbx
	movl	%eax, %r14d
.LBB10_2:                               # %cond.end
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%r12)
	jne	.LBB10_4
# BB#3:                                 # %land.lhs.true
	movq	8(%r12), %rax
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpq	1824(%rdx), %rax
	je	.LBB10_18
.LBB10_4:                               # %if.then
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	680(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rbp
	movq	%rbp, %rsi
	callq	gx_stroke_path_expansion
	testl	%eax, %eax
	jne	.LBB10_7
# BB#5:                                 # %land.lhs.true.5
	leaq	688(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_path_bbox
	testl	%eax, %eax
	js	.LBB10_7
# BB#6:                                 # %if.then.8
	movq	%rbx, %r13
	movl	680(%rsp), %eax
	subl	%eax, 688(%rsp)
	movl	684(%rsp), %ecx
	subl	%ecx, 692(%rsp)
	addl	%eax, 696(%rsp)
	addl	%ecx, 700(%rsp)
	movq	16(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_14
.LBB10_7:                               # %if.else
	movl	%r14d, %r12d
	movq	8(%rbx), %rsi
	xorl	%edi, %edi
	movl	$.L.str.9, %edx
	callq	gx_path_alloc_shared
	movq	%rax, %r14
	testq	%r14, %r14
	movq	%rbx, %rcx
	movq	16(%rsp), %rbx          # 8-byte Reload
	je	.LBB10_12
# BB#8:                                 # %if.end
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%rcx, %r13
	callq	gx_imager_stroke_add
	testl	%eax, %eax
	js	.LBB10_10
# BB#9:                                 # %if.end.27
	leaq	688(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_path_bbox
	testl	%eax, %eax
	jns	.LBB10_11
.LBB10_10:                              # %if.end.38
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [2147483648,2147483648,2147483647,2147483647]
	movaps	%xmm0, 688(%rsp)
.LBB10_11:                              # %if.then.40
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	gx_path_free
	jmp	.LBB10_13
.LBB10_12:                              # %if.end.42.critedge
	movq	%rcx, %r13
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [2147483648,2147483648,2147483647,2147483647]
	movaps	%xmm0, 688(%rsp)
.LBB10_13:                              # %if.end.42
	movl	%r12d, %r14d
.LBB10_14:                              # %if.end.42
	testq	%r15, %r15
	je	.LBB10_17
# BB#15:                                # %land.lhs.true.44
	movl	688(%rsp), %esi
	movl	692(%rsp), %edx
	movl	696(%rsp), %ecx
	movl	700(%rsp), %r8d
	movq	%r15, %rdi
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB10_16
.LBB10_17:                              # %if.else.62
	movq	1776(%rbx), %rdi
	movl	688(%rsp), %esi
	movl	692(%rsp), %edx
	movl	696(%rsp), %ecx
	movl	700(%rsp), %r8d
	callq	*1760(%rbx)
	jmp	.LBB10_18
.LBB10_16:                              # %if.then.55
	movq	1808(%rbx), %rax
	movq	%rax, 32(%rsp)
	movq	$gx_dc_type_data_pure, 24(%rsp)
	movl	$0, 384(%rsp)
	movq	$0, 1728(%rbx)
	leaq	24(%rsp), %r8
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%r15, %r9
	callq	gx_default_stroke_path
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 1728(%rbx)
.LBB10_18:                              # %if.end.72
	movl	%r14d, %eax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	bbox_stroke_path, .Lfunc_end10-bbox_stroke_path
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_fill_mask,@function
bbox_fill_mask:                         # @bbox_fill_mask
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
	subq	$120, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 176
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
	movl	%r9d, %r15d
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movq	224(%rsp), %r11
	movl	216(%rsp), %ebx
	movl	208(%rsp), %r12d
	movq	200(%rsp), %r13
	movl	192(%rsp), %r10d
	movl	184(%rsp), %ebp
	movl	176(%rsp), %r9d
	movq	1728(%rdi), %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB11_2
# BB#1:                                 # %cond.false
	movq	%r11, 48(%rsp)
	movl	%ebx, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movq	%r13, 24(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	%r9d, (%rsp)
	movq	%r14, %rdi
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movq	%r9, %r12
	movl	%r15d, %r9d
	movq	%rsi, %rbp
	movq	%r8, %r13
	movl	%ecx, %ebx
	callq	*1352(%r14)
	movl	%ebx, %ecx
	movq	%r13, %r8
	movq	%rbp, %rsi
	movq	%r12, %r9
	movl	116(%rsp), %edx         # 4-byte Reload
	movl	192(%rsp), %r10d
	movl	184(%rsp), %ebp
	movq	224(%rsp), %r11
.LBB11_2:                               # %cond.end
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 116(%rsp)         # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movq	%r8, 88(%rsp)           # 8-byte Spill
	movl	%r15d, %r14d
	shll	$8, %r14d
	movl	%r9d, %r13d
	shll	$8, %r13d
	leal	(%rbp,%r15), %r12d
	movq	%r15, 56(%rsp)          # 8-byte Spill
	shll	$8, %r12d
	leal	(%r10,%r9), %r15d
	movq	%r10, %rbp
	shll	$8, %r15d
	testq	%r11, %r11
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
	movq	%r11, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movq	%r11, %rbx
	movl	%r15d, %r8d
	callq	gx_cpath_includes_rectangle
	movq	%rbx, %rcx
	testl	%eax, %eax
	je	.LBB11_4
.LBB11_5:                               # %if.else
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	1776(%rax), %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	callq	*1760(%rax)
	jmp	.LBB11_6
.LBB11_4:                               # %if.then
	movq	104(%rsp), %rbx         # 8-byte Reload
	movq	$0, 1728(%rbx)
	movq	%rcx, 48(%rsp)
	movl	216(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	208(%rsp), %eax
	movl	%eax, 32(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movl	184(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	176(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movl	116(%rsp), %edx         # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	88(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	gx_default_fill_mask
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1728(%rbx)
.LBB11_6:                               # %if.end
	movl	100(%rsp), %eax         # 4-byte Reload
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	bbox_fill_mask, .Lfunc_end11-bbox_fill_mask
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_fill_trapezoid,@function
bbox_fill_trapezoid:                    # @bbox_fill_trapezoid
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
	pushq	%r13
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp134:
	.cfi_def_cfa_offset 112
.Ltmp135:
	.cfi_offset %rbx, -56
.Ltmp136:
	.cfi_offset %r12, -48
.Ltmp137:
	.cfi_offset %r13, -40
.Ltmp138:
	.cfi_offset %r14, -32
.Ltmp139:
	.cfi_offset %r15, -24
.Ltmp140:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movq	112(%rsp), %rdx
	movq	1728(%rbp), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB12_2
# BB#1:                                 # %cond.false
	movl	120(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	%ecx, %ebx
	movl	%r15d, %r8d
	movq	%r12, %r13
	movl	%r9d, %r12d
	callq	*1360(%rdi)
	movl	%r12d, %r9d
	movq	%r13, %r12
	movl	%ebx, %ecx
	movq	112(%rsp), %rdx
.LBB12_2:                               # %cond.end
	movl	%r15d, 52(%rsp)         # 4-byte Spill
	movl	$gx_dc_type_data_pure, %esi
	cmpq	%rsi, (%rdx)
	jne	.LBB12_4
# BB#3:                                 # %land.lhs.true
	movq	8(%rdx), %rdx
	cmpq	1824(%rbp), %rdx
	je	.LBB12_18
.LBB12_4:                               # %if.then
	movl	4(%r14), %ebx
	cmpl	%ecx, %ebx
	jne	.LBB12_6
# BB#5:                                 # %cond.true.4
	movl	%ecx, %r13d
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	(%r14), %ecx
	leaq	12(%r14), %rbp
	leaq	8(%r14), %r15
	movl	%ecx, %eax
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false.6
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movl	%eax, 48(%rsp)          # 4-byte Spill
	leaq	8(%r14), %r15
	movl	8(%r14), %edi
	movl	12(%r14), %edx
	subl	(%r14), %edi
	movl	%ecx, %esi
	movl	%ecx, %r13d
	subl	%ebx, %esi
	leaq	12(%r14), %rbp
	subl	%ebx, %edx
	callq	fixed_mult_quo
	movl	(%r14), %ecx
	leal	(%rax,%rcx), %eax
.LBB12_7:                               # %cond.end.8
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	(%rbp), %edx
	movl	52(%rsp), %ebx          # 4-byte Reload
	cmpl	%ebx, %edx
	movl	(%r15), %r15d
	je	.LBB12_9
# BB#8:                                 # %cond.false.15
	subl	%ecx, %r15d
	movl	4(%r14), %eax
	movl	%ebx, %esi
	subl	%eax, %esi
	subl	%eax, %edx
	movl	%r15d, %edi
	callq	fixed_mult_quo
	movl	%eax, %r15d
	addl	(%r14), %r15d
.LBB12_9:                               # %cond.end.17
	movl	4(%r12), %eax
	cmpl	%r13d, %eax
	jne	.LBB12_11
# BB#10:                                # %cond.true.22
	movl	%r13d, 44(%rsp)         # 4-byte Spill
	movl	(%r12), %ecx
	leaq	12(%r12), %r13
	leaq	8(%r12), %r14
	movl	%ecx, %ebp
	jmp	.LBB12_12
.LBB12_11:                              # %cond.false.25
	movl	%r13d, %ebp
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	leaq	8(%r12), %r14
	movl	8(%r12), %edi
	movl	12(%r12), %edx
	subl	(%r12), %edi
	movl	%ebp, %esi
	subl	%eax, %esi
	leaq	12(%r12), %r13
	subl	%eax, %edx
	callq	fixed_mult_quo
	movl	(%r12), %ecx
	leal	(%rax,%rcx), %ebp
.LBB12_12:                              # %cond.end.27
	movl	(%r13), %edx
	cmpl	%ebx, %edx
	movl	(%r14), %r8d
	je	.LBB12_14
# BB#13:                                # %cond.false.35
	subl	%ecx, %r8d
	movl	4(%r12), %eax
	movl	%ebx, %esi
	subl	%eax, %esi
	subl	%eax, %edx
	movl	%r8d, %edi
	callq	fixed_mult_quo
	movl	%eax, %r8d
	addl	(%r12), %r8d
.LBB12_14:                              # %cond.end.37
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	28(%rsp), %edx          # 4-byte Reload
	cmpl	%r15d, %edx
	movl	%r15d, %eax
	cmovlel	%edx, %eax
	cmovgel	%edx, %r15d
	cmpl	%r8d, %ebp
	movl	%r8d, %edx
	cmovlel	%ebp, %edx
	cmovgel	%ebp, %r8d
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	cmpl	%r8d, %r15d
	cmovgel	%r15d, %r8d
	testl	%esi, %esi
	movq	1760(%rdi), %rax
	movq	1776(%rdi), %rdi
	je	.LBB12_16
# BB#15:                                # %if.then.69
	movl	%ecx, %esi
	movl	%ebx, %ecx
	jmp	.LBB12_17
.LBB12_16:                              # %if.else
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%ebx, %r8d
.LBB12_17:                              # %if.end.73
	callq	*%rax
	movl	48(%rsp), %eax          # 4-byte Reload
.LBB12_18:                              # %if.end.73
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	bbox_fill_trapezoid, .Lfunc_end12-bbox_fill_trapezoid
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_fill_parallelogram,@function
bbox_fill_parallelogram:                # @bbox_fill_parallelogram
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp144:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp145:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp147:
	.cfi_def_cfa_offset 96
.Ltmp148:
	.cfi_offset %rbx, -56
.Ltmp149:
	.cfi_offset %r12, -48
.Ltmp150:
	.cfi_offset %r13, -40
.Ltmp151:
	.cfi_offset %r14, -32
.Ltmp152:
	.cfi_offset %r15, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movl	%ecx, %r12d
	movl	%edx, %r9d
	movl	%esi, %r13d
	movq	%rdi, %r11
	movq	104(%rsp), %rcx
	movl	96(%rsp), %r14d
	movq	1728(%r11), %rdi
	xorl	%r15d, %r15d
	testq	%rdi, %rdi
	je	.LBB13_2
# BB#1:                                 # %cond.false
	movl	112(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movl	%r14d, (%rsp)
	movl	%r13d, %esi
	movl	%r9d, %edx
	movl	%r12d, %ecx
	movl	%ebp, %r8d
	movl	%r9d, 36(%rsp)          # 4-byte Spill
	movl	%ebx, %r9d
	movq	%r11, %r15
	callq	*1368(%rdi)
	movq	104(%rsp), %rcx
	movq	%r15, %r11
	movl	36(%rsp), %r9d          # 4-byte Reload
	movl	%eax, %r15d
.LBB13_2:                               # %cond.end
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%rcx)
	jne	.LBB13_4
# BB#3:                                 # %land.lhs.true
	movq	8(%rcx), %rax
	cmpq	1824(%r11), %rax
	je	.LBB13_5
.LBB13_4:                               # %if.then
	movl	%ebx, %eax
	sarl	$31, %eax
	leal	(%rbx,%r12), %ecx
	andl	%ebx, %eax
	xorl	%edi, %edi
	testl	%ebx, %ebx
	movl	%r12d, %esi
	cmovlel	%ecx, %esi
	cmovlel	%edi, %ebx
	cmovlel	%r12d, %ecx
	testl	%r12d, %r12d
	cmovgl	%eax, %esi
	cmovlel	%ebx, %ecx
	movl	%r14d, %eax
	sarl	$31, %eax
	leal	(%r14,%rbp), %r8d
	andl	%r14d, %eax
	testl	%r14d, %r14d
	movl	%ebp, %edx
	cmovlel	%r8d, %edx
	cmovlel	%edi, %r14d
	cmovlel	%ebp, %r8d
	testl	%ebp, %ebp
	cmovgl	%eax, %edx
	cmovlel	%r14d, %r8d
	movq	1776(%r11), %rdi
	addl	%r13d, %esi
	addl	%r9d, %edx
	addl	%r13d, %ecx
	addl	%r9d, %r8d
	callq	*1760(%r11)
.LBB13_5:                               # %if.end.35
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	bbox_fill_parallelogram, .Lfunc_end13-bbox_fill_parallelogram
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_fill_triangle,@function
bbox_fill_triangle:                     # @bbox_fill_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp157:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp158:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp160:
	.cfi_def_cfa_offset 96
.Ltmp161:
	.cfi_offset %rbx, -56
.Ltmp162:
	.cfi_offset %r12, -48
.Ltmp163:
	.cfi_offset %r13, -40
.Ltmp164:
	.cfi_offset %r14, -32
.Ltmp165:
	.cfi_offset %r15, -24
.Ltmp166:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, %r12d
	movl	%ecx, %ebp
	movl	%edx, %ecx
	movl	%esi, %r8d
	movq	%rdi, %r15
	movq	104(%rsp), %rdx
	movl	96(%rsp), %ebx
	movq	1728(%r15), %rdi
	xorl	%r14d, %r14d
	testq	%rdi, %rdi
	je	.LBB14_2
# BB#1:                                 # %cond.false
	movl	112(%rsp), %eax
	movl	%eax, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	%r8d, %esi
	movl	%ecx, %edx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%ebp, %ecx
	movl	%r8d, %r14d
	movl	%r12d, %r8d
	movl	%r13d, %r9d
	callq	*1376(%rdi)
	movq	104(%rsp), %rdx
	movl	%r14d, %r8d
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%eax, %r14d
.LBB14_2:                               # %cond.end
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, (%rdx)
	jne	.LBB14_4
# BB#3:                                 # %land.lhs.true
	movq	8(%rdx), %rax
	cmpq	1824(%r15), %rax
	je	.LBB14_19
.LBB14_4:                               # %if.then
	testl	%ebp, %ebp
	jle	.LBB14_5
# BB#8:                                 # %if.else.12
	testl	%r13d, %r13d
	jle	.LBB14_9
# BB#10:                                # %if.else.15
	cmpl	%r13d, %ebp
	cmovll	%r13d, %ebp
	xorl	%esi, %esi
	jmp	.LBB14_11
.LBB14_5:                               # %if.then.4
	testl	%r13d, %r13d
	jle	.LBB14_7
# BB#6:
	movl	%ebp, %esi
	movl	%r13d, %ebp
	jmp	.LBB14_11
.LBB14_9:
	movl	%r13d, %esi
	jmp	.LBB14_11
.LBB14_7:                               # %if.then.6
	cmpl	%r13d, %ebp
	cmovlel	%ebp, %r13d
	xorl	%ebp, %ebp
	movl	%r13d, %esi
.LBB14_11:                              # %do.body.23
	testl	%r12d, %r12d
	jle	.LBB14_12
# BB#15:                                # %if.else.35
	testl	%ebx, %ebx
	jle	.LBB14_16
# BB#17:                                # %if.else.38
	cmpl	%ebx, %r12d
	cmovll	%ebx, %r12d
	xorl	%edx, %edx
	jmp	.LBB14_18
.LBB14_12:                              # %if.then.25
	testl	%ebx, %ebx
	jle	.LBB14_14
# BB#13:
	movl	%r12d, %edx
	movl	%ebx, %r12d
	jmp	.LBB14_18
.LBB14_16:
	movl	%ebx, %edx
	jmp	.LBB14_18
.LBB14_14:                              # %if.then.27
	cmpl	%ebx, %r12d
	cmovlel	%r12d, %ebx
	xorl	%r12d, %r12d
	movl	%ebx, %edx
.LBB14_18:                              # %do.end.47
	movq	1776(%r15), %rdi
	addl	%r8d, %esi
	addl	%ecx, %edx
	addl	%r8d, %ebp
	addl	%ecx, %r12d
	movl	%ebp, %ecx
	movl	%r12d, %r8d
	callq	*1760(%r15)
.LBB14_19:                              # %if.end.51
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	bbox_fill_triangle, .Lfunc_end14-bbox_fill_triangle
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_draw_thin_line,@function
bbox_draw_thin_line:                    # @bbox_draw_thin_line
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
	pushq	%r13
.Ltmp170:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp171:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp173:
	.cfi_def_cfa_offset 80
.Ltmp174:
	.cfi_offset %rbx, -56
.Ltmp175:
	.cfi_offset %r12, -48
.Ltmp176:
	.cfi_offset %r13, -40
.Ltmp177:
	.cfi_offset %r14, -32
.Ltmp178:
	.cfi_offset %r15, -24
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB15_2
# BB#1:                                 # %cond.false
	movl	96(%rsp), %eax
	movl	88(%rsp), %ecx
	movl	80(%rsp), %edx
	movl	%eax, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%edx, (%rsp)
	movl	%ebp, %esi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	movl	%ebx, %r8d
	movq	%r13, %r9
	callq	*1384(%rdi)
.LBB15_2:                               # %cond.end
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%r13)
	jne	.LBB15_4
# BB#3:                                 # %land.lhs.true
	movq	8(%r13), %rcx
	cmpq	1824(%r14), %rcx
	je	.LBB15_5
.LBB15_4:                               # %if.then
	cmpl	%r12d, %ebp
	movl	%r12d, %esi
	cmovlel	%ebp, %esi
	cmovll	%r12d, %ebp
	cmpl	%r15d, %ebx
	movl	%r15d, %edx
	cmovlel	%ebx, %edx
	cmovll	%r15d, %ebx
	movq	1776(%r14), %rdi
	movl	%eax, %r15d
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	*1760(%r14)
	movl	%r15d, %eax
.LBB15_5:                               # %if.end.12
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	bbox_draw_thin_line, .Lfunc_end15-bbox_draw_thin_line
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_strip_tile_rectangle,@function
bbox_strip_tile_rectangle:              # @bbox_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp181:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp182:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp183:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp184:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp185:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp186:
	.cfi_def_cfa_offset 96
.Ltmp187:
	.cfi_offset %rbx, -56
.Ltmp188:
	.cfi_offset %r12, -48
.Ltmp189:
	.cfi_offset %r13, -40
.Ltmp190:
	.cfi_offset %r14, -32
.Ltmp191:
	.cfi_offset %r15, -24
.Ltmp192:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	je	.LBB16_2
# BB#1:                                 # %cond.false
	movl	120(%rsp), %eax
	movl	112(%rsp), %ecx
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movl	%eax, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	*1416(%rdi)
	movl	%eax, %r13d
.LBB16_2:                               # %cond.end
	movq	1776(%r14), %rdi
	addl	%r12d, %ebp
	shll	$8, %r12d
	shll	$8, %ebp
	addl	%r15d, %ebx
	shll	$8, %r15d
	shll	$8, %ebx
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	*1760(%r14)
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	bbox_strip_tile_rectangle, .Lfunc_end16-bbox_strip_tile_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_strip_copy_rop,@function
bbox_strip_copy_rop:                    # @bbox_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp194:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp195:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp196:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp197:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp198:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp199:
	.cfi_def_cfa_offset 128
.Ltmp200:
	.cfi_offset %rbx, -56
.Ltmp201:
	.cfi_offset %r12, -48
.Ltmp202:
	.cfi_offset %r13, -40
.Ltmp203:
	.cfi_offset %r14, -32
.Ltmp204:
	.cfi_offset %r15, -24
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	168(%rsp), %ebp
	movl	160(%rsp), %ebx
	movl	152(%rsp), %r15d
	movl	144(%rsp), %r12d
	movq	1728(%r14), %rdi
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	je	.LBB17_2
# BB#1:                                 # %cond.false
	movl	192(%rsp), %eax
	movl	184(%rsp), %r10d
	movl	176(%rsp), %r11d
	movq	136(%rsp), %r13
	movl	%eax, 64(%rsp)
	movl	%r10d, 56(%rsp)
	movl	%r11d, 48(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, (%rsp)
	callq	*1424(%rdi)
	movl	%eax, %r13d
.LBB17_2:                               # %cond.end
	movq	1776(%r14), %rdi
	addl	%r12d, %ebx
	shll	$8, %r12d
	shll	$8, %ebx
	addl	%r15d, %ebp
	shll	$8, %r15d
	shll	$8, %ebp
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	*1760(%r14)
	movl	%r13d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	bbox_strip_copy_rop, .Lfunc_end17-bbox_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_begin_typed_image,@function
bbox_begin_typed_image:                 # @bbox_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp207:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp208:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp209:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp210:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp211:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp212:
	.cfi_def_cfa_offset 192
.Ltmp213:
	.cfi_offset %rbx, -56
.Ltmp214:
	.cfi_offset %r12, -48
.Ltmp215:
	.cfi_offset %r13, -40
.Ltmp216:
	.cfi_offset %r14, -32
.Ltmp217:
	.cfi_offset %r15, -24
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leaq	8(%r14), %rdi
	leaq	48(%rsp), %rsi
	callq	gs_matrix_invert
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_17
# BB#1:                                 # %lor.lhs.false.i
	leaq	132(%r13), %rsi
	testq	%rbp, %rbp
	cmovneq	%rbp, %rsi
	leaq	48(%rsp), %rdi
	movq	%rdi, %rdx
	callq	gs_matrix_multiply
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_17
# BB#2:                                 # %if.end.5.i
	movq	200(%rsp), %r12
	movl	$st_bbox_image_enum, %esi
	movl	$.L.str.10, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %r15d
	testq	%rbx, %rbx
	je	.LBB18_17
# BB#3:                                 # %if.end.9.i
	movq	192(%rsp), %r9
	movq	%r12, 24(%rbx)
	movq	64(%rsp), %rax
	movq	%rax, 584(%rbx)
	movups	48(%rsp), %xmm0
	movups	%xmm0, 568(%rbx)
	movq	%r9, 592(%rbx)
	movq	$0, 600(%rbx)
	movl	$0, 608(%rbx)
	movq	40(%rsp), %r8           # 8-byte Reload
	testq	%r8, %r8
	je	.LBB18_5
# BB#4:                                 # %if.then.12.i
	movl	(%r8), %eax
	movl	%eax, 612(%rbx)
	movl	8(%r8), %eax
	movl	%eax, 616(%rbx)
	movl	4(%r8), %eax
	movl	%eax, 620(%rbx)
	movl	12(%r8), %ecx
	subl	%eax, %ecx
	movl	%ecx, 624(%rbx)
	jmp	.LBB18_8
.LBB18_5:                               # %if.else.i
	movq	(%r14), %rax
	leaq	128(%rsp), %rdx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB18_6
# BB#7:                                 # %if.end.25.i
	movl	$0, 612(%rbx)
	movl	128(%rsp), %eax
	movl	%eax, 616(%rbx)
	movl	$0, 620(%rbx)
	movl	132(%rsp), %eax
	movl	%eax, 624(%rbx)
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	192(%rsp), %r9
.LBB18_8:                               # %if.end
	leaq	600(%rbx), %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	1728(%rdx), %rcx
	movl	$gx_default_begin_typed_image, %r10d
	testq	%rcx, %rcx
	movq	%rdx, %rdi
	je	.LBB18_10
# BB#9:                                 # %if.else
	movq	1440(%rcx), %r10
	movq	%rcx, %rdi
.LBB18_10:                              # %if.end.4
	movq	%rax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	movq	24(%rsp), %r9           # 8-byte Reload
	callq	*%r10
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB18_14
# BB#11:                                # %if.then.6
	movq	%rbx, 128(%rsp)
	movq	600(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB18_13
# BB#12:                                # %if.then.i
	xorl	%esi, %esi
	callq	gx_image_end
.LBB18_13:                              # %bbox_image_end_image.exit
	leaq	128(%rsp), %rdi
	callq	gx_image_free_enum
	movl	%ebp, %r15d
	jmp	.LBB18_17
.LBB18_14:                              # %if.end.8
	xorl	%r15d, %r15d
	movl	$bbox_image_enum_procs, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	gx_image_enum_common_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB18_15
# BB#16:                                # %cleanup.cont
	movq	208(%rsp), %r14
	movq	600(%rbx), %rbp
	movslq	44(%rbp), %rdx
	movl	%edx, 44(%rbx)
	leaq	48(%rbx), %rdi
	leaq	48(%rbp), %rsi
	shlq	$2, %rdx
	callq	memcpy
	movq	%rbx, %rdi
	addq	$308, %rdi              # imm = 0x134
	addq	$308, %rbp              # imm = 0x134
	movslq	44(%rbx), %rdx
	shlq	$2, %rdx
	movq	%rbp, %rsi
	callq	memcpy
	movq	600(%rbx), %rdi
	leaq	48(%rsp), %rsi
	callq	gx_image_planes_wanted
	movl	%eax, 608(%rbx)
	movq	%rbx, (%r14)
	jmp	.LBB18_17
.LBB18_6:                               # %if.then.23.i
	movl	$.L.str.10, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
	jmp	.LBB18_17
.LBB18_15:                              # %cleanup.thread
	movl	%ebp, %r15d
.LBB18_17:                              # %cleanup.18
	movl	%r15d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	bbox_begin_typed_image, .Lfunc_end18-bbox_begin_typed_image
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_create_compositor,@function
bbox_create_compositor:                 # @bbox_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp219:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp220:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp221:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp222:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp223:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp224:
	.cfi_def_cfa_offset 64
.Ltmp225:
	.cfi_offset %rbx, -48
.Ltmp226:
	.cfi_offset %r12, -40
.Ltmp227:
	.cfi_offset %r13, -32
.Ltmp228:
	.cfi_offset %r14, -24
.Ltmp229:
	.cfi_offset %r15, -16
	movq	%r8, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	1728(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB19_1
# BB#2:                                 # %if.end
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r15, %r8
	callq	*1464(%rbx)
	testl	%eax, %eax
	js	.LBB19_4
# BB#3:                                 # %if.end
	cmpq	8(%rsp), %rbx
	je	.LBB19_4
# BB#5:                                 # %if.end.5
	movl	$st_device_bbox, %esi
	movl	$.L.str.12, %edx
	movq	%r15, %rdi
	callq	*80(%r15)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB19_6
# BB#7:                                 # %if.end.12
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	gx_device_bbox_init
	movq	8(%rsp), %rsi
	movq	%r13, %rdi
	callq	gx_device_set_target
	movups	box_procs_forward+16(%rip), %xmm0
	movups	%xmm0, 1760(%r13)
	movups	box_procs_forward(%rip), %xmm0
	movups	%xmm0, 1744(%r13)
	movq	%r12, 1776(%r13)
	movq	%r13, (%r14)
	jmp	.LBB19_8
.LBB19_1:                               # %if.then
	movq	%r12, (%r14)
.LBB19_8:                               # %cleanup.15
	xorl	%eax, %eax
	jmp	.LBB19_9
.LBB19_4:                               # %if.then.4
	movq	%r12, (%r14)
	jmp	.LBB19_9
.LBB19_6:                               # %if.then.9
	movq	8(%rsp), %rdi
	callq	*1176(%rdi)
	movl	$-25, %eax
.LBB19_9:                               # %cleanup.15
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end19:
	.size	bbox_create_compositor, .Lfunc_end19-bbox_create_compositor
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_text_begin,@function
bbox_text_begin:                        # @bbox_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp231:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp232:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp233:
	.cfi_def_cfa_offset 64
.Ltmp234:
	.cfi_offset %rbx, -32
.Ltmp235:
	.cfi_offset %r14, -24
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	80(%rsp), %r14
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
	movq	%r14, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	callq	gx_default_text_begin
	movl	%eax, %ebp
	cmpq	$0, 1728(%rbx)
	je	.LBB20_6
# BB#1:                                 # %do.body
	movq	(%r14), %rax
	movq	96(%rax), %rsi
	cmpq	%rbx, %rsi
	je	.LBB20_6
# BB#2:                                 # %do.body.11
	incq	56(%rbx)
	testq	%rsi, %rsi
	je	.LBB20_5
# BB#3:                                 # %do.end.18
	decq	56(%rsi)
	jne	.LBB20_5
# BB#4:                                 # %do.end.32
	movq	64(%rsi), %rdi
	movl	$.L.str.13, %edx
	callq	*72(%rsi)
	movq	(%r14), %rax
.LBB20_5:                               # %do.end.50
	movq	%rbx, 96(%rax)
.LBB20_6:                               # %if.end.55
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	bbox_text_begin, .Lfunc_end20-bbox_text_begin
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_fillpage,@function
bbox_fillpage:                          # @bbox_fillpage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp237:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp238:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp239:
	.cfi_def_cfa_offset 32
.Ltmp240:
	.cfi_offset %rbx, -32
.Ltmp241:
	.cfi_offset %r14, -24
.Ltmp242:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rax
	movq	1728(%rax), %rbx
	movq	1776(%rax), %rdi
	callq	*1744(%rax)
	testq	%rbx, %rbx
	je	.LBB21_1
# BB#2:                                 # %if.end
	movq	1632(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.LBB21_1:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	bbox_fillpage, .Lfunc_end21-bbox_fillpage
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_strip_copy_rop2,@function
bbox_strip_copy_rop2:                   # @bbox_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp244:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp245:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp246:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp247:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp248:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp249:
	.cfi_def_cfa_offset 144
.Ltmp250:
	.cfi_offset %rbx, -56
.Ltmp251:
	.cfi_offset %r12, -48
.Ltmp252:
	.cfi_offset %r13, -40
.Ltmp253:
	.cfi_offset %r14, -32
.Ltmp254:
	.cfi_offset %r15, -24
.Ltmp255:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	184(%rsp), %ebp
	movl	176(%rsp), %ebx
	movl	168(%rsp), %r15d
	movl	160(%rsp), %r12d
	movq	1728(%r14), %rdi
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	je	.LBB22_2
# BB#1:                                 # %cond.false
	movl	216(%rsp), %eax
	movl	208(%rsp), %r10d
	movl	200(%rsp), %r11d
	movl	192(%rsp), %r13d
	movl	%eax, 72(%rsp)
	movl	%r10d, 64(%rsp)
	movl	%r11d, 56(%rsp)
	movl	%r13d, 48(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, (%rsp)
	callq	*1696(%rdi)
	movl	%eax, %r13d
.LBB22_2:                               # %cond.end
	movq	1776(%r14), %rdi
	addl	%r12d, %ebx
	shll	$8, %r12d
	shll	$8, %ebx
	addl	%r15d, %ebp
	shll	$8, %r15d
	shll	$8, %ebp
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	*1760(%r14)
	movl	%r13d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	bbox_strip_copy_rop2, .Lfunc_end22-bbox_strip_copy_rop2
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_strip_tile_rect_devn,@function
bbox_strip_tile_rect_devn:              # @bbox_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp257:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp258:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp259:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp260:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp261:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp262:
	.cfi_def_cfa_offset 96
.Ltmp263:
	.cfi_offset %rbx, -56
.Ltmp264:
	.cfi_offset %r12, -48
.Ltmp265:
	.cfi_offset %r13, -40
.Ltmp266:
	.cfi_offset %r14, -32
.Ltmp267:
	.cfi_offset %r15, -24
.Ltmp268:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movq	%rdi, %r14
	movq	1728(%r14), %rdi
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	je	.LBB23_2
# BB#1:                                 # %cond.false
	movl	120(%rsp), %eax
	movl	112(%rsp), %ecx
	movq	104(%rsp), %rdx
	movq	96(%rsp), %r8
	movl	%eax, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	*1704(%rdi)
	movl	%eax, %r13d
.LBB23_2:                               # %cond.end
	movq	1776(%r14), %rdi
	addl	%r12d, %ebp
	shll	$8, %r12d
	shll	$8, %ebp
	addl	%r15d, %ebx
	shll	$8, %r15d
	shll	$8, %ebx
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	*1760(%r14)
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	bbox_strip_tile_rect_devn, .Lfunc_end23-bbox_strip_tile_rect_devn
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	bbox_default_init_box
	.align	16, 0x90
	.type	bbox_default_init_box,@function
bbox_default_init_box:                  # @bbox_default_init_box
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI24_0(%rip), %xmm0  # xmm0 = [2147483647,2147483647,2147483648,2147483648]
	movups	%xmm0, 1788(%rdi)
	movq	1816(%rdi), %rax
	cmpq	1824(%rdi), %rax
	setne	%al
	movzbl	%al, %eax
	retq
.Lfunc_end24:
	.size	bbox_default_init_box, .Lfunc_end24-bbox_default_init_box
	.cfi_endproc

	.globl	bbox_default_get_box
	.align	16, 0x90
	.type	bbox_default_get_box,@function
bbox_default_get_box:                   # @bbox_default_get_box
	.cfi_startproc
# BB#0:                                 # %entry
	movups	1788(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end25:
	.size	bbox_default_get_box, .Lfunc_end25-bbox_default_get_box
	.cfi_endproc

	.globl	bbox_default_add_rect
	.align	16, 0x90
	.type	bbox_default_add_rect,@function
bbox_default_add_rect:                  # @bbox_default_add_rect
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	%esi, 1788(%rdi)
	jle	.LBB26_2
# BB#1:                                 # %if.then
	movl	%esi, 1788(%rdi)
.LBB26_2:                               # %if.end
	cmpl	%edx, 1792(%rdi)
	jle	.LBB26_4
# BB#3:                                 # %if.then.5
	movl	%edx, 1792(%rdi)
.LBB26_4:                               # %if.end.8
	cmpl	%ecx, 1796(%rdi)
	jge	.LBB26_6
# BB#5:                                 # %if.then.11
	movl	%ecx, 1796(%rdi)
.LBB26_6:                               # %if.end.14
	cmpl	%r8d, 1800(%rdi)
	jge	.LBB26_8
# BB#7:                                 # %if.then.18
	movl	%r8d, 1800(%rdi)
.LBB26_8:                               # %if.end.21
	retq
.Lfunc_end26:
	.size	bbox_default_add_rect, .Lfunc_end26-bbox_default_add_rect
	.cfi_endproc

	.globl	bbox_default_in_rect
	.align	16, 0x90
	.type	bbox_default_in_rect,@function
bbox_default_in_rect:                   # @bbox_default_in_rect
	.cfi_startproc
# BB#0:                                 # %entry
	movl	12(%rsi), %eax
	cmpl	1800(%rdi), %eax
	jle	.LBB27_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB27_2:                               # %land.lhs.true
	movl	8(%rsi), %eax
	cmpl	1796(%rdi), %eax
	jle	.LBB27_4
# BB#3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB27_4:                               # %land.lhs.true.8
	movl	4(%rsi), %eax
	cmpl	1792(%rdi), %eax
	jge	.LBB27_6
# BB#5:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB27_6:                               # %land.rhs
	movl	(%rsi), %eax
	cmpl	1788(%rdi), %eax
	setge	%al
	movzbl	%al, %eax
	retq
.Lfunc_end27:
	.size	bbox_default_in_rect, .Lfunc_end27-bbox_default_in_rect
	.cfi_endproc

	.globl	gx_device_bbox_init
	.align	16, 0x90
	.type	gx_device_bbox_init,@function
gx_device_bbox_init:                    # @gx_device_bbox_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp269:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp270:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp271:
	.cfi_def_cfa_offset 32
.Ltmp272:
	.cfi_offset %rbx, -24
.Ltmp273:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%r14, %r14
	je	.LBB28_2
# BB#1:                                 # %cond.true
	movq	24(%r14), %rdx
	movl	$gs_bbox_device, %esi
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	gx_device_init
	movq	%rbx, %rdi
	callq	gx_device_forward_fill_in_procs
	movq	$gx_forward_get_initial_matrix, 1152(%rbx)
	movq	$gx_forward_map_rgb_color, 1184(%rbx)
	movq	$gx_forward_map_color_rgb, 1192(%rbx)
	movq	$gx_forward_map_cmyk_color, 1264(%rbx)
	movq	$gx_forward_map_rgb_alpha_color, 1288(%rbx)
	movq	$gx_forward_get_color_mapping_procs, 1536(%rbx)
	movq	$gx_forward_get_color_comp_index, 1544(%rbx)
	movq	$gx_forward_encode_color, 1552(%rbx)
	movq	$gx_forward_decode_color, 1560(%rbx)
	movq	$gx_forward_dev_spec_op, 1664(%rbx)
	movq	$gx_forward_fill_rectangle_hl_color, 1576(%rbx)
	movq	$gx_forward_include_color_space, 1584(%rbx)
	movq	$gx_forward_update_spot_equivalent_colors, 1616(%rbx)
	movq	$gx_forward_get_page_device, 1296(%rbx)
	movq	$gx_forward_ret_devn_params, 1624(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gx_device_set_target
	jmp	.LBB28_3
.LBB28_2:                               # %if.else.critedge
	movl	$gs_bbox_device, %esi
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	gx_device_init
	movq	%rbx, %rdi
	callq	gx_device_fill_in_procs
	movq	%rbx, %rdi
	callq	gx_device_forward_fill_in_procs
.LBB28_3:                               # %if.end
	movups	box_procs_default+16(%rip), %xmm0
	movups	%xmm0, 1760(%rbx)
	movups	box_procs_default(%rip), %xmm0
	movups	%xmm0, 1744(%rbx)
	movq	%rbx, 1776(%rbx)
	movq	1728(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB28_5
# BB#4:                                 # %if.then.i
	movq	%rbx, %rdi
	callq	gx_device_copy_params
.LBB28_5:                               # %bbox_copy_params.exit
	movl	$0, 1736(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end28:
	.size	gx_device_bbox_init, .Lfunc_end28-gx_device_bbox_init
	.cfi_endproc

	.globl	gx_device_bbox_fwd_open_close
	.align	16, 0x90
	.type	gx_device_bbox_fwd_open_close,@function
gx_device_bbox_fwd_open_close:          # @gx_device_bbox_fwd_open_close
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 1740(%rdi)
	retq
.Lfunc_end29:
	.size	gx_device_bbox_fwd_open_close, .Lfunc_end29-gx_device_bbox_fwd_open_close
	.cfi_endproc

	.globl	gx_device_bbox_set_white_opaque
	.align	16, 0x90
	.type	gx_device_bbox_set_white_opaque,@function
gx_device_bbox_set_white_opaque:        # @gx_device_bbox_set_white_opaque
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 1784(%rdi)
	movq	$-1, %rax
	testl	%esi, %esi
	jne	.LBB30_2
# BB#1:                                 # %cond.false
	movq	1816(%rdi), %rax
.LBB30_2:                               # %cond.end
	movq	%rax, 1824(%rdi)
	retq
.Lfunc_end30:
	.size	gx_device_bbox_set_white_opaque, .Lfunc_end30-gx_device_bbox_set_white_opaque
	.cfi_endproc

	.globl	gx_device_bbox_release
	.align	16, 0x90
	.type	gx_device_bbox_release,@function
gx_device_bbox_release:                 # @gx_device_bbox_release
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	jmp	gx_device_set_target    # TAILCALL
.Lfunc_end31:
	.size	gx_device_bbox_release, .Lfunc_end31-gx_device_bbox_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gx_device_bbox_bbox
	.align	16, 0x90
	.type	gx_device_bbox_bbox,@function
gx_device_bbox_bbox:                    # @gx_device_bbox_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp274:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp275:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp276:
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
.Ltmp277:
	.cfi_def_cfa_offset 112
.Ltmp278:
	.cfi_offset %rbx, -32
.Ltmp279:
	.cfi_offset %r14, -24
.Ltmp280:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	1776(%rbx), %rdi
	leaq	64(%rsp), %rsi
	callq	*1752(%rbx)
	movl	64(%rsp), %edx
	movl	72(%rsp), %eax
	cmpl	%eax, %edx
	jg	.LBB32_2
# BB#1:                                 # %lor.lhs.false
	movl	68(%rsp), %esi
	movl	76(%rsp), %ecx
	cmpl	%ecx, %esi
	jle	.LBB32_3
.LBB32_2:                               # %if.then
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 16(%r14)
	movupd	%xmm0, (%r14)
	jmp	.LBB32_4
.LBB32_3:                               # %if.else
	cvtsi2sdl	%edx, %xmm0
	movsd	.LCPI32_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)
	leaq	8(%rsp), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gs_deviceinitialmatrix
	leaq	32(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	gs_bbox_transform_inverse
.LBB32_4:                               # %if.end
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end32:
	.size	gx_device_bbox_bbox, .Lfunc_end32-gx_device_bbox_bbox
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_image_end_image,@function
bbox_image_end_image:                   # @bbox_image_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp281:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp282:
	.cfi_def_cfa_offset 32
.Ltmp283:
	.cfi_offset %rbx, -16
	movq	%rdi, 8(%rsp)
	movq	600(%rdi), %rdi
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	.LBB33_2
# BB#1:                                 # %if.then
	callq	gx_image_end
	movl	%eax, %ebx
.LBB33_2:                               # %if.end
	leaq	8(%rsp), %rdi
	callq	gx_image_free_enum
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end33:
	.size	bbox_image_end_image, .Lfunc_end33-bbox_image_end_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	bbox_image_plane_data,@function
bbox_image_plane_data:                  # @bbox_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp284:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp285:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp286:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp287:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp288:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp289:
	.cfi_def_cfa_offset 56
	subq	$2696, %rsp             # imm = 0xA88
.Ltmp290:
	.cfi_def_cfa_offset 2752
.Ltmp291:
	.cfi_offset %rbx, -56
.Ltmp292:
	.cfi_offset %r12, -48
.Ltmp293:
	.cfi_offset %r13, -40
.Ltmp294:
	.cfi_offset %r14, -32
.Ltmp295:
	.cfi_offset %r15, -24
.Ltmp296:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	movq	16(%rbx), %r14
	movq	1728(%r14), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	592(%rbx), %r13
	movq	600(%rbx), %rdi
	callq	gx_image_plane_data_rows
	movl	%eax, 44(%rsp)          # 4-byte Spill
	cmpl	$1, %eax
	je	.LBB34_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 608(%rbx)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movq	600(%rbx), %r15
	movslq	44(%r15), %rdx
	movl	%edx, 44(%rbx)
	leaq	48(%rbx), %rdi
	leaq	48(%r15), %rsi
	shlq	$2, %rdx
	callq	memcpy
	leaq	308(%rbx), %rdi
	addq	$308, %r15              # imm = 0x134
	movslq	44(%rbx), %rdx
	shlq	$2, %rdx
	movq	%r15, %rsi
	callq	memcpy
.LBB34_3:                               # %if.end
	cvtsi2sdl	612(%rbx), %xmm0
	movsd	%xmm0, 2664(%rsp)
	movl	620(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 2672(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	616(%rbx), %xmm0
	movsd	%xmm0, 2680(%rsp)
	addl	%eax, %ebp
	movl	624(%rbx), %eax
	cmpl	%eax, %ebp
	cmovgl	%eax, %ebp
	movl	%ebp, 620(%rbx)
	leaq	568(%rbx), %rsi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	movsd	%xmm0, 2688(%rsp)
	leaq	2664(%rsp), %rdi
	leaq	2560(%rsp), %rbx
	movq	%rbx, %rdx
	callq	gs_bbox_transform_only
	leaq	2632(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_points_bbox
	movsd	.LCPI34_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	2632(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r15d
	movsd	2640(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r12d
	movsd	2648(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebx
	movsd	2656(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebp
	testq	%r13, %r13
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true.47
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB34_5
.LBB34_6:                               # %if.else
	movq	1776(%r14), %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	*1760(%r14)
	jmp	.LBB34_7
.LBB34_5:                               # %if.then.58
	movsd	2560(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI34_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r15d
	movsd	2568(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r12d
	movsd	2592(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebp
	subl	%r15d, %ebp
	movsd	2600(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebx
	subl	%r12d, %ebx
	leaq	704(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	gx_make_clip_device_on_stack
	movq	1808(%r14), %rax
	movq	%rax, 56(%rsp)
	movq	$gx_dc_type_data_pure, 48(%rsp)
	movl	$0, 408(%rsp)
	movq	$0, 1728(%r14)
	movsd	2576(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI34_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	subl	%r15d, %ecx
	movsd	2584(%rsp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	subl	%r12d, %r8d
	leaq	48(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$252, 16(%rsp)
	leaq	704(%rsp), %r13
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%ebp, %r9d
	callq	gx_default_fill_triangle
	movsd	2608(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI34_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	subl	%r15d, %ecx
	mulsd	2616(%rsp), %xmm1
	cvttsd2si	%xmm1, %r8d
	subl	%r12d, %r8d
	leaq	48(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	$252, 16(%rsp)
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	%r12d, %edx
	movl	%ebp, %r9d
	callq	gx_default_fill_triangle
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1728(%r14)
.LBB34_7:                               # %if.end.108
	movl	44(%rsp), %eax          # 4-byte Reload
	addq	$2696, %rsp             # imm = 0xA88
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	bbox_image_plane_data, .Lfunc_end34-bbox_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_image_flush,@function
bbox_image_flush:                       # @bbox_image_flush
	.cfi_startproc
# BB#0:                                 # %entry
	movq	600(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB35_1
# BB#2:                                 # %cond.true
	jmp	gx_image_flush          # TAILCALL
.LBB35_1:                               # %cond.end
	xorl	%eax, %eax
	retq
.Lfunc_end35:
	.size	bbox_image_flush, .Lfunc_end35-bbox_image_flush
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_image_planes_wanted,@function
bbox_image_planes_wanted:               # @bbox_image_planes_wanted
	.cfi_startproc
# BB#0:                                 # %entry
	movq	600(%rdi), %rdi
	jmp	gx_image_planes_wanted  # TAILCALL
.Lfunc_end36:
	.size	bbox_image_planes_wanted, .Lfunc_end36-bbox_image_planes_wanted
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_forward_init_box,@function
bbox_forward_init_box:                  # @bbox_forward_init_box
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	1776(%rax), %rdi
	jmpq	*1744(%rax)             # TAILCALL
.Lfunc_end37:
	.size	bbox_forward_init_box, .Lfunc_end37-bbox_forward_init_box
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_forward_get_box,@function
bbox_forward_get_box:                   # @bbox_forward_get_box
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1752(%rdi), %rax
	movq	1776(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.Lfunc_end38:
	.size	bbox_forward_get_box, .Lfunc_end38-bbox_forward_get_box
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_forward_add_rect,@function
bbox_forward_add_rect:                  # @bbox_forward_add_rect
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1760(%rdi), %rax
	movq	1776(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.Lfunc_end39:
	.size	bbox_forward_add_rect, .Lfunc_end39-bbox_forward_add_rect
	.cfi_endproc

	.align	16, 0x90
	.type	bbox_forward_in_rect,@function
bbox_forward_in_rect:                   # @bbox_forward_in_rect
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1768(%rdi), %rax
	movq	1776(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.Lfunc_end40:
	.size	bbox_forward_in_rect, .Lfunc_end40-bbox_forward_in_rect
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_bbox"
	.size	.L.str, 15

	.type	device_bbox_reloc_ptrs,@object # @device_bbox_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
device_bbox_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_device_forward
	.quad	device_bbox_enum_ptrs
	.size	device_bbox_reloc_ptrs, 24

	.type	st_device_bbox,@object  # @st_device_bbox
	.globl	st_device_bbox
	.align	8
st_device_bbox:
	.long	1832                    # 0x728
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gx_device_finalize
	.quad	device_bbox_reloc_ptrs
	.size	st_device_bbox, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"bbox"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11

	.type	gs_bbox_device,@object  # @gs_bbox_device
	.section	.rodata,"a",@progbits
	.globl	gs_bbox_device
	.align	8
gs_bbox_device:
	.long	1832                    # 0x728
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
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
	.long	8387607                 # 0x7ffc17
	.long	8387607                 # 0x7ffc17
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1209233467              # float 1.509769e+05
	.long	1209233467              # float 1.509769e+05
	.zero	16
	.long	0                       # 0x0
	.long	1165623296              # float 4.000000e+03
	.long	1165623296              # float 4.000000e+03
	.long	1165623296              # float 4.000000e+03
	.long	1165623296              # float 4.000000e+03
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
	.quad	bbox_open_device
	.quad	gx_upright_get_initial_matrix
	.quad	0
	.quad	bbox_output_page
	.quad	bbox_close_device
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	bbox_fill_rectangle
	.quad	0
	.quad	bbox_copy_mono
	.quad	bbox_copy_color
	.quad	0
	.quad	0
	.quad	bbox_get_params
	.quad	bbox_put_params
	.quad	gx_default_map_cmyk_color
	.quad	0
	.quad	0
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	bbox_copy_alpha
	.quad	0
	.quad	0
	.quad	bbox_fill_path
	.quad	bbox_stroke_path
	.quad	bbox_fill_mask
	.quad	bbox_fill_trapezoid
	.quad	bbox_fill_parallelogram
	.quad	bbox_fill_triangle
	.quad	bbox_draw_thin_line
	.quad	gx_default_begin_image
	.quad	0
	.quad	0
	.quad	bbox_strip_tile_rectangle
	.quad	bbox_strip_copy_rop
	.quad	0
	.quad	bbox_begin_typed_image
	.quad	0
	.quad	gx_default_map_color_rgb_alpha
	.quad	bbox_create_compositor
	.quad	0
	.quad	bbox_text_begin
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bbox_fillpage
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	bbox_strip_copy_rop2
	.quad	bbox_strip_tile_rect_devn
	.quad	0
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	32
	.quad	0
	.long	0                       # 0x0
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.size	gs_bbox_device, 1832

	.type	box_procs_default,@object # @box_procs_default
	.align	8
box_procs_default:
	.quad	bbox_default_init_box
	.quad	bbox_default_get_box
	.quad	bbox_default_add_rect
	.quad	bbox_default_in_rect
	.size	box_procs_default, 32

	.type	device_bbox_enum_ptrs,@object # @device_bbox_enum_ptrs
	.align	2
device_bbox_enum_ptrs:
	.short	0                       # 0x0
	.short	1776                    # 0x6f0
	.size	device_bbox_enum_ptrs, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"bbox_close_device(composite)"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"./base/gdevbbox.c"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%%%%BoundingBox: %d %d %d %d\n"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%%%%HiResBoundingBox: %f %f %f %f\n"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"PageBoundingBox"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"WhiteIsOpaque"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"bbox_stroke_path"
	.size	.L.str.9, 17

	.type	bbox_image_enum_procs,@object # @bbox_image_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
bbox_image_enum_procs:
	.quad	bbox_image_plane_data
	.quad	bbox_image_end_image
	.quad	bbox_image_flush
	.quad	bbox_image_planes_wanted
	.size	bbox_image_enum_procs, 32

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"bbox_image_begin"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"bbox_image_enum"
	.size	.L.str.11, 16

	.type	bbox_image_enum_reloc_ptrs,@object # @bbox_image_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
bbox_image_enum_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	st_gx_image_enum_common
	.quad	bbox_image_enum_enum_ptrs
	.size	bbox_image_enum_reloc_ptrs, 24

	.type	st_bbox_image_enum,@object # @st_bbox_image_enum
	.align	8
st_bbox_image_enum:
	.long	632                     # 0x278
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	bbox_image_enum_reloc_ptrs
	.size	st_bbox_image_enum, 64

	.type	bbox_image_enum_enum_ptrs,@object # @bbox_image_enum_enum_ptrs
	.align	2
bbox_image_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	592                     # 0x250
	.short	0                       # 0x0
	.short	600                     # 0x258
	.size	bbox_image_enum_enum_ptrs, 8

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"bbox_create_compositor"
	.size	.L.str.12, 23

	.type	box_procs_forward,@object # @box_procs_forward
	.section	.rodata,"a",@progbits
	.align	8
box_procs_forward:
	.quad	bbox_forward_init_box
	.quad	bbox_forward_get_box
	.quad	bbox_forward_add_rect
	.quad	bbox_forward_in_rect
	.size	box_procs_forward, 32

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"bbox_text_begin"
	.size	.L.str.13, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
