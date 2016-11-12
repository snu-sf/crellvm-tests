	.text
	.file	"gsptype2.bc"
	.globl	gs_pattern2_init
	.align	16, 0x90
	.type	gs_pattern2_init,@function
gs_pattern2_init:                       # @gs_pattern2_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gs_pattern2_type, %esi
	jmp	gs_pattern_common_init  # TAILCALL
.Lfunc_end0:
	.size	gs_pattern2_init, .Lfunc_end0-gs_pattern2_init
	.cfi_endproc

	.globl	gs_pattern2_set_shfill
	.align	16, 0x90
	.type	gs_pattern2_set_shfill,@function
gs_pattern2_set_shfill:                 # @gs_pattern2_set_shfill
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	movl	$gs_pattern2_type, %edx
	movl	$-28, %eax
	cmpq	%rdx, 24(%rcx)
	jne	.LBB1_2
# BB#1:                                 # %if.end
	movl	$1, 96(%rcx)
	xorl	%eax, %eax
.LBB1_2:                                # %cleanup
	retq
.Lfunc_end1:
	.size	gs_pattern2_set_shfill, .Lfunc_end1-gs_pattern2_set_shfill
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern2_save_dc,@function
gx_dc_pattern2_save_dc:                 # @gx_dc_pattern2_save_dc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	368(%rdi), %rcx
	movq	%rax, (%rsi)
	movq	40(%rcx), %rax
	movq	%rax, 8(%rsi)
	movl	96(%rcx), %eax
	movl	%eax, 16(%rsi)
	retq
.Lfunc_end2:
	.size	gx_dc_pattern2_save_dc, .Lfunc_end2-gx_dc_pattern2_save_dc
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern2_get_dev_halftone,@function
gx_dc_pattern2_get_dev_halftone:        # @gx_dc_pattern2_get_dev_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	movq	368(%rdi), %rax
	movq	32(%rax), %rax
	movq	392(%rax), %rax
	retq
.Lfunc_end3:
	.size	gx_dc_pattern2_get_dev_halftone, .Lfunc_end3-gx_dc_pattern2_get_dev_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern2_load,@function
gx_dc_pattern2_load:                    # @gx_dc_pattern2_load
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gx_dc_pattern2_load, .Lfunc_end4-gx_dc_pattern2_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern2_fill_rectangle,@function
gx_dc_pattern2_fill_rectangle:          # @gx_dc_pattern2_fill_rectangle
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movq	%r9, %rbx
	movl	%r8d, %ebp
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %r14d
	movq	%rdi, %r13
	movl	$5, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	je	.LBB5_1
# BB#2:                                 # %if.then
	movq	1200(%rbx), %rax
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%r12d, %edx
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB5_1:                                # %return
	movq	368(%r13), %rax
	addl	%r14d, %r15d
	addl	%r12d, %ebp
	movd	%ebp, %xmm0
	movd	%r12d, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%r15d, %xmm0
	movd	%r14d, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pslld	$8, %xmm2
	movdqa	%xmm2, (%rsp)
	movq	32(%rax), %rcx
	movq	88(%rax), %rdi
	cmpl	$0, 96(%rax)
	sete	%al
	movzbl	%al, %r8d
	leaq	(%rsp), %rsi
	movq	%rbx, %rdx
	callq	gs_shading_do_fill_rectangle
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_dc_pattern2_fill_rectangle, .Lfunc_end5-gx_dc_pattern2_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pattern2_equal,@function
gx_dc_pattern2_equal:                   # @gx_dc_pattern2_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	je	.LBB6_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB6_2:                                # %land.rhs
	movq	368(%rdi), %rax
	cmpq	368(%rsi), %rax
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end6:
	.size	gx_dc_pattern2_equal, .Lfunc_end6-gx_dc_pattern2_equal
	.cfi_endproc

	.globl	gx_dc_is_pattern2_color
	.align	16, 0x90
	.type	gx_dc_is_pattern2_color,@function
gx_dc_is_pattern2_color:                # @gx_dc_is_pattern2_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gx_dc_pattern2, %eax
	cmpq	%rax, (%rdi)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end7:
	.size	gx_dc_is_pattern2_color, .Lfunc_end7-gx_dc_is_pattern2_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gx_dc_pattern2_shade_bbox_transform2fixed
	.align	16, 0x90
	.type	gx_dc_pattern2_shade_bbox_transform2fixed,@function
gx_dc_pattern2_shade_bbox_transform2fixed: # @gx_dc_pattern2_shade_bbox_transform2fixed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 48
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	addq	$132, %rsi
	leaq	(%rsp), %rdx
	callq	gs_bbox_transform
	testl	%eax, %eax
	js	.LBB8_2
# BB#1:                                 # %if.then
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, (%rbx)
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 4(%rbx)
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 8(%rbx)
	mulsd	24(%rsp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 12(%rbx)
.LBB8_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end8:
	.size	gx_dc_pattern2_shade_bbox_transform2fixed, .Lfunc_end8-gx_dc_pattern2_shade_bbox_transform2fixed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gx_dc_pattern2_get_bbox
	.align	16, 0x90
	.type	gx_dc_pattern2_get_bbox,@function
gx_dc_pattern2_get_bbox:                # @gx_dc_pattern2_get_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	368(%rdi), %rax
	movq	88(%rax), %rdi
	xorl	%ecx, %ecx
	cmpl	$0, 40(%rdi)
	je	.LBB9_4
# BB#1:                                 # %if.end
	addq	$48, %rdi
	movl	$132, %esi
	addq	32(%rax), %rsi
	leaq	(%rsp), %rdx
	callq	gs_bbox_transform
	testl	%eax, %eax
	js	.LBB9_3
# BB#2:                                 # %if.then.i
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, (%rbx)
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 4(%rbx)
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 8(%rbx)
	mulsd	24(%rsp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 12(%rbx)
.LBB9_3:                                # %gx_dc_pattern2_shade_bbox_transform2fixed.exit
	testl	%eax, %eax
	movl	$1, %ecx
	cmovsl	%eax, %ecx
.LBB9_4:                                # %cleanup
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gx_dc_pattern2_get_bbox, .Lfunc_end9-gx_dc_pattern2_get_bbox
	.cfi_endproc

	.globl	gx_dc_pattern2_color_has_bbox
	.align	16, 0x90
	.type	gx_dc_pattern2_color_has_bbox,@function
gx_dc_pattern2_color_has_bbox:          # @gx_dc_pattern2_color_has_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	movq	368(%rdi), %rax
	movq	88(%rax), %rax
	movl	40(%rax), %eax
	retq
.Lfunc_end10:
	.size	gx_dc_pattern2_color_has_bbox, .Lfunc_end10-gx_dc_pattern2_color_has_bbox
	.cfi_endproc

	.globl	gx_dc_pattern2_clip_with_bbox
	.align	16, 0x90
	.type	gx_dc_pattern2_clip_with_bbox,@function
gx_dc_pattern2_clip_with_bbox:          # @gx_dc_pattern2_clip_with_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 48
	subq	$128, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 176
.Ltmp25:
	.cfi_offset %rbx, -48
.Ltmp26:
	.cfi_offset %r12, -40
.Ltmp27:
	.cfi_offset %r13, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$gx_dc_pattern2, %eax
	cmpq	%rax, (%rbx)
	jne	.LBB11_7
# BB#1:                                 # %land.lhs.true
	movq	368(%rbx), %rax
	movq	88(%rax), %rax
	cmpl	$0, 40(%rax)
	je	.LBB11_7
# BB#2:                                 # %land.lhs.true.3
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	callq	*1664(%r12)
	testl	%eax, %eax
	jne	.LBB11_7
# BB#3:                                 # %if.then
	movq	368(%rbx), %r13
	movq	(%r15), %rax
	addq	$24, %r12
	testq	%rax, %rax
	leaq	40(%rax), %rax
	cmoveq	%r12, %rax
	movq	(%rax), %r12
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	gx_path_init_local_shared
	movq	368(%rbx), %rax
	movq	88(%rax), %rsi
	cmpl	$0, 40(%rsi)
	je	.LBB11_6
# BB#4:                                 # %gx_dc_shading_path_add_box.exit
	movq	32(%rax), %rdx
	addq	$48, %rsi
	addq	$132, %rdx
	leaq	(%rsp), %rdi
	callq	gs_shading_path_add_box
	testl	%eax, %eax
	js	.LBB11_6
# BB#5:                                 # %if.then.12
	movq	(%r15), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	gx_cpath_init_local_shared
	movq	32(%r13), %rcx
	leaq	(%rsp), %rsi
	movl	$-1, %edx
	movq	%r14, %rdi
	callq	gx_cpath_intersect
	movq	%r14, (%r15)
.LBB11_6:                               # %if.end.15
	leaq	(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_path_free
.LBB11_7:                               # %if.end.16
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	gx_dc_pattern2_clip_with_bbox, .Lfunc_end11-gx_dc_pattern2_clip_with_bbox
	.cfi_endproc

	.globl	gx_dc_pattern2_clip_with_bbox_simple
	.align	16, 0x90
	.type	gx_dc_pattern2_clip_with_bbox_simple,@function
gx_dc_pattern2_clip_with_bbox_simple:   # @gx_dc_pattern2_clip_with_bbox_simple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 176
.Ltmp35:
	.cfi_offset %rbx, -40
.Ltmp36:
	.cfi_offset %r12, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$gx_dc_pattern2, %ecx
	xorl	%r15d, %r15d
	cmpq	%rcx, (%rbx)
	jne	.LBB12_8
# BB#1:                                 # %land.lhs.true
	movq	368(%rbx), %rcx
	movq	88(%rcx), %rcx
	cmpl	$0, 40(%rcx)
	je	.LBB12_8
# BB#2:                                 # %land.lhs.true.3
	xorl	%r15d, %r15d
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	*1664(%rax)
	testl	%eax, %eax
	jne	.LBB12_8
# BB#3:                                 # %if.then
	movq	368(%rbx), %r12
	movq	40(%r14), %rdx
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_path_init_local_shared
	movq	368(%rbx), %rax
	movq	88(%rax), %rsi
	movl	$-28, %r15d
	cmpl	$0, 40(%rsi)
	je	.LBB12_7
# BB#4:                                 # %gx_dc_shading_path_add_box.exit
	movq	32(%rax), %rdx
	addq	$48, %rsi
	addq	$132, %rdx
	leaq	8(%rsp), %rdi
	callq	gs_shading_path_add_box
	cmpl	$-13, %eax
	movl	$0, %r15d
	je	.LBB12_7
# BB#5:                                 # %if.else
	testl	%eax, %eax
	movl	%eax, %r15d
	js	.LBB12_7
# BB#6:                                 # %if.then.10
	movq	32(%r12), %rcx
	leaq	8(%rsp), %rsi
	movl	$-1, %edx
	movq	%r14, %rdi
	callq	gx_cpath_intersect
	movl	%eax, %r15d
.LBB12_7:                               # %if.end.12
	leaq	8(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_path_free
.LBB12_8:                               # %if.end.13
	movl	%r15d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	gx_dc_pattern2_clip_with_bbox_simple, .Lfunc_end12-gx_dc_pattern2_clip_with_bbox_simple
	.cfi_endproc

	.globl	gx_dc_pattern2_is_rectangular_cell
	.align	16, 0x90
	.type	gx_dc_pattern2_is_rectangular_cell,@function
gx_dc_pattern2_is_rectangular_cell:     # @gx_dc_pattern2_is_rectangular_cell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 64
.Ltmp44:
	.cfi_offset %rbx, -40
.Ltmp45:
	.cfi_offset %r12, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$gx_dc_pattern2, %ecx
	xorl	%r15d, %r15d
	cmpq	%rcx, (%rbx)
	jne	.LBB13_13
# BB#1:                                 # %land.lhs.true
	movq	368(%rbx), %rcx
	movq	88(%rcx), %rcx
	cmpl	$0, 40(%rcx)
	je	.LBB13_13
# BB#2:                                 # %land.lhs.true.3
	xorl	%r15d, %r15d
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	*1664(%rax)
	testl	%eax, %eax
	jne	.LBB13_13
# BB#3:                                 # %if.then
	movq	368(%rbx), %rbx
	movq	32(%rbx), %rdi
	movss	136(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB13_13
	jp	.LBB13_13
# BB#4:                                 # %land.lhs.true.7
	movss	140(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB13_13
	jp	.LBB13_13
# BB#5:                                 # %if.then.13
	movq	88(%rbx), %r12
	cmpl	$0, 40(%r12)
	je	.LBB13_13
# BB#6:                                 # %if.then.15
	addq	$132, %rdi
	movsd	48(%r12), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%r12), %xmm1         # xmm1 = mem[0],zero
	leaq	16(%rsp), %rsi
	callq	gs_point_transform2fixed
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB13_13
# BB#7:                                 # %if.end
	movl	$132, %edi
	addq	32(%rbx), %rdi
	movsd	64(%r12), %xmm0         # xmm0 = mem[0],zero
	movsd	72(%r12), %xmm1         # xmm1 = mem[0],zero
	leaq	8(%rsp), %rsi
	callq	gs_point_transform2fixed
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB13_13
# BB#8:                                 # %if.end.41
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	%rdx, %rax
	shrq	$32, %rax
	movq	%rsi, %rcx
	shrq	$32, %rcx
	cmpl	%esi, %edx
	jle	.LBB13_10
# BB#9:                                 # %if.then.46
	movl	%edx, 8(%rsp)
	movl	%esi, 16(%rsp)
.LBB13_10:                              # %if.end.55
	cmpl	%ecx, %eax
	jle	.LBB13_12
# BB#11:                                # %if.then.60
	movl	%eax, 12(%rsp)
	movl	%ecx, 20(%rsp)
.LBB13_12:                              # %if.end.70
	movq	16(%rsp), %rax
	movq	%rax, (%r14)
	movq	8(%rsp), %rax
	movq	%rax, 8(%r14)
	movl	$1, %r15d
.LBB13_13:                              # %return
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	gx_dc_pattern2_is_rectangular_cell, .Lfunc_end13-gx_dc_pattern2_is_rectangular_cell
	.cfi_endproc

	.globl	gx_dc_pattern2_get_color_space
	.align	16, 0x90
	.type	gx_dc_pattern2_get_color_space,@function
gx_dc_pattern2_get_color_space:         # @gx_dc_pattern2_get_color_space
	.cfi_startproc
# BB#0:                                 # %entry
	movq	368(%rdi), %rax
	movq	88(%rax), %rax
	movq	16(%rax), %rax
	retq
.Lfunc_end14:
	.size	gx_dc_pattern2_get_color_space, .Lfunc_end14-gx_dc_pattern2_get_color_space
	.cfi_endproc

	.globl	gx_dc_pattern2_can_overlap
	.align	16, 0x90
	.type	gx_dc_pattern2_can_overlap,@function
gx_dc_pattern2_can_overlap:             # @gx_dc_pattern2_can_overlap
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gx_dc_pattern2, %eax
	cmpq	%rax, (%rdi)
	jne	.LBB15_3
# BB#1:                                 # %if.end
	movq	368(%rdi), %rax
	movq	88(%rax), %rax
	movl	(%rax), %eax
	addl	$-3, %eax
	cmpl	$4, %eax
	ja	.LBB15_3
# BB#2:                                 # %switch.lookup
	cltq
	movl	.Lswitch.table(,%rax,4), %eax
	retq
.LBB15_3:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end15:
	.size	gx_dc_pattern2_can_overlap, .Lfunc_end15-gx_dc_pattern2_can_overlap
	.cfi_endproc

	.globl	gx_dc_pattern2_has_background
	.align	16, 0x90
	.type	gx_dc_pattern2_has_background,@function
gx_dc_pattern2_has_background:          # @gx_dc_pattern2_has_background
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gx_dc_pattern2, %ecx
	xorl	%eax, %eax
	cmpq	%rcx, (%rdi)
	jne	.LBB16_5
# BB#1:                                 # %if.end
	movq	368(%rdi), %rax
	cmpl	$0, 96(%rax)
	je	.LBB16_3
# BB#2:
	xorl	%eax, %eax
	jmp	.LBB16_4
.LBB16_3:                               # %land.rhs
	movq	88(%rax), %rax
	cmpq	$0, 32(%rax)
	setne	%al
.LBB16_4:                               # %land.end
	movzbl	%al, %eax
.LBB16_5:                               # %cleanup
	retq
.Lfunc_end16:
	.size	gx_dc_pattern2_has_background, .Lfunc_end16-gx_dc_pattern2_has_background
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pattern2_uses_base_space,@function
gs_pattern2_uses_base_space:            # @gs_pattern2_uses_base_space
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	gs_pattern2_uses_base_space, .Lfunc_end17-gs_pattern2_uses_base_space
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pattern2_make_pattern,@function
gs_pattern2_make_pattern:               # @gs_pattern2_make_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp50:
	.cfi_def_cfa_offset 32
.Ltmp51:
	.cfi_offset %rbx, -24
.Ltmp52:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$st_pattern2_instance, %r9d
	callq	gs_make_pattern_common
	testl	%eax, %eax
	js	.LBB18_2
# BB#1:                                 # %if.end
	movq	(%r14), %rax
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	%xmm2, 80(%rax)
	movups	%xmm1, 64(%rax)
	movups	%xmm0, 48(%rax)
	movl	$0, 96(%rax)
	xorl	%eax, %eax
.LBB18_2:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	gs_pattern2_make_pattern, .Lfunc_end18-gs_pattern2_make_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pattern2_get_pattern,@function
gs_pattern2_get_pattern:                # @gs_pattern2_get_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	48(%rdi), %rax
	retq
.Lfunc_end19:
	.size	gs_pattern2_get_pattern, .Lfunc_end19-gs_pattern2_get_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pattern2_remap_color,@function
gs_pattern2_remap_color:                # @gs_pattern2_remap_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movq	%rdi, %rax
	movq	$gx_dc_pattern2, (%rbx)
	leaq	368(%rbx), %rdi
	movl	$264, %edx              # imm = 0x108
	movq	%rax, %rsi
	callq	memcpy
	movl	$1, 360(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end20:
	.size	gs_pattern2_remap_color, .Lfunc_end20-gs_pattern2_remap_color
	.cfi_endproc

	.align	16, 0x90
	.type	gs_pattern2_set_color,@function
gs_pattern2_set_color:                  # @gs_pattern2_set_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 24
.Ltmp57:
	.cfi_offset %rbx, -24
.Ltmp58:
	.cfi_offset %r14, -16
	movq	(%rdi), %rax
	movq	32(%rax), %r10
	movq	88(%rax), %rax
	movq	16(%rax), %rdi
	movl	276(%rsi), %eax
	movl	%eax, 276(%r10)
	movl	272(%rsi), %eax
	movl	%eax, 272(%r10)
	movq	1872(%rsi), %rax
	movl	100(%rax), %ebx
	testl	%ebx, %ebx
	jle	.LBB21_17
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934584, %r11       # imm = 0x1FFFFFFF8
	leal	-1(%rbx), %edx
	leaq	1(%rdx), %r8
	xorl	%ecx, %ecx
	movq	%r8, %r9
	andq	%r11, %r9
	je	.LBB21_10
# BB#2:                                 # %vector.memcheck
	leaq	1048(%rsi), %r14
	leaq	1048(%r10,%rdx,4), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %r14
	ja	.LBB21_4
# BB#3:                                 # %vector.memcheck
	leaq	1048(%rsi,%rdx,4), %r14
	leaq	1048(%r10), %rax
	cmpq	%r14, %rax
	jbe	.LBB21_10
.LBB21_4:                               # %vector.body.preheader
	leaq	1(%rdx), %rcx
	andq	%r11, %rcx
	addq	$-8, %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	xorl	%r14d, %r14d
	btq	$3, %rcx
	jb	.LBB21_6
# BB#5:                                 # %vector.body.prol
	movups	1048(%r10), %xmm0
	movups	1064(%r10), %xmm1
	movups	%xmm0, 1048(%rsi)
	movups	%xmm1, 1064(%rsi)
	movl	$8, %r14d
.LBB21_6:                               # %vector.body.preheader.split
	testq	%rax, %rax
	je	.LBB21_9
# BB#7:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r11, %rdx
	subq	%r14, %rdx
	leaq	1096(%r10,%r14,4), %rcx
	leaq	1096(%rsi,%r14,4), %rax
	.align	16, 0x90
.LBB21_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rcx), %xmm0
	movups	-32(%rcx), %xmm1
	movups	%xmm0, -48(%rax)
	movups	%xmm1, -32(%rax)
	movups	-16(%rcx), %xmm0
	movups	(%rcx), %xmm1
	movups	%xmm0, -16(%rax)
	movups	%xmm1, (%rax)
	addq	$64, %rcx
	addq	$64, %rax
	addq	$-16, %rdx
	jne	.LBB21_8
.LBB21_9:
	movq	%r9, %rcx
.LBB21_10:                              # %middle.block
	cmpq	%rcx, %r8
	je	.LBB21_17
# BB#11:                                # %for.body.preheader28
	leal	1(%rbx), %edx
	movl	%ecx, %eax
	orl	$1, %eax
	movl	%edx, %r9d
	subl	%eax, %r9d
	movl	%ebx, %r8d
	subl	%eax, %r8d
	testb	$3, %r9b
	je	.LBB21_14
# BB#12:                                # %for.body.prol.preheader
	leal	1(%rcx), %eax
	subl	%eax, %edx
	andl	$3, %edx
	negl	%edx
	.align	16, 0x90
.LBB21_13:                              # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	1048(%r10,%rcx,4), %eax
	movl	%eax, 1048(%rsi,%rcx,4)
	incq	%rcx
	incl	%edx
	jne	.LBB21_13
.LBB21_14:                              # %for.body.preheader28.split
	cmpl	$3, %r8d
	jb	.LBB21_17
# BB#15:                                # %for.body.preheader28.split.split
	subl	%ecx, %ebx
	leaq	1060(%rsi,%rcx,4), %rdx
	leaq	1060(%r10,%rcx,4), %rcx
	.align	16, 0x90
.LBB21_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rcx), %eax
	movl	%eax, -12(%rdx)
	movl	-8(%rcx), %eax
	movl	%eax, -8(%rdx)
	movl	-4(%rcx), %eax
	movl	%eax, -4(%rdx)
	movl	(%rcx), %eax
	movl	%eax, (%rdx)
	addq	$16, %rdx
	addq	$16, %rcx
	addl	$-4, %ebx
	jne	.LBB21_16
.LBB21_17:                              # %for.end
	movq	(%rdi), %rax
	movq	88(%rax), %rax
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end21:
	.size	gs_pattern2_set_color, .Lfunc_end21-gs_pattern2_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	pattern2_instance_enum_ptrs,@function
pattern2_instance_enum_ptrs:            # @pattern2_instance_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 32
.Ltmp61:
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	cmpl	$2, %ecx
	jg	.LBB22_4
# BB#1:                                 # %if.then
	movq	32(%rsp), %rax
	addq	$48, %rsi
	movq	%rax, (%rsp)
	movl	$48, %edx
	movl	$st_pattern2_template, %r9d
	movq	%rbx, %r8
	callq	basic_enum_ptrs
	testq	%rax, %rax
	jne	.LBB22_3
# BB#2:                                 # %if.end
	movq	$0, (%rbx)
	movl	$ptr_struct_procs, %eax
.LBB22_3:                               # %return
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB22_4:                               # %if.end.2
	addl	$-3, %ecx
	movl	$st_pattern_instance, %r9d
	movq	%rbx, %r8
	addq	$16, %rsp
	popq	%rbx
	jmpq	*st_pattern_instance+32(%rip) # TAILCALL
.Lfunc_end22:
	.size	pattern2_instance_enum_ptrs, .Lfunc_end22-pattern2_instance_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pattern2_instance_reloc_ptrs,@function
pattern2_instance_reloc_ptrs:           # @pattern2_instance_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	$st_pattern_instance, %edx
	callq	*st_pattern_instance+40(%rip)
	addq	$48, %rbx
	movl	$48, %esi
	movl	$st_pattern2_template, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	basic_reloc_ptrs        # TAILCALL
.Lfunc_end23:
	.size	pattern2_instance_reloc_ptrs, .Lfunc_end23-pattern2_instance_reloc_ptrs
	.cfi_endproc

	.type	gs_pattern2_type,@object # @gs_pattern2_type
	.section	.rodata,"a",@progbits
	.align	8
gs_pattern2_type:
	.long	2                       # 0x2
	.zero	4
	.quad	gs_pattern2_uses_base_space
	.quad	gs_pattern2_make_pattern
	.quad	gs_pattern2_get_pattern
	.quad	gs_pattern2_remap_color
	.quad	gs_pattern2_set_color
	.size	gs_pattern2_type, 48

	.type	st_dc_pattern2,@object  # @st_dc_pattern2
	.align	8
st_dc_pattern2:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	dc_pattern2_reloc_ptrs
	.size	st_dc_pattern2, 64

	.type	gx_dc_pattern2,@object  # @gx_dc_pattern2
	.globl	gx_dc_pattern2
	.align	8
gx_dc_pattern2:
	.quad	st_dc_pattern2
	.quad	gx_dc_pattern2_save_dc
	.quad	gx_dc_pattern2_get_dev_halftone
	.quad	gx_dc_ht_get_phase
	.quad	gx_dc_pattern2_load
	.quad	gx_dc_pattern2_fill_rectangle
	.quad	gx_dc_default_fill_masked
	.quad	gx_dc_pattern2_equal
	.quad	gx_dc_cannot_write
	.quad	gx_dc_cannot_read
	.quad	gx_dc_pattern_get_nonzero_comps
	.size	gx_dc_pattern2, 88

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_default_fill_path(path_bbox)"
	.size	.L.str, 32

	.type	st_pattern2_instance,@object # @st_pattern2_instance
	.section	.rodata,"a",@progbits
	.align	8
st_pattern2_instance:
	.long	104                     # 0x68
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	pattern2_instance_enum_ptrs
	.quad	pattern2_instance_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pattern2_instance, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_pattern2_instance_t"
	.size	.L.str.1, 23

	.type	st_pattern2_template,@object # @st_pattern2_template
	.section	.rodata,"a",@progbits
	.align	8
st_pattern2_template:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pattern2_template_reloc_ptrs
	.size	st_pattern2_template, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_pattern2_template_t"
	.size	.L.str.2, 23

	.type	pattern2_template_reloc_ptrs,@object # @pattern2_template_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pattern2_template_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_pattern_template
	.quad	pattern2_template_enum_ptrs
	.size	pattern2_template_reloc_ptrs, 24

	.type	pattern2_template_enum_ptrs,@object # @pattern2_template_enum_ptrs
	.align	2
pattern2_template_enum_ptrs:
	.short	0                       # 0x0
	.short	40                      # 0x28
	.size	pattern2_template_enum_ptrs, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"dc_pattern2"
	.size	.L.str.3, 12

	.type	dc_pattern2_reloc_ptrs,@object # @dc_pattern2_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
dc_pattern2_reloc_ptrs:
	.short	0                       # 0x0
	.short	368                     # 0x170
	.zero	4
	.quad	st_client_color
	.quad	0
	.size	dc_pattern2_reloc_ptrs, 24

	.type	.Lswitch.table,@object  # @switch.table
	.align	16
.Lswitch.table:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	.Lswitch.table, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
