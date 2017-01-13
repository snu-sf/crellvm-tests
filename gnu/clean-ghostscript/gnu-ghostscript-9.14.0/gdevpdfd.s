	.text
	.file	"gdevpdfd.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4634766966517661696     # double 72
	.text
	.globl	gdev_pdf_fill_rectangle
	.align	16, 0x90
	.type	gdev_pdf_fill_rectangle,@function
gdev_pdf_fill_rectangle:                # @gdev_pdf_fill_rectangle
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
	movq	%r9, %r13
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$0, 9528(%rbx)
	je	.LBB0_13
# BB#1:                                 # %if.then
	cmpl	$0, 30524(%rbx)
	je	.LBB0_2
# BB#3:                                 # %if.else
	leaq	30528(%rbx), %rax
	movslq	%ebp, %rcx
	imulq	$1374389535, %rcx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rcx
	shrq	$63, %rcx
	sarq	$37, %rdx
	addl	%ecx, %edx
	cvtsi2ssl	%edx, %xmm0
	movslq	%r12d, %rcx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	movq	%rcx, %rsi
	shrq	$63, %rsi
	sarq	$37, %rcx
	addl	%esi, %ecx
	cvtsi2ssl	%ecx, %xmm1
	movslq	%r15d, %rsi
	imulq	$1374389535, %rsi, %rsi # imm = 0x51EB851F
	movq	%rsi, %rdi
	shrq	$63, %rdi
	sarq	$37, %rsi
	addl	%edi, %esi
	addl	%edx, %esi
	cvtsi2ssl	%esi, %xmm2
	movslq	%r14d, %rdx
	imulq	$1374389535, %rdx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rsi
	shrq	$63, %rsi
	sarq	$37, %rdx
	addl	%esi, %edx
	addl	%ecx, %edx
	cvtsi2ssl	%edx, %xmm3
	jmp	.LBB0_4
.LBB0_2:                                # %if.then.2
	leaq	9784(%rbx), %rax
	cvtsi2sdl	%ebp, %xmm0
	movss	884(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm3
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm3
	divsd	%xmm3, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm4
	cvtss2sd	%xmm2, %xmm5
	divsd	%xmm1, %xmm5
	divsd	%xmm5, %xmm4
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm4, %xmm1
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r15d, %xmm4
	divsd	%xmm3, %xmm4
	addsd	%xmm2, %xmm4
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%r14d, %xmm4
	divsd	%xmm5, %xmm4
	addsd	%xmm3, %xmm4
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm4, %xmm3
.LBB0_4:                                # %if.end
	movsd	(%rax), %xmm4           # xmm4 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm4
	jbe	.LBB0_6
# BB#5:                                 # %if.then.43
	movsd	%xmm0, (%rax)
.LBB0_6:                                # %if.end.47
	movsd	8(%rax), %xmm4          # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm4
	jbe	.LBB0_8
# BB#7:                                 # %if.then.53
	movsd	%xmm0, 8(%rax)
.LBB0_8:                                # %if.end.57
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	ucomisd	16(%rax), %xmm0
	jbe	.LBB0_10
# BB#9:                                 # %if.then.62
	movsd	%xmm0, 16(%rax)
.LBB0_10:                               # %if.end.66
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	ucomisd	24(%rax), %xmm0
	jbe	.LBB0_12
# BB#11:                                # %if.then.72
	movsd	%xmm0, 24(%rax)
.LBB0_12:                               # %if.end.76
	xorl	%eax, %eax
	cmpl	$0, 9776(%rbx)
	jne	.LBB0_18
.LBB0_13:                               # %if.end.84
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
	testl	%eax, %eax
	js	.LBB0_18
# BB#14:                                # %if.end.88
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_put_clip_path
	testl	%eax, %eax
	js	.LBB0_18
# BB#15:                                # %if.end.93
	movq	%r13, %rsi
	leaq	7512(%rbx), %r13
	leaq	7500(%rbx), %rcx
	movl	$psdf_set_fill_color_commands, %r8d
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	pdf_set_pure_color
	cmpl	$0, 9544(%rbx)
	jne	.LBB0_17
# BB#16:                                # %if.then.96
	leaq	8144(%rbx), %rdi
	movl	$632, %edx              # imm = 0x278
	movq	%r13, %rsi
	callq	memcpy
.LBB0_17:                               # %if.end.98
	movq	5848(%rbx), %rdi
	movl	$.L.str, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	movl	%r14d, %r9d
	callq	pprintd4
	xorl	%eax, %eax
.LBB0_18:                               # %cleanup.100
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gdev_pdf_fill_rectangle, .Lfunc_end0-gdev_pdf_fill_rectangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	pdf_put_clip_path
	.align	16, 0x90
	.type	pdf_put_clip_path,@function
pdf_put_clip_path:                      # @pdf_put_clip_path
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
	subq	$232, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 288
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	5848(%rbx), %r15
	movq	8784(%rbx), %rax
	testq	%r14, %r14
	je	.LBB1_1
# BB#11:                                # %if.else
	movq	296(%r14), %r12
	xorl	%ebp, %ebp
	cmpq	%r12, %rax
	je	.LBB1_33
# BB#12:                                # %if.end.7
	movl	832(%rbx), %ecx
	movl	836(%rbx), %r8d
	shll	$8, %ecx
	shll	$8, %r8d
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB1_14
# BB#13:                                # %if.then.10
	movq	8776(%rbx), %r12
	cmpq	%r12, 8784(%rbx)
	je	.LBB1_33
.LBB1_14:                               # %if.end.17
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_is_same_clip_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_33
# BB#15:                                # %if.end.21
	je	.LBB1_2
# BB#16:                                # %if.then.23
	movq	%r12, 8784(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB1_33
.LBB1_1:                                # %if.then
	movq	8776(%rbx), %r12
	xorl	%ebp, %ebp
	cmpq	%r12, %rax
	je	.LBB1_33
.LBB1_2:                                # %if.end.26
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_contents
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_33
# BB#3:                                 # %if.end.30
	movl	28860(%rbx), %eax
	cmpl	28864(%rbx), %eax
	jle	.LBB1_5
# BB#4:                                 # %if.then.32
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf_restore_viewer_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_33
.LBB1_5:                                # %if.end.37
	cmpq	8776(%rbx), %r12
	movq	%r12, %rax
	je	.LBB1_27
# BB#6:                                 # %if.then.40
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf_save_viewer_state
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_33
# BB#7:                                 # %if.end.44
	leaq	216(%rsp), %rsi
	movq	%r14, %rdi
	callq	cpath_is_rectangle
	testl	%eax, %eax
	je	.LBB1_17
# BB#8:                                 # %if.then.47
	movl	216(%rsp), %eax
	movl	220(%rsp), %ecx
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI1_0(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm4, %xmm1
	movl	224(%rsp), %edx
	subl	%eax, %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm4, %xmm2
	movl	228(%rsp), %eax
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm4, %xmm3
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	callq	pprintg4
	movl	$.L.str.4, %edx
	cmpl	$0, 232(%r14)
	jle	.LBB1_10
# BB#9:                                 # %select.mid
	movl	$.L.str.5, %edx
.LBB1_10:                               # %select.end
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	callq	pprints1
	jmp	.LBB1_26
.LBB1_17:                               # %if.else.67
	leaq	144(%rsp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	gdev_vector_dopath_init
	movq	288(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB1_18
# BB#24:                                # %if.else.86
	leaq	(%rsp), %rdx
	leaq	144(%rsp), %rcx
	leaq	112(%rsp), %r8
	movq	%rbx, %rdi
	callq	pdf_put_clip_path_list_elem
	movl	%eax, %ebp
	jmp	.LBB1_25
.LBB1_18:                               # %if.then.70
	leaq	(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gx_cpath_enum_init
	leaq	112(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_enum_next
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jle	.LBB1_21
# BB#19:
	leaq	112(%rsp), %r13
.LBB1_20:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	144(%rsp), %rdi
	movl	%ebp, %esi
	movq	%r13, %rdx
	callq	gdev_vector_dopath_segment
	leaq	(%rsp), %rdi
	movq	%r13, %rsi
	callq	gx_cpath_enum_next
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jg	.LBB1_20
.LBB1_21:                               # %while.end
	movl	$.L.str.4, %edx
	cmpl	$0, 232(%r14)
	jle	.LBB1_23
# BB#22:                                # %select.mid85
	movl	$.L.str.5, %edx
.LBB1_23:                               # %select.end84
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	pprints1
.LBB1_25:                               # %if.else.86
	testl	%ebp, %ebp
	js	.LBB1_33
.LBB1_26:                               # %cleanup.105.thread
	movq	8776(%rbx), %rax
.LBB1_27:                               # %if.end.108
	movq	%r12, 8784(%rbx)
	xorl	%ecx, %ecx
	cmpq	%rax, %r12
	cmoveq	%rcx, %r14
	movq	28808(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_29
# BB#28:                                # %if.then.i
	movl	$.L.str.1, %esi
	callq	gx_path_free
.LBB1_29:                               # %if.end.i
	testq	%r14, %r14
	je	.LBB1_30
# BB#31:                                # %if.end.5.i
	movq	1728(%rbx), %rsi
	xorl	%edi, %edi
	movl	$.L.str.1, %edx
	callq	gx_path_alloc_shared
	movq	%rax, 28808(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB1_33
# BB#32:                                # %if.end.10.i
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	gx_cpath_to_path
	movl	%eax, %ebp
	jmp	.LBB1_33
.LBB1_30:                               # %if.then.3.i
	movq	$0, 28808(%rbx)
	xorl	%ebp, %ebp
.LBB1_33:                               # %cleanup.116
	movl	%ebp, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pdf_put_clip_path, .Lfunc_end1-pdf_put_clip_path
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_setlinewidth,@function
pdf_setlinewidth:                       # @pdf_setlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	fabs
	movq	%rbx, %rdi
	popq	%rbx
	jmp	psdf_setlinewidth       # TAILCALL
.Lfunc_end2:
	.size	pdf_setlinewidth, .Lfunc_end2-pdf_setlinewidth
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_can_handle_hl_color,@function
pdf_can_handle_hl_color:                # @pdf_can_handle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	setne	%al
	movzbl	%al, %eax
	retq
.Lfunc_end3:
	.size	pdf_can_handle_hl_color, .Lfunc_end3-pdf_can_handle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_setfillcolor,@function
pdf_setfillcolor:                       # @pdf_setfillcolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r12, -32
.Ltmp35:
	.cfi_offset %r14, -24
.Ltmp36:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	1736(%rbx), %rax
	callq	*64(%rax)
	xorl	%r15d, %r15d
	testl	%eax, %eax
	cmovneq	%r12, %r15
	cmpl	$0, 9544(%rbx)
	jne	.LBB4_3
# BB#1:                                 # %if.then
	leaq	8144(%rbx), %rcx
	leaq	7504(%rbx), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	pdf_set_drawing_color
	testl	%eax, %eax
	js	.LBB4_2
.LBB4_3:                                # %if.end.4
	leaq	7512(%rbx), %rcx
	leaq	7500(%rbx), %r8
	movl	$psdf_set_fill_color_commands, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	pdf_set_drawing_color   # TAILCALL
.LBB4_2:                                # %cleanup.6
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	pdf_setfillcolor, .Lfunc_end4-pdf_setfillcolor
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_setstrokecolor,@function
pdf_setstrokecolor:                     # @pdf_setstrokecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 48
.Ltmp42:
	.cfi_offset %rbx, -40
.Ltmp43:
	.cfi_offset %r12, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	1736(%rbx), %rax
	callq	*64(%rax)
	xorl	%r15d, %r15d
	testl	%eax, %eax
	cmovneq	%r12, %r15
	cmpl	$0, 9544(%rbx)
	jne	.LBB5_3
# BB#1:                                 # %if.then
	leaq	7512(%rbx), %rcx
	leaq	7500(%rbx), %r8
	movl	$psdf_set_fill_color_commands, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	pdf_set_drawing_color
	testl	%eax, %eax
	js	.LBB5_2
.LBB5_3:                                # %if.end.4
	leaq	8144(%rbx), %rcx
	leaq	7504(%rbx), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	pdf_set_drawing_color   # TAILCALL
.LBB5_2:                                # %cleanup.6
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	pdf_setstrokecolor, .Lfunc_end5-pdf_setstrokecolor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	pdf_dorect,@function
pdf_dorect:                             # @pdf_dorect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 80
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movl	%esi, %r13d
	movq	%rdi, %rbp
	cmpl	$0, 9536(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	$-8388096, %r14d        # imm = 0xFFFFFFFFFF800200
	cmpl	%eax, 30392(%rbp)
	jg	.LBB6_2
# BB#1:                                 # %select.mid
	xorl	%r14d, %r14d
.LBB6_2:                                # %select.end
	movl	$8388096, %eax          # imm = 0x7FFE00
	testb	$2, %r9b
	je	.LBB6_4
# BB#3:                                 # %if.then
	movss	5896(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	6004(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	callq	fabs
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movss	6012(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movl	20(%rsp), %r9d          # 4-byte Reload
	addsd	(%rsp), %xmm0           # 8-byte Folded Reload
	mulsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	mulsd	.LCPI6_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	addl	$-256, %r14d
	subl	%eax, %r14d
	addl	$8388352, %eax          # imm = 0x7FFF00
.LBB6_4:                                # %if.end
	testb	$4, %r9b
	jne	.LBB6_12
# BB#5:                                 # %land.lhs.true
	cmpl	%r12d, %ebx
	jg	.LBB6_11
# BB#6:                                 # %land.lhs.true
	cmpl	%r15d, %r13d
	jg	.LBB6_11
# BB#7:                                 # %land.lhs.true
	cmpl	%r12d, %r14d
	jg	.LBB6_11
# BB#8:                                 # %land.lhs.true
	cmpl	%ebx, %eax
	jl	.LBB6_11
# BB#9:                                 # %land.lhs.true
	cmpl	%r13d, %eax
	jl	.LBB6_11
# BB#10:                                # %land.lhs.true
	cmpl	%r15d, %r14d
	jg	.LBB6_11
.LBB6_12:                               # %if.end.44
	cmpl	%r13d, %r14d
	cmovgel	%r14d, %r13d
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	cmpl	%ebx, %r14d
	cmovgel	%r14d, %ebx
	cmpl	%r12d, %eax
	cmovlel	%eax, %r12d
	movq	%rbp, %rdi
	movl	%r13d, %esi
	movl	%ebx, %edx
	movl	%r15d, %ecx
	movl	%r12d, %r8d
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	psdf_dorect             # TAILCALL
.LBB6_11:                               # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pdf_dorect, .Lfunc_end6-pdf_dorect
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_endpath,@function
pdf_endpath:                            # @pdf_endpath
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	pdf_endpath, .Lfunc_end7-pdf_endpath
	.cfi_endproc

	.globl	pdf_remember_clip_path
	.align	16, 0x90
	.type	pdf_remember_clip_path,@function
pdf_remember_clip_path:                 # @pdf_remember_clip_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -24
.Ltmp63:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	28808(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$.L.str.1, %esi
	callq	gx_path_free
.LBB8_2:                                # %if.end
	testq	%r14, %r14
	je	.LBB8_3
# BB#4:                                 # %if.end.5
	movq	1728(%rbx), %rsi
	xorl	%edi, %edi
	movl	$.L.str.1, %edx
	callq	gx_path_alloc_shared
	movq	%rax, 28808(%rbx)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB8_5
# BB#6:                                 # %if.end.10
	movq	%r14, %rdi
	movq	%rax, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_cpath_to_path        # TAILCALL
.LBB8_3:                                # %if.then.3
	movq	$0, 28808(%rbx)
	xorl	%ecx, %ecx
.LBB8_5:                                # %return
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	pdf_remember_clip_path, .Lfunc_end8-pdf_remember_clip_path
	.cfi_endproc

	.globl	pdf_must_put_clip_path
	.align	16, 0x90
	.type	pdf_must_put_clip_path,@function
pdf_must_put_clip_path:                 # @pdf_must_put_clip_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 32
.Ltmp67:
	.cfi_offset %rbx, -32
.Ltmp68:
	.cfi_offset %r14, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	8784(%rbx), %rax
	xorl	%r14d, %r14d
	testq	%rbp, %rbp
	je	.LBB9_1
# BB#3:                                 # %if.else
	cmpq	296(%rbp), %rax
	je	.LBB9_8
# BB#4:                                 # %if.end.6
	movl	832(%rbx), %ecx
	movl	836(%rbx), %r8d
	shll	$8, %ecx
	shll	$8, %r8d
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbp, %rdi
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB9_6
# BB#5:                                 # %if.then.8
	movq	8784(%rbx), %rax
	cmpq	8776(%rbx), %rax
	je	.LBB9_8
.LBB9_6:                                # %if.end.14
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	pdf_is_same_clip_path
	testl	%eax, %eax
	jle	.LBB9_2
# BB#7:                                 # %if.then.17
	movq	296(%rbp), %rax
	movq	%rax, 8784(%rbx)
	jmp	.LBB9_8
.LBB9_1:                                # %if.then
	cmpq	8776(%rbx), %rax
	je	.LBB9_8
.LBB9_2:                                # %if.end.21
	movl	$1, %r14d
.LBB9_8:                                # %return
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pdf_must_put_clip_path, .Lfunc_end9-pdf_must_put_clip_path
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_is_same_clip_path,@function
pdf_is_same_clip_path:                  # @pdf_is_same_clip_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 48
	subq	$240, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 288
.Ltmp76:
	.cfi_offset %rbx, -48
.Ltmp77:
	.cfi_offset %r12, -40
.Ltmp78:
	.cfi_offset %r13, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	28808(%rdi), %rsi
	testq	%rsi, %rsi
	setne	%al
	testq	%rbx, %rbx
	setne	%cl
	xorb	%al, %cl
	jne	.LBB10_21
# BB#1:                                 # %if.end
	movl	$1, %eax
	testq	%rsi, %rsi
	je	.LBB10_22
# BB#2:                                 # %if.end.9
	leaq	64(%rsp), %rdi
	callq	gx_path_enum_init
	testl	%eax, %eax
	js	.LBB10_22
# BB#3:                                 # %if.end.14
	leaq	128(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gx_cpath_enum_init
	testl	%eax, %eax
	js	.LBB10_22
# BB#4:                                 # %while.cond.preheader
	leaq	128(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	gx_cpath_enum_next
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jle	.LBB10_12
# BB#5:                                 # %while.body.lr.ph
	leaq	64(%rsp), %r14
	leaq	(%rsp), %r13
	leaq	128(%rsp), %r15
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB10_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	gx_path_enum_next
	testl	%eax, %eax
	js	.LBB10_22
# BB#7:                                 # %if.end.28
                                        #   in Loop: Header=BB10_6 Depth=1
	cmpl	%ebx, %eax
	jne	.LBB10_21
# BB#8:                                 # %if.end.32
                                        #   in Loop: Header=BB10_6 Depth=1
	leal	-1(%rbx), %eax
	cmpl	$2, %eax
	jb	.LBB10_19
# BB#9:                                 # %if.end.32
                                        #   in Loop: Header=BB10_6 Depth=1
	cmpl	$3, %ebx
	jne	.LBB10_10
# BB#15:                                # %sw.bb
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	40(%rsp), %rax
	movq	8(%rsp), %rcx
	cmpl	%ecx, %eax
	jne	.LBB10_21
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB10_6 Depth=1
	shrq	$32, %rcx
	shrq	$32, %rax
	cmpl	%ecx, %eax
	jne	.LBB10_21
# BB#17:                                # %lor.lhs.false.42
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpl	%ecx, %eax
	jne	.LBB10_21
# BB#18:                                # %lor.lhs.false.49
                                        #   in Loop: Header=BB10_6 Depth=1
	shrq	$32, %rcx
	shrq	$32, %rax
	cmpl	%ecx, %eax
	je	.LBB10_19
	jmp	.LBB10_21
.LBB10_10:                              # %if.end.32
                                        #   in Loop: Header=BB10_6 Depth=1
	cmpl	$5, %ebx
	jne	.LBB10_11
	.align	16, 0x90
.LBB10_19:                              # %sw.bb.58
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	32(%rsp), %rax
	movq	(%rsp), %rcx
	cmpl	%ecx, %eax
	jne	.LBB10_21
# BB#20:                                # %lor.lhs.false.65
                                        #   in Loop: Header=BB10_6 Depth=1
	shrq	$32, %rcx
	shrq	$32, %rax
	cmpl	%ecx, %eax
	jne	.LBB10_21
.LBB10_11:                              # %while.cond.backedge
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	gx_cpath_enum_next
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jg	.LBB10_6
.LBB10_12:                              # %while.end
	testl	%ebx, %ebx
	movl	%ebx, %eax
	js	.LBB10_22
# BB#13:                                # %if.end.77
	leaq	64(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	gx_path_enum_next
	testl	%eax, %eax
	js	.LBB10_22
# BB#14:                                # %if.end.83
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB10_22
.LBB10_21:
	xorl	%eax, %eax
.LBB10_22:                              # %cleanup
	addq	$240, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	pdf_is_same_clip_path, .Lfunc_end10-pdf_is_same_clip_path
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_put_clip_path_list_elem,@function
pdf_put_clip_path_list_elem:            # @pdf_put_clip_path_list_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 64
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	160(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	pdf_put_clip_path_list_elem
	testl	%eax, %eax
	jne	.LBB11_8
.LBB11_2:                               # %if.end.4
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	gx_path_enum_init
	jmp	.LBB11_4
	.align	16, 0x90
.LBB11_3:                               # %while.body
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	gdev_vector_dopath_segment
.LBB11_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gx_path_enum_next
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jg	.LBB11_3
# BB#5:                                 # %while.end
	movq	5848(%r14), %rdi
	movl	$.L.str.4, %edx
	cmpl	$0, 152(%r15)
	jle	.LBB11_7
# BB#6:                                 # %select.mid
	movl	$.L.str.5, %edx
.LBB11_7:                               # %select.end
	movl	$.L.str.6, %esi
	callq	pprints1
	movl	%ebp, %eax
	sarl	$31, %eax
	andl	%ebp, %eax
.LBB11_8:                               # %cleanup.14
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pdf_put_clip_path_list_elem, .Lfunc_end11-pdf_put_clip_path_list_elem
	.cfi_endproc

	.globl	pdf_dump_converted_image
	.align	16, 0x90
	.type	pdf_dump_converted_image,@function
pdf_dump_converted_image:               # @pdf_dump_converted_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp98:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp99:
	.cfi_def_cfa_offset 56
	subq	$2872, %rsp             # imm = 0xB38
.Ltmp100:
	.cfi_def_cfa_offset 2928
.Ltmp101:
	.cfi_offset %rbx, -56
.Ltmp102:
	.cfi_offset %r12, -48
.Ltmp103:
	.cfi_offset %r13, -40
.Ltmp104:
	.cfi_offset %r14, -32
.Ltmp105:
	.cfi_offset %r15, -24
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbp
	cmpl	$0, 2844(%r15)
	movl	2856(%r15), %eax
	je	.LBB12_18
# BB#1:                                 # %lor.lhs.false
	testl	%eax, %eax
	jne	.LBB12_20
# BB#2:                                 # %if.else
	xorl	%eax, %eax
	cmpl	$0, 2840(%r15)
	jne	.LBB12_106
# BB#3:                                 # %land.lhs.true
	cmpl	$0, 9556(%rbp)
	je	.LBB12_26
# BB#4:                                 # %if.then.10
	movq	24(%r15), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, %r14
	leaq	464(%rsp), %r13
	movq	%r15, %rbx
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$1616, %edx             # imm = 0x650
	movq	%r13, %rdi
	callq	memset
	movups	2860(%rbx), %xmm0
	movups	%xmm0, 596(%rsp)
	movl	2876(%rbx), %eax
	movl	%eax, 612(%rsp)
	movl	2880(%rbx), %eax
	movl	%eax, 616(%rsp)
	leaq	216(%rsp), %r12
	xorl	%esi, %esi
	movl	$248, %edx
	movq	%r12, %rdi
	callq	memset
	movq	%r13, 248(%rsp)
	movl	$1, 304(%rsp)
	movl	$1, 308(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 320(%rsp)
	movl	832(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 336(%rsp)
	movl	836(%rbx), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 344(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 352(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	movss	%xmm0, 356(%rsp)
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	*1664(%rbp)
	testl	%eax, %eax
	js	.LBB12_15
# BB#5:                                 # %if.then.58
	movq	5848(%rbp), %rdi
	movl	$.L.str.8, %esi
	callq	stream_puts
	movq	1744(%rbx), %rsi
	movl	1736(%rbx), %ecx
	movl	832(%rbx), %eax
	movl	836(%rbx), %edx
	leaq	2080(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	leaq	2272(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$2, 40(%rsp)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	callq	pdf_copy_color_data
	cmpl	$1, %eax
	je	.LBB12_8
# BB#6:                                 # %if.else.i
	testl	%eax, %eax
	movl	%eax, %r15d
	jne	.LBB12_8
# BB#7:                                 # %if.then.4.i
	movq	2224(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbp, %rdi
	callq	pdf_do_image
	movl	%eax, %r15d
.LBB12_8:                               # %if.end.63
	testl	%r15d, %r15d
	movl	%r15d, %eax
	js	.LBB12_15
# BB#9:                                 # %if.end.71
	movq	30480(%rbp), %r15
	leaq	216(%rsp), %rdx
	movl	$2, %esi
	movq	%rbp, %rdi
	movl	%r14d, %ecx
	callq	*1664(%rbp)
	testl	%eax, %eax
	js	.LBB12_15
# BB#10:                                # %if.end.79
	leaq	216(%rsp), %rdx
	movl	$3, %esi
	movq	%rbp, %rdi
	movl	%r14d, %ecx
	callq	*1664(%rbp)
	testl	%eax, %eax
	js	.LBB12_15
# BB#11:                                # %if.end.84
	leaq	192(%rsp), %rsi
	movq	%rbp, %rdi
	callq	pdf_cs_Pattern_colored
	testl	%eax, %eax
	js	.LBB12_15
# BB#12:                                # %if.then.87
	leaq	192(%rsp), %rdi
	movq	%rbp, %rsi
	callq	cos_value_write
	movq	5848(%rbp), %r14
	movq	%r15, %rdi
	callq	pdf_resource_id
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	pprintld1
	movq	2792(%rbx), %r12
	movq	8784(%rbp), %r14
	movl	30460(%rbp), %r15d
	cmpl	$0, 2852(%rbx)
	je	.LBB12_14
# BB#13:                                # %if.then.i
	leaq	2860(%rbx), %rdx
	xorl	%esi, %esi
	movl	$.L.str.29, %ecx
	movq	%rbp, %rdi
	callq	pdf_put_matrix
.LBB12_14:                              # %write_mask.exit
	movq	8776(%rbp), %rax
	movq	%rax, 8784(%rbp)
	movl	$1, 30460(%rbp)
	movq	1744(%r12), %rsi
	movl	1736(%r12), %ecx
	movl	832(%r12), %eax
	movl	836(%r12), %edx
	movl	%edx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movq	$0, 32(%rsp)
	movq	$-1, 24(%rsp)
	movl	$0, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	callq	gdev_pdf_copy_mono
	movq	%r14, 8784(%rbp)
	movl	%r15d, 30460(%rbp)
.LBB12_15:                              # %if.end.104
	movq	%rbx, %r15
	movl	$1, 2840(%r15)
	jmp	.LBB12_16
.LBB12_18:                              # %if.then
	testl	%eax, %eax
	jne	.LBB12_20
# BB#19:                                # %if.then.4
	movq	5848(%rbp), %rdi
	movl	$.L.str.8, %esi
	callq	stream_puts
.LBB12_20:                              # %if.end
	cmpl	$0, 2852(%r15)
	je	.LBB12_22
# BB#21:                                # %if.then.i.74
	leaq	2860(%r15), %rdx
	xorl	%esi, %esi
	movl	$.L.str.29, %ecx
	movq	%rbp, %rdi
	callq	pdf_put_matrix
.LBB12_22:                              # %if.end.i
	movq	1744(%r15), %rsi
	movl	1736(%r15), %ecx
	movl	832(%r15), %eax
	movl	836(%r15), %edx
	leaq	2272(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	leaq	464(%rsp), %rdi
	movq	%rdi, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$2, 40(%rsp)
	movl	$0, (%rsp)
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	callq	pdf_copy_color_data
	cmpl	$1, %eax
	je	.LBB12_25
# BB#23:                                # %if.else.i.82
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.LBB12_25
# BB#24:                                # %if.then.4.i.85
	movq	2416(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbp, %rdi
	callq	pdf_do_image
	movl	%eax, %ebx
.LBB12_25:                              # %write_image.exit87
	movl	$1, 2844(%r15)
	movq	%rbx, %rax
.LBB12_16:                              # %if.end.120
	testl	%eax, %eax
	jle	.LBB12_106
# BB#17:                                # %if.then.123
	movl	832(%r15), %ecx
	movl	836(%r15), %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	callq	*1200(%r15)
.LBB12_106:                             # %if.end.133
	addq	$2872, %rsp             # imm = 0xB38
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_26:                              # %if.then.112
	movq	5848(%rbp), %rdi
	movl	$.L.str.10, %esi
	callq	stream_puts
	cmpl	$0, 2852(%r15)
	je	.LBB12_28
# BB#27:                                # %if.then.i.66
	leaq	2860(%r15), %rdx
	xorl	%esi, %esi
	movl	$.L.str.15, %ecx
	movq	%rbp, %rdi
	callq	pdf_put_matrix
.LBB12_28:                              # %for.cond.preheader.i
	movq	%rbp, 176(%rsp)         # 8-byte Spill
	movq	2792(%r15), %rax
	movl	832(%rax), %r13d
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	jmp	.LBB12_29
	.align	16, 0x90
.LBB12_102:                             # %cleanup.thread84.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	2792(%r15), %rax
	movl	832(%rax), %r13d
	cmpl	%r13d, %edx
	movl	$0, %ecx
	cmovel	%ecx, %edx
	movl	%r12d, %ebx
	movl	%edx, %ebp
.LBB12_29:                              # %for.cond.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_36 Depth 2
                                        #     Child Loop BB12_44 Depth 2
                                        #       Child Loop BB12_47 Depth 3
                                        #       Child Loop BB12_58 Depth 3
                                        #     Child Loop BB12_63 Depth 2
                                        #       Child Loop BB12_68 Depth 3
                                        #       Child Loop BB12_71 Depth 3
                                        #         Child Loop BB12_72 Depth 4
                                        #         Child Loop BB12_79 Depth 4
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movslq	1736(%rax), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	1744(%rax), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	9576(%rcx), %rcx
	cmpq	$99, %rcx
	movl	$100, %edx
	cmovleq	%rdx, %rcx
	leal	7(%r13), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%r13,%rdx), %r10d
	sarl	$3, %r10d
	movq	%rcx, %rdx
	sarq	$63, %rdx
	shrq	$62, %rdx
	leaq	(%rdx,%rcx), %r11
	sarq	$2, %r11
	testl	%ebp, %ebp
	je	.LBB12_30
# BB#34:                                # %if.then.i.i
                                        #   in Loop: Header=BB12_29 Depth=1
	cmpl	%r13d, %ebp
	movl	%ebp, %edx
	movl	%ebx, %r12d
	jge	.LBB12_61
# BB#35:                                # %for.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB12_29 Depth=1
	decq	%r11
	movq	144(%rsp), %rax         # 8-byte Reload
	imull	%ebx, %eax
	movq	%rbx, %r8
	cltq
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	movl	%ebp, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	(%rcx,%rbp), %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movl	$1, %ebx
	xorl	%r9d, %r9d
	movl	%ebp, %edx
	.align	16, 0x90
.LBB12_36:                              # %for.body.i.i.i
                                        #   Parent Loop BB12_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %esi
	movzbl	(%rcx), %edi
	movzbl	%al, %eax
	andl	%eax, %edi
	sete	%bl
	movzbl	%bl, %ebx
	cmpl	%ebx, %esi
	je	.LBB12_41
# BB#37:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB12_36 Depth=2
	cmpq	%r11, %r9
	jl	.LBB12_40
# BB#38:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB12_36 Depth=2
	testl	%edi, %edi
	jne	.LBB12_39
.LBB12_40:                              # %if.end.14.i.i.i
                                        #   in Loop: Header=BB12_36 Depth=2
	incq	%r9
.LBB12_41:                              # %if.end.15.i.i.i
                                        #   in Loop: Header=BB12_36 Depth=2
	shrl	%eax
	leaq	1(%rcx), %rsi
	testl	%eax, %eax
	cmoveq	%rsi, %rcx
	movl	$128, %esi
	cmovel	%esi, %eax
	incl	%edx
	cmpl	%r13d, %edx
	jl	.LBB12_36
.LBB12_39:                              #   in Loop: Header=BB12_29 Depth=1
	movq	%r8, %rbx
	movl	%ebx, %r12d
	jmp	.LBB12_61
	.align	16, 0x90
.LBB12_30:                              # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	836(%rax), %r12d
	cmpl	%r12d, %ebx
	jge	.LBB12_31
# BB#32:                                # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB12_29 Depth=1
	cmpq	$4, %rcx
	jl	.LBB12_31
# BB#33:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movslq	%r10d, %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	%r10d, 160(%rsp)        # 4-byte Spill
	movl	%ebx, %r14d
.LBB12_44:                              # %for.body.i.i
                                        #   Parent Loop BB12_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_47 Depth 3
                                        #       Child Loop BB12_58 Depth 3
	movq	144(%rsp), %rax         # 8-byte Reload
	imull	%r14d, %eax
	cltq
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r15
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jle	.LBB12_45
# BB#46:                                #   in Loop: Header=BB12_44 Depth=2
	movq	%rbx, %r9
	leaq	-1(%r11), %r8
	movl	$1, %ebx
	movl	$128, %esi
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB12_47:                              # %for.body.i.50.i.i
                                        #   Parent Loop BB12_29 Depth=1
                                        #     Parent Loop BB12_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %edx
	movzbl	(%rdi), %ebp
	movzbl	%sil, %esi
	andl	%esi, %ebp
	sete	%bl
	movzbl	%bl, %ebx
	cmpl	%ebx, %edx
	je	.LBB12_52
# BB#48:                                # %if.then.i.53.i.i
                                        #   in Loop: Header=BB12_47 Depth=3
	cmpq	%r8, %rax
	jl	.LBB12_51
# BB#49:                                # %if.then.i.53.i.i
                                        #   in Loop: Header=BB12_47 Depth=3
	testl	%ebp, %ebp
	jne	.LBB12_50
.LBB12_51:                              # %if.end.14.i.55.i.i
                                        #   in Loop: Header=BB12_47 Depth=3
	incq	%rax
.LBB12_52:                              # %if.end.15.i.64.i.i
                                        #   in Loop: Header=BB12_47 Depth=3
	shrl	%esi
	leaq	1(%rdi), %rdx
	testl	%esi, %esi
	cmoveq	%rdx, %rdi
	movl	$128, %edx
	cmovel	%edx, %esi
	incl	%ecx
	cmpl	%r13d, %ecx
	jl	.LBB12_47
# BB#53:                                # %for.cond.for.end_crit_edge.i.66.i.i
                                        #   in Loop: Header=BB12_44 Depth=2
	testl	%ebp, %ebp
	sete	%dl
	movzbl	%dl, %edx
	movq	%r9, %rbx
	jmp	.LBB12_54
.LBB12_45:                              #   in Loop: Header=BB12_44 Depth=2
	movl	$1, %edx
	xorl	%ecx, %ecx
.LBB12_54:                              # %for.end.i.71.i.i
                                        #   in Loop: Header=BB12_44 Depth=2
	addq	%rdx, %rax
	jmp	.LBB12_55
.LBB12_50:                              #   in Loop: Header=BB12_44 Depth=2
	movq	%r9, %rbx
.LBB12_55:                              # %max_subimage_width.exit74.i.i
                                        #   in Loop: Header=BB12_44 Depth=2
	cmpl	%r13d, %ecx
	jl	.LBB12_56
# BB#57:                                # %if.end.i.i
                                        #   in Loop: Header=BB12_44 Depth=2
	subq	%rax, %r11
	movq	%r11, 168(%rsp)         # 8-byte Spill
	leal	1(%r14), %ebp
	movq	144(%rsp), %rax         # 8-byte Reload
	imull	%eax, %ebp
	.align	16, 0x90
.LBB12_58:                              # %for.cond.16.i.i
                                        #   Parent Loop BB12_29 Depth=1
                                        #     Parent Loop BB12_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incl	%r14d
	cmpl	%r12d, %r14d
	jge	.LBB12_59
# BB#42:                                # %for.body.18.i.i
                                        #   in Loop: Header=BB12_58 Depth=3
	movslq	%ebp, %rbp
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbp), %rsi
	movq	%r15, %rdi
	movq	184(%rsp), %rdx         # 8-byte Reload
	callq	memcmp
	movq	144(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %ebp
	testl	%eax, %eax
	je	.LBB12_58
# BB#43:                                # %for.cond.loopexit.i.i
                                        #   in Loop: Header=BB12_44 Depth=2
	movq	168(%rsp), %r11         # 8-byte Reload
	testq	%r11, %r11
	jg	.LBB12_44
.LBB12_59:                              #   in Loop: Header=BB12_29 Depth=1
	movl	%r13d, %edx
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	%r14, %r12
.LBB12_60:                              # %compute_subimage.exit.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	160(%rsp), %r10d        # 4-byte Reload
	jmp	.LBB12_61
.LBB12_31:                              #   in Loop: Header=BB12_29 Depth=1
	movl	%r13d, %edx
	movl	%ebx, %r12d
	.align	16, 0x90
.LBB12_61:                              # %compute_subimage.exit.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%r12, 96(%rsp)          # 8-byte Spill
	movl	$0, 140(%rsp)           # 4-byte Folded Spill
	cmpl	%r12d, %ebx
	movq	176(%rsp), %r13         # 8-byte Reload
	jge	.LBB12_98
# BB#62:                                # %for.body.lr.ph.i.39.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbp), %eax
	sarl	$3, %eax
	cltq
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movslq	%r10d, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB12_63:                              # %for.body.i.42.i
                                        #   Parent Loop BB12_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_68 Depth 3
                                        #       Child Loop BB12_71 Depth 3
                                        #         Child Loop BB12_72 Depth 4
                                        #         Child Loop BB12_79 Depth 4
	leal	1(%rbx), %ecx
	movq	144(%rsp), %rax         # 8-byte Reload
	imull	%ebx, %eax
	cltq
	testl	%ebp, %ebp
	je	.LBB12_65
# BB#64:                                #   in Loop: Header=BB12_63 Depth=2
	movq	%rax, 184(%rsp)         # 8-byte Spill
	jmp	.LBB12_70
	.align	16, 0x90
.LBB12_65:                              # %for.cond.4.preheader.i.i
                                        #   in Loop: Header=BB12_63 Depth=2
	cmpl	%r12d, %ecx
	jge	.LBB12_66
# BB#67:                                # %for.body.6.lr.ph.i.i
                                        #   in Loop: Header=BB12_63 Depth=2
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax), %r14
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	movslq	%ecx, %rcx
	imulq	144(%rsp), %rax         # 8-byte Folded Reload
	leaq	(%rax,%rdx), %rbp
	.align	16, 0x90
.LBB12_68:                              # %for.body.6.i.i
                                        #   Parent Loop BB12_29 Depth=1
                                        #     Parent Loop BB12_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %r15
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	128(%rsp), %rdx         # 8-byte Reload
	callq	memcmp
	movq	%r15, %rcx
	testl	%eax, %eax
	jne	.LBB12_70
# BB#69:                                # %for.inc.i.i
                                        #   in Loop: Header=BB12_68 Depth=3
	incq	%rcx
	addq	144(%rsp), %rbp         # 8-byte Folded Reload
	cmpl	%r12d, %ecx
	jl	.LBB12_68
	jmp	.LBB12_70
.LBB12_66:                              #   in Loop: Header=BB12_63 Depth=2
	movq	%rax, 184(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB12_70:                              # %if.end.11.i.i
                                        #   in Loop: Header=BB12_63 Depth=2
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	184(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax), %r12
	addq	88(%rsp), %r12          # 8-byte Folded Reload
	movslq	%ebx, %r15
	movslq	%ecx, %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r14d
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 168(%rsp)         # 4-byte Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	movb	%al, %bpl
	xorl	%ecx, %ecx
	jmp	.LBB12_71
	.align	16, 0x90
.LBB12_86:                              # %if.end.38.i.i.i
                                        #   in Loop: Header=BB12_71 Depth=3
	movq	5848(%r13), %rdi
	movslq	%ebx, %rdx
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movl	$.L.str.32, %esi
	movq	%r15, %rcx
	callq	pprintld2
	movq	5848(%r13), %rdi
	movq	%r13, %rbx
	movslq	%r14d, %r13
	movl	$.L.str.33, %esi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	pprintld2
	movq	5848(%rbx), %rdi
	movl	$.L.str.33, %esi
	movq	%r13, %rdx
	movq	%rbx, %r13
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rcx
	callq	pprintld2
	movq	5848(%r13), %rdi
	movl	$.L.str.34, %esi
	movq	176(%rsp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	callq	pprintld2
	movq	184(%rsp), %rcx         # 8-byte Reload
	addq	$4, %rcx
.LBB12_71:                              # %for.cond.1.outer.i.i.i
                                        #   Parent Loop BB12_29 Depth=1
                                        #     Parent Loop BB12_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_72 Depth 4
                                        #         Child Loop BB12_79 Depth 4
	movq	160(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %r14d
	movl	%r14d, %ebx
	movb	%bpl, %al
	jge	.LBB12_77
	.align	16, 0x90
.LBB12_72:                              # %for.body.i.i.48.i
                                        #   Parent Loop BB12_29 Depth=1
                                        #     Parent Loop BB12_63 Depth=2
                                        #       Parent Loop BB12_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	(%r12), %bpl
	jne	.LBB12_73
# BB#74:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB12_72 Depth=4
	shrb	%bpl
	leaq	1(%r12), %rax
	testb	%bpl, %bpl
	cmoveq	%rax, %r12
	movb	$-128, %al
	je	.LBB12_76
# BB#75:                                # %if.end.i.i.i
                                        #   in Loop: Header=BB12_72 Depth=4
	movb	%bpl, %al
.LBB12_76:                              # %if.end.i.i.i
                                        #   in Loop: Header=BB12_72 Depth=4
	incl	%ebx
	cmpl	%edx, %ebx
	movb	%al, %bpl
	jl	.LBB12_72
	jmp	.LBB12_77
	.align	16, 0x90
.LBB12_73:                              #   in Loop: Header=BB12_71 Depth=3
	movb	%bpl, %al
.LBB12_77:                              # %for.end.i.i.i
                                        #   in Loop: Header=BB12_71 Depth=3
	cmpl	%edx, %ebx
	je	.LBB12_87
# BB#78:                                # %for.cond.16.preheader.i.i.i
                                        #   in Loop: Header=BB12_71 Depth=3
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movl	%ebx, %r14d
	movb	%al, %bpl
	jge	.LBB12_84
	.align	16, 0x90
.LBB12_79:                              # %for.body.19.i.i.i
                                        #   Parent Loop BB12_29 Depth=1
                                        #     Parent Loop BB12_63 Depth=2
                                        #       Parent Loop BB12_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	testb	(%r12), %al
	je	.LBB12_80
# BB#81:                                # %if.end.25.i.i.i
                                        #   in Loop: Header=BB12_79 Depth=4
	shrb	%al
	leaq	1(%r12), %rcx
	testb	%al, %al
	cmoveq	%rcx, %r12
	movb	$-128, %bpl
	je	.LBB12_83
# BB#82:                                # %if.end.25.i.i.i
                                        #   in Loop: Header=BB12_79 Depth=4
	movb	%al, %bpl
.LBB12_83:                              # %if.end.25.i.i.i
                                        #   in Loop: Header=BB12_79 Depth=4
	incl	%r14d
	cmpl	%edx, %r14d
	movb	%bpl, %al
	jl	.LBB12_79
	jmp	.LBB12_84
	.align	16, 0x90
.LBB12_80:                              #   in Loop: Header=BB12_71 Depth=3
	movb	%al, %bpl
.LBB12_84:                              # %for.end.35.i.i.i
                                        #   in Loop: Header=BB12_71 Depth=3
	cmpl	$0, 168(%rsp)           # 4-byte Folded Reload
	jne	.LBB12_86
# BB#85:                                # %if.then.37.i.i.i
                                        #   in Loop: Header=BB12_71 Depth=3
	movq	5848(%r13), %rdi
	movl	$.L.str.31, %esi
	callq	stream_puts
	movl	$1, 168(%rsp)           # 4-byte Folded Spill
	jmp	.LBB12_86
	.align	16, 0x90
.LBB12_87:                              # %image_line_to_clip.exit.i.i
                                        #   in Loop: Header=BB12_63 Depth=2
	testl	%ecx, %ecx
	movl	$1, %eax
	movl	140(%rsp), %esi         # 4-byte Reload
	cmovgl	%eax, %esi
	movl	%esi, 140(%rsp)         # 4-byte Spill
	movq	96(%rsp), %r12          # 8-byte Reload
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	%r12d, %eax
	movq	120(%rsp), %rbp         # 8-byte Reload
	jge	.LBB12_89
# BB#88:                                # %image_line_to_clip.exit.i.i
                                        #   in Loop: Header=BB12_63 Depth=2
	testl	%ecx, %ecx
	movl	%eax, %ebx
	jns	.LBB12_63
.LBB12_89:                              # %for.end.20.i.i
                                        #   in Loop: Header=BB12_29 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 140(%rsp)           # 4-byte Folded Reload
	je	.LBB12_91
# BB#90:                                # %if.then.22.i.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	5848(%r13), %rdi
	movl	$.L.str.8, %esi
	movq	%rdx, %rbx
	movq	%rcx, %r14
	callq	stream_puts
	movq	%r14, %rcx
	movq	%rbx, %rdx
	movl	$1, %eax
.LBB12_91:                              # %mask_to_clip.exit.i
                                        #   in Loop: Header=BB12_29 Depth=1
	testl	%ecx, %ecx
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
	js	.LBB12_105
# BB#92:                                # %if.end.15.i
                                        #   in Loop: Header=BB12_29 Depth=1
	testl	%eax, %eax
	je	.LBB12_93
# BB#94:                                # %if.then.17.i
                                        #   in Loop: Header=BB12_29 Depth=1
	decl	%ebp
	movl	$0, %eax
	cmovsl	%eax, %ebp
	decl	%ebx
	cmovsl	%eax, %ebx
	leal	1(%rdx), %eax
	movq	%rdx, %r14
	movl	832(%r15), %ecx
	movl	836(%r15), %edx
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	leal	1(%r12), %edi
	cmpl	%edi, %edx
	cmovlel	%edx, %edi
	movl	1736(%r15), %ecx
	movl	%ecx, %esi
	imull	%ebx, %esi
	addq	1744(%r15), %rsi
	subl	%ebp, %eax
	subl	%ebx, %edi
	leaq	2272(%rsp), %rdx
	movq	%rdx, 32(%rsp)
	leaq	464(%rsp), %rdx
	movq	%rdx, 24(%rsp)
	movl	%ebx, (%rsp)
	movl	%edi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$2, 40(%rsp)
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movl	%ebp, %edx
	movl	%ebp, %r9d
	callq	pdf_copy_color_data
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB12_105
# BB#95:                                # %if.end.i.65.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	2416(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB12_96
# BB#97:                                # %write_subimage.exit.i
                                        #   in Loop: Header=BB12_29 Depth=1
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%r13, %rdi
	callq	pdf_do_image
	movl	%eax, %ecx
	movb	$1, %al
	movl	%eax, 140(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	movq	%r14, %rdx
	jns	.LBB12_98
	jmp	.LBB12_105
.LBB12_93:                              #   in Loop: Header=BB12_29 Depth=1
	movl	$0, 140(%rsp)           # 4-byte Folded Spill
	jmp	.LBB12_98
.LBB12_96:                              # %write_subimage.exit.thread82.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movb	$1, %al
	movl	%eax, 140(%rsp)         # 4-byte Spill
	movq	%r14, %rdx
	.align	16, 0x90
.LBB12_98:                              # %if.end.22.i
                                        #   in Loop: Header=BB12_29 Depth=1
	cmpl	832(%r15), %edx
	jl	.LBB12_100
# BB#99:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB12_29 Depth=1
	cmpl	836(%r15), %r12d
	jge	.LBB12_103
.LBB12_100:                             # %if.end.30.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	%r13, 176(%rsp)         # 8-byte Spill
	movl	140(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	je	.LBB12_102
# BB#101:                               # %if.then.32.i
                                        #   in Loop: Header=BB12_29 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	5848(%rax), %rdi
	movl	$.L.str.30, %esi
	movq	%rdx, %rbx
	callq	stream_puts
	movq	%rbx, %rdx
	jmp	.LBB12_102
.LBB12_56:                              # %if.then.10.i.i
                                        #   in Loop: Header=BB12_29 Depth=1
	leal	1(%rbx), %eax
	cmpl	%ebx, %r14d
	cmovel	%ecx, %r13d
	cmovnel	%r14d, %eax
	movl	%r13d, %edx
	movl	%eax, %r12d
	movq	72(%rsp), %r15          # 8-byte Reload
	movq	120(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB12_60
.LBB12_103:                             # %for.end.i
	xorl	%ecx, %ecx
	cmpl	$0, 2852(%r15)
	je	.LBB12_105
# BB#104:                               # %if.then.43.i
	movq	5848(%r13), %rdi
	movl	$.L.str.11, %esi
	callq	stream_puts
	xorl	%ecx, %ecx
.LBB12_105:                             # %write_image_with_clip.exit
	movq	5848(%r13), %rdi
	movl	$.L.str.11, %esi
	movq	%rcx, %rbx
	callq	stream_puts
	movq	%rbx, %rax
	jmp	.LBB12_106
.Lfunc_end12:
	.size	pdf_dump_converted_image, .Lfunc_end12-pdf_dump_converted_image
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.text
	.globl	pdf_setup_masked_image_converter
	.align	16, 0x90
	.type	pdf_setup_masked_image_converter,@function
pdf_setup_masked_image_converter:       # @pdf_setup_masked_image_converter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp109:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp110:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp111:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp113:
	.cfi_def_cfa_offset 80
.Ltmp114:
	.cfi_offset %rbx, -56
.Ltmp115:
	.cfi_offset %r12, -48
.Ltmp116:
	.cfi_offset %r13, -40
.Ltmp117:
	.cfi_offset %r14, -32
.Ltmp118:
	.cfi_offset %r15, -24
.Ltmp119:
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	%rcx, %r14
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB13_3
# BB#1:                                 # %if.then
	movl	$st_pdf_lcvd_t, %esi
	movl	$.L.str.12, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB13_15
# BB#2:                                 # %if.end
	movq	%rbx, (%r14)
.LBB13_3:                               # %if.end.3
	movl	88(%rsp), %r14d
	movq	%r15, 2800(%rbx)
	leaq	96(%r15), %rbp
	movzwl	108(%r15), %edi
	callq	gdev_mem_device_for_bits
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r12, %rdx
	movq	%r15, %r8
	callq	gs_make_mem_device
	movl	%r14d, 832(%rbx)
	movl	96(%rsp), %eax
	movl	%eax, 836(%rbx)
	movl	%r13d, 2748(%rbx)
	movl	80(%rsp), %eax
	movl	%eax, 2752(%rbx)
	movq	%r12, 1752(%rbx)
	leaq	96(%rbx), %rdi
	movl	$720, %edx              # imm = 0x2D0
	movq	%rbp, %rsi
	callq	memcpy
	movl	$0, 2856(%rbx)
	movq	$0, 2792(%rbx)
	movaps	.LCPI13_0(%rip), %xmm0  # xmm0 = [1,1,0,1]
	movups	%xmm0, 2840(%rbx)
	movq	%rbx, %rdi
	callq	*1144(%rbx)
	testl	%eax, %eax
	js	.LBB13_15
# BB#4:                                 # %if.end.22
	movl	832(%rbx), %ecx
	movl	836(%rbx), %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	callq	*1200(%rbx)
	testl	%eax, %eax
	js	.LBB13_15
# BB#5:                                 # %if.end.35
	movl	104(%rsp), %ebp
	xorl	%r13d, %r13d
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB13_10
# BB#6:                                 # %if.then.36
	movl	$st_device_memory, %esi
	movl	$.L.str.12, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB13_15
# BB#7:                                 # %if.end.43
	movq	%r13, 2792(%rbx)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	gs_make_mem_mono_device
	movl	832(%rbx), %eax
	movl	%eax, 832(%r13)
	movl	836(%rbx), %eax
	movl	%eax, 836(%r13)
	movl	$1, %esi
	movq	%r13, %rdi
	callq	gx_device_raster
	movl	%eax, 1736(%r13)
	movq	%r12, 1752(%r13)
	movq	%r13, %rdi
	callq	*1144(%r13)
	testl	%eax, %eax
	js	.LBB13_15
# BB#8:                                 # %if.end.59
	testl	%ebp, %ebp
	je	.LBB13_10
# BB#9:                                 # %if.then.61
	movl	832(%r13), %ecx
	movl	836(%r13), %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	callq	*1200(%r13)
	testl	%eax, %eax
	js	.LBB13_15
.LBB13_10:                              # %if.end.73
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movq	1224(%rbx), %rax
	movq	%rax, 2808(%rbx)
	movq	1200(%rbx), %rax
	movq	%rax, 2816(%rbx)
	movq	1176(%rbx), %rax
	movq	%rax, 2824(%rbx)
	movq	1432(%rbx), %rax
	movq	%rax, 2832(%rbx)
	movl	$lcvd_fill_rectangle_shifted2, %eax
	movl	$lcvd_fill_rectangle_shifted, %ecx
	cmoveq	%rcx, %rax
	testl	%ebp, %ebp
	cmovneq	%rcx, %rax
	movq	%rax, 1200(%rbx)
	movq	$lcvd_get_clipping_box_shifted_from_mdev, 1432(%rbx)
	movq	$lcvd_copy_color_shifted, 1224(%rbx)
	movq	$lcvd_dev_spec_op, 1664(%rbx)
	movq	$lcvd_handle_fill_path_as_shading_coverage, 1336(%rbx)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	16(%rcx), %rax
	movq	%rax, 2876(%rbx)
	movups	(%rcx), %xmm0
	movups	%xmm0, 2860(%rbx)
	je	.LBB13_14
# BB#11:                                # %if.then.111
	movl	$1, 84(%rbx)
	testq	%r13, %r13
	je	.LBB13_13
# BB#12:                                # %if.then.114
	movl	$1, 84(%r13)
.LBB13_13:                              # %if.end.116
	movq	$lcvd_close_device_with_writing, 1176(%rbx)
.LBB13_14:                              # %cleanup
	xorl	%eax, %eax
.LBB13_15:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdf_setup_masked_image_converter, .Lfunc_end13-pdf_setup_masked_image_converter
	.cfi_endproc

	.align	16, 0x90
	.type	lcvd_fill_rectangle_shifted2,@function
lcvd_fill_rectangle_shifted2:           # @lcvd_fill_rectangle_shifted2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp121:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp123:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp124:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp126:
	.cfi_def_cfa_offset 64
.Ltmp127:
	.cfi_offset %rbx, -56
.Ltmp128:
	.cfi_offset %r12, -48
.Ltmp129:
	.cfi_offset %r13, -40
.Ltmp130:
	.cfi_offset %r14, -32
.Ltmp131:
	.cfi_offset %r15, -24
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %rbp
	movq	2792(%rbp), %rdi
	subl	2748(%rbp), %esi
	subl	2752(%rbp), %edx
	movl	$1, %r9d
	callq	*1200(%rdi)
	testl	%eax, %eax
	js	.LBB14_1
# BB#2:                                 # %if.end
	movq	2816(%rbp), %rax
	subl	2748(%rbp), %ebx
	subl	2752(%rbp), %r13d
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movl	%r15d, %r8d
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB14_1:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	lcvd_fill_rectangle_shifted2, .Lfunc_end14-lcvd_fill_rectangle_shifted2
	.cfi_endproc

	.align	16, 0x90
	.type	lcvd_fill_rectangle_shifted,@function
lcvd_fill_rectangle_shifted:            # @lcvd_fill_rectangle_shifted
	.cfi_startproc
# BB#0:                                 # %entry
	movq	2816(%rdi), %rax
	subl	2748(%rdi), %esi
	subl	2752(%rdi), %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end15:
	.size	lcvd_fill_rectangle_shifted, .Lfunc_end15-lcvd_fill_rectangle_shifted
	.cfi_endproc

	.align	16, 0x90
	.type	lcvd_get_clipping_box_shifted_from_mdev,@function
lcvd_get_clipping_box_shifted_from_mdev: # @lcvd_get_clipping_box_shifted_from_mdev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp135:
	.cfi_def_cfa_offset 32
.Ltmp136:
	.cfi_offset %rbx, -24
.Ltmp137:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*2832(%rbx)
	movl	2748(%rbx), %eax
	movl	2752(%rbx), %ecx
	shll	$8, %eax
	shll	$8, %ecx
	movdqu	(%r14), %xmm0
	movd	%ecx, %xmm1
	pshufd	$80, %xmm1, %xmm1       # xmm1 = xmm1[0,0,1,1]
	movd	%eax, %xmm2
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	%xmm0, %xmm2
	movdqu	%xmm2, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	lcvd_get_clipping_box_shifted_from_mdev, .Lfunc_end16-lcvd_get_clipping_box_shifted_from_mdev
	.cfi_endproc

	.align	16, 0x90
	.type	lcvd_copy_color_shifted,@function
lcvd_copy_color_shifted:                # @lcvd_copy_color_shifted
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp138:
	.cfi_def_cfa_offset 32
	movl	40(%rsp), %r10d
	movl	48(%rsp), %r11d
	movl	32(%rsp), %eax
	subl	2748(%rdi), %r9d
	subl	2752(%rdi), %eax
	movl	%r11d, 16(%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, (%rsp)
	callq	*2808(%rdi)
	addq	$24, %rsp
	retq
.Lfunc_end17:
	.size	lcvd_copy_color_shifted, .Lfunc_end17-lcvd_copy_color_shifted
	.cfi_endproc

	.align	16, 0x90
	.type	lcvd_dev_spec_op,@function
lcvd_dev_spec_op:                       # @lcvd_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$8, %esi
	jae	.LBB18_2
# BB#1:                                 # %switch.lookup
	movslq	%esi, %rax
	movl	.Lswitch.table(,%rax,4), %eax
	retq
.LBB18_2:                               # %sw.epilog
	jmp	gx_default_dev_spec_op  # TAILCALL
.Lfunc_end18:
	.size	lcvd_dev_spec_op, .Lfunc_end18-lcvd_dev_spec_op
	.cfi_endproc

	.align	16, 0x90
	.type	lcvd_handle_fill_path_as_shading_coverage,@function
lcvd_handle_fill_path_as_shading_coverage: # @lcvd_handle_fill_path_as_shading_coverage
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
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp143:
	.cfi_def_cfa_offset 64
.Ltmp144:
	.cfi_offset %rbx, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	cmpl	$0, 2856(%rbx)
	jne	.LBB19_16
# BB#1:                                 # %if.end
	movq	1728(%rbx), %r14
	movq	%r15, %rdi
	callq	gx_path_is_null
	testl	%eax, %eax
	je	.LBB19_10
# BB#2:                                 # %if.then.2
	cmpl	$0, 2844(%rbx)
	jne	.LBB19_5
# BB#3:                                 # %if.then.4
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_dump_converted_image
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_16
# BB#4:                                 # %if.end.7
	movq	5848(%r14), %rdi
	movl	$.L.str.30, %esi
	callq	stream_puts
	movq	$lcvd_fill_rectangle_shifted2, 1200(%rbx)
.LBB19_5:                               # %if.end.11
	cmpl	$0, 2848(%rbx)
	je	.LBB19_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$0, 2844(%rbx)
	jne	.LBB19_9
.LBB19_7:                               # %if.then.15
	movq	2792(%rbx), %rdi
	movl	832(%rdi), %ecx
	movl	836(%rdi), %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	callq	*1200(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_16
# BB#8:                                 # %if.end.25
	movl	$1, 2848(%rbx)
.LBB19_9:                               # %if.end.27
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 2840(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB19_16
.LBB19_10:                              # %if.else
	movsd	2888(%rbx), %xmm0       # xmm0 = mem[0],zero
	movsd	2896(%rbx), %xmm1       # xmm1 = mem[0],zero
	leaq	(%rsp), %rdi
	callq	gs_make_translation
	cmpl	$0, 2840(%rbx)
	jne	.LBB19_13
# BB#11:                                # %if.then.33
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_dump_converted_image
	testl	%eax, %eax
	js	.LBB19_14
# BB#12:                                # %if.end.37
	movq	5848(%r14), %rdi
	movl	$.L.str.30, %esi
	callq	stream_puts
	movq	$lcvd_fill_rectangle_shifted, 1200(%rbx)
	movl	$1, 2840(%rbx)
.LBB19_13:                              # %if.end.45
	leaq	(%rsp), %rcx
	movl	$17, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gdev_vector_dopath
	testl	%eax, %eax
	js	.LBB19_14
# BB#15:                                # %cleanup
	movq	5848(%r14), %rdi
	movl	$.L.str.35, %esi
	callq	stream_puts
	movl	$0, 2844(%rbx)
	jmp	.LBB19_16
.LBB19_14:                              # %cleanup.thread
	movl	%eax, %ebp
.LBB19_16:                              # %cleanup.54
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	lcvd_handle_fill_path_as_shading_coverage, .Lfunc_end19-lcvd_handle_fill_path_as_shading_coverage
	.cfi_endproc

	.align	16, 0x90
	.type	lcvd_close_device_with_writing,@function
lcvd_close_device_with_writing:         # @lcvd_close_device_with_writing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp150:
	.cfi_def_cfa_offset 32
.Ltmp151:
	.cfi_offset %rbx, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	2800(%rbx), %rdi
	movq	%rbx, %rsi
	callq	pdf_dump_converted_image
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	*2824(%rbx)
	testl	%ebp, %ebp
	cmovsl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	lcvd_close_device_with_writing, .Lfunc_end20-lcvd_close_device_with_writing
	.cfi_endproc

	.globl	pdf_remove_masked_image_converter
	.align	16, 0x90
	.type	pdf_remove_masked_image_converter,@function
pdf_remove_masked_image_converter:      # @pdf_remove_masked_image_converter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	%rbx, %rdi
	callq	*1176(%rbx)
	movq	2792(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB21_1
# BB#2:                                 # %if.then
	callq	*1176(%rdi)
	movq	2792(%rbx), %rsi
	movq	24(%rsi), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.13, %edx
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB21_1:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end21:
	.size	pdf_remove_masked_image_converter, .Lfunc_end21-pdf_remove_masked_image_converter
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	-4517156605740974080    # double -4172800
.LCPI22_1:
	.quad	4706215431113801728     # double 4172800
.LCPI22_2:
	.quad	4608083138725491507     # double 1.2
.LCPI22_3:
	.quad	4607182418800017408     # double 1
.LCPI22_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gdev_pdf_fill_path
	.align	16, 0x90
	.type	gdev_pdf_fill_path,@function
gdev_pdf_fill_path:                     # @gdev_pdf_fill_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp157:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp158:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp159:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp160:
	.cfi_def_cfa_offset 56
	subq	$3240, %rsp             # imm = 0xCA8
.Ltmp161:
	.cfi_def_cfa_offset 3296
.Ltmp162:
	.cfi_offset %rbx, -56
.Ltmp163:
	.cfi_offset %r12, -48
.Ltmp164:
	.cfi_offset %r13, -40
.Ltmp165:
	.cfi_offset %r14, -32
.Ltmp166:
	.cfi_offset %r15, -24
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, 144(%rsp)          # 8-byte Spill
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 3216(%rsp)
	cmpl	$0, 9528(%rdi)
	je	.LBB22_3
# BB#1:                                 # %if.then
	incl	9776(%rdi)
	movq	%rdi, %r15
	movq	%rsi, %rbp
	movq	%rdx, %rbx
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	144(%rsp), %r8          # 8-byte Reload
	movq	%r14, %r9
	callq	gx_default_fill_path
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movl	%eax, %ebp
	movl	9776(%rdi), %eax
	decl	%eax
	movl	%eax, 9776(%rdi)
	testl	%ebp, %ebp
	js	.LBB22_82
# BB#2:                                 # %if.end
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB22_82
.LBB22_3:                               # %if.end.7
	movq	56(%rdx), %rax
	movl	$1, %r12d
	testq	%rax, %rax
	je	.LBB22_8
# BB#4:                                 # %land.end
	cmpq	$0, 24(%rax)
	setne	%al
	movzbl	%al, %r12d
	je	.LBB22_5
.LBB22_8:                               # %if.then.16
	movq	%rsi, %r15
	leaq	3216(%rsp), %rsi
	movq	%rdi, %rbp
	movq	%rdx, %rdi
	movq	%rdx, %rbx
	callq	gx_path_bbox
	movq	%rbp, %rdi
	movq	%rbx, %rcx
	movq	%r15, %rsi
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_82
# BB#9:                                 # %if.then.16.if.end.21_crit_edge
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	3216(%rsp), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	3220(%rsp), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	3224(%rsp), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	3228(%rsp), %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	jmp	.LBB22_10
.LBB22_5:                               # %land.lhs.true
	cmpl	$0, 30384(%rdi)
	je	.LBB22_7
# BB#6:                                 # %land.lhs.true.if.end.21_crit_edge
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movb	$1, %al
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	movl	$0, 88(%rsp)            # 4-byte Folded Spill
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
.LBB22_10:                              # %if.end.21
	leaq	3216(%rsp), %rdx
	movq	%rdi, %r13
	movq	%rsi, %r15
	movl	%r12d, %ecx
	movq	%r14, %r8
	callq	prepare_fill_with_clip
	movl	%eax, %ebp
	cmpl	$-15, %ebp
	jne	.LBB22_12
# BB#11:                                # %if.then.24
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	144(%rsp), %r8          # 8-byte Reload
.LBB22_22:                              # %cleanup.452
	movq	%r14, %r9
	callq	gx_default_fill_path
	movl	%eax, %ebp
	jmp	.LBB22_82
.LBB22_12:                              # %if.end.26
	testl	%ebp, %ebp
	js	.LBB22_82
# BB#13:                                # %if.end.29
	cmpl	$1, %ebp
	sete	%al
	xorl	%ebp, %ebp
	movl	120(%rsp), %ecx         # 4-byte Reload
	orb	%al, %cl
	jne	.LBB22_82
# BB#14:                                # %if.end.35
	movq	1736(%r13), %rax
	movq	%r13, %rdi
	movq	%r15, %rbp
	movq	%rbp, %rsi
	movq	144(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdx
	callq	*64(%rax)
	movq	%r13, %rdi
	xorl	%r12d, %r12d
	testl	%eax, %eax
	cmovneq	%rbp, %r12
	movq	%rbp, %r13
	cmpl	$0, 9544(%rdi)
	jne	.LBB22_16
# BB#15:                                # %if.then.i
	leaq	8144(%rdi), %rcx
	leaq	7504(%rdi), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	movq	%rdi, %rbx
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	pdf_set_drawing_color
	movq	%rbx, %rdi
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_17
.LBB22_16:                              # %if.end.4.i
	leaq	7512(%rdi), %rcx
	leaq	7500(%rdi), %r8
	movl	$psdf_set_fill_color_commands, %r9d
	movq	%rdi, %rbx
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	pdf_set_drawing_color
	movq	%rbx, %rdi
	movl	%eax, %ebp
.LBB22_17:                              # %pdf_setfillcolor.exit
	cmpl	$-15, %ebp
	jne	.LBB22_67
# BB#18:                                # %if.then.38
	movsd	.LCPI22_2(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%rdi), %xmm0
	jae	.LBB22_20
# BB#19:                                # %lor.lhs.false
	cmpl	$0, 9008(%rdi)
	je	.LBB22_21
.LBB22_20:                              # %land.rhs.42
	movq	%rdi, %rbx
	movq	%r15, %rdi
	callq	gx_dc_is_pattern2_color
	movq	%rbx, %rdi
	testl	%eax, %eax
	je	.LBB22_21
# BB#23:                                # %if.else
	movq	%rdi, %rbx
	leaq	312(%rsp), %rax
	movq	%rax, 304(%rsp)
	movq	%r15, %rdi
	callq	gx_dc_pattern2_can_overlap
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	148(%r13), %rax
	movq	%rax, 240(%rsp)
	movupd	132(%r13), %xmm0
	movq	%r13, %r14
	movapd	%xmm0, 224(%rsp)
	movq	368(%r15), %rax
	movq	32(%rax), %rbp
	movq	88(%rax), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	96(%rax), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	%rbp, %rdi
	callq	gs_state_memory
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gs_state_copy
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB22_82
# BB#24:                                # %if.end.55
	leaq	288(%rsp), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	gx_path_bbox
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_82
# BB#25:                                # %do.body
	movl	3216(%rsp), %eax
	cmpl	288(%rsp), %eax
	jle	.LBB22_27
# BB#26:                                # %if.then.66
	movl	%eax, 288(%rsp)
.LBB22_27:                              # %if.end.71
	movl	3224(%rsp), %eax
	cmpl	296(%rsp), %eax
	jge	.LBB22_29
# BB#28:                                # %if.then.76
	movl	%eax, 296(%rsp)
.LBB22_29:                              # %if.end.81
	movl	3220(%rsp), %eax
	cmpl	292(%rsp), %eax
	jle	.LBB22_31
# BB#30:                                # %if.then.86
	movl	%eax, 292(%rsp)
.LBB22_31:                              # %if.end.91
	movl	3228(%rsp), %eax
	cmpl	300(%rsp), %eax
	jge	.LBB22_33
# BB#32:                                # %if.then.97
	movl	%eax, 300(%rsp)
.LBB22_33:                              # %do.end
	leaq	132(%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%r14, 88(%rsp)          # 8-byte Spill
	leaq	272(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_dc_pattern2_get_bbox
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_82
# BB#34:                                # %if.end.106
	je	.LBB22_35
# BB#36:                                # %do.body.109
	movl	272(%rsp), %eax
	movl	288(%rsp), %r14d
	cmpl	%r14d, %eax
	jle	.LBB22_38
# BB#37:                                # %if.then.115
	movl	%eax, 288(%rsp)
	movl	%eax, %r14d
.LBB22_38:                              # %if.end.120
	movl	280(%rsp), %ecx
	movl	296(%rsp), %eax
	cmpl	%eax, %ecx
	jge	.LBB22_40
# BB#39:                                # %if.then.126
	movl	%ecx, 296(%rsp)
	movl	%ecx, %eax
.LBB22_40:                              # %if.end.131
	movl	276(%rsp), %ecx
	cmpl	292(%rsp), %ecx
	jle	.LBB22_42
# BB#41:                                # %if.then.137
	movl	%ecx, 292(%rsp)
.LBB22_42:                              # %if.end.142
	movl	284(%rsp), %ecx
	cmpl	300(%rsp), %ecx
	jge	.LBB22_44
# BB#43:                                # %if.then.148
	movl	%ecx, 300(%rsp)
	jmp	.LBB22_44
.LBB22_7:                               # %if.then.13
	movq	%rdi, %rbx
	callq	pdf_prepare_initial_viewer_state
	movq	%rbx, %rdi
	callq	pdf_reset_graphics
.LBB22_81:                              # %cleanup.452.critedge182
	xorl	%ebp, %ebp
.LBB22_82:                              # %cleanup.452
	movl	%ebp, %eax
	addq	$3240, %rsp             # imm = 0xCA8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_67:                              # %if.end.340
	testl	%ebp, %ebp
	js	.LBB22_82
# BB#68:                                # %if.end.344
	movq	5848(%rdi), %r12
	testq	%r14, %r14
	je	.LBB22_69
# BB#70:                                # %do.body.349
	movl	3216(%rsp), %eax
	movl	3220(%rsp), %ecx
	movl	116(%rsp), %edx         # 4-byte Reload
	cmpl	%edx, %eax
	cmovgel	%eax, %edx
	movl	3224(%rsp), %eax
	movl	100(%rsp), %ebx         # 4-byte Reload
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	movl	88(%rsp), %r15d         # 4-byte Reload
	cmpl	%r15d, %ecx
	cmovgel	%ecx, %r15d
	movl	3228(%rsp), %eax
	movl	104(%rsp), %ebp         # 4-byte Reload
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	cmpl	%ebx, %edx
	movq	136(%rsp), %r14         # 8-byte Reload
	jg	.LBB22_81
# BB#71:                                # %lor.lhs.false.406
	movl	%edx, 116(%rsp)         # 4-byte Spill
	cmpl	%ebp, %r15d
	jg	.LBB22_81
	jmp	.LBB22_72
.LBB22_21:                              # %if.then.47
	movq	%r13, %rsi
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	%r15, %r8
	jmp	.LBB22_22
.LBB22_69:
	movq	136(%rsp), %r14         # 8-byte Reload
	movl	104(%rsp), %ebp         # 4-byte Reload
	movl	100(%rsp), %ebx         # 4-byte Reload
	movl	88(%rsp), %r15d         # 4-byte Reload
.LBB22_72:                              # %if.end.415
	movss	12(%r14), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	6168(%rdi), %xmm0
	jne	.LBB22_73
	jnp	.LBB22_74
.LBB22_73:                              # %if.then.419
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.17, %esi
	movq	%rdi, %r13
	movq	%r12, %rdi
	callq	pprintg1
	movq	%r13, %rdi
	movl	12(%r14), %eax
	movl	%eax, 6168(%rdi)
.LBB22_74:                              # %if.end.426
	movl	116(%rsp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm2
	movsd	8800(%rdi), %xmm0       # xmm0 = mem[0],zero
	movsd	8808(%rdi), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm2
	cvtsi2sdl	%r15d, %xmm3
	divsd	%xmm1, %xmm3
	minsd	%xmm3, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sdl	%ebx, %xmm3
	divsd	%xmm0, %xmm3
	cvtsi2sdl	%ebp, %xmm4
	divsd	%xmm1, %xmm4
	maxsd	%xmm4, %xmm3
	xorl	%ebp, %ebp
	movsd	.LCPI22_0(%rip), %xmm4  # xmm4 = mem[0],zero
	ucomisd	%xmm2, %xmm4
	jae	.LBB22_76
# BB#75:                                # %if.end.426
	ucomisd	.LCPI22_1(%rip), %xmm3
	jbe	.LBB22_77
.LBB22_76:                              # %if.then.429
	divsd	.LCPI22_0(%rip), %xmm2
	divsd	.LCPI22_1(%rip), %xmm3
	maxsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm1
	leaq	312(%rsp), %rbp
	movq	%rdi, %rbx
	movq	%rbp, %rdi
	callq	gs_make_scaling
	movl	$.L.str.18, %esi
	movl	$.L.str.19, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	pdf_put_matrix
	movq	%rbx, %rdi
.LBB22_77:                              # %if.end.437
	movl	$17, %edx
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rcx
	callq	gdev_vector_dopath
	movl	$.L.str.20, %esi
	cmpl	$0, (%r14)
	js	.LBB22_79
# BB#78:                                # %select.mid322
	movl	$.L.str.21, %esi
.LBB22_79:                              # %select.end321
	movq	%r12, %rdi
	callq	stream_puts
	testq	%rbp, %rbp
	je	.LBB22_81
# BB#80:                                # %if.then.445
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	callq	stream_puts
	jmp	.LBB22_81
.LBB22_35:                              # %if.end.106.if.end.156_crit_edge
	movl	288(%rsp), %r14d
	movl	296(%rsp), %eax
.LBB22_44:                              # %if.end.156
	xorl	%ebp, %ebp
	cmpl	%eax, %r14d
	jge	.LBB22_82
# BB#45:                                # %lor.lhs.false.162
	movl	292(%rsp), %r13d
	cmpl	300(%rsp), %r13d
	jge	.LBB22_82
# BB#46:                                # %if.end.169
	sarl	$8, %r14d
	leaq	248(%rsp), %rdi
	callq	gs_make_identity
	movslq	296(%rsp), %r12
	subq	$-128, %r12
	shrq	$8, %r12
	subl	%r14d, %r12d
	je	.LBB22_82
# BB#47:                                # %if.end.169
	sarl	$8, %r13d
	movslq	300(%rsp), %rcx
	subq	$-128, %rcx
	shrq	$8, %rcx
	cmpl	%r13d, %ecx
	je	.LBB22_82
# BB#48:                                # %if.end.196
	subl	%r13d, %ecx
	cvtsi2ssl	%r14d, %xmm0
	movss	%xmm0, 264(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r13d, %xmm0
	movss	%xmm0, 268(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r14d, %xmm0
	movsd	%xmm0, 3200(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	movsd	%xmm0, 3208(%rsp)
	cvtsi2sdl	%r12d, %xmm2
	cvtsi2sdl	%ecx, %xmm1
	movapd	%xmm2, %xmm3
	mulsd	%xmm1, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2sdl	100(%rbx), %xmm0
	mulsd	%xmm3, %xmm0
	xorps	%xmm3, %xmm3
	cvtsi2sdq	9584(%rbx), %xmm3
	divsd	%xmm3, %xmm0
	ucomisd	.LCPI22_3(%rip), %xmm0
	jbe	.LBB22_56
# BB#49:                                # %if.then.213
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB22_51
# BB#50:                                # %call.sqrt
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB22_51:                              # %if.then.213.split
	callq	ceil
	cvttsd2si	%xmm0, %edi
	callq	ilog2
	movl	$1, %ebx
	movl	$1, %edx
	movb	%al, %cl
	shll	%cl, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movl	%eax, %edx
	incl	%edx
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movb	%dl, %cl
	movapd	%xmm2, %xmm1
	ja	.LBB22_53
# BB#52:                                # %if.then.213.split
	movb	%al, %cl
.LBB22_53:                              # %if.then.213.split
	movl	$1, %esi
	shll	%cl, %esi
	movl	%esi, 44(%rsp)          # 4-byte Spill
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%esi, %xmm2
	movsd	%xmm2, 72(%rsp)         # 8-byte Spill
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ja	.LBB22_55
# BB#54:                                # %if.then.213.split
	movb	%al, %dl
.LBB22_55:                              # %if.then.213.split
	movb	%dl, %cl
	shll	%cl, %ebx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ebx, %xmm1
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	divsd	%xmm1, %xmm0
	addsd	.LCPI22_4(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r12d
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	72(%rsp), %xmm0         # 8-byte Folded Reload
	addsd	.LCPI22_4(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movsd	.LCPI22_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	72(%rsp), %xmm1         # 8-byte Folded Reload
	leaq	200(%rsp), %r13
	movq	%r13, %rdi
	callq	gs_make_scaling
	leaq	176(%rsp), %rbp
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_make_scaling
	leaq	248(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
	leaq	152(%rsp), %r14
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	callq	gs_setmatrix
	movq	120(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	addq	$132, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	gs_matrix_multiply
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_setmatrix
	movl	288(%rsp), %eax
	movl	292(%rsp), %ecx
	cltd
	idivl	%ebx
	movl	%eax, %r14d
	sarl	$8, %r14d
	movl	%ecx, %eax
	cltd
	idivl	44(%rsp)                # 4-byte Folded Reload
	movl	%eax, %r13d
	movq	48(%rsp), %rcx          # 8-byte Reload
	sarl	$8, %r13d
	cvtsi2sdl	%r14d, %xmm0
	movsd	%xmm0, 3200(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	movsd	%xmm0, 3208(%rsp)
	movq	56(%rsp), %rbx          # 8-byte Reload
.LBB22_56:                              # %if.end.282
	movq	24(%rbx), %rsi
	movl	%ecx, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	$0, 24(%rsp)
	leaq	248(%rsp), %rdx
	leaq	304(%rsp), %rcx
	movq	%rbx, %rdi
	movl	116(%rsp), %r8d         # 4-byte Reload
	movl	%r14d, %r9d
	callq	pdf_setup_masked_image_converter
	movl	%eax, %ebp
	movq	%r15, %rdi
	callq	gx_dc_pattern2_has_background
	movq	304(%rsp), %rcx
	movl	%eax, 2856(%rcx)
	movq	5848(%rbx), %rdi
	movl	$.L.str.10, %esi
	callq	stream_puts
	testl	%ebp, %ebp
	js	.LBB22_61
# BB#57:                                # %if.then.290
	movl	$4, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	128(%rsp), %rsi         # 8-byte Reload
	callq	gdev_vector_dopath
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_61
# BB#58:                                # %if.then.294
	movq	5848(%rbx), %rdi
	movl	$.L.str.8, %esi
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	js	.LBB22_60
# BB#59:                                # %select.mid
	movl	$.L.str.14, %esi
.LBB22_60:                              # %select.end
	callq	stream_puts
.LBB22_61:                              # %if.end.300
	leaq	3172(%rsp), %rdx
	xorl	%esi, %esi
	movl	$.L.str.15, %ecx
	movq	%rbx, %rdi
	callq	pdf_put_matrix
	movl	$0, 3164(%rsp)
	testl	%ebp, %ebp
	movq	120(%rsp), %r14         # 8-byte Reload
	js	.LBB22_64
# BB#62:                                # %if.end.309
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %r8d
	leaq	312(%rsp), %rdx
	xorl	%esi, %esi
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rcx
	callq	gs_shading_do_fill_rectangle
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_64
# BB#63:                                # %if.then.312
	leaq	312(%rsp), %rsi
	movq	%rbx, %rdi
	callq	pdf_dump_converted_image
	movl	%eax, %ebp
.LBB22_64:                              # %if.end.314
	movq	5848(%rbx), %rdi
	movl	$.L.str.16, %esi
	callq	stream_puts
	leaq	312(%rsp), %rdi
	callq	*1488(%rsp)
	movq	3104(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_66
# BB#65:                                # %if.then.i.185
	callq	*1176(%rdi)
	movq	3104(%rsp), %rsi
	movq	24(%rsi), %rdi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
.LBB22_66:                              # %pdf_remove_masked_image_converter.exit
	leaq	224(%rsp), %rsi
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	gs_setmatrix
	movq	%r14, %rdi
	callq	gs_state_free
	jmp	.LBB22_82
.Lfunc_end22:
	.size	gdev_pdf_fill_path, .Lfunc_end22-gdev_pdf_fill_path
	.cfi_endproc

	.align	16, 0x90
	.type	prepare_fill_with_clip,@function
prepare_fill_with_clip:                 # @prepare_fill_with_clip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp169:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp170:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp171:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp173:
	.cfi_def_cfa_offset 64
.Ltmp174:
	.cfi_offset %rbx, -48
.Ltmp175:
	.cfi_offset %r12, -40
.Ltmp176:
	.cfi_offset %r14, -32
.Ltmp177:
	.cfi_offset %r15, -24
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r12d
	movq	%rdx, %rbp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%r14, %r14
	je	.LBB23_9
# BB#1:                                 # %if.then
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_cpath_outer_box
	movl	(%rsp), %eax
	cmpl	8(%rsp), %eax
	jge	.LBB23_3
# BB#2:                                 # %lor.lhs.false
	movl	4(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB23_3
# BB#4:                                 # %if.else.i
	movups	(%rsp), %xmm0
	movups	%xmm0, (%rbp)
	movq	8784(%rbx), %rax
	xorl	%ebp, %ebp
	cmpq	296(%r14), %rax
	je	.LBB23_11
# BB#5:                                 # %if.end.6.i
	movl	832(%rbx), %ecx
	movl	836(%rbx), %r8d
	shll	$8, %ecx
	shll	$8, %r8d
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB23_7
# BB#6:                                 # %if.then.8.i
	movq	8784(%rbx), %rax
	cmpq	8776(%rbx), %rax
	je	.LBB23_11
.LBB23_7:                               # %if.end.14.i
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_is_same_clip_path
	testl	%eax, %eax
	jle	.LBB23_10
# BB#8:                                 # %if.then.17.i
	movq	296(%r14), %rax
	movq	%rax, 8784(%rbx)
	jmp	.LBB23_11
.LBB23_3:                               # %cleanup
	movl	$1, %eax
	jmp	.LBB23_20
.LBB23_9:                               # %if.then.i
	movq	8784(%rbx), %rax
	xorl	%ebp, %ebp
	cmpq	8776(%rbx), %rax
	je	.LBB23_11
.LBB23_10:                              # %if.end.21.i
	movl	$1, %ebp
.LBB23_11:                              # %pdf_must_put_clip_path.exit
	testl	%r12d, %r12d
	jne	.LBB23_14
# BB#12:                                # %lor.lhs.false.10
	testl	%ebp, %ebp
	jne	.LBB23_14
# BB#13:                                # %lor.lhs.false.10
	movl	26560(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB23_18
.LBB23_14:                              # %if.then.14
	testl	%ebp, %ebp
	je	.LBB23_16
# BB#15:                                # %if.then.16
	movq	%rbx, %rdi
	callq	pdf_unclip
	jmp	.LBB23_17
.LBB23_16:                              # %if.else
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
.LBB23_17:                              # %if.end.19
	testl	%eax, %eax
	js	.LBB23_20
.LBB23_18:                              # %if.end.23
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf_prepare_fill
	testl	%eax, %eax
	js	.LBB23_20
# BB#19:                                # %if.end.27
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_put_clip_path
.LBB23_20:                              # %cleanup.29
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	prepare_fill_with_clip, .Lfunc_end23-prepare_fill_with_clip
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI24_0:
	.long	1116733440              # float 72
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_1:
	.quad	4607182418800017408     # double 1
.LCPI24_2:
	.quad	4602678819172646912     # double 0.5
.LCPI24_3:
	.quad	4611686018427387904     # double 2
.LCPI24_5:
	.quad	4643211215818981376     # double 256
.LCPI24_6:
	.quad	-4517156605740974080    # double -4172800
.LCPI24_7:
	.quad	4706215431113801728     # double 4172800
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_4:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gdev_pdf_stroke_path
	.align	16, 0x90
	.type	gdev_pdf_stroke_path,@function
gdev_pdf_stroke_path:                   # @gdev_pdf_stroke_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp180:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp181:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp182:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp183:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp184:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp185:
	.cfi_def_cfa_offset 224
.Ltmp186:
	.cfi_offset %rbx, -56
.Ltmp187:
	.cfi_offset %r12, -48
.Ltmp188:
	.cfi_offset %r13, -40
.Ltmp189:
	.cfi_offset %r14, -32
.Ltmp190:
	.cfi_offset %r15, -24
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r15
	movq	%rcx, %r14
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	56(%rdx), %rax
	testq	%rax, %rax
	je	.LBB24_2
# BB#1:                                 # %land.lhs.true
	xorl	%r13d, %r13d
	cmpq	$0, 24(%rax)
	je	.LBB24_58
.LBB24_2:                               # %if.end
	movq	8784(%r12), %rax
	testq	%rbx, %rbx
	je	.LBB24_3
# BB#5:                                 # %if.else.i
	cmpq	296(%rbx), %rax
	je	.LBB24_10
# BB#6:                                 # %if.end.6.i
	movl	832(%r12), %ecx
	movl	836(%r12), %r8d
	shll	$8, %ecx
	shll	$8, %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB24_8
# BB#7:                                 # %if.then.8.i
	movq	8784(%r12), %rax
	cmpq	8776(%r12), %rax
	je	.LBB24_10
.LBB24_8:                               # %if.end.14.i
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_is_same_clip_path
	testl	%eax, %eax
	jle	.LBB24_4
# BB#9:                                 # %if.then.17.i
	movq	296(%rbx), %rax
	movq	%rax, 8784(%r12)
	jmp	.LBB24_10
.LBB24_3:                               # %if.then.i
	cmpq	8776(%r12), %rax
	jne	.LBB24_4
.LBB24_10:                              # %if.else
	testb	$16, 30689(%r12)
	je	.LBB24_17
# BB#11:                                # %land.lhs.true.6
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	56(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB24_17
# BB#12:                                # %land.lhs.true.10
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	64(%rcx), %rcx
	cmpq	32(%rax), %rcx
	jne	.LBB24_17
# BB#13:                                # %land.lhs.true.15
	cmpl	$0, 9524(%r12)
	jne	.LBB24_17
# BB#14:                                # %if.then.17
	movq	26592(%r12), %rax
	movq	16(%rax), %rdi
	movl	$1, %esi
	callq	pdf_modify_text_render_mode
	testl	%eax, %eax
	je	.LBB24_17
# BB#15:                                # %if.then.22
	leaq	8144(%r12), %rcx
	leaq	7504(%r12), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	pdf_reset_color
	testl	%eax, %eax
	je	.LBB24_16
.LBB24_17:                              # %if.else.37
	movl	$1, %esi
	movq	%r12, %rdi
	callq	pdf_open_page
	jmp	.LBB24_18
.LBB24_4:                               # %if.then.3
	movq	%r12, %rdi
	callq	pdf_unclip
.LBB24_18:                              # %if.end.40
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB24_58
# BB#19:                                # %if.end.44
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	pdf_prepare_stroke
	movl	%eax, %r13d
	cmpl	$-15, %r13d
	jne	.LBB24_22
# BB#20:                                # %if.then.48
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	%rbx, %r9
.LBB24_21:                              # %cleanup.354
	callq	gx_default_stroke_path
	movl	%eax, %r13d
	jmp	.LBB24_58
.LBB24_22:                              # %if.end.50
	testl	%r13d, %r13d
	js	.LBB24_58
# BB#23:                                # %if.end.54
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	pdf_put_clip_path
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB24_58
# BB#24:                                # %if.end.59
	leaq	160(%rsp), %rdx
	leaq	136(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	gdev_vector_stroke_scaling
	movsd	.LCPI24_1(%rip), %xmm4  # xmm4 = mem[0],zero
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB24_25
# BB#26:                                # %land.lhs.true.62
	movss	132(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm0
	jne	.LBB24_29
	jp	.LBB24_29
# BB#27:                                # %land.lhs.true.67
	movss	136(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB24_29
	jp	.LBB24_29
# BB#28:                                # %land.lhs.true.67.if.then.78_crit_edge
	movsd	%xmm4, 48(%rsp)         # 8-byte Spill
	movss	140(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	144(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB24_32
.LBB24_25:
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movsd	%xmm4, 48(%rsp)         # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	jmp	.LBB24_35
.LBB24_29:                              # %lor.lhs.false
	movss	140(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jne	.LBB24_36
	jp	.LBB24_36
# BB#30:                                # %land.lhs.true.74
	movss	144(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB24_36
	jp	.LBB24_36
# BB#31:                                # %land.lhs.true.74.if.then.78_crit_edge
	movsd	%xmm4, 48(%rsp)         # 8-byte Spill
	movss	136(%rbp), %xmm3        # xmm3 = mem[0],zero,zero,zero
.LBB24_32:                              # %if.then.78
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	addss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movsd	.LCPI24_3(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB24_34
# BB#33:                                # %call.sqrt
	movsd	.LCPI24_3(%rip), %xmm0  # xmm0 = mem[0],zero
	callq	sqrt
.LBB24_34:                              # %if.then.78.split
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rsp)
.LBB24_35:                              # %if.end.132
	movl	$0, (%rsp)              # 4-byte Folded Spill
	movl	$0, 4(%rsp)             # 4-byte Folded Spill
	jmp	.LBB24_41
.LBB24_36:                              # %if.then.95
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movss	136(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	140(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm4
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	movsd	%xmm3, 48(%rsp)         # 8-byte Spill
	movss	144(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movss	148(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movapd	%xmm4, %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm2
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	addsd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB24_38
# BB#37:                                # %call.sqrt171
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB24_38:                              # %if.then.95.split
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB24_40
# BB#39:                                # %call.sqrt172
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB24_40:                              # %if.then.95.split.split
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movsd	48(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	subsd	%xmm0, %xmm4
	mulsd	.LCPI24_2(%rip), %xmm4
	movsd	.LCPI24_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	divsd	%xmm4, %xmm1
	movapd	%xmm0, %xmm2
	cmpltsd	%xmm4, %xmm2
	movapd	%xmm2, %xmm3
	andnpd	%xmm1, %xmm3
	andpd	%xmm0, %xmm2
	orpd	%xmm3, %xmm2
	xorpd	%xmm1, %xmm1
	cmpeqsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm1
	andnpd	%xmm2, %xmm1
	andpd	%xmm0, %xmm4
	orpd	%xmm1, %xmm4
	movsd	%xmm4, 48(%rsp)         # 8-byte Spill
	movb	$1, %al
	movl	%eax, (%rsp)            # 4-byte Spill
.LBB24_41:                              # %if.end.132
	leaq	120(%rsp), %rsi
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_bbox
	movl	120(%rsp), %ebx
	movl	124(%rsp), %r14d
	movl	128(%rsp), %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	132(%rsp), %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movss	24(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	132(%rbp), %r15
	leaq	88(%rsp), %rsi
	xorpd	%xmm1, %xmm1
	movq	%r15, %rdi
	callq	gs_distance_transform
	movss	24(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	leaq	72(%rsp), %rsi
	xorps	%xmm0, %xmm0
	movq	%r15, %rdi
	callq	gs_distance_transform
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	96(%rsp), %xmm2         # xmm2 = mem[0],zero
	movapd	.LCPI24_4(%rip), %xmm0  # xmm0 = [9223372036854775808,9223372036854775808]
	movapd	%xmm1, %xmm3
	xorpd	%xmm0, %xmm3
	movapd	%xmm1, %xmm4
	xorps	%xmm5, %xmm5
	cmpltsd	%xmm5, %xmm4
	andpd	%xmm4, %xmm3
	andnpd	%xmm1, %xmm4
	orpd	%xmm3, %xmm4
	movsd	.LCPI24_5(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm4
	cvttsd2si	%xmm4, %eax
	movapd	%xmm2, %xmm3
	xorpd	%xmm0, %xmm3
	movapd	%xmm2, %xmm4
	cmpltsd	%xmm5, %xmm4
	xorps	%xmm6, %xmm6
	andpd	%xmm4, %xmm3
	andnpd	%xmm2, %xmm4
	orpd	%xmm3, %xmm4
	mulsd	%xmm1, %xmm4
	cvttsd2si	%xmm4, %ecx
	movsd	72(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	80(%rsp), %xmm3         # xmm3 = mem[0],zero
	movapd	%xmm2, %xmm4
	xorpd	%xmm0, %xmm4
	movapd	%xmm2, %xmm5
	cmpltsd	%xmm6, %xmm5
	andpd	%xmm5, %xmm4
	andnpd	%xmm2, %xmm5
	orpd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	cvttsd2si	%xmm5, %edx
	xorpd	%xmm3, %xmm0
	movapd	%xmm3, %xmm2
	cmpltsd	%xmm6, %xmm2
	andpd	%xmm2, %xmm0
	andnpd	%xmm3, %xmm2
	orpd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %esi
	cmpl	%edx, %eax
	cmovgel	%eax, %edx
	leal	512(%rdx), %eax
	cmpl	%esi, %ecx
	cmovgel	%ecx, %esi
	leal	512(%rsi), %ecx
	movl	%ebx, %ebp
	subl	%eax, %ebp
	subl	%ecx, %r14d
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	512(%rdx,%rax), %ebx
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	512(%rsi,%rax), %r15d
	leaq	104(%rsp), %rsi
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	gx_cpath_outer_box
	movl	104(%rsp), %eax
	movl	108(%rsp), %ecx
	movl	%ebp, %edx
	cmpl	%edx, %eax
	cmovgel	%eax, %edx
	movl	112(%rsp), %eax
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	cmpl	%r14d, %ecx
	cmovgel	%ecx, %r14d
	movl	116(%rsp), %eax
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	cmpl	%edx, %ebx
	jl	.LBB24_58
# BB#42:                                # %if.end.132
	cmpl	%r14d, %r15d
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	movsd	48(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movq	56(%rsp), %r14          # 8-byte Reload
	jl	.LBB24_58
# BB#43:                                # %cleanup.cont.303
	cvtsi2sdl	120(%rsp), %xmm0
	movsd	8800(%r12), %xmm2       # xmm2 = mem[0],zero
	movsd	8808(%r12), %xmm3       # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm0
	cvtsi2sdl	124(%rsp), %xmm1
	divsd	%xmm3, %xmm1
	minsd	%xmm1, %xmm0
	mulsd	%xmm4, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	128(%rsp), %xmm1
	divsd	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	132(%rsp), %xmm2
	divsd	%xmm3, %xmm2
	maxsd	%xmm2, %xmm1
	mulsd	%xmm4, %xmm1
	movsd	.LCPI24_6(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jae	.LBB24_45
# BB#44:                                # %cleanup.cont.303
	ucomisd	.LCPI24_7(%rip), %xmm1
	jbe	.LBB24_48
.LBB24_45:                              # %if.then.306
	divsd	.LCPI24_6(%rip), %xmm0
	divsd	.LCPI24_7(%rip), %xmm1
	maxsd	%xmm1, %xmm0
	movsd	160(%rsp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rsp)
	movl	(%rsp), %eax            # 4-byte Reload
	leaq	136(%rsp), %rdi
	movapd	%xmm0, %xmm1
	testb	%al, %al
	je	.LBB24_47
# BB#46:                                # %if.then.309
	movq	%rdi, %rsi
	callq	gs_matrix_scale
	jmp	.LBB24_48
.LBB24_47:                              # %if.else.311
	callq	gs_make_scaling
	movl	$1, 4(%rsp)             # 4-byte Folded Spill
.LBB24_48:                              # %if.end.314
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	gdev_vector_prepare_stroke
	testl	%eax, %eax
	js	.LBB24_49
# BB#50:                                # %if.end.320
	cmpl	$0, 9544(%r12)
	movl	4(%rsp), %ebp           # 4-byte Reload
	jne	.LBB24_52
# BB#51:                                # %if.then.322
	leaq	7512(%r12), %rdi
	leaq	8144(%r12), %rsi
	movl	$632, %edx              # imm = 0x278
	callq	memcpy
.LBB24_52:                              # %if.end.324
	testl	%ebp, %ebp
	je	.LBB24_54
# BB#53:                                # %if.then.326
	leaq	136(%rsp), %rdx
	movl	$.L.str.18, %esi
	movl	$.L.str.19, %ecx
	movq	%r12, %rdi
	callq	pdf_put_matrix
.LBB24_54:                              # %if.end.327
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	leaq	136(%rsp), %rax
	cmovneq	%rax, %rcx
	movl	$18, %edx
	movq	%r12, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	gdev_vector_dopath
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB24_58
# BB#55:                                # %if.end.337
	movq	%r15, %r13
	movq	5848(%r12), %r15
	movl	$.L.str.23, %eax
	movl	$.L.str.24, %esi
	cmovneq	%rax, %rsi
	movq	%r15, %rdi
	callq	stream_puts
	testl	%ebp, %ebp
	movl	$.L.str.25, %eax
	movl	$.L.str.26, %esi
	cmovneq	%rax, %rsi
	movq	%r15, %rdi
	movq	%r13, %rbp
	callq	stream_puts
	cmpl	$0, 9528(%r12)
	je	.LBB24_57
# BB#56:                                # %if.then.346
	incl	9776(%r12)
	movq	%r12, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rbp, %r8
	movq	%r14, %r9
	callq	gx_default_stroke_path
	movl	%eax, %r13d
	decl	9776(%r12)
	testl	%r13d, %r13d
	js	.LBB24_58
.LBB24_57:                              # %if.end.353
	xorl	%r13d, %r13d
	jmp	.LBB24_58
.LBB24_49:                              # %if.then.318
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	jmp	.LBB24_21
.LBB24_16:                              # %cleanup
	movq	5848(%r12), %rdi
	movss	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	divss	884(%r12), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	132(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rsp)
	movss	24(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movl	$.L.str.22, %esi
	callq	pprintg1
	movl	$1, %esi
	movq	%r12, %rdi
	callq	pdf_open_page
	movl	%eax, %r13d
.LBB24_58:                              # %cleanup.354
	movl	%r13d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gdev_pdf_stroke_path, .Lfunc_end24-gdev_pdf_stroke_path
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4608083138725491507     # double 1.2
.LCPI25_1:
	.quad	-4517156605740974080    # double -4172800
.LCPI25_2:
	.quad	4607182418800017408     # double 1
.LCPI25_3:
	.quad	4706215431113801728     # double 4172800
.LCPI25_4:
	.quad	4571153621781053440     # double 0.00390625
.LCPI25_5:
	.quad	4634766966517661696     # double 72
	.text
	.globl	gdev_pdf_fill_rectangle_hl_color
	.align	16, 0x90
	.type	gdev_pdf_fill_rectangle_hl_color,@function
gdev_pdf_fill_rectangle_hl_color:       # @gdev_pdf_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp193:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp194:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp195:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp196:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp198:
	.cfi_def_cfa_offset 304
.Ltmp199:
	.cfi_offset %rbx, -56
.Ltmp200:
	.cfi_offset %r12, -48
.Ltmp201:
	.cfi_offset %r13, -40
.Ltmp202:
	.cfi_offset %r14, -32
.Ltmp203:
	.cfi_offset %r15, -24
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movdqu	(%rbx), %xmm1
	movdqa	%xmm1, 16(%rsp)         # 16-byte Spill
	movdqa	%xmm1, 224(%rsp)
	xorl	%ebp, %ebp
	movsd	.LCPI25_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r12), %xmm0
	movd	%xmm1, %r15d
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r14d
	movl	%r14d, %ecx
	movl	%r15d, %edx
	movl	$0, %eax
	jb	.LBB25_2
# BB#1:                                 # %land.rhs
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	setne	%al
	movl	(%rbx), %edx
	movl	8(%rbx), %ecx
.LBB25_2:                               # %land.end
	cmpl	%ecx, %edx
	je	.LBB25_34
# BB#3:                                 # %if.end
	testb	%al, %al
	je	.LBB25_4
# BB#31:                                # %if.else.227
	movl	$1, 184(%rsp)
	movl	$0, 192(%rsp)
	movl	$0, 188(%rsp)
	movl	296(%r13), %eax
	movl	%eax, 196(%rsp)
	movq	8(%r13), %rdx
	leaq	56(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movl	(%rbx), %esi
	movl	4(%rbx), %edx
	movl	8(%rbx), %ecx
	movl	12(%rbx), %r8d
	movq	%rbp, %rdi
	callq	gx_path_add_rectangle
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB25_34
# BB#32:                                # %if.end.245
	leaq	56(%rsp), %rdx
	leaq	184(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	gdev_pdf_fill_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB25_34
# BB#33:                                # %if.end.250
	leaq	56(%rsp), %rdi
	movl	$.L.str.28, %esi
	callq	gx_path_free
	jmp	.LBB25_34
.LBB25_4:                               # %if.then.4
	leaq	224(%rsp), %rdx
	movl	$1, %ecx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	40(%rsp), %r8           # 8-byte Reload
	callq	prepare_fill_with_clip
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB25_34
# BB#5:                                 # %if.end.8
	cmpl	$1, %ebp
	movl	$0, %ebp
	je	.LBB25_34
# BB#6:                                 # %if.end.11
	movq	%r12, %rbp
	movq	1736(%rbp), %rax
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	*64(%rax)
	xorl	%r12d, %r12d
	testl	%eax, %eax
	cmovneq	%r13, %r12
	cmpl	$0, 9544(%rbp)
	movq	%rbp, %rbx
	jne	.LBB25_8
# BB#7:                                 # %if.then.i
	movq	%rbx, %rdi
	leaq	8144(%rdi), %rcx
	leaq	7504(%rdi), %r8
	movl	$psdf_set_stroke_color_commands, %r9d
	movq	%r12, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	pdf_set_drawing_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB25_34
.LBB25_8:                               # %pdf_setfillcolor.exit
	movq	%rbx, %rdi
	leaq	7512(%rdi), %rcx
	leaq	7500(%rdi), %r8
	movl	$psdf_set_fill_color_commands, %r9d
	movq	%rdi, %r13
	movq	%r12, %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	pdf_set_drawing_color
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB25_34
# BB#9:                                 # %if.end.15
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movdqa	16(%rsp), %xmm1         # 16-byte Reload
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ecx
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, %eax
	je	.LBB25_11
# BB#10:                                # %do.body
	movl	224(%rsp), %edx
	movl	228(%rsp), %esi
	cmpl	%r15d, %edx
	cmovgel	%edx, %r15d
	movl	232(%rsp), %edx
	cmpl	%r14d, %edx
	cmovlel	%edx, %r14d
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	movl	236(%rsp), %edx
	cmpl	%eax, %edx
	cmovlel	%edx, %eax
.LBB25_11:                              # %if.end.61
	xorl	%ebp, %ebp
	movl	%eax, %ebx
	subl	%ecx, %ebx
	jl	.LBB25_34
# BB#12:                                # %if.end.61
	movl	%r14d, %r12d
	subl	%r15d, %r12d
	jl	.LBB25_34
# BB#13:                                # %if.end.73
	cvtsi2sdl	%r15d, %xmm6
	movq	%r13, %r15
	movsd	8800(%r15), %xmm0       # xmm0 = mem[0],zero
	movsd	8808(%r15), %xmm1       # xmm1 = mem[0],zero
	movapd	%xmm6, %xmm7
	divsd	%xmm0, %xmm7
	cvtsi2sdl	%ecx, %xmm5
	movapd	%xmm5, %xmm2
	divsd	%xmm1, %xmm2
	minsd	%xmm2, %xmm7
	cvtsi2sdl	%r14d, %xmm4
	movapd	%xmm4, %xmm2
	divsd	%xmm0, %xmm2
	cvtsi2sdl	%eax, %xmm3
	movsd	%xmm3, 16(%rsp)         # 8-byte Spill
	divsd	%xmm1, %xmm3
	maxsd	%xmm3, %xmm2
	movsd	.LCPI25_1(%rip), %xmm3  # xmm3 = mem[0],zero
	ucomisd	%xmm7, %xmm3
	jae	.LBB25_16
# BB#14:                                # %if.end.73
	ucomisd	.LCPI25_3(%rip), %xmm2
	ja	.LBB25_16
# BB#15:
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movsd	.LCPI25_2(%rip), %xmm7  # xmm7 = mem[0],zero
	jmp	.LBB25_17
.LBB25_16:                              # %if.then.76
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	divsd	.LCPI25_1(%rip), %xmm7
	divsd	.LCPI25_3(%rip), %xmm2
	maxsd	%xmm2, %xmm7
	movsd	%xmm7, (%rsp)           # 8-byte Spill
	mulsd	%xmm7, %xmm0
	mulsd	%xmm7, %xmm1
	leaq	200(%rsp), %rbp
	movq	%rbp, %rdi
	movsd	%xmm5, 48(%rsp)         # 8-byte Spill
	movsd	%xmm6, 40(%rsp)         # 8-byte Spill
	callq	gs_make_scaling
	movl	$.L.str.18, %esi
	movl	$.L.str.19, %ecx
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	pdf_put_matrix
	movsd	(%rsp), %xmm7           # 8-byte Reload
                                        # xmm7 = mem[0],zero
	movsd	40(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	48(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movb	$1, %bpl
.LBB25_17:                              # %if.end.83
	movq	5848(%r15), %rdi
	movsd	.LCPI25_4(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm6
	movsd	%xmm6, 40(%rsp)         # 8-byte Spill
	movapd	%xmm6, %xmm0
	divsd	%xmm7, %xmm0
	mulsd	%xmm4, %xmm5
	movsd	%xmm5, 48(%rsp)         # 8-byte Spill
	movapd	%xmm5, %xmm1
	divsd	%xmm7, %xmm1
	cvtsi2sdl	%r12d, %xmm2
	mulsd	%xmm4, %xmm2
	divsd	%xmm7, %xmm2
	cvtsi2sdl	%ebx, %xmm3
	mulsd	%xmm4, %xmm3
	divsd	%xmm7, %xmm3
	movl	$.L.str.27, %esi
	callq	pprintg4
	testb	%bpl, %bpl
	je	.LBB25_19
# BB#18:                                # %if.then.109
	movq	5848(%r15), %rdi
	movl	$.L.str.11, %esi
	callq	stream_puts
.LBB25_19:                              # %if.end.112
	xorl	%ebp, %ebp
	cmpl	$0, 9528(%r15)
	je	.LBB25_34
# BB#20:                                # %if.then.114
	cmpl	$0, 30524(%r15)
	je	.LBB25_21
# BB#22:                                # %select.mid
	leaq	30528(%r15), %rax
	jmp	.LBB25_23
.LBB25_21:
	leaq	9784(%r15), %rax
.LBB25_23:                              # %select.end
	movsd	8(%rsp), %xmm4          # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	48(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI25_5(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB25_25
# BB#24:                                # %if.then.129
	movsd	%xmm1, (%rax)
	movapd	%xmm1, %xmm0
.LBB25_25:                              # %if.end.141
	movss	888(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	.LCPI25_5(%rip), %xmm1
	divsd	%xmm1, %xmm3
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	ucomisd	%xmm3, %xmm2
	jbe	.LBB25_27
# BB#26:                                # %if.then.155
	movsd	%xmm3, 8(%rax)
	movapd	%xmm3, %xmm2
.LBB25_27:                              # %if.end.167
	mulsd	.LCPI25_4(%rip), %xmm4
	movss	884(%r15), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	divsd	.LCPI25_5(%rip), %xmm3
	divsd	%xmm3, %xmm4
	ucomisd	16(%rax), %xmm4
	jbe	.LBB25_29
# BB#28:                                # %if.then.181
	subsd	%xmm0, %xmm4
	movsd	%xmm4, 16(%rax)
.LBB25_29:                              # %if.end.196
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI25_4(%rip), %xmm0
	divsd	%xmm1, %xmm0
	ucomisd	24(%rax), %xmm0
	jbe	.LBB25_34
# BB#30:                                # %if.then.210
	subsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rax)
.LBB25_34:                              # %cleanup.252
	movl	%ebp, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gdev_pdf_fill_rectangle_hl_color, .Lfunc_end25-gdev_pdf_fill_rectangle_hl_color
	.cfi_endproc

	.globl	gdev_pdf_fillpage
	.align	16, 0x90
	.type	gdev_pdf_fillpage,@function
gdev_pdf_fillpage:                      # @gdev_pdf_fillpage
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 9536(%rdi)
	setne	%al
	movq	8(%rdx), %rcx
	cmpq	8840(%rdi), %rcx
	jne	.LBB26_4
# BB#1:                                 # %land.lhs.true
	cmpq	$0, 26552(%rdi)
	jne	.LBB26_4
# BB#2:                                 # %land.lhs.true.2
	movzbl	%al, %eax
	cmpl	%eax, 30392(%rdi)
	jle	.LBB26_3
.LBB26_4:                               # %if.else
	jmp	gx_default_fillpage     # TAILCALL
.LBB26_3:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end26:
	.size	gdev_pdf_fillpage, .Lfunc_end26-gdev_pdf_fillpage
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d %d %d re f\n"
	.size	.L.str, 18

	.type	pdf_vector_procs,@object # @pdf_vector_procs
	.section	.rodata,"a",@progbits
	.globl	pdf_vector_procs
	.align	8
pdf_vector_procs:
	.quad	0
	.quad	pdf_setlinewidth
	.quad	psdf_setlinecap
	.quad	psdf_setlinejoin
	.quad	psdf_setmiterlimit
	.quad	psdf_setdash
	.quad	psdf_setflat
	.quad	psdf_setlogop
	.quad	pdf_can_handle_hl_color
	.quad	pdf_setfillcolor
	.quad	pdf_setstrokecolor
	.quad	gdev_vector_dopath
	.quad	pdf_dorect
	.quad	psdf_beginpath
	.quad	psdf_moveto
	.quad	psdf_lineto
	.quad	psdf_curveto
	.quad	psdf_closepath
	.quad	pdf_endpath
	.size	pdf_vector_procs, 152

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pdf clip path"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%g %g %g %g re"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" %s n\n"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"W"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"W*"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s n\n"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pdf_lcvd_t"
	.size	.L.str.7, 11

	.type	pdf_lcvd_t_reloc_ptrs,@object # @pdf_lcvd_t_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_lcvd_t_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	st_device_memory
	.quad	pdf_lcvd_t_enum_ptrs
	.size	pdf_lcvd_t_reloc_ptrs, 24

	.type	st_pdf_lcvd_t,@object   # @st_pdf_lcvd_t
	.globl	st_pdf_lcvd_t
	.align	8
st_pdf_lcvd_t:
	.long	2904                    # 0xb58
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_lcvd_t_reloc_ptrs
	.size	st_pdf_lcvd_t, 64

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"W n\n"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" cs /R%ld scn "
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"q\n"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Q\n"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pdf_setup_masked_image_converter"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pdf_remove_masked_image_converter"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"W* n\n"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" cm q\n"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Q Q\n"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%g i\n"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"q "
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"cm\n"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"f\n"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"f*\n"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%g w\n"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"s"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"S"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	" Q\n"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\n"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%g %g %g %g re f\n"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gdev_pdf_fill_rectangle_hl_color"
	.size	.L.str.28, 33

	.type	pdf_lcvd_t_enum_ptrs,@object # @pdf_lcvd_t_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
pdf_lcvd_t_enum_ptrs:
	.short	0                       # 0x0
	.short	2792                    # 0xae8
	.short	0                       # 0x0
	.short	2800                    # 0xaf0
	.size	pdf_lcvd_t_enum_ptrs, 8

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	" cm\n"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Q q\n"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"n\n"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%ld %ld m "
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%ld %ld l "
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%ld %ld l h\n"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"h\n"
	.size	.L.str.35, 3

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	.Lswitch.table, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
