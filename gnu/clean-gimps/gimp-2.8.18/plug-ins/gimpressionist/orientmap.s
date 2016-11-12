	.text
	.file	"orientmap.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	-4616189618054758400    # double -1
.LCPI0_1:
	.quad	4636033603912859648     # double 90
.LCPI0_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI0_3:
	.quad	4645040803167600640     # double 360
.LCPI0_4:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI0_5:
	.quad	4611686018427387904     # double 2
.LCPI0_6:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	get_direction
	.align	16, 0x90
	.type	get_direction,@function
get_direction:                          # @get_direction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	%edi, -20(%rbp)
	movl	$0, -92(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$vector, %rax
	movl	num_vectors, %ecx
	movl	%ecx, -28(%rbp)
	movq	%rax, -72(%rbp)
	movq	angle_offset_adjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -80(%rbp)
	movq	orient_map_str_exp_adjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -88(%rbp)
	movq	orient_voronoi, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movabsq	$pcvals, %rax
	addq	$544, %rax              # imm = 0x220
	movl	pcvals+3344, %ecx
	movl	%ecx, -28(%rbp)
	movq	%rax, -72(%rbp)
	movsd	pcvals+3360, %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	pcvals+3368, %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movl	pcvals+3384, %ecx
	movl	%ecx, -32(%rbp)
.LBB0_3:                                # %if.end
	cmpl	$0, -32(%rbp)
	je	.LBB0_12
# BB#4:                                 # %if.then.5
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movl	$0, -24(%rbp)
.LBB0_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB0_5 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	callq	dist
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -64(%rbp)
	ucomisd	-104(%rbp), %xmm1
	ja	.LBB0_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_5 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_9
.LBB0_8:                                # %if.then.14
                                        #   in Loop: Header=BB0_5 Depth=1
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB0_9:                                # %if.end.15
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_11:                               # %for.end
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB0_13
.LBB0_12:                               # %if.else.16
	movl	$0, -92(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -96(%rbp)
.LBB0_13:                               # %if.end.17
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB0_14:                               # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB0_30
# BB#15:                                # %for.body.20
                                        #   in Loop: Header=BB0_14 Depth=1
	xorps	%xmm0, %xmm0
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB0_17
# BB#16:                                # %if.then.26
                                        #   in Loop: Header=BB0_14 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB0_26
.LBB0_17:                               # %if.else.33
                                        #   in Loop: Header=BB0_14 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB0_19
# BB#18:                                # %if.then.38
                                        #   in Loop: Header=BB0_14 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -136(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	subsd	(%rax), %xmm1
	callq	atan2
	movsd	.LCPI0_4, %xmm1         # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	%xmm2, -136(%rbp)
	movaps	%xmm1, %xmm0
	addsd	-136(%rbp), %xmm0
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	callq	sin
	movsd	%xmm0, -120(%rbp)
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-136(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB0_25
.LBB0_19:                               # %if.else.59
                                        #   in Loop: Header=BB0_14 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	cmpl	$2, 48(%rax)
	jne	.LBB0_21
# BB#20:                                # %if.then.64
                                        #   in Loop: Header=BB0_14 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -144(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	subsd	(%rax), %xmm1
	callq	atan2
	movsd	.LCPI0_4, %xmm1         # xmm1 = mem[0],zero
	addsd	-144(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movaps	%xmm1, %xmm0
	addsd	-144(%rbp), %xmm0
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	sin
	movsd	%xmm0, -120(%rbp)
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-144(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -128(%rbp)
	jmp	.LBB0_24
.LBB0_21:                               # %if.else.87
                                        #   in Loop: Header=BB0_14 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	cmpl	$3, 48(%rax)
	jne	.LBB0_23
# BB#22:                                # %if.then.92
                                        #   in Loop: Header=BB0_14 Depth=1
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -152(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	subsd	8(%rax), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	subsd	(%rax), %xmm1
	callq	atan2
	movsd	.LCPI0_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_5, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	%xmm2, -152(%rbp)
	movaps	%xmm1, %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	callq	sin
	movsd	%xmm0, -120(%rbp)
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-152(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -128(%rbp)
.LBB0_23:                               # %if.end.115
                                        #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               # %if.end.116
                                        #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.117
                                        #   in Loop: Header=BB0_14 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.118
                                        #   in Loop: Header=BB0_14 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	(%rax), %xmm2           # xmm2 = mem[0],zero
	movslq	-24(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-72(%rbp), %rax
	movsd	8(%rax), %xmm3          # xmm3 = mem[0],zero
	callq	dist
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI0_6, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	ucomisd	-64(%rbp), %xmm1
	jbe	.LBB0_28
# BB#27:                                # %if.then.128
                                        #   in Loop: Header=BB0_14 Depth=1
	movsd	.LCPI0_6, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
.LBB0_28:                               # %if.end.129
                                        #   in Loop: Header=BB0_14 Depth=1
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
# BB#29:                                # %for.inc.135
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_14
.LBB0_30:                               # %for.end.137
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI0_3, %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	addsd	-80(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	get_direction, .Lfunc_end0-get_direction
	.cfi_endproc

	.globl	orientation_map_free_resources
	.align	16, 0x90
	.type	orientation_map_free_resources,@function
orientation_map_free_resources:         # @orientation_map_free_resources
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	movabsq	$update_om_preview_nbuffer, %rdi
	callq	ppm_kill
	movabsq	$update_vector_preview_backup, %rdi
	callq	ppm_kill
	movabsq	$update_vector_preview_buffer, %rdi
	callq	ppm_kill
	popq	%rbp
	retq
.Lfunc_end1:
	.size	orientation_map_free_resources, .Lfunc_end1-orientation_map_free_resources
	.cfi_endproc

	.globl	update_orientmap_dialog
	.align	16, 0x90
	.type	update_orientmap_dialog,@function
update_orientmap_dialog:                # @update_orientmap_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpq	$0, orient_map_window
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	callq	init_vectors
	movq	orient_map_str_exp_adjust, %rdi
	movsd	pcvals+3368, %xmm0      # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	angle_offset_adjust, %rdi
	movsd	pcvals+3360, %xmm0      # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	orient_voronoi, %rdi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3384, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
.LBB2_3:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	update_orientmap_dialog, .Lfunc_end2-update_orientmap_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	init_vectors,@function
init_vectors:                           # @init_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpl	$0, pcvals+3344
	je	.LBB3_6
# BB#1:                                 # %if.then
	movl	pcvals+3344, %eax
	movl	%eax, num_vectors
	movl	$0, -4(%rbp)
.LBB3_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	num_vectors, %eax
	jge	.LBB3_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$56, %eax
	movl	%eax, %edx
	movabsq	$pcvals, %rcx
	addq	$544, %rcx              # imm = 0x220
	movabsq	$vector, %rsi
	movslq	-4(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rsi
	movslq	-4(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_2
.LBB3_5:                                # %for.end
	jmp	.LBB3_7
.LBB3_6:                                # %if.else
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	$0, num_vectors
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	add_new_vector
.LBB3_7:                                # %if.end
	movl	selectedvector, %eax
	cmpl	num_vectors, %eax
	jl	.LBB3_9
# BB#8:                                 # %if.then.4
	movl	num_vectors, %eax
	subl	$1, %eax
	movl	%eax, selectedvector
.LBB3_9:                                # %if.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	init_vectors, .Lfunc_end3-init_vectors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4602678819172646912     # double 0.5
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4636737291354636288     # double 100
.LCPI4_3:
	.quad	4618441417868443648     # double 6
.LCPI4_4:
	.quad	4645040803167600640     # double 360
.LCPI4_5:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI4_6:
	.quad	4639481672377565184     # double 150
	.text
	.align	16, 0x90
	.type	update_vector_prev,@function
update_vector_prev:                     # @update_vector_prev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movw	.Lupdate_vector_prev.gray, %ax
	movw	%ax, -51(%rbp)
	movb	.Lupdate_vector_prev.gray+2, %cl
	movb	%cl, -49(%rbp)
	movw	.Lupdate_vector_prev.red, %ax
	movw	%ax, -54(%rbp)
	movb	.Lupdate_vector_prev.red+2, %cl
	movb	%cl, -52(%rbp)
	movw	.Lupdate_vector_prev.white, %ax
	movw	%ax, -57(%rbp)
	movb	.Lupdate_vector_prev.white+2, %cl
	movb	%cl, -55(%rbp)
	cmpq	$0, vector_preview_brightness_adjust
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	vector_preview_brightness_adjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
.LBB4_3:                                # %if.end
	cmpl	$0, update_vector_prev.ok
	je	.LBB4_5
# BB#4:                                 # %lor.lhs.false
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	update_vector_prev.last_val, %xmm0
	jne	.LBB4_5
	jp	.LBB4_5
	jmp	.LBB4_9
.LBB4_5:                                # %if.then.2
	movabsq	$update_vector_preview_backup, %rdi
	callq	infile_copy_to_ppm
	movabsq	$update_vector_preview_backup, %rdi
	movl	$1, %eax
	cvtsd2ss	-48(%rbp), %xmm0
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	ppm_apply_brightness
	cmpl	$150, update_vector_preview_backup
	jne	.LBB4_7
# BB#6:                                 # %lor.lhs.false.5
	cmpl	$150, update_vector_preview_backup+4
	je	.LBB4_8
.LBB4_7:                                # %if.then.8
	movabsq	$update_vector_preview_backup, %rdi
	movl	$150, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	resize_fast
.LBB4_8:                                # %if.end.9
	movl	$1, update_vector_prev.ok
.LBB4_9:                                # %if.end.10
	movabsq	$update_vector_preview_backup, %rdi
	movabsq	$update_vector_preview_buffer, %rsi
	callq	ppm_copy
	movl	$0, -4(%rbp)
.LBB4_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	num_vectors, %eax
	jge	.LBB4_16
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=1
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_5, %xmm3         # xmm3 = mem[0],zero
	movabsq	$vector, %rax
	movsd	.LCPI4_6, %xmm4         # xmm4 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movaps	%xmm4, %xmm5
	mulsd	(%rdx), %xmm5
	cvttsd2si	%xmm5, %esi
	movl	%esi, -8(%rbp)
	movslq	-4(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	8(%rdx), %xmm4
	cvttsd2si	%xmm4, %esi
	movl	%esi, -12(%rbp)
	movslq	-4(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movaps	%xmm3, %xmm4
	mulsd	16(%rdx), %xmm4
	divsd	%xmm2, %xmm4
	movsd	%xmm4, -24(%rbp)
	movslq	-4(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	mulsd	40(%rax), %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -72(%rbp)
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-4(%rbp), %esi
	cmpl	selectedvector, %esi
	jne	.LBB4_13
# BB#12:                                # %if.then.38
                                        #   in Loop: Header=BB4_10 Depth=1
	movabsq	$update_vector_preview_buffer, %rdi
	leaq	-54(%rbp), %rsi
	cvtsi2sdl	-8(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	subsd	-40(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm2
	addsd	-32(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cvtsi2sdl	-12(%rbp), %xmm3
	addsd	-40(%rbp), %xmm3
	cvtsd2ss	%xmm3, %xmm3
	callq	ppm_drawline
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.51
                                        #   in Loop: Header=BB4_10 Depth=1
	movabsq	$update_vector_preview_buffer, %rdi
	leaq	-51(%rbp), %rsi
	cvtsi2sdl	-8(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	subsd	-40(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm2
	addsd	-32(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cvtsi2sdl	-12(%rbp), %xmm3
	addsd	-40(%rbp), %xmm3
	cvtsd2ss	%xmm3, %xmm3
	callq	ppm_drawline
.LBB4_14:                               # %if.end.65
                                        #   in Loop: Header=BB4_10 Depth=1
	movabsq	$update_vector_preview_buffer, %rdi
	leaq	-57(%rbp), %rsi
	cvtsi2sdl	-8(%rbp), %xmm0
	subsd	-32(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	subsd	-40(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	callq	ppm_put_rgb
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_10
.LBB4_16:                               # %for.end
	movq	vector_preview, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$150, %edx
	movl	$450, %r8d              # imm = 0x1C2
	movq	update_vector_preview_buffer+8, %rsi
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-112(%rbp), %r9d        # 4-byte Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$450, 8(%rsp)           # imm = 0x1C2
	callq	gimp_preview_area_draw
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	update_vector_prev, .Lfunc_end4-update_vector_prev
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4616189618054758400     # double 4
.LCPI5_1:
	.quad	4645040803167600640     # double 360
.LCPI5_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI5_3:
	.quad	4639481672377565184     # double 150
	.text
	.align	16, 0x90
	.type	update_orient_map_preview_prev,@function
update_orient_map_preview_prev:         # @update_orient_map_preview_prev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorl	%esi, %esi
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-11(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movw	.Lupdate_orient_map_preview_prev.gray, %r8w
	movw	%r8w, -14(%rbp)
	movb	.Lupdate_orient_map_preview_prev.gray+2, %r9b
	movb	%r9b, -12(%rbp)
	movw	.Lupdate_orient_map_preview_prev.white, %r8w
	movw	%r8w, -17(%rbp)
	movb	.Lupdate_orient_map_preview_prev.white+2, %r9b
	movb	%r9b, -15(%rbp)
	cmpq	$0, update_om_preview_nbuffer+8
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$update_om_preview_nbuffer, %rdi
	movl	$150, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	ppm_new
.LBB5_2:                                # %if.end
	movabsq	$update_om_preview_nbuffer, %rdi
	leaq	-11(%rbp), %rsi
	callq	fill
	movl	$6, -8(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	cmpl	$146, -8(%rbp)
	jge	.LBB5_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$6, -4(%rbp)
.LBB5_5:                                # %for.cond.2
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$146, -4(%rbp)
	jge	.LBB5_8
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB5_5 Depth=2
	xorl	%edi, %edi
	movsd	.LCPI5_3, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-8(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	get_direction
	movabsq	$update_om_preview_nbuffer, %rdi
	leaq	-14(%rbp), %rsi
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_2, %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	sin
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm2
	subsd	-48(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm2
	addsd	-40(%rbp), %xmm2
	cvtsd2ss	%xmm2, %xmm2
	cvtsi2sdl	-8(%rbp), %xmm3
	addsd	-48(%rbp), %xmm3
	cvtsd2ss	%xmm3, %xmm3
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	ppm_drawline
	movabsq	$update_om_preview_nbuffer, %rdi
	leaq	-17(%rbp), %rsi
	cvtsi2sdl	-4(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	subsd	-48(%rbp), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	callq	ppm_put_rgb
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	-4(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_9
.LBB5_9:                                # %for.inc.31
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$10, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_10:                               # %for.end.33
	movq	orient_map_preview_prev, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$150, %edx
	movl	$450, %r8d              # imm = 0x1C2
	movq	update_om_preview_nbuffer+8, %rsi
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-96(%rbp), %r9d         # 4-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$450, 8(%rsp)           # imm = 0x1C2
	callq	gimp_preview_area_draw
	movq	orient_map_preview_prev, %rdi
	callq	gtk_widget_queue_draw
	movq	prev_button, %rdi
	cmpl	$1, num_vectors
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	movq	next_button, %rdi
	cmpl	$1, num_vectors
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	movq	add_button, %rdi
	cmpl	$50, num_vectors
	setl	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	movq	kill_button, %rdi
	cmpl	$1, num_vectors
	setg	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %esi
	callq	gtk_widget_set_sensitive
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	update_orient_map_preview_prev, .Lfunc_end5-update_orient_map_preview_prev
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI6_2:
	.quad	4622325772547050701     # double 10.9
.LCPI6_3:
	.quad	4617315517961601024     # double 5
.LCPI6_4:
	.quad	4645040803167600640     # double 360
.LCPI6_5:
	.quad	4621819117588971520     # double 10
.LCPI6_6:
	.quad	4632233691727265792     # double 50
.LCPI6_7:
	.quad	4636737291354636288     # double 100
	.text
	.globl	create_orientmap_dialog
	.align	16, 0x90
	.type	create_orientmap_dialog,@function
create_orientmap_dialog:                # @create_orientmap_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
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
	movq	%rdi, -48(%rbp)
	callq	init_vectors
	cmpq	$0, orient_map_window
	je	.LBB6_2
# BB#1:                                 # %if.then
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
	movq	orient_map_window, %rdi
	callq	gtk_widget_show
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.2, %r9
	movabsq	$.L.str.3, %rdi
	movl	$4294967286, %edx       # imm = 0xFFFFFFF6
	movabsq	$.L.str.4, %r10
	movl	$4294967290, %r11d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.5, %rbx
	movl	$4294967291, %r14d      # imm = 0xFFFFFFFB
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	-120(%rbp), %r13        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r13, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-10, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r14d, -136(%rbp)       # 4-byte Spill
	movq	%r12, -144(%rbp)        # 8-byte Spill
	movl	%r11d, -148(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, orient_map_window
	movq	orient_map_window, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967286, %edx       # imm = 0xFFFFFFF6
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.6, %rsi
	movabsq	$orient_map_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	orient_map_window, %r10
	movq	orient_map_window, %rbx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	movabsq	$orient_map_window, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	orient_map_window, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$5, %esi
	xorl	%edx, %edx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	orient_map_window, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_frame_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-244(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-248(%rbp), %r8d        # 4-byte Reload
	movl	-244(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_event_box_new
	movabsq	$.L.str.9, %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	callq	gimp_preview_area_new
	movl	$150, %ecx
	movq	%rax, vector_preview
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$256, %esi              # imm = 0x100
	movq	-96(%rbp), %rdi
	callq	gtk_widget_add_events
	movabsq	$.L.str.10, %rsi
	movabsq	$map_click_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-96(%rbp), %r10
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-96(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movsd	.LCPI6_6, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_0, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm3, -312(%rbp)       # 8-byte Spill
	movsd	-312(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-312(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movl	$1, %edi
	movq	%rax, vector_preview_brightness_adjust
	movq	vector_preview_brightness_adjust, %rsi
	callq	gtk_scale_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value
	movq	-104(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rsi
	movabsq	$update_vector_prev, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%r9d, %r9d
	movq	vector_preview_brightness_adjust, %rdi
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	g_signal_connect_data
	movabsq	$.L.str.12, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_frame_new
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$150, %ecx
	movq	%rax, orient_map_preview_prev
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-56(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-72(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, prev_button
	movq	-104(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-412(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-416(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$prev_click_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	-424(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.17, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, next_button
	movq	-104(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$next_click_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	-456(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, add_button
	movq	-104(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$add_click_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	-488(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, kill_button
	movq	-104(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$delete_click_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movq	-520(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	%r9d, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %r9d
	movl	$3, %r11d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r11d, %r9d
	callq	gtk_table_attach_defaults
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movabsq	$.L.str.24, %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$vector_type_click_callback, %rsi
	movabsq	$vector_type, %r10
	xorl	%r8d, %r8d
	movabsq	$vector_types, %rbx
	movq	%rbx, %r12
	addq	$8, %r12
	movl	$2, %ecx
	movq	%rbx, %r13
	addq	$16, %r13
	movl	$3, %edx
	movq	%rbx, %r9
	addq	$24, %r9
	xorl	%r11d, %r11d
                                        # kill: R11<def> R11D<kill>
	movq	-568(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -600(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-600(%rbp), %r14        # 8-byte Reload
	movl	%edx, -604(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movl	%ecx, -608(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movq	-576(%rbp), %r10        # 8-byte Reload
	movq	%r9, -616(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movl	$0, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	-584(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	-592(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	%r13, 56(%rsp)
	movq	%rax, 64(%rsp)
	movl	$3, 72(%rsp)
	movq	-616(%rbp), %rax        # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	$0, 88(%rsp)
	movb	$0, %al
	movq	%r11, -624(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r15d, %r15d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r15d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, orient_voronoi
	movq	-112(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pcvals+3384, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.15, %rsi
	movabsq	$angle_offset_adjust_move_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	movq	-656(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -692(%rbp)        # 4-byte Spill
	movl	-692(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_5, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -732(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-720(%rbp), %rcx        # 8-byte Reload
	movsd	%xmm0, -744(%rbp)       # 8-byte Spill
	movsd	-744(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-744(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-744(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.11, %rsi
	movabsq	$angle_adjust_move_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, angle_adjust
	movq	angle_adjust, %rax
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-752(%rbp), %rcx        # 8-byte Reload
	movq	-752(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.33, %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_5, %xmm4         # xmm4 = mem[0],zero
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	-784(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movsd	%xmm0, -800(%rbp)       # 8-byte Spill
	movsd	-800(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-800(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-800(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.11, %rsi
	movabsq	$angle_offset_adjust_move_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, angle_offset_adjust
	movq	angle_offset_adjust, %rax
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-808(%rbp), %rcx        # 8-byte Reload
	movq	-808(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -816(%rbp)        # 8-byte Spill
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_3, %xmm2         # xmm2 = mem[0],zero
	movl	$1, %r15d
	xorps	%xmm3, %xmm3
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	-840(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movsd	%xmm0, -856(%rbp)       # 8-byte Spill
	movsd	%xmm1, -864(%rbp)       # 8-byte Spill
	movsd	-864(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -872(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movsd	-856(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-872(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-872(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r15d, -876(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.11, %rsi
	movabsq	$strength_adjust_move_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, strength_adjust
	movq	strength_adjust, %rax
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-888(%rbp), %rcx        # 8-byte Reload
	movq	-888(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -896(%rbp)        # 8-byte Spill
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.37, %rdi
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$150, %r8d
	movl	$6, %r9d
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movl	$1, %r15d
	xorps	%xmm3, %xmm3
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	-920(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movsd	%xmm0, -936(%rbp)       # 8-byte Spill
	movsd	%xmm1, -944(%rbp)       # 8-byte Spill
	movsd	-944(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -952(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movsd	-936(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-952(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-952(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r15d, -956(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.11, %rsi
	movabsq	$strength_exponent_adjust_move_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, orient_map_str_exp_adjust
	movq	orient_map_str_exp_adjust, %rax
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-968(%rbp), %rcx        # 8-byte Reload
	movq	-968(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	orient_map_window, %rdi
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
.LBB6_3:                                # %return
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	create_orientmap_dialog, .Lfunc_end6-create_orientmap_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	orient_map_response,@function
orient_map_response:                    # @orient_map_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-10, %eax
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$-5, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jne	.LBB7_6
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movl	$0, -28(%rbp)
.LBB7_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	num_vectors, %eax
	jge	.LBB7_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	$56, %eax
	movl	%eax, %edx
	movabsq	$vector, %rcx
	movabsq	$pcvals, %rsi
	addq	$544, %rsi              # imm = 0x220
	movslq	-28(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rsi
	movslq	-28(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_2
.LBB7_5:                                # %for.end
	movl	num_vectors, %eax
	movl	%eax, pcvals+3344
	movq	orient_map_str_exp_adjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, pcvals+3368
	movq	angle_offset_adjust, %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, pcvals+3360
	movq	orient_voronoi, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, pcvals+3384
.LBB7_6:                                # %sw.epilog
	cmpl	$-10, -12(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
.LBB7_8:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	orient_map_response, .Lfunc_end7-orient_map_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI8_1:
	.quad	4645040803167600640     # double 360
.LCPI8_2:
	.quad	4639481672377565184     # double 150
	.text
	.align	16, 0x90
	.type	map_click_callback,@function
map_click_callback:                     # @map_click_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$1, 52(%rsi)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$vector, %rax
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movslq	selectedvector, %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm1, (%rdx)
	movq	-16(%rbp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movslq	selectedvector, %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movsd	%xmm1, 8(%rax)
	jmp	.LBB8_10
.LBB8_2:                                # %if.else
	movq	-16(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB8_6
# BB#3:                                 # %if.then.8
	movl	num_vectors, %eax
	addl	$1, %eax
	cmpl	$50, %eax
	jne	.LBB8_5
# BB#4:                                 # %if.then.10
	jmp	.LBB8_11
.LBB8_5:                                # %if.end
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	add_new_vector
	callq	update_slides
	jmp	.LBB8_9
.LBB8_6:                                # %if.else.15
	movq	-16(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB8_8
# BB#7:                                 # %if.then.18
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	movabsq	$vector, %rax
	movslq	selectedvector, %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movaps	%xmm0, %xmm1
	mulsd	(%rdx), %xmm1
	movq	-16(%rbp), %rcx
	subsd	24(%rcx), %xmm1
	movslq	selectedvector, %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	mulsd	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	subsd	32(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	atan2
	movabsq	$vector, %rax
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_1, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	mulsd	-24(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movslq	selectedvector, %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm2, 16(%rdx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	sin
	movslq	selectedvector, %rax
	imulq	$56, %rax, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movsd	%xmm0, 24(%rcx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos
	movslq	selectedvector, %rax
	imulq	$56, %rax, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movsd	%xmm0, 32(%rcx)
	callq	update_slides
.LBB8_8:                                # %if.end.39
	jmp	.LBB8_9
.LBB8_9:                                # %if.end.40
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.41
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
.LBB8_11:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	map_click_callback, .Lfunc_end8-map_click_callback
	.cfi_endproc

	.align	16, 0x90
	.type	prev_click_callback,@function
prev_click_callback:                    # @prev_click_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	selectedvector, %eax
	addl	$-1, %eax
	movl	%eax, selectedvector
	cmpl	$0, selectedvector
	jge	.LBB9_2
# BB#1:                                 # %if.then
	movl	num_vectors, %eax
	subl	$1, %eax
	movl	%eax, selectedvector
.LBB9_2:                                # %if.end
	callq	update_slides
	callq	update_vector_prev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	prev_click_callback, .Lfunc_end9-prev_click_callback
	.cfi_endproc

	.align	16, 0x90
	.type	next_click_callback,@function
next_click_callback:                    # @next_click_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	selectedvector, %eax
	addl	$1, %eax
	movl	%eax, selectedvector
	movl	selectedvector, %eax
	cmpl	num_vectors, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, selectedvector
.LBB10_2:                               # %if.end
	callq	update_slides
	callq	update_vector_prev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	next_click_callback, .Lfunc_end10-next_click_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	add_click_callback,@function
add_click_callback:                     # @add_click_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	add_new_vector
	callq	update_slides
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	add_click_callback, .Lfunc_end11-add_click_callback
	.cfi_endproc

	.align	16, 0x90
	.type	delete_click_callback,@function
delete_click_callback:                  # @delete_click_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	selectedvector, %eax
	movl	%eax, -20(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	num_vectors, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$56, %eax
	movl	%eax, %edx
	movabsq	$vector, %rcx
	movslq	-20(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	imulq	$56, %rsi, %rsi
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	callq	memcpy
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movl	num_vectors, %eax
	addl	$-1, %eax
	movl	%eax, num_vectors
	movl	selectedvector, %eax
	cmpl	num_vectors, %eax
	jl	.LBB12_6
# BB#5:                                 # %if.then
	movl	$0, selectedvector
.LBB12_6:                               # %if.end
	callq	update_slides
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	delete_click_callback, .Lfunc_end12-delete_click_callback
	.cfi_endproc

	.align	16, 0x90
	.type	vector_type_click_callback,@function
vector_type_click_callback:             # @vector_type_click_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, adjignore
	je	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	movabsq	$vector, %rsi
	movl	vector_type, %eax
	movslq	selectedvector, %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rsi
	movl	%eax, 48(%rsi)
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
.LBB13_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	vector_type_click_callback, .Lfunc_end13-vector_type_click_callback
	.cfi_endproc

	.align	16, 0x90
	.type	angle_offset_adjust_move_callback,@function
angle_offset_adjust_move_callback:      # @angle_offset_adjust_move_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, adjignore
	je	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
.LBB14_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	angle_offset_adjust_move_callback, .Lfunc_end14-angle_offset_adjust_move_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4645040803167600640     # double 360
.LCPI15_1:
	.quad	4618760256179416344     # double 6.2831853071795862
	.text
	.align	16, 0x90
	.type	angle_adjust_move_callback,@function
angle_adjust_move_callback:             # @angle_adjust_move_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, adjignore
	je	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_3
.LBB15_2:                               # %if.end
	movq	angle_adjust, %rdi
	callq	gtk_adjustment_get_value
	movabsq	$vector, %rdi
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_1, %xmm2        # xmm2 = mem[0],zero
	movslq	selectedvector, %rax
	imulq	$56, %rax, %rax
	movq	%rdi, %rcx
	addq	%rax, %rcx
	movsd	%xmm0, 16(%rcx)
	movslq	selectedvector, %rax
	imulq	$56, %rax, %rax
	movq	%rdi, %rcx
	addq	%rax, %rcx
	movaps	%xmm2, %xmm0
	mulsd	16(%rcx), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm2, -24(%rbp)        # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	sin
	movslq	selectedvector, %rax
	imulq	$56, %rax, %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movsd	%xmm0, 24(%rcx)
	movslq	selectedvector, %rax
	imulq	$56, %rax, %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	16(%rcx), %xmm0
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	cos
	movslq	selectedvector, %rax
	imulq	$56, %rax, %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movsd	%xmm0, 32(%rcx)
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
.LBB15_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	angle_adjust_move_callback, .Lfunc_end15-angle_adjust_move_callback
	.cfi_endproc

	.align	16, 0x90
	.type	strength_adjust_move_callback,@function
strength_adjust_move_callback:          # @strength_adjust_move_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, adjignore
	je	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movq	strength_adjust, %rdi
	callq	gtk_adjustment_get_value
	movabsq	$vector, %rdi
	movslq	selectedvector, %rax
	imulq	$56, %rax, %rax
	addq	%rax, %rdi
	movsd	%xmm0, 40(%rdi)
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
.LBB16_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	strength_adjust_move_callback, .Lfunc_end16-strength_adjust_move_callback
	.cfi_endproc

	.align	16, 0x90
	.type	strength_exponent_adjust_move_callback,@function
strength_exponent_adjust_move_callback: # @strength_exponent_adjust_move_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, adjignore
	je	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	callq	update_vector_prev
	callq	update_orient_map_preview_prev
.LBB17_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	strength_exponent_adjust_move_callback, .Lfunc_end17-strength_exponent_adjust_move_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	add_new_vector,@function
add_new_vector:                         # @add_new_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$vector, %rax
	movsd	.LCPI18_0, %xmm2        # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movslq	num_vectors, %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm0, (%rdx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	num_vectors, %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm0, 8(%rdx)
	movslq	num_vectors, %rcx
	imulq	$56, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm3, 16(%rdx)
	xorps	%xmm0, %xmm0
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	sin
	movslq	num_vectors, %rax
	imulq	$56, %rax, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movsd	%xmm0, 24(%rcx)
	xorps	%xmm0, %xmm0
	callq	cos
	movslq	num_vectors, %rax
	imulq	$56, %rax, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movsd	%xmm0, 32(%rcx)
	movslq	num_vectors, %rax
	imulq	$56, %rax, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rcx)
	movslq	num_vectors, %rax
	imulq	$56, %rax, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movl	$0, 48(%rcx)
	movl	num_vectors, %esi
	movl	%esi, selectedvector
	movl	num_vectors, %esi
	addl	$1, %esi
	movl	%esi, num_vectors
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	add_new_vector, .Lfunc_end18-add_new_vector
	.cfi_endproc

	.align	16, 0x90
	.type	update_slides,@function
update_slides:                          # @update_slides
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$vector, %rax
	movl	$1, adjignore
	movq	angle_adjust, %rdi
	movslq	selectedvector, %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movabsq	$vector, %rax
	movq	strength_adjust, %rdi
	movslq	selectedvector, %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movabsq	$vector, %rax
	movslq	selectedvector, %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	48(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	-4(%rbp), %rax
	movq	vector_types(,%rax,8), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$0, adjignore
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	update_slides, .Lfunc_end19-update_slides
	.cfi_endproc

	.type	num_vectors,@object     # @num_vectors
	.local	num_vectors
	.comm	num_vectors,4,4
	.type	vector,@object          # @vector
	.local	vector
	.comm	vector,2800,16
	.type	angle_offset_adjust,@object # @angle_offset_adjust
	.local	angle_offset_adjust
	.comm	angle_offset_adjust,8,8
	.type	orient_map_str_exp_adjust,@object # @orient_map_str_exp_adjust
	.local	orient_map_str_exp_adjust
	.comm	orient_map_str_exp_adjust,8,8
	.type	orient_voronoi,@object  # @orient_voronoi
	.local	orient_voronoi
	.comm	orient_voronoi,8,8
	.type	update_om_preview_nbuffer,@object # @update_om_preview_nbuffer
	.local	update_om_preview_nbuffer
	.comm	update_om_preview_nbuffer,16,8
	.type	update_vector_preview_backup,@object # @update_vector_preview_backup
	.local	update_vector_preview_backup
	.comm	update_vector_preview_backup,16,8
	.type	update_vector_preview_buffer,@object # @update_vector_preview_buffer
	.local	update_vector_preview_buffer
	.comm	update_vector_preview_buffer,16,8
	.type	orient_map_window,@object # @orient_map_window
	.local	orient_map_window
	.comm	orient_map_window,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Orientation Map Editor"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-gimpressionist"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"plug-in-gimpressionist"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-apply"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-cancel"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-ok"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"response"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"destroy"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Vectors"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The vector-field. Left-click to move selected vector, Right-click to point it towards mouse, Middle-click to add a new vector."
	.size	.L.str.9, 127

	.type	vector_preview,@object  # @vector_preview
	.local	vector_preview
	.comm	vector_preview,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"button-press-event"
	.size	.L.str.10, 19

	.type	vector_preview_brightness_adjust,@object # @vector_preview_brightness_adjust
	.local	vector_preview_brightness_adjust
	.comm	vector_preview_brightness_adjust,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"value-changed"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Adjust the preview's brightness"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Preview"
	.size	.L.str.13, 8

	.type	orient_map_preview_prev,@object # @orient_map_preview_prev
	.local	orient_map_preview_prev
	.comm	orient_map_preview_prev,8,8
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_<<"
	.size	.L.str.14, 4

	.type	prev_button,@object     # @prev_button
	.local	prev_button
	.comm	prev_button,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clicked"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Select previous vector"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_>>"
	.size	.L.str.17, 4

	.type	next_button,@object     # @next_button
	.local	next_button
	.comm	next_button,8,8
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Select next vector"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"A_dd"
	.size	.L.str.19, 5

	.type	add_button,@object      # @add_button
	.local	add_button
	.comm	add_button,8,8
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Add new vector"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"_Kill"
	.size	.L.str.21, 6

	.type	kill_button,@object     # @kill_button
	.local	kill_button
	.comm	kill_button,8,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Delete selected vector"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Type"
	.size	.L.str.23, 5

	.type	vector_type,@object     # @vector_type
	.local	vector_type
	.comm	vector_type,4,4
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Normal"
	.size	.L.str.24, 8

	.type	vector_types,@object    # @vector_types
	.local	vector_types
	.comm	vector_types,32,16
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Vorte_x"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Vortex_2"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Vortex_3"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Voronoi"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Voronoi-mode makes only the vector closest to the given point have any influence"
	.size	.L.str.29, 81

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"A_ngle:"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Change the angle of the selected vector"
	.size	.L.str.31, 40

	.type	angle_adjust,@object    # @angle_adjust
	.local	angle_adjust
	.comm	angle_adjust,8,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Ang_le offset:"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Offset all vectors with a given angle"
	.size	.L.str.33, 38

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Strength:"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Change the strength of the selected vector"
	.size	.L.str.35, 43

	.type	strength_adjust,@object # @strength_adjust
	.local	strength_adjust
	.comm	strength_adjust,8,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"S_trength exp.:"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Change the exponent of the strength"
	.size	.L.str.37, 36

	.type	selectedvector,@object  # @selectedvector
	.local	selectedvector
	.comm	selectedvector,4,4
	.type	update_vector_prev.ok,@object # @update_vector_prev.ok
	.local	update_vector_prev.ok
	.comm	update_vector_prev.ok,4,4
	.type	update_vector_prev.last_val,@object # @update_vector_prev.last_val
	.local	update_vector_prev.last_val
	.comm	update_vector_prev.last_val,8,8
	.type	.Lupdate_vector_prev.gray,@object # @update_vector_prev.gray
	.section	.rodata,"a",@progbits
.Lupdate_vector_prev.gray:
	.zero	3,120
	.size	.Lupdate_vector_prev.gray, 3

	.type	.Lupdate_vector_prev.red,@object # @update_vector_prev.red
.Lupdate_vector_prev.red:
	.asciz	"\377\000"
	.size	.Lupdate_vector_prev.red, 3

	.type	.Lupdate_vector_prev.white,@object # @update_vector_prev.white
.Lupdate_vector_prev.white:
	.zero	3,255
	.size	.Lupdate_vector_prev.white, 3

	.type	.Lupdate_orient_map_preview_prev.gray,@object # @update_orient_map_preview_prev.gray
.Lupdate_orient_map_preview_prev.gray:
	.zero	3,120
	.size	.Lupdate_orient_map_preview_prev.gray, 3

	.type	.Lupdate_orient_map_preview_prev.white,@object # @update_orient_map_preview_prev.white
.Lupdate_orient_map_preview_prev.white:
	.zero	3,255
	.size	.Lupdate_orient_map_preview_prev.white, 3

	.type	adjignore,@object       # @adjignore
	.local	adjignore
	.comm	adjignore,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
